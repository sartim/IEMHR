using System;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using DayPilot.Web.Ui;
using DayPilot.Web.Ui.Recurrence;
using IEMHR.App_Code.Data;

namespace IEMHR.App_Code.Data
{
    public class DataManager
    {

        private DbDataAdapter CreateDataAdapter(string select)
        {
            DbDataAdapter da = Factory.CreateDataAdapter();
            da.SelectCommand = CreateCommand(select);
            return da;
        }

        public DataTable GetLocations()
        {
            var da = CreateDataAdapter("select * from [Location] order by [LocationName]");
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable GetAssignmentsForLocation(DayPilotCalendar calendar)
        {
            DataTable dt = new DataTable();
            var daRecurring = CreateDataAdapter("select * from [Assignment] join [Person] on [Assignment].[PersonId] = [Person].[PersonId] where [AssignmentStart] < @end and [LocationId] = @location and [AssignmentRecurrence] is not null");
            AddParameterWithValue(daRecurring.SelectCommand, "start", calendar.StartDate);
            AddParameterWithValue(daRecurring.SelectCommand, "end", calendar.EndDate.AddDays(1));
            AddParameterWithValue(daRecurring.SelectCommand, "location", (int)calendar.ClientState["location"]);
            daRecurring.Fill(dt);

            var da = CreateDataAdapter("select * from [Assignment] join [Person] on [Assignment].[PersonId] = [Person].[PersonId] where NOT (([AssignmentEnd] <= @start) OR ([AssignmentStart] >= @end)) and [LocationId] = @location and [AssignmentRecurrence] is null");
            AddParameterWithValue(da.SelectCommand, "start", calendar.StartDate);
            AddParameterWithValue(da.SelectCommand, "end", calendar.EndDate.AddDays(1));
            AddParameterWithValue(da.SelectCommand, "location", (int)calendar.ClientState["location"]);
            da.Fill(dt);
            return dt;
        }

        public DataTable GetAssignmentsForPerson(DayPilotCalendar calendar)
        {
            DataTable dt = new DataTable();
            var daRecurring = CreateDataAdapter("select * from [Assignment] join [Location] on [Assignment].[LocationId] = [Location].[LocationId] where [AssignmentStart] < @end and [PersonId] = @person and [AssignmentRecurrence] is not null");
            AddParameterWithValue(daRecurring.SelectCommand, "start", calendar.StartDate);
            AddParameterWithValue(daRecurring.SelectCommand, "end", calendar.EndDate.AddDays(1));
            AddParameterWithValue(daRecurring.SelectCommand, "person", (int)calendar.ClientState["person"]);
            daRecurring.Fill(dt);

            var da = CreateDataAdapter("select * from [Assignment] join [Location] on [Assignment].[LocationId] = [Location].[LocationId] where NOT (([AssignmentEnd] <= @start) OR ([AssignmentStart] >= @end)) and [PersonId] = @person and [AssignmentRecurrence] is null");
            AddParameterWithValue(da.SelectCommand, "start", calendar.StartDate);
            AddParameterWithValue(da.SelectCommand, "end", calendar.EndDate.AddDays(1));
            AddParameterWithValue(da.SelectCommand, "person", (int)calendar.ClientState["person"]);
            da.Fill(dt);
            return dt;
        }

        public DataTable GetAssignmentsForPersonExpanded(int person, DateTime from, DateTime to)
        {
            DataTable dt = new DataTable();
            var daRecurring = CreateDataAdapter("select * from [Assignment] join [Location] on [Assignment].[LocationId] = [Location].[LocationId] where [AssignmentStart] < @end and [PersonId] = @person and [AssignmentRecurrence] is not null");
            AddParameterWithValue(daRecurring.SelectCommand, "end", to);
            AddParameterWithValue(daRecurring.SelectCommand, "person", person);
            daRecurring.Fill(dt);

            var da = CreateDataAdapter("select * from [Assignment] join [Location] on [Assignment].[LocationId] = [Location].[LocationId] where NOT (([AssignmentEnd] <= @start) OR ([AssignmentStart] >= @end)) and [PersonId] = @person and [AssignmentRecurrence] is null");
            AddParameterWithValue(da.SelectCommand, "start", from);
            AddParameterWithValue(da.SelectCommand, "end", to);
            AddParameterWithValue(da.SelectCommand, "person", person);
            da.Fill(dt);

            string recurrenceMasterIdColumnToBeAdded = "MasterId";
            return RecurrenceExpander.Expand(dt, "AssignmentRecurrence", "AssignmentStart", "AssignmentEnd", "AssignmentId",
                                      recurrenceMasterIdColumnToBeAdded, from, to);

        }

        public DataTable GetAssignmentsExpanded(DateTime from, DateTime to)
        {
            DataTable dt = new DataTable();
            var daRecurring = CreateDataAdapter("select * from [Assignment] join [Location] on [Assignment].[LocationId] = [Location].[LocationId] join [Person] on [Assignment].[PersonId] = [Person].[PersonId] where [AssignmentStart] < @end and [AssignmentRecurrence] is not null");
            AddParameterWithValue(daRecurring.SelectCommand, "end", to);
            daRecurring.Fill(dt);

            var da = CreateDataAdapter("select * from [Assignment] join [Location] on [Assignment].[LocationId] = [Location].[LocationId] join [Person] on [Assignment].[PersonId] = [Person].[PersonId] where NOT (([AssignmentEnd] <= @start) OR ([AssignmentStart] >= @end)) and [AssignmentRecurrence] is null");
            AddParameterWithValue(da.SelectCommand, "start", from);
            AddParameterWithValue(da.SelectCommand, "end", to);
            da.Fill(dt);

            string recurrenceMasterIdColumnToBeAdded = "MasterId";
            return RecurrenceExpander.Expand(dt, "AssignmentRecurrence", "AssignmentStart", "AssignmentEnd", "AssignmentId",
                                      recurrenceMasterIdColumnToBeAdded, from, to);

            // detect recurring assignment (dr is DataRow from dt.Rows)
            // bool recurring = Convert.IsDBNull(dr["MasterId"]);

        }


        public void CreateAssignment(DateTime start, DateTime end, int location, int person, string note)
        {
            using (DbConnection con = CreateConnection())
            {
                con.Open();

                var cmd = CreateCommand("insert into [Assignment] ([AssignmentStart], [AssignmentEnd], [LocationId], [PersonId], [AssignmentNote]) values (@start, @end, @location, @person, @note)", con);
                AddParameterWithValue(cmd, "start", start);
                AddParameterWithValue(cmd, "end", end);
                AddParameterWithValue(cmd, "location", location);
                AddParameterWithValue(cmd, "person", person);
                AddParameterWithValue(cmd, "note", note);
                cmd.ExecuteNonQuery();

            }
        }

        public void DeleteAssignment(int id)
        {
            using (var con = CreateConnection())
            {
                con.Open();

                var cmd = CreateCommand("delete from [Assignment] where [AssignmentId] = @id", con);
                AddParameterWithValue(cmd, "id", id);
                cmd.ExecuteNonQuery();

            }
        }

        public void MoveAssignment(int id, DateTime start, DateTime end)
        {
            using (var con = CreateConnection())
            {
                con.Open();

                var cmd = CreateCommand("update [Assignment] set [AssignmentStart] = @start, [AssignmentEnd] = @end where [AssignmentId] = @id", con);
                AddParameterWithValue(cmd, "id", id);
                AddParameterWithValue(cmd, "start", start);
                AddParameterWithValue(cmd, "end", end);
                cmd.ExecuteNonQuery();
            }
        }

        public object GetPeople()
        {
            var da = CreateDataAdapter("select * from [Person] order by [PersonFullName]");
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public object GetAssignments(DayPilotScheduler scheduler)
        {
            DataTable dt = new DataTable();
            var daRecurring = CreateDataAdapter("select * from [Assignment] join [Person] on [Assignment].[PersonId] = [Person].[PersonId] where [AssignmentStart] < @end and [AssignmentRecurrence] is not null");
            AddParameterWithValue(daRecurring.SelectCommand, "start", scheduler.StartDate);
            AddParameterWithValue(daRecurring.SelectCommand, "end", scheduler.EndDate.AddDays(1));
            daRecurring.Fill(dt);

            var da = CreateDataAdapter("select * from [Assignment] join [Person] on [Assignment].[PersonId] = [Person].[PersonId] where NOT (([AssignmentEnd] <= @start) OR ([AssignmentStart] >= @end)) and [AssignmentRecurrence] is null");
            AddParameterWithValue(da.SelectCommand, "start", scheduler.StartDate);
            AddParameterWithValue(da.SelectCommand, "end", scheduler.EndDate.AddDays(1));
            da.Fill(dt);
            return dt;
        }

        public void MoveAssignment(int id, DateTime start, DateTime end, string location)
        {
            using (var con = CreateConnection())
            {
                con.Open();

                var cmd = CreateCommand("update [Assignment] set [AssignmentStart] = @start, [AssignmentEnd] = @end, [LocationId] = @location where [AssignmentId] = @id", con);
                AddParameterWithValue(cmd, "id", id);
                AddParameterWithValue(cmd, "start", start);
                AddParameterWithValue(cmd, "end", end);
                AddParameterWithValue(cmd, "location", location);
                cmd.ExecuteNonQuery();
            }

        }

        public DataRow GetAssignment(int id)
        {
            var da = CreateDataAdapter("select * from [Assignment] where [AssignmentId] = @id");
            AddParameterWithValue(da.SelectCommand, "id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                return dt.Rows[0];
            }
            return null;
        }

        public void UpdateAssignment(int id, DateTime start, DateTime end, int location, int person, string note, RecurrenceRule rule)
        {
            using (var con = CreateConnection())
            {
                con.Open();

                var cmd = CreateCommand("update [Assignment] set [AssignmentStart] = @start, [AssignmentEnd] = @end, [LocationId] = @location, [PersonId] = @person, [AssignmentNote] = @note, [AssignmentRecurrence] = @recurrence where [AssignmentId] = @id", con);
                AddParameterWithValue(cmd, "id", id);
                AddParameterWithValue(cmd, "start", start);
                AddParameterWithValue(cmd, "end", end);
                AddParameterWithValue(cmd, "location", location);
                AddParameterWithValue(cmd, "person", person);
                AddParameterWithValue(cmd, "note", note);
                AddParameterWithValue(cmd, "recurrence", (object)rule.Encode() ?? DBNull.Value);
                cmd.ExecuteNonQuery();
            }
        }

        public void DeleteAssignmentsForLocation(int id)
        {
            using (var con = CreateConnection())
            {
                con.Open();

                var cmd = CreateCommand("delete from [Assignment] where [LocationId] = @id", con);
                AddParameterWithValue(cmd, "id", id);
                cmd.ExecuteNonQuery();
            }
        }

        public void DeleteAssignmentsForPerson(int id)
        {
            using (var con = CreateConnection())
            {
                con.Open();

                var cmd = CreateCommand("delete from [Assignment] where [PersonId] = @id", con);
                AddParameterWithValue(cmd, "id", id);
                cmd.ExecuteNonQuery();
            }
        }

        #region Helper methods
        private string ConnectionString
        {
            get { return Db.ConnectionString(); }
        }

        private DbProviderFactory Factory
        {
            get { return Db.Factory(); }
        }

        private DbConnection CreateConnection()
        {
            DbConnection connection = Factory.CreateConnection();
            connection.ConnectionString = ConnectionString;
            return connection;
        }

        private DbCommand CreateCommand(string text)
        {
            DbCommand command = Factory.CreateCommand();
            command.CommandText = text;
            command.Connection = CreateConnection();

            return command;
        }

        private DbCommand CreateCommand(string text, DbConnection connection)
        {
            DbCommand command = Factory.CreateCommand();
            command.CommandText = text;
            command.Connection = connection;

            return command;
        }

        private void AddParameterWithValue(DbCommand cmd, string name, object value)
        {
            var parameter = Factory.CreateParameter();
            parameter.Direction = ParameterDirection.Input;
            parameter.ParameterName = name;
            parameter.Value = value;
            cmd.Parameters.Add(parameter);
        }

        private int GetIdentity(DbConnection c)
        {
            var cmd = CreateCommand(Db.IdentityCommand(), c);
            return Convert.ToInt32(cmd.ExecuteScalar());
        }

        #endregion
    }
}

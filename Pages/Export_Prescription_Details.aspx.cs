using IEMHR.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IEMHR.Pages
{
    public partial class Export_Prescription_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateData();
            }
        }

        private void PopulateData()
        {
            using (IEMHR_DB_Entities dc = new IEMHR_DB_Entities())
            {
                GridView1.DataSource = dc.PrescriptionMasters.ToList();
                GridView1.DataBind();
            }
        }
        private void ExportGrid(string fileName, string contentType)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-diposition", "attachment;filename=" + fileName);
            Response.Charset = "";
            Response.ContentType = contentType;

            StringWriter sw = new StringWriter();
            HtmlTextWriter HW = new HtmlTextWriter(sw);

            // Read Style file (css) here and add to response
            FileInfo fi = new FileInfo(Server.MapPath("~/css/myGrid.css"));
            StringBuilder sb = new StringBuilder();
            StreamReader sr = fi.OpenText();
            while (sr.Peek() > -0)
            {
                sb.Append(sr.ReadLine());
            }
            sr.Close();

            GridView1.RenderControl(HW);
            Response.Write("<html><head><style type='text/css'>" + sb.ToString() + "</style></head><body>" + sw.ToString() + "</body></html>");
            Response.Flush();
            Response.Close();
            Response.End();
        }

        protected void btnExportWord_Click(object sender, EventArgs e)
        {
            // Export GridView to Word
            ExportGrid("GridViewData.doc", "application/vnd.ms-word");
        }

        protected void btnExportExcel_Click(object sender, EventArgs e)
        {
            // Export GridView to Excel
            ExportGrid("GridViewData.xls", "application/vnd.ms-excel");
        }
    }
}
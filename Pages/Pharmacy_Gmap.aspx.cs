using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IEMHR_ASP_App.Pages
{
    public partial class Pharmacy_Gmap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    //Here the main location is -1.228628  36.805203
            //    GLatLng mainLocation = new GLatLng(-1.228628, 36.805203);
            //    GMap1.setCenter(mainLocation, 14); ;

            //    XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
            //    GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

            //    List<PharmacyMaster> pharmacies = new List<PharmacyMaster>();
            //    using (IEMHR_DBEntities dc = new IEMHR_DBEntities())
            //    {
            //        pharmacies = dc.PharmacyMasters.Where(a => a.PharmacyName.Equals("Belladonna")).ToList();
            //    }

            //    PinIcon p;
            //    GMarker gm;
            //    GInfoWindow win;
            //    foreach (var i in pharmacies)
            //    {
            //        p = new PinIcon(PinIcons.home, Color.Cyan);
            //        gm = new GMarker(new GLatLng(Convert.ToDouble(i.LocLat), Convert.ToDouble(i.LocLong)), 
            //        new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));

            //        win = new GInfoWindow(gm, i.PharmacyName + i.Location + " <a href='" + i.URL + ")More..</a>", false, GListener.Event.mouseover);
            //        GMap1.Add(win);
            //    }


            //}
        }
    }
}
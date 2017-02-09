using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // sql
using System.Configuration; // system config from web
//using TransWorld.DB;
using System.Data.SqlClient;
using System.Collections;
//using TWBusinessLayer;

//namespace TransWorld
//{
//    public partial class MainHome : System.Web.UI.Page
//    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        int user_id;
        //        user_id = Convert.ToInt32(Session["USER_ID"].ToString());

        //        try
        //        {
        //            int default_vehicle;
        //            default_vehicle = Convert.ToInt32(Session["VEHICLE_ID"].ToString());

        //            if (Session["USER_ID"] != null)
        //            {

        //  DataTable DT;
        //string strError;
        //if (TWBusinessLayer.Vehicle.GetVehiclesList(user_id, out DT, out strError))
        //{
        //  gvVehicleView.DataSource = DT;
        //  gvVehicleView.DataBind();

        //        //}
        //    }
        //}
        //  catch (Exception ex)
        //{ 
        //        Response.Redirect("VehicleRegistration.aspx");
        //        int default_vehicle;
        //        default_vehicle = Convert.ToInt32(Session["VEHICLE_ID"].ToString());

        //         {
        //            DataTable DT;
        //            string strError;
        //if (TWBusinessLayer.Vehicle.GetVehiclesList(user_id, out DT, out strError))
        //{
        //    gvVehicleView.DataSource = DT;
        //    gvVehicleView.DataBind();

        //            //}
        //        }
        //    }

        //}
        //else
        //{
        //    Response.Redirect("~/AppUserLogin.aspx");
        //}
        //    }
        //}




        //protected void gvVehicleView_SelectedIndexChanged(object sender, EventArgs e)
        //{


        //}



        //protected void gvVehicleView_DataBound(object sender, EventArgs e)
        //{
        //}

        //protected void gvVehicleView_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if(e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        LinkButton linkbutton = (LinkButton)e.Row.FindControl("LnkVhlID");
        //        linkbutton.PostBackUrl ="VehicleInfo.aspx?VEHICLE_ID="+DataBinder.Eval(e.Row.DataItem, "VEHICLE_ID");

        //    }

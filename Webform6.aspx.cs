using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
	public partial class Webform6 : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cons"].ToString());
		

		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack == false)
			{
            
				string[] report = { "Visitors Log Report", "Visitors Information","Admin Reports","Admin Log Reports", };
				drp_report.DataSource = report;
				drp_report.DataBind();
             

        }
    }

		protected void BtnSubmit_Click(object sender, EventArgs e)
		{
			if (drp_report.SelectedItem.Text == "Visitors Log Report")
			{
            try
            {
                Session.Add("fromDate", txt_fromdate.Text);
                Session.Add("todate", txt_todate.Text);               
                Response.Redirect("Report.aspx");
            }
            catch(Exception ex) { }
			}

			if (drp_report.SelectedItem.Text == "Visitors Information")
			{
				ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Not Available');", true);
			}

			if (drp_report.SelectedItem.Text == "Admin Reports")
			{
				ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Not Available');", true);
			}

			if (drp_report.SelectedItem.Text == "Admin Log Reports")
			{
				ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Not Available');", true);
			}

		}
	}

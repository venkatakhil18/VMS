using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Webform5 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cons"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        sodt.Text = DateTime.Now.ToString();

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("logout", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@userid", txt_Visitor_Name.Text);
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        if (r > 0)
        {
            Response.Redirect("Webform1.aspx");
            //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Successfully Sign Out');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect Credentials');", true);
        }



    }
}
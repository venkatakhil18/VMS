using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class Webform4 : System.Web.UI.Page
	{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cons"].ToString());
    protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack == false)
			{
				sidt.Text = DateTime.Now.ToString();
			}
		}


		protected void Btnlogin_Click(object sender, EventArgs e)
		{
			string query = "select Username  from AdminTBL  where Username=@Username and Password=@Password";
			SqlCommand cmd = new SqlCommand(query, con);
			cmd.Parameters.AddWithValue("@username", uname.Text.Trim());
			cmd.Parameters.AddWithValue("@password", pswd.Text.Trim());
			SqlDataAdapter da = new SqlDataAdapter(cmd);
			DataTable dt = new DataTable();
			da.Fill(dt);
			if (dt.Rows.Count > 0)
			{

				ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Successfully Login');", true);
				Response.Redirect("Webform6.aspx");
			}
			else
			{
				ClientScript.RegisterStartupScript(GetType(), "alert", "alert('invalid ld or password');", true);
				pswd.Focus();
			}

			

		}



	}


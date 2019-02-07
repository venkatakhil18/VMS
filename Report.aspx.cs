using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Report : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cons"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            try
            {
                DateTime fromDate = DateTime.ParseExact(Session["fromDate"].ToString(), "dd/MM/yyyy", null);
                DateTime todate = DateTime.ParseExact(Session["todate"].ToString(), "dd/MM/yyyy", null);

                string str = "Visitors Information : signInTime " + Session["fromDate"].ToString() + "  to  signOutTime " + Session["todate"].ToString();
                header.InnerText = str;

                string quiry = "select sl, UserID, FirstName, LastName, EmailID, ContactNumber, Organisation, Hostname, Reason, convert(varchar(10),signInTime, 103) + right(convert(varchar(32),signInTime,100),8)signInTime,convert(varchar(10),signOutTime, 103) + right(convert(varchar(32),signOutTime,100),8)signOutTime  from UserTBL  where  " +
                "signInTime >='" + fromDate + "'  and signOutTime <= '" + todate + "'";
                
                SqlDataAdapter da = new SqlDataAdapter(quiry, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch { }
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {


    }

    protected void btn_show_Click(object sender, EventArgs e)
    {
       
    }
    protected void btn_download_Click(object sender, EventArgs e)
    {

    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Webform2 : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cons"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        sidt.Text = DateTime.Now.ToString();

        if (IsPostBack == false)
        {
           /* SqlDataAdapter da = new SqlDataAdapter(" select ReasonID,Reason from ReasonTBL", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            reason.DataTextField = "Reason";
            reason.DataValueField = "ReasonID";
            reason.DataSource = dt;
            reason.DataBind();
            reason.Items.Insert(0, new ListItem("Select your Reason for Visit", "0"));*/
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        int sl = 1;
        string userid = "VSTR";
        SqlDataAdapter da = new SqlDataAdapter("select top 1 sl from UserTBL order by sl desc", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            sl += int.Parse(dt.Rows[0]["sl"].ToString());
        }
        userid = "VSTR" + sl;

        SqlCommand cmd = new SqlCommand("insert into UserTBL(UserID,FirstName, LastName, EmailID, ContactNumber, Organisation, Hostname, Reason) values(@UserID,@FirstName, @LastName, @EmailID, @ContactNumber, @Organisation, @Hostname, @Reason)", con);

        cmd.Parameters.AddWithValue("@UserID", userid);
        cmd.Parameters.AddWithValue("@FirstName", fname.Text);
        cmd.Parameters.AddWithValue("@LastName", lname.Text);
        cmd.Parameters.AddWithValue("@EmailID", email.Text);
        cmd.Parameters.AddWithValue("@ContactNumber", contact.Text);
        cmd.Parameters.AddWithValue("@Organisation", org.Text);
        cmd.Parameters.AddWithValue("@Hostname", host.Text);
        cmd.Parameters.AddWithValue("@Reason", reason.SelectedValue);


        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session.Add("userid", userid);
        Session.Add("FirstName", fname.Text);
        // ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Successfully Saved');", true);

        Response.Redirect("Webform3.aspx");
    }
}




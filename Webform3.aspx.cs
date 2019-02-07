using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
	public partial class Webform3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string HomePageUrl = "Webform1.aspx";
			Page.Header.Controls.Add(new LiteralControl(string.Format("<META http-equiv=\"REFRESH\" content=\"6;url={0}\">", HomePageUrl)));
		}
	}

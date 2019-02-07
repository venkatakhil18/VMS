<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">	    
	<link rel="stylesheet" href="css/bootstapeMin.css"/>
	<title>Welcome</title>
   
    
	
</head>
<body>
    <form id="form1" runat="server">
	
        <div style="position:absolute; top:20px;padding:20px;width:100%" >
			<div class="panel panel-primary">
                            <div class="panel-heading" runat="server" id="header"  style="text-align:center"  >Visitors Information</div>   
                            <div class="panel-body">
								
                        
                        <div class="row">
                            <div class="col-md-12">
									
                                   	<br />
                               <asp:GridView ID="GridView1" runat="server" class="gridview"  AutoGenerateColumns="False" Width="100%" EmptyDataText="No Records Found" EmptyDataRowStyle-HorizontalAlign="Center"   >
                                    <Columns>
                                         <asp:BoundField DataField="sl" HeaderText="sl" HeaderStyle-Width="5%"   />
										 <asp:BoundField DataField="UserID" HeaderText="UserID" HeaderStyle-Width="10%"  Visible="false"  />
										 <asp:BoundField DataField="FirstName" HeaderText="FirstName" HeaderStyle-Width="10%"   />
										 <asp:BoundField DataField="LastName" HeaderText="LastName" HeaderStyle-Width="10%"   />
										 <asp:BoundField DataField="EmailID" HeaderText="EmailID" HeaderStyle-Width="15%"   />
										 <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" HeaderStyle-Width="10%"   />
										 <asp:BoundField DataField="Organisation" HeaderText="Organisation" HeaderStyle-Width="15%"   />										
										 <asp:BoundField DataField="signInTime" HeaderText="Sign-InTime" HeaderStyle-Width="13%"   />
										 <asp:BoundField DataField="signOutTime" HeaderText="Sign-OutTime" HeaderStyle-Width="13%"   />

                                    </Columns> 
                                   <HeaderStyle CssClass="info" />                                  
                                </asp:GridView>                           
                            </div></div>
								<div class="col-md-2">
							 <a href="Webform6.aspx"><br />	<input type="button" class="btn btn-warning" value="Go Back" style="width:150px" /></a></div>
								<div class="col-md-2"><br />
                                    <input type="button" class="btn btn-warning" value="Print" onclick="myFunction()" style="width:150px" />
							 </div>
								
			   	</div>
				</div>
        </div>
		
       <script>
function myFunction() {
    window.print();
}
</script>
    </form>
</body>
</html>
 
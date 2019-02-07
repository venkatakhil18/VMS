<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Webform6.aspx.cs" Inherits="Webform6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="css/D.css"/>
	<link rel="stylesheet" href="css/bootstapeMin.css"/>	
	<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>--%>
	<title>Welcome</title>
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id$=txt_fromdate]").datepicker({
                dateFormat: "dd/mm/yy",
                maxDate:0,
                buttonImageOnly: true,
                buttonImage: 'http://jqueryui.com/demos/datepicker/images/calendar.gif'
            });
            $("[id$=txt_todate]").datepicker({
                dateFormat: "dd/mm/yy",
                maxDate: 0,
                buttonImageOnly: true,
                buttonImage: 'http://jqueryui.com/demos/datepicker/images/calendar.gif'
            });
        });
    </script>
</head>

<body>
   
 <form id="form1" runat="server">
        
			<div class="container1" style="height:300px;padding:20px">
		
				<header class="heading">Visitors Information Reports</header><hr/>
			<!--- For firstame---->
	       	<div class="row"> 
				
			      <div class="col-md-6"><label class="Month">View Reports :</label></div>
				  <div class="col-md-6"> <asp:DropDownList ID="drp_report" runat="server" CssClass="form-control" Width="100%"  ></asp:DropDownList>  </div>
				<br />
				   <div class="col-md-6"><label class="Month" > Sign-Out To Date:</label></div>	
				  <div class="col-md-6">   <asp:textbox runat="server" id="txt_fromdate" text="Select Date" cssclass="form-control"></asp:textbox></div>
				
				 <div class="col-md-6"><label class="Month" > Sign-Out To Date :</label></div>
				  <div class="col-md-6">  <asp:textbox runat="server" id="txt_todate" text="Select Date" cssclass="form-control"></asp:textbox></div>
                 </div>				  
				  
		  
			
				<br />
			<div class="col-sm-12">
					
                    <div class="row">
                        <div class="col-xs-6">
                        </div>
                        <div class="col-xs-6">
                        <asp:Button ID="BtnSubmit" runat="server" CssClass=" btn btn-warning" Width="40%" Text="Submit" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>
			     

        </div>
			
	     <div class="col-md-12">
									
                                   	<br />
                               <asp:GridView ID="GridView1" runat="server" class="table table-hover table-bordered"  AutoGenerateColumns="False" Width="100%" EmptyDataText="Not Avl Data" EmptyDataRowStyle-HorizontalAlign="Center"   >
                                    <Columns>
                                         <asp:BoundField DataField="sl" HeaderText="sl" HeaderStyle-Width="5%" />
										 <asp:BoundField DataField="UserID" HeaderText="UserID" HeaderStyle-Width="5%"  />
										 <asp:BoundField DataField="FirstName" HeaderText="FirstName" HeaderStyle-Width="10%"   />
										 <asp:BoundField DataField="LastName" HeaderText="LastName" HeaderStyle-Width="10%"   />
										 <asp:BoundField DataField="EmailID" HeaderText="EmailID" HeaderStyle-Width="10%"   />
										 <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" HeaderStyle-Width="10%"   />
										 <asp:BoundField DataField="Organisation" HeaderText="Organisation" HeaderStyle-Width="20%"   />										
										 <asp:BoundField DataField="signInTime" HeaderText="Sign-InTime" HeaderStyle-Width="15%"   />
										 <asp:BoundField DataField="signOutTime" HeaderText="Sign-OutTime" HeaderStyle-Width="15%"   />

                                    </Columns> 
                                   <HeaderStyle CssClass="info" />                                  
                                </asp:GridView>                           
                            </div>
			
                 
        </form>
	</body>
	</html>
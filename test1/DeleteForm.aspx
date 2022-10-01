<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteForm.aspx.cs" Inherits="test1.DeleteForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
    <div class="bg">
        <div class="button-box">
		
			
    <form id="form1" runat="server">
        <div>
            
             <asp:HiddenField ID="HiddenField_Id" runat="server" />
            <h3>Delete Members detail</h3>
Name:<br />
<asp:TextBox ID="full_name" runat="server" class="input-field"></asp:TextBox>
<br />
<br />
User ID:<br />
<asp:TextBox ID="user_id" runat="server" class="input-field"></asp:TextBox>
<br />
<br />
Email Address:<br />
<asp:TextBox ID="email_address" runat="server" class="input-field" TextMode="Email"></asp:TextBox>
<br />
<br />
Phone Number:<br />
<asp:TextBox ID="phone_number" runat="server" class="input-field" TextMode="Number"></asp:TextBox>
<br />
<br />
Password:<br />
<asp:TextBox ID="password" runat="server" class="input-field"></asp:TextBox>
<br />
<br />
Gender:<br />
<asp:RadioButtonList ID="gender" runat="server">
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>
<asp:ListItem>Others</asp:ListItem>
</asp:RadioButtonList>
<br />

            <asp:Button ID="Button1" runat="server" class="submit-btn" Text="Delete Detail" OnClick="Button1_Click"/>
        </div>
         </div>
             </div>
</form>
</body>
</html>

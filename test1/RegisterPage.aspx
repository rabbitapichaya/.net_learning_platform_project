<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="test1.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<meta name="author"/>
	<title>Register Page</title>
	<link rel="stylesheet" type="text/css" href="register.css"/>
</head>
<body>
	<div class="bg">
		<div class="form-box">
						
			<form id="Register" runat="server" class="input-group">	<!-- Register option -->
				<div class="Register">
									<br /><br /><h3>Register</h3>
						</div><br /><br />
					<asp:TextBox ID="TextBox1" runat="server" class="input-field" placeholder="Full Name" ></asp:TextBox>
					<asp:TextBox ID="TextBox3"  runat="server" class="input-field" placeholder="Email Address" ></asp:TextBox>	<!-- input should be email format -->
					<asp:TextBox ID="TextBox4" runat="server" class="input-field" placeholder="Phone Number"></asp:TextBox> <!-- input must be numeric -->
					<asp:TextBox ID="TextBox5" runat="server" class="input-field" placeholder="Enter Password"></asp:TextBox>
							<!-- radio btn -->
						<span class="gender-title">Gender</span>		<!-- gender option title -->
						<div class="category">
					
								<asp:RadioButtonList ID="RadioButtonList1" runat="server">
									<asp:ListItem>Male</asp:ListItem>
									<asp:ListItem>Female</asp:ListItem>
									<asp:ListItem>Others</asp:ListItem>
								</asp:RadioButtonList>
					
						</div>
			
					<input type="checkbox" class="check-box"/><span>I agree the terms & conditions</span><br />
						<asp:Button ID="Button1" runat="server" class="submit-btn" Text="Register" OnClick="Button1_Click" />
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [members]"></asp:SqlDataSource>
					<br /><br />
					<asp:Label ID="WarningLabel" runat="server" Text=""></asp:Label>
					</form>
		</div>
	</div>
</body>
</html>

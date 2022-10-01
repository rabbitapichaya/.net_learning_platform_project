<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="test1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
#GridView1 {
font-family: Arial, Helvetica, sans-serif;
border-collapse: collapse;
width: 100%;
}

#GridView1 td, #GridView1 th {
border: 1px solid #ddd;
padding: 8px;
}

#GridView1 tr:nth-child(even){background-color: #f2f2f2;}

#GridView1 tr:hover {background-color: #ddd}

#GridView1 th {
padding-top: 12px;
padding-bottom: 12px;
text-align: left;
background-color: #63bcf3;
color: white;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="full_name" HeaderText="full Name" SortExpression="full_name" />               
                <asp:BoundField DataField="email_address" HeaderText="Email Address" SortExpression="email_address" />
                <asp:BoundField DataField="phone_number" HeaderText="Phone Number" SortExpression="phone_number" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [members]"></asp:SqlDataSource>
    </form>
</body>
</html>

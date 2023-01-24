<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page8.aspx.cs" Inherits="_26DecNotes.Page8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Even Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="can not be empty" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter Even Number" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="odd Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="can not be empty" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="enter odd number" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>

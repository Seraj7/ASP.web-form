<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page10.aspx.cs" Inherits="_26DecNotes.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <%-- <script>
        function ValidateForm()
        {
            var result = true;
            if (document.getElementById("TextBox1").value == "")
            {
                document.getElementById("Label1").innerHTML = "enter the EmailId";
                result = false;
            }
            else
            {
                document.getElementById("Label1").innerHTML = "";
            }

            if (documnet.getElementById("TextBox2").value == "")
            {
                document.getElementById("Label2").innerHTML = "enter the password";
                result = false;
            }
            else
            {
                document.getElementById("Label2").innerHTML = "";
            }
            return result;
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;&nbsp;
        </p>
        <div>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="EmailId"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="fill in correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Website"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Fill the correct link" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Phone No"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Number" ValidationExpression="(\+91)?(-)?\s*?(91)?\s*?(\d{3})-?\s*?(\d{3})-?\s*?(\d{4})">*</asp:RegularExpressionValidator>
            <br />
            <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click"  Text="Button" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

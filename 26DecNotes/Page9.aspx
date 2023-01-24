<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page9.aspx.cs" Inherits="_26DecNotes.Page9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script> 
        function validateform()
        {
            var result = true;
            if (document.getElementById("TextBox1").value == "") {
                document.getElementById("Label1").innerHTML = "Please enter EmailId";
                result = false;
            }
            else
            {
                document.getElementById("Label1").innerHTML = "";
                
            }

            if (document.getElementById("TextBox2").value == "")
            {
                document.getElementById("Label2").innerHTML = "Please enter  Password";
                result = false;
            }
            else
            {
                document.getElementById("Label2").innerHTML = "";

            }
            return result;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="*"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="*"></asp:Label>
&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="return validateform() " Text="Button" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePage.aspx.cs" Inherits="_26DecNotes.CreatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Create Account"></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 54px" Width="238px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="UserId"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 82px" Width="238px"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 64px" Width="238px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Re-Password"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 42px" Width="238px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 74px" Width="238px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Country"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
                <asp:ListItem>Nepal</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>England</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Hobbies"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" style="margin-left: 116px">
                <asp:ListItem>Singing</asp:ListItem>
                <asp:ListItem>Dancing</asp:ListItem>
                <asp:ListItem>Drawing</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Label ID="Label10" runat="server" Text="Select DOB"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="1990-12-29" ShowGridLines="True" style="margin-left: 129px" VisibleDate="1990-12-29" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" Width="289px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Width="396px"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://dazzlingskill.com/">Dazzling Skill</asp:HyperLink>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://www.facebook.com/">Facebook</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://meet.google.com/bdi-coza-hqb">Class link</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <input id="Button3" type="button" value="button" /></p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

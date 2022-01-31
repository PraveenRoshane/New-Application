<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px">

        <table class="nav-justified">
            <tr>
                <td colspan="2" style="height: 20px; font-size: x-large; font-weight: bold; color: #000000;">Complete CRUD in ASP.NET with SQL</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px">
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Employee ID"></asp:Label>
                </td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button4_Click" Text="GET" Width="100px" />
                </td>
            </tr>
            <tr>
                <td style="height: 24px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Employee Name"></asp:Label>
                </td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Employee City"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                        <asp:ListItem>Chicago</asp:ListItem>
                        <asp:ListItem>New York</asp:ListItem>
                        <asp:ListItem>Los Anjalis</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 24px">
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Employee Age"></asp:Label>
                </td>
                <td style="height: 24px">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 24px">
                    <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Employee Sex"></asp:Label>
                </td>
                <td style="height: 24px">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="height: 28px">
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Joining Date"></asp:Label>
                </td>
                <td style="height: 28px">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Contact"></asp:Label>
                </td>
                <td style="height: 26px">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 26px">&nbsp;</td>
                <td style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 26px"></td>
                <td style="height: 26px">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="100px" />
                    <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" Text="Update" Width="100px" />
                    <asp:Button ID="Button3" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button3_Click" Text="Delete" Width="100px" OnClientClick="return confirm('Are You Sure to Delete');" />
                    <asp:Button ID="Button5" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button5_Click" Text="Load" Width="100px" />
                </td>
            </tr>
            <tr>
                <td style="height: 26px">&nbsp;</td>
                <td style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="1293px">
                        <HeaderStyle BackColor="Black" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="OnlineEyeWearstoreTestPhase.ViewProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Home</strong></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddProducts.aspx">Add Products</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewProducts.aspx">View Products</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Products &gt;1000" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View All" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" BackColor="Gray" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="1" RepeatDirection="Horizontal"

            Width="600px">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

                Recipe Details</HeaderTemplate>

            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

            <ItemTemplate>

                <asp:Image ID="imgProduct" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "photo") %>' style="padding-left:40px"/><br />

                <b>Type :</b>

                <asp:Label ID="lblCName" runat="server" Text='<%# Bind("prType") %>'></asp:Label>

                <br />

                <b>Category:</b>

                <asp:Label ID="lblName" runat="server" Text='<%# Bind("prCategory") %>'></asp:Label>

                <br />

               <b> Brand:</b>

                <asp:Label ID="lblCity" runat="server" Text=' <%# Bind("brand") %>'></asp:Label>

                <br />

                <b>Price :</b>

                <asp:Label ID="lblCountry" runat="server" Text='<%# Bind("Price") %>'></asp:Label>

                <br />
                <b>Description:</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Description") %>'></asp:Label>

                <br />
               

                <br />







            </ItemTemplate>

        </asp:DataList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>

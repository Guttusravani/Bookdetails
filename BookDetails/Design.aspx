<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="BookDetails.Design" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            background-color: #00FFFF;
        }
        .auto-style3 {
            margin-left: 65px;
        }
        .auto-style4 {
            margin-left: 82px;
        }
        .auto-style5 {
            margin-left: 51px;
        }
        .auto-style6 {
            margin-left: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style2">BOOK DETAILS</span></strong></div>
        <p>
            Title:<asp:TextBox ID="txtTitle" runat="server" CssClass="auto-style4" Width="182px"></asp:TextBox>
        </p>
        <p>
            Author:<asp:TextBox ID="txtAuthor" runat="server" CssClass="auto-style3" Width="185px"></asp:TextBox>
        </p>
        <p>
            Publisher:<asp:TextBox ID="txtPublisher" runat="server" CssClass="auto-style5" Width="183px"></asp:TextBox>
        </p>
        <p>
            Price:<asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style6" Width="183px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField></asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </p>
    </form>
</body>
</html>

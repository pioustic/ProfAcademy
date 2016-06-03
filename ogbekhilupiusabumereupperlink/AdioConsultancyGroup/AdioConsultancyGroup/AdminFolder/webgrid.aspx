<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webgrid.aspx.cs" Inherits="AdioConsultancyGroup.webgrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div align="center">
    <asp:Label ID="lblTitle" Style="font-weight: 700" runat="server">All Applicants</asp:Label>
    <hr/>
    </div>
<table align="center" cellspacing="1" style="width:100%; background-color:#FFFFFF;">
    <tr>
        <td align="center">
            <asp:GridView ID="gvEmployess" runat="server" BackColor="white"
                BorderStyle="Ridge" BorderWidth="2px" CellPadding="3"
                CellSpacing="1" GridLines="None" Width="100%" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="100"/>
                    <asp:BoundField DataField="FirstName" HeaderText="Name" ItemStyle-Width="150" ItemStyle-Font-bold="True" ItemStyle-font-size="Larger"/>
                    <asp:BoundField DataField="Surname" HeaderText="Surname" ItemStyle-Width="20"/>
                    <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="150"/>
                 <asp:ImageField DataImageUrlField="Passport" ControlStyle-Width="150"/>
                    <%--<asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="hyperlink1" NavigateUrl='<%#Eval("CustId","/Admin/OrderDetails.aspx?CustId={0}") %>' Text="View Details" Target="_blank" runat="server"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="black"></FooterStyle>
                            <HeaderStyle BackColor="#4A3C8C" font-bold="True" ForeColor="#E7E7FF"></HeaderStyle>
                            <PagerStyle BackColor="#C6C3C6" ForeColor="black" HorizontalAlign="Right"></PagerStyle>
                            <RowStyle BackColor="#DEDFDE" ForeColor="black"></RowStyle>
                            <SelectedRowStyle BackColor="#9471DE" font-bold="True" ForeColor="white"></SelectedRowStyle>
                            <SortedDescendingCellStyle BackColor="#F1F1F1">
                                
                            </SortedDescendingCellStyle>
                            <SortedAscendingHeaderStyle BackColor="#59489C"></SortedAscendingHeaderStyle>
                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>
                            <SortedDescendingHeaderStyle BackColor="#33276A"></SortedDescendingHeaderStyle>
            </asp:GridView>
            
        </td>
    </tr>
    
</table>
    </form>
</body>
</html>

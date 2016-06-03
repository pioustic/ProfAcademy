<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmloyeeApplicationPage.aspx.cs" Inherits="AdioConsultancyGroup.EmloyeeApplicationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style7
        {
            width: 50%;
        }
        .style8
        {
            width: 50%;
            height: 21px;
        }
        .style9
        {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" style="width: 900px;">
        <tr>
            <td>
                <table align="center" style="border-bottom-style: ridge; border-width: medium; border-color: #9933ff" >
                    <tr>
                        <td align="center">
                            <asp:Image ID="img1" Height="67px" Width="57px" ImageUrl="~/ProductImage/heart.jpg" runat="server"/>&nbsp;
                        </td>
                     <td>
                                    <asp:LinkButton ID="lblLogo" runat="server" Font-Name="Eras Demi ITC" Font-Size="20pt" ForeColor="#6600CC" Height="67"
                                         Text="Adio Consultancy Group" />
                                     <br/>
                                    We are the best !!!
                                  </td>
                                <td align="center">
                                    <asp:Image ID="img2" runat="server" Height="81px" ImageUrl="~/ProductImage/girls.jpg" Width="109px" />
                                </td>
                            </tr>
                       </table>
                </td>
                    </tr>
         <%--   <a href="#" runat="server" id="adminlink"><strong class="red">Manage school</strong></a><br/>--%>
        
        <tr>
             <td>
                 <table align="center" style="width: 900px;">
                     <tr>
                         <td align="center">
                             <%--<asp:HyperLink ID="hyperlink1" NavigateUrl='<%#Eval("CustId","/Admin/OrderDetails.aspx?CustId={0}") %>' Text="View Details" Target="_blank" runat="server"></asp:HyperLink>--%>
                            <a href="/AdminFolder/webgrid.aspx">View Applicants</a>
                              <%--<a href="#" runat="server" id="adminlink"><strong class="red">View Applicants</strong></a>--%>
                         </td>
                     </tr>
                 </table>
             </td>
         </tr>
         </table>

    <table  align="center" style="width: 900px;">
        <tr>
            <td class="style7" style="font-size:large"  align="center" colspan="2" >
                  <asp:Label ID="Label2" runat="server"  Text="Applicant Registration"></asp:Label>
            </td>
        </tr>
         <tr>
                <td class="style7"  align="right">
                    <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtFirstName" Runat="server">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="CreateEmployee"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7"  align="right">
                    <asp:Label ID="Label10" runat="server" Text="Surname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSurname" Runat="server">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtSurname" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="CreateEmployee"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7" align="right">
                    <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" Runat="server">
                    </asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="CreateEmployee"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Email not valid" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="CreateEmployee"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style7" align="right">
                    <asp:Label ID="Label7" runat="server" Text="Phone number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNo" runat="server"
                        ></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPhoneNo" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="CreateEmployee"></asp:RequiredFieldValidator>
                </td>
               

                </tr>
         <tr>
                <td class="style7" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Passport"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />  
                         </td>         
               </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
                <td class="style7">
                        &nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" 
                            Text="Submit" ValidationGroup="CreateEmployee">
                    </asp:Button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

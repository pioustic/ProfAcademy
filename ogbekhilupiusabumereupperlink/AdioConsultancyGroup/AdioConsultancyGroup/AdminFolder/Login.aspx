<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AdioConsultancyGroup.Login" %>

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
        
         </table>

    <table  align="center" style="width: 900px;">
       <tr>
                <td class="style7"  align="right">
                    <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtUserName" Runat="server">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="CreateEmployee"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7" align="right">
                    <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" Runat="server">
                    </asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="CreateEmployee"></asp:RequiredFieldValidator>

                 
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

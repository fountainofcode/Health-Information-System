﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_OtherUser.master" AutoEventWireup="true" CodeFile="EntryUserForm_OtherUserMaster.aspx.cs" Inherits="EntryUserForm_OtherUserMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        
    </style>
    <link href="StyleSheet_CommonOnAll.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/EntryUserForm_Add_OtherUserMaster.aspx" CssClass="link">ADD</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink12" runat="server" CssClass="link" NavigateUrl="~/EntryUserFrom_Report_OtherUserMaster.aspx">REPORT</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:HyperLink ID="HyperLink9" runat="server" CssClass="headerlink" Font-Bold="True" Font-Size="Large" NavigateUrl="~/EntryUserForm_OtherUserMaster.aspx">View Entry User Records</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:LinkButton ID="lnkbtn_A" runat="server" CssClass="link" OnClick="lnkbtn_A_Click">A</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_B" runat="server" CssClass="link" OnClick="lnkbtn_B_Click">B</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_C" runat="server" CssClass="link" OnClick="lnkbtn_C_Click">C</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_D" runat="server" CssClass="link" OnClick="lnkbtn_D_Click">D</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_E" runat="server" CssClass="link" OnClick="lnkbtn_E_Click">E</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_F" runat="server" CssClass="link" OnClick="lnkbtn_F_Click">F</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_G" runat="server" CssClass="link" OnClick="lnkbtn_G_Click">G</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_H" runat="server" CssClass="link" OnClick="lnkbtn_H_Click">H</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_I" runat="server" CssClass="link" OnClick="lnkbtn_I_Click">I</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_J" runat="server" CssClass="link" OnClick="lnkbtn_J_Click">J</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_K" runat="server" CssClass="link" OnClick="lnkbtn_K_Click">K</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_L" runat="server" CssClass="link" OnClick="lnkbtn_L_Click">L</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_M" runat="server" CssClass="link" OnClick="lnkbtn_M_Click">M</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_N" runat="server" CssClass="link" OnClick="lnkbtn_N_Click">N</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_O" runat="server" CssClass="link" OnClick="lnkbtn_O_Click">O</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_P" runat="server" CssClass="link" OnClick="lnkbtn_P_Click">P</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_Q" runat="server" CssClass="link" OnClick="lnkbtn_Q_Click">Q</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_R" runat="server" CssClass="link" OnClick="lnkbtn_R_Click">R</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_S" runat="server" CssClass="link" OnClick="lnkbtn_S_Click">S</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_T" runat="server" CssClass="link" OnClick="lnkbtn_T_Click">T</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_U" runat="server" CssClass="link" OnClick="lnkbtn_U_Click">U</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_V" runat="server" CssClass="link" OnClick="lnkbtn_V_Click">V</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_W" runat="server" CssClass="link" OnClick="lnkbtn_W_Click">W</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_X" runat="server" CssClass="link" OnClick="lnkbtn_X_Click">X</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_Y" runat="server" CssClass="link" OnClick="lnkbtn_Y_Click">Y</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="lnkbtn_Z" runat="server" CssClass="link" OnClick="lnkbtn_Z_Click">Z</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="color: #FF3300">
                    <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="overflow-x: auto; width: 999px; text-align: center">
                        <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="6" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:ButtonField CommandName="Select" Text="Edit" />
                                <%--To get a column with sno.--%>
                                <asp:TemplateField HeaderText="No.">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="userRegisteredDate" HeaderText="Registered Date" SortExpression="userRegisteredDate" />
                                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                                <%--Putting FirstName, MiddleName and LastName in one column--%>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <%# Eval("entryUserFirstName") %><%# Eval("entryUserMiddleName") %><%# Eval("entryUserLastName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="entryUserDesignation" HeaderText="Designation" SortExpression="entryUserDesignation" />
                                <asp:BoundField DataField="entryUserHospital" HeaderText="Hospital" SortExpression="entryUserHospital" />
                                <asp:BoundField DataField="entryUserInactiveOrActive" HeaderText="Status" SortExpression="entryUserInactiveOrActive" />

                                <asp:BoundField DataField="entryUserDob" HeaderText="Dob" SortExpression="entryUserDob" />
                                <asp:BoundField DataField="entryUserGender" HeaderText="Sex" SortExpression="entryUserGender" />
                                <%--Putting Contacts in one column--%>
                                <asp:TemplateField HeaderText="Contacts">
                                    <ItemTemplate>
                                        <%# Eval("entryUserContact") %> ; <%# Eval("entryUserSecContact") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%--Putting Emails in one column--%>
                                <asp:TemplateField HeaderText="Emails">
                                    <ItemTemplate>
                                        <%# Eval("userEmail") %> ; <%# Eval("userSecEmail") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%--Putting HouseAdd, City and District in one column--%>
                                <asp:TemplateField HeaderText="Address">
                                    <ItemTemplate>
                                        <%# Eval("entryUserHouseAdd") %> ; <%# Eval("entryUserCity") %> ; <%# Eval("entryUserDistrict") %> ; <%# Eval("entryUserCountry") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField CommandName="Select" Text="Edit" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        </asp:GridView>
                    </div>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>


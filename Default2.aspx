<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PersonKey" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PersonKey" HeaderText="PersonKey" InsertVisible="False" ReadOnly="True" SortExpression="PersonKey" />
                <asp:BoundField DataField="PersonLastName" HeaderText="PersonLastName" SortExpression="PersonLastName" />
                <asp:BoundField DataField="PersonFirstName" HeaderText="PersonFirstName" SortExpression="PersonFirstName" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString %>" SelectCommand="SELECT [PersonKey], [PersonLastName], [PersonFirstName] FROM [Person]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="PersonKey" DataSourceID="SqlDataSource2" ForeColor="#333333">
            <EditItemTemplate>
                PersonKey:
                <asp:Label ID="PersonKeyLabel1" runat="server" Text='<%# Eval("PersonKey") %>' />
                <br />
                PersonLastName:
                <asp:TextBox ID="PersonLastNameTextBox" runat="server" Text='<%# Bind("PersonLastName") %>' />
                <br />
                PersonFirstName:
                <asp:TextBox ID="PersonFirstNameTextBox" runat="server" Text='<%# Bind("PersonFirstName") %>' />
                <br />
                PersonUsername:
                <asp:TextBox ID="PersonUsernameTextBox" runat="server" Text='<%# Bind("PersonUsername") %>' />
                <br />
                PersonPlainPassword:
                <asp:TextBox ID="PersonPlainPasswordTextBox" runat="server" Text='<%# Bind("PersonPlainPassword") %>' />
                <br />
                Personpasskey:
                <asp:TextBox ID="PersonpasskeyTextBox" runat="server" Text='<%# Bind("Personpasskey") %>' />
                <br />
                PersonEntryDate:
                <asp:TextBox ID="PersonEntryDateTextBox" runat="server" Text='<%# Bind("PersonEntryDate") %>' />
                <br />
                PersonUserPassword:
                <asp:TextBox ID="PersonUserPasswordTextBox" runat="server" Text='<%# Bind("PersonUserPassword") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                PersonLastName:
                <asp:TextBox ID="PersonLastNameTextBox" runat="server" Text='<%# Bind("PersonLastName") %>' />
                <br />
                PersonFirstName:
                <asp:TextBox ID="PersonFirstNameTextBox" runat="server" Text='<%# Bind("PersonFirstName") %>' />
                <br />
                PersonUsername:
                <asp:TextBox ID="PersonUsernameTextBox" runat="server" Text='<%# Bind("PersonUsername") %>' />
                <br />
                PersonPlainPassword:
                <asp:TextBox ID="PersonPlainPasswordTextBox" runat="server" Text='<%# Bind("PersonPlainPassword") %>' />
                <br />
                Personpasskey:
                <asp:TextBox ID="PersonpasskeyTextBox" runat="server" Text='<%# Bind("Personpasskey") %>' />
                <br />
                PersonEntryDate:
                <asp:TextBox ID="PersonEntryDateTextBox" runat="server" Text='<%# Bind("PersonEntryDate") %>' />
                <br />
                PersonUserPassword:
                <asp:TextBox ID="PersonUserPasswordTextBox" runat="server" Text='<%# Bind("PersonUserPassword") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PersonKey:
                <asp:Label ID="PersonKeyLabel" runat="server" Text='<%# Eval("PersonKey") %>' />
                <br />
                PersonLastName:
                <asp:Label ID="PersonLastNameLabel" runat="server" Text='<%# Bind("PersonLastName") %>' />
                <br />
                PersonFirstName:
                <asp:Label ID="PersonFirstNameLabel" runat="server" Text='<%# Bind("PersonFirstName") %>' />
                <br />
                PersonUsername:
                <asp:Label ID="PersonUsernameLabel" runat="server" Text='<%# Bind("PersonUsername") %>' />
                <br />
                PersonPlainPassword:
                <asp:Label ID="PersonPlainPasswordLabel" runat="server" Text='<%# Bind("PersonPlainPassword") %>' />
                <br />
                Personpasskey:
                <asp:Label ID="PersonpasskeyLabel" runat="server" Text='<%# Bind("Personpasskey") %>' />
                <br />
                PersonEntryDate:
                <asp:Label ID="PersonEntryDateLabel" runat="server" Text='<%# Bind("PersonEntryDate") %>' />
                <br />
                PersonUserPassword:
                <asp:Label ID="PersonUserPasswordLabel" runat="server" Text='<%# Bind("PersonUserPassword") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString %>" DeleteCommand="DELETE FROM [Person] WHERE [PersonKey] = @PersonKey" InsertCommand="INSERT INTO [Person] ([PersonLastName], [PersonFirstName], [PersonUsername], [PersonPlainPassword], [Personpasskey], [PersonEntryDate], [PersonUserPassword]) VALUES (@PersonLastName, @PersonFirstName, @PersonUsername, @PersonPlainPassword, @Personpasskey, @PersonEntryDate, @PersonUserPassword)" SelectCommand="SELECT * FROM [Person] WHERE ([PersonKey] = @PersonKey)" UpdateCommand="UPDATE [Person] SET [PersonLastName] = @PersonLastName, [PersonFirstName] = @PersonFirstName, [PersonUsername] = @PersonUsername, [PersonPlainPassword] = @PersonPlainPassword, [Personpasskey] = @Personpasskey, [PersonEntryDate] = @PersonEntryDate, [PersonUserPassword] = @PersonUserPassword WHERE [PersonKey] = @PersonKey">
            <DeleteParameters>
                <asp:Parameter Name="PersonKey" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PersonLastName" Type="String" />
                <asp:Parameter Name="PersonFirstName" Type="String" />
                <asp:Parameter Name="PersonUsername" Type="String" />
                <asp:Parameter Name="PersonPlainPassword" Type="String" />
                <asp:Parameter Name="Personpasskey" Type="Int32" />
                <asp:Parameter DbType="Date" Name="PersonEntryDate" />
                <asp:Parameter Name="PersonUserPassword" Type="Object" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="PersonKey" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PersonLastName" Type="String" />
                <asp:Parameter Name="PersonFirstName" Type="String" />
                <asp:Parameter Name="PersonUsername" Type="String" />
                <asp:Parameter Name="PersonPlainPassword" Type="String" />
                <asp:Parameter Name="Personpasskey" Type="Int32" />
                <asp:Parameter DbType="Date" Name="PersonEntryDate" />
                <asp:Parameter Name="PersonUserPassword" Type="Object" />
                <asp:Parameter Name="PersonKey" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

<%@ Page Title="Lisa pakett" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact6.aspx.cs" Inherits="SpordiKlubModel.Contact3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Treening</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TreeningID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField DeleteText="Kustuta" EditText="Muuta" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TreeningID" HeaderText="TreeningID" ReadOnly="True" SortExpression="TreeningID" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="kestus" HeaderText="kestus" SortExpression="kestus" />
            <asp:BoundField DataField="raskusaste" HeaderText="raskusaste" SortExpression="raskusaste" />
            <asp:BoundField DataField="aeg" HeaderText="aeg" SortExpression="aeg" />
            <asp:BoundField DataField="Saal_SaalID" HeaderText="Saal_SaalID" SortExpression="Saal_SaalID" />
            <asp:BoundField DataField="Treener_TreenerId" HeaderText="Treener_TreenerId" SortExpression="Treener_TreenerId" />
            <asp:BoundField DataField="Registreerimine_RegistreerimineId" HeaderText="Registreerimine_RegistreerimineId" SortExpression="Registreerimine_RegistreerimineId" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString7 %>" DeleteCommand="DELETE FROM [TreeningSet] WHERE [TreeningID] = @TreeningID" InsertCommand="INSERT INTO [TreeningSet] ([nimi], [kirjeldus], [kestus], [raskusaste], [aeg], [Saal_SaalID], [Treener_TreenerId], [Registreerimine_RegistreerimineId]) VALUES (@nimi, @kirjeldus, @kestus, @raskusaste, @aeg, @Saal_SaalID, @Treener_TreenerId, @Registreerimine_RegistreerimineId)" SelectCommand="SELECT [TreeningID], [nimi], [kirjeldus], [kestus], [raskusaste], [aeg], [Saal_SaalID], [Treener_TreenerId], [Registreerimine_RegistreerimineId] FROM [TreeningSet]" UpdateCommand="UPDATE [TreeningSet] SET [nimi] = @nimi, [kirjeldus] = @kirjeldus, [kestus] = @kestus, [raskusaste] = @raskusaste, [aeg] = @aeg, [Saal_SaalID] = @Saal_SaalID, [Treener_TreenerId] = @Treener_TreenerId, [Registreerimine_RegistreerimineId] = @Registreerimine_RegistreerimineId WHERE [TreeningID] = @TreeningID">
        <DeleteParameters>
            <asp:Parameter Name="TreeningID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="kestus" Type="Int32" />
            <asp:Parameter Name="raskusaste" Type="String" />
            <asp:Parameter Name="aeg" Type="DateTime" />
            <asp:Parameter Name="Saal_SaalID" Type="Int32" />
            <asp:Parameter Name="Treener_TreenerId" Type="Int32" />
            <asp:Parameter Name="Registreerimine_RegistreerimineId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="kestus" Type="Int32" />
            <asp:Parameter Name="raskusaste" Type="String" />
            <asp:Parameter Name="aeg" Type="DateTime" />
            <asp:Parameter Name="Saal_SaalID" Type="Int32" />
            <asp:Parameter Name="Treener_TreenerId" Type="Int32" />
            <asp:Parameter Name="Registreerimine_RegistreerimineId" Type="Int32" />
            <asp:Parameter Name="TreeningID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <main aria-labelledby="title">
        </p>
        <p>
            &nbsp;</p>
    </main>
</asp:Content>

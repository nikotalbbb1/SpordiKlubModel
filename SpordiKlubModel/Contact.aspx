<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SpordiKlubModel.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tabel Treenerid</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TreenerId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TreenerId" HeaderText="TreenerId" ReadOnly="True" SortExpression="TreenerId" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="epost" HeaderText="epost" SortExpression="epost" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
            <asp:BoundField DataField="eriala" HeaderText="eriala" SortExpression="eriala" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString3 %>" DeleteCommand="DELETE FROM [TreenerSet] WHERE [TreenerId] = @TreenerId" InsertCommand="INSERT INTO [TreenerSet] ([nimi], [epost], [telefon], [eriala]) VALUES (@nimi, @epost, @telefon, @eriala)" ProviderName="<%$ ConnectionStrings:SportKlubConnectionString3.ProviderName %>" SelectCommand="SELECT [TreenerId], [nimi], [epost], [telefon], [eriala] FROM [TreenerSet]" UpdateCommand="UPDATE [TreenerSet] SET [nimi] = @nimi, [epost] = @epost, [telefon] = @telefon, [eriala] = @eriala WHERE [TreenerId] = @TreenerId">
        <DeleteParameters>
            <asp:Parameter Name="TreenerId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="epost" Type="String" />
            <asp:Parameter Name="telefon" Type="Int32" />
            <asp:Parameter Name="eriala" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="epost" Type="String" />
            <asp:Parameter Name="telefon" Type="Int32" />
            <asp:Parameter Name="eriala" Type="String" />
            <asp:Parameter Name="TreenerId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <h2>
        Lisa treeneri</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
</p>
    </main>
</asp:Content>

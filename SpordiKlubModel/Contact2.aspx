<%@ Page Title="Paketid" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="SpordiKlubModel.Contact2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tabel Paketid</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PaketID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="PaketID" HeaderText="PaketID" ReadOnly="True" SortExpression="PaketID" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="kuutasu" HeaderText="kuutasu" SortExpression="kuutasu" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="Liikme_LiikmeId" HeaderText="Liikme_LiikmeId" SortExpression="Liikme_LiikmeId" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString3 %>" DeleteCommand="DELETE FROM [LiikmelisuePakettiSet] WHERE [PaketID] = @PaketID" InsertCommand="INSERT INTO [LiikmelisuePakettiSet] ([nimi], [kuutasu], [kirjeldus], [Liikme_LiikmeId]) VALUES (@nimi, @kuutasu, @kirjeldus, @Liikme_LiikmeId)" SelectCommand="SELECT LiikmelisuePakettiSet.PaketID, LiikmelisuePakettiSet.nimi, LiikmelisuePakettiSet.kuutasu, LiikmelisuePakettiSet.kirjeldus, LiikmelisuePakettiSet.Liikme_LiikmeId FROM LiikmelisuePakettiSet INNER JOIN LiikmeSet ON LiikmelisuePakettiSet.Liikme_LiikmeId = LiikmeSet.LiikmeId" UpdateCommand="UPDATE [LiikmelisuePakettiSet] SET [nimi] = @nimi, [kuutasu] = @kuutasu, [kirjeldus] = @kirjeldus, [Liikme_LiikmeId] = @Liikme_LiikmeId WHERE [PaketID] = @PaketID">
        <DeleteParameters>
            <asp:Parameter Name="PaketID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="kuutasu" Type="Int32" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="Liikme_LiikmeId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="kuutasu" Type="Int32" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="Liikme_LiikmeId" Type="Int32" />
            <asp:Parameter Name="PaketID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    </main>
</asp:Content>

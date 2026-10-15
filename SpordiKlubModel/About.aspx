<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SpordiKlubModel.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;<main aria-labelledby="title"><h2 id="title">&nbsp;&nbsp; Liikmed</h2>
        <h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LiikmeId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="LiikmeId" HeaderText="LiikmeId" ReadOnly="True" SortExpression="LiikmeId" />
                    <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                    <asp:BoundField DataField="perekonnanimi" HeaderText="perekonnanimi" SortExpression="perekonnanimi" />
                    <asp:BoundField DataField="sunniaeg" HeaderText="sunniaeg" SortExpression="sunniaeg" />
                    <asp:BoundField DataField="epost" HeaderText="epost" SortExpression="epost" />
                    <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString2 %>" DeleteCommand="DELETE FROM [LiikmeSet] WHERE [LiikmeId] = @LiikmeId" InsertCommand="INSERT INTO [LiikmeSet] ([eesnimi], [perekonnanimi], [sunniaeg], [epost], [telefon]) VALUES (@eesnimi, @perekonnanimi, @sunniaeg, @epost, @telefon)" ProviderName="<%$ ConnectionStrings:SportKlubConnectionString2.ProviderName %>" SelectCommand="SELECT [LiikmeId], [eesnimi], [perekonnanimi], [sunniaeg], [epost], [telefon] FROM [LiikmeSet]" UpdateCommand="UPDATE [LiikmeSet] SET [eesnimi] = @eesnimi, [perekonnanimi] = @perekonnanimi, [sunniaeg] = @sunniaeg, [epost] = @epost, [telefon] = @telefon WHERE [LiikmeId] = @LiikmeId">
                <DeleteParameters>
                    <asp:Parameter Name="LiikmeId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="eesnimi" Type="String" />
                    <asp:Parameter Name="perekonnanimi" Type="String" />
                    <asp:Parameter Name="sunniaeg" Type="DateTime" />
                    <asp:Parameter Name="epost" Type="String" />
                    <asp:Parameter Name="telefon" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="eesnimi" Type="String" />
                    <asp:Parameter Name="perekonnanimi" Type="String" />
                    <asp:Parameter Name="sunniaeg" Type="DateTime" />
                    <asp:Parameter Name="epost" Type="String" />
                    <asp:Parameter Name="telefon" Type="Int32" />
                    <asp:Parameter Name="LiikmeId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h3>
    <h2>
            Lisa liikme<asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
</h2>
        <p>Use this area to provide additional information.</p>
    </main>
</asp:Content>

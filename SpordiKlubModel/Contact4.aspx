<%@ Page Title="Lisa toode" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact4.aspx.cs" Inherits="SpordiKlubModel.Contact4" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Lisa toode</h2>
        <p>
            <asp:Label ID="lblSonum" runat="server" Font-Bold="True" Visible="False"></asp:Label>
        </p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ToodeID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField DeleteText="Kustuta" EditText="Muuta" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ToodeID" HeaderText="ToodeID" ReadOnly="True" SortExpression="ToodeID" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:TemplateField HeaderText="hind" SortExpression="hind">
                <ItemTemplate>
                    <asp:Label ID="lbl_hind" runat="server" Text='<%# Eval("hind") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_hind_e" runat="server" TextMode="Number" min="0" step="1" Text='<%# Bind("hind") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txt_hind_i" runat="server" TextMode="Number" min="0" step="1" Text='<%# Bind("hind") %>'></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:CheckBoxField DataField="laoseis" HeaderText="laoseis" SortExpression="laoseis" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString7 %>" ProviderName="<%$ ConnectionStrings:SportKlubConnectionString7.ProviderName %>" DeleteCommand="DELETE FROM [ToodeSet] WHERE [ToodeID] = @ToodeID" InsertCommand="INSERT INTO [ToodeSet] ([nimi], [hind], [kirjeldus], [laoseis]) VALUES (@nimi, @hind, @kirjeldus, @laoseis)" SelectCommand="SELECT [ToodeID], [nimi], [hind], [kirjeldus], [laoseis] FROM [ToodeSet]" UpdateCommand="UPDATE [ToodeSet] SET [nimi] = @nimi, [hind] = @hind, [kirjeldus] = @kirjeldus, [laoseis] = @laoseis WHERE [ToodeID] = @ToodeID">
        <DeleteParameters>
            <asp:Parameter Name="ToodeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="hind" Type="Int32" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="laoseis" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="hind" Type="Int32" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="laoseis" Type="Boolean" />
            <asp:Parameter Name="ToodeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ToodeID" DataSourceID="SqlDataSource1toode" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ToodeID" HeaderText="ToodeID" InsertVisible="False" ReadOnly="True" SortExpression="ToodeID" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:TemplateField HeaderText="hind" SortExpression="hind">
                <ItemTemplate>
                    <asp:Label ID="lbl_hind" runat="server" Text='<%# Eval("hind") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_hind_e" runat="server" TextMode="Number" min="0" step="1" Text='<%# Bind("hind") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txt_hind_i" runat="server" TextMode="Number" min="0" step="1" Text='<%# Bind("hind") %>'></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:CheckBoxField DataField="laoseis" HeaderText="laoseis" SortExpression="laoseis" />
            <asp:CommandField ShowInsertButton="True" CancelText="Loobu" InsertText="Lisa" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1toode" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString7 %>" ProviderName="<%$ ConnectionStrings:SportKlubConnectionString7.ProviderName %>" DeleteCommand="DELETE FROM [ToodeSet] WHERE [ToodeID] = @ToodeID" InsertCommand="INSERT INTO [ToodeSet] ([nimi], [hind], [kirjeldus], [laoseis]) VALUES (@nimi, @hind, @kirjeldus, @laoseis)" SelectCommand="SELECT * FROM [ToodeSet]" UpdateCommand="UPDATE [ToodeSet] SET [nimi] = @nimi, [hind] = @hind, [kirjeldus] = @kirjeldus, [laoseis] = @laoseis WHERE [ToodeID] = @ToodeID">
        <DeleteParameters>
            <asp:Parameter Name="ToodeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="hind" Type="Int32" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="laoseis" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="hind" Type="Int32" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="laoseis" Type="Boolean" />
            <asp:Parameter Name="ToodeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    </main>
</asp:Content>

<%@ Page Title="Lisa pakett" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="SpordiKlubModel.Contact3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Lisa pakett</h2>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1_lisapaketti" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
                    <asp:BoundField DataField="kuutasu" HeaderText="kuutasu" SortExpression="kuutasu" />
                    <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                    <asp:TemplateField HeaderText="Liige" SortExpression="Liikme_LiikmeId">
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_liikmed" DataTextField="eesnimi" DataValueField="LiikmeId" SelectedValue='<%# Bind("Liikme_LiikmeId") %>'>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Liikme_LiikmeId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" CancelText="Loobu" InsertText="Lisa" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:Label ID="lblSonum" runat="server" Font-Bold="True" Visible="False"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource_liikmed" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString7 %>" ProviderName="<%$ ConnectionStrings:SportKlubConnectionString7.ProviderName %>" SelectCommand="SELECT [LiikmeId], [eesnimi] FROM [LiikmeSet]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1_lisapaketti" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString5 %>" DeleteCommand="DELETE FROM [LiikmelisuePakettiSet] WHERE [PaketID] = @PaketID" InsertCommand="INSERT INTO [LiikmelisuePakettiSet] ([nimi], [kuutasu], [kirjeldus], [Liikme_LiikmeId]) VALUES (@nimi, @kuutasu, @kirjeldus, @Liikme_LiikmeId)" ProviderName="<%$ ConnectionStrings:SportKlubConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [LiikmelisuePakettiSet]" UpdateCommand="UPDATE [LiikmelisuePakettiSet] SET [nimi] = @nimi, [kuutasu] = @kuutasu, [kirjeldus] = @kirjeldus, [Liikme_LiikmeId] = @Liikme_LiikmeId WHERE [PaketID] = @PaketID">
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
    </main>
</asp:Content>

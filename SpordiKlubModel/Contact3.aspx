<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="SpordiKlubModel.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
    <h2>
        Lisa pakkett</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="PaketID" DataSourceID="SqlDataSource1pakett" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="PaketID" HeaderText="PaketID" InsertVisible="False" ReadOnly="True" SortExpression="PaketID" />
                <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
                <asp:BoundField DataField="kuutasu" HeaderText="kuutasu" SortExpression="kuutasu" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                <asp:TemplateField HeaderText="Liikme_LiikmeId" SortExpression="Liikme_LiikmeId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Liikme_LiikmeId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Liikme_LiikmeId") %>'></asp:TextBox>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1pakett" DataTextField="nimi" DataValueField="Liikme_LiikmeId" SelectedValue='<%# Bind("Liikme_LiikmeId") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1pakett" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString3 %>" DeleteCommand="DELETE FROM [LiikmelisuePakettiSet] WHERE [PaketID] = @PaketID" InsertCommand="INSERT INTO [LiikmelisuePakettiSet] ([nimi], [kuutasu], [kirjeldus], [Liikme_LiikmeId]) VALUES (@nimi, @kuutasu, @kirjeldus, @Liikme_LiikmeId)" SelectCommand="SELECT * FROM [LiikmelisuePakettiSet]" UpdateCommand="UPDATE [LiikmelisuePakettiSet] SET [nimi] = @nimi, [kuutasu] = @kuutasu, [kirjeldus] = @kirjeldus, [Liikme_LiikmeId] = @Liikme_LiikmeId WHERE [PaketID] = @PaketID">
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
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Liikme_LiikmeId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1pakett" runat="server" ConnectionString="<%$ ConnectionStrings:SportKlubConnectionString3 %>" DeleteCommand="DELETE FROM [LiikmelisuePakettiSet] WHERE [PaketID] = @PaketID" InsertCommand="INSERT INTO [LiikmelisuePakettiSet] ([nimi], [kuutasu], [kirjeldus], [Liikme_LiikmeId]) VALUES (@nimi, @kuutasu, @kirjeldus, @Liikme_LiikmeId)" SelectCommand="SELECT * FROM [LiikmelisuePakettiSet]" UpdateCommand="UPDATE [LiikmelisuePakettiSet] SET [nimi] = @nimi, [kuutasu] = @kuutasu, [kirjeldus] = @kirjeldus, [Liikme_LiikmeId] = @Liikme_LiikmeId WHERE [PaketID] = @PaketID">
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

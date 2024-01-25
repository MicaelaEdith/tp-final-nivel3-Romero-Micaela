﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Administrar.aspx.cs" Inherits="TPFinalNivel3RomeroMicaela.Administrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col">
            <div class="col-4 m-4">
                <div style="display: inline;">
                    <asp:TextBox ID="txtFiltrar" CssClass="form-control bg-body-secondary col-3" AutoPostBack="true" runat="server" placeholder="filtrar" />
                    
                    <asp:CheckBox Text="" ID="chkFiltroAvanzado" AutoPostBack="true" runat="server"/>
                        
                    <asp:Label Text=" Filtro Avanzado" CssClass="mb-1 w-100" runat="server" />
                </div>
            </div>
        </div>
        <%if (filtroAvanzado)
            {%>

        <div class="row m-3 mt-1">
            <div class="col-3">
                <asp:Label Text="Categoria" runat="server" />
                <asp:DropDownList runat="server" ID="ddlCampo" AutoPostBack="true" CssClass="form-control">
                    <asp:ListItem Text="Nombre" />
                    <asp:ListItem Text="Tipo" />
                    <asp:ListItem Text="Número" />
                </asp:DropDownList>
            </div>
            <div class="col-3">
                <asp:Label Text="Marca" runat="server" />
                <asp:DropDownList ID="ddlCriterio" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="col-3">
                <asp:Label Text="Filtro" runat="server" />
                <div style="display:flex">
                <asp:TextBox ID="txtFiltroAvanzado" CssClass="form-control" runat="server" />
                <asp:Button Text="Buscar" ID="btnBuscar" CssClass="btn btn-secondary" style="margin-left:1vw" runat="server" />
                    </div>
            </div>
        </div>
    </div>
    <%} %>
    <div style="max-width:95%; margin:auto">
        <asp:GridView ID="dgvProductos" runat="server" DataKeyNames="codigo" CssClass="table" AutoGenerateColumns="false" AllowPaging="true" PageSize="10">
            <Columns>
                <asp:BoundField HeaderText="Código" DataField="codigo" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
                <asp:BoundField HeaderText="Categoria" DataField="Categoria.Descripcion" />
                <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
                <asp:BoundField HeaderText="Precio" DataField="Precio" />
                <asp:CommandField HeaderText="Modificar" ShowSelectButton="true" SelectText="🖊 " />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

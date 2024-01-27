﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPFinalNivel3RomeroMicaela
{
    public partial class EliminarProducto : System.Web.UI.Page
    {
        int IdProducto;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["codigo"].ToString();
            IdProducto = int.Parse(id);

            if (!string.IsNullOrEmpty(id))
            {
                Producto prod = new Producto();
                ProductoNegocio producto = new ProductoNegocio();
                prod = producto.detalleProducto(int.Parse(id));

                if (producto != null)
                {
                    txtTitulo.Text = prod.Nombre;
                    txtPrecio.InnerText = "$ " + prod.Precio.ToString("F2") + ".-";
                    txtDescripcion.InnerText = prod.Descripcion;
                    imgProducto.Src = prod.ImagenUrl;
                }
            }
        }

        protected void btnEliminarDefinitivo_Click(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            negocio.eliminar(IdProducto);
            Response.Redirect("Administrar.aspx");

        }

        protected void cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrar.aspx");

        }
    }
 }
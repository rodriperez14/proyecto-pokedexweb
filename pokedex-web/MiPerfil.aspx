<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="pokedex_web.MiPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion{
            color: red;
            font-size: 12px;
        }
    </style>
    <script>
        function validar() {

            //capturar el control.
            const txtApellido = document.getElementById("txtApellido");
            if (txtApellido.value == "") {
                txtApellido.classList.add("is-invalid");
                txtApellido.classList.remove("is-valid");
                //alert("Debes cargar un apellido...");
                return false;
            }
            txtApellido.classList.remove("is-invalid");
            txtApellido.classList.add("is-valid");
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Mi Perfil</h3>
    <div class="row">

        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtNombre" />
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" MaxLength="8" ID="txtApellido" />
                <%--<asp:RangeValidator ErrorMessage="Fuera de rango..." Type="Integer" MinimumValue="1" MaximumValue="20" ControlToValidate="txtApellido" runat="server" />
                <asp:RegularExpressionValidator ErrorMessage="Solo numeros" ControlToValidate="txtApellido" ValidationExpression="^[0-9]+$" runat="server" />--%>
            </div>
            <div class="mb-3">
                <label class="form-label">Fecha de Nacimiento</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtFechaNacimiento" TextMode="Date"/>
            </div>
        </div>

        <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Imagen Perfil</label>
                <input type="file" id="txtImagen" runat="server" class="form-control"/>
            </div>
            <asp:Image ID="imgNuevoPerfil" imageUrl="https://thumbs.dreamstime.com/b/no-thumbnail-image-placeholder-forums-blogs-websites-148010362.jpg"
                runat="server" CssClass="img-fluid mb-3"/>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button Text="Guardar" CssClass="btn btn-primary" OnClientClick="return validar()" OnClick="btnGuardar_Click" ID="btnGuardar" runat="server" />
            <a href="/">Regresar</a>
        </div>
    </div>
</asp:Content>

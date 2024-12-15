using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace pokedex_web
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgAvatar.ImageUrl = "https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg";

            if (!(Page is Login || Page is Registro || Page is Default || Page is Error))
            {
                if (!Seguridad.sesionActiva(Session["trainee"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Trainee user = (Trainee)Session["trainee"];
                    //lbluser.Text = user.Email;
                    if(!string.IsNullOrEmpty(user.ImagenPerfil))
                        imgAvatar.ImageUrl = "~/Images/" + user.ImagenPerfil;
                }
            }
           
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}
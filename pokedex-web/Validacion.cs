﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace negocio
{
    public static class Validacion
    {
        //le agrego un comentario al archivo...
        //segundo comentario al archivo
        public static bool validaTextoVacio(object control)
        {
            if (control is TextBox texto)
            {
                if(!(string.IsNullOrEmpty(texto.Text)))
                    return false;
                else
                    return true;
            }

            return false;
        }

    }
}

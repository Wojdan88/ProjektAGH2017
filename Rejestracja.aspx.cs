﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rejestracja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("Rejestracja konta zakończona sukcesem!");
    }
}
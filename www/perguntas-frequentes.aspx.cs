using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;
using Telerik.Web.UI;

public partial class Perguntas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
        }

        System.Web.UI.HtmlControls.HtmlAnchor i = (System.Web.UI.HtmlControls.HtmlAnchor)Master.FindControl("perguntas");
        i.Attributes.Remove("class"); i.Attributes.Add("class", "item active");
    }
}
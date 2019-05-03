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

public partial class Contato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           
        }

        System.Web.UI.HtmlControls.HtmlAnchor i = (System.Web.UI.HtmlControls.HtmlAnchor)Master.FindControl("falecomagente");
        i.Attributes.Remove("class"); i.Attributes.Add("class", "item active");
    }
    protected void btnResult_Click(object sender, EventArgs e)
    {

        if (nome.Value == "")
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type=text/javascript>alert('Por favor, preencha o seu nome.')</script>");

        if (email.Value == "" || email.Value.Contains("@") == false)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type=text/javascript>alert('Por favor, preencha corretamente seu email.')</script>");
            return;
        }

        if (mensagem.Value == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type=text/javascript>alert('Por favor, preencha uma mensagem.')</script>");
            return;
        }

        try
        {
            new Email().EnviarEmail("contato@blackmind.com.br", "Contato TrueCare", "Dados Coletados Form. Contato TrueCare <br/><br/><b>Email: </b>" + email.Value + "<br/><br/><b>Nome: </b>" + nome.Value + "<br/><br/>Mensagem: " + mensagem.Value + "<br/><br/>Assunto: " + assunto.Value + "<br/><br/>Telefone: " + telefone.Value, "Site TrueCare - Contato", "contato@truecare.com.br", "smtp.office365.com", "truecare@414");
        }
        catch(Exception ex) { }

        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type=text/javascript>alert('Formulário enviado com sucesso!'); window.location.href='TrueCare.aspx';</script>");
        
    }
}
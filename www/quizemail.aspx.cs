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

public partial class QuizEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["respostas"] == null)
                Response.Redirect("quiz.aspx");
        }
    }

    protected void btnResult_Click(object sender, EventArgs e)
    {
        if(name.Value=="")
            ClientScript.RegisterStartupScript(this.GetType(),"alert", "<script type=text/javascript>alert('Por favor, preencha o seu nome.')</script>");

        if (email.Value == "" || email.Value.Contains("@") == false)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type=text/javascript>alert('Por favor, preencha corretamente seu email.')</script>");
            return;
        }

        string selecionado = ""; string planoselecionado = "";
        foreach (ListItem i in jautilizou.Items)
        {
            if(i.Selected==true)
                selecionado = i.Text;
        }

        foreach (ListItem i in plano.Items)
        {
            if (i.Selected == true)
                planoselecionado = i.Text;
        }

        try
        {
            new Email().EnviarEmail("contato@blackmind.com.br", "Quiz True Care", "Dados Coletados Quiz True Care <br/><br/><b>Email: </b>" + email.Value + "<br/><br/><b>Nome: </b>" + name.Value + "<br/><br/>Plano de Saúde: " + planoselecionado + "<br/><br/>Já utilizou plano de saúde ou para os familiares? " + selecionado, "Site TrueCare - Quiz", "contato@truecare.com.br", "smtp.office365.com", "truecare@414");
        }
        catch { }

        Response.Redirect("quizresult.aspx");
    }
   
}
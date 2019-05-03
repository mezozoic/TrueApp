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

public partial class QuizInicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            int quiz = 0; 
            try
            {
                quiz = Convert.ToInt16(Request.QueryString["quiz"].ToString());
            }
            catch
            { Response.Redirect("quiz.aspx"); }

            if (quiz > 2)
                Response.Redirect("quiz.aspx");

            link.HRef = "quizquestion.aspx?quiz="+quiz.ToString()+"&ask=1";
            linkMobile.HRef = "quizquestion.aspx?quiz=" + quiz.ToString() + "&ask=1";
            string descricao = ""; string titulo = ""; string Desc = "";

            if (quiz==1)
            {
                titulo = "Você sabe cuidar do seu coração?";
                descricao = @"De acordo com a Organização Mundial da Saúde<br/>
                        (OMS), as doenças cardiovasculares estão entre<br/>
                         as que mais matam pessoas no mundo, sendo<br/>
                         que 30 a 40% dessas mortes poderiam ser<br/>
                         evitadas com uma simples mudança de hábitos";
                Desc = "Doenças<br/> cardiovasculares";
            }
            else
            {
                titulo = "Seus hábitos ajudam na prevenção da pressão alta?";
                descricao = @"Segundo o Ministério da Saúde, a hipertensão arterial atinge 22,7% da população adulta
                            brasileira. Sendo que, a partir dos 65 anos, essa porcentagem sobre para 59,7%.";
                Desc = "Hipertensão arterial";
                img.Src = "contents/icone_hipertensao_arterial.png";
            }

            lblDescricao.Text = descricao; lblDescricaoMobile.Text = descricao;
            lblTitulo.Text = titulo; lblDesc.Text = Desc; lblMobileDesc.Text = Desc; 
        }

        //System.Web.UI.HtmlControls.HtmlAnchor i = (System.Web.UI.HtmlControls.HtmlAnchor)Master.FindControl("liMenuHome");
        //i.Attributes.Add("style", "text-decoration:underline");
    }
}
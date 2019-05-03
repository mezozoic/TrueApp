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

public partial class QuizQuestions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            int quiz = 0; int pergunta = 0;
            try
            {
                quiz = Convert.ToInt16(Request.QueryString["quiz"].ToString());
                pergunta = Convert.ToInt16(Request.QueryString["ask"].ToString());
            }
            catch
            { Response.Redirect("TrueCare.aspx"); }

            if (quiz > 0 && pergunta > 0)
            {
                
                string linkCont = "quizanswer.aspx?quiz="+quiz+"&ask="+pergunta+"&ans=";
                string sim = ""; string nao = "";
                string question = "";

                if (quiz==1)
                {
                    if (pergunta == 1)
                    {
                        question = "Você consome mais<br/>de 2 colheres de (chá)<br/>de sal por dia?"; sim = "e"; nao = "c";
                    }
                    if (pergunta == 2)
                    {
                        question = "Você pratica atividades físicas regularmente<br>totalizando, pelo menos, 150 minutos semanais?"; sim = "c"; nao = "e";
                    }
                    if (pergunta == 3)
                    {
                        question = "Você tem parentes hipertensos?"; sim = "e"; nao = "c";
                    }
                    if (pergunta == 4)
                    {
                        question = "Você inclui fibras em sua alimentação?"; sim = "c"; nao = "e";
                    }
                    if (pergunta == 5)
                    {
                        question = "Você fuma?"; sim = "e"; nao = "c";
                    }
                }

                if (quiz == 2)
                {
                    if (pergunta == 1)
                    {
                        question = "Você consome alimentos condimentados e com muito sódio, além de sempre acrescentar sal à comida?"; sim = "e"; nao = "c";
                    }
                    if (pergunta == 2)
                    {
                        question = "Em uma escala de 1 a 10, você acha que o seu nível de estresse ultrapassa o nível 7 ? "; sim = "e"; nao = "c";
                    }
                    if (pergunta == 3)
                    {
                        question = "Você fuma?"; sim = "e"; nao = "c";
                    }
                    if (pergunta == 4)
                    {
                        question = "Você bebe mais que uma dose de bebida alcoólica por dia?"; sim = "e"; nao = "c";
                    }
                    if (pergunta == 5)
                    {
                        question = "Você toma anti-inflamatórios ou remédios para emagrecer regularmente?"; sim = "e"; nao = "c";
                    }
                }


                linkSim.HRef = linkCont + sim; linkSimMobile.HRef = linkSim.HRef;
                linkNao.HRef = linkCont + nao; linkNaoMobile.HRef = linkSim.HRef;
                lblQuestion.Text = question; lblQuestionMobile.Text = question;
            }
        }

        //System.Web.UI.HtmlControls.HtmlAnchor i = (System.Web.UI.HtmlControls.HtmlAnchor)Master.FindControl("liMenuHome");
        //i.Attributes.Add("style", "text-decoration:underline");
    }
}
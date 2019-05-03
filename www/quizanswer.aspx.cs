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


            int quiz = 0; int pergunta = 0; string tipoResposta = "";
            try
            {
                quiz = Convert.ToInt16(Request.QueryString["quiz"].ToString());
                pergunta = Convert.ToInt16(Request.QueryString["ask"].ToString());
                tipoResposta = Request.QueryString["ans"].ToString();
            }
            catch
            { Response.Redirect("quiz.aspx"); }

            if (tipoResposta.Length > 1 || (tipoResposta != "c" && tipoResposta != "e"))
                Response.Redirect("quiz.aspx");
            if (quiz > 2 || pergunta > 5)
                Response.Redirect("quiz.aspx");

            try
            {
                string sessionResultado = quiz.ToString() + ";" + pergunta.ToString() + ";" + tipoResposta + ";";
                if (Session["respostas"] == null)
                    Session["respostas"] = sessionResultado;
                else
                    Session["respostas"] = Session["respostas"].ToString() + sessionResultado;
            }
            catch (Exception ex)
            {
                Response.Redirect("quiz.aspx");
            }


            string linkCont = "quizquestion.aspx?quiz=" + quiz.ToString() + "&ask=" + (pergunta+1).ToString();
            if (pergunta == 5)
                linkCont = "quizemail.aspx";

            linkContinuar.HRef = linkCont; linkMobileContinuar.HRef = linkCont;
            string textoExplicativo = "";

            if (tipoResposta == "c")
            {
                lblAviso.Text = "Parabéns! Você<br>está indo bem.";
                img.Src = "contents/simbolo_de_acerto.png"; imgMobile.Src = "contents/simbolo_de_acerto.png";
            }
            else
            {
                lblAviso.Text = " É bom você se<br /> prevenir!";
                img.Src = "contents/simbolo_de_erro.png"; imgMobile.Src = "contents/simbolo_de_erro.png";
            }

            if (quiz == 1)
            {

                if (pergunta == 1)
                {
                    textoExplicativo= @" De acordo com a Organização Mundial de Saúde<br>
                                (OMS), uma pessoa adulta deve consumir<br>
                                diariamente menos que 5 gramas de sal(ou 2 <br>
                                gramas de sódio).Essa quantidade equivale a menos<br>
                                que uma colher de chá rasa.Afinal, o uso excessivo<br>
                                de sal leva a um aumento de sódio na pressão<br>
                                sanguínea, que retém o líquido presente no sangue,<br>
                                aumentando a produção de líquido pelo organismo< br >
                                e, consequentemente, elevando a pressão arterial.";

                }

                if(pergunta==2)
                {
                    textoExplicativo = @"Exercícios realizados regularmente fazem o coração<br>
                        trabalhar com mais eficiência, sem que ele precise de<br>
                        tanto esforço. O sangue flui melhor<br> e as artérias<br>
                        e os vasos ficam mais flexíveis e saudáveis. De acordo<br>
                        com a Organização<br> Mundial da Saúde (OMS), para melhorar<br>
                        a capacidade cardiorrespiratória, recomenda-se<br>
                        150 minutos de atividade aeróbica moderada ou 75<br>
                        minutos de atividade intensa.";
                }

                if (pergunta == 3)
                {
                    textoExplicativo = @"O histórico familiar é, sim, um fator de risco importante<br>
                        para doenças cardiovasculares, mas com o acompanhamento<br>
                        médico adequado e adoção de hábitos saudáveis, é possível<br>
                        prevenir o quadro. Portanto, se você tem pais que sofreram<br>
                        infarto ou AVC, procure um médico para fazer exames.";
                }

                if(pergunta==4)
                {
                    textoExplicativo = @"As fibras, principalmente as insolúveis (presentes nos<br>
                       cereais integrais), diminuem a absorção de gorduras<br>
                       pelo organismo, reduzindo o nível de LDL(colesterol ruim).<br>
                       Isso porque a fibra se liga ao colesterol e impede<br>
                       sua absorção, portanto, é importante consumir<br>
                       cerca de 25g de fibras por dia.";
                }

                if (pergunta == 5)
                {
                    textoExplicativo = @"O tabagismo aumenta a frequência cardíaca, contrai as<br>
                        artérias e pode causar graves irregularidades nos<br>
                        batimentos cardíacos, aumentando a carga de trabalho<br>
                        do coração. Fumar também aumenta a pressão sanguínea,<br>
                        o que eleva o risco de AVC em pessoas com hipertensão.<br>";
                }
            }

            if(quiz==2)
            {
                imgCentral.Src = "contents/icone_hipertensao_arterial.png";

                if (pergunta==1)
                {
                    textoExplicativo = @"A primeira coisa a ser feita na alimentação é a redução do consumo de sódio. De acordo
                                com a Organização Mundial de Saúde (OMS), uma pessoa adulta deve consumir diariamente
                                menos que 5 gramas de sal (ou 2 gramas de sódio). Essa quantidade equivale a menos que
                                uma colher de chá rasa. Afinal, o uso excessivo de sal leva a um aumento do sódio na
                                pressão sanguínea, que retém o líquido presente no sangue, aumentando a produção de
                                líquido pelo organismo e, consequentemente, elevando a pressão arterial.";
                }

                if (pergunta == 2)
                {
                    textoExplicativo = @"O estresse causa alterações hormonais, podendo desencadear a hipertensão arterial.";
                }

                if (pergunta == 3)
                {
                    textoExplicativo = @"A nicotina causa um estreitamento imediato dos vasos, tornando a pressão sanguínea mais alta, além de dificultar o controle da hipertensão em longo prazo.";
                }

                if (pergunta == 4)
                {
                    textoExplicativo = @"Segundo estudos, uma dose por dia não traz malefícios à saúde, caso o paciente não tenha
                                        problemas de pâncreas, fígado ou distúrbios gástricos. Mas o excesso de consumo dessa
                                        medida pode causar, não apenas hipertensão, mas outros problemas como diabetes.";
                }

                if (pergunta == 5)
                {
                    textoExplicativo = @"Esses são os principais medicamentos que contribuem para a elevação da pressão arterial. Use remédios apenas com orientação médica.";
                }
            }

            lblResposta.Text = textoExplicativo; lblRespostaMobile.Text = textoExplicativo;

        }

        //System.Web.UI.HtmlControls.HtmlAnchor i = (System.Web.UI.HtmlControls.HtmlAnchor)Master.FindControl("liMenuHome");
        //i.Attributes.Add("style", "text-decoration:underline");
    }
}
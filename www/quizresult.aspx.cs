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

public partial class QuizResults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["respostas"] == null)
                Response.Redirect("quiz.aspx");
            else
            {
                string qtdeRespostas = Session["respostas"].ToString();
                String[] s = qtdeRespostas.Split(';');

                OneResult.Src = urlImagem(s[2]); OneResultMobile.Src = urlImagem(s[2]);
                TwoResult.Src = urlImagem(s[5]); TwoResultMobile.Src = urlImagem(s[5]);
                ThreeResult.Src = urlImagem(s[8]); ThreeResultMobile.Src = urlImagem(s[8]);
                FourResult.Src = urlImagem(s[11]); FourResultMobile.Src = urlImagem(s[11]);
                FiveResult.Src = urlImagem(s[14]); FiveResultMobile.Src = urlImagem(s[14]);

                string tipoquiz = urlImagem(s[0]);

                int count = qtdeRespostas.Count(f => f == 'c');

                if (tipoquiz=="1")
                {
                    if(count==2)
                    {
                        lblCongratsOrDisaproval.Text = @"Atenção: você faz pouco esforço para mantê-lo saudável. Cuida mais dele!";
                        lblResumo.Text = @"Em sua cabeça, ele é independente e só conta com seus cuidados quando precisa de alguma coisa ou apresenta algum problema.";
                    }

                    if(count>2)
                    {
                        lblCongratsOrDisaproval.Text = @"Parabéns! Você cuida muito bem do seu coração. Continue assim.";
                        lblResumo.Text = @"Você se esforça bastante para mantê-lo saudável. Você o estimula a fazer
                        exercícios, alimenta-o corretamente e dá toda a atenção que ele merece sem
                        que ele peça.";
                    }

                    if(count<2)
                    {
                        lblCongratsOrDisaproval.Text = @"Cuidado: você não tem mantido o seu coração saudável. Dê atenção a ele!";
                        lblResumo.Text = @"Ele fica ali paradinho, na sua zona de conforto, sem que você o estimule ou se preocupe com cuidados extras.";
                    }
                }
                else
                {
                    if (count == 2)
                    {
                        lblCongratsOrDisaproval.Text = @"Atenção: sua rotina pode não ser saudável o suficiente para sua pressão.";
                        lblResumo.Text = @"Alguns de seus hábitos ainda apresentam alto risco para sua saúde arterial. Reveja sua rotina e adote novas atitudes.";
                    }

                    if (count > 2)
                    {
                        lblCongratsOrDisaproval.Text = @"Parabéns! Sua rotina é super saudável para sua pressão.";
                        lblResumo.Text = @"Você mantém hábitos saudáveis que evitam a hipertensão arterial. Continue sendo um exemplo para seus familiares.";
                    }

                    if (count < 2)
                    {
                        lblCongratsOrDisaproval.Text = @"Cuidado: sua rotina não é saudável para sua pressão.";
                        lblResumo.Text = @"Consulte um médico antes de começar a adotar novos hábitos. Ele poderá ajudá-lo a sair da zona de risco e a recuperar a sua saúde arterial.";
                    }

                    imgCentral.Src = "contents/icone_hipertensao_arterial.png";
                }
            }
        }   
    }

    public string urlImagem(string opcaoEscolhida)
    {
        if (opcaoEscolhida == "c")
            return "contents/simbolo_de_acerto.png";
        else
            return "contents/simbolo_de_erro.png";
    }

}
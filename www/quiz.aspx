<%@ Page Title="O quanto você sabe sobre sua saúde e a de seus familiares?" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="quiz.aspx.cs" Inherits="Quiz" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<div class="ui grid equal height mobile only" style="padding:0 !important;margin:0 !important">
    <div class="column blue" style="padding:50px 0px !important;margin:0 !important;">


        <h1 style="color:white !important; text-align:center;">
            O quanto você sabe sobre a sua<br/> saúde e a da sua família?

        </h1>

        <h3 style="color:white !important; text-align:center;">Esse rápido quiz ajudará você a testar seus hábitos e os de quem você ama. </h3>

 

        <div class="ui grid container">
            <div class="row">
                <div class="swiper-container swiper-container-horizontal">
                    <div class="swiper-wrapper" style="transition-duration: 0ms;">
                        <div class="swiper-slide" style="background:none">
                            <div class="column">
                                <a href="quizinicio.aspx?quiz=1" style="text-decoration:none">
                                    <div class="ui grid">

                                        <div class="row">
                                            <div class="column">
                                                <img class="ui image" src="contents/icone_doencas_cardiovasculares.png" style="margin:0 auto"/>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="column">
                                                <p style="color:white !important; text-align:center;font-size:20px">Doenças cardiovasculares
                                                </p></div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="swiper-slide" style="background:none">
                                <div class="column">
                                    <a href="quizinicio.aspx?quiz=2" style="text-decoration:none">
                                        <div class="ui grid">

                                            <div class="row">
                                                <div class="column">
                                                    <img class="ui image" src="contents/icone_hipertensao_arterial.png" style="margin:0 auto"/>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="column">
                                                    <p style="color:white !important; text-align:center;font-size:20px">Hipertensão arterial
                                                    </p></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                               
                                            </div>

                                            <div class="swiper-pagination swiper-pagination-bullets"></div>
                                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>

<div class="ui grid two column equal height computer tablet only" style="padding:0 !important;margin:0 !important;margin-top:0 !important">
    <div class="twelve wide column blue" style="padding:50px 0px !important;margin:0 !important;">


        <h1 style="color:white !important; text-align:center;">
            O quanto você sabe sobre a sua<br/> saúde e a da sua família?

        </h1>

        <h3 style="color:white !important; text-align:center;">Esse rápido quiz ajudará você a testar seus hábitos e os de quem você ama. </h3>



        <div class="ui two column grid container">
            <div class="row">
                <div class="column">
                    <a href="quizinicio.aspx?quiz=1" style="text-decoration:none">
                    <div class="ui grid">

                        <div class="row">
                            <div class="column">
                                <img class="ui image" src="contents/icone_doencas_cardiovasculares.png" style="margin:0 auto"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="column">
                                <p style="color:white !important; text-align:center;font-size:20px">Doenças cardiovasculares
                            </p></div>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="column">
                    <a href="quizinicio.aspx?quiz=2" style="text-decoration:none">
                    <div class="ui grid">

                        <div class="row">
                            <div class="column">
                                <img class="ui image" src="contents/icone_hipertensao_arterial.png" style="margin:0 auto"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="column">
                                <p style="color:white !important; text-align:center;font-size:20px">Hipertensão arterial
                            </p></div>
                        </div>
                    </div>
                    </a>
                </div>
               
            </div>
        </div>



    </div>
    <div class="four wide column blue" style="padding:0 !important;margin:0 !important">
        <img src="contents/imagem_mulher_quiz.png" class="ui image" style="width:100%">
    </div>

</div>
</asp:Content>
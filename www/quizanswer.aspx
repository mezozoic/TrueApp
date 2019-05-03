<%@ Page Title="O quanto você sabe sobre sua saúde e a de seus familiares?" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="quizanswer.aspx.cs" Inherits="QuizQuestions" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

 <div class="ui grid three column equal height computer tablet only" id="computer-quiz" style="margin:0 !important">
            <div class="seven wide column" style="background:#EEF2F4;position:relative">
            <div class="middle-aligned to-grid">

                <img class="ui image" runat="server" id="img" />

                <h1 class="ui header" >
                    <asp:Label ID="lblAviso" runat="server" ></asp:Label>
                </h1>
            </div>
            <div style="position:absolute;width:100px;z-index:1000;top:100px;right:-50px" id="center-image">
                <img id="imgCentral" runat="server" src="contents/icone_doencas_cardiovasculares.png" class="ui image"/>
            </div>
        </div>
    
            <div class="seven wide column">
                <div class="middle-aligned">
                    <p style="font-size:20px !important">
                                         
                        <asp:Label ID="lblResposta" runat="server" ></asp:Label>
                    </p>
                </div>
            </div>

            <div class="two wide column yellow">
                <div class="middle-aligned">
                    <a runat="server" id="linkContinuar">
                    <img class="ui image" src="contents/seta_azul_quiz.png" style="display:block;margin:0 auto"/>
                    </a>
                </div>
            </div>
        </div>







            <div class="ui grid mobile only" style="margin:0 !important">
                            <div class="row">
                <div class="column" style="background:#EEF2F4;position:relative">


                        <img class="ui image" runat="server" id="imgMobile" style="width:50px; margin-top:20px !important"/>

                        <h1 class="ui header" >
                            <asp:Label ID="lblAvisoMobile" runat="server" ></asp:Label>
                        </h1>

                    <p style="font-size:20px !important">
                        <asp:Label ID="lblRespostaMobile" runat="server" ></asp:Label>             </p>
                </div>
            </div>
        
                    <div class="row">

                    <div class="column yellow">

                            <a runat="server" id="linkMobileContinuar">
                            <img class="ui image" src="contents/seta_azul_quiz.png" style="display:block;margin:0 auto"/>
                            </a>

                    </div>
                    </div>
                </div>



</asp:Content>
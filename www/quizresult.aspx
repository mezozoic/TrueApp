<%@ Page Title="O quanto você sabe sobre sua saúde e a de seus familiares?" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="quizresult.aspx.cs" Inherits="QuizResults" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="ui grid two column equal height computer tablet only" id="computer-quiz" style="margin:0 !important">
    <div class="column blue">
        <div class="middle-aligned to-grid">




                        <h1 class="ui header" style="color:#F7CC00 !important">

                            <asp:Label ID="lblCongratsOrDisaproval" runat="server" Text=""></asp:Label>
               
            </h1>



            <p style="color:white !important">
                <asp:Label ID="lblResumo" runat="server" Text=""></asp:Label>
            </p>
        
            <div class="ui five columns grid">
                
                          <div class="column">
                            <img runat="server" id="OneResult" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">1</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="TwoResult" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">2</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="ThreeResult" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">3</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="FourResult" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">4</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="FiveResult" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">5</h5>
                        </div>
                                    
            </div>

            <p style="color:#F7CC00 !important;margin-top:30px"><%--Compartilhe seu resultado--%></p>
            <div style="clear:both"></div>
    

            <a href="quiz.aspx">
                <img src="contents/icone_seta_refazer.png" class="ui image" style="display:inline-block;float:right">
            </a>



        </div>
    </div>
    <div class="column" style="padding:0 !important;">
        <div class="middle-aligned">
            <img runat="server" id="imgCentral" src="contents/icone_doencas_cardiovasculares.png" style="margin:0 auto !important" class="ui image">
        </div>
    </div>
</div>



<div class="ui grid mobile only"  style="margin:0 !important">
    <div class="row">
    <div class="column blue">

                <h1 class="ui header" style="color:#F7CC00 !important">
            <asp:Label ID="lblCongratsOrDisaprovalMobile" runat="server" Text=""></asp:Label>
        </h1>



        <p style="color:white !important">
            <asp:Label ID="lblResumoMobile" runat="server" Text=""></asp:Label>
        </p>
    
            <div class="ui five columns grid">
                
                                            <div class="column">
                            <img runat="server" id="OneResultMobile" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">1</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="TwoResultMobile" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">2</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="ThreeResultMobile" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">3</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="FourResultMobile" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">4</h5>
                        </div>
                                    
                                            <div class="column">
                            <img runat="server" id="FiveResultMobile" class="ui image" style="display:block;margin: 0 auto;width:20px !important">
                            <h5 class="ui header center aligned" style="color:#F7CC00 !important">5</h5>
                        </div>
                                                </div>

            <p style="color:yellow !important;margin-top:30px"><%--Compartilhe seu resultado--%></p>
            <div style="clear:both"></div>
            <img src="contents/icone_facebook_quiz.png" class="ui image" style="display:inline-block; margin-right:30px;float:left; visibility:hidden;"/>


            <a href="quiz.aspx">
                <img src="contents/icone_seta_refazer.png" class="ui image" style="display:inline-block;float:right"/>
            </a>

    </div>
</div>





</asp:Content>
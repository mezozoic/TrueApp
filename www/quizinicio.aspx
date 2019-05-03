<%@ Page Title="O quanto você sabe sobre sua saúde e a de seus familiares?" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="quizinicio.aspx.cs" Inherits="QuizInicio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="ui grid two column computer tablet only" id="computer-quiz" style="margin-top:0 !important">
    <div class="column blue">


  <div class="middle-aligned to-grid">

                    <h1 class="ui header" style="color: white !important; display: inline-block;"><asp:Label ID="lblDesc" runat="server" Text=""></asp:Label></h1>
                    <div style="clear:both"></div>
                    <p style="color: white !important; font-size: 15px !important; display: inline-block;">
                        
                        <asp:Label ID="lblDescricao" runat="server" ></asp:Label>
                       
                        
                     </p>
                </div>



    </div>
    <div class="column" style="padding:0 !important">
        <div class="middle-aligned" style="">

            <h1 class="ui header center aligned" style="display: inline-block;">
                <asp:Label ID="lblTitulo" runat="server" Text=""></asp:Label></h1>
            <div>
            <img runat="server" id="img" src="contents/icone_doencas_cardiovasculares.png" style="margin:0 auto !important" class="ui image"/>
            </div>

            <a class="ui button circular" runat="server" id="link" style="width:150px; padding:15px 50px !important;margin:0 auto !important;display:block;margin-top:60px !important">Começar!</a>
        </div>
    </div>
</div>

<div class="ui grid mobile only" id="begin-quiz-mobile" style="margin:0 !important">
    <div class="row">
      <div class="column blue">

            <div class="middle-aligned">
                <h1 class="ui header" style="color: white !important; display: inline-block;">
                    <asp:Label ID="lblMobileDesc" runat="server" Text=""></asp:Label></h1>
                <div style="clear:both"></div>
                <p style="color: white !important; font-size: 15px !important; display: inline-block;">
                    <asp:Label ID="lblDescricaoMobile" runat="server" ></asp:Label>
                 </p>
            </div>
        </div>
    </div>
    <div class="row">
    <div class="column yellow">
        <a runat="server" id="linkMobile">
        <h3 class="ui header center aligned" style="padding:20px !important">Começar</h3>
    </a>
    </div>
    </div>
</div>    

</asp:Content>
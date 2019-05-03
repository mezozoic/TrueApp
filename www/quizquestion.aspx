<%@ Page Title="O quanto você sabe sobre sua saúde e a de seus familiares?" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="quizquestion.aspx.cs" Inherits="QuizQuestions" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="ui grid two column equal height computer tablet only" id="computer-quiz" style="margin:0 !important">
    <div class="column blue" style="padding:0 !important">
        <div class="middle-aligned to-grid" >
            <h1 class="ui header" style="color:#F7CC00 !important">
               <asp:Label runat="server" ID="lblQuestion"></asp:Label>

            </h1>
        </div>
    </div>
    <div class="column" id="choose" style="padding:0 !important;position:relative;z-index:50">
        <a runat="server" id="linkSim">
       
       <div class="ui segment basic" style="margin:0 !important;border-radius:none;background:#EEF2F4">

            <div class="middle-aligned">
                <h1 class="ui header center aligned" style="color:#174B72 !important">SIM</h1>
            </div>

        </div>
        </a>

        <a runat="server" id="linkNao" style="display:block;height:100%;width:100%" >
        <div class="ui segment basic" style="margin:0 !important;border-radius:none;background:#9DAFBD">

            <div class="middle-aligned">
                <h1 class="ui header center aligned" style="color:#174B72 !important">NÃO</h1>
            </div>

        </div>
        </a>
        <div style="position:absolute;width:100px;z-index:1000;top:50%;margin-top:-50px;left:50%;margin-left:-50px" id="center-image">
            <img src="contents/icone_doencas_cardiovasculares.png" class="ui image" />
        </div>
    </div>
</div>

<div class="ui grid mobile only"  style="margin:0 !important;">
    <div class="row">
    <div class="column blue">
        <div class="middle-aligned">
            <h3 class="ui header" style="color:#F7CC00 !important">
                <asp:Label runat="server" ID="lblQuestionMobile"></asp:Label>
            </h3>
        </div>
    </div>
    </div>
</div>
<div class="ui grid two column mobile only" style="padding-bottom:10px !important;margin:0 !important">
    <div class="column choose-mobile" style="padding:0 !important;position:relative;z-index:50">
        <a runat="server" id="linkSimMobile">
        
        <div class="ui segment basic" style="margin:0 !important;border-radius:none;background:#EEF2F4;">

            <div class="middle-aligned">
                <h1 class="ui header center aligned" style="color:#174B72 !important;padding:25px !important">SIM</h1>
            </div>

        </div>
        </a>
    </div>
    <div class="column choose-mobile" style="padding:0 !important;position:relative;z-index:50">
        <a runat="server" id="linkNaoMobile" style="display:block;height:100%;width:100%">
        <div class="ui segment basic" style="margin:0 !important;border-radius:none;background:#9DAFBD">

            <div class="middle-aligned">
                <h1 class="ui header center aligned" style="color:#174B72 !important">NÃO</h1>
            </div>

        </div>
        </a>
        <div style="position:absolute;width:30px;z-index:1000;top:50%;margin-top:-15px;left:0%;margin-left:-15px" id="center-image">
            <img src="contents/icone_doencas_cardiovasculares.png" class="ui image" />
        </div>
    </div>
</div>





</asp:Content>
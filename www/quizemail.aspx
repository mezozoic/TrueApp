<%@ Page Title="O quanto você sabe sobre sua saúde e a de seus familiares?" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="quizemail.aspx.cs" Inherits="QuizEmail" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="ui grid two column equal height" id="computer-quiz" style="margin:0 !important">
    <div class="column blue">
        <form class="ui equal width form" runat="server">
            <h1 class="ui header" style="color:#F7CC00 !important">
                Insira seus dados <br/>
                para visualizar o<br/>
                resultado.
            </h1>

            <div class="field"><input runat="server" type="text" name="name" placeholder="Nome" id="name" autocomplete="off"/></div>            
            <div class="field"><input runat="server" name="email" placeholder="Email" id="email" autocomplete="off"/></div>
            <div class="field">
                <label for="plano">Qual é o seu plano de saúde?</label>
                    <select runat="server" name="plano" id="plano" class="ui search dropdown" data-role="tagsinput"><option value=""></option><option value="Allianz Saúde">Allianz Saúde</option><option value="Amil">Amil</option><option value="Bradesco Saúde">Bradesco Saúde</option><option value="Notre Dame Intermédica">Notre Dame Intermédica</option><option value="Porto Seguro Saúde">Porto Seguro Saúde</option><option value="Prevent Sênior">Prevent Sênior</option><option value="São Cristóvão">São Cristóvão</option><option value="SulAmerica">SulAmerica</option><option value="Unimed">Unimed</option><option value="Outros">Outros</option>
                </select>
             </div>
            <div class="field">
                <label for="ja-utilizou">Você já utilizou - para você ou para seus familiares - serviços de atenção domiciliar? </label>
                <select runat="server" name="ja_utilizou" id="jautilizou" class="ui search dropdown" data-role="tagsinput"><option value="Sim">Sim</option><option value="Não">Não</option></select>
            </div>

            <asp:Button ID="btnResult" runat="server" Text="Ver Resultado" CssClass="ui button circular yellow" OnClick="btnResult_Click" />
            <%--<a href="quizresult.aspx" class="ui button circular yellow"  style="padding:10px !important">Ver resultado</a>--%>
            </form>
    </div>
     <div class="column " style="padding:0 !important;">
      <br /><br />    <br /><br /> <br /><br />
            <img src="contents/icone_doencas_cardiovasculares.png" style="margin:0 auto !important" class="ui image"/>
        
    </div>
</div>



</asp:Content>
<%@ Page Title="Estamos aqui para ajudar" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="fale-com-a-gente.aspx.cs" Inherits="Contato" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
<div class="ui basic segment" style="padding:70px 0;background:#FFF;margin-top:0">
    <div class="ui grid tablet computer only">
        <div class="column">
            <h1 class="ui header center aligned" style="margin-bottom:50px !important">Você ainda tem dúvidas sobre<br/>
                os serviços que oferecemos?
            </h1>

            <h3 class="ui header center aligned">Estamos aqui para ajudar. </h3>

            <h3 class="ui header center aligned">Preencha o nosso formulário abaixo ou, se preferir,<br/> entre em contato:</h3>
        </div>
    </div>

    <div class="ui grid mobile only">
        <div class="column">
            <h1 class="ui header center aligned" style="margin-bottom:50px !important">Você ainda tem dúvidas sobre<br/>
                os serviços que oferecemos?
            </h1>

            <h3 class="ui header center aligned" style="font-size:17pt !important">Estamos aqui para ajudar. </h3>

            <h3 class="ui header center aligned" style="font-size:17pt !important">Preencha o nosso formulário abaixo ou, se preferir,<br/> entre em contato:</h3>
        </div>
    </div>



</div>

<div class="ui two columns stackable grid container">
    <div class="ten wide column">
        <div class="ui clearing segment" style="box-shadow:5px 5px 15px #B4E0FF; background:#f7f7f7 !important">
        <form runat="server" class="ui equal width form">
        <div class="field"><label for="nome">Nome</label><input runat="server" type="text" name="nome" id="nome" autocomplete="off"/></div>        
        <div class="fields">
            <div class="field"><label for="email">E-mail</label><input runat="server" name="email" id="email" autocomplete="off"/></div>            
            <div class="field"><label for="telefone">Telefone</label><input runat="server" type="text" name="telefone" id="telefone" autocomplete="off"/></div>        
        </div>
        <div class="field"><label for="assunto">Assunto</label><input type="text" runat="server" name="assunto" id="assunto" autocomplete="off"/></div>
        <div class="field"><label for="mensagem">Mensagem</label><textarea runat="server" name="mensagem" id="mensagem" rows="5"></textarea></div>
            
            <asp:Button ID="btnResult" runat="server" Text="Enviar" CssClass="ui button circular right floated" OnClick="btnResult_Click" />
           <%-- <h3 id="succ" style="display:none"><i class="check icon"></i> Mensagem enviada com sucesso!</h3>
            <a id="enviar" class="ui button circular right floated" style="padding:15px 50px !important">Enviar</a>--%>

        </form>    
        </div>
    </div>
    <div class="six wide column">
        <h3 class="ui header left aligned">contato@truecare.com.br</h3>
        <h3 class="ui header left aligned">11 <b>3868-5700</b></h3>
    </div>
</div>

<div class="ui basic segment" style="padding-top:150px;padding-bottom:70px">

    <h1 class="ui header center aligned">
        Área de abrangência
    </h1>
</div>

<div class="ui grid centered container">
    <div class="column">
     
        <h3 class="ui header center aligned">
            Atendemos a todo o estado de São Paulo e as principais capitais do Brasil.
        </h3>
    </div>
</div>
  </asp:Content>
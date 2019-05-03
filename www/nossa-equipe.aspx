<%@ Page Title="Nosso cuidado começa de dentro pra fora" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="nossa-equipe.aspx.cs" Inherits="Equipe" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    

    <div class="ui grid computer tablet only" style="margin-top:0px !important">
    <div class="column" style="padding-top:0 !important">
        <div class="ui basic segment" style="padding:0;margin-top:0;position:relative">
            <div style="position:absolute;z-index:1000;left:10%" class="middle-aligned">
               <%-- <h2 class="ui header left aligned" style="font-size:45px !important">
                    <b>Nossa equipe</b></h2>
               <br/> <h3 class="ui header">Nosso cuidado começa <br/>de dentro para fora.</h3>--%>
            </div>
            <img src="contents/banner1_equipe_b.png" class="ui image" style="width:100%">
        </div>
    </div>
</div>

<%--<div class="ui grid tablet only" style="padding-top:0 !important">
    <div class="column" style="padding-top:0 !important">
        <div class="ui basic segment" style="padding:0;margin-top:0;position:relative">
            <div style="position:absolute;z-index:1000;left:10%" class="middle-aligned">
                <h2 class="ui header left aligned" style="font-size:30px !important">
                    <b>Nossa equipe</b></h2>
               <br/> <h3 class="ui header" style="font-size:15px !important">Nosso cuidado começa <br/>de dentro pra fora.</h3>
            </div>
            <img src="contents/banner1_equipe.png" class="ui image" style="width:100%">
        </div>
    </div>
</div>--%>

<div class="ui grid mobile only" style="margin:0 !important">
    <div class="row" style="padding-bottom:0">
        <div class="column" style="margin:0 !important;padding:0 !important">
            <div class="ui basic segment" style="padding:0;margin-top:0">
                <img src="contents/banner_equipe_medica.png" class="ui image" style="width:100%"/>
            </div>
        </div>
    </div>
    <div class="row" style="background-image:url(/contents/bg_amarelo.png);background-size:cover;height:230px;">
        <div class="column">
            <h1 class="ui header center aligned">Nosso cuidado começa de dentro para fora</h1>
        </div>
    </div>
</div>


<div class="ui segment basic" style="padding:80px 0;background-color:#F7F9FA;margin-top:0">
    <div class="ui grid stackable container tablet computer only">

        <div class="column twelve wide column">
            <p class="master-text">
                Cuidamos da nossa equipe da mesma forma que nos preocupamos em cuidar da sua família.
            </p>
            <p class="master-text">Nossa equipe é formada por profissionais multidisciplinares, com grande experiência em
atendimento domiciliar e gestão em serviços de saúde. Todos com foco no mais alto grau
de resolutividade, humanização, conforto, vivência familiar e superação de déficits. E para
que eles mantenham tanto cuidado com os pacientes, garantimos que recebam o mesmo
cuidado da nossa parte.</p>
        </div>

    </div>
    <div class="ui grid stackable container mobile only">

        <div class="column twelve wide column">
            <p class="master-text" style="font-size:17pt !important">
                Cuidamos da nossa equipe da mesma forma que nos preocupamos em cuidar da sua família.
            </p>
            <p class="master-text" style="font-size:17pt !important">Nossa equipe é formada por profissionais multidisciplinares, com grande experiência em
atendimento domiciliar e gestão em serviços de saúde. Todos com foco no mais alto grau
de resolutividade, humanização, conforto, vivência familiar e superação de déficits. E para
que eles mantenham tanto cuidado com os pacientes, garantimos que recebam o mesmo
cuidado da nossa parte.</p>
        </div>

    </div>
</div>

<div class="ui basic segment" style="padding-top:80px;">
<div class="ui three columns container equal height stackable grid" style="padding-bottom:100px !important">
    <div class="one column row" style="margin-bottom:30px">
        <div class="column">
            <h1 class="ui header center aligned">Conheça algumas das ações dedicadas ao nosso time:</h1>
        </div>
    </div>
    <div class="row">
    <div class="column">

            <div class="ui grid">

                <div class="row">
                    <div class="column">
                        <img class="ui image" src="contents/icone1_equipe.png" style="margin:0 auto"/>
                    </div>
                </div>

                <div class="row">
                    <div class="column">
                        <h3 class="ui header center aligned" style="font-weight:bold !important;color: #358BCC !important">True Care Solidária</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="column">

                        <p style="text-align:center;font-size:15pt">
                            A partir de uma votação anual interna,
                            nossos profissionais escolhem uma
                            instituição de caridade para ajudarem
                            com doações voluntárias.
                        </p>

                    </div>
                </div>

            </div>

    </div>

    <div class="column" style="">

            <div class="ui grid">

                <div class="row">
                    <div class="column">
                        <img class="ui image" src="contents/icone2_equipe.png" style="margin:0 auto">
                    </div>
                </div>

                <div class="row">
                    <div class="column">
                        <h3 class="ui header center aligned" style="font-weight:bold !important;color: #358BCC !important">Palestras sazonais</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <p style="text-align:center;font-size:15pt">
                            Oferecemos informação e conhecimento à
                            nossa equipe por meio de palestras com temas
                            específicos, de acordo com algumas datas do
                            calendário, como: Semana da Enfermagem,
                            Outubro Rosa, Novembro Azul, entre outras
                            relacionadas ao segmento da saúde.

                        </p>
                    </div>
                </div>


        </div>
    </div>

    <div class="column">

            <div class="ui grid">

                <div class="row">
                    <div class="column">
                        <img class="ui image" src="contents/icone3_equipe.png" style="margin:0 auto">
                    </div>
                </div>

                <div class="row">
                    <div class="column">
                        <h3 class="ui header center aligned" style="font-weight:bold !important;color: #358BCC !important">Saúde mental</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <p style="text-align:center;font-size:15pt">
                            Disponibilizamos um time de especialistas para apoio,
                            tanto no aspecto psicológico quanto no profissional,
                            pois entendemos que quem cuida também precisa ser cuidado.

                        </p>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
</div>

<div class="ui grid tablet computer only">
    <div class="column">
<div class="ui basic segment" style="padding:0;margin-top:0;margin-bottom:100px">
    <img src="contents/ilustra_equipe.png" class="ui image" style="width:100%">
</div>

<div class="ui grid container">
    <div class="column">
        <p class="master-text">E você, tem vontade de trabalhar com a gente? Envie um e-mail para
nossa equipe.</p>

<p class="" style="font-weight:bold !important;"><a mailto="trabalheconosco@truecare.com.br">trabalheconosco@truecare.com.br</a></p>
    </div>
</div>
</div>
</div>


<div class="ui grid mobile only" style="margin:0 !important">
    <div class="column" style="margin:0 !important">
<div class="ui basic segment" style="padding:0;margin-top:0;margin-bottom:100px">
    <img src="contents/ilustracao_trabalhe_conoso_mobile.png" class="ui image" style="width:100%">
</div>

<div class="ui grid container">
    <div class="column">
        <p class="master-text" style="font-size:17pt !important">E você, tem vontade de trabalhar com a gente? Envie um e-mail para
nossa equipe.</p>

<p class="master-text" style="font-weight:bold !important;font-size:17px !important"><a mailto="trabalheconosco@truecare.com.br">trabalheconosco@truecare.com.br</a></p>
    </div>
</div>
</div>
</div>
   </asp:Content>
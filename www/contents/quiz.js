$(function(){


    $("#computer-quiz-mobile, #computer-quiz").css("height",$(document).outerHeight()+"px");
    $("#begin-quiz-mobile .column.blue").css("height",(parseInt($("body").outerHeight()) - parseInt($(".footer").outerHeight()))+"px");




    $("body").css("padding-bottom",$("div.footer").outerHeight()+"px");
    $("#choose .segment").css("height", $("#choose").outerHeight() / 2);
    $(".choose-mobile .segment").css("height", "250px");



    $(".middle-aligned").each(function(){
        $(this).find("p,h1,h2,h3").css("display","inline-block");

        let parentHeight = parseInt($(this).parent().outerHeight())/2;
        let height = parseInt($(this).outerHeight()) / 2;
        let heightHeader = parseInt($(".massive.menu").outerHeight()) / 2;
        $(this).css("margin","0 auto");
        //$(this).css("margin-left","20%");
        $(this).css("margin-top",(parentHeight - height - heightHeader)+"px");

        if($(this).hasClass("to-grid")){
            $(this).css("margin-left",$(".menu .container").offset().left+"px");
        }


        if(($(this).find("p:first").outerWidth() || 0) > ($(this).find("h1:first").outerWidth() || 0)){
            $(this).css("width",$(this).find("p:first").outerWidth())
        }
        else{
            $(this).css("width",$(this).find("h1:first").outerWidth())
        }


    })



    $(window).on('resize',function(){
      $("body").css("padding-bottom",$("div.footer").outerHeight()+"px");
      $("#choose .segment").css("height", $("#choose").outerHeight() / 2);
    })



})

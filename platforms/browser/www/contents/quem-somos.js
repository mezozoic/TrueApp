$(function(){


    var lastScrollTop = 0;
    var enfermeira = -500;
    var enfermeiro = -200;
    $(document).scroll(function() {
        var st = $(this).scrollTop();
        if (st > lastScrollTop){
            if(enfermeira < -78){
                $(".enfermeira").css("left",(enfermeira+=7)+"px");
            }

            if(enfermeiro < -50){
                $(".enfermeiro").css("right",(enfermeiro+=2)+"px");
            }

        } else {
            // upscroll code
        }
        lastScrollTop = st;
    });
})

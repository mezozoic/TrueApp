$('document').ready(function() {

    $('body .ui.sidebar')
        .sidebar({
            context: $('body')
        })
        .sidebar('attach events', '.demo');

    $('select.dropdown')
        .dropdown();

    $('.ui.accordion')
        .accordion();


    //evaluated

    var isevaluated = $("#isevaluated").val();

    if (isevaluated == "y") {
        $("#modalevaluated").modal("show");
        $.get("/users/evaluated", function (r) {
            console.log("ok");
        }, "html")
    }





    $("button[type='submit']").click(function (e) {
        e.preventDefault();

        $(this).closest("form").addClass("loading").submit();
    })

    $(".middle-aligned").each(function () {
        let parentHeight = parseInt($(this).parent().outerHeight()) / 2;
        let height = parseInt($(this).outerHeight()) / 2;
        $(this).css("margin", "0 auto");
        $(this).css("margin-top", (parentHeight - height) + "px");

    }).promise().done(function () {
        $(".to-grid").each(function () {

            $(this).css("margin-left", $(".menu .container").offset().left + "px");
        })
    });





    $("img.bottom-image").each(function () {
        let parentHeight = parseInt($(this).parent().outerHeight());
        let height = parseInt($(this).outerHeight());
        $(this).css("margin", "0 auto");
        $(this).css("margin-top", (parentHeight - height) + "px");

    })

    $("body").css("padding-bottom", (parseInt($(".footer").outerHeight()) + 80) + "px");

    $(window).on('resize', function () {
        $("body").css("padding-bottom", (parseInt($(".footer").outerHeight()) + 80) + "px");
    })

    var swiper = new Swiper('.swiper-container', {
        pagination: {
            el: '.swiper-pagination',
        },
    });


    $("#mobile-menu-show").click(function () {

        setTimeout(function () {
            $("body").css("height", "100%");
        }, 0)

        $(".mobile-menu") /*.css({"position":"absolute","top":0})*/
            .modal('setting', 'closable', false)
            .modal('attach events', '.cancel', 'close')
            .modal("show");

    });

});

function vConfirm(title, content, yes, no) {

    $("#btn_confirm_yes").click(function () {
        yes();
    });

    $("#btn_confirm_no").click(function () {
        no();
    });

    $("#confirm-header").text(title);
    $("#confirm-content").text(content);
    $('#confirm-modal').modal('show');

}
$(document).ready( function(){


    $(".burger").click(function () {
        $('.main-nav').toggleClass('main-nav-active');
        $(this).toggleClass("active");
        $(".list").toggleClass("not-scrool");
    });

    $(".nav-first li:first-child .nav-second>li").click(function (e) {
        e.preventDefault();
        var next_child = $(this).children(".nav-third").attr("class");
        var this_class = $(this).attr("class");
        var window_width = $(window).width();

        if(window_width <= "990") {
            if(next_child === 'nav-third' || next_child === 'nav-third active-SUL') {

                if(this_class !== 'active-FULli'){
                    $(".active-FULli .active-SUL").removeClass('active-SUL');
                    $(".active-FULli").removeClass('active-FULli');

                    $(this).toggleClass("active-FULli");
                    $(".active-FULli .nav-third").toggleClass('active-SUL');
                    //$(".nav-first>li:not('li:first-child')").css("display", 'none')
                    $(".nav-first>li:not('li:first-child')").addClass("li-none");
                } else{
                    $(".active-FULli .active-SUL").removeClass('active-SUL');
                    $("li.active-FULli").removeClass('active-FULli');
                    //$(".nav-first>li:not('li:first-child')").css("display", 'block')
                    $(".nav-first>li:not('li:first-child')").removeClass("li-none");

                }
            }
        }


    });

    $(document).mouseup(function (e){ // событие клика по веб-документу
        var div = $(".aside-active"); // тут указываем ID элемента
        if (!div.is(e.target) // если клик был не по нашему блоку
            && div.has(e.target).length === 0) { // и не по его дочерним элементам
            $('.aside-active').removeClass('aside-active');
            $('.burger-1').removeClass('active');
            //$('body').removeClass('not_scroll');
        }
    });

    $(".form-wrapper input").focus(function () {
        $(".form-wrapper").toggleClass("form-wrapper-focus");
    });

    $(".form-wrapper input").blur(function () {
        $(".form-wrapper").toggleClass("form-wrapper-focus");
    });

    $(".header__form-wrapper button").click(function () {
        var window_width = $(window).width();
        var not_search = $(".not-search");

        if(window_width <= "990") {
            not_search.removeClass('not-search');

            $(".header__logo").addClass("h_hover");
            $(".burger").addClass("h_hover");

            $(".header__plug").addClass("plug-activ");
        }

    });

    $(".header__plug").click(function () {
        $(".header__plug").removeClass("plug-activ");

        $(".header__form").addClass('not-search');

        $(".header__logo").removeClass("h_hover");
        $(".burger").removeClass("h_hover");
    });

    $(".filter__header span a").click(function (e) {
        e.preventDefault();
        var a_active = $(".a_active").attr('class');

        if(a_active === "a_active") {
            $(this).text("Показать");
        } else {
            $(this).text("Скрыть");
        }

        $(this).toggleClass("a_active");
        $(".filter__body").toggleClass('filter-non');
        $(".filter-body").toggleClass('filter-non');
    });

    $.each($(".checkbox"), function(index, val) {
        if($(this).find('input').prop('checked')==true) {
            $(this).addClass('check-active');
            $(".check-active .far").removeClass("fa-square");
            $(".check-active .far").addClass("fa-check-square");
        }
    });
    
    $(document).on("click", '.checkbox', function (event) {
        if($(this).hasClass('check-active')){
            $(this).find("input").prop("checked",false);
            $(this).find(".far").removeClass("fa-check-square");
            $(this).find(".far").addClass("fa-square")
            //$(".check-active .far").removeClass("fa-check-square");
            //$(".check-active .far").addClass("fa-square");

        } else {
            $(this).find('input').prop('checked',true);
            $(this).find(".far").removeClass("fa-square");
            $(this).find(".far").addClass("fa-check-square");

        }
        $(this).toggleClass("check-active");
    });

    $(".type__button button").click(function () {
        var button_class = $(this).attr("class");

        if(button_class !== "active-type"){
            $(".active-type").removeClass("active-type");
            $(this).addClass('active-type');
        }
    });

    $(".body-purse__button a").click(function (e) {
        e.preventDefault();
        var a_active = $(".a_active").attr('class');

        if(a_active == "a_active") {
            $(this).text("Показать детали");
        } else {
            $(this).text("Скрыть детали");
        }

        $(this).toggleClass("a_active");
        $(".type").toggleClass("purse-non");
        $(".info").toggleClass("purse-non");
        $(".address__activity").toggleClass("activity_none");
    });

    $(".div-transactions__download p a").click(function (e) {
        e.preventDefault();
        var span_text = $(this).children('span').text();

        if(span_text > 10){
            span_text = span_text - 10;
            $(this).children('span').text(span_text);
        } else {
            $(this).text('');
        }
    })

    $(".info-technical__button a").click(function (e) {
        e.preventDefault();
        var info_body = $(".info-technical__body").attr('class');

        if(info_body !== "info-technical__body") {
            $(this).text("Показать детали");
            $(".info-technical__button").toggleClass('after-none');
            $(".info-technical__body").toggleClass('info-active');
        } else {
            $(this).text("Скрыть детали");
            $(".info-technical__button").toggleClass('after-none');
            $(".info-technical__body").toggleClass('info-active');
        }
    })

    $.each($(".radio-g"), function(index, val) {
        if($(this).find('input').prop('checked')==true) {
            $(this).addClass('radio-active');
        }
    });

    $.each($(".radio-active i"), function(index, val) {
        var positions = $(".radio-active i").position();
        positions = positions.left;

        if (positions <= '10') {
            $(".usd-c").css("max-width", "20px");
            $(".usd-t").css("max-width", "22px");
            $(".usd-ul").css("max-width", "17px");

            $(".с-value").each(function() {
                var text = $(this).text();
                text = text.replace("BTC", "USD");
                $(this).text(text);
            });
        } else  {
            $(".usd-c").css("max-width", "none");
            $(".usd-t").css("max-width", "none");
            $(".usd-ul").css("max-width", "none");

            $(".с-value").each(function() {
                var text = $(this).text();
                text = text.replace("USD", "BTC");
                $(this).text(text);
            });
        }
    });

    $.each($(".bread-last a"), function () {
        var text_a = $(this).text();

        //alert(text_a);
        //alert(list_left);

        $(".list-left li a, .sender__ul-left a").each(function() {
            var list_left = $(this).text();
            //alert(list_left);

            if(list_left == text_a) {
                $(this).parent().addClass("black");
            }
        });

    });

    $(".radio-g input").click(function () {

        var positions = $(".radio-active i").position();
        positions = positions.left;
        var text = $(".info-general__g-currency").text();

        if(positions >= '11'){
            $(".radio-active i").css("left", "2px");

            $(".usd-c").css("max-width", "20px");
            $(".usd-t").css("max-width" , "22px");
            $(".usd-ul").css("max-width" , "17px");

            $(".с-value").each(function() {
                var text = $(this).text();
                text = text.replace("BTC", "USD");
                $(this).text(text);
            });
        } else if (positions <= '10') {
            $(".radio-active i").css("left", "19px");

            $(".usd-c").css("max-width", "none");
            $(".usd-t").css("max-width" , "none");
            $(".usd-ul").css("max-width" , "none");

            $(".с-value").each(function() {
                var text = $(this).text();
                text = text.replace("USD", "BTC");
                $(this).text(text);
            });
        } else {
            return false;
        }
    });

    let copyUrlBtn = document.querySelector('.super-link a');

    if (copyUrlBtn) {
        copyUrlBtn.addEventListener('click', () => {
            let tempInput = document.createElement('textarea');


            tempInput.setAttribute('readonly', '');

            tempInput.value = window.location.href;

            copyUrlBtn.parentNode.appendChild(tempInput);

            tempInput.select();
            //tempInput.setSelectionRange(0, 99999);

            document.execCommand('copy');

            tempInput.parentNode.removeChild(tempInput);
        });
    }
    
    $(".result-loading").click(function () {
        var result_i = $(".result-loading i").text();

        if(result_i > 10) {
            result_i = result_i - 15;
            $(".result-loading i").text(result_i);
        } else {
            result_i = result_i - result_i;
            $(".result-loading i").text(result_i);
        }

        var t_leng = $(".table-c tbody tr").length;

        if(t_leng < 750 ){
            var t_body = $(".table-c tbody");
            var t_bodyHTML = t_body.html();

            var t_tr = $(".table-c tbody tr:first-child");
            var t_html = t_tr.html();
            t_html = "<tr class=\"table__body\">" + t_html + "</tr>"

            for(i = 0; i < 15; i++){
                t_bodyHTML = t_bodyHTML + t_html;
            }

            t_body.html(t_bodyHTML);

        } else {
            return false;
        }

    })

    $(".bitcoin-result").click(function () {
        var result_i = $(".bitcoin-result i").text();

        if(result_i > 5) {
            result_i = result_i - 5;
            $(".bitcoin-result i").text(result_i);
        } else {
            result_i = result_i - result_i;
            $(".bitcoin-result i").text(result_i);
        }

        var t_leng = $(".table-c tbody tr").length;

        if(t_leng < 750 ){
            var t_body = $(".table-c tbody");
            var t_bodyHTML = t_body.html();

            var t_tr = $(".table-c tbody tr:first-child");
            var t_html = t_tr.html();
            t_html = "<tr class=\"table__body\">" + t_html + "</tr>"

            for(i = 0; i < 5; i++){
                t_bodyHTML = t_bodyHTML + t_html;
            }

            t_body.html(t_bodyHTML);

        } else {
            return false;
        }

    })



});

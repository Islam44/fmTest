window.addEventListener("load", function() {
    $('ul li').each(function () {
        if ($(this).text()!=='arabic'){
            $(this).remove();
        }
    })
});

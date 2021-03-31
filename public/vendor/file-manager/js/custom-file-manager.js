console.log("Running custom script")
window.addEventListener("load", function(){
    $('ul li').each(function () {
        if ($(this).text()!=='p_1'){
            $(this).attr('hidden',true);
        }
    })
    $('.badge-secondary').attr('hidden',true);
    $('.fa-level-up-alt').attr('hidden',true);
    $('.fm-grid-item').attr('hidden',true);
    $('.btn-group').each(function (index) {
        $(this).addClass('custom-btn-group-'+index);
    })
    $('.custom-btn-group-4').attr('hidden',true);
    $('.custom-btn-group-0').attr('hidden',true);

});


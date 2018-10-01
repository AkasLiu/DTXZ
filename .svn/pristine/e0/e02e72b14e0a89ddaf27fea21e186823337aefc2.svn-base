$(document).ready(function () {



    $.datetimepicker.setLocale('en');

    $('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});
    console.log($('#datetimepicker_format').datetimepicker('getValue'));

    $("#datetimepicker_format_change").on("click", function(e){
        $("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
    });
    $("#datetimepicker_format_locale").on("change", function(e){
        $.datetimepicker.setLocale($(e.currentTarget).val());
    });

    $('#datetimepicker').datetimepicker({
        dayOfWeekStart : 1,
        lang:'en',
        // disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
        startDate:	'2017/01/05'
    });
    $('#datetimepicker').datetimepicker({value:'2017/01/15 05:03',step:10});


})
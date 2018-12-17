$(function(){
    $("#new_week").on("submit", function(e){
        let $form = $(this);
        let action = $form.attr("action");
        let params = $form.serialize()

        e.preventDefault()

        $.ajax({
            url: action,
            data: params,
            dataType: "json",
            method: "POST"
        })
        .success(function(json){
            $(':input[type="submit"]').prop('disabled', false)
            $("#ajax_links").append(json.start_day + '<br>')
            $("#new_week").trigger("reset")
        })
    });
});

$(function(){
    $("a.date_link").on("click", function (e){

        $.get(this.href).success(function(json){
            
            let $weekday = $("#week_info_" + json.id )

            //debugger

            if($weekday[0].innerHTML == "") {
                json.days.forEach(function(day){
                    $weekday.append('<div class="weekday">' + day.title + '</div>')
                })      
            }
            else {
                $weekday.html("")
            }
        })

        e.preventDefault()
    });
})

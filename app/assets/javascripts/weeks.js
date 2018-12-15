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
            debugger
            $("#ajax_links").html("");
            $("#ajax_links").html(json.week.start_day)
        })
    
    })
})

$(function(){
    $("#new_week").on("submit", function(e){
        let $form = $(this);
        let action = $form.attr("action");
        let params = $form.serialize()

        //e.preventDefault()

        $.ajax({
            url: action,
            data: params,
            dataType: "json",
            method: "POST"
        })
        .success(function(json){
            $(".question_content").html("");
            $(".question").html(json.question.content)
        })
        
        
        
        e.preventDefault()
    })
})

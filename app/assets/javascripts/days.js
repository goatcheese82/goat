$(function() {
    $current_day = 0
    $("a.week_path").on("click", function(e){
        $.get(this.href).success(function(json){
            if ($current_day < json.days.length - 1){

                $current_day++
            }
            else if($current_day = 7) {
                $current_day =0
            }
            else {
                $current_day =0
                $current_day++
            }
            $today = {days: json.days[$current_day], notes: json.days[$current_day].notes}
            //json.days[$current_day]
            $(".day_title").html(json.days  [$current_day].title)

            $(".day_date").html(json.days[$current_day].date)

            $(".day_notes").html("")

            $today.notes.forEach(function(i){
                if(i.content)
                    $(".day_notes").append('<li>' + i.content + '</li>')})
        })
        e.preventDefault()
    })
})



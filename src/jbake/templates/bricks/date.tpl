div(class:"termin") {
    div(class:"row") {
        div(class:"columns") {
            div(class:"month","${post.date?.format('MMM')}")
        }
    }
    div(class:"row") {
        div(class:"columns") {
            div(class:"date", "${post.date?.format('dd')}")
        }
    }
    div(class:"row") {
        div(class:"columns") {
            div(class:"year", "${post.date?.format('yyyy')}")
        }
    }
}

<% include "header.gsp" %>

<% include "menu.gsp" %>

<main>
    <div class="row">
        <div class="small-12 columns">
            <h1>${content.title}</h1>
            <hr/>
        </div>
    </div>

    <div class="row">
        <div class="small-12 columns">

            <p><em>${content.date.format("dd MMMM yyyy")}</em></p>

            <p>${content.body}</p>

            <hr/>
        </div>
    </div>
</main>
<% include "footer.gsp" %>
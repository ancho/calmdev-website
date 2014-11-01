<% include "header.gsp" %>
<% include "menu.gsp" %>
<main>

    <% published_posts[0..2].each { post -> %>
    <div class="row">
        <div class="small-12 columns">
            <article class="panel">
                <header>
                    <div class="row">
                        <div class="small-3 medium-1 large-1 columns">
                            <div class="termin">
                                <div class="month">${post.date?.format("MMM")}</div>

                                <div class="date">${post.date?.format("dd")}</div>

                                <div class="year">${post.date?.format("yyyy")}</div>
                            </div>
                        </div>

                        <div class="small-9 medium-11 large-11 columns">

                            <div>
                                <h1><a href="${post.uri}">${post.title}</a></h1>

                                <p>
                                    <% post.tags.each { tag ->
                                        tag = tag.trim()
                                    %>
                                        <span><a href="/tags/${tag.replace(' ','-')}.html" class="label">${tag}</a></span>
                                    <% } %>
                                </p>
                                <hr/>

                            </div>
                        </div>
                    </div>
                </header>

                <div class="row">
                    <div class="small-9 small-offset-3 medium-11 medium-offset-1 large-11 large-offset-1 columns">
                        ${post.body}
                    </div>
                </div>

            </article>
        </div>
    </div>
    <% } %>
    <div class="row">
        <div class="small-12 columns">
            <hr/>
            Older post are available in the <a href="${config.archive_file}">archive</a>
        </div>
    </div>

</main>
<% include "footer.gsp" %>
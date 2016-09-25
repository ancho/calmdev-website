<% include "header.gsp" %>
<% include "menu.gsp" %>
<main>
    <div class="row">
        <div class="small-12 columns">
            <article class="wrap">
                <header>
                    <div class="row">
                        <div class="small-3 medium-1 large-1 columns">
                            <div class="row termin">
                                <div class="month columns">${content.date?.format("MMM")}</div>

                                <div class="date columns">${content.date?.format("dd")}</div>

                                <div class="year columns">${content.date?.format("yyyy")}</div>
                            </div>
                        </div>

                        <div class="small-9 medium-11 large-11 columns">
                            <h2>${content.title}</h2>

                            <p>
                                <%
                                    def contextPath = "${config.site_contextPath}"
                                    content.tags.each { tag ->
                                    tag = tag.trim()
                                %>
                                    <span class="label"><a href="${contextPath}tags/${tag.replace(' ','-')}.html">${tag}</a></span>
                                <% } %>
                            </p>

                        </div>
                        <hr/>
                    </div>
                </header>

                <div class="row">
                    <div class="columns">
                        ${content.body}
                    </div>
                </div>

            </article>
        </div>
    </div>

</main>
<% include "footer.gsp" %>

<% include "header.gsp" %>
<% include "menu.gsp" %>
<main>
    <div class="row">
        <div class="small-12 columns">
            <article class="wrap">
                <header>
                    <div class="row">
                        <div class="small-3 medium-1 large-1 columns">
                            <div class="termin">
                                <div class="row">
                                    <div class="columns"><div class="month">${content.date?.format("MMM")}</div></div>
                                </div>
                                <div class="row">
                                    <div class="columns"><div class="date">${content.date?.format("dd")}</div></div>
                                </div>
                                <div class="row">
                                    <div class="columns"><div class="year">${content.date?.format("yyyy")}</div></div>
                                </div>
                            </div>
                        </div>

                        <div class="small-9 medium-11 large-11 columns">
                            <div class="row">
                                <div class="small-10 medium-11 large-11 columns">
                                    <h2>${content.title}</h2>
                                </div >

                                <div class="small-2 medium-1 large-1 columns">
                                    <% if (content.language) { %>
                                        <i class="fi-flag" aria-hidden="true" alt="language"></i> ${content.language}
                                    <% } %>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="small-offset-3 medium-offset-1 large-offset-1 columns">

                            <div>
                                <%
                                    def contextPath = "${config.site_contextPath}"
                                    content.tags.each { tag ->
                                    tag = tag.trim()
                                %>
                                    <span class="label"><a href="${contextPath}tags/${tag.replace(' ','-')}.html">${tag}</a></span>
                                <% } %>
                            </div>
                        </div>
                    </div>
                    <hr>
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

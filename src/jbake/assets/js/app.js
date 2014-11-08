/**
 * Created by frank on 08.11.14.
 */
function prettifyMarkdown() {
    var pres = document.getElementsByTagName("pre")
    for (var i = 0; i < pres.length; i++) {
        var pre = pres[i];
        addClass(pre,"prettyprint");
    }
}
function hasClass(ele, cls) {
    return ele.className.match(new RegExp('(\\s|^)' + cls + '(\\s|$)'));
}
function addClass(ele, cls) {
    if (!this.hasClass(ele, cls)) ele.className += " " + cls;
}
function removeClass(ele, cls) {
    if (hasClass(ele, cls)) {
        var reg = new RegExp('(\\s|^)' + cls + '(\\s|$)');
        ele.className = ele.className.replace(reg, ' ');
    }
}

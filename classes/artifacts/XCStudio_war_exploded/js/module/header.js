$(document).ready(function () {
    // 导航栏输入框自动完成
    $(function () {
        var availableTags = [
            "ActionScript",
            "AppleScript",
            "Asp",
            "BASIC",
            "C",
            "C++",
            "Clojure",
            "COBOL",
            "ColdFusion",
            "Erlang",
            "Fortran",
            "Groovy",
            "Haskell",
            "Java",
            "JavaScript",
            "Lisp",
            "Perl",
            "PHP",
            "Python",
            "Ruby",
            "Scala",
            "Scheme",
            "大数据",
            "云计算",
            "人工智能"
        ];
        $("#navbar-form-search").autocomplete({
            source: availableTags
        });
    });
});
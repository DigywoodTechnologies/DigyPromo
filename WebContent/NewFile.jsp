
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <title>json</title>
</head>
<body>
    <form id="form1" >
    <div style="margin:20px auto;width: 500px;">
<table id="jsonTable" border="1" style="border-collapse:collapse;" cellpadding="5">
</table>
<script type="text/javascript">
$(document).ready(function () {
    $.getJSON("$jsonString",
    function (json) {
        var tr;
        for (var i = 0; i < json.length; i++) {
            tr = $('<tr/>');
            tr.append("<td>" + json[i].User_Name + "</td>");
            tr.append("<td>" + json[i].score + "</td>");
            tr.append("<td>" + json[i].team + "</td>");
            $('table').append(tr);
        }
    });
});
</script>
    </div>
    </form>
</body>

</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
    <script src="js/jquery/jquery-3.2.1.min.js"></script>
    <script src="js/common/ajaxfunc.js"></script>
    <script>
        sqlName = "sys1_failue_count";
        function data() {
            post('model/data', {'sqlName': sqlName}, function (data) {
                alert(data);
            });
        }
        function test() {
            post('model/test', [], function (data) {
                alert(data);
            });
        }
        function JM() {
            post('model/JM', [], function (data) {
                alert(data);
            });
        }
        function GO() {
            post('model/GO', [], function (data) {
                alert(data);
            });
        }
        function BP() {
            post('model/BP', [], function (data) {
                alert(data);
            });
        }
        function SVM() {
            post('model/SVM', [], function (data) {
                alert(data);
            });
        }
        function PLR() {
            post('model/PLR', [], function (data) {
                alert(data);
            });
        }
    </script>
</head>
<body>
    <div align="center">
        <button type="button" onclick="data()">data</button><br/><br/>
        <button type="button" onclick="test()">test</button><br/><br/>
        <button type="button" onclick="JM()">JM</button><br/><br/>
        <button type="button" onclick="GO()">GO</button><br/><br/>
        <button type="button" onclick="BP()">BP</button><br/><br/>
        <button type="button" onclick="SVM()">SVM</button><br/><br/>
        <button type="button" onclick="PLR()">PLR</button><br/><br/>
    </div>
</body>
</html>

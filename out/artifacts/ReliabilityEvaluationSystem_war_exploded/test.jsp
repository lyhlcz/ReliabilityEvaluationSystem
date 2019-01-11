<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
    <script src="js/jquery/jquery-3.2.1.min.js"></script>
    <script src="js/common/ajaxfunc.js"></script>
    <script>
        sqlName = "sys1_failue_count";
        function data() {
            post('model/loadData', {'sqlName': sqlName, 'num' : 100}, function (data) {
                alert(data);
            });
        }
        function datalist() {
            post('model/listData', [], function (data) {
                alert(data[1]);
            });
        }
        function dataImport() {
            post('model/importData', {'dataName': "testData2", 'data': "22 53 62"}, function (data) {
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
            post('model/BP', {'resultNum':5, 'rate':0.1, 'inputNum':5, 'epochs':10000, 'precision':0.1}, function (data) {
                alert(data);
            });
        }
        function SVM() {
            post('model/SVM', {'resultNum':5, 'inputNum':5}, function (data) {
                alert(data);
            });
        }
        function UY() {
            post('model/UY', {'modelID':2}, function (data) {
                alert(data[0]);
                alert(data[1]);
                alert(data[2]);
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
        <button id="test" type="button" onclick="datalist()">datalist</button><br/><br/>
        <button type="button" onclick="dataImport()">dataImport</button><br/><br/>
        <button type="button" onclick="test()">test</button><br/><br/>
        <button type="button" onclick="JM()">JM</button><br/><br/>
        <button type="button" onclick="GO()">GO</button><br/><br/>
        <button type="button" onclick="BP()">BP</button><br/><br/>
        <button type="button" onclick="SVM()">SVM</button><br/><br/>
        <button type="button" onclick="UY()">UY</button><br/><br/>
        <button type="button" onclick="PLR()">PLR</button><br/><br/>
    </div>
</body>
</html>

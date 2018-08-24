<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
<c:url var="R" value="/" />
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        	var todayDate = new Array();
        	for(let i=0; i<5; ++i)
        	{
        		var today = new Date();
            	var dd = today.getDate()-i;
            	var mm = today.getMonth()+1;
            	var yyyy = today.getFullYear();
            	todayDate[i] = yyyy+'-'+mm+'-'+dd
        	}
        var data = google.visualization.arrayToDataTable([
         ['Month', '내점수', '평균'],
         [todayDate[0],  90,   52],
         [todayDate[1],  71,      49],
         [todayDate[2],  89,      77],
         [todayDate[3],  95,      47],
         [todayDate[4],  84,      63]
      ]);

    var options = {
      title : '퀴즈점수',
      vAxis: {title: '점수'},
      hAxis: {title: '날짜'},
      seriesType: 'bars',
      series: {5: {type: 'line'}}
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
</script>
</head>
<body>
<main>
<section>
 	<div id="chart_div" style="width: 900px; height: 500px;"></div>
 	</section>
 </main>
</body>
</html>
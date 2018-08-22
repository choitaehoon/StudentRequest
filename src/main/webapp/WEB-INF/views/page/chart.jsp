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
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
         ['Month', '내점수', '평균'],
         ['2004/05',  85,      52],
         ['2005/06',  77,      40],
         ['2006/07',  55,      55],
         ['2007/08',  27,      29],
         ['2008/09',  100,      70]
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.css" type="text/css">		
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/Common.js"></script>
	<script type="text/javascript" src="https://rawgit.com/anhr/InputKeyFilter/master/InputKeyFilter.js"></script>

  
</head>
<body>
<h1>Date field</h1>
    Date:
    <input type='date' id='date' />
    New date: <span id="NewDate"></span>
    <script>
        CreateDateFilter('date', {
                formatMessage: 'Please type date %s'
                , onblur: function (target) {
                    if (target.value == target.defaultValue)
                        return;
                    document.getElementById('NewDate').innerHTML = target.value;
                }
                , min: new Date((new Date().getFullYear() - 10).toString()).toISOString().match(/^(.*)T.*$/i)[1]//'2006-06-27'//10 years ago
                , max: new Date().toISOString().match(/^(.*)T.*$/i)[1]//"2016-06-27" //Current date
                , dateLimitMessage: 'Please type date between "%min" and "%max"'
            }
        );
    </script>
</body>
</html>
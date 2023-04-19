<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <style>
        #h2 {
            color: white;
            background: skyblue;
        }
    </style>
    <script>
        $(function(){
            $('h1').css('color', 'blue');
            $('h1').click(function(){
                $(this).text('replace test');
            });
        });
    </script>
</head>
<body>
<h1>second page</h1>
<h2 id="h2">h2</h2>
</body>
</html>

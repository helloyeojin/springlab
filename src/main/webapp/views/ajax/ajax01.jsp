<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
  let ajax01 = {
    init:function (){
      setInterval(function (){
        $.ajax({
          url:'/getservertime',
          success:function (data){
            ajax01.display(data);
          },
          error:function (){
            alert('Error.....');
          }
        });
      },3000);
      // setInterval(function (){}, 3000 : 3초에 한번씩 함수 호출
    },
    display:function (data){
      $('#server_time').text(data);
    }
  };

  $(function (){
    ajax01.init();
  })
</script>

<div class="col-sm-8 text-left">
  <div class="container">
    <h1>AJAX01</h1>
    <h2>Server Time</h2>
    <h3 id="server_time"></h3>
  </div>
</div>

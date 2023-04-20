<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let register_form = {
        init:function(){
            $('#register_btn').click(function(){
                register_form.send();
            });
        },
        send: function(){
            $('#register_form').attr({
                'action':'/registerimpl',
                'method':'get'
            });
            $('#register_form').submit();
        }
    };
    $(function(){
        register_form.init();
    });
</script>

<div class="col-sm-8 text-left">
    <div class = "container">
         <h1>Register Page</h1>
    <form id="register_form" nmae="register_form">
        <div class="form-group"><label class="form-label">ID: </label>
        <input type="text" name= "id" id="id"/></div>

        <div class="form-group"><label class="form-label">PW: </label><input type="text" id="pwd" name="pwd"/></div>
        <div class="form-group"><label class="form-label">이름: </label><input type="text" id="name" name="name"/></div>
        <button type="button" id="register_btn">Register</button>
    </form>

    </div>
</div>


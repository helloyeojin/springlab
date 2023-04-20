<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let login_form = {
        init:function(){
            $('#login_btn').click(function(){
                login_form.send();
            });
        },
        send: function(){
            $('#login_form').attr({
                'action':'/loginimpl',
                'method':'get'
            });
            $('#login_form').submit();
        }
    };
    $(function(){
        login_form.init();
    });
</script>

<div class="col-sm-6 text-center">
    <div class = "row content text-center" style="display: inline-block;">

            <form name="login_form" id="login_form">

                <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>

                <div class="form-outline mb-4">
                    <input type="email" id="form2Example18" name="email" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example18">Email address</label>
                </div>

                <div class="form-outline mb-4">
                    <input type="password" id="form2Example28" name="pwd" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example28">Password</label>
                </div>
            </form>
        <div>
            <button class="btn btn-info btn-lg btn-block" type="button" id="login_btn">Login</button>
        </div>
        <div>
        <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
        <p>Don't have an account? <a href="#!" class="link-info">Register here</a></p>
        </div>

</div>
</div>
</div>
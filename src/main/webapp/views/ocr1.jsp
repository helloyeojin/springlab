<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    $(function (){

    });
</script>

<div class="col-sm-8 text-left">
    <div class="container">
        <div class="row content">
            <div class="col-sm-8 text-left">
                <h1>OCR1</h1>
                <h2>${result.biznum}</h2>
                <h2>${result.bizname}</h2>
                <h2>${result.owner}</h2>
                <h2>${result.bizdate}</h2>
                <h2>${result.bizadd}</h2>
                <form id="ocr1_form" class="well" style="margin-top: 30px" action="/ocr1impl" method ="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="img">IMAGE:</label>
                        <input type="file" class="form-control" id="img" placeholder="Input Img" name="img">
                    </div>
                    <button type="submit" class="btn btn-default" id="ocr1" >Send</button>
                </form>
            </div>
        </div>
    </div>
</div>
<%--
  Created by IntelliJ IDEA.
  User: yashar
  Date: 9/20/16
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>فرم ثبت‌نام دانشجویان</title>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
    <link rel="stylesheet" href="//cdn.rawgit.com/morteza/bootstrap-rtl/v3.3.4/dist/css/bootstrap-rtl.min.css">
    <link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>
</head>

<body>

<div class="form-container">

    <h1>فرم ثبت‌نام</h1>

    <form:form method="POST" modelAttribute="student" class="form-horizontal">

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="firstName">نام</label>
                <div class="col-md-7">
                    <form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="firstName" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="lastName">نام خانوادگی</label>
                <div class="col-md-7">
                    <form:input type="text" path="lastName" id="lastName" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="lastName" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="sex">جنسیت</label>
                <div class="col-md-7" class="form-control input-sm">
                    <form:radiobutton path="sex" value="M" />مرد
                    <form:radiobutton path="sex" value="F" />زن
                    <div class="has-error">
                        <form:errors path="sex" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="dob">تاریخ تولد</label>
                <div class="col-md-7">
                    <form:input type="text" path="dob" id="dob" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="dob" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="email">ایمیل</label>
                <div class="col-md-7">
                    <form:input type="text" path="email" id="email" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="email" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="section">مقطع</label>
                <div class="col-md-7" class="form-control input-sm">
                    <form:radiobuttons path="section" items="${sections}" />
                    <div class="has-error">
                        <form:errors path="section" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="country">کشور</label>
                <div class="col-md-7">
                    <form:select path="country" id="country" class="form-control input-sm">
                        <form:option value="">کشور خود را انتخاب کنید</form:option>
                        <form:options items="${countries}" />
                    </form:select>
                    <div class="has-error">
                        <form:errors path="country" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="firstAttempt">اولین تلاش شماست؟</label>
                <div class="col-md-1">
                    <form:checkbox path="firstAttempt" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="firstAttempt" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="subjects">موضوعات</label>
                <div class="col-md-7">
                    <form:select path="subjects" items="${subjects}" multiple="true" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="subjects" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-actions floatRight">
                <input type="submit" value="ثبت‌نام" class="btn btn-primary btn-sm">
            </div>
        </div>
    </form:form>
</div>
</body>
</html>
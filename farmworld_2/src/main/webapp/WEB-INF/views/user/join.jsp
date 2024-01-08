<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:include page="header.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div>
	<form class="row g-3">
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticId"
	      value="아이디(이메일)"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_id" class="visually-hidden"></label>
	    <input
	      type="email"
	      class="form-control"
	      id="user_id"
	      placeholder="아이디(이메일)"
	    />
	  </div>
	  <div class="col-auto">
	    <button id="id_check" type="submit" class="btn btn-primary mb-3">
	      중복확인
	    </button>
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticPw"
	      value="비밀번호"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_pw" class="visually-hidden"></label>
	    <input
	      type="password"
	      class="form-control"
	      id="user_pw"
	      placeholder="비밀번호"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticPwCheck"
	      value="비밀번호(확인)"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_pw_check" class="visually-hidden"></label>
	    <input
	      type="password"
	      class="form-control"
	      id="user_pw_check"
	      placeholder="비밀번호(확인)"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticName"
	      value="이름"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_name" class="visually-hidden"></label>
	    <input
	      type="text"
	      class="form-control"
	      id="user_name"
	      placeholder="이름"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticNickname"
	      value="닉네임"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_nickname" class="visually-hidden"></label>
	    <input
	      type="text"
	      class="form-control"
	      id="user_nickname"
	      placeholder="닉네임"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticPhone"
	      value="전화번호"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_phone" class="visually-hidden"></label>
	    <input
	      type="tel"
	      class="form-control"
	      id="user_phone"
	      placeholder="전화번호"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticAddress"
	      value="주소"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_address" class="visually-hidden"></label>
	    <input
	      type="text"
	      class="form-control"
	      id="user_address"
	      placeholder="주소"
	    />
	  </div>
	</form>
</div>
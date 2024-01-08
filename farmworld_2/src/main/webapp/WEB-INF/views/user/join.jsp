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
	      value="���̵�(�̸���)"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_id" class="visually-hidden"></label>
	    <input
	      type="email"
	      class="form-control"
	      id="user_id"
	      placeholder="���̵�(�̸���)"
	    />
	  </div>
	  <div class="col-auto">
	    <button id="id_check" type="submit" class="btn btn-primary mb-3">
	      �ߺ�Ȯ��
	    </button>
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticPw"
	      value="��й�ȣ"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_pw" class="visually-hidden"></label>
	    <input
	      type="password"
	      class="form-control"
	      id="user_pw"
	      placeholder="��й�ȣ"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticPwCheck"
	      value="��й�ȣ(Ȯ��)"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_pw_check" class="visually-hidden"></label>
	    <input
	      type="password"
	      class="form-control"
	      id="user_pw_check"
	      placeholder="��й�ȣ(Ȯ��)"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticName"
	      value="�̸�"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_name" class="visually-hidden"></label>
	    <input
	      type="text"
	      class="form-control"
	      id="user_name"
	      placeholder="�̸�"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticNickname"
	      value="�г���"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_nickname" class="visually-hidden"></label>
	    <input
	      type="text"
	      class="form-control"
	      id="user_nickname"
	      placeholder="�г���"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticPhone"
	      value="��ȭ��ȣ"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_phone" class="visually-hidden"></label>
	    <input
	      type="tel"
	      class="form-control"
	      id="user_phone"
	      placeholder="��ȭ��ȣ"
	    />
	  </div>
	  <br />
	  <div class="col-auto">
	    <input
	      type="text"
	      readonly=""
	      class="form-control-plaintext"
	      id="staticAddress"
	      value="�ּ�"
	    />
	  </div>
	  <div class="col-auto">
	    <label for="user_address" class="visually-hidden"></label>
	    <input
	      type="text"
	      class="form-control"
	      id="user_address"
	      placeholder="�ּ�"
	    />
	  </div>
	</form>
</div>
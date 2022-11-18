<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>



<!-- ======= Header ======= -->
<div class="sidebar-menu">
	<ul class="menu">
		<li class="sidebar-title">Menu</li>

		<li class="sidebar-item">
			<a href="../member/memberList" class='sidebar-link'>
				<i class="bi bi-person-badge-fill"></i>
				<span>Member</span>
			</a>
		</li>

		<li class="sidebar-item">
			<a href="../codeGroup/codeGroupList" class='sidebar-link'>
				<i class="bi bi-grid-fill"></i>
				<span>CodeGroup</span>
			</a>
		</li>

		<li class="sidebar-item ">
			<a href="../code/codeList" class='sidebar-link'>
				<i class="bi bi-grid-fill"></i>
				<span>Code</span>
			</a>
		</li>

		<li class="sidebar-item">
			<a href="../word/wordList" class='sidebar-link'>
				<i class="fa fa-book"></i>
				<span>Word</span>
			</a>
		</li>

		<li class="sidebar-item">
			<a href="/home/home" class='sidebar-link'>
				<i class="fa-solid fa-house-chimney-user"></i>
				<span>User Home</span>
			</a>
		</li>

	</ul>
</div>
<!-- End Header -->
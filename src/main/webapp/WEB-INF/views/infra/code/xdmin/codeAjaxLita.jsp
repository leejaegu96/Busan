<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<div class="dataTable-container">
	<table class="table table-striped" id="table1">
		<thead>
			<tr>
				<th>
					<div class="form-check" id="">
						<input class="form-check-input" type="checkbox" name="chk_box" onclick="allcheck();" value="" id="flexCheckDefault">
					</div>
				</th>
				<th>#</th>
				<th>코드그룹 코드</th>
				<th>코드그룹 이름(한글)</th>
				<th>코드</th>
				<th>대체코드</th>
				<th>코드 이름(한글)</th>
				<th>코드 이름(영문)</th>
				<th>사용</th>
				<th>순서</th>
				<th>등록일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<tbody id="my_tbody">
			<c:choose>
				<c:when test="${fn:length(list) eq 0}">
					<tr>
						<td class="" colspan="12" style="text-align: center;">There is no data!</td>
					</tr>
				</c:when>
				<c:otherwise>

					<c:forEach items="${list}" var="list" varStatus="status">
						<tr style="cursor: pointer;" onclick="location.href='/code/codeForm?ifcdSeq=<c:out value="${list.ifcdSeq }"/>'">
							<td>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="chk_box" onclick="check();" value="" id="flexCheckDefault">
								</div>
							</td>
							<td>${status.count }</td>
							<td>
								<c:out value="${list.infrCodeGroup_ifcgSeq }" />
							</td>
							<td>
								<c:out value="${list.ifcgName }" />
							</td>
							<td>
								<c:out value="${list.ifcdSeq }" />
							</td>
							<td></td>
							<td>
								<a href="javascript:goForm(<c:out value="${list.ifcdSeq }"/>)" class="text-decoration-none">
									<c:out value="${list.ifcdName }" />
								</a>
							</td>
							<td>
								<c:out value="${list.ifcdEngName }" />
							</td>

							<td>
								<c:out value="${list.ifcdUseNy }" />
							</td>
							<td>
								<c:out value="${list.ifcdOrder }" />
							</td>
							<td></td>
							<td></td>

						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</div>
<div class="col">
	<!-- pagination s -->
	<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
	<!-- pagination e -->
</div>

<script type="text/javascript">

goForm = function(keyValue) {
	/* if(key != 0) seq.val(btoa(key)); */
	seq.val(keyValue);
	form.attr("action", goUrlForm).submit();
}


goList = function(thisPage) {
	$("input:hidden[name=thisPage]").val(thisPage);
	setLita();
}


$("#changeRowNum").on("change", function(){
	$("input:hidden[name=rowNumToShow]").val($("#changeRowNum option:selected").val());
	setLita();
}); 
	

$("#checkboxAll").click(function() {
	if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
	else $("input[name=checkboxSeq]").prop("checked", false);
});


$("input[name=checkboxSeq]").click(function() {
	var total = $("input[name=checkboxSeq]").length;
	var checked = $("input[name=checkboxSeq]:checked").length;
	
	if(total != checked) $("#checkboxAll").prop("checked", false);
	else $("#checkboxAll").prop("checked", true); 
});

</script>
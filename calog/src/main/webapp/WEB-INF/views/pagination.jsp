<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


	<c:if test="${pm.prev}">
			<a href="${pm.startPage-1}">◀</a>
		</c:if>

		<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
			<c:if test="${i==cri.page}">
				<a href="${i}"><b>[${i}]</b></a>
			</c:if>
			<c:if test="${i!=cri.page}">
				<a href="${i}">[${i}]</a>
			</c:if>
		</c:forEach>

		<c:if test="${pm.next}">
			<a href="${pm.endPage+1}">▶</a>
		</c:if>
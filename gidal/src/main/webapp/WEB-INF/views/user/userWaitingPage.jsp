<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script>

	function waiting_cancel(waiting_code) {
		
		if (confirm("웨이팅을 취소하시려면 확인을 눌러주세요.")) {
			
			location.href = "/waiting/waiting_cancel?check=user&waiting_code=" + waiting_code;
		}
	}
	
</script>

			
	<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">
		<table class="table table-hover"  style = "text-align : center;">
			<thead>
				<tr>
					<th scope="col" style = "min-width : 100px;">식당</th>
					<th scope="col" style = "min-width : 56px;">인원</th>
					<th scope="col" style = "min-width : 90px;">날짜</th>
					<th scope="col" style = "min-width : 80px;">상태</th>
				</tr>
			</thead>
			<tbody>
				<c:if test = "${ empty list1}">
					<tr>
						<td colspan = "4"><small>웨이팅내역이 없습니다.</small></td>
					</tr>
				</c:if>
				<c:forEach items="${list1}" var="UserPageWaitingVO">
					<tr>
						<td><small>${UserPageWaitingVO.enterprise_businessName}</small></td>
						<td><small>${UserPageWaitingVO.waiting_personnel}명</small></td>
						<td><small><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${UserPageWaitingVO.waiting_now}" /></small></td>
						<td>
							<c:choose>
								<c:when test="${ UserPageWaitingVO.waiting_yn eq 'Y' }">
									<c:choose>
										<c:when test="${ empty UserPageWaitingVO.reserveAndWaiting_code }">
											<button type="button" class="btn btn-primary btn-sm" onclick="window.open('/review/write?rwDiv=W&code=${ UserPageWaitingVO.waiting_code }','','width=600,height=400,top=250,left=350,location=no,status=no,scrollbars=no');">
												리뷰쓰기
											</button>
										</c:when>
										<c:otherwise>
											<button type="button" class="btn btn-success btn-sm" onclick="window.open('/review/view?rwDiv=W&code=${ UserPageWaitingVO.waiting_code }&rcode=${ UserPageWaitingVO.reserveAndWaiting_code }','','width=600,height=400,top=250,left=350,location=no,status=no,scrollbars=no');">
												리뷰보기
											</button>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-secondary btn-sm" onclick="waiting_cancel(${ UserPageWaitingVO.waiting_code });" style = "width : 74px;">
										입장 전<br />
										<small>웨이팅취소</small>
									</button>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>


</html>
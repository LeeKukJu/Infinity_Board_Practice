<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>게시판 목록</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">LIST</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<div class="row mb-3">
    <div class="col-sm-12">
        <button type="button" class="btn btn-xl btn-primary float-right mr-5">등록</button>
    </div>
</div>
<div class="contentList m-3">
	<c:choose>
		<c:when test="${empty boardList }">
			<h1>조회하실 게시물이 존재하지 않습니다.</h1>
		</c:when>
		<c:otherwise>
			<c:forEach items="${boardList }" var="board" varStatus="stat">
				<c:if test="${stat.count % 4 eq 1 }">
					<div class="row mb-3">
				</c:if>
						<div class="col-sm-3">
							<div class="card cardList m-0">
								<div class="card-body">
									<div class="row mb-3">
										<div class="col-sm-7">
											<span class="writeDate font-weight-bold">작성일| <fmt:formatDate value="${board.writeDate }" pattern="yyyy-MM-dd"/></span>
										</div>
										<div
											class="col-sm-5 d-flex align-items-center justify-content-end">
											
											<img class="food_img mr-2" src="/resources/images/${board.foodType }.png"
												alt=""> <span class="badge badge-pill badge-info">${board.foodType }</span>
										</div>
									</div>
									<div class="row mb-2">
										<div class="col-12 d-flex justify-content-center">
											<h3>
												<span class="badge badge-primary">${board.resName }</span>
											</h3>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12">
											<h3 class="m-0">
												<span class="badge badge-warning">평점</span> <span>${board.rating }</span>
											</h3>
										</div>
									</div>
								</div>
								<div class="card-footer p-2">
									<div
										class="d-flex justify-content-between align-items-center px-2">
										<span class="badge badge-success" style="font-size: 13px;">${board.writer }</span>
										<div class="d-flex justify-content-between align-items-center">
											<div
												class="d-flex justify-content-between align-items-center mr-2">
												<svg stroke="currentColor" fill="currentColor"
													stroke-width="0" viewBox="0 0 1024 1024" color="#999999"
													height="24" width="24" xmlns="http://www.w3.org/2000/svg"
													style="color: rgb(153, 153, 153);">
		                                    <path
														d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z">
		                                    </path>
		                                </svg>
												<sapn class="ml-1 font-weight-bold">${board.views }</sapn>
											</div>
											<div class="d-flex justify-content-between align-items-center">
												<svg stroke="currentColor" fill="currentColor"
													stroke-width="0" viewBox="0 0 512 512" color="#999999"
													height="18" width="18" xmlns="http://www.w3.org/2000/svg"
													style="color: rgb(153, 153, 153);">
		                                    <path
														d="M256 32C114.6 32 0 125.1 0 240c0 47.6 19.9 91.2 52.9 126.3C38 405.7 7 439.1 6.5 439.5c-6.6 7-8.4 17.2-4.6 26S14.4 480 24 480c61.5 0 110-25.7 139.1-46.3C192 442.8 223.2 448 256 448c141.4 0 256-93.1 256-208S397.4 32 256 32zm0 368c-26.7 0-53.1-4.1-78.4-12.1l-22.7-7.2-19.5 13.8c-14.3 10.1-33.9 21.4-57.5 29 7.3-12.1 14.4-25.7 19.9-40.2l10.6-28.1-20.6-21.8C69.7 314.1 48 282.2 48 240c0-88.2 93.3-160 208-160s208 71.8 208 160-93.3 160-208 160z">
		                                    </path>
		                                </svg>
												<span class="ml-1 font-weight-bold">${board.commentNum }</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				<c:if test="${stat.count % 4 eq 0 }">
					</div>				
				</c:if>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</div>



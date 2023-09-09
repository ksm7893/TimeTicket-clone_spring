<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> 
<%
	String contextPath = request.getContextPath();

%>

<!DOCTYPE html>
<html>

<head>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.11.3/dist/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css?20230523">

<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- 페이지별 선언 : css / js -->

  <style>
    .mypage_top { width:1100px; height:130px; margin:auto; margin-top:30px; border:1px solid #ff6060; border-radius:10px; }
    .mypage_top_left { float:left; background:#ff6060; width:240px; height:130px; border-radius:8px 0 0 8px;}
    .mypage_top_left img { position:relative; top:35px; left:30px; }
    .mypage_top_right { float:left; width:860px; height:110px; padding:10px 0; background:#fff; border-radius:0 10px 10px 0; line-height: 200%; }
    .mypage_top_contents { float:left; width:160px; height:65px; padding:22px 20px; border-right:1px solid #ddd; }
    .mypage_top_title { font-size:18px; color:#555; font-weight:bold; }
    .mypage_top_name { font-size:18px; color:#555; font-weight:bold; text-decoration:underline; }
    .mypage_top_name_nim { font-size:18px; color:#777; font-weight:normal; }
    .mypage_top_number { margin-top:3px; font-size:22px; font-weight:bold; color:#ff4b4b; }
    .arrow_gt { font-weight:normal; font-size:12px; vertical-align:2px; }

    .mypage_wrap {width:1100px;  margin:auto; margin-top:30px;}

    .mypage_left_wrap { float:left; width:180px; min-height:640px; padding:40px 30px 0 30px; background:#fff; border-radius:10px;}
    .mypage_left_wrap ul { list-style:none; border-top:1px solid #dddddd; margin-top:20px; padding-top:10px; }
    .mypage_left_title { font-size:24px; font-weight:700; color:#555; }
    .mypage_left_sub { font-size:18px; fonw-weight:700; padding:10px 0; cursor:pointer; }
    .mypage_left_sub_on { color:#ff4b4b; font-weight:700; }
    .mypage_left_sub_off { color:#333; font-weight: 400;}

    .mypage_right_wrap { float:right; width:780px; min-height:640px; padding:40px 30px 0 30px; background:#fff; border-radius: 10px; }
    .mypage_right_title { font-size:24px; font-weight:700; color:#555; }
    
    element.style {
    background-color: #ffffff;
    border-top: 1px solid #eee;
	}
  </style>

<script async="" src="https://script.hotjar.com/modules.d300ab0f8311d57bf5d6.js" charset="utf-8"></script><meta http-equiv="origin-trial" content="AymqwRC7u88Y4JPvfIF2F37QKylC04248hLCdJAsh8xgOfe/dVJPV3XS3wLFca1ZMVOtnBfVjaCMTVudWM//5g4AAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjk1MTY3OTk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A+xK4jmZTgh1KBVry/UZKUE3h6Dr9HPPioFS4KNCzify+KEoOii7z/goKS2zgbAOwhpZ1GZllpdz7XviivJM9gcAAACFeyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiQXR0cmlidXRpb25SZXBvcnRpbmdDcm9zc0FwcFdlYiIsImV4cGlyeSI6MTcwNzI2Mzk5OSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="AymqwRC7u88Y4JPvfIF2F37QKylC04248hLCdJAsh8xgOfe/dVJPV3XS3wLFca1ZMVOtnBfVjaCMTVudWM//5g4AAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjk1MTY3OTk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/939362906/?random=1686851131515&amp;cv=11&amp;fst=1686851131515&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be36e0h2&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Ftimeticket.co.kr%2Fuser_review.php%3Fmode%3Dreview&amp;ref=https%3A%2F%2Ftimeticket.co.kr%2Fuser_review.php%3Fmode%3Dreview&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EB%A7%88%EC%9D%B4%ED%8B%B0%EC%BC%93%20-%20%ED%83%80%EC%9E%84%ED%8B%B0%EC%BC%93&amp;auid=536859114.1683190071&amp;uaa=x86&amp;uab=64&amp;uafvl=Whale%3B3.21.192.15%7CNot-A.Brand%3B8.0.0.0%7CChromium%3B114.0.5735.120&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/939362906/?random=1686851132018&amp;cv=11&amp;fst=1686851132018&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be36e0h2&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Ftimeticket.co.kr%2Fuser_review.php%3Fmode%3Dreview&amp;ref=https%3A%2F%2Ftimeticket.co.kr%2Fuser_review.php%3Fmode%3Dreview&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EB%A7%88%EC%9D%B4%ED%8B%B0%EC%BC%93%20-%20%ED%83%80%EC%9E%84%ED%8B%B0%EC%BC%93&amp;auid=536859114.1683190071&amp;uaa=x86&amp;uab=64&amp;uafvl=Whale%3B3.21.192.15%7CNot-A.Brand%3B8.0.0.0%7CChromium%3B114.0.5735.120&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3DClarity%3BeventCategory%3DClarity%3BeventAction%3Dajlg88%3BnonInteraction%3Dtrue%3Bclaritydimension%3Dhttps%3A%2F%2Fclarity.microsoft.com%2Fga%2Fhdgq117dnr%2Fyp2b36%2Fajlg88&amp;rfmt=3&amp;fmt=4"></script>

<link href="/resources/css/common.css" type="text/css" rel="stylesheet" />
<link href="/resources/css/layout.css" type="text/css" rel="stylesheet" />
<link href="/resources/css/swiper-bundle.min.css" type="text/css" rel="stylesheet" />
<link href="/resources/css/layout_swiper.css" type="text/css" rel="stylesheet" />
<link href="/resources/css/detail.css" type="text/css" rel="stylesheet" />
<link href= "/resources/css/user_review.css" rel="stylesheet">

<style>
    .mypage_top { width:1100px; height:130px; margin:auto; margin-top:30px; border:1px solid #ff6060; border-radius:10px; }
    .mypage_top_left { float:left; background:#ff6060; width:240px; height:130px; border-radius:8px 0 0 8px;}
    .mypage_top_left img { position:relative; top:35px; left:30px; }
    .mypage_top_right { float:left; width:860px; height:110px; padding:10px 0; background:#fff; border-radius:0 10px 10px 0; line-height: 200%; }
    .mypage_top_contents { float:left; width:160px; height:65px; padding:22px 20px; border-right:1px solid #ddd; }
    .mypage_top_title { font-size:18px; color:#555; font-weight:bold; }
    .mypage_top_name { font-size:18px; color:#555; font-weight:bold; text-decoration:underline; }
    .mypage_top_name_nim { font-size:18px; color:#777; font-weight:normal; }
    .mypage_top_number { margin-top:3px; font-size:22px; font-weight:bold; color:#ff4b4b; }
    .arrow_gt { font-weight:normal; font-size:12px; vertical-align:2px; }

    .mypage_wrap {width:1100px;  margin:auto; margin-top:30px;}

    .mypage_left_wrap { float:left; width:180px; min-height:640px; padding:40px 30px 0 30px; background:#fff; border-radius:10px;}
    .mypage_left_wrap ul { list-style:none; border-top:1px solid #dddddd; margin-top:20px; padding-top:10px; }
    .mypage_left_title { font-size:24px; font-weight:700; color:#555; }
    .mypage_left_sub { font-size:18px; fonw-weight:700; padding:10px 0; cursor:pointer; }
    .mypage_left_sub_on { color:#ff4b4b; font-weight:700; }
    .mypage_left_sub_off { color:#333; font-weight: 400;}

    .mypage_right_wrap { float:right; width:780px; min-height:640px; padding:40px 30px 0 30px; background:#fff; border-radius: 10px; }
    .mypage_right_title { font-size:24px; font-weight:700; color:#555; }
  </style>
  <script>
  let deleteBtn = document.querySelectorAll('.my_review_delete');
  let editBtn = document.querySelectorAll('.my_review_edit');
  let titleName = document.querySelectorAll('.my_review_productname');
  let reviewNumber;

  function makeBtnWorks() {
    for (let i = 0; i < editBtn.length; i++) {

      // 수정
      editBtn[i].addEventListener('click', () => {
        jpNumber = editBtn[i].getAttribute('value');
        reviewNumber = deleteBtn[i].getAttribute('value');
        productNumber = titleName[i].getAttribute('value');
        location.href=`${document.location.origin}/my_buy_choice_write.php?mode=review&action=edit&jp_number=${jpNumber}&product_number=${productNumber}&review_number=${reviewNumber}`;
      })

      // 삭제
      deleteBtn[i].addEventListener('click', () => {
        if (confirm('이용후기 삭제 후 재작성이 불가합니다. 정말 삭제하시겠어요?')) {
          reviewNumber = deleteBtn[i].getAttribute('value');
          $.ajax({
            url: "user_review.php",
            type: 'post',
            data: {
              mode: 'delete', review_number: reviewNumber
            },
            success: function(response) {
              alert('이용후기가 삭제되었습니다.')
              location.reload();
            }
          })
        }
      })
    }
  }
  makeBtnWorks();
</script>

</head>

<body style="background:#f4f4f4; overflow:hidden; height:auto; ">
<sec:authorize access="isAuthenticated()"> 
<sec:authentication property="principal" var="principal"/>      
</sec:authorize> 
<div class="mypage_top">
    <div class="mypage_top_left">
      <img src="/resources/images/img_mypage.png">
    </div>
    
    <div class="mypage_top_right">

      <div class="mypage_top_contents" style="margin-left:10px;">

        <div class="mypage_top_title" style="font-weight:normal; padding-top:2px;">안녕하세요😊</div>
        <a href="myticket.php?mode=modify">
          <div style="margin-top:6px;">
          <span class="mypage_top_name">
		<sec:authentication property="principal.member.mem_name"/>
          </span><span class="mypage_top_name_nim">님</span></div>
        </a>
      </div>

      <div class="mypage_top_contents">
        <a href="myticket_point.php?mode=point">
          <div class="mypage_top_title">나의 포인트 <span class="arrow_gt">＞</span></div>
          <div class="mypage_top_number"><sec:authentication property="principal.member.mem_point"/></div>
        </a>
      </div>
      <div class="mypage_top_contents">
        <a href="myticket.php?mode=buy&amp;type=able"> <!-- 나의 포인트로 이동 -->

    <div class="mypage_top_title">이용가능티켓 <span class="arrow_gt">＞</span></div>
    <div class="mypage_top_number">
    <c:forEach items="${usableTic}" var="usabletic">
        ${usabletic.useable_tic_count}
    </c:forEach>
    </div>
        </a>
      </div>

      <div class="mypage_top_contents" style="width:135px; border:none;">
        <!-- 예비칸 -->
      </div>

    </div>

  </div>
  
  <div class="mypage_wrap">

    <!------------- S : 왼쪽 메뉴 영역 ----------->
    <div class="mypage_left_wrap">

      <div class="mypage_left_title">
        마이티켓
      </div>

      <ul>
        <li onclick="<%= contextPath %>/timeticket/mypage/review.do" class="mypage_left_sub"> <!-- 예매내역 링크 받아야함 -->
                      <span class="mypage_left_sub_off">예매내역</span>
                  </li>

        <li onclick="<%= contextPath %>/my_review/myrefund.do" class="mypage_left_sub"> <!-- 추후 환불 만들기 -->
                      <span class="mypage_left_sub_off">취소/환불내역</span>
                  </li>

        <li onclick="<%= contextPath %>/timeticket/mypage/review.do" class="mypage_left_sub">
                      <span class="mypage_left_sub_on">나의 이용후기</span>
                  </li>

        <li onclick="<%= contextPath %>/my_review/mypoint.do" class="mypage_left_sub"> <!-- 추후 포인트 만들기 -->
                  <span class="mypage_left_sub_off">나의 포인트</span>
                </li>
      </ul>

      <ul>
        <li onclick="location.href=&quot;coupon_regist.php?mode=coupon&quot;" class="mypage_left_sub">
                  <span class="mypage_left_sub_off">쿠폰/상품권 등록</span>
                </li>

        <li onclick="location.href=&quot;myticket.php?mode=modify&quot;" class="mypage_left_sub">
                  <span class="mypage_left_sub_off">회원정보 수정</span>
                </li>
      </ul>

      <ul>
        <li onclick="<%= contextPath %>/timeticket/clientcenter/list.do?tb=board_notice" class="mypage_left_sub">
          <span class="mypage_left_sub_off">공지사항</span>
        </li>

        <li onclick="<%= contextPath %>/timeticket/clientcenter/list.do?tb=board_faq" class="mypage_left_sub">
          <span class="mypage_left_sub_off">자주묻는질문</span>
        </li>

        <li onclick="location.href=&quot;bbs_list.php?tb=board_private&quot;" class="mypage_left_sub">
          <span class="mypage_left_sub_off">1:1문의</span>
        </li>
      </ul>

      <ul>
        <a href="friend_invite.php?mode=invite">
          <div style="width:158px; margin-top:15px; border-radius:8px; border:1px solid #ffc1c1; background:#ffeaea; color:#333; font-size:15px; padding:10px; text-align:center; cursor:pointer; ">
            🤗 친구를 초대하면<br>
            <span style="color:#ff4b4b; line-height: 180%;">1,000P를 드려요!
          </span></div>
        </a>
      </ul>

    </div>
    <!------------- E : 왼쪽 메뉴 영역 ----------->


<script>
let countReview = 10;
let platform;
if ('off' === 'on') {
  platform = 'mobile';
} else if ('off' === 'off') {
  platform = 'web';
}

//1줄짜리, 2줄짜리 더보기 버튼 숨기기
let moreBtn, reviewText;

function hideShowMore() {
  moreBtn = document.querySelectorAll('.review_text_seemore');
  reviewText = document.querySelectorAll('.review_text_area');

  for (let i = 0; i < reviewText.length; i++) {
    const textArea = reviewText[i];
    const seeMoreButton = moreBtn[i];
    const maxLines = 2;
    const lineHeight = parseInt(window.getComputedStyle(textArea).lineHeight);
    const maxHeight = maxLines * lineHeight;

    textArea.classList.remove('show'); // 초기에는 펼쳐진 상태가 아니도록 클래스 제거
    seeMoreButton.style.display = 'none'; // 초기에는 더보기 버튼 숨김

    if (textArea.scrollHeight > maxHeight) {
      seeMoreButton.style.display = 'inline-block';
    }
  }
}

// 호출 시점
window.addEventListener('DOMContentLoaded', hideShowMore);

//window.addEventListener('resize', setImgboxHeight)
if (platform === 'mobile') {
  setTimeout(() => {
    setImgboxHeight();
    hideShowMore();
  }, 1000);
} else if (platform === 'web') {
  hideShowMore();
}

function getMeta(url) {
  const img = new Image();
  img.addEventListener("load", function() {
    sessionStorage.setItem('width', this.naturalWidth)
    sessionStorage.setItem('height', this.naturalHeight);
  });
  img.src = url;
}

// 리뷰 이미지 높이와 가로 길이 동기화
function setImgboxHeight() {
  const reviewImg = document.querySelectorAll('.img_label');
  for (let i = 0; i < reviewImg.length; i++) {
    const img_url = reviewImg[i].getAttribute('name');
    const imageUrl = `https://${location.host}/${img_url}`;
    getMeta(imageUrl);
    const width = sessionStorage.getItem('width');
    const height = sessionStorage.getItem('height');
    const aspectRatio = width / height;
    const imgWidth = reviewImg[i].clientWidth;
    const imgHeight = imgWidth / aspectRatio;
    reviewImg[i].style.height = `${imgHeight}px`;
    reviewImg[i].style.backgroundImage = `url(${imageUrl})`;
  }
}

  // 1. ...더보기 클릭했을 때 더보기는 사라지고 글은 펴지도록 해줌
  function showFullReview(selected) {
    const textArea = document.getElementById('text_' + selected);
    const seeMoreButton = document.getElementById('seemore_' + selected);
    
    textArea.classList.add('show'); // 글 펼치기
    seeMoreButton.style.display = 'none'; // 더보기 버튼 숨기기
  }
  
  // 2. 사진 클릭하면 사진 커지고 다시 클릭하면 작아지게 해줌
  // 이미지 로드
function showOriginalRatio(selected) {
  const selectedImg = document.getElementById('user_review_' + selected).querySelector('.img_label');
  const viewMode = selectedImg.getAttribute('viewmode');
  const img_url = selectedImg.getAttribute('name');
  
  if (platform === 'web') {
    if (viewMode === 'off') {
      getMeta(img_url);
      setTimeout(() => {
        selectedImg.style.backgroundSize = 'cover'; // 사진 커지게 설정
        selectedImg.style.borderRadius = '10px';
        selectedImg.style.width = '600px'; // 너비 설정
        selectedImg.style.height = '450px'; // 높이 설정
        selectedImg.setAttribute('viewmode', 'on');
        selectedImg.classList.add('img_label');
        sessionStorage.clear();
      }, 50);
    } else if (viewMode === 'on') {
      selectedImg.style.backgroundSize = 'contain'; // 사진 작아지게 설정
      selectedImg.style.width = '150px';
      selectedImg.style.height = '150px';
      selectedImg.style.backgroundSize = 'cover';
      selectedImg.style.borderRadius = '10px';
      selectedImg.setAttribute('viewmode', 'off');
    }
  } else if (platform === 'mobile') {
    if (viewMode === 'off') {
      getMeta(img_url);
      setTimeout(() => {
        selectedImg.style.backgroundSize = 'cover'; // 사진 커지게 설정
        const height = sessionStorage.getItem('height') / (sessionStorage.getItem('width') / selectedImg.clientWidth);
        selectedImg.style.height = `${height}px`; // 높이 설정
        selectedImg.setAttribute('viewmode', 'on');
        sessionStorage.clear();
      }, 50);
    } else if (viewMode === 'on') {
      selectedImg.style.backgroundSize = 'contain'; // 사진 작아지게 설정
      selectedImg.style.height = ''; // 높이 초기화
      selectedImg.setAttribute('viewmode', 'off');
    }
  }
}
</script>
  <c:choose>
    <c:when test="${not empty review}">
    <c:forEach items="${review}" var="rvdto">
        <!------------- S : 오른쪽 컨텐츠 영역 ----------->
    <div class="mypage_right_wrap">

      <div class="mypage_right_title" style="margin-bottom:20px;">
        나의 이용후기
      </div>
	     <div class="content" id="content" style="background:#fff;">
            <c:set var='imgNumber' value='${fn:replace(fn:split(rvdto.rev_img, "_")[1], ".jpg","")}' />
            <fmt:parseNumber var="parsedImgNumber" type="number" value="${imgNumber}" />
            <c:set var="parsedImgNumber" value="${parsedImgNumber}" />
            <c:set var="revimg" value= "/resources/images/${rvdto.rev_img}"></c:set>
            <div class="review_wrap" id="user_review_${parsedImgNumber}">
                <div class="review_title" style="padding-bottom:15px;">
                    <div class="review_title_left" style="white-space: nowrap;">
                        <div class="my_review_productname" value="5077">
                            <a href="/detail/view.do?tic_code=${newdto.tic_code}">${rvdto.tic_name}</a>
                        </div>
                    </div>
                    <div class="review_title_right" style="color:#000;">
                        ${rvdto.rev_date}
                    </div>
                </div>
                <div class="review_title" style="border-top: none; padding-top:0;">
                    <div class="review_title_left">
                        <div class="review_title_left_stars">
                            <div class="review_title_left_star">
                                <div class="review_title_left_star_filled" style="width: calc(5 * 19px);"></div>
                            </div>
                        </div>
                    </div>
                    <div class="my_review_title_right">
                        <div class="my_review_edit" value="${parsedImgNumber}">수정</div>
                        <div class="my_review_delete" value="26934">삭제</div>
                    </div>
                </div>
                <div class="review_text">
                    <div class="review_text_area show" id="text_${parsedImgNumber}">
                        ${rvdto.rev_cont}
                    </div>
                    <div class="review_text_seemore" id="seemore_${parsedImgNumber}" onclick="showFullReview(${parsedImgNumber})">
                        ... 더보기
                    </div>
                </div>
                <div style="1; margin: 5px 0;">
                    <div class="img_label ${parsedImgNumber}" viewmode="off" style="background-image: url(${revimg})" name="${revimg}" onclick="showOriginalRatio(${parsedImgNumber})">
                    </div>
                </div>
            </div>
        </div>
        <div class="my_review_start" style=" background:#fff;"></div>
		<div class="review_seemore_wrap" style="margin-top: 20px;">
		<div class="review_seemore" style="display: none;"></div>

<!-- 후기 없을 경우 -->
	<div class="review_empty" style="display: none;">
 	 <div class="review_empty_icon"><img src="/resources/images/icon_speech_bubble.png" alt="뒤로가기"></div>
  	<div class="review_empty_title">아직 작성된 후기가 없습니다.</div>
	</div>

</div> <!-- 빼면 bottom 에러 -->

    </div>
    </c:forEach>
 </c:when>
         
  <c:otherwise>   
<div class="mypage_right_wrap">

      <div class="mypage_right_title" style="margin-bottom:20px;">
        나의 이용후기
      </div>

      <div class="content" id="content" style="background:#fff;">
  </div>
<div class="my_review_start" style=" background:#fff;"></div>
<div class="review_seemore_wrap" style="margin-top: 20px;">
<div class="review_seemore" style="display: none;"></div>

<!-- 후기 없을 경우 -->
<div class="review_empty" style="display: block;">
  <div class="review_empty_icon"><img src="/resources/images/icon_speech_bubble.png" alt="뒤로가기"></div>
  <div class="review_empty_title">아직 작성된 후기가 없습니다.</div>
</div>

</div> <!-- 빼면 bottom 에러 -->

    </div>
</c:otherwise>
    </c:choose>
    <!------------- E : 오른쪽 컨텐츠 영역 ----------->
</div>
<div style="clear:both;"></div>
<div class="footer_pd"></div>
<style>
  .bottom_menu {
    font-size: 16px;
    font-weight: 500;
    color: #444;
    margin-bottom: 20px;
  }
  .bottom_menu a {
    color: #444;
  }
  .bottom_btns {
    display: flex;
    font-size: 14px;
    color: #444;
  }
  .bottom_btns div {
    border: 1px solid #d5d5d5;
    border-radius: 10px;
    width: 140px;
    padding: 10px 0;
    margin-right: 25px;
    text-align: center;
  }
</style>


  <script>
    const rightSection = document.querySelector('.mypage_right_wrap');
    const leftSection = document.querySelector('.mypage_left_wrap');
    if (leftSection.scrollHeight !== rightSection.scrollHeight) {
      leftSection.setAttribute('style', 'height: ' + (rightSection.scrollHeight - 40) + 'px;');
      setInterval(() => {
        leftSection.setAttribute('style', 'height: ' + (rightSection.scrollHeight - 40) + 'px;');
      }, 10);
    }
  </script>
</body>

</html>

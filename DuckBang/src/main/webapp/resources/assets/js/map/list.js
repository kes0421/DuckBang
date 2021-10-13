const room_info = document.getElementsByClassName('room_info_list');
const paging_list = document.getElementById('paging_list');

let totalData = room_info.length; // 총 데이터 수
let dataPerPage = 20; // 한 페이지에 나타낼 게시글 수
let pageCount = 5; // 페이징에 나타낼 페이지 수
let currentPage = 1; // 현재 페이지

function paging(totalData, dataPerPage, pageCount, currentPage){

    // ceil(): 올림
    totalPage = Math.ceil(totalData / dataPerPage);  // 총 페이지 수

    if(tatalPage < pageCount) {
        pageCount= totalPage;
    }

    let pageGroup = Math.ceil(currentPage / pageCount); // 페이지 그룹
    let last = pageGroup * pageCount; // 화면에 보여질 마지막 페이지 번호

    if(last > totalPage) {
        last = totalPage;
    }

    let first = last - (pageCount - 1); // 화면에 보여질 첫번째 페이지 번호
    let next = last + 1;
    let prev = first -1;

    let pageHTML = "";

    if(prev > 0) {
        pageHTML += "<li><a href='#' id='prev'>이전</a></li>";
    }

    // 페이징 번호 표시
    for(var i = first; i <= last; i++){
        if(currentPage == i) {
            pageHTML += "<li class='on'><a href='#' id='" + i + "'>" + i + "</a></li>";
        } else {
            pageHTML += "<li><a href='#' id='" + i + "'>" + i + "</a></li>";
        }
    }

    if(last < totalPage) {
        pageHTML += "<li><a href='#' id='next'> 다음 </a></li>";
    }

    

}



// room_info.length: 개별 방 정보의 div개수
if(room_info.length >= 2){
    
    paging_list.style.visibility = "visible";
    
}

function gallary_open() {
    document.querySelector(".gallary_popup").style.display ='flex';
    
   // this.className.split(" ")[0]는 클릭한 클래스의 이름
   // 클래스 이름div에 이미지 바꿔주기
   console.log(33);
   var image_url = window.getComputedStyle(document.querySelector('.'+this.className.split(" ")[0]), ':after').backgroundImage;
   document.querySelector('.gallary_popup_2').style.backgroundImage = image_url;
   
}

function gallary_close() {
    document.querySelector(".gallary_popup").style.display ='none';

}

function image_large(e) {

	document.querySelector(".gallary_image_first").addEventListener("click", gallary_open);
	document.querySelector(".gallary_image_second").addEventListener("click", gallary_open);
	document.querySelector(".gallary_image_third").addEventListener("click", gallary_open);
	document.querySelector(".gallary_image_fourth").addEventListener("click", gallary_open);
	document.querySelector(".gallary_image_fifth").addEventListener("click", gallary_open);
	
	
	document.querySelector(".gallay_popup_close_btn").addEventListener("click", gallary_close);
	document.querySelector(".gallary_popup_1").addEventListener("click", gallary_close);
}

window.onload = image_large();
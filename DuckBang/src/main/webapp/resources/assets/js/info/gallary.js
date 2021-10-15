function onClick() {
	document.querySelector('.gallary_modal_wrap').style.display ='block';
	document.querySelector('.gallary_black_bg').style.display ='block';
	
	// this.className.split(" ")[0]는 클릭한 클래스의 이름
	// 클래스 이름div에 이미지 바꿔주기
	var image_url = window.getComputedStyle(document.querySelector('.'+this.className.split(" ")[0]), ':after').backgroundImage;
	document.querySelector('.gallary_modal_wrap').style.backgroundImage = image_url;
}   
function offClick() {
	document.querySelector('.gallary_modal_wrap').style.display ='none';
	document.querySelector('.gallary_black_bg').style.display ='none';
}

function image_large(e){
 
    document.querySelector('.gallary_image_first').addEventListener('click', onClick);
    document.querySelector('.gallary_image_second').addEventListener('click', onClick);
    document.querySelector('.gallary_image_third').addEventListener('click', onClick);
    document.querySelector('.gallary_image_fourth').addEventListener('click', onClick);
    document.querySelector('.gallary_image_fifth').addEventListener('click', onClick);
    
    document.querySelector('.gallary_modal_close').addEventListener('click', offClick);
}

window.onload = image_large();
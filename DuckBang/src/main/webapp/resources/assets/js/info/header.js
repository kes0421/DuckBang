const open=()=>{
	document.querySelector('.header_phone_popup').classList.remove('popup_hidden');
}

const close=()=>{
	document.querySelector('.header_phone_popup').classList.add('popup_hidden');
}

document.querySelector('.header_phone_btn').addEventListener('click', open);
document.querySelector('.header_popup_close_btn').addEventListener('click', close);
document.querySelector('.phone_popup1').addEventListener('click', close);
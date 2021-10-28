package com.duck.room.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.duck.room.mapper.UsersMapper;
import com.duck.room.service.KakaoService;
import com.duck.room.service.NaverLoginBO;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class LoginController {
	@Autowired
	UsersMapper um;
	
    @Autowired
    KakaoService kakaoService;
    
    @Autowired
    NaverLoginBO naverLoginBO;
	
	@RequestMapping("/login")
	public String userLogin(Model model, HttpSession session) {
		model.addAttribute("user", um.getUser());
		
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //네이버 
        model.addAttribute("url", naverAuthUrl);
		
		return "/login/login";
	}
	
    @RequestMapping("/kakaoLogin")
    public String home(@RequestParam(value = "code", required = false) String code, Model model) throws Exception{
        String access_Token = kakaoService.getAccessToken(code);
        HashMap<String, Object> userInfo = kakaoService.getUserInfo(access_Token);           
        
        model.addAttribute("access_Token",access_Token);
        model.addAttribute("email", userInfo.get("email"));
        model.addAttribute("name", userInfo.get("nickname"));
              
        return "/login/kakao";
    }
	
    @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, HttpServletRequest request)
            throws IOException {
    	
    	request.setCharacterEncoding("UTF-8");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
        String apiResult = naverLoginBO.getUserProfile(oauthToken);
        
        
        
        model.addAttribute("result", apiResult);
 
        /* 네이버 로그인 성공 페이지 View 호출 */
        return "/login/naver";
    }
	
 }
	


















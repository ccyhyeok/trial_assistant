package com.assistant.trial;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChunController {
	
	@GetMapping("/chun1")
	public String chun1() {
		
		return "helper_input/helper_input_indiv";
	}
	/*
	뭐가 바뀐거에요? 
	아까 pr 재요청 했을 떄 말씀이세요??네 제가 컨트롤러 만들라고 했을 때랑 이거 아~까 pr보냈던거랑 뭔차인지를 모르겠어요
	아ㅏ까는 파일 이륾 생성할 떄 chun.java라 생성 -> class chun 이었는데
	bash 하는 과정에서 파일 이름을 chun.java에서 ChunController.java라고 바꿔서 클래스에 밑줄뜨더라고여
	그거 바꾸려고 했던겁니다 ㅋㅋㅋ
	잠시만요
	
	*/
	
	@GetMapping("/chun2")
	public String chun2() {
		
		return "helper_input/helper_input_com_lookup";
	}
	
	
	@GetMapping("/chun1")
	public String chun3() {
		
		return "helper_input/helper_input_indiv";
	}
}

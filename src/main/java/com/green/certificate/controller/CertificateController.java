package com.green.certificate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/certificate")
public class CertificateController {
	
	@RequestMapping("/certificate")
	public String certificate() {
		return"/certificate/certificate";
	}

}

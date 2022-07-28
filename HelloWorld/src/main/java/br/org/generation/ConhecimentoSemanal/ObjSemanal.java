package br.org.generation.ConhecimentoSemanal;

	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RestController;

	@RestController
	@RequestMapping("/objsemanal")
	public class ObjSemanal {
	@GetMapping
	public String ObjSemanal() {
		
		return "Na gen, aprender sobre SQL, iniciar SpringBoot"
				+ "- Aprender outros conteudos externos (front end)";	
	}

	}




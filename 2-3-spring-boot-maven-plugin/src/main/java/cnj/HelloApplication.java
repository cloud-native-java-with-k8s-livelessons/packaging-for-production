package cnj;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Collections;
import java.util.Map;

@Controller
@SpringBootApplication
public class HelloApplication {

	@ResponseBody
	@GetMapping("/")
	Map<String, String> hello() {
		return Collections.singletonMap("message", "Hello, cloud!");
	}

	public static void main(String[] args) {
		SpringApplication.run(HelloApplication.class, args);
	}
}

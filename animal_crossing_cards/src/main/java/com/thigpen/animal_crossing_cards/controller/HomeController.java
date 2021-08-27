package com.thigpen.animal_crossing_cards.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.thigpen.animal_crossing_cards.models.AnimalC;
import com.thigpen.animal_crossing_cards.services.AnimalCServices;

@Controller
public class HomeController {
	
	@Autowired
	private AnimalCServices animalServ;
	
	@GetMapping("/")
	public String getStuffAPI() throws Exception {
		
//		for(int i=1; i<392; i++) {
//		String host = "http://acnhapi.com/v1/villagers/";
//		String charset = "UTF-8";
//		// Headers for a request
//		String x_rapidapi_host = "acnhapi.com/v1/villagers/";
//		HttpResponse<JsonNode> response = Unirest.get(host + i).header("x-rapidapi-host", x_rapidapi_host).asJson();
////	    	    System.out.println(response.getStatus());
////	    	    System.out.println(response.getHeaders().get("Content-Type"));
//
//		Gson gson = new GsonBuilder().setPrettyPrinting().create();
//		JsonParser jp = new JsonParser();
//		JsonElement je = jp.parse(response.getBody().toString());
//		String prettyJsonString = gson.toJson(je);
//		JSONObject json = new JSONObject(prettyJsonString);
//		
//		JSONObject name1 = json.getJSONObject("name");		
//		String name = (String)name1.get("name-USen");	
//		String hobby = (String) json.get("hobby");
//		String personality = (String) json.get("personality");
//		String species = (String) json.get("species");
//		String bday = (String) json.get("birthday-string");
//		String gender = (String) json.get("gender");
//		String catchphrase = (String) json.get("catch-phrase");
//		String icon_url = (String) json.get("icon_uri");
//		String img_url = (String) json.get("image_uri");
//		String bubble_color = (String) json.get("bubble-color");
//		String text_color = (String) json.get("text-color");
//		String saying = (String) json.get("saying");
//		AnimalC test = new AnimalC(name, personality, bday, species, gender, hobby, catchphrase, icon_url, img_url, bubble_color, text_color, saying);
//		this.animalServ.createAnimal(test);
//		}
		return "redirect:/home";
		
	}
	
	@GetMapping("/home")
	public String dashboard(Model model) {
		List<AnimalC> allanimals = this.animalServ.findAll();
		model.addAttribute("allanimals",allanimals);
		
		return "index.jsp";
	}
	
	@GetMapping("/show/{id}")
	public String show(@PathVariable("id")Long id,Model model) {
		AnimalC animal = this.animalServ.findanimal(id);
		model.addAttribute("ani",animal);
		return "show.jsp";
	}
	
	
	//sending a string with whatever is in the search box. and put it to the request param
	@RequestMapping(value="/search/", method=RequestMethod.POST) 
    public String search(@RequestParam(value="search") String search) {
//		System.out.println(search);
    	

    	return "redirect:/search/" + search;	
    }
	
	//return that request param and become a pathvariable called search
	//it contains the string from the post request.
	 @RequestMapping(value="/search/{search}")
	    public String showArtist(Model model,@PathVariable("search") String search) {
		 
		 
	    	List<AnimalC> animals = animalServ.findBySpecies(search);
	    	List<AnimalC> animalnames = animalServ.findBYname(search);
	    	List<AnimalC> gender = animalServ.findBYgender(search);
	    	
	    	model.addAttribute("searched", search);
	    	
	        model.addAttribute("animals", animals);
	        
	        model.addAttribute("animalnames",animalnames);
	        
	        model.addAttribute("gender", gender);
	    
	        return "/searchedSpecies.jsp";
	}
	
//	@PostMapping("/home/search")
//	public String search(@RequestParam("species") String species) {
//		model.addAttribute("animals", animalServ.findBySpecies(species));
//		model.addAttribute("species", species);
//		return "/home/searchedSpecies.jsp";
//		
//		
//	}
//	
	
	
	

}













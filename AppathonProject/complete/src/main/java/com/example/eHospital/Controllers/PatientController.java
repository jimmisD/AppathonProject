package com.example.eHospital;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;

@Controller
@CrossOrigin
@RequestMapping(path="/patient") // This means URL's start with /demo (after Application path)
public class PatientController {
    @Autowired // This means to get the bean called userRepository
    // Which is auto-generated by Spring, we will use it to handle the data
    private PatientRepository patientRepository;

    @PostMapping(path="/add") // Map ONLY POST Requests
    public @ResponseBody String addNewPatient (@RequestParam String first_name , @RequestParam String last_name, @RequestParam String situation
            , @RequestParam String email , @RequestParam String phone_number) {
        // @ResponseBody means the returned String is the response, not a view name
        // @RequestParam means it is a parameter from the GET or POST request

        Patient n = new Patient();
        n.setFirst_name(first_name);
        n.setLast_name(last_name);
        n.setSituation(situation);
        n.setEmail(email);
        n.setPhone_number(phone_number);
        patientRepository.save(n);
        return "Saved";
    }

    @GetMapping(path="/all")
    public @ResponseBody Iterable<Patient> getAllPatients() {
        // This returns a JSON or XML with the users
        return patientRepository.findAll();
    }
}
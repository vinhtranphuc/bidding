package com.so.controller.cms;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cms/bidding")
public class BiddingController {

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public String overview(Model model) {
        return "cms/bidding/index";
    }
}

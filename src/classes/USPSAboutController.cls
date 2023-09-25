//
//  USPS about controller class
//
//  Copyright (c) 2014-2024 Code Construct Systems
//
public with sharing class USPSAboutController {
    public PageReference back() {
        PageReference redirect = new PageReference('/apex/USPS');
        redirect.setRedirect(true);
        return redirect;
    }
}
//
//  USPS About controller class.
//
//  Copyright (c) 2014-2023 Wiregrass Code Technology
//
public with sharing class USPSAboutController {
    public PageReference back() {
        PageReference redirect = new PageReference('/apex/USPS');
        redirect.setRedirect(true);
        return redirect;
    }
}
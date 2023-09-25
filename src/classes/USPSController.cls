//
//  USPS controller class
//
//  Copyright (c) 2014-2024 Code Construct Systems
//
public with sharing class USPSController {
    public String option { get; set; }

    // Class constructor

    public USPSController() {
        System.LoggingLevel level = LoggingLevel.DEBUG;
        option = '1';
    }

    // Next action controller    

    public PageReference next() {
        PageReference redirect = null;
        if (option.Equals('1')) {
            redirect = new PageReference('/apex/USPSAddress');
        }
        if (option.Equals('2')) {
            redirect = new PageReference('/apex/USPSZIPCodeSearch');
        }
        if (option.Equals('3')) {
            redirect = new PageReference('/apex/USPSCityStateSearch');
        }
        if (option.Equals('4')) {
            redirect = new PageReference('/apex/USPSAbout');
        }
        if (redirect != null) {
            redirect.setRedirect(true);
            return redirect;
        }
        return null;
    }
}
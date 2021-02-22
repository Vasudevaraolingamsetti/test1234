*** Settings ***
Library    SeleniumLibrary   # To use the selenium we need to write selenium library 
Resource    ../../resources/utils/browser_utils.robot
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/components/flights_resource.robot

Test Template    search flights with valid fields

Test Teardown    kill browser

*** Keywords ***
search flights with valid fields  
    [Arguments]    ${from_loc}    ${to_loc}  
    open browser and invoke app
    open browser and invoke app
    verify homepage
    perform search flights    ${from_loc}    ${to_loc}
    kill browser


*** Test Cases ***
# Searching these flights by giving as parameter and we are searching for two ways, now we need to pass the paramerts in arguments in 'Keyword' section

Tc01 search flights between hyd and bang    Hyderabad, IN - Rajiv Gandhi International (HYD)    Bangalore, IN - Kempegowda International Airport (BLR)
Tc02 search flights between bang and hyd    Bangalore, IN - Kempegowda International Airport (BLR)    Hyderabad, IN - Rajiv Gandhi International (HYD)
Tc03 search flights between tirupati and hyd    Tirupati, IN - Tirupati (TIR)    Hyderabad, IN - Rajiv Gandhi International (HYD)
        
     # This type of test is called data driven tests

    
    
    



    
       
   # ${res}    Get Text    //h2[contains(text(),'Fly anywhere. Fly everywhere.')]  
   # ${attr}   Get Element Attribute    //input[@id='RoundTrip']    value  
       
    
                            
    
        
    
    
    

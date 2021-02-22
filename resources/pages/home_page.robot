*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
# To maintain in Page object model

#${xpath_text_searchflights}    //h1[contains(text(),'Search flights')]   # This is locator value 

*** Keywords ***
verify homepage
    #Wait Until Element Is Not Visible    ${xpath_text_searchflights}    20
    Element Should Be Visible    //h1[contains(text(),'Search flights')]  # This is action item on that element to verify or search
    
    
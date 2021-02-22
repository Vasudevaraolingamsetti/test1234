*** Settings ***
Library    SeleniumLibrary    



*** Keywords ***
perform search flights
    [Arguments]    ${from_loc}    ${to_loc}
    Click Element   //input[@id='OneWay']
    sleep    5
    Click Element    //input[@id='RoundTrip']
    Input Text    //input[@id='FromTag']    ${from_loc}
    Input Text    //input[@id='ToTag']    ${to_loc}   
    Click Element    //body/section[@id='Home']/div[1]/div[1]/div[1]/form[1]/div[4]/section[2]/div[1]/dl[1]/dd[1]/div[1]/a[1]/i[1]    
    Click Element    //body[1]/div[2]/div[1]/table[1]/tbody[1]/tr[4]/td[3]/a[1]
    Click Element    //body/section[@id='Home']/div[1]/div[1]/div[1]/form[1]/div[4]/section[2]/div[3]/dl[1]/dd[1]/div[1]/a[1]/i[1]
    Click Element    //body[1]/div[2]/div[1]/table[1]/tbody[1]/tr[4]/td[7]/a[1]
    Select From List By Index    //select[@id='Adults']    4
    Select From List By Index    //select[@id='Childrens']    2
    Select From List By Index    //select[@id='Infants']    2
    Click Button    //input[@id='SearchBtn'] 
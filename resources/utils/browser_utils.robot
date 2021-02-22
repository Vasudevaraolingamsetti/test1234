*** Settings ***
Library    SeleniumLibrary  
Resource    ../configration/gobal.robot  

*** Variables ***


*** Keywords ***
open browser and invoke app
    Open Browser    ${url}    ${browser}     
    Maximize Browser Window
kill browser
    Close All Browsers
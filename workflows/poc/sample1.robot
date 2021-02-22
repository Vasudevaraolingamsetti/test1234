
*** Variables ***
${url}    www.google.com
${value}    10
${bool}    True
${float}    23.45
@{list}    23    12    35    90     # For this we need to give indexing
&{dict}    1=vasu    2=sindhu    3=vasudevsindhu        # To get key values





*** Test Cases ***
Sample test case 01
    log    ${dict}[3]
    
    
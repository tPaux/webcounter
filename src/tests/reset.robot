*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Click  Button >> text=Nollaa
    Get Title    ==    Laskuri
    Get Text  body  *=  nappia painettu 0 kertaa

When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click  Button >> text=Paina
    Click  Button >> text=Paina
    Click  Button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa

*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Click  Button >> text=Nollaa
    Get Title  ==  Laskuri
    Get Text  body  *=  nappia painettu 0 kertaa

When new value is set value is updated
    Go To  ${HOME_URL}
    Fill Text  input  10
    Click    button >> text=Aseta
    Get Text  body  *=  10

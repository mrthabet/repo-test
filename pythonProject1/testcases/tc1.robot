*** Settings ***
Library         Selenium2Library
Suite Setup     Open Browser  https://www.google.com  Chrome
Test Setup      Maximize Browser Window

*** Test Cases ***
Test Search Google
    Input Text  id:q  الدعاء الستجاب
    Press Enter
    Click Element  xpath://h3[@class="r"]/a

*** Keywords ***

Open Browser
    [Arguments]  ${url}  ${browser}
    Create Webdriver  ${browser}
    Go To  ${url}

Maximize Browser Window
    Maximize Window

Input Text
    [Arguments]  ${locator}  ${text}
    Input Text  ${locator}  ${text}

Press Enter
    Press Keys  ${locator}  \\n

Click Element
    [Arguments]  ${locator}
    Click Element  ${locator}

***Teardown ***
Close Browser

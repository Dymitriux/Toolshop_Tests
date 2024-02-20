*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    ../libs/BrowserManager.py
Variables    ../locators/common_locators.py

*** Variables ***
# Available browsers: chrome, firefox, edge
${browser}    chrome

*** Keywords ***
Open page
    ${path}    download driver return path    ${browser}
    Open Browser    https://practicesoftwaretesting.com/  ${browser}  executable_path = ${path}
    Set Selenium Implicit Wait    5

*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables    ../locators/common_locators.py

*** Keywords ***
Open page
     Open Browser    https://practicesoftwaretesting.com/  Chrome  executable_path = D:/Projects/Drivers/chromedriver.exe
#     Set Selenium Implicit Wait    5


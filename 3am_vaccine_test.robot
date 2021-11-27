*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://vaccine-haven.herokuapp.com/
${Browser}  chrome
${my_citizen_id}  9621054602148
${choose_site}  OGYHSite
${selected_vaccine}  Pfizer

*** Keywords ***
Open the Vaccine Heaven Website
   Open Browser  ${url}  ${Browser}
   Maximize Browser Window
   Set Selenium Speed   0.5
   Page Should Contain 	 text=Vaccine Haven
   Page Should Contain 	 text=Vaccine for everyone

Select My Info on Home Page
   Element should be visible    link:My Info
   Page Should Contain Element  xpath=//a[@class="white"]

Select Walk In on Home Page
   Element should be visible    link:Walk-in
   Page Should Contain Element  xpath=//a[@class="white"]

Select Register Menu
   Click Element  xpath://*[@id="dropdown"]/text
   Click link  link:Reservation

Make Reservation
   Input Text  name=citizen_id  ${my_citizen_id}
   Click Element  xpath=//select[@name="site_name"]
   Click Element  xpath=//option[@value="OGYHSite"]
   Click Element  xpath=//select[@name="vaccine_name"]
   Click Element  xpath=//option[@value="Pfizer"]
   Click Button   xpath://button[@type='submit']

Check Information
   Click link  link=My Info
   Input Text  name=citizen_id  ${my_citizen_id}
   Click Button   xpath://button[@type='submit']
   Page Should Contain  Setthanat
   Page Should Contain  Kladee
   Page Should Contain  ${selected_vaccine}

Cancel The Queue
   Click Button  id=cancel__btn

Go To Home Page
    Click Element  id=nav__home__link
*** Test Cases ***
Test 1 Website is available
   Open the Vaccine Heaven Website

Test 2 Verify my info button exist
   Select My Info on Home Page

Test 3 Verify walk-in button exist
   Select Walk In on Home Page

Test 4 Select the resevation menu
   Select Register Menu

Test 5 Try to make a reservation
   Make Reservation
   Go To Home Page

Test 6 Check our reservation is exist
   Check Information

Test 7 Cancel the Queue
   Cancel The Queue

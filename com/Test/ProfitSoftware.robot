*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://profitsoftware.com/
${Browser}      chrome
*** Test Case ***
Open Page
    open browser    ${url}      ${Browser}
    maximize browser window
    click element   xpath://li[@id='menu-item-13360']
    click element   xpath://span[contains(text(),'Job openings')]
    click element   xpath://span[@title='Test Automation Engineer']
    sleep   2
    title should be     Test Automation Engineer - Profit Software
    close browser


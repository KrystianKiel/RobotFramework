*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Valid Registration
    [Documentation]    Ensure that a user can register with valid details.
    [Tags]    positive
    Open Browser To Registration Page
    Wait Until Element Is Visible   ${WARUNKI}
    Sleep    1s
    Click Button    ${WARUNKI}
    Input Text    ${USERNAME_REGISTRATION}    ${VALID_EMAIL_REGISTRATION}
    Sleep    1s
    Click Element    ${DALEJ}
	Wait Until Element Is Visible   ${NEW_PASSWORD}
    Input Text    ${NEW_PASSWORD}    ${VALID_PASSWORD}
    Sleep    1s
    Click Element    ${DALEJ}
	Wait Until Element Is Visible   ${DISPLAY_NAME}
    Input Text    ${DISPLAY_NAME}    ${VALID_USERNAME_REGISTRATION}
    Input Text    id=day   ${DAY}
    Input Text    id=year   ${YEAR}
    Click Element    id=month
    Click Element    xpath=//*[@id="month"]/option[6]
    Click Element    xpath=//span[text()='Mężczyzna']
    Click Element    ${DALEJ}
    Click Element    xpath=//*[text()='Akceptuję ']
    Click Element    xpath=//*[text()='Zarejestruj się']
    Wait Until Element Is Visible    id=Desktop_LeftSidebar_Id

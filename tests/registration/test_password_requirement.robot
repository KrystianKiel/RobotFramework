*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Password Requirement - too short
    [Documentation]    Ensure that the password meets the strength requirements.
    [Tags]    negative
    Open Browser To Registration Page
    Wait Until Element Is Visible   ${WARUNKI}
    Sleep    1s
    Click Button    ${WARUNKI}
    Input Text    ${USERNAME_REGISTRATION}    ${VALID_EMAIL_PASSWORD_CHECK}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   ${NEW_PASSWORD}
    Input Text    ${NEW_PASSWORD}    ${WEAK_PASSWORD}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   xpath=//span[text()='Nie zawiera. ,']

Password Requirement - without digits or special character
    [Documentation]    Ensure that the password meets the strength requirements.
    [Tags]    negative
    Open Browser To Registration Page
    Wait Until Element Is Visible   ${WARUNKI}
    Sleep    1s
    Click Button    ${WARUNKI}
    Input Text    ${USERNAME_REGISTRATION}    ${VALID_EMAIL_PASSWORD_CHECK}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   ${NEW_PASSWORD}
    Input Text    ${NEW_PASSWORD}    ${WEAK_PASSWORD_NODIGIT}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   xpath=//span[text()='Nie zawiera. ,']

Password Requirement - without letters
    [Documentation]    Ensure that the password meets the strength requirements.
    [Tags]    negative
    Open Browser To Registration Page
    Wait Until Element Is Visible   ${WARUNKI}
    Sleep    1s
    Click Button    ${WARUNKI}
    Input Text    ${USERNAME_REGISTRATION}    ${VALID_EMAIL_PASSWORD_CHECK}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   ${NEW_PASSWORD}
    Input Text    ${NEW_PASSWORD}    ${WEAK_PASSWORD}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   xpath=//span[text()='Nie zawiera. ,']

Password Requirement - too long
    [Documentation]    Ensure that the password meets the strength requirements.
    [Tags]    negative
    Open Browser To Registration Page
    Wait Until Element Is Visible   ${WARUNKI}
    Sleep    1s
    Click Button    ${WARUNKI}
    Input Text    ${USERNAME_REGISTRATION}    ${VALID_EMAIL_PASSWORD_CHECK}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   ${NEW_PASSWORD}
    Input Text    ${NEW_PASSWORD}    ${WEAK_PASSWORD_TOO_LONG}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible   id=password-error-message

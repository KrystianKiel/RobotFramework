*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Invalid Email Format Registration
    [Documentation]    Ensure that a user cannot register with an invalid email format.
    [Tags]    negative
    Open Browser To Registration Page
    Wait Until Element Is Visible   ${WARUNKI}
    Sleep    1s
    Click Button    ${WARUNKI}
    Input Text    ${USERNAME_REGISTRATION}    ${INVALID_EMAIL_FORMAT}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible    id=username-error-message

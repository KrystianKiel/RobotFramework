*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords.robot
Resource    ../../resources/variables.robot
Suite Teardown    Close Browser

*** Test Cases ***
Registration with Existing Email
    [Documentation]    Ensure that a user cannot register with an email that is already in use.
    [Tags]    negative
    Open Browser To Registration Page
    Wait Until Element Is Visible   ${WARUNKI}
    Sleep    1s
    Click Button    ${WARUNKI}
    Input Text    ${USERNAME_REGISTRATION}    ${VALID_EMAIL_LOGIN}
    Sleep    1s
    Click Element    ${DALEJ}
    Wait Until Element Is Visible    xpath=//*[text()='Istnieje już konto zarejestrowane na ten adres e-mail. ']

*** Keywords ***
Open Browser To Registration Page
    Open Browser    ${URL}/signup    ${BROWSER}
    Maximize Browser Window

Open Browser To Login Page
    Open Browser    ${URL}/login    ${BROWSER}
    Maximize Browser Window

Open Browser To Forgot Password Page
    Open Browser    ${URL}/password-reset   ${BROWSER}
    Maximize Browser Window

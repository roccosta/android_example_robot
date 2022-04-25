* Keywords *
Open the Contact Manager
  open Application  http://localhost:4723/wd/hub
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}
  ...  platformVersion=${ANDROID_PLATFORM_VERSION12}
  ...  deviceName=Galaxy Z Fold 3
  ...  appPackage=${APP_WAIT_PACKAGE}
  ...  appActivity=${APP_WAIT_ACTIVITY}

Given that I access the Contact Manager
  Wait and click  ${CONTINUE_BUTTON}
  Wait and click  ${OK_BUTTON}
  Wait and click  ${CREATE_CONTACT_BUTTON}

When I create a new contact filling all the fields
  wait and click  ${TARGET_ACCOUNT_DROPDOWN}
  wait and click  ${GOOGLE_ACCOUNT_OPTION}
  Wait and Type   ${CONTACT_NAME_FIELD}       ${CONTACT_NAME}
  Wait and Type   ${CONTACT_PHONE_FIELD}      ${CONTACT_PHONE}
  Wait and Type   ${CONTACT_MAIL_FIELD}       ${CONTACT_MAIL}
  Wait and click  ${SAVE_CONTACT_BUTTON}

Then I must see it on the contact list at home
  Wait Until Page Contains  ${CONTACT_NAME}

Wait and click
  [ARGUMENTS]  ${LOCATOR}=  ${TIMEOUT}=30s
  Wait Until Page Contains Element  ${LOCATOR}  ${TIMEOUT}
  click element  ${LOCATOR}

Wait and type
  [ARGUMENTS]  ${LOCATOR}=  ${TEXT}=  ${TIMEOUT}=30s
  Wait Until Page Contains Element  ${LOCATOR}  ${TIMEOUT}
  input text  ${LOCATOR}  ${TEXT}

Close the Contact Manager
  Close Application
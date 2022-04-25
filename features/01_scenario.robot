*** Settings ***
Resource          ../page_objects/page_objects.robot
#Suite Setup  Abrir o App
Suite Setup  Open the Contact Manager
Suite Teardown  close the Contact Manager

*** Tasks ***
Create a New Contact
  Given that I access the Contact Manager
  When I create a new contact filling all the fields
  Then I must see it on the contact list at home
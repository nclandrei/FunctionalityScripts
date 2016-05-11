require 'rubygems'
require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new(:chrome)
browser.goto 'https://uogstudents.mycampus.gla.ac.uk/psp/campus/EMPLOYEE/HRMS/c/SA_LEARNER_SERVICES.SSS_STUDENT_CENTER.GBL?PORTALPARAM_PTCNAV=HC_SSS_STUDENT_CENTER&EOPP.SCNode=HRMS&EOPP.SCPortal=EMPLOYEE&EOPP.SCName=CO_EMPLOYEE_SELF_SERVICE&EOPP.SCLabel=Self%20Service&EOPP.SCPTfname=CO_EMPLOYEE_SELF_SERVICE&FolderPath=PORTAL_ROOT_OBJECT.CO_EMPLOYEE_SELF_SERVICE.HC_SSS_STUDENT_CENTER&IsFolder=false'

browser.text_field(:id => 'userid').set '2147392n'
browser.text_field(:id => 'pwd').set 'CoriNico9594GLA'

browser.input(:name => 'Submit').click

browser.link(:id,
'DERIVED_SSS_SCR_SSS_LINK_ANCHOR6').wait_until_present.click

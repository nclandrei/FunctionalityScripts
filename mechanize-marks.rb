require 'mechanize'
require 'rubygems'

agent = Mechanize.new
page =
agent.get('https://uogstudents.mycampus.gla.ac.uk/psp/campus/EMPLOYEE/HRMS/c/SA_LEARNER_SERVICES.SSS_STUDENT_CENTER.GBL?PORTALPARAM_PTCNAV=HC_SSS_STUDENT_CENTER&EOPP.SCNode=HRMS&EOPP.SCPortal=EMPLOYEE&EOPP.SCName=CO_EMPLOYEE_SELF_SERVICE&EOPP.SCLabel=Self%20Service&EOPP.SCPTfname=CO_EMPLOYEE_SELF_SERVICE&FolderPath=PORTAL_ROOT_OBJECT.CO_EMPLOYEE_SELF_SERVICE.HC_SSS_STUDENT_CENTER&IsFolder=false')

# change user and password with your credentials
login_form = page.form('login')
login_form.userid = '2147392n'
login_form.pwd = 'CoriNico9594GLA'

# got to the Student Center page
page = agent.submit(login_form)
next_page = @page.at("#DERIVED_SSS_SCR_SSS_LINK_ANCHOR6")
agent.click(next_page)

pp next_page

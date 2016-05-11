require 'mechanize'
require 'rubygems'

agent = Mechanize.new
page =
agent.get('https://uogstudents.mycampus.gla.ac.uk/psp/campus/EMPLOYEE/HRMS/c/SA_LEARNER_SERVICES.SSS_STUDENT_CENTER.GBL?PORTALPARAM_PTCNAV=HC_SSS_STUDENT_CENTER&EOPP.SCNode=HRMS&EOPP.SCPortal=EMPLOYEE&EOPP.SCName=CO_EMPLOYEE_SELF_SERVICE&EOPP.SCLabel=Self%20Service&EOPP.SCPTfname=CO_EMPLOYEE_SELF_SERVICE&FolderPath=PORTAL_ROOT_OBJECT.CO_EMPLOYEE_SELF_SERVICE.HC_SSS_STUDENT_CENTER&IsFolder=false')

login_form = page.form('login')
login_form.userid = 'user'
login_form.pwd = 'password'

page = agent.submit(login_form)
pp page

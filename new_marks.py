# useful script for University of Glasgow CS/SE students who returns if
# you've received any new grades for your courses without needing to go to the website
# everytime; just include it in your bashrc/bash_profile to run automatically
# when opening a new shell 

from lxml import html
import requests
import time

page = requests.get('https://studentltc.dcs.gla.ac.uk/', verify=False)
tree = html.fromstring(page.content)

all_pars = tree.xpath('//p')
all_pars_content = [p.text_content() for p in all_pars]

current_date = time.strftime("%-d/%-m/%Y")
classes = ["OS", "NS", "DB", "IS", "PL", "TP", "AP", "PSI", "PSD"]

position = all_pars_content[0].find(current_date)
flag = 0

while position != -1 and flag == 0:
    for x in classes:
        new_pos = position + len(current_date) + 2
        if all_pars_content[0][new_pos:new_pos+len(x)] == x:
            print "New marks for " + x + "!"
            flag = 1
    if flag == 1:
        break
    else:
        position = all_pars_content[0].find(current_date, position + 1)

if flag == 0:
    print "No new marks today!"

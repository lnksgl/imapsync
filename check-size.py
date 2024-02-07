import os
import time
import smtplib
import sys
import glob

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from collections import deque

def getFile():
  firstSize = 1;
  secondSize = 0;

  while firstSize != secondSize:
    firstSize = os.path.getsize(filePath);

    time.sleep(90);

    secondSize = os.path.getsize(filePath);

  return True;

def findStatus(infoLog):
  for info in infoLog:
    if info.find("Exiting with return value 161") == 0:
      return 0;
    elif info.find("Exiting with return value 0") == 0:
      return 1;
  return -1;

def sendMail(option):
  smtp_server = smtplib.SMTP(os.environ['SMTP'], 587);
  smtp_server.starttls();
  smtp_server.login(os.environ['EMAIL'], os.environ['EMAIL_PASSWORD']);

  msg = MIMEMultipart();
  msg["From"] = os.environ['EMAIL']
  msg["To"] = "support@hb.by";
  msg["Subject"] = option[0];

  msg.attach(MIMEText(option[1], "plain"));

  smtp_server.sendmail(os.environ['EMAIL'], "support@hb.by", msg.as_string());

  smtp_server.quit();

def generateOption():
  infoLog = [];
  with open(filePath) as f:
        infoLog = list(deque(f, 13))

  status = findStatus(infoLog)

  if status  == 1:

    return ["Оценка дискового пространства почтового ящика выполнена.", " Оценка дискового пространства для " + sys.argv[1] + " и " + sys.argv[2] + " выполнена.\n" + "Дисковое пространство " + sys.argv[1] + " составляет - " + infoLog[1][infoLog[1].find("(")+1:infoLog[1].find(")")] + "; Дисковое пространство " + sys.argv[2] + " составляет - " + infoLog[2][infoLog[2].find("(")+1:infoLog[2].find(")")]
 + "\nПроверьте, лог-файл - http://migrator.triincom.by/cron/LOG_imapsync/" + filePath[32:]];
  elif status == 0:
    return ["Оценка дискового пространства почтового ящика не выполнена", "Оценка дискового пространства для " + sys.argv[1] + " и " + sys.argv[2] + " не выполнена.\n Проверьте, лог-файл - http://migrator.triincom.by/cron/LOG_imapsync/" + filePath[32:]];
  return -1;
  
os.system('chmod 777 /var/www/html/cron/' + sys.argv[3] + '.sh');
os.system('sh /var/www/html/cron/' + sys.argv[3] + '.sh');

filePath = '/var/www/html/cron/LOG_imapsync/' + sys.argv[3] + '.txt';

if getFile():
  sendMail(generateOption());



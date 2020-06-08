import re
import sys
from signal import SIGINT
import subprocess
from subprocess import Popen
from src.getdb_message import querydatatable
from pyswip import Prolog

def check_sw(message):
    try:
        try:
            Prolog().consult('covidprolog.pl')
        except:
            # subprocess.call([r'restartproject.bat'])
            pass
        check = bool([ans['X'] for ans in Prolog().query('world(X,[{}],[])'.format(message))])
        if check is True:
            x = [ans['X'] for ans in
                 Prolog().query('world(world_statistics(verbss(*), placewssw(X)) ,[{}],[])'.format(message))]
            message = querydatatable().query_worldtable(x)
        else:
            check = bool([ans['X'] for ans in Prolog().query('statistics(X,[{}],[])'.format(message))])
            if check is True:
                x = [ans['X'] for ans in Prolog().query('statistics(statistics(verbss(Y), placess(X)),[{}],[])'.format(message))]
                message = querydatatable().query_statisticsvietnamtable(x)
            else:
                check = bool([ans['X'] for ans in Prolog().query('patients(X,[{}],[])'.format(message))])
                if check is True:
                    x = [ans['X'] for ans in Prolog().query('patients(patients(placee(X)) ,[{}],[])'.format(message))]
                    message = querydatatable().query_patientstable(x)
                else:
                    check = bool([ans['X'] for ans in Prolog().query('aboutcovid19(X,[{}],[])'.format(message))])
                    if check is True:
                        x = [ans['X'] for ans in
                             Prolog().query('aboutcovid19(covid(cov(X)),[{}],[])'.format(message))]
                        message = querydatatable().query_aboutcovid19table(x)
        return message
    except:
        message = 'hệ thống chưa nhận diện được câu hỏi'
        return message
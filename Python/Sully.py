import os
import sys

if __name__ == "__main__":
    i = 5
    if i > 0:
        try:
            kidName = "Sully_"+str(i-1)+".py"
            kid = open(kidName,'w')
            s = "import os{0:c}import sys{0:c}{0:c}if __name__ == {1:c}__main__{1:c}:{0:c}    i = {2:d}{0:c}    if i > 0:{0:c}        try:{0:c}            kidName = {1:c}Sully_{1:c}+str(i-1)+{1:c}.py{1:c}{0:c}            kid = open(kidName,'w'){0:c}            s = {1:c}{s}{1:c}{0:c}            kid.write(s.format(10,34,i-1,s=s)){0:c}            kid.close(){0:c}            kidExec = {1:c}python3 {1:c} + kidName{0:c}            os.system(kidExec){0:c}        except:{0:c}            sys.exit(){0:c}"
            kid.write(s.format(10,34,i-1,s=s))
            kid.close()
            kidExec = "python3 " + kidName
            os.system(kidExec)
        except:
            sys.exit()

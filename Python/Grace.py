import sys
#Grace in Python, because it's GraceFull

try:
    kid = open("Grace_kid.py", 'w')
    s="import sys{0:c}#Grace in Python, because it's GraceFull{0:c}{0:c}try:{0:c}    kid = open({1:c}Grace_kid.py{1:c}, 'w'){0:c}    s={1:c}{s}{1:c}{0:c}    kid.write(s.format(10,34,s=s)){0:c}    kid.close(){0:c}except:{0:c}    sys.exit(){0:c}"
    kid.write(s.format(10,34,s=s))
    kid.close()
except:
    sys.exit()

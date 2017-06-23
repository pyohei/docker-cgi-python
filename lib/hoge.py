"""test script."""
from datetime import datetime

def hoge():
   f = datetime.now().strftime("%Y/%m/%d %H:%M:%S")
   return "<b>{}</b>".format(f)

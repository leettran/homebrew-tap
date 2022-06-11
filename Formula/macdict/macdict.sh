#!/bin/bash

export PYTHONPATH='/Library/Frameworks/Python.framework/Versions/3.9'

python - $* <<EOD
import DictionaryServices
import sys

reload(sys)
sys.setdefaultencoding('utf-8')
if len(sys.argv) > 1:
    print(sys.argv)
    s = ' '.join(sys.argv[1:])
    s_dict = None
    s_range = DictionaryServices.DCSGetTermRangeInString(s_dict, s, 0)
    s_definition = DictionaryServices.DCSCopyTextDefinition(s_dict, s, s_range)
    print('Definitions of <%s>\n%s' % (s, s_definition))
else:
    print('Usage: $0 <words>')
EOD
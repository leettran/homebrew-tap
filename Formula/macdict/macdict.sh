#!/usr/bin/env sh

export PYTHONPATH=/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/PyObjC

python2.7 - $* <<EOD
import DictionaryServices
import sys

reload(sys)
sys.setdefaultencoding('utf-8')
if len(sys.argv) > 1:
    print sys.argv
    s = ' '.join(sys.argv[1:])
    s_dict = None
    s_range = DictionaryServices.DCSGetTermRangeInString(s_dict, s, 0)
    s_definition = DictionaryServices.DCSCopyTextDefinition(s_dict, s, s_range)
    print 'Definitions of <%s>\n%s' % (s, s_definition)
else:
    print 'Usage: $0 <words>'
EOD
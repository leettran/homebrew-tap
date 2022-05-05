#!/usr/bin/python2.7

import DictionaryServices
import sys

reload(sys)
sys.setdefaultencoding('utf-8')
if len(sys.argv) > 1:
    s = ' '.join(sys.argv[1:])
    s_dict = None
    s_range = DictionaryServices.DCSGetTermRangeInString(s_dict, s, 0)
    s_definition = DictionaryServices.DCSCopyTextDefinition(s_dict, s, s_range)
    print 'Definitions of <%s>\n%s' % (s, s_definition)
else:
    print 'Usage: %s <words>' % sys.argv[0]
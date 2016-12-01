#!/usr/bin/env python

import crypt
import getpass
import sys.argv

print(crypt.crypt(getpass.getpass(), crypt.mksalt(crypt.METHOD_SHA512)))

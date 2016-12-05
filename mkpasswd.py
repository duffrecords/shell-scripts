#!/usr/bin/env python

import crypt
import getpass

print(crypt.crypt(getpass.getpass(), crypt.mksalt(crypt.METHOD_SHA512)[:11]))

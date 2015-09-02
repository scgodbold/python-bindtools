from bindtools.check_zone import CheckZone, CheckZoneException

c = CheckZone()
print('Checking good zone file')
print('-----------------------')
try:
    c.validate('test.com', 'zone-files/test.com')
    print('test.com zone file sucessfully loaded')
except CheckZoneException as e:
    print(e)

print('')
print('Checking bad zone file')
print('-----------------------')
try:
    c.validate('bad.com', 'zone-files/bad.com')
    print('bad.com zone file sucessfully loaded')
except CheckZoneException as e:
    print(e)

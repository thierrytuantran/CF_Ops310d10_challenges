import os

# Declare and initialize three variables
user_name = os.popen('whoami').read()
ip_address_info = os.popen('ip a').read()
hardware_info = os.popen('lshw -short').read()

# Output
print("Current User:", user_name)
print("IP Address Information: \n" + ip_address_info)
print("Hardware Information: \n" + hardware_info)


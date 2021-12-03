#!/bin/bash
# platform = multi_platform_rhel,multi_platform_ol

rm -f /etc/pam.d/postlogin
# pamd ansible module has a bug that if there is only one line in the file it raises an Out of Index exception
# so let's add more lines there
echo "session     optional                   pam_umask.so silent" >> /etc/pam.d/postlogin
echo "session     [success=1 default=ignore] pam_succeed_if.so service !~ gdm* service !~ su* quiet" >> /etc/pam.d/postlogin
echo "session required pam_lastlog.so silent showfailed" >> /etc/pam.d/postlogin

# platform = multi_platform_all
. /usr/share/scap-security-guide/remediation_functions
{{{ bash_instantiate_variables("var_logrotate_rotate_count") }}}

LOGROTATE_CONF_FILE="/etc/logrotate.conf"
CRON_DAILY_LOGROTATE_FILE="/etc/cron.daily/logrotate"

# daily rotation is configured
grep -q "^daily$" $LOGROTATE_CONF_FILE|| echo "daily" >> $LOGROTATE_CONF_FILE

# set rotate count if not configured
grep -q "^rotate[[:space:]]" $LOGROTATE_CONF_FILE|| echo "rotate $var_logrotate_rotate_count" >> $LOGROTATE_CONF_FILE

# fix rotate count if incorrect
if ! grep -q "^rotate[[:space:]]*$var_logrotate_rotate_count$"; then
	sed -i "s/^rotate.*$/rotate $var_logrotate_rotate_count/" $LOGROTATE_CONF_FILE
fi

# remove any line configuring weekly, monthly or yearly rotation
sed -i '/^\s*\(weekly\|monthly\|yearly\).*$/d' $LOGROTATE_CONF_FILE

# configure cron.daily if not already
if ! grep -q "^[[:space:]]*/usr/sbin/logrotate[[:alnum:][:blank:][:punct:]]*$LOGROTATE_CONF_FILE$" $CRON_DAILY_LOGROTATE_FILE; then
	echo "#!/bin/sh" > $CRON_DAILY_LOGROTATE_FILE
	echo "/usr/sbin/logrotate $LOGROTATE_CONF_FILE" >> $CRON_DAILY_LOGROTATE_FILE
fi

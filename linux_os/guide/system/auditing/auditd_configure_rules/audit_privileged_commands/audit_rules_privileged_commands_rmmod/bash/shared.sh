# platform = multi_platform_sle,multi_platform_rhel

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
{{{ bash_fix_audit_watch_rule("auditctl", "/sbin/rmmod", "x", "modules") }}}
{{{ bash_fix_audit_watch_rule("augenrules", "/sbin/rmmod", "x", "modules") }}}

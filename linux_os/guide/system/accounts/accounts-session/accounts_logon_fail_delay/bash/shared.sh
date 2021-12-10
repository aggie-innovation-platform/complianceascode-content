# platform = Red Hat Virtualization 4,multi_platform_rhel,multi_platform_wrlinux,multi_platform_ol
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Set variables
{{{ bash_instantiate_variables("var_accounts_fail_delay") }}}

{{{ bash_replace_or_append('/etc/login.defs', '^FAIL_DELAY', "$var_accounts_fail_delay", '@CCENUM@', '%s %s') }}}

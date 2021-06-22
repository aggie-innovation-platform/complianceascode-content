documentation_complete: true

title: 'TAMU Ubuntu 20.04 LTS Benchmark Draft'

description: |-
    This baseline draft aligns to the TAMU Controls Catalog for Ubuntu 20.04 LTS Benchmark.

selections:
    - partition_for_tmp
    - partition_for_var
    - partition_for_var_log
    - partition_for_var_log_audit
    - partition_for_home
    - sshd_allow_only_protocol2
    - sshd_disable_empty_passwords
    - sshd_disable_gssapi_auth
    - sshd_disable_kerb_auth
    - sshd_disable_rhosts
    - sshd_disable_root_login
    - sshd_disable_dns_checks
    - sshd_disable_x11_forwarding
    - sshd_do_not_permit_user_env
    - sshd_enable_strictmodes
    - sshd_enable_warning_banner
    - sshd_set_loglevel_info
    - sshd_use_priv_separation
    - sshd_idle_timeout_value=15_minutes
    - sshd_set_idle_timeout
    - sshd_set_keepalive
    - ensure_logrotate_activated
    - disable_host_auth
    - file_permissions_systemmap
    - file_permissions_etc_shadow
    - file_owner_etc_shadow
    - file_groupowner_etc_shadow
    - file_permissions_etc_gshadow
    - file_owner_backup_etc_shadow
    - file_groupowner_backup_etc_shadow
    - file_permissions_backup_etc_shadow
    - file_owner_etc_gshadow
    - file_groupowner_etc_gshadow
    - file_owner_backup_etc_gshadow
    - file_groupowner_backup_etc_gshadow
    - file_permissions_backup_etc_gshadow
    - file_permissions_etc_passwd
    - file_owner_etc_passwd
    - file_groupowner_etc_passwd
    - file_owner_backup_etc_passwd
    - file_groupowner_backup_etc_passwd
    - file_permissions_backup_etc_passwd
    - file_permissions_etc_group
    - file_owner_etc_group
    - file_groupowner_etc_group
    - file_owner_backup_etc_group
    - file_groupowner_backup_etc_group
    - file_permissions_backup_etc_group
    - file_permissions_sshd_private_key
    - file_permissions_sshd_pub_key
    - mount_option_dev_shm_nodev
    - mount_option_dev_shm_noexec
    - mount_option_dev_shm_nosuid
    - mount_option_home_nodev
    - mount_option_nodev_removable_partitions
    - mount_option_noexec_removable_partitions
    - mount_option_nosuid_removable_partitions
    - mount_option_tmp_nodev
    - mount_option_tmp_nosuid
    - mount_option_var_tmp_nodev
    - mount_option_var_tmp_noexec
    - mount_option_var_tmp_nosuid
    - package_audit_installed
    - package_cron_installed
    - package_timesyncd_installed
    - package_rsyslog_installed
    - package_telnetd_removed
    - package_inetutils-telnetd_removed
    - package_telnetd-ssl_removed
    - package_nis_removed
    - package_ntpdate_removed
    - package_openssh-server_installed
    - security_patches_up_to_date
    - file_owner_logfiles_value=syslog
    - rsyslog_files_ownership
    - file_groupowner_logfiles_value=adm
    - rsyslog_files_groupownership
    - rsyslog_files_permissions
    - ensure_logrotate_activated
    - service_auditd_enabled
    - service_cron_enabled
    - service_timesyncd_enabled
    - service_rsyslog_enabled
    - sysctl_fs_protected_hardlinks
    - sysctl_fs_protected_symlinks
    - sysctl_fs_suid_dumpable
    - sysctl_kernel_randomize_va_space
#    - package_ntp_installed
#    - service_ntp_enabled
    - service_apport_disabled
    - var_password_pam_remember=5
    - accounts_password_pam_pwhistory_remember
    - var_password_pam_minlen=20
    - accounts_password_pam_minlen
    - var_password_pam_maxrepeat=1
    - accounts_password_pam_maxrepeat
    - var_accounts_passwords_pam_faillock_deny=3
    - accounts_passwords_pam_faillock_deny
    - var_accounts_passwords_pam_faillock_unlock_time=900
    - accounts_passwords_pam_faillock_unlock_time
    - var_accounts_passwords_pam_faillock_fail_interval=900
    - accounts_passwords_pam_faillock_interval

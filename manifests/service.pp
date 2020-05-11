# @summary manage the docker service daemon
#
# @param tcp_bind
#   Which tcp port, if any, to bind the docker service to.
#
# @param ip_forward
#   This flag interacts with the IP forwarding setting on
#   your host system's kernel
#
# @param iptables
#   Enable Docker's addition of iptables rules
#
# @param ip_masq
#   Enable IP masquerading for bridge's IP range.
#
# @param socket_bind
#   Which local unix socket to bind the docker service to.
#
# @param socket_group
#   Which local unix socket to bind the docker service to.
#
# @param root_dir
#   Specify a non-standard root directory for docker.
#
# @param extra_parameters
#   Plain additional parameters to pass to the docker daemon
#
# @param shell_values
#   Array of shell values to pass into init script config files
#
# @param manage_service
#   Specify whether the service should be managed.
#   Valid values are 'true', 'false'.
#   Defaults to 'true'.
#
# @param docker_command
#
# @param docker_start_command
#
# @param service_name
#
# @param icc
#
# @param bridge
#
# @param fixed_cidr
#
# @param default_gateway
#
# @param ipv6
#
# @param ipv6_cidr
#
# @param default_gateway_ipv6
#
# @param log_level
#
# @param log_driver
#
# @param log_opt
#
# @param selinux_enabled
#
# @param labels
#
# @param dns
#
# @param dns_search
#
# @param service_state
#
# @param service_enable
#
# @param proxy
#
# @param no_proxy
#
# @param execdriver
#
# @param bip
#
# @param mtu
#
# @param storage_driver
#
# @param dm_basesize
#
# @param dm_fs
#
# @param dm_mkfsarg
#
# @param dm_mountopt
#
# @param dm_blocksize
#
# @param dm_loopdatasize
#
# @param dm_loopmetadatasize
#
# @param dm_datadev
#
# @param dm_metadatadev
#
# @param tmp_dir_config
#
# @param tmp_dir
#
# @param dm_thinpooldev
#
# @param dm_use_deferred_removal
#
# @param dm_use_deferred_deletion
#
# @param dm_blkdiscard
#
# @param dm_override_udev_sync_check
#
# @param overlay2_override_kernel_check
#
# @param storage_devs
#
# @param storage_vg
#
# @param storage_root_size
#
# @param storage_data_size
#
# @param storage_min_data_size
#
# @param storage_chunk_size
#
# @param storage_growpart
#
# @param storage_auto_extend_pool
#
# @param storage_pool_autoextend_threshold
#
# @param storage_pool_autoextend_percent
#
# @param storage_config
#
# @param storage_config_template
#
# @param storage_setup_file
#
# @param service_provider
#
# @param service_config
#
# @param service_config_template
#
# @param service_overrides_template
#
# @param socket_overrides_template
#
# @param socket_override
#
# @param service_after_override
#
# @param service_hasstatus
#
# @param service_hasrestart
#
# @param daemon_environment_files
#
# @param tls_enable
#
# @param tls_verify
#
# @param tls_cacert
#
# @param tls_cert
#
# @param tls_key
#
# @param registry_mirror
#
# @param root_dir_flag
#
class docker::service (
  $docker_command                    = $docker::docker_command,
  $docker_start_command              = $docker::docker_start_command,
  $service_name                      = $docker::service_name,
  $tcp_bind                          = $docker::tcp_bind,
  $ip_forward                        = $docker::ip_forward,
  $iptables                          = $docker::iptables,
  $ip_masq                           = $docker::ip_masq,
  $icc                               = $docker::icc,
  $bridge                            = $docker::bridge,
  $fixed_cidr                        = $docker::fixed_cidr,
  $default_gateway                   = $docker::default_gateway,
  $ipv6                              = $docker::ipv6,
  $ipv6_cidr                         = $docker::ipv6_cidr,
  $default_gateway_ipv6              = $docker::default_gateway_ipv6,
  $socket_bind                       = $docker::socket_bind,
  $log_level                         = $docker::log_level,
  $log_driver                        = $docker::log_driver,
  $log_opt                           = $docker::log_opt,
  $selinux_enabled                   = $docker::selinux_enabled,
  $socket_group                      = $docker::socket_group,
  $labels                            = $docker::labels,
  $dns                               = $docker::dns,
  $dns_search                        = $docker::dns_search,
  $service_state                     = $docker::service_state,
  $service_enable                    = $docker::service_enable,
  $manage_service                    = $docker::manage_service,
  $root_dir                          = $docker::root_dir,
  $extra_parameters                  = $docker::extra_parameters,
  $shell_values                      = $docker::shell_values,
  $proxy                             = $docker::proxy,
  $no_proxy                          = $docker::no_proxy,
  $execdriver                        = $docker::execdriver,
  $bip                               = $docker::bip,
  $mtu                               = $docker::mtu,
  $storage_driver                    = $docker::storage_driver,
  $dm_basesize                       = $docker::dm_basesize,
  $dm_fs                             = $docker::dm_fs,
  $dm_mkfsarg                        = $docker::dm_mkfsarg,
  $dm_mountopt                       = $docker::dm_mountopt,
  $dm_blocksize                      = $docker::dm_blocksize,
  $dm_loopdatasize                   = $docker::dm_loopdatasize,
  $dm_loopmetadatasize               = $docker::dm_loopmetadatasize,
  $dm_datadev                        = $docker::dm_datadev,
  $dm_metadatadev                    = $docker::dm_metadatadev,
  $tmp_dir_config                    = $docker::tmp_dir_config,
  $tmp_dir                           = $docker::tmp_dir,
  $dm_thinpooldev                    = $docker::dm_thinpooldev,
  $dm_use_deferred_removal           = $docker::dm_use_deferred_removal,
  $dm_use_deferred_deletion          = $docker::dm_use_deferred_deletion,
  $dm_blkdiscard                     = $docker::dm_blkdiscard,
  $dm_override_udev_sync_check       = $docker::dm_override_udev_sync_check,
  $overlay2_override_kernel_check    = $docker::overlay2_override_kernel_check,
  $storage_devs                      = $docker::storage_devs,
  $storage_vg                        = $docker::storage_vg,
  $storage_root_size                 = $docker::storage_root_size,
  $storage_data_size                 = $docker::storage_data_size,
  $storage_min_data_size             = $docker::storage_min_data_size,
  $storage_chunk_size                = $docker::storage_chunk_size,
  $storage_growpart                  = $docker::storage_growpart,
  $storage_auto_extend_pool          = $docker::storage_auto_extend_pool,
  $storage_pool_autoextend_threshold = $docker::storage_pool_autoextend_threshold,
  $storage_pool_autoextend_percent   = $docker::storage_pool_autoextend_percent,
  $storage_config                    = $docker::storage_config,
  $storage_config_template           = $docker::storage_config_template,
  $storage_setup_file                = $docker::storage_setup_file,
  $service_provider                  = $docker::service_provider,
  $service_config                    = $docker::service_config,
  $service_config_template           = $docker::service_config_template,
  $service_overrides_template        = $docker::service_overrides_template,
  $socket_overrides_template         = $docker::socket_overrides_template,
  $socket_override                   = $docker::socket_override,
  $service_after_override            = $docker::service_after_override,
  $service_hasstatus                 = $docker::service_hasstatus,
  $service_hasrestart                = $docker::service_hasrestart,
  $daemon_environment_files          = $docker::daemon_environment_files,
  $tls_enable                        = $docker::tls_enable,
  $tls_verify                        = $docker::tls_verify,
  $tls_cacert                        = $docker::tls_cacert,
  $tls_cert                          = $docker::tls_cert,
  $tls_key                           = $docker::tls_key,
  $registry_mirror                   = $docker::registry_mirror,
  $root_dir_flag                     = $docker::root_dir_flag,
) {
  unless $facts['os']['family'] =~ /(Debian|RedHat|windows)/ or $::docker::acknowledge_unsupported_os {
    fail(translate('The docker::service class needs a Debian, Redhat or Windows based system.'))
  }

  $dns_array              = any2array($dns)
  $dns_search_array       = any2array($dns_search)
  $labels_array           = any2array($labels)
  $extra_parameters_array = any2array($extra_parameters)
  $shell_values_array     = any2array($shell_values)
  $tcp_bind_array         = any2array($tcp_bind)

  if $service_config != undef {
    $_service_config = $service_config
  } else {
    if $facts['os']['family'] == 'Debian' {
      $_service_config = "/etc/default/${service_name}"
    } else {
      $_service_config = undef
    }
  }

  $_manage_service = $manage_service ? {
    true    => Service['docker'],
    default => [],
  }

  if $facts['os']['family'] == 'RedHat' {
    file { $storage_setup_file:
      ensure  => file,
      force   => true,
      content => template('docker/etc/sysconfig/docker-storage-setup.erb'),
      before  => $_manage_service,
      notify  => $_manage_service,
    }
  }

  if $facts['os']['family'] == 'windows' {
    $dirs = [
      "${::docker_program_data_path}/docker/",
      "${::docker_program_data_path}/docker/config/",
    ]

    $dirs.each |$dir| {
      file { $dir:
        ensure  => directory,
      }
    }
  }

  case $service_provider {
    'systemd': {
      file { '/etc/systemd/system/docker.service.d':
        ensure => 'directory',
      }

      if $service_overrides_template {
        file { '/etc/systemd/system/docker.service.d/service-overrides.conf':
          ensure  => file,
          content => template($service_overrides_template),
          notify  => Exec['docker-systemd-reload-before-service'],
          before  => $_manage_service,
        }
      }

      if $socket_override {
        file { '/etc/systemd/system/docker.socket.d':
          ensure => 'directory',
        }

        file { '/etc/systemd/system/docker.socket.d/socket-overrides.conf':
          ensure  => file,
          content => template($socket_overrides_template),
          notify  => Exec['docker-systemd-reload-before-service'],
          before  => $_manage_service,
        }
      }

      exec { 'docker-systemd-reload-before-service':
        path        => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', ],
        command     => 'systemctl daemon-reload > /dev/null',
        notify      => $_manage_service,
        refreshonly => true,
      }
    }
    'upstart': {
      file { '/etc/init.d/docker':
        ensure => 'link',
        target => '/lib/init/upstart-job',
        force  => true,
        notify => $_manage_service,
      }
    }
    default: {}
  }

  if $storage_config {
    file { $storage_config:
      ensure  => file,
      force   => true,
      content => template($storage_config_template),
      notify  => $_manage_service,
    }
  }

  if $_service_config {
    file { $_service_config:
      ensure  => file,
      force   => true,
      content => template($service_config_template),
      notify  => $_manage_service,
    }
  }

  if $manage_service {
    if $facts['os']['family'] == 'windows' {
      reboot { 'pending_reboot':
        when    => 'pending',
        onlyif  => 'component_based_servicing',
        timeout => 1,
      }
    }

    if ! defined(Service['docker']) {
      service { 'docker':
        ensure     => $service_state,
        name       => $service_name,
        enable     => $service_enable,
        hasstatus  => $service_hasstatus,
        hasrestart => $service_hasrestart,
        provider   => $service_provider,
      }
    }
  }
}

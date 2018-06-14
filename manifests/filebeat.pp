# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include elk::filebeat
class elk::filebeat {
    include elastic_stack::repo

    package { 'filebeat':
        ensure => present,
    }

    service { 'filebeat':
        ensure => running,
        enable => true,
        require => Package['filebeat'],
    }
}

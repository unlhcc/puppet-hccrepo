#
# Class hccrepo
#
# Sets up the HCC repositories
#

class hccrepo (
    $hccrepo_baseurl            = $hccrepo::params::hccrepo_baseurl,
    $hccrepo_enabled            = $hccrepo::params::hccrepo_enabled,
    $hccrepo_gpgcheck           = $hccrepo::params::hccrepo_gpgcheck,
    $hccrepo_gpgkey             = $hccrepo::params::hccrepo_gpgkey,
    $hccrepo_priority           = $hccrepo::params::hccrepo_priority,
    $hccrepo_testing_baseurl    = $hccrepo::params::hccrepo_testing_baseurl,
    $hccrepo_testing_enabled    = $hccrepo::params::hccrepo_testing_enabled,
    $hccrepo_testing_gpgcheck   = $hccrepo::params::hccrepo_testing_gpgcheck,
    $hccrepo_testing_gpgkey     = $hccrepo::params::hccrepo_testing_gpgkey,
    $hccrepo_testing_priority   = $hccrepo::params::hccrepo_testing_priority,
) inherits hccrepo::params {

    if $::osfamily == 'RedHat' and $::operatingsystem !~ /Fedora|Amazon/ {

        yumrepo { 'hcc':
            baseurl  => $hccrepo_baseurl,
            enabled  => $hccrepo_enabled,
            descr    => "HCC Packages for Enterprise Linux ${::operatingsystemmajrelease} - \$basearch",
            gpgcheck => $hccrepo_gpgcheck,
            gpgkey   => $hccrepo_gpgkey,
            priority => $hccrepo_priority,
        }

        yumrepo { 'hcc-testing':
            baseurl  => $hccrepo_testing_baseurl,
            enabled  => $hccrepo_testing_enabled,
            descr    => "HCC Packages for Enterprise Linux ${::operatingsystemmajrelease} - Testing - \$basearch",
            gpgcheck => $hccrepo_testing_gpgcheck,
            gpgkey   => $hccrepo_testing_gpgkey,
            priority => $hccrepo_testing_priority,
        }

    } else {
        notice ("No HCC repo available for ${::operatingsystem}")
    }

}

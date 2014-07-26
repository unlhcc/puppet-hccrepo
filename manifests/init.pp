#
# Class hccrepo
#
# Sets up the HCC repositories
#

class hccrepo (
    $hccrepo_baseurl            = $hccrepo::params::hccrepo_baseurl,
    $hccrepo_enabled            = $hccrepo::params::hccrepo_enabled,
    $hccrepo_testing_baseurl    = $hccrepo::params::hccrepo_testing_baseurl,
    $hccrepo_testing_enabled    = $hccrepo::params::hccrepo_testing_enabled,
) inherits hccrepo::params {

    if $::osfamily == 'RedHat' and $::operatingsystem !~ /Fedora|Amazon/ {

        yumrepo { 'hcc':
            baseurl     => $hccrepo_baseurl,
            enabled     => $hccrepo_enabled,
            descr       => "HCC Packages for Enterprise Linux ${::lsbmajdistrelease} - \$basearch",
        }

        yumrepo { 'hcc-testing':
            baseurl     => $hccrepo_testing_baseurl,
            enabled     => $hccrepo_testing_enabled,
            descr       => "HCC Packages for Enterprise Linux ${::lsbmajdistrelease} - Testing - \$basearch",
        }

    } else {
        notice ("No HCC repo available for ${::operatingsystem}")
    }

}

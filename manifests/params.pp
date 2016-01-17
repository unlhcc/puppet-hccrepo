#
# Class hccrepo::params
#

class hccrepo::params {

    $hccrepo_baseurl = "http://t2.unl.edu/store/repos/hcc/${::operatingsystemmajrelease}/hcc-el${::operatingsystemmajrelease}/\$basearch"
    $hccrepo_enabled = 1
    $hccrepo_gpgcheck = 0
    $hccrepo_gpgkey = 'absent'
    $hccrepo_priority = 'absent'

    $hccrepo_testing_baseurl = "http://t2.unl.edu/store/repos/hcc/${::operatingsystemmajrelease}/hcc-el${::operatingsystemmajrelease}-testing/\$basearch"
    $hccrepo_testing_enabled = 0
    $hccrepo_testing_gpgcheck = 0
    $hccrepo_testing_gpgkey = 'absent'
    $hccrepo_testing_priority = 'absent'

}

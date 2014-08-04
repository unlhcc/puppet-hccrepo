class hccrepo::params {

    $hccrepo_baseurl = "http://t2.unl.edu/store/repos/hcc/${::lsbmajdistrelease}/hcc-el${::lsbmajdistrelease}/\$basearch"
    $hccrepo_enabled = 1
    $hccrepo_gpgcheck = 0
    $hccrepo_gpgkey = 'absent'
    $hccrepo_priority = 'absent'

    $hccrepo_testing_baseurl = "http://t2.unl.edu/store/repos/hcc/${::lsbmajdistrelease}/hcc-el${::lsbmajdistrelease}-testing/\$basearch"
    $hccrepo_testing_enabled = 0
    $hccrepo_testing_gpgcheck = 0
    $hccrepo_testing_gpgkey = 'absent'
    $hccrepo_testing_priority = 'absent'

}

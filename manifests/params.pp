class hccrepo::params {

    $hccrepo_baseurl = "http://t2.unl.edu/store/repos/hcc/${::lsbmajdistrelease}/hcc-el${::lsbmajdistrelease}/\$basearch",
    $hccrepo_enabled = true,
    $hccrepo_testing_baseurl = '',
    $hccrepo_testing_enabled = false,

}

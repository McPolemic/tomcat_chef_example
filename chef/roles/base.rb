name "base"
description "The base role for all PFED systems"
run_list "recipe[apt]", "recipe[ntp]", "recipe[timezone]", "recipe[python]", "recipe[vim]"
default_attributes(
    "ntp" => {
        "servers" => ["pefcu-fs40.purdueefcu.com",
                      "0.pool.ntp.org",
                      "1.pool.ntp.org",
                      "2.pool.ntp.org",
                      "3.pool.ntp.org"]
    },
    "timezone" => {
        "tz" => "America/Indiana/Indianapolis"
    }
)

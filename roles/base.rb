name "base"
description "Base role applied to all systems"
run_list(
  "recipe[ntp]",
  "recipe[users::sysadmins]",
  "recipe[sudo]"
)

default_attributes(
  "authorization" => {
    "sudo" => {
      "groups" => ['adm', 'admin', 'wheel']
    }
  }
)

name "base"
description "Base role applied to all systems"
run_list(
  "recipe[ntp]",
  "recipe[users::sysadmins]",
  "recipe[sudo]"
)

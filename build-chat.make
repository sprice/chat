api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.14"

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][995156] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

projects[chat][type] = profile
projects[chat][download][type] = git
projects[chat][download][url] = git://github.com/sprice/chat.git

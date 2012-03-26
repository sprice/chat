api = 2
core = 7.x

; Build Kit 7.x-2.x HEAD
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib

projects[rubik][subdir] = contrib

;--------------------
; Additional Contrib
;--------------------

projects[chatroom][download][type] = git
projects[chatroom][type] = module
projects[chatroom][subdir] = contrib
projects[chatroom][download][url] = http://git.drupal.org/project/chatroom.git
; Mar 25, 2012
projects[chatroom][download][revision] = 05e20b4506249c863c9244c1d180232abd976e5c
; Allow multiple chat fields
; http://drupal.org/node/1495374
; http://drupal.org/node/1495374#comment-5768212
projects[chatroom][patch][] = http://drupal.org/files/multiple_chats-1495374-1.patch

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-rc1

projects[entityreference][subdir] = contrib
projects[entityreference][version] = 1.0-rc1

projects[nodejs][subdir] = contrib
projects[nodejs][version] = 1.0-rc1

projects[panels][subdir] = contrib
projects[panels][version] = 3.0

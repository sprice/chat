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
projects[chatroom][download][tag] = 7.x-2.0

; Allow multiple chat fields
; http://drupal.org/node/1495374
; http://drupal.org/node/1495374#comment-6391390
projects[chatroom][patch][] = http://drupal.org/files/multiple_chats-1495374-10.patch

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-rc3

projects[entityreference][subdir] = contrib
projects[entityreference][version] = 1.0-rc3

projects[nodejs][download][type] = git
projects[nodejs][type] = module
projects[nodejs][subdir] = contrib
projects[nodejs][download][url] = http://git.drupal.org/project/nodejs.git
projects[nodejs][download][branch] = 7.x-1.x
; Jul 20, 2012
projects[nodejs][download][revision] = 2efa999c

projects[panels][subdir] = contrib
projects[panels][version] = 3.2

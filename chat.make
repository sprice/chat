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

; Lint chatroom.js
; https://gist.github.com/3443783
projects[chatroom][patch][] = https://raw.github.com/gist/3443783/05f65f3f23a7ce9a2b17a591897ae3f826fc1d06/chatroom_jshint.patch

; Allow multiple chat fields
; http://drupal.org/node/1495374
; Patch still in progress so this is a patch against 1671382
; https://gist.github.com/6b0121e69054a6958644
; projects[chatroom][patch][] = https://raw.github.com/gist/6b0121e69054a6958644/fe6340aa1942cf3b9392ff37500ec4de9d480d95/multiple_chats.patch

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

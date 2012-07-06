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
projects[chatroom][download][branch] = 7.x-2.x
; Mar 25, 2012
projects[chatroom][download][revision] = 2747ace4

; Allow loading of previous messages
; http://drupal.org/node/1671382
; http://drupal.org/node/1671382#comment-6205562
projects[chatroom][patch][] = http://drupal.org/files/previous_messages-1671382-6.patch

; Allow multiple chat fields
; http://drupal.org/node/1495374
; Patch still in progress so this is a patch against 1671382
; projects[chatroom][patch][] = https://raw.github.com/gist/6b0121e69054a6958644/0e06615eca89bb4ce31e1b68b8ee282aab967a2b/multiple_chats.patch

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-rc3

projects[entityreference][subdir] = contrib
projects[entityreference][version] = 1.0-rc3

projects[nodejs][subdir] = contrib
projects[nodejs][version] = 1.0-rc1

projects[panels][subdir] = contrib
projects[panels][version] = 3.2

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

projects[chatroom][subdir] = contrib
projects[chatroom][version] = 2.0-alpha1

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-rc1

projects[entityreference][subdir] = contrib
projects[entityreference][version] = 1.0-rc1

projects[nodejs][subdir] = contrib
projects[nodejs][version] = 1.0-rc1

projects[panels][subdir] = contrib
projects[panels][version] = 3.0

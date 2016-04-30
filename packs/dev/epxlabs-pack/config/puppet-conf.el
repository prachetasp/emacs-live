;; Puppet highlighting!
(live-add-pack-lib "puppet-mode")
(require 'puppet-mode)
;; Automatically turn on highlighting for Dockerfile's
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

;; Docker highlighting!
(live-add-pack-lib "dockerfile-mode")
(require 'dockerfile-mode)
;; Automatically turn on highlighting for Dockerfile's
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; JSON Highlighting 
(live-add-pack-lib "json-mode")
(live-add-pack-lib "json-reformat")
(live-add-pack-lib "json-snatcher")

(require 'json-mode)
;; Automatically turn on highlighting for JSON files
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

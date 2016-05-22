;; EPX Labs init file
;;
;; This file initiates the pack configuration.
;; See README for more information.

;; Load bindings config
;; Add to this once we have some bindings to load
;;(live-load-config-file "bindings.el")

;; Might be able to pare down this list once we settle on a toolchain
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")))

;; Melpa Stable usually has the most up to date packages
(setq package-archive-priorities
      '(("melpa-stable" . 20)
        ("marmalade" . 20)
        ("gnu" . 10)))

;; Useful for reloading .clj files with Enlive
(defun touch ()
     "updates mtime on the file for the current buffer"
     (interactive)
     (shell-command (concat "touch " (shell-quote-argument (buffer-file-name))))
     (clear-visited-file-modtime))

(live-load-config-file "dockerfile-conf.el")
(live-load-config-file "puppet-conf.el")

(add-hook 'html-mode-hook
        (lambda ()
          (set (make-local-variable 'sgml-basic-offset) 2)))

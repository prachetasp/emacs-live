;; Adds a new keybinding to boot a ClojureScript browser repl inside the figwheel process
;; To use:
;;  - Start from a Clojure/Script file in your project
;;  - Type 'M-x cider-jack-in'
;;  - Open the *Messages* buffer with 'C-x b'
;;  - Once within the messages buffer type 'C-c C-z'
;; This should switch to the repl and execute the commands to jack into the figwheel browser session

(defun cider-figwheel-repl ()
  (interactive)
  (save-some-buffers)
  (with-current-buffer (cider-current-repl-buffer)
    (goto-char (point-max))
    (insert "(require 'figwheel-sidecar.repl-api)
             (figwheel-sidecar.repl-api/start-figwheel!) ; idempotent
             (figwheel-sidecar.repl-api/cljs-repl)")
    (cider-repl-return)))

(global-set-key (kbd "C-c C-z") #'cider-figwheel-repl)

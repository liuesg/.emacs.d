;;(add-to-list 'load-path
;;	     (expand-file-name (concat user-emacs-directory "lisp")))
(setq default-directory "~/")

;; update load-path to make customized lisp codes work
(dolist (folder '("common" "lang" "feature" "platform" "version"))
  (push (expand-file-name (format "lisp/%s" folder) user-emacs-directory) load-path))
;;(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-by-copying t)
(setq create-lockfiles nil)

(require 'init-elpa)
(require 'init-packages)
(require 'init-builtin)
(require 'init-self)
(require 'init-ui)
;;(require 'use-package)
(require 'init-lang)

(when (file-exists-p custom-file)
  (load-file custom-file))

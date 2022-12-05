;;; init-lang.el --- configuration for IDE programming -*- lexical-binding: t -*-

;; Author: Cabins
;; Maintainer: Cabins
;; Homepage: github.com/cabins

;;; Commentary:
;;; Code:

;; cc-mode
(add-hook 'c-mode-common-hook 'c-toggle-auto-hungry-state)

;; Rainbow delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package highlight-parentheses
  :diminish
  :hook (prog-mode . highlight-parentheses-mode))

;; Yasnippet
(use-package yasnippet
  :diminish yas-minor-mode
  :hook (prog-mode . yas-minor-mode)
  :config (yas-reload-all)
  :bind ("C-o" . yas-expand))
(use-package yasnippet-snippets :diminish)





;;(require 'init-java)
;; language server
;(require 'init-eglot) ; eglot
(require 'init-lsp)   ; lsp, enable this line if you like lsp-mode and disable eglot line

;; specific languages
(require 'init-lang-go)
;;(require 'init-lang-python)
;;(require 'init-lang-rust)
;;(require 'init-lang-web)

;; program useful text/config files
(use-package json-mode)
(use-package markdown-mode)
;;(use-package protobuf-mode)
;;(use-package yaml-mode)

;; useful tools
(use-package quickrun)                  ; quickrun code
;;(use-package restclient                 ; restclient support
;;  :mode (("\\.http\\'" . restclient-mode)))

(provide 'init-lang)

;;; init-lang.el ends here
;; Local Variables:
;; byte-compile-warnings: (not free-vars unresolved)
;; End:

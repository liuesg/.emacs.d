(use-package lsp-mode
:init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (go-mode . lsp-deferred)
	 (c-mode . lsp-deferred)
	 (c++-mode . lsp-deferred)
	 ;(go-mode . lsp-deferred)
	 
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp lsp-deferred)

;  (setq lsp-auto-guess-root t
;	    lsp-headerline-breadcrumb-enable nil
;	    lsp-keymap-prefix "C-c l"
;	    lsp-log-io nil)
;  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map))

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
;(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
(setq lsp-ui-sideline-show-hover 1)
(setq lsp-ui-sideline-show-code-action 1)
(setq lsp-ui-sideline-show-diagnostics 1)
(setq lsp-ui-peek-enable 1)
(setq lsp-ui-peek-show-directory 1)
(lsp-treemacs-sync-mode 1)
(lsp-modeline-code-actions-mode 1)

(setq lsp-enable-symbol-highlighting 1)
;; optional if you want which-key integration
(use-package which-key
   :config
   (which-key-mode))
(provide 'init-lsp)

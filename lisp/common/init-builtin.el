;; fido-mode
;; `fido-mode' is provided by icomplete.el
;;(add-hook 'after-init-hook 'fido-mode)
;;(if (fboundp 'fido-vertical-mode)
  ;  (add-hook 'after-init-hook 'fido-vertical-mode)
;;  (add-hook 'after-init-hook 'fido-mode))
;; customized
;;(setq completions-detailed t
  ;    completions-format 'one-column)
;;(fido-mode 1)



;;WindMove
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)


(provide 'init-builtin)

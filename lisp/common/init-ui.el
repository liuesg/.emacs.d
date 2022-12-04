(tool-bar-mode -1)

;(add-to-list 'default-frame-alist
;             '(font . "FiraCode Nerd Font Mono-14"))

(set-face-attribute 'default nil :height 140)

;(global-set-key (kbd "C-+") 'text-scale-increase)
;(global-set-key (kbd "C--") 'text-scale-decrease)
;(global-set-key (kbd "C-0") 'text-scale-adjust)

(add-to-list 'default-frame-alist '(fullscreen . maximized))


(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft t))

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(provide 'init-ui)

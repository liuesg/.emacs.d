(use-package dashboard
  :init (dashboard-setup-startup-hook))

;; Settings for company, auto-complete for texting, coding, etc.
(use-package company
  :diminish "Cmp"
  :hook (after-init . global-company-mode)
  :config (setq company-minimum-prefix-length 1
                company-show-quick-access t))

(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-initial-inputs-alist nil
	ivy-count-format "%d/%d "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((t . ivy--regex-ignore-order))))


(use-package counsel
  :after (ivy)
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git)))


(use-package swiper
   :after ivy
   :bind (("C-s" . swiper)
          ("C-r" . swiper-isearch-backward))
   :config (setq swiper-action-recenter t
                 swiper-include-line-number-in-search t))	      




;; neotree, file tree manager
(use-package neotree
  :commands (neo-buffer--lock-width neo-buffer--unlock-width)
  :config (setq neo-autorefresh t
		        neo-theme 'nerd
		        neo-click-changes-root t
		        neo-smart-open t)
  :bind ("<f8>" . neotree-toggle))

;;ace-jumo mode
;(use-package ace-jump-mode
  ;:ensure t
 ; :bind("C-c SPC" .'ace-jump-mode))
(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)
	 ("C-c ^" . crux-top-join-line)
	 ("C-x ," . crux-find-user-init-file)
	 ("C-S-o" . crux-smart-open-line-above)
	 ("C-k" . crux-smart-kill-line)))

(use-package drag-stuff
  :bind (("<M-up>". drag-stuff-up)
         ("<M-down>". drag-stuff-down)))

;;avy mode
(use-package avy
   :bind("C-c SPC" .'avy-goto-char))

;; iedit - edit same text in one buffer or region
(use-package iedit)


(use-package hungry-delete
  :bind (("C-c DEL" . hungry-delete-backward))
  :bind (("C-c d" . hungry-delete-forward)))

(use-package restart-emacs)


;; Settings for which-key - suggest next key
(use-package which-key
  :diminish
  :hook (after-init . which-key-mode))
  

(provide 'init-packages)

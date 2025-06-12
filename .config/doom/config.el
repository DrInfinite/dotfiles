(setq doom-font (font-spec :family "Monaspace Neon" :size 14 :weight 'medium)
      doom-variable-pitch-font (font-spec :family "Monaspace Neon Var" :size 14)
      doom-big-font (font-spec :family "Monaspace Neon" :size 24))

(setq doom-theme 'catppuccin)
(setq catppuccin-flavor 'latte) ;; or 'latte, 'macchiato, or 'mocha

(setq display-line-numbers-type 'relative)

(setq-default fill-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(setq org-directory "~/Documents/org/")

(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

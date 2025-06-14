(setq doom-font (font-spec :family "Monaspace Neon" :size 14 :weight 'medium)
      doom-variable-pitch-font (font-spec :family "Monaspace Neon Var" :size 14)
      doom-big-font (font-spec :family "Monaspace Neon" :size 24))

(defun doom-dashboard-draw-ascii-banner-fn ()
  (let* ((banner
          '("███████╗███╗   ██╗ █████╗ ██████╗ ███████╗"
            "██╔════╝████╗  ██║██╔══██╗██╔══██╗██╔════╝"
            "█████╗  ██╔██╗ ██║███████║██████╔╝███████╗"
            "██╔══╝  ██║╚██╗██║██╔══██║██╔═══╝ ╚════██║"
            "███████╗██║ ╚████║██║  ██║██║     ███████║"
            "╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚══════╝"
            "                                          "))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert (+doom-dashboard--center
                +doom-dashboard--width
                (concat
                 line (make-string (max 0 (- longest-line (length line)))
                                   32)))
               "\n"))
     'face 'doom-dashboard-banner)))

(custom-set-faces!
  '(doom-dashboard-banner :foreground "#89b4fa"))

(setq doom-theme 'catppuccin)
(setq catppuccin-flavor 'mocha) ;; can be 'latte, 'frappe, 'macchiato, or 'mocha

(setq-default cursor-type 'box)
(setq evil-insert-state-cursor 'box)

(setq display-line-numbers-type 'relative)

(setq-default fill-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(setq org-directory "~/Documents/org/")

(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

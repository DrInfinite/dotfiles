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
            "                                          "
            "                 E M A C S                "))
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

(setq org-startup-numerated t)

(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.6))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.5))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.4))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.3))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-6 ((t (:inherit outline-6 :height 1.1))))
 )

(define-key global-map (kbd "M-c") 'capitalize-dwim)
(define-key global-map (kbd "M-u") 'upcase-dwim)
(define-key global-map (kbd "M-l") 'downcase-dwim)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

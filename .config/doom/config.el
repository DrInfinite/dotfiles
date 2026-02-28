(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 14)
      doom-variable-pitch-font (font-spec :family "Liberation Sans" :size 14)
      doom-serif-font (font-spec :family "Liberation Serif" :size 14)
      doom-big-font (font-spec :family "JetBrainsMono Nerd Font" :size 24))

(defun doom-dashboard-draw-ascii-banner-fn ()
  (let* ((banner
          '("__| |__________________________________________| |__"
            "__   __________________________________________   __"
            "  | |                                          | |  "
            "  | |███████╗███╗   ██╗ █████╗ ██████╗ ███████╗| |  "
            "  | |██╔════╝████╗  ██║██╔══██╗██╔══██╗██╔════╝| |  "
            "  | |█████╗  ██╔██╗ ██║███████║██████╔╝███████╗| |  "
            "  | |██╔══╝  ██║╚██╗██║██╔══██║██╔═══╝ ╚════██║| |  "
            "  | |███████╗██║ ╚████║██║  ██║██║     ███████║| |  "
            "  | |╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚══════╝| |  "
            "__| |__________________________________________| |__"
            "__   __________________________________________   __"
            "  | |                                          | |  "
            "                                                    "
            "                                                    "))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert
        (+doom-dashboard--center
         +doom-dashboard--width
         (concat
          line
          (make-string (max 0 (- longest-line (length line))) 32)))
        "\n"))
     'face 'doom-dashboard-banner)))

(custom-set-faces! `(doom-dashboard-banner :foreground , (doom-color 'blue)))

;; (setq doom-theme 'catppuccin)
;; (setq doom-theme 'doom-vibrant)
(setq doom-theme 'almost-mono-white)

(setq-default cursor-type 'box)
(setq evil-insert-state-cursor 'box)

(add-to-list 'default-frame-alist '(alpha-background . 90))

(setq display-line-numbers-type 'relative)

(setq-default fill-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(custom-set-faces
 '(markdown-header-face ((t (:inherit font-lock-function-name-face :family 'doom-font ))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.6))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.5))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.4))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 1.3))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :height 1.2))))
 '(markdown-header-face-6 ((t (:inherit markdown-header-face :height 1.1))))
 )

(defun naps/toggle-markdown-view-mode ()
  "Toggle between `markdown-mode' and `markdown-view-mode'"
  (interactive)
  (if (eq major-mode 'markdown-view-mode)
      (markdown-mode)
    (markdown-view-mode)))

(setq org-directory "~/Documents/org/")

(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-indent-mode)

(setq org-startup-numerated t)

(custom-set-faces
 '(org-level-1 ((t (:inherit default :height 1.6))))
 '(org-level-2 ((t (:inherit default :height 1.5))))
 '(org-level-3 ((t (:inherit default :height 1.4))))
 '(org-level-4 ((t (:inherit default :height 1.3))))
 '(org-level-5 ((t (:inherit default :height 1.2))))
 '(org-level-6 ((t (:inherit default :height 1.1))))
 )

(define-key global-map (kbd "M-c") 'capitalize-dwim)
(define-key global-map (kbd "M-u") 'upcase-dwim)
(define-key global-map (kbd "M-l") 'downcase-dwim)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(map! :leader :desc "UnbindTreemacs" "o p" nil)
(map! :leader :desc "Project Sidebar" "e" #'+treemacs/toggle)

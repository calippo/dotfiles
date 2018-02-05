(require 'use-package)
(require 'deferred)

(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

(use-package auto-complete
  :config
  (global-auto-complete-mode t))

(use-package zoom
  :config
  (zoom-mode t))

;; (use-package ac-helm
;;   :config
;;   (global-set-key (kbd "C-:") 'ac-complete-with-helm)
;;   (define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm))

;; (use-package circadian
;;   :load-path "~/.emacs.d/config/circadian/"
;;   :ensure t
;;   :config
;;   (setq calendar-latitude 45.13)
;;   (setq calendar-longitude 10.02)
;;   (setq circadian-themes '((:sunrise . apropospriate-light)
;;                            ("10:00"  . hemera)
;;                            ("19:30"  . nyx)
;;                            (:sunset  . nord)))
;;   (circadian-setup))

(use-package helm-projectile
  :ensure t
  :config
  (global-set-key (kbd "C-x f") 'helm-projectile))

(use-package evil
  :config
  (evil-mode 1))

(use-package key-chord
  :init (setq key-chord-two-keys-delay 0.5)
  :config
  (key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
  (key-chord-mode 1))

(use-package neotree
  :init (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :bind (("C-x t" . neotree-toggle))
  :config
  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter))

(use-package helm
  ;; :config ((helm-autoresize-mode t))
  :bind (("M-x" . helm-M-x)
         ("C-x b" . helm-buffers-list)
         ("C-x C-f" . helm-find-files)
         ("C-d" . helm-next-page)))
;;  ("C-u" . helm-previous-page)

(use-package scala-mode
  :pin melpa-stable)

;; (use-package ensime
;;   :ensure t
;;   :pin melpa-stable
;;   :config
;;   (setq ensime-startup-notification nil
;;         ensime-startup-snapshot-notification nil)
;;   (progn
;;     (setq ensime-sem-high-enabled-p nil)
;;     (setq ensime-use-helm t)))

;; (use-package sbt-mode
;;   :commands sbt-start sbt-command
;;   :config
;;   (substitute-key-definition
;;    'minibuffer-complete-word
;;    'self-insert-command
;;    minibuffer-local-completion-map))

(use-package evil-magit
  :ensure t)

(use-package org
  :mode (("\\.org\\'" . org-mode))
  :ensure t
  :config
  (define-key global-map "\C-cl" 'org-store-link)
  (define-key global-map "\C-ca" 'org-agenda))
                                 
(use-package js2-mode
  :ensure t)

(use-package all-the-icons
  :ensure t)

;; (use-package wakatime-mode
;;   :config
;;   (setq wakatime-api-key "479093be-6e11-4d46-b9ac-cdaca437a3f7"
;;         wakatime-cli-path "/usr/local/bin/wakatime")
;;   :diminish wakatime-mode 
;;   :init
;;   (progn
;;     (global-wakatime-mode)))

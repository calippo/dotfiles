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

(use-package go-mode
  :mode "\\.go\\'"
  :config
  (progn
    (setq-default tab-width 2)
    (setq-default indent-tabs-mode nil)
    (add-hook 'go-mode-hook (lambda () (setq tab-width 2)))
    ;; tab-width & indent-tabs-mode are both buffer-local so need setq-default
    )
  :init
  (progn
    (setq-default tab-width 2)
    (setq-default indent-tabs-mode nil)
    )
  )

(use-package ac-helm
  :config
  (global-set-key (kbd "C-:") 'ac-complete-with-helm)
  (define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm))

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

;; Enable nice rendering of diagnostics like compile errors.
(use-package flycheck
  :init (global-flycheck-mode))

;; Enable scala-mode and sbt-mode
(use-package scala-mode
  :mode "\\.s\\(cala\\|bt\\)$")

(use-package sbt-mode
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map))

(use-package lsp-mode
  ;; Optional - enable lsp-mode automatically in scala files
  :hook (scala-mode . lsp)
  :config (setq lsp-prefer-flymake nil))

(use-package lsp-ui)

;; Add company-lsp backend for metals
(use-package company-lsp)

;; (use-package eglot
;;   :pin melpa-stable
;;   :config
;;   (add-to-list 'eglot-server-programs '(scala-mode . ("metals-emacs")))
;;   ;; (optional) Automatically start metals for Scala files.
;;   :hook (scala-mode . eglot-ensure))

;; (use-package scala-mode
;;   :config
;;   (add-hook 'scala-mode-hook #'aggressive-indent-mode))

;; (use-package sbt-mode
;;   :ensure t
;;   :commands sbt-start sbt-command)

;; (use-package lsp-mode
;;   :ensure t)

;; (use-package lsp-ui
;;   :ensure t
;;   :hook (lsp-mode . lsp-ui-mode))

;; (use-package lsp-scala
;;   :load-path "~/.emacs.d/custom/lsp-scala"
;;   :after scala-mode
;;   :demand t
;;   :hook (scala-mode . lsp)
;;   :init (setq lsp-scala-server-command "/usr/local/bin/metals-emacs"))

;; (use-package sbt-mode
;;   :ensure t
;;   :commands sbt-start sbt-command)

;; (use-package company-lsp :commands company-lsp)

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

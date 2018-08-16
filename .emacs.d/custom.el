(setq powerline-arrow-shape 'curve)

(setq-default indent-tabs-mode nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode t)

(electric-indent-mode 0)

;; to setup tabs
(setq c-basic-indent 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq js-indent-level 2)
(setq web-mode-code-indent-offset 2)
(setq typescript-indent-level 2)

(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)

(setq linum-format "%4d ")

(setq org-log-done t)
(load-file "~/.emacs.d/keymaps.el")

(setq emerge-diff-options "--ignore-all-space")


;; tide setup start
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)
;; tide setup end

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )

(add-to-list 'auto-mode-alist '("\\.puml\\'" . plantuml-mode))

(setq plantuml-jar-path "~/.emacs.d/plantuml.jar")
(defvar plantuml-output-type "svg")

;; (with-eval-after-load 'flycheck
;;   (require 'flycheck-plantuml)
;;   (flycheck-plantuml-setup))

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer 
        (delq (current-buffer) 
              (remove-if-not 'buffer-file-name (buffer-list)))))

;; define function to shutdown emacs server instance
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs))

 (setq mac-command-modifier 'super)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)  

;; Neo-theme settings
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; IDO settings
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

;; ensime
(use-package ensime
  :ensure t
  :pin melpa-stable)

;; alternative esc mapping
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

(setq powerline-arrow-shape 'curve)

(setq tab-width 2)

(evil-mode t)
(menu-bar-mode -1)
(global-linum-mode t)

(setq org-log-done t)
(load-file "~/.emacs.d/keymaps.el")

(setq fiplr-ignored-globs '((directories (".git" ".svn" "target"))
  (files ("*.jpg" "*.png" "*.zip" "*~" "*.class" ".scssc"))))

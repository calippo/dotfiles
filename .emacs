(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(load-file "~/.emacs.d/archives.el")
(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/modeline.el")
(load-file "~/.emacs.d/custom.el")
(load-file "~/.emacs.d/osx_paste_setup.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#FAFAFA" "#FF1744" "#66BB6A" "#F57F17" "#42A5F5" "#7E57C2" "#0097A7" "#546E7A"])
 '(beacon-color "#F8BBD0")
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "6fc0ae7cc2abd82d8add1140874ccf8773feaaae73a704981d52fdf357341038" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "01ce486c3a7c8b37cf13f8c95ca4bb3c11413228b35676025fdf239e77019ea1" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(evil-emacs-state-cursor (quote ("#D50000" hbar)) t)
 '(evil-insert-state-cursor (quote ("#D50000" bar)) t)
 '(evil-normal-state-cursor (quote ("#F57F17" box)) t)
 '(evil-visual-state-cursor (quote ("#66BB6A" box)) t)
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (quote
    ("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors (quote (("#F8BBD0" . 0) ("#FAFAFA" . 100))))
 '(package-selected-packages
   (quote
    (company-coq proof-general pacmacs hcl-mode deferred swagger-to-org terraform-mode docker-compose-mode dockerfile-mode tide prettier-js rainbow-identifiers typoscript-mode nodejs-repl markdown-mode neotree typescript-mode mouse-slider-mode ac-helm focus dashboard sublimity zoom circadian nord-theme apropospriate-theme nyx-theme hemera-theme skewer-mode nyan-mode gradle-mode wakatime-mode helm-projectile find-file-in-project darkroom helm-git-grep web-mode rjsx-mode jsx-mode react-snippets smart-mode-line-powerline-theme powerline-evil hound deferred imenu-anywhere haskell-mode haskell-emacs auto-complete ## flycheck-plantuml plantuml-mode js2-mode popup-imenu scala-mode hydra smart-mode-line yaml-mode use-package solarized-theme seoul256-theme reykjavik-theme projectile powerline php-mode multiple-cursors markdown-preview-mode key-chord iedit hydandata-light-theme helm go-mode evil-visual-mark-mode evil-magit color-theme avk-emacs-themes all-the-icons)))
 '(pos-tip-background-color "#ffffff")
 '(pos-tip-foreground-color "#78909C")
 '(tabbar-background-color "#ffffff"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)

(require 'package)
(package-initialize)

(load-file "~/.emacs.d/archives.el")
(add-to-list 'load-path "~/.emacs.d/elpa/neotree")
(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/custom.el")
(load-file "~/.emacs.d/osx_paste_setup.el")

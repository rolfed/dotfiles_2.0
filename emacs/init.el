(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'catppuccin-them)
  (package-refresh-contents)
  (package-install 'catppuccin-theme))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(load-theme 'catppuccin :no-confirm)
(setq catppuccin-flavor 'latte) ;; or 'latte, 'macchiato, or 'mocha
(catppuccin-reload)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq resize-mini-window t)
(setq inhibit-startup-message t)
(setq frame-resize-pixelwise t)

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "<s-return>") 'ansi-term)

(setq scroll-conservatively 100)
(setq ring-bell-function 'ignore)
(when window-system (global-hl-line-mode))

(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(catppuccin-theme which-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
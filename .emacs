(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;  (package-refresh-contents)
(package-initialize)
(package-install 'use-package)
;(set-default-font "Lucinda 24")
(set-face-attribute 'default nil :height 300)

;(add-to-list 'load-path "~/.emacs.d/evil")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (mu4e-views phps-mode slime govc go helm company-php imenu-anywhere ecb smex auto-complete company spacemacs-theme evil)))
 '(tool-bar-mode nil))

;(custom-set-faces
; '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 203 :width normal)))))

 (defun mynew-scratch ()
    (interactive)
    (switch-to-buffer (get-buffer-create "*scratch6*")))
(global-set-key (kbd "C-n") 'mynew-scratch)

(defun lunaryorn-new-buffer-frame ()
  "Create a new frame with a new empty buffer."
  (interactive)
  (let ((buffer (generate-new-buffer "untitled")))
    (set-buffer-major-mode buffer)
    (display-buffer buffer '(display-buffer-pop-up-frame . nil))))

(defun empty-frame ()
  "Open a new frame with a buffer named Untitled<N>.

The buffer is not associated with a file."
  (interactive)
  (switch-to-buffer-other-frame (generate-new-buffer "Untitled")))


(defun xah-new-empty-buffer ()
  "Create a new empty buffer.
New buffer will be named “untitled” or “untitled<2>”, “untitled<3>”, etc.
"  (interactive)
  (let (($buf (generate-new-buffer "untitled")))
    (switch-to-buffer $buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)
    $buf
    ))

(setq initial-major-mode (quote text-mode))

;(setq initial-buffer-choice 'xah-new-empty-buffer)

;(kill-buffer "*scratch*")

(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
(switch-to-buffer "**")
;(menu-bar-mode -1)


;;(toggle-full-screen)
(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))
  (scroll-bar-mode -1) ;; no scroll bar
    (add-hook 'emacs-startup-hook 'toggle-frame-maximized)


(load-file "fkey.el")
(load-file "f5key.el")
;(add-to-list 'load-path "~/.emacs.d/evil/evil-master/")
;(require 'evil)
;(evil-mode 1)


;(load-file "~/.emacs.d/emacskeys.el")

;(load-file "~/.emacs.d/elpa/which-key/which-key.el")

  (use-package which-key
   :ensure t
   :demand t
   :config 
(which-key-mode))

;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)

;(auto-complete-mode 1)
;(auto-complete-mode 1)
;(company-mode 1)

(package-initialize)
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))
(use-package recentf
  :config
  (setq recentf-auto-cleanup 'never
        recentf-max-saved-items 1000
        recentf-save-file (concat user-emacs-directory ".recentf"))
  (recentf-mode t)
  :diminish nil)

;; Display possible completions at all places
;; Enhance M-x to allow easier execution of commands
(use-package smex
  :ensure t
  ;; Using counsel-M-x for now. Remove this permanently if counsel-M-x works better.
  :disabled t
  :config
  (setq smex-save-file (concat user-emacs-directory ".smex-items"))
  (smex-initialize)
  :bind ("M-x" . smex))

;; Git integration for Emacs
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;; Better handling of paranthesis when writing Lisps.
(use-package paredit
  :ensure t
  :init
  (add-hook 'clojure-mode-hook #'enable-paredit-mode)
  (add-hook 'cider-repl-mode-hook #'enable-paredit-mode)
  (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook #'enable-paredit-mode)
  :config
  (show-paren-mode t)
  :bind (("M-[" . paredit-wrap-square)
         ("M-{" . paredit-wrap-curly))
  :diminish nil)

(use-package company
  :bind (:map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :config
  (setq company-idle-delay 0.3)
  (global-company-mode t)
;(company-mode 1)  
(add-hook 'after-init-hook 'global-company-mode)
  )

   (use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

;(use-package auto-complete
;:config 
; (auto-complete-mode 1))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t)
  )

  (use-package try :ensure t)
(use-package which-key :ensure t :config (which-key-mode))




(use-package ido-completing-read+
  :ensure t
  :config
  ;; This enables ido in all contexts where it could be useful, not just
  ;; for selecting buffer and file names
  (ido-mode t)
  (ido-everywhere t)
  ;; This allows partial matches, e.g. "uzh" will match "Ustad Zakir Hussain"
  (setq ido-enable-flex-matching t)
  (setq ido-use-filename-at-point nil)
  ;; Includes buffer names of recently opened files, even if they're not open now.
  (setq ido-use-virtual-buffers t)
  )

;(load-file (concat spacemacs-start-directory "init.el"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package evil

 :config (evil-mode 1))

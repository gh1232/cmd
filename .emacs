
;(setq spacemacs-start-directory "~/.emacs.d/.spacemacs.d/")
;(load-file (concat spacemacs-start-directory "init.el"))

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
   '(mu4e-views phps-mode slime govc go helm company-php imenu-anywhere ecb smex auto-complete company spacemacs-theme evil))
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


;(add-to-list 'load-path "~/.emacs.d/evil/evil-master/")
;(require 'evil)
;(evil-mode 1)


;(load-file "~/.emacs.d/emacskeys.el")

(load-file "~/.emacs.d/elpa/which-key/which-key.el")
(require 'which-key)
(which-key-mode)




;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)


(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://melpa.org/packages/") t)
;(package-refresh-contents)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;(package-refresh-contents)
;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;(package-refresh-contents)
;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;(package-refresh-contents)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
;(package-refresh-contents)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
;(package-refresh-contents)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;  (global-set-key (kbd "C-S-p") 'package-refresh-contents) 
 ; (global-set-key (kbd "C-S-i") 'package-install) 


(auto-complete-mode 1)
(company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

(load-file "c:/cmd/fkey.el")
(load-file "c:/cmd/f5key.el")

(require 'helm)
(require 'helm-config)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

(defun spacemacs//helm-hide-minibuffer-maybe ()
  "Hide minibuffer in Helm session if we use the header line as input field."
  (when (with-helm-buffer helm-echo-input-in-header-line)
    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
      (overlay-put ov 'window (selected-window))
      (overlay-put ov 'face
                   (let ((bg-color (face-background 'default nil)))
                     `(:background ,bg-color :foreground ,bg-color)))
      (setq-local cursor-type nil))))


(add-hook 'helm-minibuffer-set-up-hook
          'spacemacs//helm-hide-minibuffer-maybe)

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode 1)

(helm-mode 1)
  (setq inferior-lisp-program "sbcl")
  ;(setq slime-lisp-implementations '(("sbcl" ("sbcl" "--dynamic-space-size" "1024")) ("clisp" ("clisp")) ("ecl" ("ecl")) ("cmucl" ("cmucl"))))
;(setq slime-lisp-implementations '((sbcl ("sbcl" "--dynamic-space-size" "1024"))))
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
  (global-company-mode t))

   (use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package auto-complete)
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))
e have to add the following lines of code:
(use-package try :ensure t)
(use-package which-key :ensure t :config (which-key-mode))



(use-package evil
  :ensure t
  :defer .1 ;; don't block emacs when starting, load evil immediately after startup
  :init
  (setq evil-want-integration nil) ;; required by evil-collection
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-vsplit-window-right t) ;; like vim's 'splitright'
  (setq evil-split-window-below t) ;; like vim's 'splitbelow'
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode)

  ;; vim-like keybindings everywhere in emacs
  (use-package evil-collection
    :after evil
    :ensure t
    :config
    (evil-collection-init))

  ;; gl and gL operators, like vim-lion
  (use-package evil-lion
    :ensure t
    :bind (:map evil-normal-state-map
                ("g l " . evil-lion-left)
                ("g L " . evil-lion-right)
                :map evil-visual-state-map
                ("g l " . evil-lion-left)
                ("g L " . evil-lion-right)))

  ;; gc operator, like vim-commentary
  (use-package evil-commentary
    :ensure t
    :bind (:map evil-normal-state-map
                ("gc" . evil-commentary)))

  ;; gx operator, like vim-exchange
  ;; NOTE using cx like vim-exchange is possible but not as straightforward
  (use-package evil-exchange
    :ensure t
    :bind (:map evil-normal-state-map
                ("gx" . evil-exchange)
                ("gX" . evil-exchange-cancel)))

  ;; gr operator, like vim's ReplaceWithRegister
  (use-package evil-replace-with-register
    :ensure t
    :bind (:map evil-normal-state-map
                ("gr" . evil-replace-with-register)
                :map evil-visual-state-map
                ("gr" . evil-replace-with-register)))

  ;; * operator in vusual mode
  (use-package evil-visualstar
    :ensure t
    :bind (:map evil-visual-state-map
                ("*" . evil-visualstar/begin-search-forward)
                ("#" . evil-visualstar/begin-search-backward)))

  ;; ex commands, which a vim user is likely to be familiar with
  (use-package evil-expat
    :ensure t
    :defer t)

  ;; visual hints while editing
  (use-package evil-goggles
    :ensure t
    :config
    (evil-goggles-use-diff-faces)
    (evil-goggles-mode))

  ;; like vim-surround
  (use-package evil-surround
    :ensure t
    :commands
    (evil-surround-edit
     evil-Surround-edit
     evil-surround-region
     evil-Surround-region)
    :init
    (evil-define-key 'operator global-map "s" 'evil-surround-edit)
    (evil-define-key 'operator global-map "S" 'evil-Surround-edit)
    (evil-define-key 'visual global-map "S" 'evil-surround-region)
    (evil-define-key 'visual global-map "gS" 'evil-Surround-region))

  (message "Loading evil-mode...done"))


(use-package evil
  :ensure t
  :defer .1 ;; don't block emacs when starting, load evil immediately after startup
  :init
  (setq evil-want-integration nil) ;; required by evil-collection
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-vsplit-window-right t) ;; like vim's 'splitright'
  (setq evil-split-window-below t) ;; like vim's 'splitbelow'
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode)

  (use-package general :ensure t
  :config
  (general-evil-setup t)

  (general-define-key
   :states '(normal insert emacs)
   :prefix "C-\\"
   :non-normal-prefix "C-\\"
   "l" '(avy-goto-line)
   "a" 'align-regexp
   )

  (general-define-key
   :states '(normal motion insert emacs)
   :prefix "\\"
   "ar" '(ranger :which-key "call ranger")
   "g"  '(:ignore t :which-key "Git")
   "gs" '(magit-status :which-key "git status")
   )
)

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
  :diminish nil)
   

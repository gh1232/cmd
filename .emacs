(setq visible-bell t)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;  (package-refresh-contents)
(package-initialize)

  (unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;(set-default-font "Lucinda 24")
(set-face-attribute 'default nil :height 300)

;(add-to-list 'load-path "~/.emacs.d/evil")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (powerline cargo racer eglot mu4e-views phps-mode slime govc go helm company-php imenu-anywhere ecb smex auto-complete company spacemacs-theme evil)))
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
(defun my-kill-emacs ()
  "save some buffers, then exit unconditionally"
  (interactive)
  (save-some-buffers nil t)
  (kill-emacs))
(global-set-key (kbd "C-x C-c") 'my-kill-emacs)
; use noflet if notwork 
(require 'cl-lib)
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (cl-letf (((symbol-function #'process-list) (lambda ())))
    ad-do-it))

(fset 'save-buffers-kill-emacs 'my-save-buffers-kill-emacs)
(defun my-save-buffers-kill-emacs (&optional arg)
  "Offer to save each buffer(once only), then kill this Emacs process.
With prefix ARG, silently save all file-visiting buffers, then kill."
  (interactive "P")
  (save-some-buffers arg t)
  (and (or (not (fboundp 'process-list))
       ;; process-list is not defined on MSDOS.
       (let ((processes (process-list))
         active)
         (while processes
           (and (memq (process-status (car processes)) '(run stop open listen))
            (process-query-on-exit-flag (car processes))
            (setq active t))
           (setq processes (cdr processes)))
         (or (not active)
         (progn (list-processes t)
            (yes-or-no-p "Active processes exist; kill them and exit anyway? ")))))
       ;; Query the user for other things, perhaps.
       (run-hook-with-args-until-failure 'kill-emacs-query-functions)
       (or (null confirm-kill-emacs)
       (funcall confirm-kill-emacs "Really exit Emacs? "))
       (kill-emacs)))
;(global-set-key (kbd "C-x C-c") 'my-save-buffers-kill-emacs)
(defadvice save-buffers-kill-emacs (around no-y-or-n activate)
  (flet ((yes-or-no-p (&rest args) t)
         (y-or-n-p (&rest args) t))
    ad-do-it))
(add-hook 'special-mode-hook
          (lambda ()
            (let ((buffer-name-list (mapcar 'buffer-name (buffer-list))))
              (when (member "*Warnings*" buffer-name-list)
                (pop-to-buffer "*Warnings*")))))
(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
      '(lambda ()
         (let ((buffer "*Completions*"))
           (and (get-buffer buffer)
                (kill-buffer buffer)))))

;; Don't show *Buffer list* when opening multiple files at the same time.
(setq inhibit-startup-buffer-menu t)

;; Show only one active window when opening multiple files at the same time.
(add-hook 'window-setup-hook 'delete-other-windows)



;;(toggle-full-screen)
(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

(fset 'yes-or-no-p 'y-or-n-p)
(setq warning-minimum-level :emergency)



(add-to-list 'default-frame-alist '(fullscreen . maximized))
  (scroll-bar-mode -1) ;; no scroll bar
    (add-hook 'emacs-startup-hook 'toggle-frame-maximized)


;(add-to-list 'load-path "~/.emacs.d/evil/evil-master/")
(add-to-list 'load-path "~/rust-mode/")
;(require 'evil)
;(evil-mode 1)


;(load-file "~/.emacs.d/emacskeys.el")

;(load-file "~/.emacs.d/elpa/which-key/which-key.el")

  (use-package which-key
   :ensure t
   :demand t
   :config 
(which-key-mode))
(use-package racer 
:ensure t
  :demand t)
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
'(use-package smex
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
;(use-package paredit
;  :ensure t
;  :init
;  (add-hook 'clojure-mode-hook #'enable-paredit-mode)
;  (add-hook 'cider-repl-mode-hook #'enable-paredit-mode)
;  (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
;  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;  (add-hook 'ielm-mode-hook #'enable-paredit-mode)
;  (add-hook 'lisp-mode-hook #'enable-paredit-mode)
;  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;  (add-hook 'scheme-mode-hook #'enable-paredit-mode)
;  :config
;  (show-paren-mode t)
;  :bind (("M-[" . paredit-wrap-square)
;         ("M-{" . paredit-wrap-curly))
;  :diminish nil)

(use-package company
  :bind (:map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous))
  :config
  (setq company-idle-delay 0.3)
  (global-company-mode t)
(company-mode 1)  
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




'(use-package ido-completing-read+
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
 '(hi-blue-b ((t (:foreground "yellow" :weight bold)))))

(use-package evil

 :config (evil-mode 1))
;(load-file "./cmd/fkey.el")
;(load-file "./cmd/f5key.el")


(global-set-key (kbd "<f5>") nil)
(global-set-key (kbd "<f5>1") 'save-buffers-kill-terminal)
(global-set-key (kbd "<f5>2") 'save-buffer)
(global-set-key (kbd "<f5><f5>") 'other-window)
(global-set-key (kbd "<f5>3") '(find-file "c:\\cmd\\.emacs"))
(global-set-key (kbd "<f5>ip") 'package-install)
(global-set-key (kbd "<f5>lp") 'list-packages)
(global-set-key (kbd "<f5>lP") 'packages-list-packages)
(global-set-key (kbd "<f5>rp") 'package-refresh-contents)
;(global-set-key (kbd "<f5>fs") ')
;(global-set-key (kbd "<f5>") 'forward-button)
(global-set-key (kbd "<f5>hg") 'help-follow)
(global-set-key (kbd "<f5>s]") 'scroll-up-command)
(global-set-key (kbd "<f5>b,") 'beginning-of-buffer)
(global-set-key (kbd "<f5>b.") 'end-of-buffer)
(global-set-key (kbd "<f5>hm") 'describe-mode)
(global-set-key (kbd "<f5>rb") 'revert-buffer)
(global-set-key (kbd "<f5>rf") 'recover-file)
(global-set-key (kbd "<f5>rs") 'recover-session)
(global-set-key (kbd "<f5>tl") 'linum-mode)
(global-set-key (kbd "<f5>h;") 'help-go-back)
(global-set-key (kbd "<f5>qw") 'quit-window)
(global-set-key (kbd "<f5>h'") 'help-go-forward)
(global-set-key (kbd "<f5>s[") 'scroll-down-command)
;(global-set-key (kbd "<f5>") 'backward-button)
;(global-set-key (kbd "<f5>") 'help-follow-mouse)
(global-set-key (kbd "<f5>hG") 'help-follow-symbol)
;(global-set-key (kbd "<f5>") 'self-insert-command)

(global-set-key (kbd "<f5>mm") 'set-mark-command)
(global-set-key (kbd "<f5>l,") 'move-beginning-of-line)
(global-set-key (kbd "<f5>c;") 'backward-char)
;(global-set-key (kbd "<f5>") 'mode-specific-command-prefix)
(global-set-key (kbd "<f5>dc") 'delete-char)
(global-set-key (kbd "<f5>l.") 'move-end-of-line)
(global-set-key (kbd "<f5>c'") 'forward-char)
(global-set-key (kbd "<f5>qk") 'keyboard-quit)
(global-set-key (kbd "<f5>hh") 'help-command)
;(global-set-key (kbd "<f5>") 'electric-newline-and-maybe-indent)
(global-set-key (kbd "<f5>dl") 'kill-line)
(global-set-key (kbd "<f5>sc") 'recenter-top-bottom)
;(global-set-key (kbd "<f5>") 'mynew-scratch)
(global-set-key (kbd "<f5>ol") 'open-line)
(global-set-key (kbd "<f5>l;") 'previous-line)
;(global-set-key (kbd "<f5>") 'quoted-insert)
(global-set-key (kbd "<f5>?") 'isearch-backward)
(global-set-key (kbd "<f5>/") 'isearch-forward)
(global-set-key (kbd "<f5>tc") 'transpose-chars)
;(global-set-key (kbd "<f5>") 'universal-argument)
(global-set-key (kbd "<f5>dr") 'kill-region)
(global-set-key (kbd "<f5>yy") 'yank)
(global-set-key (kbd "<f5>sf") 'suspend-frame)
;(global-set-key (kbd "<f5>") 'ESC-prefix)
(global-set-key (kbd "<f5>ti") 'toggle-input-method)
(global-set-key (kbd "<f5>qe") 'abort-recursive-edit)
(global-set-key (kbd "<f5>uu") 'undo)
(global-set-key (kbd "<f5>L]") 'down-list)
;(global-set-key (kbd "<f5>") 'mouse-drag-region-rectangle)
;(global-set-key (kbd "<f5>") 'ignore)
(global-set-key (kbd "<f5>D.") 'end-of-defun)
(global-set-key (kbd "<f5>D,") 'beginning-of-defun)
(global-set-key (kbd "<f5>S;") 'backward-sexp)
;(global-set-key (kbd "<f5>") 'mouse-set-point)
(global-set-key (kbd "<f5>S'") 'forward-sexp)
(global-set-key (kbd "<f5>L[") 'backward-up-list)
(global-set-key (kbd "<f5>dl") 'kill-whole-line)
(global-set-key (kbd "<f5>dW") 'backward-kill-word)
(global-set-key (kbd "<f5>dw") 'kill-word)
(global-set-key (kbd "<f5>[]") 'forward-paragraph)
;(global-set-key (kbd "<f5>") 'mouse-buffer-menu)
;(global-set-key (kbd "<f5>") 'facemenu-menu)
;(global-set-key (kbd "<f5>") 'w32-drag-n-drop-other-frame)
(global-set-key (kbd "<f5>om") 'buffer-menu-open)
(global-set-key (kbd "<f5>sK") 'kill-ring-save)
;(global-set-key (kbd "<f5>w\;") 'left-word)
(global-set-key (kbd "<f5>s;") 'scroll-left)
(global-set-key (kbd "<f5>s'") 'scroll-right)
(global-set-key (kbd "<f5>w'") 'right-word)
(global-set-key (kbd "<f5>[;") 'backward-paragraph)
;(global-set-key (kbd "<f5>") 'mouse-wheel-text-scale)
;(global-set-key (kbd "<f5>") 'mouse-wheel-text-scale)
(global-set-key (kbd "<f5>b<") 'beginning-of-buffer-other-window)
;(global-set-key (kbd "<f5>") 'mouse-drag-secondary)
;(global-set-key (kbd "<f5>") 'mouse-set-secondary)
(global-set-key (kbd "<f5>.o") 'end-of-buffer-other-window)
;(global-set-key (kbd "<f5>") 'toggle-frame-maximized)
;(global-set-key (kbd "<f5>") 'mouse-start-secondary)
;(global-set-key (kbd "<f5>") 'mouse-yank-secondary)
;(global-set-key (kbd "<f5>") 'mouse-secondary-save-then-kill)
(global-set-key (kbd "<f5>w{") 'scroll-other-window)
(global-set-key (kbd "<f5>w}") 'scroll-other-window-down)
;(global-set-key (kbd "<f5>") 'mwheel-scroll)
;(global-set-key (kbd "<f5>") 'scroll-lock-mode)
(global-set-key (kbd "<f5>dr") 'kill-region)
;(global-set-key (kbd "<f5>") 'mouse-appearance-menu)
;(global-set-key (kbd "<f5>") 'kmacro-end-call-mouse)
;(global-set-key (kbd "<f5>") 'mwheel-scroll)
(global-set-key (kbd "<f5>Cr") 'repeat-complex-command)
(global-set-key (kbd "<f5>cc") 'compose-last-chars)
(global-set-key (kbd "<f5>sc") 'clipboard-kill-ring-save)
(global-set-key (kbd "<f5>vd") 'clipboard-kill-region)
(global-set-key (kbd "<f5>dc") 'delete-forward-char)
(global-set-key (kbd "<f5>dl") 'kill-line)
;(global-set-key (kbd "<f5>") 'handle-delete-frame)
(global-set-key (kbd "<f5>l'") 'next-line)
;(global-set-key (kbd "<f5>") 'mouse-drag-region)
;(global-set-key (kbd "<f5>") 'mouse-set-region)
;(global-set-key (kbd "<f5>") 'w32-drag-n-drop)
(global-set-key (kbd "<f5>l.") 'move-end-of-line)
(global-set-key (kbd "<f5>Cx") 'execute-extended-command)
;(global-set-key (kbd "<f5>") 'kmacro-end-or-call-macro)
(global-set-key (kbd "<f5>--") 'menu-bar-open)
(global-set-key (kbd "<f5>s-") 'toggle-frame-fullscreen)
(global-set-key (kbd "<f5>vy") 'clipboard-yank)
(global-set-key (kbd "<f5>\\") 'search-forward)
;(global-set-key (kbd "<f5>") 'ignore-event)
;(global-set-key (kbd "<f5>") 'overwrite-mode)
(global-set-key (kbd "<f5>ol") 'open-line)
;(global-set-key (kbd "<f5>") 'mouse-set-point)
;(global-set-key (kbd "<f5>") 'mouse-save-then-kill)
(global-set-key (kbd "<f5>ff") 'find-file)
;(global-set-key (kbd "<f5>") 'handle-select-window)
;(global-set-key (kbd "<f5>") 'handle-switch-frame)
(global-set-key (kbd "<f5>hA") 'about-emacs)
(global-set-key (kbd "<f5>hC") 'describe-copying)
(global-set-key (kbd "<f5>vd") 'view-emacs-debugging)
(global-set-key (kbd "<f5>vp") 'view-external-packages)
(global-set-key (kbd "<f5>vF") 'view-emacs-FAQ)
(global-set-key (kbd "<f5>hH") 'help-for-help)
(global-set-key (kbd "<f5>ho") 'view-order-manuals)
(global-set-key (kbd "<f5>hn") 'view-emacs-news)
(global-set-key (kbd "<f5>hD") 'describe-distribution)
(global-set-key (kbd "<f5>hP") 'view-emacs-problems)
(global-set-key (kbd "<f5>h\\") 'search-forward-help-for-help)
(global-set-key (kbd "<f5>hT") 'view-emacs-todo)
(global-set-key (kbd "<f5>hw") 'describe-no-warranty)
(global-set-key (kbd "<f5>hi") 'describe-input-method)
(global-set-key (kbd "<f5>hl") 'display-local-help)
(global-set-key (kbd "<f5>hC") 'describe-coding-system)
;(global-set-key (kbd "<f5>") 'Info-goto-emacs-command-node)
;(global-set-key (kbd "<f5>") 'Info-goto-emacs-key-command-node)
(global-set-key (kbd "<f5>hL") 'describe-language-environment)
(global-set-key (kbd "<f5>hp") 'describe-package)
(global-set-key (kbd "<f5>is") 'info-lookup-symbol)
(global-set-key (kbd "<f5>ha") 'apropos-command)
(global-set-key (kbd "<f5>hb") 'describe-bindings)
(global-set-key (kbd "<f5>hK") 'describe-key-briefly)
;(global-set-key (kbd "<f5>") 'apropos-documentation)
(global-set-key (kbd "<f5>vM") 'view-echo-area-messages)
(global-set-key (kbd "<f5>hf") 'describe-function)
(global-set-key (kbd "<f5>hg") 'describe-gnu-project)
(global-set-key (kbd "<f5>hH") 'view-hello-file)
(global-set-key (kbd "<f5>ii") 'info)
(global-set-key (kbd "<f5>hk") 'describe-key)
;(global-set-key (kbd "<f5>") 'view-lossage)
(global-set-key (kbd "<f5>hm") 'describe-mode)
(global-set-key (kbd "<f5>hn") 'view-emacs-news)
(global-set-key (kbd "<f5>hs") 'describe-symbol)
(global-set-key (kbd "<f5>fk") 'finder-by-keyword)
(global-set-key (kbd "<f5>qh") 'help-quit)
(global-set-key (kbd "<f5>im") 'info-emacs-manual)
(global-set-key (kbd "<f5>hS") 'describe-syntax)
(global-set-key (kbd "<f5>ht") 'help-with-tutorial)
(global-set-key (kbd "<f5>hv") 'describe-variable)
(global-set-key (kbd "<f5>+") 'where-is)

;(global-set-key (kbd "<f5>") 'pop-global-mark)
(global-set-key (kbd "<f5>lb") 'list-buffers)
(global-set-key (kbd "<f5>qt") 'save-buffers-kill-terminal)
(global-set-key (kbd "<f5>lD") 'list-directory)
(global-set-key (kbd "<f5>Ex") 'eval-last-sexp)
;(global-set-key (kbd "<f5>") 'indent-rigidly)
;(global-set-key (kbd "<f5>") 'kmacro-keymap)
(global-set-key (kbd "<f5>Dr") 'downcase-region)
;(global-set-key (kbd "<f5>") 'set-goal-column)
;(global-set-key (kbd "<f5>") 'delete-blank-lines)
;(global-set-key (kbd "<f5>") 'mark-page)
;(global-set-key (kbd "<f5>") 'read-only-mode)
;(global-set-key (kbd "<f5>") 'find-file-read-only)
(global-set-key (kbd "<f5>sb") 'save-buffer)
(global-set-key (kbd "<f5>tl") 'transpose-lines)
(global-set-key (kbd "<f5>Ur") 'upcase-region)
;(global-set-key (kbd "<f5>") 'find-alternate-file)
(global-set-key (kbd "<f5>sf") 'write-file)
(global-set-key (kbd "<f5>em") 'exchange-point-and-mark)
;(global-set-key (kbd "<f5>") 'suspend-frame)
;(global-set-key (kbd "<f5>") 'rectangle-mark-mode)
;(global-set-key (kbd "<f5>") 'set-selective-display)
;(global-set-key (kbd "<f5>") 'expand-abbrev)
;(global-set-key (kbd "<f5>") 'kmacro-start-macro)
;(global-set-key (kbd "<f5>") 'kmacro-end-macro)
;(global-set-key (kbd "<f5>") 'calc-dispatch)
;(global-set-key (kbd "<f5>") 'balance-windows)
;(global-set-key (kbd "<f5>") 'shrink-window-if-larger-than-buffer)
;(global-set-key (kbd "<f5>") 'set-fill-prefix)
(global-set-key (kbd "<f5>dw") 'delete-window)
(global-set-key (kbd "<f5>do") 'delete-other-windows)
(global-set-key (kbd "<f5>\|b") 'split-window-below)
(global-set-key (kbd "<f5>\|r") 'split-window-right)
;(global-set-key (kbd "<f5>") 'comment-set-column)
;(global-set-key (kbd "<f5>") 'scroll-left)
;(global-set-key (kbd "<f5>") 'what-cursor-position)
(global-set-key (kbd "<f5>s'") 'scroll-right)
(global-set-key (kbd "<f5>-;") 'backward-page)
(global-set-key (kbd "<f5>='") 'forward-page)
;(global-set-key (kbd "<f5>") 'enlarge-window)
;(global-set-key (kbd "<f5>") 'next-error)
(global-set-key (kbd "<f5>gb") 'switch-to-buffer)
(global-set-key (kbd "<f5>xd") 'dired)
(global-set-key (kbd "<f5>xg") 'gdb)
(global-set-key (kbd "<f5>xc") 'calendar)
(global-set-key (kbd "<f5>xc") 'calendar)
(global-set-key (kbd "<f5>xm") 'calculator)
(global-set-key (kbd "<f5>xt") 'tetris)
;(global-set-key (kbd "<f5>") 'kmacro-end-and-call-macro)
;(global-set-key (kbd "<f5>") 'set-fill-column)
;(global-set-key (kbd "<f5>") 'magit-status)
;(global-set-key (kbd "<f5>") 'mark-whole-buffer)
(global-set-key (kbd "<f5>if") 'insert-file)
(global-set-key (kbd "<f5>db") 'kill-buffer)
;(global-set-key (kbd "<f5>") 'count-lines-page)
;(global-set-key (kbd "<f5>") 'compose-mail)
(global-set-key (kbd "<f5>w'") 'other-window)
;(global-set-key (kbd "<f5>") 'kbd-macro-query)
;(global-set-key (kbd "<f5>") 'save-some-buffers)
;(global-set-key (kbd "<f5>") 'vc-prefix-map)
;(global-set-key (kbd "<f5>") 'repeat)
;(global-set-key (kbd "<f5>") 'shrink-window-horizontally)
;(global-set-key (kbd "<f5>") 'enlarge-window-horizontally)
;(global-set-key (kbd "<f5>") 'backward-kill-sentence)
;(global-set-key (kbd "<f5>") 'pop-global-mark)
;(global-set-key (kbd "<f5>") 'text-scale-adjust)
(global-set-key (kbd "<f5>cl") 'comment-line)
(global-set-key (kbd "<f5>b;") 'previous-buffer)
(global-set-key (kbd "<f5>b'") 'next-buffer)
(global-set-key (kbd "<f5>me") 'mark-sexp)
(global-set-key (kbd "<f5>D,") 'beginning-of-defun)
(global-set-key (kbd "<f5>e;") 'backward-sexp)
(global-set-key (kbd "<f5>qE") 'exit-recursive-edit)
;(global-set-key (kbd "<f5>") 'down-list)
(global-set-key (kbd "<f5>D.") 'end-of-defun)
(global-set-key (kbd "<f5>e'") 'forward-sexp)
(global-set-key (kbd "<f5>mD") 'mark-defun)
;(global-set-key (kbd "<f5>") 'default-indent-new-line)
(global-set-key (kbd "<f5>ke") 'kill-sexp)
(global-set-key (kbd "<f5>wr") 'reposition-window)
(global-set-key (kbd "<f5>L'") 'forward-list)
(global-set-key (kbd "<f5>\|l") 'split-line)
(global-set-key (kbd "<f5>L;") 'backward-list)
;(global-set-key (kbd "<f5>?r") 'isearch-backward-regexp)
;(global-set-key (kbd "<f5>/r") 'isearch-forward-regexp)
(global-set-key (kbd "<f5>te") 'transpose-sexps)
(global-set-key (kbd "<f5>L[") 'backward-up-list)
(global-set-key (kbd "<f5>sw") 'scroll-other-window)
(global-set-key (kbd "<f5>Ka") 'append-next-kill)
(global-set-key (kbd "<f5>ir") 'indent-region)
;(global-set-key (kbd "<f5>") 'just-one-space)
(global-set-key (kbd "<f5>xs") 'shell)
(global-set-key (kbd "<f5>xk") 'shell-command)
;(global-set-key (kbd "<f5>") 'ispell-word)
(global-set-key (kbd "<f5>rq") 'query-replace)
(global-set-key (kbd "<f5>xa") 'async-shell-command)
;(global-set-key (kbd "<f5>") 'abbrev-prefix-mark)
;(global-set-key (kbd "<f5>\(i") 'insert-parentheses)
;(global-set-key (kbd "<f5>") 'move-past-close-and-reindent)
;(global-set-key (kbd "<f5>") 'xref-pop-marker-stack)
;(global-set-key (kbd "<f5>") 'xref-find-definitions)
;(global-set-key (kbd "<f5>") 'dabbrev-expand)
(global-set-key (kbd "<f5>xe") 'eval-expression)
;(global-set-key (kbd "<f5>") 'comment-dwim)
(global-set-key (kbd "<f5>cr") 'count-words-region)
;(global-set-key (kbd "<f5>") 'xref-find-references)
(global-set-key (kbd "<f5>mw") 'mark-word)
;(global-set-key (kbd "<f5>") 'delete-horizontal-space)
;(global-set-key (kbd "<f5>") 'delete-indentation)
;(global-set-key (kbd "<f5>") 'tmm-menubar)
;(global-set-key (kbd "<f5>;;") 'backward-sentence)
;(global-set-key (kbd "<f5>w\;") 'backward-word)
(global-set-key (kbd "<f5>wC") 'capitalize-word)
(global-set-key (kbd "<f5>kw") 'kill-word)
(global-set-key (kbd "<f5>;'") 'forward-sentence)
(global-set-key (kbd "<f5>w'") 'forward-word)
(global-set-key (kbd "<f5>{m") 'mark-paragraph)
;(global-set-key (kbd "<f5>") 'tab-to-tab-stop)
;(global-set-key (kbd "<f5>") 'default-indent-new-line)
(global-set-key (kbd "<f5>ks") 'kill-sentence)
(global-set-key (kbd "<f5>Dw") 'downcase-word)
;(global-set-key (kbd "<f5>") 'back-to-indentation)
;(global-set-key (kbd "<f5>") 'facemenu-keymap)
;(global-set-key (kbd "<f5>") 'fill-paragraph)
;(global-set-key (kbd "<f5>") 'move-to-window-line-top-bottom)
(global-set-key (kbd "<f5>tw") 'transpose-words)
(global-set-key (kbd "<f5>Uw") 'upcase-word)
;(global-set-key (kbd "<f5>") 'scroll-down-command)
;(global-set-key (kbd "<f5>") 'kill-ring-save)
;(global-set-key (kbd "<f5>") 'execute-extended-command)
;(global-set-key (kbd "<f5>") 'yank-pop)
(global-set-key (kbd "<f5>zc") 'zap-to-char)
(global-set-key (kbd "<f5>};") 'backward-paragraph)
(global-set-key (kbd "<f5>xr") 'shell-command-on-region)
(global-set-key (kbd "<f5>}'") 'forward-paragraph)
;(global-set-key (kbd "<f5>") 'not-modified)
;(global-set-key (kbd "<f5>") 'backward-kill-word)
;(global-set-key (kbd "<f5>") 'scroll-other-window-down)
;(global-set-key (kbd "<f5>") 'mark-sexp)
(global-set-key (kbd "<f5>rr") 'query-replace-regexp)
;(global-set-key (kbd "<f5>") 'xref-find-apropos)
;(global-set-key (kbd "<f5>") 'dabbrev-completion)
;(global-set-key (kbd "<f5>") 'digit-argument)
(global-set-key (kbd "<f5>e;") 'backward-sexp)
(global-set-key (kbd "<f5>e'") 'forward-sexp)
(global-set-key (kbd "<f5>L[") 'backward-up-list)
(global-set-key (kbd "<f5>.o") 'end-of-buffer-other-window)
;(global-set-key (kbd "<f5>") 'toggle-frame-maximized)
(global-set-key (kbd "<f5>,o") 'beginning-of-buffer-other-window)
;(global-set-key (kbd "<f5>w\;") 'backward-word)
(global-set-key (kbd "<f5>[o") 'scroll-other-window)
(global-set-key (kbd "<f5>]o") 'scroll-other-window-down)
(global-set-key (kbd "<f5>'w") 'forward-word)
;(global-set-key (kbd "<f5>") 'isearch-forward-symbol-at-point)
;(global-set-key (kbd "<f5>") 'isearch-forward-symbol)
;(global-set-key (kbd "<f5>") 'isearch-forward-word)

;(global-set-key (kbd "<f5>") 'facemenu-set-bold)
;(global-set-key (kbd "<f5>") 'facemenu-set-default)
;(global-set-key (kbd "<f5>") 'facemenu-set-italic)
;(global-set-key (kbd "<f5>") 'facemenu-set-bold-italic)
;(global-set-key (kbd "<f5>") 'facemenu-set-face)
;(global-set-key (kbd "<f5>") 'facemenu-set-underline)

;(global-set-key (kbd "<f5>") 'move-to-column)
(global-set-key (kbd "<f5>gc") 'goto-char)
(global-set-key (kbd "<f5>gl") 'goto-line)
;(global-set-key (kbd "<f5>") 'next-error)
;(global-set-key (kbd "<f5>") 'previous-error)

;(global-set-key (kbd "<f5>") 'keyboard-escape-quit)

;(global-set-key (kbd "<f5>") 'mouse-drag-bottom-left-corner)
;(global-set-key (kbd "<f5>") 'mouse-drag-bottom-edge)
;(global-set-key (kbd "<f5>") 'mouse-drag-bottom-right-corner)
;(global-set-key (kbd "<f5>") 'mouse-drag-right-edge)
;(global-set-key (kbd "<f5>") 'mouse-drag-top-right-corner)
;(global-set-key (kbd "<f5>") 'mouse-drag-top-edge)
;(global-set-key (kbd "<f5>") 'mouse-drag-top-left-corner)

;(global-set-key (kbd "<f5>") 'mouse-drag-left-edge)
;(global-set-key (kbd "<f5>") 'mouse-split-window-horizontally)
;(global-set-key (kbd "<f5>") 'mouse-drag-mode-line)

;(global-set-key (kbd "<f5>") 'mouse-split-window-vertically)
;(global-set-key (kbd "<f5>") 'mouse-drag-vertical-line)

;(global-set-key (kbd "<f5>") 'mouse-split-window-vertically)
;(global-set-key (kbd "<f5>") 'mouse-drag-vertical-line)
;(global-set-key (kbd "<f5>") 'mouse-select-window)

;(global-set-key (kbd "<f5>") 'mouse-split-window-horizontally)
;(global-set-key (kbd "<f5>") 'scroll-bar-toolkit-horizontal-scroll)

;(global-set-key (kbd "<f5>") 'mouse-split-window-vertically)
;(global-set-key (kbd "<f5>") 'scroll-bar-toolkit-scroll)

;(global-set-key (kbd "<f5>") 'mouse-split-window-horizontally)
;(global-set-key (kbd "<f5>") 'mouse-drag-mode-line)
;(global-set-key (kbd "<f5>") 'mouse-select-window)
;(global-set-key (kbd "<f5>") 'mouse-delete-other-windows)
;(global-set-key (kbd "<f5>") 'mouse-delete-window)

;(global-set-key (kbd "<f5>") 'mouse-select-window)

;(global-set-key (kbd "<f5>") 'mouse-drag-header-line)
;(global-set-key (kbd "<f5>") 'mouse-select-window)

;(global-set-key (kbd "<f5>") 'facemenu-background-menu)
;(global-set-key (kbd "<f5>") 'list-colors-display)
;(global-set-key (kbd "<f5>") 'list-faces-display)
;(global-set-key (kbd "<f5>") 'describe-text-properties)
;(global-set-key (kbd "<f5>") 'facemenu-face-menu)
;(global-set-key (kbd "<f5>") 'facemenu-foreground-menu)
;(global-set-key (kbd "<f5>") 'facemenu-indentation-menu)
;(global-set-key (kbd "<f5>") 'facemenu-justification-menu)
;(global-set-key (kbd "<f5>") 'facemenu-remove-all)
;(global-set-key (kbd "<f5>") 'facemenu-remove-face-props)
;(global-set-key (kbd "<f5>") 'facemenu-special-menu)
;(global-set-key (kbd "<f5>") 'magit-file-dispatch)

;(global-set-key (kbd "<f5>") 'info-other-window)

;(global-set-key (kbd "<f5>") 'kmacro-add-counter)
;(global-set-key (kbd "<f5>") 'kmacro-set-counter)
;(global-set-key (kbd "<f5>") 'kmacro-delete-ring-head)
;(global-set-key (kbd "<f5>") 'kmacro-edit-macro-repeat)
;(global-set-key (kbd "<f5>") 'kmacro-set-format)
;(global-set-key (kbd "<f5>") 'kmacro-insert-counter)
;(global-set-key (kbd "<f5>") 'kmacro-end-or-call-macro-repeat)
;(global-set-key (kbd "<f5>") 'kmacro-call-ring-2nd-repeat)
;(global-set-key (kbd "<f5>") 'kmacro-edit-macro)
;(global-set-key (kbd "<f5>") 'kmacro-cycle-ring-next)
;(global-set-key (kbd "<f5>") 'kmacro-cycle-ring-previous)
;;(global-set-key (kbd "<f5>") 'kmacro-start-macro)
;(global-set-key (kbd "<f5>") 'kmacro-swap-ring)
;(global-set-key (kbd "<f5>") 'kmacro-view-macro-repeat)
;(global-set-key (kbd "<f5>") 'kmacro-step-edit-macro)
;(global-set-key (kbd "<f5>") 'kmacro-bind-to-key)
;(global-set-key (kbd "<f5>") 'edit-kbd-macro)
;(global-set-key (kbd "<f5>") 'kmacro-edit-lossage)
;(global-set-key (kbd "<f5>") 'kmacro-name-last-macro)
;(global-set-key (kbd "<f5>") 'kbd-macro-query)
;(global-set-key (kbd "<f5>") 'apply-macro-to-region-lines)
;(global-set-key (kbd "<f5>") 'kmacro-start-macro)
;(global-set-key (kbd "<f5>") 'kmacro-to-register)

;(global-set-key (kbd "<f5>") 'set-input-method)
;(global-set-key (kbd "<f5>") 'set-file-name-coding-system)
;(global-set-key (kbd "<f5>") 'set-next-selection-coding-system)
;(global-set-key (kbd "<f5>") 'universal-coding-system-argument)
;(global-set-key (kbd "<f5>") 'set-buffer-file-coding-system)
;(global-set-key (kbd "<f5>") 'set-keyboard-coding-system)
;(global-set-key (kbd "<f5>") 'set-language-environment)
;(global-set-key (kbd "<f5>") 'set-buffer-process-coding-system)
;(global-set-key (kbd "<f5>") 'revert-buffer-with-coding-system)
;(global-set-key (kbd "<f5>") 'set-terminal-coding-system)
;(global-set-key (kbd "<f5>") 'set-selection-coding-system)

;(global-set-key (kbd "<f5>") 'repeat-complex-command)
;(global-set-key (kbd "<f5>") 'repeat-complex-command)
;(global-set-key (kbd "<f5>") 'magit-dispatch)

;(global-set-key (kbd "<f5>") 'find-file-other-window)
;(global-set-key (kbd "<f5>") 'display-buffer)
;(global-set-key (kbd "<f5>") 'xref-find-definitions-other-window)
;(global-set-key (kbd "<f5>") 'kill-buffer-and-window)
;(global-set-key (kbd "<f5>") 'add-change-log-entry-other-window)
;(global-set-key (kbd "<f5>") 'switch-to-buffer-other-window)
;(global-set-key (kbd "<f5>") 'clone-indirect-buffer-other-window)
;(global-set-key (kbd "<f5>") 'dired-other-window)
;(global-set-key (kbd "<f5>") 'find-file-other-window)
;(global-set-key (kbd "<f5>") 'compose-mail-other-window)
;(global-set-key (kbd "<f5>") 'find-file-read-only-other-window)

;(global-set-key (kbd "<f5>") 'find-file-other-frame)
;(global-set-key (kbd "<f5>") 'display-buffer-other-frame)
;(global-set-key (kbd "<f5>") 'xref-find-definitions-other-frame)
;(global-set-key (kbd "<f5>") 'delete-frame)
;(global-set-key (kbd "<f5>") 'delete-other-frames)
;(global-set-key (kbd "<f5>") 'make-frame-command)
;(global-set-key (kbd "<f5>") 'switch-to-buffer-other-frame)
;(global-set-key (kbd "<f5>") 'dired-other-frame)
;(global-set-key (kbd "<f5>") 'find-file-other-frame)
;(global-set-key (kbd "<f5>") 'compose-mail-other-frame)
;(global-set-key (kbd "<f5>") 'other-frame)
;(global-set-key (kbd "<f5>") 'find-file-read-only-other-frame)

;(global-set-key (kbd "<f5>") 'C-two-columns)
;(global-set-key (kbd "<f5>") 'C-associate-buffer)
;(global-set-key (kbd "<f5>") 'C-split)
;(global-set-key (kbd "<f5>") 'C-two-columns)

(global-set-key (kbd "<f5>ic") 'insert-char)

(global-set-key (kbd "<f5>eA") 'expand-abbrev)
(global-set-key (kbd "<f5>AM") 'add-mode-abbrev)
(global-set-key (kbd "<f5>Ai") 'inverse-add-global-abbrev)
(global-set-key (kbd "<f5>AA") 'add-global-abbrev)
;(global-set-key (kbd "<f5>") 'expand-jump-to-next-slot)
;(global-set-key (kbd "<f5>") 'expand-jump-to-previous-slot)

;(global-set-key (kbd "<f5>") 'narrow-to-defun)
;(global-set-key (kbd "<f5>") 'narrow-to-region)
;(global-set-key (kbd "<f5>") 'narrow-to-page)
;(global-set-key (kbd "<f5>") 'widen)

(global-set-key (kbd "<f5>Rp") 'point-to-register)
(global-set-key (kbd "<f5>iR") 'increment-register)
;(global-set-key (kbd "<f5>") 'bookmark-set-no-overwrite)
;(global-set-key (kbd "<f5>") 'rectangle-number-lines)
;(global-set-key (kbd "<f5>") 'bookmark-jump)
;(global-set-key (kbd "<f5>") 'clear-rectangle)
;(global-set-key (kbd "<f5>") 'delete-rectangle)
;(global-set-key (kbd "<f5>") 'frameset-to-register)
(global-set-key (kbd "<f5>ir") 'insert-register)
(global-set-key (kbd "<f5>jr") 'jump-to-register)
;(global-set-key (kbd "<f5>") 'kill-rectangle)
;(global-set-key (kbd "<f5>") 'bookmark-bmenu-list)
;(global-set-key (kbd "<f5>") 'bookmark-set)
;(global-set-key (kbd "<f5>") 'number-to-register)
;(global-set-key (kbd "<f5>") 'open-rectangle)
;(global-set-key (kbd "<f5>") 'copy-rectangle-to-register)
;(global-set-key (kbd "<f5>") 'copy-to-register)
;(global-set-key (kbd "<f5>") 'string-rectangle)
;(global-set-key (kbd "<f5>") 'window-configuration-to-register)
;(global-set-key (kbd "<f5>") 'copy-to-register)
;(global-set-key (kbd "<f5>") 'yank-rectangle)
;(global-set-key (kbd "<f5>") 'point-to-register)

;(global-set-key (kbd "<f5>") 'find-file-other-tab)
;(global-set-key (kbd "<f5>") 'tab-bar-select-tab-by-name)
(global-set-key (kbd "<f5>qt") 'tab-close)
(global-set-key (kbd "<f5>qT") 'tab-close-other)
(global-set-key (kbd "<f5>nt") 'tab-new)
(global-set-key (kbd "<f5>-o") 'switch-to-buffer-other-tab)
(global-set-key (kbd "<f5>xD") 'dired-other-tab)
(global-set-key (kbd "<f5>fo") 'find-file-other-tab)
(global-set-key (kbd "<f5>mt") 'tab-move)
(global-set-key (kbd "<f5>'t") 'tab-next)
(global-set-key (kbd "<f5>tr") 'tab-rename)

(global-set-key (kbd "<f5>Vu") 'vc-update)
(global-set-key (kbd "<f5>Vd") 'vc-diff)
(global-set-key (kbd "<f5>VD") 'vc-root-diff)
(global-set-key (kbd "<f5>Vi") 'vc-ignore)
(global-set-key (kbd "<f5>VL") 'vc-log-incoming)
(global-set-key (kbd "<f5>VP") 'vc-print-root-log)
(global-set-key (kbd "<f5>VO") 'vc-log-outgoing)
(global-set-key (kbd "<f5>Vp") 'vc-push)
(global-set-key (kbd "<f5>VU") 'vc-update-change-log)
(global-set-key (kbd "<f5>VB") 'vc-switch-backend)
(global-set-key (kbd "<f5>VD") 'vc-dir)
(global-set-key (kbd "<f5>VA") 'vc-annotate)
(global-set-key (kbd "<f5>VH") 'vc-region-history)
(global-set-key (kbd "<f5>VR") 'vc-register)
(global-set-key (kbd "<f5>VO") 'vc-print-log)
(global-set-key (kbd "<f5>VM") 'vc-merge)
(global-set-key (kbd "<f5>VT") 'vc-retrieve-tag)
(global-set-key (kbd "<f5>Vt") 'vc-create-tag)
(global-set-key (kbd "<f5>Vr") 'vc-revert)
(global-set-key (kbd "<f5>VA") 'vc-next-action)
(global-set-key (kbd "<f5>Vd") 'vc-delete-file)
(global-set-key (kbd "<f5>vV") 'vc-revision-other-window)

;(global-set-key (kbd "<f5>") 'highlight-symbol-at-point)
;(global-set-key (kbd "<f5>") 'hi-lock-find-patterns)
;(global-set-key (kbd "<f5>") 'highlight-lines-matching-regexp)
;(global-set-key (kbd "<f5>") 'highlight-phrase)
;(global-set-key (kbd "<f5>") 'highlight-regexp)
;(global-set-key (kbd "<f5>") 'unhighlight-regexp)
;(global-set-key (kbd "<f5>") 'hi-lock-write-interactive-patterns);

;(global-set-key (kbd "<f5>") 'eww-search-words)

(global-set-key (kbd "<f5>=p") 'center-paragraph)
(global-set-key (kbd "<f5>xw") 'eww)
;(global-set-key (kbd "<f5>") 'font-lock-fontify-block)
(global-set-key (kbd "<f5>=l") 'center-line)

(global-set-key (kbd "<f5>gl") 'goto-line)
;(global-set-key (kbd "<f5>") 'next-error)
;(global-set-key (kbd "<f5>") 'previous-error)
;(global-set-key (kbd "<f5>") 'facemenu-set-bold)
;(global-set-key (kbd "<f5>") 'facemenu-set-default)
;(global-set-key (kbd "<f5>") 'facemenu-set-italic)
;(global-set-key (kbd "<f5>") 'facemenu-set-bold-italic)
;(global-set-key (kbd "<f5>") 'facemenu-set-face)
;(global-set-key (kbd "<f5>") 'facemenu-set-underline)
;(global-set-key (kbd "<f5>") 'facemenu-set-foreground)
;(global-set-key (kbd "<f5>") 'facemenu-set-background)
;(global-set-key (kbd "<f5>") 'facemenu-set-charset)
;(global-set-key (kbd "<f5>") 'facemenu-set-read-only)
;(global-set-key (kbd "<f5>") 'facemenu-remove-special)
;(global-set-key (kbd "<f5>") 'facemenu-set-intangible)
;(global-set-key (kbd "<f5>") 'facemenu-set-invisible)
;(global-set-key (kbd "<f5>") 'set-justification-full)
;(global-set-key (kbd "<f5>") 'set-justification-center)
;(global-set-key (kbd "<f5>") 'set-justification-left)
;(global-set-key (kbd "<f5>") 'set-justification-right)
;(global-set-key (kbd "<f5>") 'set-justification-none)
;(global-set-key (kbd "<f5>") 'decrease-left-margin)
;(global-set-key (kbd "<f5>") 'decrease-right-margin)
;(global-set-key (kbd "<f5>") 'increase-left-margin)
;(global-set-key (kbd "<f5>") 'increase-right-margin)
;(global-set-key (kbd "<f5>") 'inverse-add-global-abbrev)
;(global-set-key (kbd "<f5>") 'inverse-add-mode-abbrev)
;(global-set-key (kbd "<f5>") 'copy-rectangle-as-kill)
;(global-set-key (kbd "<f5>") 'vc-diff-mergebase)
;(global-set-key (kbd "<f5>") 'vc-log-mergebase)
;(global-set-key (kbd "<f5>") 'C-SPC)
;(global-set-key (kbd "<f5>") 'Command)
;(global-set-key (kbd "<f5>") 'mouse--strip-first-event)
;(global-set-key (kbd "<f5>") 'event-apply-shift-modifier)
;(global-set-key (kbd "<f5>") 'event-apply-alt-modifier)
;(global-set-key (kbd "<f5>") 'event-apply-control-modifier)
;(global-set-key (kbd "<f5>") 'event-apply-hyper-modifier)
;(global-set-key (kbd "<f5>") 'event-apply-meta-modifier)
;(global-set-key (kbd "<f5>") 'event-apply-super-modifier)
(global-set-key (kbd "<f6>") 'nil)
(global-set-key (kbd "<f6>q") 'save-buffers-kill-emacs)
(global-set-key (kbd "<f6>s") 'save-buffer)
(global-set-key (kbd "<f6>c") 'delete-char)
(global-set-key (kbd "<f6>w") 'kill-word)
(global-set-key (kbd "<f6>l") 'kill-line)
(global-set-key (kbd "<f6>u") 'undo)
(global-set-key (kbd "<f6>n") 'next-line)
(global-set-key (kbd "<f6>p") 'previous-line)
(global-set-key (kbd "<f6>[") 'scroll-up)
(global-set-key (kbd "<f6>]") 'scroll-down)
(global-set-key (kbd "<f6>j") 'beginning-of-line)
(global-set-key (kbd "<f6>k") 'end-of-line)
(global-set-key (kbd "<f6>.") 'forward-char)
(global-set-key (kbd "<f6>,") 'backward-char)
(global-set-key (kbd "<f6>'") 'forward-word)
(global-set-key (kbd "<f6>;") 'backward-word)
(global-set-key (kbd "<f6>-") 'beginning-of-buffer)
(global-set-key (kbd "<f6>=") 'end-of-buffer)
(global-set-key (kbd "<f6>g") 'goto-line)
(global-set-key (kbd "<f6>/") 'isearch-foward)
(global-set-key (kbd "<f6>?") 'isearch-backward)
(global-set-key (kbd "<c-f6>/") 'query-replace)
(global-set-key (kbd "<f6>m") 'set-mark-command)
(global-set-key (kbd "<f6>y") 'command-yank)
(global-set-key (kbd "<f6>r") 'kill-region)
(global-set-key (kbd "<f6>f") 'find-file)
(global-set-key (kbd "<f6>b") 'switch-to-buffer)
(global-set-key (kbd "<f6>|") 'split-window-vertically)
(global-set-key (kbd "<f6>1") 'delete-other-windows)
(global-set-key (kbd "<f6>o") 'other-window)
  (global-set-key (kbd "<m-f6>/") 'query-replace-regexp)
  (global-set-key (kbd "<f5><f7>") 'menu-bar-open)
  (global-set-key (kbd "<f5><f6>") 'switch-to-buffer)

'(use-package 'ido
:config (ido-mode t))
'(use-package 'icomplete
:config (icomplete-mode t))
'(use-package 'helm)
;(use-package helm :config (require 'helm-config))
'(use-package selectrum
:config (selectrum-mode +1)
(setq selectrum-refine-candidates-function #'orderless-filter)
(setq selectrum-highlight-candidates-function #'orderless-highlight-matches)
)
'(use-package icicles 
 :config
(icy-mode 1))
  '(use-package 'smex ; Not needed if you use package.el
  :config (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                    ; when Smex is auto-initialized on its first run.
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  )
  
 '(use-package ace-popup-menu)
; exwm dired+ sunrise cedet 
  
'(use-package 'rust
:config (rust-mode 1))
(autoload 'rust-mode "rust-mode" nil t)
;(require 'rust-mode)
;(rust-mode 1)
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(setq rust-format-on-save t)
(define-key rust-mode-map (kbd "<f7>r") 'rust-run)
(define-key rust-mode-map (kbd "<f7>t") 'rust-test)
(define-key rust-mode-map (kbd "<f7>x") 'rust-compile)
(define-key rust-mode-map (kbd "<f7>c") 'rust-check)
(define-key rust-mode-map (kbd "<f7>l") 'rust-run-clippy)
(define-key rust-mode-map (kbd "<f7>d") 'rust-dbg-wrap-or-unwrap)
;(use-package rustic)
;(setq rustic-lsp-client 'eglot)
(setq rustic-analyzer-command '("~/.cargo/bin/rust-analyzer"))

;(setq rustic-lsp-server 'rls)

;(setq cargo-process--command-bench "bench")
;(setq cargo-process--command-build "build")
;(setq cargo-process--command-clean "clean")
;(setq cargo-process--command-doc "doc")
;(etq cargo-process--command-doc-open "doc --open")
;(setq cargo-process--command-new "new")
;(setq cargo-process--command-init "init")
;(setq cargo-process--command-run "run")
;(setq cargo-process--command-run-bin "run --bin")
;(setq cargo-process--command-run-example "run --example")
;(setq cargo-process--command-search "search")
;(setq cargo-process--command-test "test")
;(setq cargo-process--command-current-test "test")
;(setq cargo-process--command-current-file-tests "test")
;(setq cargo-process--command-update "update")
;(setq cargo-process--command-fmt "fmt")
;(setq cargo-process--command-check "check")
;(setq cargo-process--command-clippy "clippy")
;(setq cargo-process--command-add "add")
;(setq cargo-process--command-rm "rm")
;(setq cargo-process--command-upgrade "upgrade")
;(setq cargo-process--command-audit "audit -f")
 ;(define-key cargo-mode-map (kbd ...) 'cargo-minor-mode-command-map)
;(use-package powerline
;:init (powerline-mode t))
  
(use-package smart-mode-line
  :ensure nil
  :init (add-hook 'after-init-hook 'sml/setup)
  :config
  ;; Fix a couple of long project names with an icon:
  (add-to-list 'sml/replacer-regexp-list '("^~/website/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Google Drive/technical/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Google/technical/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/technical/" "[¿¿¿]"))

  (add-to-list 'sml/replacer-regexp-list '("^~/Google Drive/Notes/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Google/Notes/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Notes/" "[¿]"))

  (add-to-list 'sml/replacer-regexp-list '("^~/Other/dot-files/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Work/dot-files/" "[¿]"))

  ;; Shorten a couple of well-known directories ... these need to be first:
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Google Drive/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Google/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/google/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Dropbox/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Work/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Workspace/" "¿:"))

;  (sml/apply-theme 'dark)

  ;; Since I almost always use Git, let's shorten its display:
  (setcdr (assq 'vc-mode mode-line-format)
    '((:eval (replace-regexp-in-string "^ Git" "\xe0a0" vc-mode)))))


(use-package smart-mode-line
  :ensure t
  :init (add-hook 'after-init-hook 'sml/setup)
  :config
  ;; Fix a couple of long project names with an icon:
  (add-to-list 'sml/replacer-regexp-list '("^~/website/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Google Drive/technical/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Google/technical/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/technical/" "[¿¿¿]"))

  (add-to-list 'sml/replacer-regexp-list '("^~/Google Drive/Notes/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Google/Notes/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Notes/" "[¿]"))

  (add-to-list 'sml/replacer-regexp-list '("^~/Other/dot-files/" "[¿]"))
  (add-to-list 'sml/replacer-regexp-list '("^~/Work/dot-files/" "[¿]"))

  ;; Shorten a couple of well-known directories ... these need to be first:
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Google Drive/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Google/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/google/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Dropbox/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Work/" "¿:") t)
  ;; (add-to-list 'sml/replacer-regexp-list '("^~/Workspace/" "¿:"))

  (sml/apply-theme 'dark)

  ;; Since I almost always use Git, let's shorten its display:
  (setcdr (assq 'vc-mode mode-line-format)
    '((:eval (replace-regexp-in-string "^ Git" "\xe0a0" vc-mode)))))

 '(require 'smex) ; Not needed if you use package.el
  '(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                    ; when Smex is auto-initialized on its first run.

                      (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;smex-show-unbound-commands

;comment-region
;menu-bar



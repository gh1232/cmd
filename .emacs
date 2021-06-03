
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
   '(slime govc go helm company-php imenu-anywhere ecb smex auto-complete company spacemacs-theme evil ## magit gited))
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
New buffer will be named �untitled� or �untitled<2>�, �untitled<3>�, etc.
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
;(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

;(add-to-list 'default-frame-alist '(fullscreen . maximized))
  (scroll-bar-mode -1) ;; no scroll bar
    (add-hook 'emacs-startup-hook 'toggle-frame-maximized)


;(add-to-list 'load-path "~/.emacs.d/evil/evil-master/")
;(require 'evil)
;(evil-mode 1)


;(load-file "~/.emacs.d/emacskeys.el")

(load-file "~/.emacs.d/elpa/which-key/which-key.el")
(require 'which-key)
(which-key-mode)




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


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
  (global-set-key (kbd "C-S-p") 'package-refresh-contents) 
  (global-set-key (kbd "C-S-i") 'package-install) 


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



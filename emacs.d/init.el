;; key bindings
(keyboard-translate ?\C-h ?\C-?) ; backspace
(define-key global-map (kbd "C-x ?") 'help-command)

(define-key global-map (kbd "M-,") 'scroll-down)
(define-key global-map (kbd "M-.") 'scroll-up)
(define-key global-map (kbd "C-M-,") 'beginning-of-buffer)
(define-key global-map (kbd "C-M-.") 'end-of-buffer)
(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-m") 'newline-and-indent)

;; cursor position
(column-number-mode t)
(line-number-mode t)
(size-indication-mode t)

;; frame settings
(tool-bar-mode -1)
(setq frame-title-format "%f")

;; auto saving
(add-to-list 'backup-directory-alist
	     (cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transforms
      `((".*", (expand-file-name "~/.emacs.d/backups/") t)))
(setq auto-save-timeout 15)
(setq auto-save-interval 60)

;; indentation
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (c-set-style "stroustrup")))  ; indent-width is 4

;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil)  ; turn off the cua-mode key bindings


;; -----------------------------------------------------------------------------
;; Load extensions
;; -----------------------------------------------------------------------------

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf" "public_repos")

;; repository
;; -> http://emacs-jp.github.io/packages/package-management/package-el.html

(when (require 'package nil t)
  (add-to-list 'package-archives
               '("melpa" . "https://melpa.org/packages/"))
  (add-to-list 'package-archives
               '("melpa-stable" . "https://stable.melpa.org/packages/"))
  (add-to-list 'package-archives
               '("marmalade" . "https://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives
               '("org" . "https://orgmode.org/elpa/"))
  (package-initialize))

;; how to use
;;   M-x package-refresh-contents & M-x package-install
;;   or M-x package-list-packages
;;   or M-x package-list-packages-no-fetch (if already refreshed)

;; redo+
;; -> https://www.emacswiki.org/emacs/download/redo%2b.el
(when (require 'redo+ nil t)
  (define-key global-map (kbd "C-,") 'undo)
  (define-key global-map (kbd "C-.") 'redo))

;; helm
;; -> M-x package-install RET helm RET
(when (require 'helm-config)
  (helm-mode 1)
  (define-key global-map (kbd "M-x") 'helm-M-x)
  (define-key global-map (kbd "M-y") 'helm-show-kill-ring)
  (define-key global-map (kbd "C-x C-b") 'helm-mini)
  (define-key global-map (kbd "C-x C-f") 'helm-find-files)
  (define-key global-map (kbd "C-x m") 'helm-man-woman))

;; magit
(when (require 'magit nil t)
  (define-key global-map (kbd "C-x g") 'magit-status))

;; -----------------------------------------------------------------------------
;; Load separated configuration files
;; -----------------------------------------------------------------------------

(load "mycolor")


;; End of manual settings
;; -----------------------------------------------------------------------------

;; .emacs.d/init.el


;; ===================================

;; MELPA Package Support

;; ===================================

;; Enables basic packaging support

(require 'package)




;; Adds the Melpa archive to the list of available repositories

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Initializes the package infrastructure

(package-initialize)


;; If there are no archived package contents, refresh them

(when (not package-archive-contents) 
  (package-refresh-contents))

;; Installs packages

;;

;; myPackages contains a list of package names

(defvar myPackages 
  '(better-defaults ;; Set up some better Emacs defaults
    elpy	    ;; Emacs Lisp Python Environment
    py-autopep8	    ;; Run autopep8 on save
    blacken	    ;; Black formatting on save
    magit	    ;; Git integration
    flycheck	    ;; On the fly syntax checking
    material-theme  ;; Theme
    projectile
    ))


;; Scans the list in myPackages

;; If the package listed is not already installed, install it

(mapc #'(lambda (package) 
	  (unless (package-installed-p package) 
	    (package-install package))) myPackages)

;; ===================================

;; Basic Customization

;; ===================================


(setq inhibit-startup-message t) ;; Hide the startup message

(load-theme 'material t) ;; Load material theme

(global-linum-mode t) ;; Enable line numbers globally

;; Enable elpy
(elpy-enable)
;; Enable Flycheck

(when 
    (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enable autopep8

(require 'py-autopep8)

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages (quote (srefactor material-theme better-defaults))))

(add-to-list 'default-frame-alist '(font . "JetBrains Mono"))

;; User-Defined init.el ends here


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (forth-mode bifocal binclock markdown-mode fsharp-mode intero alchemist tuareg inf-ruby nodejs-repl typescript-mode company-web company go-mode csharp-mode javadoc-lookup js3-mode flycheck utop web-mode-edit-element web-mode skewer-mode elm-mode geiser tern autopair erlang slime neotree imenu-list auto-complete helm ido-ubiquitous python base16-theme cider))))

;; Set theme
(load-theme 'base16-eighties)

;; Set font size
(set-face-attribute 'default nil :height 190)

;; Set custom keys
(global-set-key (kbd "M-x") 'helm-M-x)

;; Enable line numbers in every buffer
(global-linum-mode t)

;; Enable column numbers in every buffer
(column-number-mode t)

;; Enable company mode in every buffer
(global-company-mode t)

;; Enable autopair in every buffer
(autopair-global-mode t)

;; Set default Python to 'python3'
(setq python-shell-native-complete nil)
(setq python-shell-interpreter "python3")

;; Set SLIME settings
(setq slime-lisp-implementations
      '((sbcl ("/usr/local/bin/sbcl"))
	(clisp ("/usr/local/bin/clisp"))))
(setq slime-contribs '(slime-fancy))
(slime-setup '(slime-fancy slime-tramp slime-asdf))
(slime-require :swank-listener-hooks)   

;; Set geiser settings
(setq geiser-racket-binary "/usr/local/bin/racket")

;; Add exec path
(add-to-list 'exec-path "/usr/local/bin")

;; 80 column width
(setq-default fill-column 80)

;; Maximize window
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Use the opam installed utop
(setq utop-command "opam config exec -- utop -emacs")

;; Remove comments from scratch buffer
(setq initial-scratch-message nil)

;; Enable web-mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Set auto-save files to temp
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

;; Set tab-width for web-mode
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

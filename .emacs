(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(setq dired-recursive-deletes 'top)

(global-auto-revert-mode 1)

(add-hook 'python-mode-hook 'anaconda-mode)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(helm-mode 1)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "C-x C-f") 'helm-find-files)

(drag-stuff-global-mode)

;; Wind-move                                                                                                                                                                                                                                   
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
;; Wind-resize                                                                                                                                                                                                                                 
(global-set-key (kbd "C-c <C-up>") 'enlarge-window)
(global-set-key (kbd "C-c <C-down>") 'shrink-window)
(global-set-key (kbd "C-c <C-right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c <C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-c =") 'balance-windows)
;; Wind-arranging                                                                                                                                                                                                                              
(global-set-key (kbd "C-c C-d") 'delete-window)
(global-set-key (kbd "C-c C-c C-d") 'kill-buffer-and-window)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (drag-stuff jedi-direx ac-anaconda projectile jedi helm anaconda-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

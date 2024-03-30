(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(with-eval-after-load 'package
  (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/")))


(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(cua-mode t)
(evil-mode 1)
(global-display-line-numbers-mode t)

(vertico-mode)
(marginalia-mode)

(add-hook 'after-init-hook 'global-company-mode)

(defun my-treat-dash-and-underscore-as-word ()
  (modify-syntax-entry ?- "w" )
  (modify-syntax-entry ?_ "w" ))

(add-hook 'after-change-major-mode-hook 'my-treat-dash-and-underscore-as-word)



(defun my-emacs-setup()
  (display-line-numbers-mode)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
 '(inhibit-startup-screen t)
 '(nil nil t)
 '(package-selected-packages '(cape company consult marginalia vertico evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminus (TTF)" :foundry "AX86" :slant normal :weight normal :height 120 :width normal)))))

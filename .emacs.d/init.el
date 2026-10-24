;;; init.el --- Configuración de Emacs  -*- lexical-binding: t -*-

;;; ---------------------------------------------------------------
;;; 1. Custom: a su propio archivo
;;; ---------------------------------------------------------------
;; Todo lo que Emacs escribe solo (M-x customize, lista de paquetes
;; instalados, etc.) va a custom.el y deja este archivo limpio.
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror 'nomessage)

;;; ---------------------------------------------------------------
;;; 2. Paquetes
;;; ---------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; use-package viene incluido desde Emacs 29.
(require 'use-package)
(setq use-package-always-ensure t)      ; instala lo que falte automáticamente

;;; ---------------------------------------------------------------
;;; 3. Interfaz y apariencia
;;; ---------------------------------------------------------------
(load-theme 'deeper-blue t)
(set-face-attribute 'default nil :family "JetBrainsMono Nerd Font" :height 120)
(tool-bar-mode -1)
;; Números de línea solo en buffers de código
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;;; ---------------------------------------------------------------
;;; 4. Comportamiento general
;;; ---------------------------------------------------------------
;; Comandos que Emacs trae deshabilitados por defecto
(put 'upcase-region 'disabled nil)      ; C-x C-u

;;; ---------------------------------------------------------------
;;; 6. Terminal: vterm
;;; ---------------------------------------------------------------
(use-package vterm
  :defer t)                             ; se carga recién al abrir M-x vterm

;;; ---------------------------------------------------------------
;;; 7. Evil: emulación de Vim
;;; ---------------------------------------------------------------
(use-package evil
  :init
  (setq evil-want-integration t
        evil-want-keybinding nil
        evil-want-C-u-scroll t)
  :config
  (evil-mode 1))
;;; init.el ends here

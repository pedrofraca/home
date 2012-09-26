;; Pedro Fraca <pedro.fraca@gmail.com> .emacs file

;;Left Option as Meta, right-Option as Alt
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)
(setq make-backup-files nil)
(set-foreground-color "#dbdbdb")
(set-background-color "#000000")
(set-cursor-color "#ff0000")
(custom-set-variables '(load-home-init-file t t))
(set-face-attribute 'default nil :height 160)

(tool-bar-mode -1)

(add-to-list 'load-path "~/emacs_loadpath/")

(require 'template)
(require 'move)

;;Key Binding
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "C-r") 'find-name-dired)
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-ñ f") 'delete-file)
(global-set-key (kbd "C-ñ d") 'delete-directory)

(template-initialize)

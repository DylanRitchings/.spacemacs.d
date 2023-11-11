
;; This file is loaded by Spacemacs at startup.

;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'all
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()

;; ---------------------------------- CONFIG LAYERS -------------------------------
   dotspacemacs-configuration-layers
   '(html
     typescript
     (go :variables go-backend 'lsp)
     (auto-completion :variables auto-completion-use-company-box t)
     better-defaults
     csv
     debug
     emacs-lisp
     emoji
     evil-snipe
     (git :variables git-enable-magit-delta-plugin t)
     go
     helpful
     ipython-notebook
     ivy
     json
     (lsp :variables lsp-signature-auto-activate nil)
     markdown
     multiple-cursors
     node
     dap
     org
     pdf
     prodigy
     tree-sitter
     rust
     scala
     spacemacs
     spacemacs-completion
     spacemacs-defaults
     spacemacs-editing
     spacemacs-editing-visual
     spacemacs-evil
     spacemacs-language
     spacemacs-layouts
     spacemacs-misc
     spacemacs-modeline
     spacemacs-navigation
     spacemacs-org
     spacemacs-project
     spacemacs-visual
     ;; spell-checking
     syntax-checking
     tree-sitter
     theming
     unicode-fonts
     (version-control :packages (not git-gutter))
     windows-scripts
     yaml
     (ranger :variables
             ranger-override-dired 'deer
             ranger-show-preview t)
     (python :variables
             python-formatter 'black
             python-format-on-save t
             python-sort-imports-on-save t
             python-backend 'lsp
             python-lsp-server 'pylsp
             python-test-runner 'pytest
             python-eldoc-at-point nil
             python-enable-eldoc nil
             python-eldoc-function nil
             )
     (shell :variables
            close-window-with-terminal t
            shell-default-position 'bottom
            )
     (org :variables org-enable-github-support t)
     )

;;;; ----------------------------------------- CONFIG LAYERS END ----------------------------------------------

   dotspacemacs-additional-packages '(
                                      feature-mode
                                      )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  (setq-default
   dotspacemacs-enable-emacs-pdumper nil
   dotspacemacs-emacs-pdumper-executable-file "emacs"
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-gc-cons '(100000000 0.1)
   dotspacemacs-read-process-output-max (* 1024 1024)
   dotspacemacs-use-spacelpa nil
   dotspacemacs-verify-spacelpa-archives t
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory 'emacs-version
   dotspacemacs-editing-style 'vim
   dotspacemacs-startup-buffer-show-version t
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner-scale 'auto
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7)
                                (todos . 2) ;TODO finish this
                                (agenda . 2)
                                (bookmarks . 4)
                                )
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-show-startup-list-numbers t
   dotspacemacs-startup-buffer-multi-digit-delay 0.4
   dotspacemacs-startup-buffer-show-icons t
   dotspacemacs-new-empty-buffer-major-mode 'prog-mode
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-scratch-buffer-persistent t
   dotspacemacs-scratch-buffer-unkillable nil
   dotspacemacs-initial-scratch-message nil
   dotspacemacs-themes '(doom-oceanic-next
                         doom-spacegrey
                         doom-one)

   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 11.0
                               :weight normal
                               :width normal)

   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-generate-layout-names nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar t

   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-undecorated-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-background-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-scroll-bar-while-scrolling t
   dotspacemacs-line-numbers 'relative
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-activate-smartparens-mode t
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server t
   dotspacemacs-server-socket-dir nil
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   dotspacemacs-frame-title-format "%I@%S"
   dotspacemacs-icon-title-format nil
   dotspacemacs-show-trailing-whitespace t
   dotspacemacs-whitespace-cleanup 'trailing
   dotspacemacs-use-clean-aindent-mode t
   dotspacemacs-use-SPC-as-y nil
   dotspacemacs-swap-number-row nil
   dotspacemacs-zone-out-when-idle nil
   dotspacemacs-pretty-docs t
   dotspacemacs-home-shorten-agenda-source t
   dotspacemacs-byte-compile t))

(defun dotspacemacs/user-env ()
  (spacemacs/load-spacemacs-env)
)

(defun dotspacemacs/user-init ()
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

)


(defun dotspacemacs/user-load ()
)


(defun dotspacemacs/user-config ()
  (setq eldoc-echo-area-use-multiline-p nil)
  (setq lsp-signature-auto-activate nil)


  (defun my-ranger-mode-hook ()

    (unbind-key "j" ranger-mode-map)
    (unbind-key "k" ranger-mode-map)
    (unbind-key "l" ranger-mode-map)
    (unbind-key ";" ranger-mode-map)

    (define-key ranger-normal-mode-map (kbd "j") 'ranger-up-directory)
    (define-key ranger-normal-mode-map (kbd "k") 'ranger-next-file)
    (define-key ranger-normal-mode-map (kbd "l") 'ranger-prev-file)
    (define-key ranger-normal-mode-map (kbd ";") 'ranger-find-file)
  )

  (ranger-override-dired-mode t)

  (add-hook 'ranger-mode-hook 'my-ranger-mode-hook)

  (with-eval-after-load 'dired-mode
    (unbind-key "j" dired-mode-map)
    (unbind-key "k" dired-mode-map)
    (unbind-key "l" dired-mode-map)
    (unbind-key ";" dired-mode-map)

    (define-key dired-mode-map (kbd "j") 'dired-up-directory)
    (define-key dired-mode-map (kbd "k") 'dired-next-line)
    (define-key dired-mode-map (kbd "l") 'dired-previous-line)
    (define-key dired-mode-map (kbd ";") 'dired-find-file))

  (defun my-dired-mode-hook ()

    (unbind-key "j" dired-mode-map)
    (unbind-key "k" dired-mode-map)
    (unbind-key "l" dired-mode-map)
    (unbind-key ";" dired-mode-map)

    (define-key dired-mode-map (kbd "j") 'dired-up-directory)
    (define-key dired-mode-map (kbd "k") 'dired-next-line)
    (define-key dired-mode-map (kbd "l") 'dired-previous-line)
    (define-key dired-mode-map (kbd ";") 'dired-find-file))

  (add-hook 'dired-before-readin-hook 'my-dired-mode-hook)
  (add-hook 'dired-after-readin-hook 'my-dired-mode-hook)
  (add-hook 'dired-mode-hook 'my-dired-mode-hook)

  (define-key evil-normal-state-map "H" 'evil-join)
  (define-key evil-motion-state-map "j" 'evil-backward-char)
  (define-key evil-motion-state-map "J" 'evil-window-top)
  (define-key evil-motion-state-map "k" 'evil-next-line)
  (define-key evil-motion-state-map "l" 'evil-previous-line)
  (define-key evil-motion-state-map ";" 'evil-forward-char)
  (define-key evil-motion-state-map "h" 'evil-repeat-find-char)
  (define-key evil-window-map "j" 'evil-window-left)
  (define-key evil-window-map "J" 'evil-window-move-far-left)
  (define-key evil-window-map "k" 'evil-window-down)
  (define-key evil-window-map "K" 'evil-window-move-very-bottom)
  (define-key evil-window-map "l" 'evil-window-up)
  (define-key evil-window-map "L" 'evil-window-move-very-top)
  (define-key evil-window-map ";" 'evil-window-right)

  (spacemacs/set-leader-keys "wj" 'evil-window-left)
  (spacemacs/set-leader-keys "wk" 'evil-window-down)
  (spacemacs/set-leader-keys "wl" 'evil-window-up)
  (spacemacs/set-leader-keys "w;" 'evil-window-right)

  (spacemacs/set-leader-keys "dj" 'dumb-jump-go)
  (spacemacs/set-leader-keys "db" 'dumb-jump-back)
  (spacemacs/set-leader-keys "dr" 'dumb-jump-quick-look)

  (setq shell-command-switch "-c")


  (defun open-iterm ()
    (interactive)
    (shell-command "open -a iterm.app ."))

  (defun open-winterm ()
    (interactive)
    (shell-command "wt.exe -w 1 -d ."))


  ;; (if (string-match-p (regexp-quote "darwin") ostype)

  (if (eq system-type 'darwin)
      (progn
        (spacemacs/set-leader-keys "ot" 'open-iterm)
        (setq shell-file-name "zsh")

        ;;VTERM
        (setq shell-default-shell "vterm")
        ))

  (if (eq system-type 'windows-nt)
      (progn
        (spacemacs/set-leader-keys "ot" 'open-winterm)
        (setq dotspacemacs-persistent-server t)
        (setq shell-file-name "C:\\Users\\dylan.ritchings\\dev\\software\\Git\\usr\\bin\\zsh.exe")
        (setq explicit-shell-file-name "C:\\Users\\dylan.ritchings\\dev\\software\\Git\\usr\\bin\\zsh.exe")
        (setq shell-default-shell 'shell)
        ;; (setq shell-file-name "C:\\msys64\\mingw64.exe")
        ;; (setq shell-file-name "C:\\msys64\\msys2_shell.cmd")
        ;; (setq explicit-shell-file-name shell-file-name)
        ;; (add-to-list 'exec-path "C:\\msys64")
        ))


  ;;COMPANY START
  ;; Set the delay (in seconds) before the completion menu appears
  (setq company-idle-delay 0)
  ;; Set the minimum number of characters needed to trigger completion
  (setq company-minimum-prefix-length 1)

  ;; Enable fuzzy matching
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case t)
  (setq company-dabbrev-code-ignore-case t)
  (setq company-dabbrev-code-other-buffers 'all)
  ;;COMPANY END

  (set-face-foreground 'line-number "#ffffff")
  ;; (server-mode 1)
  ;;CENTAUR TABS START
  ;; (centaur-tabs-headline-match)

  ;;CENTAUR TABS END
  (defun my/python-mode-hook ()
    (add-to-list 'company-backends 'company-jedi))

  (add-hook 'python-mode-hook 'my/python-mode-hook)


  (defun get-path ()
    (interactive)
    (kill-new buffer-file-name)
    )

  (spacemacs/set-leader-keys "fp" 'get-path)

  ;; (global-bartab-line-mode)

  (setq magit-repository-directories
        '(("~/dev/repos/" . 2) )
        )
  (defun my/magit-keybinds ()
    (define-key magit-mode-map (kbd "j") 'evil-backward-char)
    (define-key magit-mode-map (kbd "k") 'evil-next-visual-line)
    (define-key magit-mode-map (kbd "l") 'evil-previous-visual-line)
    (define-key magit-mode-map (kbd ";") 'evil-forward-char)
   )

  (add-hook 'magit-mode-hook 'my/magit-keybinds)

  ;; (global-set-key                       ;
  (defun my/magit-status-keybinds ()
    (kl/set-in-state magit-status-mode-map (kbd "j") 'magit-dispatch)
    (kl/set-in-state magit-status-mode-map (kbd "k") 'evil-next-visual-line)
    (kl/set-in-state magit-status-mode-map (kbd "l") 'evil-previous-visual-line)
    (kl/set-in-state magit-status-mode-map (kbd ";") 'magit-log)

    ;; (define-key evil-evilified-state-map (kbd "j") 'magit-dispatch)
    ;; (define-key evil-evilified-state-map (kbd "k") 'evil-next-visual-line)
    ;; (define-key evil-evilified-state-map (kbd "l") 'evil-previous-visual-line)
    ;; (define-key evil-evilified-state-map (kbd ";") 'magit-log)

    ;; (kl/set-in-state magit-status-mode-map ())

    ;; (define-key edebug-mode-map (kbd "j") 'magit-dispatch)
    ;; (define-key edebug-mode-map (kbd "k") 'evil-next-visual-line)
    ;; (define-key edebug-mode-map (kbd "l") 'evil-previous-visual-line)
    ;; (define-key edebug-mode-map (kbd ";") 'magit-log)
    )

  (add-hook 'magit-status-sections-hook 'my/magit-status-keybinds)
  (add-hook 'magit-status-mode-hook 'my/magit-status-keybinds)

  ;; (setq debug-on-error t)



  (setq max-specpdl-size 5000)

  (setq lsp-enable-file-watchers nil)

  (with-eval-after-load 'undo-tree
    (setq undo-tree-auto-save-history nil))
  ;; (setq lsp-enable-imenu nil)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "9ee253fcdb48535bf16df2700582b0a11fe99390b018755b941140f2fcdff219" "66f32da4e185defe7127e0dc8b779af99c00b60c751b0662276acaea985e2721" default))
 '(package-selected-packages
   '(company-anaconda anaconda-mode counsel-gtags ggtags helm-cscope helm-gtags wfnames seq stickyfunc-enhance xcscope linum-relative nlinum-relative lsp-origami lsp-ui add-node-modules-path emmet-mode import-js grizzl typescript-mode web-mode rainbow-mode aws-snippets evil-smartparens counsel-projectile counsel flyspell-correct-ivy ivy-avy ivy-hydra ivy-purpose ivy-xref ivy-yasnippet lsp-ivy smex swiper ivy wgrep bmx-mode company-emoji company-shell csv-mode dap-mode lsp-docker bui yaml emoji-cheat-sheet-plus emojify esh-help eshell-prompt-extras eshell-z evil-snipe fish-mode flycheck-bashate helpful elisp-refs insert-shebang json-mode json-navigator hierarchy json-reformat json-snatcher multi-term powershell prettier-js realgud test-simple loc-changes load-relative shell-pop shfmt reformatter terminal-here web-beautify xterm-color yaml-mode blacken code-cells cython-mode helm-pydoc importmagic epc ctable concurrent deferred live-py-mode lsp-pyright lsp-python-ms nose pip-requirements pipenv load-env-vars pippel poetry py-isort pydoc pyenv-mode pythonic pylookup pytest pyvenv sphinx-doc yapfify centaur-tabs company ws-butler writeroom-mode winum which-key volatile-highlights vim-powerline vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-icons-dired treemacs-evil toc-org term-cursor symon symbol-overlay string-inflection string-edit-at-point spacemacs-whitespace-cleanup spacemacs-purpose-popwin spaceline-all-the-icons space-doc restart-emacs request rainbow-delimiters quickrun popwin pcre2el password-generator paradox overseer org-superstar open-junk-file nameless multi-line macrostep lorem-ipsum link-hint inspector info+ indent-guide hybrid-mode hungry-delete holy-mode hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org helm-mode-manager helm-make helm-descbinds helm-ag google-translate golden-ratio font-lock+ flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-evilified-state evil-escape evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu emr elisp-slime-nav elisp-def editorconfig dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish devdocs define-word column-enforce-mode clean-aindent-mode centered-cursor-mode auto-highlight-symbol auto-compile aggressive-indent ace-link ace-jump-helm-line)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)

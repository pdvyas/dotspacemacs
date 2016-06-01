;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; (default nil)
   dotspacemacs-enable-lazy-installation nil
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/custom-layers/")
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     spacemacs-helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     themes-megapack
     osx
     salt
     git
     html
     finance
     racket
     markdown
     syntax-checking
     javascript
     go
     java
     version-control
     latex
     org
     ;; c-c++
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode)
     clojure
     pd-org-helper
     auto-completion
     ;; git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(git-link)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   ;; dotspacemacs-themes '(spacemacs-dark
   ;;                       spacemacs-light
   ;;                       solarized-light
   ;;                       solarized-dark
   ;;                       leuven
   ;;                       monokai
   ;;                       zenburn)
   dotspacemacs-themes '(apropospriate-dark leuven)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Menlo"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; (setq default-process-coding-system '(utf-8 . utf-8))
  (setq gofmt-command "goimports")


  (define-key evil-normal-state-map "x" 'er/expand-region)
  (define-key evil-normal-state-map "s" 'er/contract-region)
  (global-set-key (kbd "s-,") 'helm-M-x)
  (global-set-key (kbd "s-z") 'spacemacs/alternate-buffer)
  (define-key evil-normal-state-map ";" 'evil-ex)
  (setq mouse-wheel-scroll-amount '(2 ((shift) . 2) ((control) . nil)))
  (setq mouse-wheel-progressive-speed nil)

  (setq org-directory '"~/Dropbox/org")
  (setq org-default-notes-file (concat org-directory "/capture.org"))
  (setq org-capture-templates
        '(("r" "Todo" entry (file+headline "~/Dropbox/org/capture.org" "Inbox")
           "* TODO %?")
          ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
           )))
  (setq org-refile-targets (quote ((nil :maxlevel . 9)
                                   (org-agenda-files :maxlevel . 9))))

  (setq org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)")
          (sequence "WAITING(w@/!)" "HOLD(h@/!)" "SOMEDAY(o)" "|" "CANCELLED(c@/!)")))

  (defadvice org-archive-subtree (around my-org-archive-subtree activate)
    (let ((org-archive-location
           (if (save-excursion (org-back-to-heading)
                               (> (org-outline-level) 1))
               (concat (car (split-string org-archive-location "::"))
                       "::* "
                       (car (org-get-outline-path)))
             org-archive-location)))
      ad-do-it))


  ;; display teh tags farther right
  (require 'org-helpers)
  (setq org-agenda-tags-column -102)
  ;; display the org-habit graph right of the tags
  (setq org-habit-graph-column 102)
  (setq org-habit-following-days 7)
  (setq org-habit-preceding-days 21)


  (require 'org-habit)
  (setq org-agenda-files '("~/Dropbox/org"))
  (setq org-agenda-custom-commands
        '(("a" "Agenda"
           ((agenda "" nil)
            (alltodo ""
                     ((org-agenda-overriding-header "Tasks to Refile")
                      (org-agenda-files '("~/.org/inbox.org"))
                      (org-agenda-skip-function
                       '(oh/agenda-skip :headline-if-restricted-and '(todo)))))
            (tags-todo "-CANCELLED/!-HOLD-WAITING"
                       ((org-agenda-overriding-header "Stuck Projects")
                        (org-agenda-skip-function
                         '(oh/agenda-skip :subtree-if '(inactive non-project non-stuck-project habit scheduled deadline)))))
            (tags-todo "-WAITING-CANCELLED/!NEXT"
                       ((org-agenda-overriding-header "Next Tasks")
                        (org-agenda-skip-function
                         '(oh/agenda-skip :subtree-if '(inactive project habit scheduled deadline)))
                        (org-tags-match-list-sublevels t)
                        (org-agenda-sorting-strategy '(todo-state-down effort-up category-keep))))
            (tags-todo "-CANCELLED/!-NEXT-HOLD-WAITING"
                       ((org-agenda-overriding-header "Available Tasks")
                        (org-agenda-skip-function
                         '(oh/agenda-skip :headline-if '(project)
                                          :subtree-if '(inactive habit scheduled deadline)
                                          :subtree-if-unrestricted-and '(subtask)
                                          :subtree-if-restricted-and '(single-task)))
                        (org-agenda-sorting-strategy '(category-keep))))
            (tags-todo "-CANCELLED/!"
                       ((org-agenda-overriding-header "Currently Active Projects")
                        (org-agenda-skip-function
                         '(oh/agenda-skip :subtree-if '(non-project stuck-project inactive habit)
                                          :headline-if-unrestricted-and '(subproject)
                                          :headline-if-restricted-and '(top-project)))
                        (org-agenda-sorting-strategy '(category-keep))))
            (tags-todo "-CANCELLED/!WAITING|HOLD"
                       ((org-agenda-overriding-header "Waiting and Postponed Tasks")
                        (org-agenda-skip-function
                         '(oh/agenda-skip :subtree-if '(project habit))))))
           nil)
          ("r" "Tasks to Refile" alltodo ""
           ((org-agenda-overriding-header "Tasks to Refile")
            (org-agenda-files '("~/.org/inbox.org"))))
          ("#" "Stuck Projects" tags-todo "-CANCELLED/!-HOLD-WAITING"
           ((org-agenda-overriding-header "Stuck Projects")
            (org-agenda-skip-function
             '(oh/agenda-skip :subtree-if '(inactive non-project non-stuck-project
                                                     habit scheduled deadline)))))
          ("n" "Next Tasks" tags-todo "-WAITING-CANCELLED/!NEXT"
           ((org-agenda-overriding-header "Next Tasks")
            (org-agenda-skip-function
             '(oh/agenda-skip :subtree-if '(inactive project habit scheduled deadline)))
            (org-tags-match-list-sublevels t)
            (org-agenda-sorting-strategy '(todo-state-down effort-up category-keep))))
          ("R" "Tasks" tags-todo "-CANCELLED/!-NEXT-HOLD-WAITING"
           ((org-agenda-overriding-header "Available Tasks")
            (org-agenda-skip-function
             '(oh/agenda-skip :headline-if '(project)
                              :subtree-if '(inactive habit scheduled deadline)
                              :subtree-if-unrestricted-and '(subtask)
                              :subtree-if-restricted-and '(single-task)))
            (org-agenda-sorting-strategy '(category-keep))))
          ("p" "Projects" tags-todo "-CANCELLED/!"
           ((org-agenda-overriding-header "Currently Active Projects")
            (org-agenda-skip-function
             '(oh/agenda-skip :subtree-if '(non-project inactive habit)))
            (org-agenda-sorting-strategy '(category-keep))
            (org-tags-match-list-sublevels 'indented)))
          ("w" "Waiting Tasks" tags-todo "-CANCELLED/!WAITING|HOLD"
           ((org-agenda-overriding-header "Waiting and Postponed Tasks")
            (org-agenda-skip-function '(oh/agenda-skip :subtree-if '(project habit)))))))

  ;; Clipboard

  (defun isolate-kill-ring()
    "Isolate Emacs kill ring from OS X system pasteboard.
This function is only necessary in window system."
    (interactive)
    (setq interprogram-cut-function nil)
    (defun pasteboard-copy()
      "Copy region to OS X system pasteboard."
      (interactive)
      (shell-command-on-region
       (region-beginning) (region-end) "pbcopy"))

    (defun pasteboard-paste()
      "Paste from OS X system pasteboard via `pbpaste' to point."
      (interactive)
      (shell-command-on-region
       (point) (if mark-active (mark) (point)) "pbpaste" nil t))

    (defun pasteboard-cut()
      "Cut region and put on OS X system pasteboard."
      (interactive)
      (pasteboard-copy)
      (delete-region (region-beginning) (region-end))))


  (define-minor-mode compile-on-save-mode
    "Minor mode to automatically call `recompile' whenever the
current buffer is saved. When there is ongoing compilation,
nothing happens."
    :lighter " CoS"
    (if compile-on-save-mode
        (progn  (make-local-variable 'after-save-hook)
                (add-hook 'after-save-hook 'compile-on-save-start nil t))
      (kill-local-variable 'after-save-hook)))

  (defun compile-on-save-start ()
    (let ((buffer (compilation-find-buffer)))
      (unless (get-buffer-process buffer)
        (recompile))))


  (setq exec-path (append exec-path '("/Applications/Racket\ v6.3/bin")))
  (setq exec-path (append exec-path '("/Users/pdvyas/project/gocode/bin")))
  (defun mac-hide-others ()
    (interactive)
    "On a Mac, hide all applications other than Emacs."
    (do-applescript (concat "tell application \"System Events\" to "
                            "set visible of every process whose visible is true "
                            "and name is not \"Emacs\" to "
                            "false")))
  (global-set-key (kbd "s-M-h") 'mac-hide-others)
  (setq eclim-eclipse-dirs "/Applications/Eclipse.app/Contents/Eclipse"
        eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/plugins/org.eclim_2.5.0/bin/eclim")

  (setq clojure-enable-fancify-symbols t)

(progn
  (isolate-kill-ring)
  ;; bind CMD+C to pasteboard-copy
  (global-set-key (kbd "s-c") 'pasteboard-copy)
  ;; bind CMD+V to pasteboard-paste
  (global-set-key (kbd "s-v") 'pasteboard-paste)
  ;; bind CMD+X to pasteboard-cut
  (global-set-key (kbd "s-x") 'pasteboard-cut))
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

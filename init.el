(require 'org)

;; My policy on customs.  I embrace them to play with local files, but once they fit
;; my workflow, they should be committed into the main configuration file. The
;; reason is self-documentation, to make it possible to understand what a config
;; actually does.  The following code will place the custom away from this file
;; to avoid Git messing with the file.

(setq custom-file (expand-file-name (concat user-emacs-directory "custom.el")))
(when (file-exists-p custom-file)
  (load-file custom-file))

;; NOTE: I was planning to do something that only tangles the file if the org file has
;; actually been modified, but it turns out that the default behaviour of
;; org-babel-load-file is actually to do this!
(org-babel-load-file (expand-file-name (concat user-emacs-directory "Config.org")))

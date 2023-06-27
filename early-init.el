(require 'org)

(defun danirod/dotfile (file) (expand-file-name (concat user-emacs-directory file)))

(let* ((customs-file (danirod/dotfile "custom.el"))
       (config-org-file (danirod/dotfile "Config.org"))
       (config-el-file (danirod/dotfile "Config.el")))
  (when (file-newer-than-file-p config-org-file config-el-file)
    (org-babel-tangle-file config-org-file config-el-file))
  (load-file config-el-file)
  (when (file-exists-p customs-file)
    (load-file customs-file)))

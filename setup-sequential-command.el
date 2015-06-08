;;; sequential-command-config.el --- setup of sequential-command.el
;; Time-stamp: <2015-06-8 18:00:00 bitswitcher>
;; Copyright (C) 2015 bitswitcher

(require 'sequential-command)

(define-sequential-command seq-home
  beginning-of-line beginning-of-defun seq-return)

(define-sequential-command seq-end
  end-of-line end-of-defun seq-return)

(defun sequential-command-setup-keys ()
  (interactive)
  (global-set-key "\C-a" 'seq-home)
  (global-set-key "\C-e" 'seq-end))

(provide 'setup-command-config)

;;; setup-sequential-command.el ends here

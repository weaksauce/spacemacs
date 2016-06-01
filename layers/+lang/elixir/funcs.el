;;; funcs.el --- Elixir Layer functions File for Spacemacs
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun spacemacs//elixir-do-end-close-action (id action context)
  (when (eq action 'insert)
    (newline-and-indent)
    (forward-line -1)
    (indent-according-to-mode)))

(defun spacemacs//elixir-enable-compilation-checking ()
  "Enable compile checking if `elixir-enable-compilation-checking' is non nil."
  (message "djeoifhwfwfjegweifh")
  (hack-dir-local-variables)
  (let ((enabled (cdr (assq 'elixir-enable-compilation-checking
                            file-local-variables-alist))))
    (message "---> %s" (assq 'elixir-enable-compilation-checking
                        file-local-variables-alist))
    (when (or enabled elixir-enable-compilation-checking)
      (elixir-flycheck-mix-compile-setup))))

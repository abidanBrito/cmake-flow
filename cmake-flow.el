;;; cmake-flow.el --- Short package description -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Abidán Brito

;; Author: Abidán Brito <abidan.brito@gmail.com>
;; Version: 0.1.0
;; Package-Requires: ((emacs "27.1"))
;; Keywords: tools
;; URL: https://github.com/abidanBrito/cmake-flow
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; Describe what this package does and how to start using it.
;; What you write here is what `describe-package' shows.

;;; TODO:

;; - Write the `Commentary' section above.
;; - Set the `Keywords' header (run `finder-list-keywords' to see all
;;   valid options to choose from).

;;; Code:

(defgroup cmake-flow nil
  "Short package description."
  :group 'tools
  :prefix "cmake-flow-")

;; TODO: add your package's options here with `defcustom'.

;;;###autoload
(define-minor-mode cmake-flow-mode
  "Toggle `cmake-flow-mode'."
  :global t
  (if cmake-flow-mode
      (message "cmake-flow enabled")
    (message "cmake-flow disabled")))

(provide 'cmake-flow)
;;; cmake-flow.el ends here

;;; cmake-flow-test.el --- Tests for cmake-flow -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Abidán Brito

;; Author: Abidán Brito <abidan.brito@gmail.com>
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; Tests for cmake-flow using ERT.

;;; Code:

(require 'ert)
(require 'cmake-flow)

(ert-deftest cmake-flow-test-mode-toggles ()
  "The minor mode turns on and off."
  (cmake-flow-mode -1)
  (cmake-flow-mode 1)
  (should cmake-flow-mode)
  (cmake-flow-mode -1)
  (should-not cmake-flow-mode))

(ert-deftest cmake-flow-test-mode-hook-runs ()
  "The mode hook runs when the mode is enabled."
  (cmake-flow-mode -1)
  (let* ((hook-ran nil)
         (fn (lambda () (setq hook-ran t))))
    (add-hook 'cmake-flow-mode-hook fn)
    (unwind-protect
        (progn
          (cmake-flow-mode 1)
          (should hook-ran))
      (cmake-flow-mode -1)
      (remove-hook 'cmake-flow-mode-hook fn))))

;; TODO: add tests for cmake-flow's functionality here.

(provide 'cmake-flow-test)
;;; cmake-flow-test.el ends here

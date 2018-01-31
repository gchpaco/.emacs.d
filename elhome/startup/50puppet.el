(eval-when-compile
  (require 'use-package))

(use-package align
  :config
  (add-to-list 'align-rules-list
               '(puppet-resources
                 (regexp . "\\(\\s-*\\)=>")
                 (modes quote (puppet-mode))
                 (group . 1)
                 (spacing . 1))))

(use-package puppet-mode
  :commands puppet-mode
  :mode "\\.pp\\'"
  :straight t
  :init (setq-default puppet-indent-level 2)
  :config
  (progn (speedbar-add-supported-extension ".pp")
         (add-to-list 'speedbar-fetch-etags-parse-list
                      '("\\.pp" . "\\(\\(class\\|site\\|node\\|define\\)\\s-+\\([a-zA-Z0-9_\-]+\\)\\)\\s-*\\(([^)]*)\\)?^?"))))

(use-package flymake-puppet :straight t)

(defun my-get-class-from-puppet-module ()
  (let ((module-name (file-name-nondirectory
                      (expand-file-name (concat
                                         (file-name-directory buffer-file-name)
                                         ".."))))
        (class-name (file-name-nondirectory
                     (file-name-sans-extension buffer-file-name))))
    (if (string= class-name "init")
        module-name
      (concat module-name "::" class-name))))
(define-skeleton my-puppet-module-default
  "Puppet module initial contents"
  (my-get-class-from-puppet-module)
  "# == Class: " str \n
  "#" \n
  "# " _ \n
  "#"  \n
  "# === Parameters" \n
  "#" \n
  "# " _ \n
  "#" \n
  "# [*ntp_servers*]" \n
  "#   Explanation of what this parameter affects and what it defaults to." \n
  "#   e.g. \"Specify one or more upstream ntp servers as an array.\"" \n
  "#" \n
  "# === Variables" \n
  "#" \n
  "# " _ \n
  "#" \n
  "# [*enc_ntp_servers*]" \n
  "#   Explanation of how this variable affects the funtion of this class and if it" \n
  "#   has a default. e.g. \"The parameter enc_ntp_servers must be set by the" \n
  "#   External Node Classifier as a comma separated list of hostnames.\" (Note," \n
  "#   global variables should not be used in preference to class parameters  as of" \n
  "#   Puppet 2.6.)" \n
  "#" \n
  "# === Examples" \n
  "#" \n
  "# " _ \n
  "# @example" \n
  "#  class { 'example_class':" \n
  "#    ntp_servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]" \n
  "#  }" \n
  "#" \n
  "# === Authors" \n
  "#" \n
  "# Graham Hughes <graham@cloudvelox.com>" \n
  "#" \n
  "# === Copyright" \n
  "#" \n
  "# Copyright 2016 CloudVelox.com, unless otherwise noted." \n
  "#" \n
  "class " str " {" \n
  > _ \n
  "}" > \n)

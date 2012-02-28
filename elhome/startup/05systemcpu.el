(defvar *system-cpu-type*
  (if (string-match "^\\([^-]+\\)-.*$" system-configuration)
      (match-string 1 system-configuration)
    "unknown"))

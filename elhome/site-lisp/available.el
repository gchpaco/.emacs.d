(defmacro require-maybe (feature &optional file)
  "Try to require FEATURE, but don't signal an error if `require' fails."
  `(require ,feature ,file 'noerror))

(defmacro when-available (func foo)
  "Do something if FUNCTION is available."
  `(when (fboundp ,func) ,foo))

(provide 'available)
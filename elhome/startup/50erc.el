;; URL handing stuff from http://inkedmn.infogami.com/blog/
(defun erc-open-last-url-in-channel ()
  "Open Last Url Pasted in Browser"
  (interactive)
  (save-excursion
    (search-backward "http:")
    (browse-url-at-point)))

(defun get-last-urls (count)
  "Build a list of the  most recent urls in the buffer - Thanks Vince!"
  (let ((urls '())
        (n 0))
    (save-excursion
      (while
          (and (not (bobp))
               (< n count))
        (re-search-backward "\\(http://.*?\\)[,;:<>\n\s]" 0 t)
        (add-to-list 'urls (thing-at-point 'url))
        (incf n))
    urls)))

(defun handle-url-select ()
  (interactive)
  (goto-address-at-point)
  (local-set-key (kbd "RET") 'newline-and-indent)
  (bury-buffer))

(defvar *urlcount* 10)

(defun print-urls ()
  "Exposed function to open list of urls and allow opening"
  (interactive)
  (save-excursion
   (let ((urls (get-last-urls *urlcount*)))
     (switch-to-buffer "*urls*")
     (erase-buffer)
     (local-set-key (kbd "RET") 'handle-url-select)
     (dolist (url urls)
       (insert (url-normalize-url url) "\n"))
     (goto-char 1))))

;; A couple custom ERC keybindings
(add-hook 'erc-mode-hook
          '(lambda ()
             (local-set-key (kbd "\C-c o") 'erc-open-last-url-in-channel)))
(add-hook 'erc-mode-hook
          '(lambda ()
             (local-set-key (kbd "\C-c u") 'print-urls)))

;; timestamps should not pop out so much
(set-face-foreground `erc-timestamp-face "dimgrey")


(require 'org)
(require 'ox-html)

(setq org-html-validation-link nil
      org-html-head-include-default-style nil
      org-html-head-include-scripts nil
      org-export-with-section-numbers nil)

(defun my/publish-site ()
  "Export index.org and its stylesheet into public/."
  (interactive)
  (make-directory "public" t)
  (with-current-buffer (find-file-noselect "index.org")
    (org-export-to-file 'html "public/index.html"))
  (copy-file "style.css" "public/style.css" t)
  (message "Site exported to public/"))

(when noninteractive
  (my/publish-site))


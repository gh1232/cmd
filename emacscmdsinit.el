i
find . -type f -iname "*.[ch]" | xargs etags --append

   (setq path-to-ctags "/opt/local/bin/ctags") ;; <- your ctags path here

  (defun create-tags (dir-name)
    "Create tags file."
    (interactive "DDirectory: ")
    (shell-command
     (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name)))
  )   find . -type f -iname "*.[ch]" | etags -



(defun find-definition (arg)
    "Jump to the definition of the symbol, type or function at point.
  With prefix arg, find in other window."
    (interactive "P")
    (let* ((tag (or (semantic-idle-summary-current-symbol-info-context)
                    (semantic-idle-summary-current-symbol-info-brutish)
                    (error "No known tag at point")))
           (pos (or (semantic-tag-start tag)
                    (error "Tag definition not found")))
           (file (semantic-tag-file-name tag)))
      (if file
          (if arg (find-file-other-window file) (find-file file))
        (if arg (switch-to-buffer-other-window (current-buffer))))
      (push-mark)
      (goto-char pos)
      (end-of-line)))

– nschum

How does this differ from the keys defined already by semantic? Is it that fall back to a brutish search if no local definition is found?

– JoakimVerona

   (defadvice xref-find-definitions (before c-tag-file activate)
   "Automatically create tags file."
   (let ((tag-file (concat default-directory "TAGS")))
     (unless (file-exists-p tag-file)
       (shell-command "etags *.[ch] -o TAGS 2>/dev/null"))
     (visit-tags-table tag-file)))

sure-tags.el works pretty well, but I’ve notic e  (defadvice find-tag (before c-tag-file activate)
   "Automatically create tags file."
   (let ((tag-file (concat default-directory "TAGS")))
     (unless (file-exists-p tag-file)
       (shell-command "etags *.[ch] -o TAGS 2>/dev/null"))
     (visit-tags-table tag-file)))

After this 

   (defadvice find-tag (around refresh-etags activate)
   "Rerun etags and reload tags if tag not found and redo find-tag.              
   If buffer is modified, ask about save before running etags."
  (let ((extension (file-name-extension (buffer-file-name))))
    (condition-case err
    ad-do-it
      (error (and (buffer-modified-p)
          (not (ding))
          (y-or-n-p "Buffer is modified, save it? ")
          (save-buffer))
         (er-refresh-etags extension)
         ad-do-it))))

  (defun er-refresh-etags (&optional extension)
  "Run etags on all peer files in current dir and reload them silently."
  (interactive)
  (shell-command (format "etags *.%s" (or extension "el")))
  (let ((tags-revert-without-query t))  ; don't query, revert silently          
    (visit-tags-table default-directory nil)))
 

Other tip

   (defun create-tags (dir-name)
     "Create tags file."
     (interactive "DDirectory: ")
     (eshell-command 
      (format "find %s -type f -name \"*.[ch]\" | etags -" dir-name)))

Auto refresh o

 ;find . -type f -iname "*.[ch]" | xargs etags --append
 
 ,

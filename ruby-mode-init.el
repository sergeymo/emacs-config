(add-third-party-dir "bundled/ruby-mode")

(autoload 'run-ruby "inf-ruby"
  "Run inferior Ruby interpreter")
(autoload 'inf-ruby-keys "inf-ruby" 
  "Add inf-ruby keys to ruby mode map")

(defun ruby-mode-keys ()
  (define-key ruby-mode-map "\r" 'reindent-then-newline-and-indent)
  (define-key ruby-mode-map "\C-\M-j" 'insert-new-line)
  (define-key ruby-mode-map "\M-\r" 'insert-new-line))

(defun enable-electric ()
  (require 'ruby-electric)
  (ruby-electric-mode t))

(add-hook 'ruby-mode-hook 
	  '(lambda ()
	     (ruby-mode-keys)
	     (inf-ruby-keys)
	     (setq show-trailing-whitespace nil)
	     (setq autopair-dont-activate t)
	     (intelligent-tab-for-mode ruby-mode-map)
	     (enable-electric)))







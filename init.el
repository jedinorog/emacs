

;;--------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;if package is not installed, install package:
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;--------------------------------------------------------------------------

;;org file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

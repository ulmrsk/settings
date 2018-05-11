;; default
(set-foreground-color "linen")
(set-background-color "gray10")

;; mode-line
(set-face-foreground 'mode-line "gray10")
(set-face-background 'mode-line "gray80")
(set-face-foreground 'mode-line-inactive "gray50")
(set-face-background 'mode-line-inactive "gray40")

;; comment
(set-face-foreground 'font-lock-comment-face "gray70")
(set-face-foreground 'font-lock-comment-delimiter-face "gray70")

;; string
(set-face-foreground 'font-lock-string-face "PeachPuff")

;; parentheses
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "SeaGreen")

;; fringe
(set-face-attribute 'fringe nil :background "gray40")

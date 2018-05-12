;; default
(set-foreground-color "linen")
(set-background-color "gray10")

;; mode-line
(set-face-foreground 'mode-line "gray10")
(set-face-background 'mode-line "gray80")
(set-face-foreground 'mode-line-inactive "gray50")
(set-face-background 'mode-line-inactive "gray40")

;; syntax highlight
(set-face-foreground 'font-lock-type-face "#F1746C")
(set-face-foreground 'font-lock-function-name-face "#FFA199")
(set-face-foreground 'font-lock-variable-name-face "#FFCDD2")
(set-face-foreground 'font-lock-string-face "#FFDA99")
(set-face-foreground 'font-lock-keyword-face "#8FC9E9")
(set-face-foreground 'font-lock-builtin-face "#C39CD5")
(set-face-foreground 'font-lock-comment-face "gray70")
(set-face-foreground 'font-lock-comment-delimiter-face "gray70")
(set-face-foreground 'font-lock-constant-face "#B9F6CA")

;; parentheses
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "SeaGreen")

;; fringe
(set-face-attribute 'fringe nil :background "gray40")

(eval-when-compile
  (require 'use-package))

(use-package ag :straight t)

(use-package hydra
  :straight t
  :config
  (defhydra hydra-projectile-other-window (:color teal)
    "projectile-other-window"
    ("f"  projectile-find-file-other-window        "file")
    ("g"  projectile-find-file-dwim-other-window   "file dwim")
    ("d"  projectile-find-dir-other-window         "dir")
    ("b"  projectile-switch-to-buffer-other-window "buffer")
    ("q"  nil                                      "cancel" :color blue))

  (defhydra hydra-projectile (:color teal
                                     :hint nil)
    "
     PROJECTILE: %(projectile-project-root)

     Find File            Search/Tags          Buffers                Cache
------------------------------------------------------------------------------------------
_M-f_: file            _a_: ag                _i_: Ibuffer           _c_: cache clear
 _ff_: file dwim       _g_: update gtags      _b_: switch to buffer  _x_: remove known project
 _fd_: file curr dir   _o_: multi-occur       _K_: Kill all buffers  _X_: cleanup non-existing
  _r_: recent file     _s_: codesearch                             ^^_z_: cache current
  _d_: dir
  _t_: create a new TODO

"
    ("a"   projectile-ag)
    ("b"   projectile-switch-to-buffer)
    ("c"   projectile-invalidate-cache)
    ("d"   projectile-find-dir)
    ("M-f" projectile-find-file)
    ("ff"  projectile-find-file-dwim)
    ("fd"  projectile-find-file-in-directory)
    ("g"   ggtags-update-tags)
    ("M-g" ggtags-update-tags)
    ("i"   projectile-ibuffer)
    ("K"   projectile-kill-buffers)
    ("M-k" projectile-kill-buffers)
    ("m"   projectile-multi-occur)
    ("o"   projectile-multi-occur)
    ("M-p" projectile-switch-project "switch project")
    ("p"   projectile-switch-project)
    ("s"   projectile-ag)
    ("t"   org-projectile-project-todo-completing-read)
    ("r"   projectile-recentf)
    ("x"   projectile-remove-known-project)
    ("X"   projectile-cleanup-known-projects)
    ("z"   projectile-cache-current-file)
    ("`"   hydra-projectile-other-window/body "other window")
    ("q"   nil "cancel" :color blue))

  (defhydra hydra-straight-helper (:hint nil)
      "
_c_heck all       |_f_etch all     |_m_erge all      |_n_ormalize all   |p_u_sh all
_C_heck package   |_F_etch package |_M_erge package  |_N_ormlize package|p_U_sh package
----------------^^+--------------^^+---------------^^+----------------^^+------------||_q_uit||
_r_ebuild all     |_p_ull all      |_v_ersions freeze|_w_atcher start   |_g_et recipe
_R_ebuild package |_P_ull package  |_V_ersions thaw  |_W_atcher quit    |prun_e_ build"
      ("c" straight-check-all)
      ("C" straight-check-package)
      ("r" straight-rebuild-all)
      ("R" straight-rebuild-package)
      ("f" straight-fetch-all)
      ("F" straight-fetch-package)
      ("p" straight-pull-all)
      ("P" straight-pull-package)
      ("m" straight-merge-all)
      ("M" straight-merge-package)
      ("n" straight-normalize-all)
      ("N" straight-normalize-package)
      ("u" straight-push-all)
      ("U" straight-push-package)
      ("v" straight-freeze-versions)
      ("V" straight-thaw-versions)
      ("w" straight-watcher-start)
      ("W" straight-watcher-quit)
      ("g" straight-get-recipe)
      ("e" straight-prune-build)
      ("q" nil))

  (defhydra hydra-flycheck
    (:pre (progn (setq hydra-lv t) (flycheck-list-errors))
          :post (progn (setq hydra-lv nil) (quit-windows-on "*Flycheck errors*"))
          :hint nil)
    "Errors"
    ("f"  flycheck-error-list-set-filter                            "Filter")
    ("j"  flycheck-next-error                                       "Next")
    ("k"  flycheck-previous-error                                   "Previous")
    ("gg" flycheck-first-error                                      "First")
    ("G"  (progn (goto-char (point-max)) (flycheck-previous-error)) "Last")
    ("q"  nil))

  :commands (hydra-projectile/body hydra-straight-helper/body
                                   hydra-flycheck/body)
  :bind (("C-c e" . hydra-flycheck/body)
         ("C-c p" . hydra-projectile/body)
         ("C-c q" . hydra-straight-helper/body)))

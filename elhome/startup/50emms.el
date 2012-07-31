(if (string= system-type "gnu/linux")
    (progn
      (require 'emms)
      (require 'emms-setup)
      (require 'emms-player-mpd)
      (require 'emms-browser)
      (require 'emms-tag-editor)
      (require 'emms-streams)
      (require 'emms-lastfm-client)
      (require 'emms-lastfm-scrobbler)

      (setq emms-lastfm-client-username "gchpaco")
      (setq emms-lastfm-client-api-key "28e329499b0c4bd56b86bd95ed361726")
      (setq emms-lastfm-client-api-secret-key
            "873272fc0ca264fc59b81efac1d89ee2")

      (setq emms-player-mpd-server-name "localhost")
      (setq emms-player-mpd-server-port "6600")
      (emms-standard)
      (add-to-list 'emms-info-functions 'emms-info-mpd)
      (add-to-list 'emms-player-list 'emms-player-mpd)
      ;;(emms-lastfm-scrobbler-enable)
      (emms-player-mpd-connect)))

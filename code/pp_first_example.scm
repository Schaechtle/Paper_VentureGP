(assume rain (flip 0.3))

(assume sprinkler (if rain
                    false
                    (flip 0.8)))

(assume grass_wet (flip (if rain
                          (if sprinkler
                            0.99
                            0.95)
                          (if sprinkler
                            0.6
                            0.1))))

(assume humidity (if rain
                   (normal 95 2)
                   (normal 50 20)))

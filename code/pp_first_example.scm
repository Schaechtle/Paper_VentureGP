assume rain = flip(( 0.3))

assume sprinkler = if( rain) {
		      false }
                   else {
		      flip( 0.8) }
                   

assume grass_wet = flip( if( rain) {
			    if( sprinkler) {
				0.99 }
                            else {
				0.95 }
                         }
                         else {
			    if( sprinkler) {
				0.6 }
                            else {
				0.1 }
                         }
		  )
assume humidity = if( rain) {
		      normal( 95 2)}
                  else {
		      normal( 50 20)}

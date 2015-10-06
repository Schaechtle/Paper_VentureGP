#\linenumber{1}#assume rain = bernoulli( 0.3)
#\linenumber{2}#assume sprinkler = if( rain) { false }
#\linenumber{3}#                   else      {bernoulli( 0.8) }                   
#\linenumber{4}#assume grass_wet = bernoulli( if( rain) { if( sprinkler) { 0.99 }  
#\linenumber{5}#				     else           { 0.95 } }
#\linenumber{6}#                         else {      if( sprinkler) { 0.6 } 
#\linenumber{7}#                                     else         { 0.1 } } )
#\linenumber{8}#assume humidity = if( rain) { normal( 95 2)}
#\linenumber{9}#                  else { normal( 50 20) }

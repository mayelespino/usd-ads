# Frequencies
# gross polluter:     1,     141,  180,  1152
# low emission  :  1820,  703, 2294,   739 
# polluter      :    47,    339,  394,  5119
# standard      :  2952, 5193, 8819, 12579
# ultra-low     :    122,     7,  101,    91
# very-low      :    128,     11, 195,    50
#                                             #                       #                                #
co2m <- matrix(c(1,1820, 47, 2952, 122, 128, 141,703, 339, 5193, 7, 11, 180, 2294, 394, 8819, 101, 195, 1152, 739, 5119, 12579, 91, 50),nrow = 6)
co2m
chisq.test(co2m)
chisq.test(co2m, rescale.p = TRUE)
chisq.test(co2m, correct = FALSE)
chisq.test(co2m, simulate.p.value = TRUE, B=2000)
help("chisq.test")

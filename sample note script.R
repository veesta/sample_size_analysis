##small medium large approach - no past study 

#assume medium effect size 
#assume sample correlation is the same as population correlation 
#but, usually sample is underestimated
#N is going to be an underestimate by almost half 
psych::r.con(r=.16, n=250)
28-4
#width of 24, observed is 16, so its still too wide 
psych::r.con(r=.16, n=600)
#width of 16, need n of 600
#little to no value from research, just contribution to furthe rmeta analysis 

##past study approach 
#found correlatino of .25 and sample size of 200 
psych::r.con(r=.25, n=200)
38-12
#lets go under first 
psych::r.con(r=.25, n=100)
psych::r.con(r=.25, n=400)
#too much 
psych::r.con(r=.25, n=220)

#note, it is possible population correlation is actually .38 and I got unlucky. or its actually .15 and I was high 
#if the underlying truth was .38 vs. .12, I wouldn't expect to get a 25 when I did it again. 

##Use safegaurd power analysis - you use the lower bound of the confidence interval in your power analysis 

#get your confidence interval 
psych::r.con(r=.25,n=200)

psych::r.con(r=.12,n=100)
#too big 
psych::r.con(r=.12,n=1000)
#need 1000 to have a good power. 

#install.packages("pwr",dep=TRUE)

library(pwr)
pwr.r.test(r=.16, power=.80)
pwr.r.test(r=.16, power=.80, sig.level=.001)

?pwr.r.test

#power analysis is under powering your n needed for a good confidence interval 
#if you use .001, then you may be okay - it is similar to confidence intervals 

#savegaurd power analysis also helps out 
#sample, .25, n= 200; safegaurd as low as .12 
pwr.r.test(r=.12, power=.80)


##if they want power/ significance testing do a safegaurd power 
##if they dont care do a confidence interval analysis 
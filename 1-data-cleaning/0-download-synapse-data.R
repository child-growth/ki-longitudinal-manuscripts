
#Install packages (run once)
# install.packages("synapser", repos=c("http://ran.synapse.org", "http://cran.fhcrc.org"))
# install.packages("synapserutils", repos=c("http://ran.synapse.org", "http://cran.fhcrc.org"))


#set up profile and packages
library(synapser)
library(synapserutils) 
synLogin('amertens','!1a2n3m4!') 

#Download final.csv dataset
# Obtain a pointer and download the data 
syn21554250 <- synGet(entity='syn21554250', downloadLocation = "/home/andrew.mertens/data/KI/") 



#download UCB-SuperLearner repo
files <- synapserutils::syncFromSynapse('syn20945973', path = "/home/andrew.mertens/data/KI/UCB-SuperLearner") 
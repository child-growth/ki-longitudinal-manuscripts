

library(growthstandards)

d <- readRDS(included_studies_path)
d <-d %>% filter(studyid == "ki1101329-Keneba")

d <- d %>% filter(agedays < 730) %>% filter(!is.na(whz))

summary(d$haz[d$agedays < 8])
summary(d$waz[d$agedays < 8])
summary(d$whz[d$agedays < 8])


summary(d$haz[d$agedays > 8])
summary(d$waz[d$agedays > 8])
summary(d$whz[d$agedays > 8])



ggplot(d, aes(x=agedays , y=haz )) + geom_point(alpha=0.05)
ggplot(d, aes(x=agedays , y=whz )) + geom_point(alpha=0.05)
ggplot(d, aes(x=agedays , y=waz )) + geom_point(alpha=0.05)


ggplot(d, aes(x=agedays , y=lencm )) + geom_point(alpha=0.05)
ggplot(d, aes(x=agedays , y=wtkg )) + geom_point(alpha=0.05)
ggplot(d, aes(x=lencm , y=wtkg )) + geom_point(alpha=0.05)


summary(d$lencm[d$agedays==1])
summary(d$lencm[d$agedays>1 & d$agedays<20])
summary(d$lencm[d$agedays>1 & d$agedays<60])


#Check how many children had length decrease between birth and 2nd measurement

df <- d %>% group_by(subjid) %>% arrange(agedays) %>% mutate(lead_len=lead(lencm), len_change = lead_len-lencm) #%>% slice(1)


df <- d %>% group_by(subjid) %>% arrange(agedays) %>% mutate(lead_len=lead(lencm), len_change = lead_len-lencm) %>% ungroup() %>% arrange(subjid, agedays)


summary(df$lead_len)



summary(d$lencm[d$agedays==1])
summary(d$wtkg[d$agedays==1])




df <- read.csv("U:/temp.csv")
head(df)

summary(df$blen)
summary(df$bwt)













df <- d #%>% filter(agedays==1)

df$haz2 <- who_htcm2zscore(agedays=1, htcm = df$lencm, sex = df$sex)
df$waz2 <- who_wtkg2zscore(agedays=1, wtkg = df$wtkg, sex = df$sex)
df$htcm[is.na(df$htcm)] <- df$lencm[is.na(df$htcm)]
df$whz2 <- who_value2zscore(
  x = df$htcm, y = df$wtkg, x_var = "htcm", y_var = "wtkg", 
  sex = df$sex)

summary(df$haz-df$haz2)
summary(df$waz-df$waz2)
summary(df$whz-df$whz2)


df$haz[df$agedays==1] <- df$haz2[df$agedays==1]  
df$waz[df$agedays==1] <- df$waz2[df$agedays==1]  
df$whz[df$agedays==1] <- df$whz2[df$agedays==1]  



ggplot(df, aes(x=agedays , y=haz )) + geom_point(alpha=0.05)
ggplot(df, aes(x=agedays , y=whz )) + geom_point(alpha=0.05)
ggplot(df, aes(x=agedays , y=waz )) + geom_point(alpha=0.05)








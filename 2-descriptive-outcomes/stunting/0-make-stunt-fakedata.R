##########################################
# ki longitudinal manuscripts
# stunting analysis

# second fake dataset for stunting with
# more realistic trajectories
##########################################

age = seq(0,24,3)

# born stunted, recovery by 12 m
y1 = seq(-2, 2, length.out = length(age))

# never stunted
y2 = seq(1, 1.3, length.out = length(age))

# born stunted, recovery by 3, relapse 
y3 = c(seq(-2, -1, length.out = 3), 
       seq(-2, -2.2, length.out = length(age) - 3))

# born stunted, recovery by 12, relapse , recovery by 24
y4 = c(seq(-2, -1, length.out = 5), 
       seq(-2, 1, length.out = length(age) - 5))

# add random noise to data
add_random = function(seed, n, mean, sd, vector){
  set.seed(seed)
  rand = rnorm(n=n*9, mean=mean, sd=sd)
  out = rep(vector, n)*(1 + rand)
  return(out)
}

eachn = 500

y1vec = add_random(seed = 123, n = eachn, mean = 0, sd = 1.1, vector = y1)
y2vec = add_random(seed = 223, n = eachn, mean = 0, sd = 1.1, vector = y2)
y3vec = add_random(seed = 442, n = eachn, mean = 0, sd = 1.1, vector = y3)
y4vec = add_random(seed = 231, n = eachn, mean = 0, sd = 1.1, vector = y4)


d = data.frame(subjid = rep(seq(1,4*eachn), each=length(age)),
               agedays = rep(age * 30.4167, 20),
               haz = c(y1vec, y2vec, y3vec, y4vec)) %>%
  mutate(agedays = ifelse(agedays==0, 1, agedays))


# impute study id and country
d <- d %>%
  mutate(
    studyid = case_when(
      subjid<29 ~ 1,
      subjid>=29 ~ 2
    ),
    country = case_when(
      subjid<29 ~ "Country 1",
      subjid>=29 ~ "Country 2"
    )
    
  )

saveRDS(d , file="~/Dropbox/HBGD/Manuscripts/testdata2.RDS")

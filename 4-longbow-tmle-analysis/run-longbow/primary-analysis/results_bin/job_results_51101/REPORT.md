---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             sstunted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  ---------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0       54      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       23      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        0      90
Birth       ki1000108-IRC              INDIA                          Full or late term           0      228     369
Birth       ki1000108-IRC              INDIA                          Full or late term           1       10     369
Birth       ki1000108-IRC              INDIA                          Preterm                     0       33     369
Birth       ki1000108-IRC              INDIA                          Preterm                     1        3     369
Birth       ki1000108-IRC              INDIA                          Early term                  0       93     369
Birth       ki1000108-IRC              INDIA                          Early term                  1        2     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term           0        0       2
Birth       ki1000109-EE               PAKISTAN                       Full or late term           1        0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                     0        1       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                     1        0       2
Birth       ki1000109-EE               PAKISTAN                       Early term                  0        1       2
Birth       ki1000109-EE               PAKISTAN                       Early term                  1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term           0        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term           1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                     0      161     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                     1       10     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                  0       14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                  1        1     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        1      27
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           0      726    1515
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           1        8    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     0      219    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     1       16    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                  0      541    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                  1        5    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           0     7095   13884
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     0      471   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                  0     6313   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                  1        4   13884
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           0      338     617
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           1        3     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     0       91     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     1        4     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  0      179     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  1        2     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term           0      562    1293
Birth       ki1135781-COHORTS          INDIA                          Full or late term           1        8    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                     0      269    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                     1       16    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                  0      431    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                  1        7    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           0     1161    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           1        3    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      618    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       31    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1199    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  1       12    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     9093   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      449   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     2868   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      906   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     4639   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      479   18434
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      190     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       22     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       42     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       10     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       77     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        6     347
6 months    ki1000108-IRC              INDIA                          Full or late term           0      233     388
6 months    ki1000108-IRC              INDIA                          Full or late term           1       16     388
6 months    ki1000108-IRC              INDIA                          Preterm                     0       34     388
6 months    ki1000108-IRC              INDIA                          Preterm                     1        8     388
6 months    ki1000108-IRC              INDIA                          Early term                  0       93     388
6 months    ki1000108-IRC              INDIA                          Early term                  1        4     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term           0       22     372
6 months    ki1000109-EE               PAKISTAN                       Full or late term           1        3     372
6 months    ki1000109-EE               PAKISTAN                       Preterm                     0      173     372
6 months    ki1000109-EE               PAKISTAN                       Preterm                     1       66     372
6 months    ki1000109-EE               PAKISTAN                       Early term                  0       83     372
6 months    ki1000109-EE               PAKISTAN                       Early term                  1       25     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term           0       25    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term           1        0    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                     0     1092    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                     1      118    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                  0       85    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                  1        7    1327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0      153     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      236     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      303     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0     1159    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        8    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0      284    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        7    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0      443    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        2    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           0      637    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           1       21    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     0      197    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     1       10    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                  0      505    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                  1        4    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           0     7917   15761
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           1       91   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     0      533   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                  0     7068   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                  1      134   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           0      356     713
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           1       33     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     0       86     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     1       27     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  0      178     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  1       33     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term           0      556    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term           1       12    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                     0      285    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                     1       14    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                  0      432    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                  1       13    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      988    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           1       40    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      530    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       43    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1038    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  1       48    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     6340   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      270   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     2128   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      273   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     3257   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      214   12482
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      148     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       66     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       31     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       21     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       58     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1       26     350
24 months   ki1000108-IRC              INDIA                          Full or late term           0      230     390
24 months   ki1000108-IRC              INDIA                          Full or late term           1       20     390
24 months   ki1000108-IRC              INDIA                          Preterm                     0       33     390
24 months   ki1000108-IRC              INDIA                          Preterm                     1        9     390
24 months   ki1000108-IRC              INDIA                          Early term                  0       89     390
24 months   ki1000108-IRC              INDIA                          Early term                  1        9     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0       77     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      188     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       20     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      214     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1       13     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           0      510    1156
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           1       47    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     0      145    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     1       22    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                  0      409    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                  1       23    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           0     1994    4035
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           1       30    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     0      132    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     1        5    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                  0     1844    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                  1       30    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           0      218     663
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           1      157     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     0       58     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     1       50     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  0      100     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  1       80     663
24 months   ki1135781-COHORTS          INDIA                          Full or late term           0      481    1308
24 months   ki1135781-COHORTS          INDIA                          Full or late term           1       84    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                     0      244    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                     1       61    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                  0      365    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                  1       73    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      697    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           1      241    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      349    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     1      164    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  0      695    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  1      278    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     2894    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      507    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     1026    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      270    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     1519    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      277    6493


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/057e1ca2-d1a2-4ab2-86b4-86411502e903/cd7fb245-f3df-46e4-9218-9bea1cf04a67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/057e1ca2-d1a2-4ab2-86b4-86411502e903/cd7fb245-f3df-46e4-9218-9bea1cf04a67/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/057e1ca2-d1a2-4ab2-86b4-86411502e903/cd7fb245-f3df-46e4-9218-9bea1cf04a67/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/057e1ca2-d1a2-4ab2-86b4-86411502e903/cd7fb245-f3df-46e4-9218-9bea1cf04a67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0108992    0.0033854   0.0184130
Birth       ki1101329-Keneba           GAMBIA        Preterm              NA                0.0680851    0.0358691   0.1003011
Birth       ki1101329-Keneba           GAMBIA        Early term           NA                0.0091575    0.0011649   0.0171501
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                0.0140351    0.0043742   0.0236960
Birth       ki1135781-COHORTS          INDIA         Preterm              NA                0.0561404    0.0294051   0.0828756
Birth       ki1135781-COHORTS          INDIA         Early term           NA                0.0159817    0.0042330   0.0277305
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0470107    0.0424836   0.0515377
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2439381    0.2297867   0.2580895
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0955275    0.0868178   0.1042372
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.1037736    0.0626625   0.1448847
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.1923077    0.0850337   0.2995817
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.0722892    0.0164963   0.1280820
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0115862    0.0070229   0.0161495
6 months    ki1119695-PROBIT           BELARUS       Preterm              NA                0.0368110    0.0225061   0.0511159
6 months    ki1119695-PROBIT           BELARUS       Early term           NA                0.0190153    0.0116257   0.0264048
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.0862609    0.0583212   0.1142006
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.2326468    0.1538056   0.3114879
6 months    ki1135781-COHORTS          GUATEMALA     Early term           NA                0.1552760    0.1057623   0.2047898
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                0.0213955    0.0095072   0.0332838
6 months    ki1135781-COHORTS          INDIA         Preterm              NA                0.0481365    0.0240757   0.0721972
6 months    ki1135781-COHORTS          INDIA         Early term           NA                0.0286858    0.0132411   0.0441304
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.0387733    0.0270300   0.0505166
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.0715170    0.0504717   0.0925623
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.0444088    0.0321898   0.0566279
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0416688    0.0366821   0.0466554
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.1135440    0.0998097   0.1272782
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0611534    0.0525527   0.0697540
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.3050767    0.2429086   0.3672448
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.3900393    0.2531984   0.5268801
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.3048453    0.2048394   0.4048513
24 months   ki1000108-IRC              INDIA         Full or late term    NA                0.0800000    0.0463276   0.1136724
24 months   ki1000108-IRC              INDIA         Preterm              NA                0.2142857    0.0900319   0.3385396
24 months   ki1000108-IRC              INDIA         Early term           NA                0.0918367    0.0345858   0.1490877
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0841320    0.0609380   0.1073259
24 months   ki1101329-Keneba           GAMBIA        Preterm              NA                0.1319236    0.0821343   0.1817128
24 months   ki1101329-Keneba           GAMBIA        Early term           NA                0.0546340    0.0336441   0.0756240
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0148221    0.0038188   0.0258255
24 months   ki1119695-PROBIT           BELARUS       Preterm              NA                0.0364964   -0.0116126   0.0846053
24 months   ki1119695-PROBIT           BELARUS       Early term           NA                0.0160085   -0.0030877   0.0351047
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.4252746    0.3754365   0.4751127
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.4500278    0.3560391   0.5440164
24 months   ki1135781-COHORTS          GUATEMALA     Early term           NA                0.4482744    0.3761088   0.5204400
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                0.1484745    0.1192577   0.1776913
24 months   ki1135781-COHORTS          INDIA         Preterm              NA                0.2013207    0.1564193   0.2462222
24 months   ki1135781-COHORTS          INDIA         Early term           NA                0.1665117    0.1318740   0.2011494
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.2528600    0.2251296   0.2805903
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.3225251    0.2825069   0.3625433
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.2906896    0.2625038   0.3188753
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.1495992    0.1361191   0.1630794
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2044219    0.1818153   0.2270285
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.1543790    0.1353509   0.1734072


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0191419   0.0122398   0.0260440
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0239753   0.0156340   0.0323165
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0994901   0.0949359   0.1040443
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1095101   0.0766059   0.1424143
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1304348   0.1056973   0.1551723
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0297256   0.0205326   0.0389187
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487533   0.0406091   0.0568974
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606473   0.0560424   0.0652522
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3228571   0.2738024   0.3719119
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0974359   0.0679665   0.1269053
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0795848   0.0639762   0.0951934
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4328808   0.3951375   0.4706242
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1666667   0.1464624   0.1868710
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817657   0.2638535   0.2996779
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1623287   0.1518640   0.1727933


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ------------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        Preterm              Full or late term    6.2468085   2.7072028   14.414368
Birth       ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.8402015   0.2762834    2.555125
Birth       ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         Preterm              Full or late term    4.0000000   1.7320013    9.237869
Birth       ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1386986   0.4159430    3.117338
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    5.1889960   4.6261903    5.820271
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    2.0320392   1.7836483    2.315021
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.8531469   0.9349126    3.673234
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.6966046   0.2925632    1.658643
6 months    ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       Preterm              Full or late term    3.1771445   1.8894108    5.342537
6 months    ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.6412018   1.2222296    2.203795
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    2.6970142   1.6873167    4.310919
6 months    ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.8000752   1.1422804    2.836668
6 months    ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         Preterm              Full or late term    2.2498397   1.0663949    4.746627
6 months    ki1135781-COHORTS          INDIA         Early term           Full or late term    1.3407374   0.6184962    2.906366
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.8444910   1.2091150    2.813750
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1453456   0.7611191    1.723536
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    2.7249189   2.3099601    3.214421
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.4676071   1.2185781    1.767528
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.2784959   0.8512821    1.920106
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.9992417   0.6797016    1.469003
24 months   ki1000108-IRC              INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA         Preterm              Full or late term    2.6785714   1.3083567    5.483783
24 months   ki1000108-IRC              INDIA         Early term           Full or late term    1.1479592   0.5410719    2.435555
24 months   ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        Preterm              Full or late term    1.5680552   0.9841780    2.498325
24 months   ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.6493850   0.4053240    1.040405
24 months   ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       Preterm              Full or late term    2.4622871   0.5762612   10.521023
24 months   ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.0800427   0.3773256    3.091474
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    1.0582052   0.8336961    1.343173
24 months   ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.0540822   0.8648843    1.284668
24 months   ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         Preterm              Full or late term    1.3559281   1.0080249    1.823904
24 months   ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1214836   0.8435975    1.490907
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.2755088   1.0816356    1.504132
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1496070   0.9939792    1.329601
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    1.3664636   1.1904164    1.568546
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.0319509   0.8926951    1.192930


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.0082427    0.0012149   0.0152706
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0099402    0.0009613   0.0189190
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0524794    0.0479948   0.0569640
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0057365   -0.0208651   0.0323381
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0038316    0.0013699   0.0062933
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0441739    0.0207742   0.0675736
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0083301   -0.0018684   0.0185286
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0099800    0.0000777   0.0198822
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0189786    0.0146037   0.0233534
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0177805   -0.0217410   0.0573019
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.0174359   -0.0059874   0.0408591
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0045472   -0.0206738   0.0115794
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0012869   -0.0065493   0.0091231
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0076063   -0.0250857   0.0402983
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0181922   -0.0045393   0.0409236
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0289057    0.0069084   0.0509030
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0127294    0.0038886   0.0215703


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.4306117   -0.0227788   0.6830174
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.4146010   -0.0580236   0.6761018
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.5274840    0.4867047   0.5650235
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0523833   -0.2240006   0.2663587
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.2485185    0.1010021   0.3718290
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.3386667    0.1453231   0.4882724
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.2802332   -0.1416763   0.5462250
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.2047034   -0.0231505   0.3818147
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.3129334    0.2428684   0.3765146
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0550723   -0.0756936   0.1699416
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.1789474   -0.0935755   0.3835566
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0571365   -0.2799454   0.1268866
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0798875   -0.5128990   0.4404074
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0175713   -0.0609397   0.0902723
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.1091531   -0.0377804   0.2352831
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.1025877    0.0210474   0.1773362
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0784177    0.0222375   0.1313699

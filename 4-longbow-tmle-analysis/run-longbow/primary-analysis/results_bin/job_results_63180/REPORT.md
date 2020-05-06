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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        single    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------  -------------  -------  ------  -----------------
0-24 months   COHORTS          GUATEMALA                      0                    0      254    1207  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      0                    1      855    1207  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      1                    0       12    1207  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      1                    1       86    1207  ever_stunted     
0-24 months   COHORTS          INDIA                          0                    0     3293    5384  ever_stunted     
0-24 months   COHORTS          INDIA                          0                    1     2082    5384  ever_stunted     
0-24 months   COHORTS          INDIA                          1                    0        4    5384  ever_stunted     
0-24 months   COHORTS          INDIA                          1                    1        5    5384  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    0                    0      924    3018  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    0                    1     2019    3018  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    1                    0       21    3018  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    1                    1       54    3018  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      0                    0      118     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      0                    1      134     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      1                    0        8     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      1                    1       22     282  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     0                    0     2263    5423  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     0                    1     3152    5423  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     1                    0        4    5423  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     1                    1        4    5423  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     0                    0      103     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     0                    1      162     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     1                    0        0     265  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     1                    1        0     265  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         0                    0      148     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         0                    1       49     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         1                    0       22     233  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         1                    1       14     233  ever_stunted     
0-24 months   MAL-ED           INDIA                          0                    0       99     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          0                    1      150     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          1                    0        0     249  ever_stunted     
0-24 months   MAL-ED           INDIA                          1                    1        0     249  ever_stunted     
0-24 months   MAL-ED           NEPAL                          0                    0      156     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          0                    1       84     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          1                    0        0     240  ever_stunted     
0-24 months   MAL-ED           NEPAL                          1                    1        0     240  ever_stunted     
0-24 months   MAL-ED           PERU                           0                    0      101     303  ever_stunted     
0-24 months   MAL-ED           PERU                           0                    1      167     303  ever_stunted     
0-24 months   MAL-ED           PERU                           1                    0       14     303  ever_stunted     
0-24 months   MAL-ED           PERU                           1                    1       21     303  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0       79     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   0                    1       97     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0       59     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1       79     314  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0       37     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      215     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        3     262  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        7     262  ever_stunted     
0-24 months   PROBIT           BELARUS                        0                    0    14176   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        0                    1     2028   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        1                    0      568   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        1                    1      125   16897  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1400    2375  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      751    2375  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      148    2375  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       76    2375  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0     7683   14016  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       0                    1     5444   14016  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0      485   14016  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1      404   14016  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      0                    0      622     974  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      0                    1      283     974  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      1                    0       36     974  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      1                    1       33     974  ever_stunted     
0-6 months    COHORTS          INDIA                          0                    0     4207    5203  ever_stunted     
0-6 months    COHORTS          INDIA                          0                    1      988    5203  ever_stunted     
0-6 months    COHORTS          INDIA                          1                    0        6    5203  ever_stunted     
0-6 months    COHORTS          INDIA                          1                    1        2    5203  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    0                    0     2246    3018  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    0                    1      697    3018  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    1                    0       52    3018  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    1                    1       23    3018  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      0                    0      167     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      0                    1       71     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      1                    0       14     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      1                    1       13     265  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     0                    0     3333    5115  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     0                    1     1775    5115  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     1                    0        5    5115  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     1                    1        2    5115  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     0                    0      170     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     0                    1       95     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     1                    0        0     265  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     1                    1        0     265  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         0                    0      156     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         0                    1       41     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         1                    0       25     233  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         1                    1       11     233  ever_stunted     
0-6 months    MAL-ED           INDIA                          0                    0      164     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          0                    1       85     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          1                    0        0     249  ever_stunted     
0-6 months    MAL-ED           INDIA                          1                    1        0     249  ever_stunted     
0-6 months    MAL-ED           NEPAL                          0                    0      197     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          0                    1       43     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          1                    0        0     240  ever_stunted     
0-6 months    MAL-ED           NEPAL                          1                    1        0     240  ever_stunted     
0-6 months    MAL-ED           PERU                           0                    0      154     303  ever_stunted     
0-6 months    MAL-ED           PERU                           0                    1      114     303  ever_stunted     
0-6 months    MAL-ED           PERU                           1                    0       20     303  ever_stunted     
0-6 months    MAL-ED           PERU                           1                    1       15     303  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0      116     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   0                    1       60     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0       82     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1       56     314  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      146     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      106     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        7     262  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        3     262  ever_stunted     
0-6 months    PROBIT           BELARUS                        0                    0    15119   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        0                    1     1080   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        1                    0      614   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        1                    1       79   16892  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1726    2375  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      425    2375  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      184    2375  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       40    2375  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0     9751   13999  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       0                    1     3361   13999  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0      625   13999  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1      262   13999  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      0                    0      186     820  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      0                    1      572     820  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      1                    0        9     820  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      1                    1       53     820  ever_stunted     
6-24 months   COHORTS          INDIA                          0                    0     3016    4117  ever_stunted     
6-24 months   COHORTS          INDIA                          0                    1     1094    4117  ever_stunted     
6-24 months   COHORTS          INDIA                          1                    0        4    4117  ever_stunted     
6-24 months   COHORTS          INDIA                          1                    1        3    4117  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    0                    0      724    2097  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    0                    1     1322    2097  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    1                    0       20    2097  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    1                    1       31    2097  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      0                    0      105     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      0                    1       63     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      1                    0        8     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      1                    1        9     185  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     0                    0     2259    3642  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     0                    1     1377    3642  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     1                    0        4    3642  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     1                    1        2    3642  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     0                    0       91     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     0                    1       67     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     1                    0        0     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     1                    1        0     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         0                    0      133     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         0                    1        8     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         1                    0       19     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         1                    1        3     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          0                    0       89     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          0                    1       65     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          1                    0        0     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          1                    1        0     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          0                    0      153     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          0                    1       41     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          1                    0        0     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          1                    1        0     194  ever_stunted     
6-24 months   MAL-ED           PERU                           0                    0       77     149  ever_stunted     
6-24 months   MAL-ED           PERU                           0                    1       53     149  ever_stunted     
6-24 months   MAL-ED           PERU                           1                    0       13     149  ever_stunted     
6-24 months   MAL-ED           PERU                           1                    1        6     149  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0       56     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   0                    1       37     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0       42     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1       23     158  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0       30     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      109     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        4     144  ever_stunted     
6-24 months   PROBIT           BELARUS                        0                    0    13915   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        0                    1      948   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        1                    0      558   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        1                    1       46   15467  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1115    1589  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      326    1589  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      112    1589  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       36    1589  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0     5889    8461  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       0                    1     2083    8461  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0      347    8461  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1      142    8461  ever_stunted     


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->

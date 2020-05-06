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

agecat      studyid          country                        single    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  ---------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      0                0      712     767  sstunted         
Birth       COHORTS          GUATEMALA                      0                1        7     767  sstunted         
Birth       COHORTS          GUATEMALA                      1                0       46     767  sstunted         
Birth       COHORTS          GUATEMALA                      1                1        2     767  sstunted         
Birth       COHORTS          INDIA                          0                0     4630    4778  sstunted         
Birth       COHORTS          INDIA                          0                1      141    4778  sstunted         
Birth       COHORTS          INDIA                          1                0        7    4778  sstunted         
Birth       COHORTS          INDIA                          1                1        0    4778  sstunted         
Birth       COHORTS          PHILIPPINES                    0                0     2893    3010  sstunted         
Birth       COHORTS          PHILIPPINES                    0                1       43    3010  sstunted         
Birth       COHORTS          PHILIPPINES                    1                0       72    3010  sstunted         
Birth       COHORTS          PHILIPPINES                    1                1        2    3010  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                0     2581    2819  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                1      233    2819  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                0        5    2819  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                1        0    2819  sstunted         
Birth       MAL-ED           BANGLADESH                     0                0      222     231  sstunted         
Birth       MAL-ED           BANGLADESH                     0                1        9     231  sstunted         
Birth       MAL-ED           BANGLADESH                     1                0        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     1                1        0     231  sstunted         
Birth       MAL-ED           BRAZIL                         0                0       55      65  sstunted         
Birth       MAL-ED           BRAZIL                         0                1        2      65  sstunted         
Birth       MAL-ED           BRAZIL                         1                0        7      65  sstunted         
Birth       MAL-ED           BRAZIL                         1                1        1      65  sstunted         
Birth       MAL-ED           INDIA                          0                0       45      47  sstunted         
Birth       MAL-ED           INDIA                          0                1        2      47  sstunted         
Birth       MAL-ED           INDIA                          1                0        0      47  sstunted         
Birth       MAL-ED           INDIA                          1                1        0      47  sstunted         
Birth       MAL-ED           NEPAL                          0                0       26      27  sstunted         
Birth       MAL-ED           NEPAL                          0                1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          1                0        0      27  sstunted         
Birth       MAL-ED           NEPAL                          1                1        0      27  sstunted         
Birth       MAL-ED           PERU                           0                0      206     233  sstunted         
Birth       MAL-ED           PERU                           0                1        3     233  sstunted         
Birth       MAL-ED           PERU                           1                0       23     233  sstunted         
Birth       MAL-ED           PERU                           1                1        1     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                0       63     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                0       58     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                1        2     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      112     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       10     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        3     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     125  sstunted         
Birth       PROBIT           BELARUS                        0                0    13346   13893  sstunted         
Birth       PROBIT           BELARUS                        0                1        5   13893  sstunted         
Birth       PROBIT           BELARUS                        1                0      542   13893  sstunted         
Birth       PROBIT           BELARUS                        1                1        0   13893  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                0    12535   13817  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                1      407   13817  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                0      843   13817  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                1       32   13817  sstunted         
6 months    COHORTS          GUATEMALA                      0                0      724     893  sstunted         
6 months    COHORTS          GUATEMALA                      0                1      102     893  sstunted         
6 months    COHORTS          GUATEMALA                      1                0       53     893  sstunted         
6 months    COHORTS          GUATEMALA                      1                1       14     893  sstunted         
6 months    COHORTS          INDIA                          0                0     4720    4971  sstunted         
6 months    COHORTS          INDIA                          0                1      242    4971  sstunted         
6 months    COHORTS          INDIA                          1                0        9    4971  sstunted         
6 months    COHORTS          INDIA                          1                1        0    4971  sstunted         
6 months    COHORTS          PHILIPPINES                    0                0     2482    2676  sstunted         
6 months    COHORTS          PHILIPPINES                    0                1      126    2676  sstunted         
6 months    COHORTS          PHILIPPINES                    1                0       64    2676  sstunted         
6 months    COHORTS          PHILIPPINES                    1                1        4    2676  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                0      230     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                1       18     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                0       22     277  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                1        7     277  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                0     4543    4822  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                1      271    4822  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                0        8    4822  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                1        0    4822  sstunted         
6 months    MAL-ED           BANGLADESH                     0                0      233     241  sstunted         
6 months    MAL-ED           BANGLADESH                     0                1        8     241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                0        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                1        0     241  sstunted         
6 months    MAL-ED           BRAZIL                         0                0      179     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                0       30     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                1        0     209  sstunted         
6 months    MAL-ED           INDIA                          0                0      225     234  sstunted         
6 months    MAL-ED           INDIA                          0                1        9     234  sstunted         
6 months    MAL-ED           INDIA                          1                0        0     234  sstunted         
6 months    MAL-ED           INDIA                          1                1        0     234  sstunted         
6 months    MAL-ED           NEPAL                          0                0      235     236  sstunted         
6 months    MAL-ED           NEPAL                          0                1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          1                0        0     236  sstunted         
6 months    MAL-ED           NEPAL                          1                1        0     236  sstunted         
6 months    MAL-ED           PERU                           0                0      232     273  sstunted         
6 months    MAL-ED           PERU                           0                1        8     273  sstunted         
6 months    MAL-ED           PERU                           1                0       31     273  sstunted         
6 months    MAL-ED           PERU                           1                1        2     273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                0      139     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                1        1     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                0      109     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                1        5     254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      225     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       14     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        8     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     247  sstunted         
6 months    PROBIT           BELARUS                        0                0    14947   15760  sstunted         
6 months    PROBIT           BELARUS                        0                1      170   15760  sstunted         
6 months    PROBIT           BELARUS                        1                0      636   15760  sstunted         
6 months    PROBIT           BELARUS                        1                1        7   15760  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1818    2013  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2013  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      176    2013  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2    2013  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                0     7812    8638  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                1      313    8638  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                0      476    8638  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                1       37    8638  sstunted         
24 months   COHORTS          GUATEMALA                      0                0      480    1010  sstunted         
24 months   COHORTS          GUATEMALA                      0                1      443    1010  sstunted         
24 months   COHORTS          GUATEMALA                      1                0       34    1010  sstunted         
24 months   COHORTS          GUATEMALA                      1                1       53    1010  sstunted         
24 months   COHORTS          INDIA                          0                0     2784    3753  sstunted         
24 months   COHORTS          INDIA                          0                1      960    3753  sstunted         
24 months   COHORTS          INDIA                          1                0        6    3753  sstunted         
24 months   COHORTS          INDIA                          1                1        3    3753  sstunted         
24 months   COHORTS          PHILIPPINES                    0                0     1666    2416  sstunted         
24 months   COHORTS          PHILIPPINES                    0                1      691    2416  sstunted         
24 months   COHORTS          PHILIPPINES                    1                0       46    2416  sstunted         
24 months   COHORTS          PHILIPPINES                    1                1       13    2416  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                0     4286    4744  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                1      452    4744  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                0        6    4744  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                1        0    4744  sstunted         
24 months   MAL-ED           BANGLADESH                     0                0      184     212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                1       28     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                0        0     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                1        0     212  sstunted         
24 months   MAL-ED           BRAZIL                         0                0      148     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                0       20     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                1        1     169  sstunted         
24 months   MAL-ED           INDIA                          0                0      195     225  sstunted         
24 months   MAL-ED           INDIA                          0                1       30     225  sstunted         
24 months   MAL-ED           INDIA                          1                0        0     225  sstunted         
24 months   MAL-ED           INDIA                          1                1        0     225  sstunted         
24 months   MAL-ED           NEPAL                          0                0      221     228  sstunted         
24 months   MAL-ED           NEPAL                          0                1        7     228  sstunted         
24 months   MAL-ED           NEPAL                          1                0        0     228  sstunted         
24 months   MAL-ED           NEPAL                          1                1        0     228  sstunted         
24 months   MAL-ED           PERU                           0                0      165     201  sstunted         
24 months   MAL-ED           PERU                           0                1       11     201  sstunted         
24 months   MAL-ED           PERU                           1                0       21     201  sstunted         
24 months   MAL-ED           PERU                           1                1        4     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                0      119     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                1       12     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                0       92     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                1       15     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      141     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       67     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        3     214  sstunted         
24 months   PROBIT           BELARUS                        0                0     3828    4035  sstunted         
24 months   PROBIT           BELARUS                        0                1       62    4035  sstunted         
24 months   PROBIT           BELARUS                        1                0      142    4035  sstunted         
24 months   PROBIT           BELARUS                        1                1        3    4035  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                0     1379    1637  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                1      154    1637  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                0       81    1637  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                1       23    1637  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

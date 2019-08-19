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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        gagebrth             wasted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0       46      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1        8      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0        8      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        2      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       20      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        3      87
Birth       ki1000108-IRC              INDIA                          Full or late term         0      164     328
Birth       ki1000108-IRC              INDIA                          Full or late term         1       49     328
Birth       ki1000108-IRC              INDIA                          Preterm                   0       19     328
Birth       ki1000108-IRC              INDIA                          Preterm                   1       13     328
Birth       ki1000108-IRC              INDIA                          Early term                0       58     328
Birth       ki1000108-IRC              INDIA                          Early term                1       25     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0        0       1
Birth       ki1000109-EE               PAKISTAN                       Full or late term         1        0       1
Birth       ki1000109-EE               PAKISTAN                       Preterm                   0        1       1
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1        0       1
Birth       ki1000109-EE               PAKISTAN                       Early term                0        0       1
Birth       ki1000109-EE               PAKISTAN                       Early term                1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         0        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                   0      141     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                   1       10     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                1        1     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1        1      23
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         0      664    1401
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         1       16    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   0      200    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   1        7    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                0      509    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                1        5    1401
Birth       ki1119695-PROBIT           BELARUS                        Full or late term         0     5663   13824
Birth       ki1119695-PROBIT           BELARUS                        Full or late term         1     1408   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                   0      365   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                   1      103   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                0     4908   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                1     1377   13824
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term         0      240     572
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term         1       83     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                   0       55     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                   1       23     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                0      131     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                1       40     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term         0      462    1229
Birth       ki1135781-COHORTS          INDIA                          Full or late term         1       91    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                   0      205    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                   1       54    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                0      345    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                1       72    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      996    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term         1      139    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      467    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                   1      112    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                0      964    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                1      196    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0     7608   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1      804   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     2113   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      254   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     3682   14828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      367   14828
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0      183     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1       29     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0       45     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        6     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       76     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        7     346
6 months    ki1000108-IRC              INDIA                          Full or late term         0      223     388
6 months    ki1000108-IRC              INDIA                          Full or late term         1       26     388
6 months    ki1000108-IRC              INDIA                          Preterm                   0       32     388
6 months    ki1000108-IRC              INDIA                          Preterm                   1       10     388
6 months    ki1000108-IRC              INDIA                          Early term                0       80     388
6 months    ki1000108-IRC              INDIA                          Early term                1       17     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term         0       23     376
6 months    ki1000109-EE               PAKISTAN                       Full or late term         1        2     376
6 months    ki1000109-EE               PAKISTAN                       Preterm                   0      207     376
6 months    ki1000109-EE               PAKISTAN                       Preterm                   1       36     376
6 months    ki1000109-EE               PAKISTAN                       Early term                0       97     376
6 months    ki1000109-EE               PAKISTAN                       Early term                1       11     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term         0       20    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term         1        5    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                   0     1060    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                   1      148    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                0       80    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                1       12    1325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0      151     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        4     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0      303     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0     1116    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1       51    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      273    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1       17    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0      428    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       17    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term         0      615    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term         1       43    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                   0      196    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                   1       11    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                0      487    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                1       22    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term         0     7941   15757
6 months    ki1119695-PROBIT           BELARUS                        Full or late term         1       64   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                   0      545   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                   1        6   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                0     7141   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                1       60   15757
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term         0      377     714
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term         1       12     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                   0      110     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                   1        4     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                0      202     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                1        9     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term         0      502    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term         1       66    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                   0      267    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                   1       32    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                0      384    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                1       61    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      977    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term         1       51    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      538    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                   1       34    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                0     1011    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                1       74    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0     6044   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1      553   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     2191   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      210   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     3156   12464
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      310   12464
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0      201     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1       13     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0       48     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        4     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       81     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        3     350
24 months   ki1000108-IRC              INDIA                          Full or late term         0      233     390
24 months   ki1000108-IRC              INDIA                          Full or late term         1       17     390
24 months   ki1000108-IRC              INDIA                          Preterm                   0       35     390
24 months   ki1000108-IRC              INDIA                          Preterm                   1        7     390
24 months   ki1000108-IRC              INDIA                          Early term                0       92     390
24 months   ki1000108-IRC              INDIA                          Early term                1        6     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0      187     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1       21     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0      206     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1       21     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term         0      496    1157
24 months   ki1101329-Keneba           GAMBIA                         Full or late term         1       62    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                   0      145    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                   1       23    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                0      393    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                1       38    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term         0     1973    3971
24 months   ki1119695-PROBIT           BELARUS                        Full or late term         1       17    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                   0      134    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                   1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                0     1820    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                1       25    3971
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term         0      365     667
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term         1       12     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                   0      101     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                   1        8     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                0      176     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                1        5     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term         0      513    1298
24 months   ki1135781-COHORTS          INDIA                          Full or late term         1       46    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                   0      279    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                   1       24    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                0      393    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                1       43    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      882    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term         1       57    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      483    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                   1       34    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                0      897    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                1       75    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0     2675    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1      713    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0      993    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      299    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     1405    6470
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      385    6470


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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/fcbf7396-2fd0-4e90-845a-ab9d74d22edf/17a693b9-67c2-4ebf-aac0-2a5ce6e76204/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fcbf7396-2fd0-4e90-845a-ab9d74d22edf/17a693b9-67c2-4ebf-aac0-2a5ce6e76204/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fcbf7396-2fd0-4e90-845a-ab9d74d22edf/17a693b9-67c2-4ebf-aac0-2a5ce6e76204/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fcbf7396-2fd0-4e90-845a-ab9d74d22edf/17a693b9-67c2-4ebf-aac0-2a5ce6e76204/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.2295298   0.1724840   0.2865756
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.4038769   0.2242721   0.5834817
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.2957080   0.1966450   0.3947710
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0235294   0.0121326   0.0349262
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0338164   0.0091837   0.0584491
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0097276   0.0012397   0.0182156
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1993730   0.1332619   0.2654842
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2120934   0.1067468   0.3174399
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.2147750   0.1426821   0.2868679
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2580969   0.2104313   0.3057626
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2932818   0.1906130   0.3959506
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2317800   0.1679561   0.2956039
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1648417   0.1338788   0.1958045
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.2085932   0.1582897   0.2588967
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1755193   0.1388431   0.2121955
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1233797   0.1043500   0.1424094
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1899269   0.1577127   0.2221412
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1664612   0.1448655   0.1880569
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0947303   0.0879228   0.1015379
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1056115   0.0926748   0.1185482
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0920879   0.0824818   0.1016940
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1367925   0.0904694   0.1831155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290941   0.2062000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0843373   0.0244665   0.1442082
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1042825   0.0662473   0.1423177
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2347922   0.1028204   0.3667639
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1766863   0.0996582   0.2537144
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2000000   0.0598640   0.3401360
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.1225166   0.0952376   0.1497956
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1304348   0.0742562   0.1866133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0438579   0.0320865   0.0556294
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0596430   0.0320956   0.0871903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0372172   0.0195592   0.0548752
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0649713   0.0460424   0.0839002
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0526667   0.0217952   0.0835382
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0430708   0.0253795   0.0607620
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0079950   0.0052987   0.0106913
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0108893   0.0041768   0.0176017
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083322   0.0061258   0.0105385
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1122317   0.0862474   0.1382160
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.1146921   0.0794271   0.1499571
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1375621   0.1058071   0.1693171
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0493576   0.0360778   0.0626374
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0595705   0.0401593   0.0789818
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0684868   0.0535094   0.0834643
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0839695   0.0767202   0.0912187
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0862422   0.0744052   0.0980791
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0895094   0.0787941   0.1002247
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0680000   0.0367537   0.0992463
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136980   0.1087510
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1104491   0.0843833   0.1365150
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1451867   0.0932111   0.1971624
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0897110   0.0628961   0.1165259
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0318302   0.0140966   0.0495639
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0733945   0.0244008   0.1223881
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0276243   0.0037298   0.0515188
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0802047   0.0574231   0.1029862
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0802916   0.0496016   0.1109816
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0988797   0.0709387   0.1268206
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0605823   0.0452413   0.0759233
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0647750   0.0434424   0.0861076
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0772773   0.0604678   0.0940868
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2106231   0.1941357   0.2271106
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2325291   0.2051799   0.2598784
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2144794   0.1938733   0.2350855


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2652439   0.2173954   0.3130924
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0199857   0.0126548   0.0273167
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2552448   0.2194833   0.2910062
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1765663   0.1552399   0.1978927
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555324   0.1422803   0.1687844
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0961020   0.0908277   0.1013762
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1213873   0.0869266   0.1558480
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1365979   0.1023826   0.1708133
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1245283   0.0993306   0.1497260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0446898   0.0354016   0.0539780
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0553130   0.0432217   0.0674042
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1211890   0.1035235   0.1388545
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0592179   0.0502884   0.0681474
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0860879   0.0805805   0.0915953
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0769231   0.0504429   0.1034032
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1063094   0.0885410   0.1240778
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0374813   0.0230560   0.0519065
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0870570   0.0717143   0.1023997
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0683690   0.0583283   0.0784097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2159196   0.2043522   0.2274871


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7595838   1.0569245   2.929381
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    1.2883207   0.8495101   1.953797
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4371981   0.5992553   3.446842
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.4134241   0.1523972   1.121539
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0638017   0.6924568   1.634288
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0772521   0.8616829   1.346751
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.1363241   0.7648225   1.688277
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8980345   0.6445809   1.251148
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2654155   0.9323240   1.717511
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0647750   0.8036577   1.410732
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5393695   1.2244063   1.935353
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3491781   1.1032206   1.649971
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1148643   0.9682091   1.283734
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9721061   0.8583622   1.100922
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8600406   0.3767610   1.963234
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6165351   0.2807839   1.353765
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    2.2515009   1.1514604   4.402458
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.6943040   0.9590783   2.993151
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.6125828   0.2912002   1.288659
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.6521739   0.3675930   1.157070
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3599121   0.7970574   2.320235
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8485848   0.4919320   1.463813
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.8106149   0.4211560   1.560221
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.6629199   0.4005792   1.097068
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.3620122   0.7433311   2.495627
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0421730   0.6561487   1.655302
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.0219223   0.6953884   1.501787
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2256969   0.8845790   1.698359
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.2069172   0.7911412   1.841200
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3875641   0.9813593   1.961906
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0270658   0.8784436   1.200833
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0659760   0.9208156   1.234020
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.4509804   1.0813122   5.555569
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9003601   0.3653015   2.219121
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3145123   0.8559923   2.018643
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8122382   0.5549740   1.188760
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.3058104   0.9665200   5.500933
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8678637   0.3101816   2.428214
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.0010840   0.6218665   1.611550
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2328422   0.8265100   1.838937
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0692068   0.7057831   1.619766
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2755760   0.9134972   1.781170
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1040057   0.9584108   1.271718
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0183089   0.8989018   1.153577


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0357141   -0.0012543   0.0726825
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0035437   -0.0111295   0.0040421
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0095390   -0.0147481   0.0338261
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0028522   -0.0343145   0.0286102
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0117246   -0.0118489   0.0352982
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0321527    0.0163222   0.0479831
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0013716   -0.0030423   0.0057856
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0154052   -0.0419343   0.0111240
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0323154    0.0046695   0.0599613
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0754717   -0.2132929   0.0623495
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008319   -0.0066151   0.0082788
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0096583   -0.0223924   0.0030758
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002553   -0.0015024   0.0020130
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0089573   -0.0108640   0.0287786
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0098603   -0.0011236   0.0208442
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0021185   -0.0028554   0.0070924
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0089231   -0.0117124   0.0295586
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0041397   -0.0225492   0.0142698
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0056510   -0.0072744   0.0185765
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0068524   -0.0106466   0.0243513
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077867   -0.0046587   0.0202321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0052965   -0.0059932   0.0165862


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.1346463   -0.0158236   0.2628277
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1773109   -0.6178377   0.1432633
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0456604   -0.0764595   0.1539263
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0111743   -0.1422743   0.1048791
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0664036   -0.0769264   0.1906576
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.2067265    0.0994587   0.3012171
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0142727   -0.0327342   0.0591400
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1269093   -0.3655987   0.0700603
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2365733    0.0135582   0.4091690
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.6060606   -2.2123906   0.1970370
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0186139   -0.1629536   0.1718339
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1746126   -0.4252398   0.0319420
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0309441   -0.2093807   0.2235122
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0739119   -0.1048537   0.2237531
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1665085   -0.0395087   0.3316957
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0246083   -0.0348601   0.0806593
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1160000   -0.1939710   0.3454983
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0389401   -0.2272305   0.1204615
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1507692   -0.2677534   0.4311253
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0787111   -0.1457765   0.2592158
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1138926   -0.0874559   0.2779604
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0245299   -0.0292568   0.0755058

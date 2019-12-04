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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             swasted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       52      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       11      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       22      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        0      86
Birth       ki1000108-IRC              INDIA                          Full or late term          0      187     328
Birth       ki1000108-IRC              INDIA                          Full or late term          1       26     328
Birth       ki1000108-IRC              INDIA                          Preterm                    0       22     328
Birth       ki1000108-IRC              INDIA                          Preterm                    1       10     328
Birth       ki1000108-IRC              INDIA                          Early term                 0       67     328
Birth       ki1000108-IRC              INDIA                          Early term                 1       16     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term          0        8     177
Birth       ki1000109-EE               PAKISTAN                       Full or late term          1        1     177
Birth       ki1000109-EE               PAKISTAN                       Preterm                    0      129     177
Birth       ki1000109-EE               PAKISTAN                       Preterm                    1        3     177
Birth       ki1000109-EE               PAKISTAN                       Early term                 0       34     177
Birth       ki1000109-EE               PAKISTAN                       Early term                 1        2     177
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      158     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        2     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      218     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       22     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      284     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       23     707
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          0      652    1439
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          1       57    1439
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    0      191    1439
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    1       15    1439
Birth       ki1101329-Keneba           GAMBIA                         Early term                 0      496    1439
Birth       ki1101329-Keneba           GAMBIA                         Early term                 1       28    1439
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          0     6623   13830
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          1      451   13830
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    0      439   13830
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    1       29   13830
Birth       ki1119695-PROBIT           BELARUS                        Early term                 0     5862   13830
Birth       ki1119695-PROBIT           BELARUS                        Early term                 1      426   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          0      294     572
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          1       29     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    0       69     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    1        9     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 0      162     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 1        9     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term          0      525    1229
Birth       ki1135781-COHORTS          INDIA                          Full or late term          1       28    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                    0      245    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                    1       14    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                 0      403    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                 1       14    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1100    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       35    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      546    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    1       33    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1110    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 1       50    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     9488   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      180   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2683   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       72   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     4656   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1       82   17161
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      205     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        7     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       50     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        1     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       82     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        1     346
6 months    ki1000108-IRC              INDIA                          Full or late term          0      238     388
6 months    ki1000108-IRC              INDIA                          Full or late term          1       11     388
6 months    ki1000108-IRC              INDIA                          Preterm                    0       37     388
6 months    ki1000108-IRC              INDIA                          Preterm                    1        5     388
6 months    ki1000108-IRC              INDIA                          Early term                 0       92     388
6 months    ki1000108-IRC              INDIA                          Early term                 1        5     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       16     375
6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        1     375
6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      287     375
6 months    ki1000109-EE               PAKISTAN                       Preterm                    1       12     375
6 months    ki1000109-EE               PAKISTAN                       Early term                 0       59     375
6 months    ki1000109-EE               PAKISTAN                       Early term                 1        0     375
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      309     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1159    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        8    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      289    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        1    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      444    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        1    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      648    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       10    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      204    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1        3    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      501    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 1        8    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          0     8002   15758
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          1        4   15758
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    0      550   15758
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    1        1   15758
6 months    ki1119695-PROBIT           BELARUS                        Early term                 0     7190   15758
6 months    ki1119695-PROBIT           BELARUS                        Early term                 1       11   15758
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          0      386     714
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          1        3     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    0      113     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    1        1     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 0      210     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 1        1     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term          0      552    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term          1       16    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    0      292    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    1        7    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 0      428    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 1       17    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1017    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       11    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      564    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    1        8    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1069    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 1       16    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     8401   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      110   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     3001   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       46   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     4368   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1       63   15989
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      213     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        1     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       51     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        1     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       84     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        0     350
24 months   ki1000108-IRC              INDIA                          Full or late term          0      247     390
24 months   ki1000108-IRC              INDIA                          Full or late term          1        3     390
24 months   ki1000108-IRC              INDIA                          Preterm                    0       42     390
24 months   ki1000108-IRC              INDIA                          Preterm                    1        0     390
24 months   ki1000108-IRC              INDIA                          Early term                 0       96     390
24 months   ki1000108-IRC              INDIA                          Early term                 1        2     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term          0        6     168
24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        1     168
24 months   ki1000109-EE               PAKISTAN                       Preterm                    0      129     168
24 months   ki1000109-EE               PAKISTAN                       Preterm                    1        3     168
24 months   ki1000109-EE               PAKISTAN                       Early term                 0       29     168
24 months   ki1000109-EE               PAKISTAN                       Early term                 1        0     168
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      205     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      227     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        0     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      548    1157
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1       10    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      166    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1        2    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      421    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       10    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     1989    3972
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1        2    3972
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      136    3972
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1        0    3972
24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     1843    3972
24 months   ki1119695-PROBIT           BELARUS                        Early term                 1        2    3972
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0      374     667
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1        3     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0      109     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1        0     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0      181     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1        0     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      555    1298
24 months   ki1135781-COHORTS          INDIA                          Full or late term          1        4    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      301    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                    1        2    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                 0      431    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                 1        5    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      931    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1        8    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      511    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1        6    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      961    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1       11    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     4155    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      154    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     1528    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       70    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     2173    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1       93    8173


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

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
![](/tmp/bba0c04b-b80b-42d1-8db4-25dcd5065631/fde7fe66-2dc7-4480-a1c2-860b70828271/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bba0c04b-b80b-42d1-8db4-25dcd5065631/fde7fe66-2dc7-4480-a1c2-860b70828271/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bba0c04b-b80b-42d1-8db4-25dcd5065631/fde7fe66-2dc7-4480-a1c2-860b70828271/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bba0c04b-b80b-42d1-8db4-25dcd5065631/fde7fe66-2dc7-4480-a1c2-860b70828271/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                0.1250492   0.0796707   0.1704276
Birth       ki1000108-IRC       INDIA         Preterm              NA                0.2970281   0.1316979   0.4623584
Birth       ki1000108-IRC       INDIA         Early term           NA                0.1898578   0.1034767   0.2762388
Birth       ki1101329-Keneba    GAMBIA        Full or late term    NA                0.0802910   0.0602273   0.1003547
Birth       ki1101329-Keneba    GAMBIA        Preterm              NA                0.0733514   0.0375461   0.1091566
Birth       ki1101329-Keneba    GAMBIA        Early term           NA                0.0531588   0.0339396   0.0723779
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                0.0644328   0.0329129   0.0959527
Birth       ki1119695-PROBIT    BELARUS       Preterm              NA                0.0581638   0.0132407   0.1030869
Birth       ki1119695-PROBIT    BELARUS       Early term           NA                0.0658159   0.0267064   0.1049254
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                0.0897833   0.0585802   0.1209863
Birth       ki1135781-COHORTS   GUATEMALA     Preterm              NA                0.1153846   0.0444216   0.1863476
Birth       ki1135781-COHORTS   GUATEMALA     Early term           NA                0.0526316   0.0191341   0.0861291
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                0.0508110   0.0326589   0.0689630
Birth       ki1135781-COHORTS   INDIA         Preterm              NA                0.0583687   0.0306541   0.0860832
Birth       ki1135781-COHORTS   INDIA         Early term           NA                0.0340397   0.0169096   0.0511698
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0312361   0.0211586   0.0413137
Birth       ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0569663   0.0380820   0.0758507
Birth       ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0423602   0.0306694   0.0540510
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0182387   0.0150064   0.0214711
Birth       kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0268633   0.0212028   0.0325238
Birth       kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0179148   0.0135796   0.0222500
6 months    ki1000108-IRC       INDIA         Full or late term    NA                0.0441767   0.0186206   0.0697328
6 months    ki1000108-IRC       INDIA         Preterm              NA                0.1190476   0.0209812   0.2171141
6 months    ki1000108-IRC       INDIA         Early term           NA                0.0515464   0.0074879   0.0956049
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                0.0281690   0.0145571   0.0417810
6 months    ki1135781-COHORTS   INDIA         Preterm              NA                0.0234114   0.0062660   0.0405568
6 months    ki1135781-COHORTS   INDIA         Early term           NA                0.0382022   0.0203858   0.0560186
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0107004   0.0044097   0.0169910
6 months    ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0139860   0.0043606   0.0236114
6 months    ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0147465   0.0075730   0.0219201
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0129945   0.0102661   0.0157229
6 months    kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0144644   0.0095061   0.0194227
6 months    kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0141650   0.0105144   0.0178156
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0085197   0.0026400   0.0143995
24 months   ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0116054   0.0023715   0.0208394
24 months   ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0113169   0.0046657   0.0179680
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0360463   0.0299732   0.0421194
24 months   kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0429223   0.0322067   0.0536380
24 months   kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0408740   0.0326056   0.0491423


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         NA                   NA                0.1585366   0.1189492   0.1981239
Birth       ki1101329-Keneba    GAMBIA        NA                   NA                0.0694927   0.0563496   0.0826358
Birth       ki1119695-PROBIT    BELARUS       NA                   NA                0.0655098   0.0324802   0.0985393
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0821678   0.0596429   0.1046927
Birth       ki1135781-COHORTS   INDIA         NA                   NA                0.0455655   0.0339017   0.0572293
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0410578   0.0338021   0.0483134
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0194627   0.0170189   0.0219065
6 months    ki1000108-IRC       INDIA         NA                   NA                0.0541237   0.0315811   0.0766663
6 months    ki1135781-COHORTS   INDIA         NA                   NA                0.0304878   0.0211813   0.0397943
6 months    ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0130354   0.0087443   0.0173265
6 months    kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0136969   0.0115537   0.0158401
24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0102965   0.0062804   0.0143127
24 months   kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0387862   0.0342718   0.0433007


### Parameter: RR


agecat      studyid             country       intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  ------------------  ------------  -------------------  ------------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA         Preterm              Full or late term    2.3752911   1.2215035   4.618904
Birth       ki1000108-IRC       INDIA         Early term           Full or late term    1.5182652   0.8482280   2.717582
Birth       ki1101329-Keneba    GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba    GAMBIA        Preterm              Full or late term    0.9135688   0.5279234   1.580926
Birth       ki1101329-Keneba    GAMBIA        Early term           Full or late term    0.6620764   0.4265823   1.027575
Birth       ki1119695-PROBIT    BELARUS       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT    BELARUS       Preterm              Full or late term    0.9027045   0.4956641   1.644007
Birth       ki1119695-PROBIT    BELARUS       Early term           Full or late term    1.0214659   0.7105008   1.468531
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   GUATEMALA     Preterm              Full or late term    1.2851459   0.6341034   2.604622
Birth       ki1135781-COHORTS   GUATEMALA     Early term           Full or late term    0.5862069   0.2838695   1.210551
Birth       ki1135781-COHORTS   INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   INDIA         Preterm              Full or late term    1.1487415   0.6340629   2.081193
Birth       ki1135781-COHORTS   INDIA         Early term           Full or late term    0.6699289   0.3611839   1.242593
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.8237309   1.1485770   2.895752
Birth       ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3561272   0.8870828   2.073178
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.4728729   1.1130735   1.948977
Birth       kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    0.9822412   0.7378708   1.307543
6 months    ki1000108-IRC       INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC       INDIA         Preterm              Full or late term    2.6948051   0.9848457   7.373718
6 months    ki1000108-IRC       INDIA         Early term           Full or late term    1.1668228   0.4156900   3.275218
6 months    ki1135781-COHORTS   INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   INDIA         Preterm              Full or late term    0.8311037   0.3456219   1.998523
6 months    ki1135781-COHORTS   INDIA         Early term           Full or late term    1.3561798   0.6928795   2.654464
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.3070566   0.5286910   3.231371
6 months    ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3781315   0.6425394   2.955845
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1131152   0.7574969   1.635684
6 months    kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    1.0900740   0.7955228   1.493686
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.3621857   0.4751277   3.905371
24 months   ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3283179   0.5365669   3.288366
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1907546   0.8809901   1.609435
24 months   kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    1.1339293   0.8713814   1.475583


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                 0.0334874    0.0012171   0.0657578
Birth       ki1101329-Keneba    GAMBIA        Full or late term    NA                -0.0107983   -0.0242210   0.0026244
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                 0.0010770   -0.0108180   0.0129719
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                -0.0076154   -0.0271452   0.0119143
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                -0.0052455   -0.0181788   0.0076879
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0098216    0.0012165   0.0184267
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0012240   -0.0008186   0.0032666
6 months    ki1000108-IRC       INDIA         Full or late term    NA                 0.0099470   -0.0080254   0.0279194
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                 0.0023188   -0.0082390   0.0128766
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0023350   -0.0029266   0.0075966
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0007024   -0.0010756   0.0024804
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0017768   -0.0031181   0.0066718
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0027399   -0.0015570   0.0070368


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                 0.2112284   -0.0151179   0.3871050
Birth       ki1101329-Keneba    GAMBIA        Full or late term    NA                -0.1553874   -0.3633706   0.0208678
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                 0.0164397   -0.1801580   0.1802870
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                -0.0926816   -0.3568340   0.1200448
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                -0.1151193   -0.4370286   0.1346790
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.2392145    0.0035496   0.4191437
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0628907   -0.0487606   0.1626556
6 months    ki1000108-IRC       INDIA         Full or late term    NA                 0.1837827   -0.2138954   0.4511795
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                 0.0760563   -0.3429950   0.3643521
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.1791273   -0.3353175   0.4953769
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0512806   -0.0877385   0.1725322
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.1725666   -0.4614571   0.5315319
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0706420   -0.0468911   0.1749798

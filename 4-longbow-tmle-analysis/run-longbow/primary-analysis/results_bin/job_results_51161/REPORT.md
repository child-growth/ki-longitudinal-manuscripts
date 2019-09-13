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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mbmi             ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  --------------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      177     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       22     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1       10     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                0      195     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                1       16     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        8     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        2     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                0      151     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                1       42     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  0       36     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                  1       13     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                0      217     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                1       21     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                0      225     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                1       60     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                  0        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                  1        3     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0      196     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1       66     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        3     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0      116     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1      126     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0        6     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        8     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0      734    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1      317    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0      208    1406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1      147    1406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      374     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1      149     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       59     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1       47     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      477     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1       65     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0       99     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1       28     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      603     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1       84     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       53     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1       15     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2078    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1      229    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       34    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        4    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                0     2454    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                1      272    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                  0      395    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                  1       56    3177
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                0    12699   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                1      506   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                  0      496   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                  1       27   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     7696    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1     1606    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      396    9819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1      121    9819
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                0      550     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                1      142     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  0      110     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                  1       35     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                0      206     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                1       16     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  0       29     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                  1        3     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                0      197     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                1       14     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  0        9     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                  1        1     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                0      180     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                1       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  0       43     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                  1        6     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                0      229     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                1        9     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                  1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                0      250     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                1       35     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                  0        3     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                  1        2     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                0      237     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                1       25     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  0        6     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                  1        2     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                0      209     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                1       33     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  0       11     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                0      910    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                1      139    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  0      277    1403
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                  1       77    1403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                0      478     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                1       45     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  0       92     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                  1       14     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                0      515     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                1       27     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  0      123     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                  1        4     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                0      649     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                1       38     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  0       59     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                  1        9     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2209    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1       98    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       35    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                0    13039   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                1      166   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                  0      512   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                  1       11   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                0     8378    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                1      912    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  0      443    9807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                  1       74    9807
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                0      206     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                1       18     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  0       45     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                  1        2     271


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/981ac2fd-1738-49fb-a7d9-a26c3f4269ee/c3bd8ddd-7faf-472c-9f3e-56cd57a57f70/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/981ac2fd-1738-49fb-a7d9-a26c3f4269ee/c3bd8ddd-7faf-472c-9f3e-56cd57a57f70/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/981ac2fd-1738-49fb-a7d9-a26c3f4269ee/c3bd8ddd-7faf-472c-9f3e-56cd57a57f70/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/981ac2fd-1738-49fb-a7d9-a26c3f4269ee/c3bd8ddd-7faf-472c-9f3e-56cd57a57f70/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                0.2013965   0.1483364   0.2544566
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Underweight          NA                0.3302296   0.1371130   0.5233463
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.2173377   0.1589768   0.2756985
0-24 months   ki0047075b-MAL-ED         INDIA                          Underweight          NA                0.2707810   0.1434022   0.3981598
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.5206612   0.4575960   0.5837263
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.3018873   0.2659857   0.3377888
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Underweight          NA                0.4133933   0.3672999   0.4594867
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.2847834   0.2460090   0.3235579
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Underweight          NA                0.4389196   0.3423471   0.5354922
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                0.1209423   0.0930264   0.1488582
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Underweight          NA                0.2348540   0.1580399   0.3116682
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.1232655   0.0985453   0.1479857
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          NA                0.2306026   0.1159786   0.3452265
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                0.0999862   0.0786964   0.1212761
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Underweight          NA                0.1239193   0.0728783   0.1749602
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0384234   0.0301548   0.0466919
0-24 months   ki1119695-PROBIT          BELARUS                        Underweight          NA                0.0563179   0.0369410   0.0756947
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.1728044   0.1651147   0.1804941
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          NA                0.2403481   0.2022212   0.2784750
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                0.2041188   0.1740970   0.2341405
0-24 months   ki1148112-LCNI-5          MALAWI                         Underweight          NA                0.2402438   0.1690360   0.3114516
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.0673575   0.0319236   0.1027914
0-6 months    ki0047075b-MAL-ED         INDIA                          Underweight          NA                0.1224490   0.0304754   0.2144225
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.1320623   0.1115178   0.1526068
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Underweight          NA                0.2227341   0.1841875   0.2612806
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.0855616   0.0614729   0.1096503
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Underweight          NA                0.1132411   0.0484752   0.1780069
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0553130   0.0382083   0.0724176
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          NA                0.1323529   0.0517558   0.2129501
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0126102   0.0092469   0.0159735
0-6 months    ki1119695-PROBIT          BELARUS                        Underweight          NA                0.0202022   0.0111930   0.0292114
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.0982376   0.0921801   0.1042950
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          NA                0.1423258   0.1112464   0.1734051


### Parameter: E(Y)


agecat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2165354   0.1657824   0.2672885
0-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2272727   0.1743641   0.2801813
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5234375   0.4621361   0.5847389
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3300142   0.2990187   0.3610098
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1390135   0.1127781   0.1652488
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.1032421   0.0833685   0.1231156
0-24 months   ki1119695-PROBIT          BELARUS                        NA                   NA                0.0388258   0.0305723   0.0470792
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1758835   0.1683527   0.1834143
0-24 months   ki1148112-LCNI-5          MALAWI                         NA                   NA                0.2114695   0.1837888   0.2391503
0-6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.0785124   0.0445535   0.1124713
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1539558   0.1347651   0.1731465
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    ki1119695-PROBIT          BELARUS                        NA                   NA                0.0128934   0.0095196   0.0162671
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1005404   0.0945884   0.1064924


### Parameter: RR


agecat        studyid                   country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Underweight          Normal weight     1.639699   0.8633450   3.114180
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA                          Underweight          Normal weight     1.245900   0.7239714   2.144100
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.097506   0.6856732   1.756695
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Underweight          Normal weight     1.369363   1.1718496   1.600167
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Underweight          Normal weight     1.541240   1.1896576   1.996727
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Underweight          Normal weight     1.941869   1.3022813   2.895577
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          Normal weight     1.870780   1.0938976   3.199401
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Underweight          Normal weight     1.239363   0.7867883   1.952267
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS                        Underweight          Normal weight     1.465720   1.0939974   1.963747
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          Normal weight     1.390868   1.1795453   1.640051
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5          MALAWI                         Underweight          Normal weight     1.176980   0.8452425   1.638917
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA                          Underweight          Normal weight     1.817896   0.7266332   4.548027
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Underweight          Normal weight     1.686583   1.3994790   2.032586
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Underweight          Normal weight     1.323504   0.6981794   2.508901
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Underweight          Normal weight     2.392802   1.2086339   4.737167
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS                        Underweight          Normal weight     1.602049   1.0369790   2.475036
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Underweight          Normal weight     1.448792   1.1546725   1.817829


### Parameter: PAR


agecat        studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                0.0151389   -0.0071559   0.0374337
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.0099351   -0.0181141   0.0379843
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0027763   -0.0119090   0.0174617
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.0281270    0.0135795   0.0426745
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.0268223    0.0089232   0.0447214
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                0.0180712    0.0027746   0.0333678
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0078603   -0.0016217   0.0173424
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                0.0032558   -0.0039638   0.0104754
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0004024   -0.0002573   0.0010621
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.0030791    0.0010865   0.0050717
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                0.0073507   -0.0058662   0.0205677
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.0111549   -0.0089969   0.0313067
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.0218935    0.0137827   0.0300043
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.0082381   -0.0035632   0.0200394
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0069387   -0.0006472   0.0145246
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0002831   -0.0000803   0.0006466
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.0023029    0.0006630   0.0039427


### Parameter: PAF


agecat        studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     Normal weight        NA                0.0699142   -0.0383343   0.1668775
0-24 months   ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.0437143   -0.0877947   0.1593246
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0053041   -0.0231593   0.0329756
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.0852295    0.0382541   0.1299105
0-24 months   ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.0860777    0.0269252   0.1416345
0-24 months   ki1017093b-PROVIDE        BANGLADESH                     Normal weight        NA                0.1299960    0.0145659   0.2319051
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0599451   -0.0145815   0.1289972
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO                   Normal weight        NA                0.0315357   -0.0414021   0.0993650
0-24 months   ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0103642   -0.0068799   0.0273130
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.0175064    0.0061258   0.0287566
0-24 months   ki1148112-LCNI-5          MALAWI                         Normal weight        NA                0.0347603   -0.0297220   0.0952047
0-6 months    ki0047075b-MAL-ED         INDIA                          Normal weight        NA                0.1420780   -0.1485740   0.3591791
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          Normal weight        NA                0.1422063    0.0854752   0.1954183
0-6 months    ki1017093-NIH-Birth       BANGLADESH                     Normal weight        NA                0.0878266   -0.0455536   0.2041917
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     Normal weight        NA                0.1114621   -0.0151402   0.2222753
0-6 months    ki1119695-PROBIT          BELARUS                        Normal weight        NA                0.0219595   -0.0067530   0.0498532
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       Normal weight        NA                0.0229047    0.0065004   0.0390382

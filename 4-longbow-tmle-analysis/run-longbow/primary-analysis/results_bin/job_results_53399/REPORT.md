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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    stunted   n_cell      n
----------  -------------------------  -----------------------------  -------  --------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       75     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1       17     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        0     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0     92
Birth       ki1000108-IRC              INDIA                          0               0      337    388
Birth       ki1000108-IRC              INDIA                          0               1       44    388
Birth       ki1000108-IRC              INDIA                          1               0        6    388
Birth       ki1000108-IRC              INDIA                          1               1        1    388
Birth       ki1000109-EE               PAKISTAN                       0               0       93    238
Birth       ki1000109-EE               PAKISTAN                       0               1       68    238
Birth       ki1000109-EE               PAKISTAN                       1               0       46    238
Birth       ki1000109-EE               PAKISTAN                       1               1       31    238
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0       85   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1       39   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      692   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1      269   1085
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      355    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1       36    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      136    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       12    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      495    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1       72    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      136    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       29    732
Birth       ki1113344-GMS-Nepal        NEPAL                          0               0      125    646
Birth       ki1113344-GMS-Nepal        NEPAL                          0               1       32    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0      408    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1       81    646
Birth       ki1135781-COHORTS          INDIA                          0               0     2613   4694
Birth       ki1135781-COHORTS          INDIA                          0               1      325   4694
Birth       ki1135781-COHORTS          INDIA                          1               0     1534   4694
Birth       ki1135781-COHORTS          INDIA                          1               1      222   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0       23    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        7    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0      220    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1       84    334
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0      420   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      134   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1535   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      719   2808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      249    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1      109    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    366
6 months    ki1000108-IRC              INDIA                          0               0      303    407
6 months    ki1000108-IRC              INDIA                          0               1       96    407
6 months    ki1000108-IRC              INDIA                          1               0        4    407
6 months    ki1000108-IRC              INDIA                          1               1        4    407
6 months    ki1000109-EE               PAKISTAN                       0               0      131    371
6 months    ki1000109-EE               PAKISTAN                       0               1      119    371
6 months    ki1000109-EE               PAKISTAN                       1               0       58    371
6 months    ki1000109-EE               PAKISTAN                       1               1       63    371
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      109   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1       38   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      655   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      289   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       45    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1       31    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      172    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1      132    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      379    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       71    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      129    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       25    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      449    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      105    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      116    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1707   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      182   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       27   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      110    528
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       19    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      311    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       88    528
6 months    ki1135781-COHORTS          INDIA                          0               0     2457   4699
6 months    ki1135781-COHORTS          INDIA                          0               1      443   4699
6 months    ki1135781-COHORTS          INDIA                          1               0     1323   4699
6 months    ki1135781-COHORTS          INDIA                          1               1      476   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       34    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        5    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      220    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       73    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0      860   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1      221   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2173   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      784   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      101    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      259    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        3    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        5    368
24 months   ki1000108-IRC              INDIA                          0               0      234    409
24 months   ki1000108-IRC              INDIA                          0               1      167    409
24 months   ki1000108-IRC              INDIA                          1               0        3    409
24 months   ki1000108-IRC              INDIA                          1               1        5    409
24 months   ki1000109-EE               PAKISTAN                       0               0       34    166
24 months   ki1000109-EE               PAKISTAN                       0               1       78    166
24 months   ki1000109-EE               PAKISTAN                       1               0       14    166
24 months   ki1000109-EE               PAKISTAN                       1               1       40    166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      295    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      138    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       93    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       52    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      302    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       89    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0       80    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       43    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0       71    456
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       47    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      181    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      157    456
24 months   ki1135781-COHORTS          INDIA                          0               0     1155   3556
24 months   ki1135781-COHORTS          INDIA                          0               1     1078   3556
24 months   ki1135781-COHORTS          INDIA                          1               0      377   3556
24 months   ki1135781-COHORTS          INDIA                          1               1      946   3556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       21    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1       14    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      115    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      141    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0      689   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      344   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     1717   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1255   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/9cae960f-effe-4b64-ae01-c44909afb1a7/bc69ed73-decc-49b5-989b-a37f38ce0ed0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9cae960f-effe-4b64-ae01-c44909afb1a7/bc69ed73-decc-49b5-989b-a37f38ce0ed0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9cae960f-effe-4b64-ae01-c44909afb1a7/bc69ed73-decc-49b5-989b-a37f38ce0ed0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9cae960f-effe-4b64-ae01-c44909afb1a7/bc69ed73-decc-49b5-989b-a37f38ce0ed0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                0.4150382   0.3384247   0.4916516
Birth       ki1000109-EE               PAKISTAN                       1                    NA                0.3904230   0.2828782   0.4979678
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2610806   0.1892690   0.3328922
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2793671   0.2435570   0.3151771
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0925175   0.0636372   0.1213978
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0797705   0.0362725   0.1232684
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1277057   0.1001995   0.1552119
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1735270   0.1157133   0.2313406
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2017528   0.1378907   0.2656148
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1657710   0.1327751   0.1987669
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.1120872   0.1000036   0.1241708
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1282228   0.1113477   0.1450979
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2333333   0.1228972   0.3437694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2763158   0.2043428   0.3482888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2431493   0.1933997   0.2928989
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3199733   0.2970923   0.3428544
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4696044   0.4075443   0.5316646
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5304817   0.4398240   0.6211395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2771157   0.2407162   0.3135151
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3059842   0.2836611   0.3283072
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4294652   0.3139770   0.5449535
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4370452   0.3810031   0.4930873
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1584111   0.1246566   0.1921656
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1630821   0.1041973   0.2219669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1885574   0.1559206   0.2211942
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2646923   0.1944805   0.3349041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0963473   0.0829238   0.1097708
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562500   0.0724034   0.2400966
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1370008   0.0755395   0.1984621
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2182348   0.1776336   0.2588360
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1676735   0.1528377   0.1825093
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2575131   0.2351732   0.2798529
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1282051   0.0052540   0.2511562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2491468   0.1752336   0.3230600
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2077232   0.1781972   0.2372491
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2635075   0.2439694   0.2830456
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6945457   0.6084920   0.7805993
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7424926   0.6260305   0.8589547
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3193286   0.2753845   0.3632726
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3612625   0.2827872   0.4397378
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2288886   0.1870756   0.2707016
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3468218   0.2626779   0.4309658
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4217261   0.3269008   0.5165515
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4644213   0.4113628   0.5174799
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.5198648   0.4986347   0.5410949
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.6820464   0.6543146   0.7097782
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3987211   0.2046473   0.5927948
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5531089   0.4878179   0.6183998
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3408728   0.3029461   0.3787994
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4153527   0.3939187   0.4367866


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.4159664   0.3532152   0.4787176
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2838710   0.2475589   0.3201830
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1749226   0.1456043   0.2042409
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1165317   0.1073518   0.1257117
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2724551   0.2076543   0.3372559
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3037749   0.2834613   0.3240886
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4905660   0.4396283   0.5415038
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2997250   0.2767096   0.3227405
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0973451   0.0840860   0.1106043
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2026515   0.1683319   0.2369711
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1955735   0.1842315   0.2069155
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2349398   0.1664503   0.3034292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2488856   0.2328153   0.2649558
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7108434   0.6416667   0.7800200
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4473684   0.4016814   0.4930554
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5691789   0.5529008   0.5854569
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5326460   0.4663548   0.5989373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3992509   0.3804088   0.4180930


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 0.9406918   0.6737476   1.313401
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0700414   0.8348403   1.371506
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8622202   0.4597751   1.616929
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3588039   0.9139340   2.020220
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8216543   0.5667295   1.191249
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 1.1439555   0.9651987   1.355818
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1842105   0.6662901   2.104721
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3159540   1.0585992   1.635874
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.1296352   0.9100145   1.402259
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1041749   0.9636102   1.265244
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0176498   0.7547020   1.372212
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0294868   0.6767484   1.566081
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4037756   1.0223766   1.927456
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6217376   0.9315439   2.823306
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.5929455   0.9778472   2.594961
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.5358001   1.3572105   1.737890
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9433447   0.7402346   5.101881
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2685512   1.0820085   1.487255
24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0690335   0.8751616   1.305853
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1313190   0.8747653   1.463116
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5152431   1.1197054   2.050505
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1012392   0.8554208   1.417697
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.3119689   1.2392575   1.388946
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3872075   0.8641337   2.226906
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2184976   1.0794998   1.375393


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0009282   -0.0440735   0.0459300
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0227903   -0.0366133   0.0821940
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0034637   -0.0180682   0.0111408
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0102725   -0.0043052   0.0248502
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0268302   -0.0815570   0.0278967
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0044445   -0.0036594   0.0125484
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0391218   -0.0892717   0.1675152
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0606256    0.0158742   0.1053770
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0209616   -0.0150383   0.0569615
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0226094   -0.0080155   0.0532342
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0005179   -0.1054674   0.1044317
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0005293   -0.0167076   0.0177662
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0212328    0.0035539   0.0389117
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009979   -0.0011525   0.0031482
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0656507    0.0088535   0.1224479
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0279000    0.0169809   0.0388191
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1067346   -0.0122702   0.2257395
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0411624    0.0153943   0.0669305
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0162977   -0.0317358   0.0643312
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0093911   -0.0131354   0.0319176
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0279208    0.0051104   0.0507311
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0256423   -0.0569698   0.1082544
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0493141    0.0361823   0.0624459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1339250   -0.0350557   0.3029056
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0583782    0.0260023   0.0907540


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0022315   -0.1120320   0.1047543
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0802842   -0.1559380   0.2682331
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0388947   -0.2162107   0.1125698
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0744500   -0.0367525   0.1737249
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1533830   -0.5118241   0.1200747
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0381400   -0.0339627   0.1052147
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1435897   -0.4564758   0.4964293
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1995741    0.0365783   0.3349935
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0427294   -0.0336347   0.1134518
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0754337   -0.0321304   0.1717878
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0012073   -0.2783643   0.2158604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0033303   -0.1112343   0.1060837
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1012097    0.0136008   0.1810374
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0102507   -0.0121270   0.0321337
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.3239587   -0.0181113   0.5510983
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.1426573    0.0853046   0.1964138
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4543064   -0.3476061   0.7790292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1653869    0.0552706   0.2626682
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0229273   -0.0471884   0.0883484
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0285688   -0.0424269   0.0947293
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1087218    0.0157935   0.1928758
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0573181   -0.1468604   0.2251461
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0866407    0.0630608   0.1096272
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2514333   -0.1559661   0.5152521
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1462192    0.0606114   0.2240254

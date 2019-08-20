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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       74     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1       16     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        0     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0     90
Birth       ki1000108-IRC              INDIA                          0               0      337    388
Birth       ki1000108-IRC              INDIA                          0               1       44    388
Birth       ki1000108-IRC              INDIA                          1               0        6    388
Birth       ki1000108-IRC              INDIA                          1               1        1    388
Birth       ki1000109-EE               PAKISTAN                       0               0        1      2
Birth       ki1000109-EE               PAKISTAN                       0               1        1      2
Birth       ki1000109-EE               PAKISTAN                       1               0        0      2
Birth       ki1000109-EE               PAKISTAN                       1               1        0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0        6    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1        5    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      129    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       40    180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       18     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1     27
Birth       ki1135781-COHORTS          INDIA                          0               0     2613   4694
Birth       ki1135781-COHORTS          INDIA                          0               1      325   4694
Birth       ki1135781-COHORTS          INDIA                          1               0     1534   4694
Birth       ki1135781-COHORTS          INDIA                          1               1      222   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0        6    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        5    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0      213    300
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1       76    300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0       37    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1       10    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      537    820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1      236    820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      249    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1      109    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1    366
6 months    ki1000108-IRC              INDIA                          0               0      303    407
6 months    ki1000108-IRC              INDIA                          0               1       96    407
6 months    ki1000108-IRC              INDIA                          1               0        4    407
6 months    ki1000108-IRC              INDIA                          1               1        4    407
6 months    ki1000109-EE               PAKISTAN                       0               0      123    370
6 months    ki1000109-EE               PAKISTAN                       0               1      125    370
6 months    ki1000109-EE               PAKISTAN                       1               0       55    370
6 months    ki1000109-EE               PAKISTAN                       1               1       67    370
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      109   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1       38   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      655   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      289   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       45    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1       31    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      172    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1      132    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      364    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       69    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      125    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       25    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      449    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1      105    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      116    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       45    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1707   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      182   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       27   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      110    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1       19    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      313    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       85    527
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2174   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      783   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      102    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1      259    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        3    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        5    369
24 months   ki1000108-IRC              INDIA                          0               0      236    409
24 months   ki1000108-IRC              INDIA                          0               1      165    409
24 months   ki1000108-IRC              INDIA                          1               0        3    409
24 months   ki1000108-IRC              INDIA                          1               1        5    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      294    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      138    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       93    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       52    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      302    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       89    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0       80    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       43    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0       73    467
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1       47    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      185    467
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1      162    467
24 months   ki1135781-COHORTS          INDIA                          0               0     1324   3559
24 months   ki1135781-COHORTS          INDIA                          0               1      909   3559
24 months   ki1135781-COHORTS          INDIA                          1               0      468   3559
24 months   ki1135781-COHORTS          INDIA                          1               1      858   3559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       21    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1       14    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      115    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      141    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0      699   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      334   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     1741   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1231   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/8a5101bd-a0ab-46d6-87dd-3a609517a3bb/7d96c645-0899-4ee6-8976-2a404a45105b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8a5101bd-a0ab-46d6-87dd-3a609517a3bb/7d96c645-0899-4ee6-8976-2a404a45105b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8a5101bd-a0ab-46d6-87dd-3a609517a3bb/7d96c645-0899-4ee6-8976-2a404a45105b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8a5101bd-a0ab-46d6-87dd-3a609517a3bb/7d96c645-0899-4ee6-8976-2a404a45105b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4545455   0.3211332   0.5879577
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2366864   0.1571441   0.3162286
Birth       ki1135781-COHORTS          INDIA                          0                    NA                0.1120909   0.1000332   0.1241486
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1257328   0.1089822   0.1424834
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4545455   0.1768203   0.7322707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2629758   0.1953339   0.3306176
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1790524   0.0442707   0.3138341
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3052042   0.2685301   0.3418782
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5034057   0.4410511   0.5657604
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5531825   0.4640744   0.6422906
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2771157   0.2407162   0.3135151
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3059842   0.2836611   0.3283072
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4306605   0.3128362   0.5484848
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4345492   0.3784622   0.4906361
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1588374   0.1244329   0.1932420
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1662018   0.1053418   0.2270617
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1893337   0.1566898   0.2219775
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2733507   0.2030687   0.3436328
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0963473   0.0829238   0.1097708
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562500   0.0724034   0.2400966
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1343479   0.0734828   0.1952130
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2100961   0.1699813   0.2502109
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1660322   0.1511547   0.1809097
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2603145   0.2381652   0.2824639
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1282051   0.0052540   0.2511562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2491468   0.1752336   0.3230600
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2107738   0.1812273   0.2403204
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2626070   0.2432169   0.2819972
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3197736   0.2757878   0.3637594
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3646365   0.2862267   0.4430464
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2262158   0.1846243   0.2678072
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3414685   0.2592081   0.4237289
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4169636   0.3218093   0.5121178
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4664169   0.4137617   0.5190722
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4436573   0.4221322   0.4651825
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.6111381   0.5818582   0.6404179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3531725   0.1605512   0.5457939
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5520327   0.4868870   0.6171784
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3358061   0.2980838   0.3735284
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4074916   0.3860404   0.4289428


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2500000   0.1698155   0.3301845
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1165317   0.1073518   0.1257117
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2700000   0.2043793   0.3356207
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3000000   0.2644043   0.3355957
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5189189   0.4679396   0.5698982
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2997250   0.2767096   0.3227405
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0973451   0.0840860   0.1106043
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1973435   0.1633315   0.2313554
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1955735   0.1842315   0.2069155
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2349398   0.1664503   0.3034292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2486379   0.2325647   0.2647112
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4475375   0.4023913   0.4926837
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4964878   0.4800590   0.5129165
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5326460   0.4663548   0.5989373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3907615   0.3719765   0.4095466


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.5207101   0.3121948   0.8684928
Birth       ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 1.1217040   0.9453153   1.3310055
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.5785467   0.2994589   1.1177370
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.7045522   0.7973123   3.6441158
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0988801   0.8960334   1.3476477
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1041749   0.9636102   1.2652442
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0090296   0.7450898   1.3664670
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0463640   0.6836408   1.6015391
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4437513   1.0590745   1.9681503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6217376   0.9315439   2.8233055
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.5638212   0.9538935   2.5637420
6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.5678559   1.3860353   1.7735276
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9433447   0.7402346   5.1018808
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2459186   1.0648722   1.4577459
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1402959   0.8829197   1.4726988
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5094813   1.1164045   2.0409574
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1186034   0.8671648   1.4429478
24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.3775002   1.2877820   1.4734690
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5630680   0.9206452   2.6537712
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2134728   1.0735618   1.3716177


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2045455   -0.3860759   -0.0230150
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0044408   -0.0036343    0.0125160
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1845455   -0.4600090    0.0909181
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1209476   -0.0104194    0.2523146
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0155132   -0.0206283    0.0516546
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0226094   -0.0080155    0.0532342
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0017131   -0.1087755    0.1053493
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0023976   -0.0153584    0.0201535
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0204566    0.0028785    0.0380346
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009979   -0.0011525    0.0031482
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0629956    0.0067240    0.1192671
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0295413    0.0185609    0.0405218
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1067346   -0.0122702    0.2257395
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0378641    0.0121164    0.0636118
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0095158   -0.0130884    0.0321200
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0305936    0.0077494    0.0534377
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0305739   -0.0529498    0.1140976
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0528304    0.0388742    0.0667867
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1794735    0.0124120    0.3465351
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0549554    0.0227076    0.0872032


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.8181818   -2.0446729   -0.0857603
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0381084   -0.0337250    0.1049502
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6835017   -2.1363257    0.0963381
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4031586   -0.2446839    0.7138072
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0298952   -0.0423654    0.0971464
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0754337   -0.0321304    0.1717878
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0039937   -0.2873545    0.2169962
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0148700   -0.1016138    0.1190369
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0975096    0.0104117    0.1769416
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0102507   -0.0121270    0.0321337
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.3192179   -0.0294620    0.5497995
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.1510498    0.0933249    0.2050996
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4543064   -0.3476061    0.7790292
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1522861    0.0422609    0.2496715
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0288980   -0.0422181    0.0951616
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1191295    0.0261029    0.2032701
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0683158   -0.1385192    0.2375750
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1064083    0.0776355    0.1342836
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3369471   -0.0829989    0.5940539
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1406367    0.0535298    0.2197269

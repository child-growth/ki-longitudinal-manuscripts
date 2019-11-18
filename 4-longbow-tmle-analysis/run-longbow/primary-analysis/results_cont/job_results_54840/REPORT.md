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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        trth2o    n_cell     n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            110   112  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   112  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3    20  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0             17    20  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1              0     1  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0              1     1  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1              7     9  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0              2     9  whz              
Birth       ki0047075b-MAL-ED          PERU                           1             28    36  whz              
Birth       ki0047075b-MAL-ED          PERU                           0              8    36  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     5  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              4     5  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              4    21  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             17    21  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             24    24  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    24  whz              
Birth       ki1000108-IRC              INDIA                          1            105   105  whz              
Birth       ki1000108-IRC              INDIA                          0              0   105  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             11   532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            521   532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            397   707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            310   707  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1     4  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0              3     4  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83  whz              
6 months    ki0047075b-MAL-ED          PERU                           1             39    49  whz              
6 months    ki0047075b-MAL-ED          PERU                           0             10    49  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120  whz              
6 months    ki1000108-IRC              INDIA                          1            121   121  whz              
6 months    ki1000108-IRC              INDIA                          0              0   121  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            589   603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  whz              
24 months   ki0047075b-MAL-ED          PERU                           1             39    49  whz              
24 months   ki0047075b-MAL-ED          PERU                           0             10    49  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119  whz              
24 months   ki1000108-IRC              INDIA                          1            121   121  whz              
24 months   ki1000108-IRC              INDIA                          0              0   121  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            565   579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/73962a22-3243-45b0-8d35-0b02c94312d1/4d6a78b3-b215-43b1-9306-063e3ef113ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/73962a22-3243-45b0-8d35-0b02c94312d1/4d6a78b3-b215-43b1-9306-063e3ef113ff/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/73962a22-3243-45b0-8d35-0b02c94312d1/4d6a78b3-b215-43b1-9306-063e3ef113ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.2460714   -0.6028599    0.1107170
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                 0.0550000   -0.3367180    0.4467180
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.2789781   -1.8034837   -0.7544725
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2986667   -1.3763824   -1.2209509
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.1416796   -1.2535888   -1.0297703
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3451703   -1.4772798   -1.2130608
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 1.0037168    0.2863196    1.7211141
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 1.0280699    0.7695914    1.2865484
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1137477   -0.1511421    0.3786375
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.3117871   -0.3504416    0.9740157
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0612277    0.6949898    1.4274656
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 0.3442375   -0.3220622    1.0105373
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.4100000    1.0960519    1.7239481
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6305093    0.2775495    0.9834691
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.7145565    0.1609733    1.2681397
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.2207666   -0.3038710   -0.1376622
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0387781   -0.0634387    0.1409949
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0127569   -0.1138561    0.1393699
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.7915384    0.1725519    1.4105250
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.5230666    0.2417018    0.8044313
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2759013   -0.4936839   -0.0581188
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0238324   -0.4679350    0.5155999
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0645531   -0.2541327    0.3832389
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -0.2966918   -1.0070223    0.4136386
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2166667   -0.6845675    1.1179009
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0854054   -0.2281139    0.3989247
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0750631   -0.3533898    0.5035160
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.9051908   -0.9891398   -0.8212418
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.7478448   -0.8820095   -0.6136801
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.4889482   -0.6299838   -0.3479126


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1791667   -0.4729428    0.1146094
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.9731715    0.7347562    1.2115869
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1447189   -0.1029021    0.3923399
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 0.9109184    0.5934529    1.2283839
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7418651    0.4248303    1.0588998
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.5203560    0.2632846    0.7774274
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.2262651   -0.4277663   -0.0247638
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1148299   -0.1831101    0.4127700
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1037209   -0.1942394    0.4016813
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.3010714   -0.2287785    0.8309214
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0196885   -0.5495564    0.5101793
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.2034907   -0.3764029   -0.0305786
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.0243530   -0.7488056    0.7975117
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1980393   -0.5115923    0.9076710
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.7169902   -1.4791636    0.0451833
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.7794907   -1.2518720   -0.3071095
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.9353231   -1.4947645   -0.3758816
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0260212   -0.1882495    0.1362072
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.2684718   -0.9526655    0.4157218
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.2997338   -0.2383700    0.8378375
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.3612449   -1.1214842    0.3989944
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1312613   -1.0854716    0.8229491
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.9802539   -1.4171113   -0.5433966
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.2588966    0.0651299    0.4526633


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0669048   -0.0579283    0.1917378
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0194805   -0.5369378    0.4979768
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.1024718   -0.1807458   -0.0241977
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0305453   -0.7181480    0.6570574
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0309712   -0.0950187    0.1569610
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.1503093   -0.3188510    0.0182323
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6681349   -1.0815518   -0.2547181
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.9136471   -1.4607506   -0.3665436
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0090159   -0.0808573    0.0628255
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.2711825   -0.8782383    0.3358734
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0496363   -0.0471854    0.1464580
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0502768   -0.1036685    0.2042221
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1129457   -0.9341257    0.7082342
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.9679301   -1.3948863   -0.5409740
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.1374946    0.0299475    0.2450417

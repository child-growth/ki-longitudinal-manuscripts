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

agecat      studyid                    country                        trth2o    n_cell     n
----------  -------------------------  -----------------------------  -------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            110   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   112
Birth       ki0047075b-MAL-ED          BRAZIL                         1              3    20
Birth       ki0047075b-MAL-ED          BRAZIL                         0             17    20
Birth       ki0047075b-MAL-ED          INDIA                          1              0     1
Birth       ki0047075b-MAL-ED          INDIA                          0              1     1
Birth       ki0047075b-MAL-ED          NEPAL                          1              7     9
Birth       ki0047075b-MAL-ED          NEPAL                          0              2     9
Birth       ki0047075b-MAL-ED          PERU                           1             28    36
Birth       ki0047075b-MAL-ED          PERU                           0              8    36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              4     5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              4    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             17    21
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             24    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    24
Birth       ki1000108-IRC              INDIA                          1            105   105
Birth       ki1000108-IRC              INDIA                          0              0   105
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             11   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            521   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            397   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            310   707
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0              3     4
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6 months    ki0047075b-MAL-ED          PERU                           1             39    49
6 months    ki0047075b-MAL-ED          PERU                           0             10    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120
6 months    ki1000108-IRC              INDIA                          1            121   121
6 months    ki1000108-IRC              INDIA                          0              0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            589   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
24 months   ki0047075b-MAL-ED          PERU                           1             39    49
24 months   ki0047075b-MAL-ED          PERU                           0             10    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119
24 months   ki1000108-IRC              INDIA                          1            121   121
24 months   ki1000108-IRC              INDIA                          0              0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            565   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4


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
![](/tmp/d00f1af9-f93f-47d0-88bd-d4402cf70549/2d5cd23f-b0e4-49f5-abfd-6f70a7c1ec93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d00f1af9-f93f-47d0-88bd-d4402cf70549/2d5cd23f-b0e4-49f5-abfd-6f70a7c1ec93/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d00f1af9-f93f-47d0-88bd-d4402cf70549/2d5cd23f-b0e4-49f5-abfd-6f70a7c1ec93/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.2460714   -0.6028599    0.1107170
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                 0.0550000   -0.3367180    0.4467180
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.2751457   -1.7910161   -0.7592752
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2988161   -1.3765313   -1.2211009
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.1525580   -1.2632773   -1.0418388
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3339645   -1.4703797   -1.1975493
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.4299808   -0.2332066    1.0931682
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 1.0166258    0.7590215    1.2742300
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1075212   -0.1583539    0.3733962
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.2955512   -0.3370930    0.9281955
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0022716    0.6467603    1.3577830
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 0.3542268   -0.3660665    1.0745201
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.4100000    1.0960519    1.7239481
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6305093    0.2775495    0.9834691
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.8988945    0.3771078    1.4206813
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.2205181   -0.3036213   -0.1374149
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0423221   -0.0599471    0.1445913
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0087099   -0.1149145    0.1323343
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.7371703    0.1617414    1.3125992
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.5252661    0.2437297    0.8068026
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2757687   -0.4939547   -0.0575828
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0114012   -0.5198141    0.5426165
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.1178446   -0.2168352    0.4525245
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.4485027   -0.3422647    1.2392702
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2166667   -0.6845675    1.1179009
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0854054   -0.2281139    0.3989247
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.2566194   -1.6607920   -0.8524468
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.9061053   -0.9900921   -0.8221184
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.7599565   -0.8912107   -0.6287022
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.4775223   -0.6224237   -0.3326210


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1791667   -0.4729428    0.1146094
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.9728964    0.7346428    1.2111501
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1409639   -0.1073951    0.3893228
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 0.9150000    0.5978622    1.2321378
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7418651    0.4248303    1.0588998
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.5196602    0.2625058    0.7768146
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.2262651   -0.4277663   -0.0247638
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1168367   -0.1828151    0.4164886
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1037209   -0.1942394    0.4016813
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.3010714   -0.2287785    0.8309214
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0236705   -0.5451453    0.4978044
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1814065   -0.3577508   -0.0050622
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.5866450   -0.1258616    1.2991515
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1880301   -0.4964939    0.8725540
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.6480449   -1.4728175    0.1767278
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.7794907   -1.2518720   -0.3071095
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -1.1194126   -1.6475653   -0.5912600
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0336122   -0.1941683    0.1269439
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.2119042   -0.8557540    0.4319456
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.2871699   -0.2888938    0.8632336
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.3306581   -0.5216816    1.1829978
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1312613   -1.0854716    0.8229491
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.3505141   -0.0628294    0.7638577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.2824341    0.0870974    0.4777709


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0669048   -0.0579283    0.1917378
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0233130   -0.5322299    0.4856039
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0915933   -0.1694899   -0.0136967
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.5429156   -0.0888062    1.1746374
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0334427   -0.0964293    0.1633147
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0872716   -0.2547429    0.0801997
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6681349   -1.0815518   -0.2547181
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.0979852   -1.6140245   -0.5819460
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0125598   -0.0847166    0.0595969
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.2175101   -0.7837847    0.3487644
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0495037   -0.0482620    0.1472693
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0010079   -0.1590349    0.1570191
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1129457   -0.9341257    0.7082342
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.3637524   -0.0400388    0.7675436
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.1496063    0.0437966    0.2554160

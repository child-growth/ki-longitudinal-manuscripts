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

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid     country                        predfeed3    swasted   n_cell       n
----------  ----------  -----------------------------  ----------  --------  -------  ------
Birth       EE          PAKISTAN                       1                  0       22      22
Birth       EE          PAKISTAN                       1                  1        0      22
Birth       EE          PAKISTAN                       0                  0        0      22
Birth       EE          PAKISTAN                       0                  1        0      22
Birth       GMS-Nepal   NEPAL                          1                  0      335     422
Birth       GMS-Nepal   NEPAL                          1                  1       17     422
Birth       GMS-Nepal   NEPAL                          0                  0       70     422
Birth       GMS-Nepal   NEPAL                          0                  1        0     422
Birth       JiVitA-3    BANGLADESH                     1                  0     9445   10634
Birth       JiVitA-3    BANGLADESH                     1                  1      193   10634
Birth       JiVitA-3    BANGLADESH                     0                  0      979   10634
Birth       JiVitA-3    BANGLADESH                     0                  1       17   10634
Birth       JiVitA-4    BANGLADESH                     1                  0       89      97
Birth       JiVitA-4    BANGLADESH                     1                  1        0      97
Birth       JiVitA-4    BANGLADESH                     0                  0        8      97
Birth       JiVitA-4    BANGLADESH                     0                  1        0      97
Birth       MAL-ED      BANGLADESH                     1                  0      158     202
Birth       MAL-ED      BANGLADESH                     1                  1        6     202
Birth       MAL-ED      BANGLADESH                     0                  0       36     202
Birth       MAL-ED      BANGLADESH                     0                  1        2     202
Birth       MAL-ED      BRAZIL                         1                  0       23      55
Birth       MAL-ED      BRAZIL                         1                  1        0      55
Birth       MAL-ED      BRAZIL                         0                  0       32      55
Birth       MAL-ED      BRAZIL                         0                  1        0      55
Birth       MAL-ED      INDIA                          1                  0       27      39
Birth       MAL-ED      INDIA                          1                  1        0      39
Birth       MAL-ED      INDIA                          0                  0       12      39
Birth       MAL-ED      INDIA                          0                  1        0      39
Birth       MAL-ED      NEPAL                          1                  0       13      25
Birth       MAL-ED      NEPAL                          1                  1        1      25
Birth       MAL-ED      NEPAL                          0                  0       11      25
Birth       MAL-ED      NEPAL                          0                  1        0      25
Birth       MAL-ED      PERU                           1                  0      145     218
Birth       MAL-ED      PERU                           1                  1        0     218
Birth       MAL-ED      PERU                           0                  0       73     218
Birth       MAL-ED      PERU                           0                  1        0     218
Birth       MAL-ED      SOUTH AFRICA                   1                  0       33      99
Birth       MAL-ED      SOUTH AFRICA                   1                  1        0      99
Birth       MAL-ED      SOUTH AFRICA                   0                  0       66      99
Birth       MAL-ED      SOUTH AFRICA                   0                  1        0      99
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       24      95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        0      95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       71      95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1        0      95
6 months    EE          PAKISTAN                       1                  0       38      39
6 months    EE          PAKISTAN                       1                  1        1      39
6 months    EE          PAKISTAN                       0                  0        0      39
6 months    EE          PAKISTAN                       0                  1        0      39
6 months    GMS-Nepal   NEPAL                          1                  0      360     441
6 months    GMS-Nepal   NEPAL                          1                  1        7     441
6 months    GMS-Nepal   NEPAL                          0                  0       74     441
6 months    GMS-Nepal   NEPAL                          0                  1        0     441
6 months    JiVitA-3    BANGLADESH                     1                  0     8379    9310
6 months    JiVitA-3    BANGLADESH                     1                  1      121    9310
6 months    JiVitA-3    BANGLADESH                     0                  0      802    9310
6 months    JiVitA-3    BANGLADESH                     0                  1        8    9310
6 months    JiVitA-4    BANGLADESH                     1                  0       76      88
6 months    JiVitA-4    BANGLADESH                     1                  1        0      88
6 months    JiVitA-4    BANGLADESH                     0                  0       12      88
6 months    JiVitA-4    BANGLADESH                     0                  1        0      88
6 months    MAL-ED      BANGLADESH                     1                  0      190     233
6 months    MAL-ED      BANGLADESH                     1                  1        1     233
6 months    MAL-ED      BANGLADESH                     0                  0       41     233
6 months    MAL-ED      BANGLADESH                     0                  1        1     233
6 months    MAL-ED      BRAZIL                         1                  0       93     187
6 months    MAL-ED      BRAZIL                         1                  1        0     187
6 months    MAL-ED      BRAZIL                         0                  0       94     187
6 months    MAL-ED      BRAZIL                         0                  1        0     187
6 months    MAL-ED      INDIA                          1                  0      143     210
6 months    MAL-ED      INDIA                          1                  1        4     210
6 months    MAL-ED      INDIA                          0                  0       62     210
6 months    MAL-ED      INDIA                          0                  1        1     210
6 months    MAL-ED      NEPAL                          1                  0      113     227
6 months    MAL-ED      NEPAL                          1                  1        0     227
6 months    MAL-ED      NEPAL                          0                  0      114     227
6 months    MAL-ED      NEPAL                          0                  1        0     227
6 months    MAL-ED      PERU                           1                  0      176     270
6 months    MAL-ED      PERU                           1                  1        0     270
6 months    MAL-ED      PERU                           0                  0       94     270
6 months    MAL-ED      PERU                           0                  1        0     270
6 months    MAL-ED      SOUTH AFRICA                   1                  0       63     244
6 months    MAL-ED      SOUTH AFRICA                   1                  1        0     244
6 months    MAL-ED      SOUTH AFRICA                   0                  0      179     244
6 months    MAL-ED      SOUTH AFRICA                   0                  1        2     244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       64     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      148     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1        0     212
24 months   EE          PAKISTAN                       1                  0       20      20
24 months   EE          PAKISTAN                       1                  1        0      20
24 months   EE          PAKISTAN                       0                  0        0      20
24 months   EE          PAKISTAN                       0                  1        0      20
24 months   GMS-Nepal   NEPAL                          1                  0      313     384
24 months   GMS-Nepal   NEPAL                          1                  1        9     384
24 months   GMS-Nepal   NEPAL                          0                  0       60     384
24 months   GMS-Nepal   NEPAL                          0                  1        2     384
24 months   JiVitA-3    BANGLADESH                     1                  0     4247    4833
24 months   JiVitA-3    BANGLADESH                     1                  1      170    4833
24 months   JiVitA-3    BANGLADESH                     0                  0      399    4833
24 months   JiVitA-3    BANGLADESH                     0                  1       17    4833
24 months   JiVitA-4    BANGLADESH                     1                  0      131     150
24 months   JiVitA-4    BANGLADESH                     1                  1        4     150
24 months   JiVitA-4    BANGLADESH                     0                  0       14     150
24 months   JiVitA-4    BANGLADESH                     0                  1        1     150
24 months   MAL-ED      BANGLADESH                     1                  0      168     205
24 months   MAL-ED      BANGLADESH                     1                  1        0     205
24 months   MAL-ED      BANGLADESH                     0                  0       37     205
24 months   MAL-ED      BANGLADESH                     0                  1        0     205
24 months   MAL-ED      BRAZIL                         1                  0       78     152
24 months   MAL-ED      BRAZIL                         1                  1        1     152
24 months   MAL-ED      BRAZIL                         0                  0       73     152
24 months   MAL-ED      BRAZIL                         0                  1        0     152
24 months   MAL-ED      INDIA                          1                  0      139     202
24 months   MAL-ED      INDIA                          1                  1        0     202
24 months   MAL-ED      INDIA                          0                  0       62     202
24 months   MAL-ED      INDIA                          0                  1        1     202
24 months   MAL-ED      NEPAL                          1                  0      110     220
24 months   MAL-ED      NEPAL                          1                  1        0     220
24 months   MAL-ED      NEPAL                          0                  0      110     220
24 months   MAL-ED      NEPAL                          0                  1        0     220
24 months   MAL-ED      PERU                           1                  0      130     198
24 months   MAL-ED      PERU                           1                  1        1     198
24 months   MAL-ED      PERU                           0                  0       67     198
24 months   MAL-ED      PERU                           0                  1        0     198
24 months   MAL-ED      SOUTH AFRICA                   1                  0       60     228
24 months   MAL-ED      SOUTH AFRICA                   1                  1        0     228
24 months   MAL-ED      SOUTH AFRICA                   0                  0      168     228
24 months   MAL-ED      SOUTH AFRICA                   0                  1        0     228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       54     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        0     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      130     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1        0     184


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/d04c5a8e-2dd7-48bd-8cfc-f9516bfba2ea/d0c1947a-dc47-4e4a-8ec0-e6793540ff4a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d04c5a8e-2dd7-48bd-8cfc-f9516bfba2ea/d0c1947a-dc47-4e4a-8ec0-e6793540ff4a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d04c5a8e-2dd7-48bd-8cfc-f9516bfba2ea/d0c1947a-dc47-4e4a-8ec0-e6793540ff4a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d04c5a8e-2dd7-48bd-8cfc-f9516bfba2ea/d0c1947a-dc47-4e4a-8ec0-e6793540ff4a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                0.0199788   0.0169073   0.0230504
Birth       JiVitA-3   BANGLADESH   0                    NA                0.0168921   0.0082741   0.0255102
6 months    JiVitA-3   BANGLADESH   1                    NA                0.0142353   0.0114505   0.0170201
6 months    JiVitA-3   BANGLADESH   0                    NA                0.0098765   0.0015495   0.0182036
24 months   JiVitA-3   BANGLADESH   1                    NA                0.0383931   0.0310836   0.0457026
24 months   JiVitA-3   BANGLADESH   0                    NA                0.0436453   0.0262263   0.0610643


### Parameter: E(Y)


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   NA                   NA                0.0197480   0.0168324   0.0226636
6 months    JiVitA-3   BANGLADESH   NA                   NA                0.0138561   0.0112336   0.0164785
24 months   JiVitA-3   BANGLADESH   NA                   NA                0.0386923   0.0318833   0.0455013


### Parameter: RR


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3   BANGLADESH   0                    1                 0.8455022   0.4975614   1.436756
6 months    JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3   BANGLADESH   0                    1                 0.6938068   0.2900884   1.659383
24 months   JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3   BANGLADESH   0                    1                 1.1367996   0.7302246   1.769748


### Parameter: PAR


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                -0.0002308   -0.0010822   0.0006205
6 months    JiVitA-3   BANGLADESH   1                    NA                -0.0003792   -0.0011503   0.0003918
24 months   JiVitA-3   BANGLADESH   1                    NA                 0.0002992   -0.0013325   0.0019310


### Parameter: PAF


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   1                    NA                -0.0116885   -0.0556910   0.0304799
6 months    JiVitA-3   BANGLADESH   1                    NA                -0.0273689   -0.0844203   0.0266810
24 months   JiVitA-3   BANGLADESH   1                    NA                 0.0077334   -0.0356513   0.0493007

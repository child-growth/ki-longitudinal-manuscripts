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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_brthmon
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

agecat      studyid        country                        earlybf    stunted   n_cell       n
----------  -------------  -----------------------------  --------  --------  -------  ------
Birth       EE             PAKISTAN                       1                0       28     229
Birth       EE             PAKISTAN                       1                1       16     229
Birth       EE             PAKISTAN                       0                0      105     229
Birth       EE             PAKISTAN                       0                1       80     229
Birth       GMS-Nepal      NEPAL                          1                0      152     632
Birth       GMS-Nepal      NEPAL                          1                1       28     632
Birth       GMS-Nepal      NEPAL                          0                0      373     632
Birth       GMS-Nepal      NEPAL                          0                1       79     632
Birth       JiVitA-3       BANGLADESH                     1                0       85   22370
Birth       JiVitA-3       BANGLADESH                     1                1      151   22370
Birth       JiVitA-3       BANGLADESH                     0                0    14924   22370
Birth       JiVitA-3       BANGLADESH                     0                1     7210   22370
Birth       JiVitA-4       BANGLADESH                     1                0     1344    2823
Birth       JiVitA-4       BANGLADESH                     1                1      568    2823
Birth       JiVitA-4       BANGLADESH                     0                0      622    2823
Birth       JiVitA-4       BANGLADESH                     0                1      289    2823
Birth       MAL-ED         BANGLADESH                     1                0      126     230
Birth       MAL-ED         BANGLADESH                     1                1       21     230
Birth       MAL-ED         BANGLADESH                     0                0       60     230
Birth       MAL-ED         BANGLADESH                     0                1       23     230
Birth       MAL-ED         BRAZIL                         1                0       26      65
Birth       MAL-ED         BRAZIL                         1                1        2      65
Birth       MAL-ED         BRAZIL                         0                0       30      65
Birth       MAL-ED         BRAZIL                         0                1        7      65
Birth       MAL-ED         INDIA                          1                0       25      46
Birth       MAL-ED         INDIA                          1                1        7      46
Birth       MAL-ED         INDIA                          0                0       11      46
Birth       MAL-ED         INDIA                          0                1        3      46
Birth       MAL-ED         NEPAL                          1                0       13      27
Birth       MAL-ED         NEPAL                          1                1        1      27
Birth       MAL-ED         NEPAL                          0                0       12      27
Birth       MAL-ED         NEPAL                          0                1        1      27
Birth       MAL-ED         PERU                           1                0      158     233
Birth       MAL-ED         PERU                           1                1       17     233
Birth       MAL-ED         PERU                           0                0       49     233
Birth       MAL-ED         PERU                           0                1        9     233
Birth       MAL-ED         SOUTH AFRICA                   1                0       64     111
Birth       MAL-ED         SOUTH AFRICA                   1                1        5     111
Birth       MAL-ED         SOUTH AFRICA                   0                0       38     111
Birth       MAL-ED         SOUTH AFRICA                   0                1        4     111
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       92     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       19     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       10     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        4     125
Birth       NIH-Crypto     BANGLADESH                     1                0      549     732
Birth       NIH-Crypto     BANGLADESH                     1                1       85     732
Birth       NIH-Crypto     BANGLADESH                     0                0       82     732
Birth       NIH-Crypto     BANGLADESH                     0                1       16     732
Birth       SAS-CompFeed   INDIA                          1                0       71    1207
Birth       SAS-CompFeed   INDIA                          1                1       15    1207
Birth       SAS-CompFeed   INDIA                          0                0      808    1207
Birth       SAS-CompFeed   INDIA                          0                1      313    1207
Birth       ZVITAMBO       ZIMBABWE                       1                0     5916   12354
Birth       ZVITAMBO       ZIMBABWE                       1                1      640   12354
Birth       ZVITAMBO       ZIMBABWE                       0                0     5168   12354
Birth       ZVITAMBO       ZIMBABWE                       0                1      630   12354
6 months    EE             PAKISTAN                       1                0       36     362
6 months    EE             PAKISTAN                       1                1       32     362
6 months    EE             PAKISTAN                       0                0      149     362
6 months    EE             PAKISTAN                       0                1      145     362
6 months    GMS-Nepal      NEPAL                          1                0      125     511
6 months    GMS-Nepal      NEPAL                          1                1       26     511
6 months    GMS-Nepal      NEPAL                          0                0      279     511
6 months    GMS-Nepal      NEPAL                          0                1       81     511
6 months    JiVitA-3       BANGLADESH                     1                0       15   16811
6 months    JiVitA-3       BANGLADESH                     1                1       20   16811
6 months    JiVitA-3       BANGLADESH                     0                0    12570   16811
6 months    JiVitA-3       BANGLADESH                     0                1     4206   16811
6 months    JiVitA-4       BANGLADESH                     1                0     2329    4831
6 months    JiVitA-4       BANGLADESH                     1                1      765    4831
6 months    JiVitA-4       BANGLADESH                     0                0     1281    4831
6 months    JiVitA-4       BANGLADESH                     0                1      456    4831
6 months    MAL-ED         BANGLADESH                     1                0      124     240
6 months    MAL-ED         BANGLADESH                     1                1       23     240
6 months    MAL-ED         BANGLADESH                     0                0       72     240
6 months    MAL-ED         BANGLADESH                     0                1       21     240
6 months    MAL-ED         BRAZIL                         1                0       93     209
6 months    MAL-ED         BRAZIL                         1                1        2     209
6 months    MAL-ED         BRAZIL                         0                0      110     209
6 months    MAL-ED         BRAZIL                         0                1        4     209
6 months    MAL-ED         INDIA                          1                0      115     236
6 months    MAL-ED         INDIA                          1                1       25     236
6 months    MAL-ED         INDIA                          0                0       76     236
6 months    MAL-ED         INDIA                          0                1       20     236
6 months    MAL-ED         NEPAL                          1                0       92     236
6 months    MAL-ED         NEPAL                          1                1        4     236
6 months    MAL-ED         NEPAL                          0                0      132     236
6 months    MAL-ED         NEPAL                          0                1        8     236
6 months    MAL-ED         PERU                           1                0      157     273
6 months    MAL-ED         PERU                           1                1       45     273
6 months    MAL-ED         PERU                           0                0       56     273
6 months    MAL-ED         PERU                           0                1       15     273
6 months    MAL-ED         SOUTH AFRICA                   1                0      126     250
6 months    MAL-ED         SOUTH AFRICA                   1                1       30     250
6 months    MAL-ED         SOUTH AFRICA                   0                0       75     250
6 months    MAL-ED         SOUTH AFRICA                   0                1       19     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      160     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       45     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       28     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    NIH-Crypto     BANGLADESH                     1                0      481     715
6 months    NIH-Crypto     BANGLADESH                     1                1      138     715
6 months    NIH-Crypto     BANGLADESH                     0                0       84     715
6 months    NIH-Crypto     BANGLADESH                     0                1       12     715
6 months    SAS-CompFeed   INDIA                          1                0       75    1336
6 months    SAS-CompFeed   INDIA                          1                1       23    1336
6 months    SAS-CompFeed   INDIA                          0                0      881    1336
6 months    SAS-CompFeed   INDIA                          0                1      357    1336
6 months    ZVITAMBO       ZIMBABWE                       1                0     3511    7698
6 months    ZVITAMBO       ZIMBABWE                       1                1      635    7698
6 months    ZVITAMBO       ZIMBABWE                       0                0     2923    7698
6 months    ZVITAMBO       ZIMBABWE                       0                1      629    7698
24 months   EE             PAKISTAN                       1                0       12     164
24 months   EE             PAKISTAN                       1                1       20     164
24 months   EE             PAKISTAN                       0                0       37     164
24 months   EE             PAKISTAN                       0                1       95     164
24 months   GMS-Nepal      NEPAL                          1                0       94     445
24 months   GMS-Nepal      NEPAL                          1                1       37     445
24 months   GMS-Nepal      NEPAL                          0                0      151     445
24 months   GMS-Nepal      NEPAL                          0                1      163     445
24 months   JiVitA-3       BANGLADESH                     1                0        1    8632
24 months   JiVitA-3       BANGLADESH                     1                1        0    8632
24 months   JiVitA-3       BANGLADESH                     0                0     4392    8632
24 months   JiVitA-3       BANGLADESH                     0                1     4239    8632
24 months   JiVitA-4       BANGLADESH                     1                0     1811    4752
24 months   JiVitA-4       BANGLADESH                     1                1     1231    4752
24 months   JiVitA-4       BANGLADESH                     0                0     1036    4752
24 months   JiVitA-4       BANGLADESH                     0                1      674    4752
24 months   MAL-ED         BANGLADESH                     1                0       65     211
24 months   MAL-ED         BANGLADESH                     1                1       63     211
24 months   MAL-ED         BANGLADESH                     0                0       46     211
24 months   MAL-ED         BANGLADESH                     0                1       37     211
24 months   MAL-ED         BRAZIL                         1                0       78     169
24 months   MAL-ED         BRAZIL                         1                1        2     169
24 months   MAL-ED         BRAZIL                         0                0       84     169
24 months   MAL-ED         BRAZIL                         0                1        5     169
24 months   MAL-ED         INDIA                          1                0       75     227
24 months   MAL-ED         INDIA                          1                1       59     227
24 months   MAL-ED         INDIA                          0                0       55     227
24 months   MAL-ED         INDIA                          0                1       38     227
24 months   MAL-ED         NEPAL                          1                0       73     228
24 months   MAL-ED         NEPAL                          1                1       22     228
24 months   MAL-ED         NEPAL                          0                0      105     228
24 months   MAL-ED         NEPAL                          0                1       28     228
24 months   MAL-ED         PERU                           1                0       88     201
24 months   MAL-ED         PERU                           1                1       61     201
24 months   MAL-ED         PERU                           0                0       39     201
24 months   MAL-ED         PERU                           0                1       13     201
24 months   MAL-ED         SOUTH AFRICA                   1                0       90     235
24 months   MAL-ED         SOUTH AFRICA                   1                1       54     235
24 months   MAL-ED         SOUTH AFRICA                   0                0       63     235
24 months   MAL-ED         SOUTH AFRICA                   0                1       28     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0       51     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1      129     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0        8     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1       26     214
24 months   NIH-Crypto     BANGLADESH                     1                0      320     514
24 months   NIH-Crypto     BANGLADESH                     1                1      123     514
24 months   NIH-Crypto     BANGLADESH                     0                0       62     514
24 months   NIH-Crypto     BANGLADESH                     0                1        9     514
24 months   ZVITAMBO       ZIMBABWE                       1                0      475    1406
24 months   ZVITAMBO       ZIMBABWE                       1                1      242    1406
24 months   ZVITAMBO       ZIMBABWE                       0                0      439    1406
24 months   ZVITAMBO       ZIMBABWE                       0                1      250    1406


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
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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




# Results Detail

## Results Plots
![](/tmp/f20a10cb-13f4-4763-9d2e-2da4ba37b2bb/dd5f4300-d3de-449d-9ba9-bc9e399a40c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f20a10cb-13f4-4763-9d2e-2da4ba37b2bb/dd5f4300-d3de-449d-9ba9-bc9e399a40c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f20a10cb-13f4-4763-9d2e-2da4ba37b2bb/dd5f4300-d3de-449d-9ba9-bc9e399a40c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f20a10cb-13f4-4763-9d2e-2da4ba37b2bb/dd5f4300-d3de-449d-9ba9-bc9e399a40c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       1                    NA                0.3593795   0.2024149   0.5163442
Birth       EE             PAKISTAN                       0                    NA                0.4382990   0.3663909   0.5102071
Birth       GMS-Nepal      NEPAL                          1                    NA                0.1649818   0.1082897   0.2216739
Birth       GMS-Nepal      NEPAL                          0                    NA                0.1724148   0.1374897   0.2073400
Birth       JiVitA-3       BANGLADESH                     1                    NA                0.3425405   0.3316112   0.3534698
Birth       JiVitA-3       BANGLADESH                     0                    NA                0.3289700   0.3215909   0.3363490
Birth       JiVitA-4       BANGLADESH                     1                    NA                0.3015748   0.2814443   0.3217054
Birth       JiVitA-4       BANGLADESH                     0                    NA                0.3076115   0.2829182   0.3323047
Birth       MAL-ED         BANGLADESH                     1                    NA                0.1394835   0.0824410   0.1965260
Birth       MAL-ED         BANGLADESH                     0                    NA                0.2941878   0.1981025   0.3902731
Birth       MAL-ED         PERU                           1                    NA                0.0971429   0.0531707   0.1411150
Birth       MAL-ED         PERU                           0                    NA                0.1551724   0.0617912   0.2485536
Birth       NIH-Crypto     BANGLADESH                     1                    NA                0.1339593   0.1074083   0.1605102
Birth       NIH-Crypto     BANGLADESH                     0                    NA                0.1584228   0.0832621   0.2335835
Birth       SAS-CompFeed   INDIA                          1                    NA                0.1793114   0.0480923   0.3105306
Birth       SAS-CompFeed   INDIA                          0                    NA                0.2789015   0.2498198   0.3079832
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                0.1027677   0.0974134   0.1081219
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                0.1028077   0.0974501   0.1081653
6 months    EE             PAKISTAN                       1                    NA                0.5096564   0.3975035   0.6218092
6 months    EE             PAKISTAN                       0                    NA                0.4839314   0.4272787   0.5405841
6 months    GMS-Nepal      NEPAL                          1                    NA                0.1796086   0.1176762   0.2415411
6 months    GMS-Nepal      NEPAL                          0                    NA                0.2214893   0.1784635   0.2645152
6 months    JiVitA-3       BANGLADESH                     1                    NA                0.5590313   0.5449593   0.5731033
6 months    JiVitA-3       BANGLADESH                     0                    NA                0.2507344   0.2424145   0.2590542
6 months    JiVitA-4       BANGLADESH                     1                    NA                0.2436006   0.2265376   0.2606637
6 months    JiVitA-4       BANGLADESH                     0                    NA                0.2679810   0.2435556   0.2924065
6 months    MAL-ED         BANGLADESH                     1                    NA                0.1553695   0.0964236   0.2143155
6 months    MAL-ED         BANGLADESH                     0                    NA                0.2254441   0.1406569   0.3102312
6 months    MAL-ED         INDIA                          1                    NA                0.1770329   0.1138179   0.2402479
6 months    MAL-ED         INDIA                          0                    NA                0.2041099   0.1221008   0.2861190
6 months    MAL-ED         PERU                           1                    NA                0.2218027   0.1644075   0.2791979
6 months    MAL-ED         PERU                           0                    NA                0.2055400   0.1094544   0.3016256
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                0.1857164   0.1236480   0.2477848
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                0.1968052   0.1152025   0.2784079
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2168114   0.1600212   0.2736015
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2823307   0.1436402   0.4210211
6 months    NIH-Crypto     BANGLADESH                     1                    NA                0.2233373   0.1905225   0.2561520
6 months    NIH-Crypto     BANGLADESH                     0                    NA                0.1246847   0.0547411   0.1946282
6 months    SAS-CompFeed   INDIA                          1                    NA                0.2207278   0.1384822   0.3029734
6 months    SAS-CompFeed   INDIA                          0                    NA                0.2893826   0.2718186   0.3069466
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                0.1599825   0.1491750   0.1707900
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                0.1675114   0.1556091   0.1794137
24 months   EE             PAKISTAN                       1                    NA                0.5854859   0.4031123   0.7678596
24 months   EE             PAKISTAN                       0                    NA                0.7270484   0.6505955   0.8035013
24 months   GMS-Nepal      NEPAL                          1                    NA                0.2884386   0.2116340   0.3652431
24 months   GMS-Nepal      NEPAL                          0                    NA                0.5145057   0.4594820   0.5695295
24 months   JiVitA-4       BANGLADESH                     1                    NA                0.3997675   0.3788245   0.4207105
24 months   JiVitA-4       BANGLADESH                     0                    NA                0.3998609   0.3730434   0.4266783
24 months   MAL-ED         BANGLADESH                     1                    NA                0.4949334   0.4109284   0.5789384
24 months   MAL-ED         BANGLADESH                     0                    NA                0.4135089   0.3103002   0.5167175
24 months   MAL-ED         INDIA                          1                    NA                0.4417312   0.3580160   0.5254463
24 months   MAL-ED         INDIA                          0                    NA                0.4067440   0.3070718   0.5064162
24 months   MAL-ED         NEPAL                          1                    NA                0.2350669   0.1483180   0.3218158
24 months   MAL-ED         NEPAL                          0                    NA                0.2130182   0.1421026   0.2839338
24 months   MAL-ED         PERU                           1                    NA                0.4143319   0.3350198   0.4936441
24 months   MAL-ED         PERU                           0                    NA                0.2400665   0.1243698   0.3557633
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.3694392   0.2906317   0.4482468
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.3065845   0.2116993   0.4014697
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7166667   0.6506830   0.7826503
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7647059   0.6217907   0.9076211
24 months   NIH-Crypto     BANGLADESH                     1                    NA                0.2776524   0.2359085   0.3193963
24 months   NIH-Crypto     BANGLADESH                     0                    NA                0.1267606   0.0492965   0.2042247
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.3456325   0.3119678   0.3792971
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.3529628   0.3181852   0.3877404


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       NA                   NA                0.4192140   0.3551658   0.4832621
Birth       GMS-Nepal      NEPAL                          NA                   NA                0.1693038   0.1400429   0.1985647
Birth       JiVitA-3       BANGLADESH                     NA                   NA                0.3290568   0.3216837   0.3364298
Birth       JiVitA-4       BANGLADESH                     NA                   NA                0.3035778   0.2836422   0.3235133
Birth       MAL-ED         BANGLADESH                     NA                   NA                0.1913043   0.1403613   0.2422474
Birth       MAL-ED         PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       NIH-Crypto     BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       SAS-CompFeed   INDIA                          NA                   NA                0.2717481   0.2380003   0.3054960
Birth       ZVITAMBO       ZIMBABWE                       NA                   NA                0.1028007   0.0974452   0.1081563
6 months    EE             PAKISTAN                       NA                   NA                0.4889503   0.4373849   0.5405157
6 months    GMS-Nepal      NEPAL                          NA                   NA                0.2093933   0.1740812   0.2447055
6 months    JiVitA-3       BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    JiVitA-4       BANGLADESH                     NA                   NA                0.2527427   0.2386864   0.2667990
6 months    MAL-ED         BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6 months    MAL-ED         INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    MAL-ED         PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                0.1960000   0.1466935   0.2453065
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    NIH-Crypto     BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    SAS-CompFeed   INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                0.1641985   0.1559224   0.1724746
24 months   EE             PAKISTAN                       NA                   NA                0.7012195   0.6309515   0.7714875
24 months   GMS-Nepal      NEPAL                          NA                   NA                0.4494382   0.4031687   0.4957077
24 months   JiVitA-4       BANGLADESH                     NA                   NA                0.4008838   0.3839145   0.4178532
24 months   MAL-ED         BANGLADESH                     NA                   NA                0.4739336   0.4064004   0.5414669
24 months   MAL-ED         INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED         NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   MAL-ED         PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.3489362   0.2878666   0.4100058
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.3499289   0.3249898   0.3748679


### Parameter: RR


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       EE             PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       EE             PAKISTAN                       0                    1                 1.2195992   0.7639570   1.9469971
Birth       GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 1.0450537   0.7014924   1.5568767
Birth       JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                 0.9603828   0.9371584   0.9841827
Birth       JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 1.0200171   0.9602226   1.0835350
Birth       MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 2.1091224   1.2499409   3.5588860
Birth       MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED         PERU                           0                    1                 1.5973631   0.7522615   3.3918642
Birth       NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto     BANGLADESH                     0                    1                 1.1826191   0.7072219   1.9775800
Birth       SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 1.5554027   0.8060710   3.0013206
Birth       ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                 1.0003897   0.9984724   1.0023106
6 months    EE             PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    EE             PAKISTAN                       0                    1                 0.9495249   0.7462380   1.2081903
6 months    GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 1.2331775   0.8303892   1.8313424
6 months    JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                 0.4485158   0.4301190   0.4676994
6 months    JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 1.1000835   0.9824982   1.2317413
6 months    MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 1.4510183   0.8494857   2.4785043
6 months    MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         INDIA                          0                    1                 1.1529488   0.6722588   1.9773498
6 months    MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         PERU                           0                    1                 0.9266795   0.5434895   1.5800394
6 months    MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 1.0597084   0.6211384   1.8079417
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.3021950   0.7460304   2.2729795
6 months    NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto     BANGLADESH                     0                    1                 0.5582798   0.3125679   0.9971475
6 months    SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 1.3110384   0.9205755   1.8671164
6 months    ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 1.0470604   0.9529205   1.1505005
24 months   EE             PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   EE             PAKISTAN                       0                    1                 1.2417864   0.8922757   1.7282028
24 months   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 1.7837620   1.3422717   2.3704639
24 months   JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                 1.0002336   0.9222204   1.0848462
24 months   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 0.8354838   0.6237685   1.1190581
24 months   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         INDIA                          0                    1                 0.9207953   0.6794974   1.2477813
24 months   MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         NEPAL                          0                    1                 0.9062023   0.5534062   1.4839057
24 months   MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         PERU                           0                    1                 0.5794063   0.3465035   0.9688551
24 months   MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 0.8298645   0.5716188   1.2047804
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0670315   0.8663581   1.3141865
24 months   NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto     BANGLADESH                     0                    1                 0.4565441   0.2433150   0.8566365
24 months   ZVITAMBO       ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 1.0212084   0.8933250   1.1673989


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                 0.0598344   -0.0840274    0.2036963
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0043220   -0.0446355    0.0532795
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.0134837   -0.0216415   -0.0053259
Birth       JiVitA-4       BANGLADESH                     1                    NA                 0.0020029   -0.0039311    0.0079370
Birth       MAL-ED         BANGLADESH                     1                    NA                 0.0518208    0.0105682    0.0930735
Birth       MAL-ED         PERU                           1                    NA                 0.0144451   -0.0114503    0.0403405
Birth       NIH-Crypto     BANGLADESH                     1                    NA                 0.0040189   -0.0064656    0.0145034
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0924367   -0.0144782    0.1993516
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0000331   -0.0000666    0.0001327
6 months    EE             PAKISTAN                       1                    NA                -0.0207061   -0.1211507    0.0797385
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.0297847   -0.0239297    0.0834991
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.3076483   -0.3236811   -0.2916154
6 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0091421   -0.0011633    0.0194474
6 months    MAL-ED         BANGLADESH                     1                    NA                 0.0279638   -0.0125733    0.0685009
6 months    MAL-ED         INDIA                          1                    NA                 0.0136451   -0.0287574    0.0560475
6 months    MAL-ED         PERU                           1                    NA                -0.0020225   -0.0308918    0.0268468
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0102836   -0.0284035    0.0489708
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0220550   -0.0051780    0.0492881
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0135471   -0.0239693   -0.0031248
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0637033   -0.0103821    0.1377887
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0042160   -0.0030503    0.0114823
24 months   EE             PAKISTAN                       1                    NA                 0.1157336   -0.0490721    0.2805393
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.1609996    0.0940333    0.2279660
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0011164   -0.0105272    0.0127600
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0209997   -0.0719749    0.0299754
24 months   MAL-ED         INDIA                          1                    NA                -0.0144184   -0.0668002    0.0379635
24 months   MAL-ED         NEPAL                          1                    NA                -0.0157687   -0.0813791    0.0498418
24 months   MAL-ED         PERU                           1                    NA                -0.0461727   -0.0833688   -0.0089767
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0205031   -0.0677869    0.0267808
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0076324   -0.0174880    0.0327528
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0208430   -0.0338062   -0.0078799
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0042964   -0.0185873    0.0271802


### Parameter: PAF


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                 0.1427301   -0.2800383    0.4258674
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0255282   -0.3110890    0.2757202
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.0409768   -0.0660948   -0.0164507
Birth       JiVitA-4       BANGLADESH                     1                    NA                 0.0065978   -0.0130964    0.0259091
Birth       MAL-ED         BANGLADESH                     1                    NA                 0.2708816    0.0278880    0.4531354
Birth       MAL-ED         PERU                           1                    NA                 0.1294505   -0.1316004    0.3302792
Birth       NIH-Crypto     BANGLADESH                     1                    NA                 0.0291267   -0.0497840    0.1021059
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.3401558   -0.2505965    0.6518506
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0003216   -0.0006476    0.0012899
6 months    EE             PAKISTAN                       1                    NA                -0.0423481   -0.2695668    0.1442046
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.1422428   -0.1557499    0.3634026
6 months    JiVitA-3       BANGLADESH                     1                    NA                -1.2238227   -1.3153967   -1.1358705
6 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0361715   -0.0054376    0.0760585
6 months    MAL-ED         BANGLADESH                     1                    NA                 0.1525297   -0.0973261    0.3454946
6 months    MAL-ED         INDIA                          1                    NA                 0.0715608   -0.1788979    0.2688091
6 months    MAL-ED         PERU                           1                    NA                -0.0092023   -0.1494754    0.1139529
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0524675   -0.1672023    0.2307950
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0923321   -0.0283931    0.1988851
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0645743   -0.1151415   -0.0163001
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.2239675   -0.0931500    0.4490908
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0256760   -0.0195668    0.0689113
24 months   EE             PAKISTAN                       1                    NA                 0.1650462   -0.1082607    0.3709532
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.3582242    0.1902038    0.4913830
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0027848   -0.0266921    0.0314154
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0443095   -0.1579102    0.0581461
24 months   MAL-ED         INDIA                          1                    NA                -0.0337420   -0.1639208    0.0818769
24 months   MAL-ED         NEPAL                          1                    NA                -0.0719051   -0.4166335    0.1889359
24 months   MAL-ED         PERU                           1                    NA                -0.1254151   -0.2317282   -0.0282781
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0587588   -0.2032682    0.0683954
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0105376   -0.0248074    0.0446637
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0811615   -0.1324602   -0.0321865
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0122780   -0.0553270    0.0755522

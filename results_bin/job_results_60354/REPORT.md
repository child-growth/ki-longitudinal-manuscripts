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

**Intervention Variable:** impfloor

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
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    swasted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 0       67      68
Birth       CMC-V-BCS-2002   INDIA                          1                 1        1      68
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0      68
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0      68
Birth       CONTENT          PERU                           1                 0        2       2
Birth       CONTENT          PERU                           1                 1        0       2
Birth       CONTENT          PERU                           0                 0        0       2
Birth       CONTENT          PERU                           0                 1        0       2
Birth       GMS-Nepal        NEPAL                          1                 0       94     503
Birth       GMS-Nepal        NEPAL                          1                 1        3     503
Birth       GMS-Nepal        NEPAL                          0                 0      389     503
Birth       GMS-Nepal        NEPAL                          0                 1       17     503
Birth       IRC              INDIA                          1                 0      215     253
Birth       IRC              INDIA                          1                 1       38     253
Birth       IRC              INDIA                          0                 0        0     253
Birth       IRC              INDIA                          0                 1        0     253
Birth       JiVitA-3         BANGLADESH                     1                 0     1187   17966
Birth       JiVitA-3         BANGLADESH                     1                 1       28   17966
Birth       JiVitA-3         BANGLADESH                     0                 0    16431   17966
Birth       JiVitA-3         BANGLADESH                     0                 1      320   17966
Birth       JiVitA-4         BANGLADESH                     1                 0      266    2394
Birth       JiVitA-4         BANGLADESH                     1                 1        5    2394
Birth       JiVitA-4         BANGLADESH                     0                 0     2097    2394
Birth       JiVitA-4         BANGLADESH                     0                 1       26    2394
Birth       MAL-ED           BANGLADESH                     1                 0      177     201
Birth       MAL-ED           BANGLADESH                     1                 1        8     201
Birth       MAL-ED           BANGLADESH                     0                 0       16     201
Birth       MAL-ED           BANGLADESH                     0                 1        0     201
Birth       MAL-ED           BRAZIL                         1                 0       55      57
Birth       MAL-ED           BRAZIL                         1                 1        0      57
Birth       MAL-ED           BRAZIL                         0                 0        2      57
Birth       MAL-ED           BRAZIL                         0                 1        0      57
Birth       MAL-ED           INDIA                          1                 0       33      39
Birth       MAL-ED           INDIA                          1                 1        0      39
Birth       MAL-ED           INDIA                          0                 0        6      39
Birth       MAL-ED           INDIA                          0                 1        0      39
Birth       MAL-ED           NEPAL                          1                 0        7      24
Birth       MAL-ED           NEPAL                          1                 1        1      24
Birth       MAL-ED           NEPAL                          0                 0       16      24
Birth       MAL-ED           NEPAL                          0                 1        0      24
Birth       MAL-ED           PERU                           1                 0       37     210
Birth       MAL-ED           PERU                           1                 1        0     210
Birth       MAL-ED           PERU                           0                 0      173     210
Birth       MAL-ED           PERU                           0                 1        0     210
Birth       MAL-ED           SOUTH AFRICA                   1                 0       86      95
Birth       MAL-ED           SOUTH AFRICA                   1                 1        0      95
Birth       MAL-ED           SOUTH AFRICA                   0                 0        9      95
Birth       MAL-ED           SOUTH AFRICA                   0                 1        0      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        5     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      106     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     111
Birth       NIH-Birth        BANGLADESH                     1                 0      470     572
Birth       NIH-Birth        BANGLADESH                     1                 1       35     572
Birth       NIH-Birth        BANGLADESH                     0                 0       64     572
Birth       NIH-Birth        BANGLADESH                     0                 1        3     572
Birth       NIH-Crypto       BANGLADESH                     1                 0      507     707
Birth       NIH-Crypto       BANGLADESH                     1                 1       35     707
Birth       NIH-Crypto       BANGLADESH                     0                 0      153     707
Birth       NIH-Crypto       BANGLADESH                     0                 1       12     707
Birth       PROVIDE          BANGLADESH                     1                 0      473     532
Birth       PROVIDE          BANGLADESH                     1                 1       12     532
Birth       PROVIDE          BANGLADESH                     0                 0       46     532
Birth       PROVIDE          BANGLADESH                     0                 1        1     532
6 months    CMC-V-BCS-2002   INDIA                          1                 0      253     257
6 months    CMC-V-BCS-2002   INDIA                          1                 1        4     257
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0     257
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0     257
6 months    CONTENT          PERU                           1                 0      201     215
6 months    CONTENT          PERU                           1                 1        0     215
6 months    CONTENT          PERU                           0                 0       14     215
6 months    CONTENT          PERU                           0                 1        0     215
6 months    GMS-Nepal        NEPAL                          1                 0       77     441
6 months    GMS-Nepal        NEPAL                          1                 1        1     441
6 months    GMS-Nepal        NEPAL                          0                 0      357     441
6 months    GMS-Nepal        NEPAL                          0                 1        6     441
6 months    IRC              INDIA                          1                 0      289     304
6 months    IRC              INDIA                          1                 1       15     304
6 months    IRC              INDIA                          0                 0        0     304
6 months    IRC              INDIA                          0                 1        0     304
6 months    JiVitA-3         BANGLADESH                     1                 0     1451   16746
6 months    JiVitA-3         BANGLADESH                     1                 1       12   16746
6 months    JiVitA-3         BANGLADESH                     0                 0    15066   16746
6 months    JiVitA-3         BANGLADESH                     0                 1      217   16746
6 months    JiVitA-4         BANGLADESH                     1                 0      589    4826
6 months    JiVitA-4         BANGLADESH                     1                 1        1    4826
6 months    JiVitA-4         BANGLADESH                     0                 0     4204    4826
6 months    JiVitA-4         BANGLADESH                     0                 1       32    4826
6 months    MAL-ED           BANGLADESH                     1                 0      219     240
6 months    MAL-ED           BANGLADESH                     1                 1        2     240
6 months    MAL-ED           BANGLADESH                     0                 0       19     240
6 months    MAL-ED           BANGLADESH                     0                 1        0     240
6 months    MAL-ED           BRAZIL                         1                 0      207     209
6 months    MAL-ED           BRAZIL                         1                 1        0     209
6 months    MAL-ED           BRAZIL                         0                 0        2     209
6 months    MAL-ED           BRAZIL                         0                 1        0     209
6 months    MAL-ED           INDIA                          1                 0      214     235
6 months    MAL-ED           INDIA                          1                 1        6     235
6 months    MAL-ED           INDIA                          0                 0       15     235
6 months    MAL-ED           INDIA                          0                 1        0     235
6 months    MAL-ED           NEPAL                          1                 0      103     229
6 months    MAL-ED           NEPAL                          1                 1        0     229
6 months    MAL-ED           NEPAL                          0                 0      126     229
6 months    MAL-ED           NEPAL                          0                 1        0     229
6 months    MAL-ED           PERU                           1                 0       58     270
6 months    MAL-ED           PERU                           1                 1        0     270
6 months    MAL-ED           PERU                           0                 0      212     270
6 months    MAL-ED           PERU                           0                 1        0     270
6 months    MAL-ED           SOUTH AFRICA                   1                 0      226     249
6 months    MAL-ED           SOUTH AFRICA                   1                 1        3     249
6 months    MAL-ED           SOUTH AFRICA                   0                 0       20     249
6 months    MAL-ED           SOUTH AFRICA                   0                 1        0     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       14     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      231     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     245
6 months    NIH-Birth        BANGLADESH                     1                 0      472     535
6 months    NIH-Birth        BANGLADESH                     1                 1        5     535
6 months    NIH-Birth        BANGLADESH                     0                 0       57     535
6 months    NIH-Birth        BANGLADESH                     0                 1        1     535
6 months    NIH-Crypto       BANGLADESH                     1                 0      537     715
6 months    NIH-Crypto       BANGLADESH                     1                 1        0     715
6 months    NIH-Crypto       BANGLADESH                     0                 0      178     715
6 months    NIH-Crypto       BANGLADESH                     0                 1        0     715
6 months    PROVIDE          BANGLADESH                     1                 0      553     603
6 months    PROVIDE          BANGLADESH                     1                 1        4     603
6 months    PROVIDE          BANGLADESH                     0                 0       45     603
6 months    PROVIDE          BANGLADESH                     0                 1        1     603
24 months   CMC-V-BCS-2002   INDIA                          1                 0      259     260
24 months   CMC-V-BCS-2002   INDIA                          1                 1        1     260
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0     260
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0     260
24 months   CONTENT          PERU                           1                 0      154     164
24 months   CONTENT          PERU                           1                 1        0     164
24 months   CONTENT          PERU                           0                 0       10     164
24 months   CONTENT          PERU                           0                 1        0     164
24 months   GMS-Nepal        NEPAL                          1                 0       70     373
24 months   GMS-Nepal        NEPAL                          1                 1        2     373
24 months   GMS-Nepal        NEPAL                          0                 0      288     373
24 months   GMS-Nepal        NEPAL                          0                 1       13     373
24 months   IRC              INDIA                          1                 0      303     305
24 months   IRC              INDIA                          1                 1        2     305
24 months   IRC              INDIA                          0                 0        0     305
24 months   IRC              INDIA                          0                 1        0     305
24 months   JiVitA-3         BANGLADESH                     1                 0      649    8580
24 months   JiVitA-3         BANGLADESH                     1                 1       23    8580
24 months   JiVitA-3         BANGLADESH                     0                 0     7599    8580
24 months   JiVitA-3         BANGLADESH                     0                 1      309    8580
24 months   JiVitA-4         BANGLADESH                     1                 0      561    4729
24 months   JiVitA-4         BANGLADESH                     1                 1        4    4729
24 months   JiVitA-4         BANGLADESH                     0                 0     4039    4729
24 months   JiVitA-4         BANGLADESH                     0                 1      125    4729
24 months   MAL-ED           BANGLADESH                     1                 0      195     212
24 months   MAL-ED           BANGLADESH                     1                 1        0     212
24 months   MAL-ED           BANGLADESH                     0                 0       17     212
24 months   MAL-ED           BANGLADESH                     0                 1        0     212
24 months   MAL-ED           BRAZIL                         1                 0      166     169
24 months   MAL-ED           BRAZIL                         1                 1        1     169
24 months   MAL-ED           BRAZIL                         0                 0        2     169
24 months   MAL-ED           BRAZIL                         0                 1        0     169
24 months   MAL-ED           INDIA                          1                 0      210     227
24 months   MAL-ED           INDIA                          1                 1        2     227
24 months   MAL-ED           INDIA                          0                 0       15     227
24 months   MAL-ED           INDIA                          0                 1        0     227
24 months   MAL-ED           NEPAL                          1                 0       98     221
24 months   MAL-ED           NEPAL                          1                 1        0     221
24 months   MAL-ED           NEPAL                          0                 0      123     221
24 months   MAL-ED           NEPAL                          0                 1        0     221
24 months   MAL-ED           PERU                           1                 0       49     201
24 months   MAL-ED           PERU                           1                 1        0     201
24 months   MAL-ED           PERU                           0                 0      150     201
24 months   MAL-ED           PERU                           0                 1        2     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0      220     238
24 months   MAL-ED           SOUTH AFRICA                   1                 1        0     238
24 months   MAL-ED           SOUTH AFRICA                   0                 0       18     238
24 months   MAL-ED           SOUTH AFRICA                   0                 1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       12     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      200     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     212
24 months   NIH-Birth        BANGLADESH                     1                 0      368     426
24 months   NIH-Birth        BANGLADESH                     1                 1        8     426
24 months   NIH-Birth        BANGLADESH                     0                 0       48     426
24 months   NIH-Birth        BANGLADESH                     0                 1        2     426
24 months   NIH-Crypto       BANGLADESH                     1                 0      342     514
24 months   NIH-Crypto       BANGLADESH                     1                 1        4     514
24 months   NIH-Crypto       BANGLADESH                     0                 0      168     514
24 months   NIH-Crypto       BANGLADESH                     0                 1        0     514
24 months   PROVIDE          BANGLADESH                     1                 0      526     579
24 months   PROVIDE          BANGLADESH                     1                 1        7     579
24 months   PROVIDE          BANGLADESH                     0                 0       44     579
24 months   PROVIDE          BANGLADESH                     0                 1        2     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/d3c1435d-79dd-46e9-a243-bf7c6cab2d3e/65ba6ee0-e6ee-45d4-a2ac-2e9ccb79c544/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d3c1435d-79dd-46e9-a243-bf7c6cab2d3e/65ba6ee0-e6ee-45d4-a2ac-2e9ccb79c544/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d3c1435d-79dd-46e9-a243-bf7c6cab2d3e/65ba6ee0-e6ee-45d4-a2ac-2e9ccb79c544/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d3c1435d-79dd-46e9-a243-bf7c6cab2d3e/65ba6ee0-e6ee-45d4-a2ac-2e9ccb79c544/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3     BANGLADESH   1                    NA                0.0269258   0.0120609   0.0417907
Birth       JiVitA-3     BANGLADESH   0                    NA                0.0190308   0.0165703   0.0214913
Birth       JiVitA-4     BANGLADESH   1                    NA                0.0184502   0.0043706   0.0325298
Birth       JiVitA-4     BANGLADESH   0                    NA                0.0122468   0.0063846   0.0181090
Birth       NIH-Crypto   BANGLADESH   1                    NA                0.0643622   0.0436481   0.0850762
Birth       NIH-Crypto   BANGLADESH   0                    NA                0.0737271   0.0331322   0.1143221
6 months    JiVitA-3     BANGLADESH   1                    NA                0.0087082   0.0024241   0.0149923
6 months    JiVitA-3     BANGLADESH   0                    NA                0.0141816   0.0120259   0.0163373
24 months   JiVitA-3     BANGLADESH   1                    NA                0.0326059   0.0191769   0.0460349
24 months   JiVitA-3     BANGLADESH   0                    NA                0.0390117   0.0345616   0.0434618


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3     BANGLADESH   NA                   NA                0.0193699   0.0169591   0.0217808
Birth       JiVitA-4     BANGLADESH   NA                   NA                0.0129490   0.0075258   0.0183723
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0136749   0.0116007   0.0157492
24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0386946   0.0343662   0.0430231


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH   0                    1                 0.7067857   0.3981292   1.254733
Birth       JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH   0                    1                 0.6637777   0.2691163   1.637214
Birth       NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   0                    1                 1.1455044   0.6051521   2.168348
6 months    JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH   0                    1                 1.6285362   0.7834230   3.385310
24 months   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH   0                    1                 1.1964604   0.7896806   1.812780


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3     BANGLADESH   1                    NA                -0.0075559   -0.0218729   0.0067612
Birth       JiVitA-4     BANGLADESH   1                    NA                -0.0055011   -0.0190592   0.0080570
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.0021159   -0.0083610   0.0125928
6 months    JiVitA-3     BANGLADESH   1                    NA                 0.0049667   -0.0010085   0.0109419
24 months   JiVitA-3     BANGLADESH   1                    NA                 0.0060887   -0.0065552   0.0187326


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3     BANGLADESH   1                    NA                -0.3900836   -1.3562466   0.1799107
Birth       JiVitA-4     BANGLADESH   1                    NA                -0.4248304   -2.0400920   0.3322105
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.0318287   -0.1391177   0.1771214
6 months    JiVitA-3     BANGLADESH   1                    NA                 0.3631988   -0.2693502   0.6805328
24 months   JiVitA-3     BANGLADESH   1                    NA                 0.1573527   -0.2429206   0.4287209

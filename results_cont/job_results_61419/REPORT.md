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

agecat      studyid          country                        impfloor    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1               68      68  whz              
Birth       CMC-V-BCS-2002   INDIA                          0                0      68  whz              
Birth       CONTENT          PERU                           1                2       2  whz              
Birth       CONTENT          PERU                           0                0       2  whz              
Birth       GMS-Nepal        NEPAL                          1               97     503  whz              
Birth       GMS-Nepal        NEPAL                          0              406     503  whz              
Birth       IRC              INDIA                          1              253     253  whz              
Birth       IRC              INDIA                          0                0     253  whz              
Birth       JiVitA-3         BANGLADESH                     1             1215   17966  whz              
Birth       JiVitA-3         BANGLADESH                     0            16751   17966  whz              
Birth       JiVitA-4         BANGLADESH                     1              271    2394  whz              
Birth       JiVitA-4         BANGLADESH                     0             2123    2394  whz              
Birth       MAL-ED           BANGLADESH                     1              185     201  whz              
Birth       MAL-ED           BANGLADESH                     0               16     201  whz              
Birth       MAL-ED           BRAZIL                         1               55      57  whz              
Birth       MAL-ED           BRAZIL                         0                2      57  whz              
Birth       MAL-ED           INDIA                          1               33      39  whz              
Birth       MAL-ED           INDIA                          0                6      39  whz              
Birth       MAL-ED           NEPAL                          1                8      24  whz              
Birth       MAL-ED           NEPAL                          0               16      24  whz              
Birth       MAL-ED           PERU                           1               37     210  whz              
Birth       MAL-ED           PERU                           0              173     210  whz              
Birth       MAL-ED           SOUTH AFRICA                   1               86      95  whz              
Birth       MAL-ED           SOUTH AFRICA                   0                9      95  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                5     111  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              106     111  whz              
Birth       NIH-Birth        BANGLADESH                     1              505     572  whz              
Birth       NIH-Birth        BANGLADESH                     0               67     572  whz              
Birth       NIH-Crypto       BANGLADESH                     1              542     707  whz              
Birth       NIH-Crypto       BANGLADESH                     0              165     707  whz              
Birth       PROVIDE          BANGLADESH                     1              485     532  whz              
Birth       PROVIDE          BANGLADESH                     0               47     532  whz              
6 months    CMC-V-BCS-2002   INDIA                          1              257     257  whz              
6 months    CMC-V-BCS-2002   INDIA                          0                0     257  whz              
6 months    CONTENT          PERU                           1              201     215  whz              
6 months    CONTENT          PERU                           0               14     215  whz              
6 months    GMS-Nepal        NEPAL                          1               78     441  whz              
6 months    GMS-Nepal        NEPAL                          0              363     441  whz              
6 months    IRC              INDIA                          1              304     304  whz              
6 months    IRC              INDIA                          0                0     304  whz              
6 months    JiVitA-3         BANGLADESH                     1             1463   16746  whz              
6 months    JiVitA-3         BANGLADESH                     0            15283   16746  whz              
6 months    JiVitA-4         BANGLADESH                     1              590    4826  whz              
6 months    JiVitA-4         BANGLADESH                     0             4236    4826  whz              
6 months    MAL-ED           BANGLADESH                     1              221     240  whz              
6 months    MAL-ED           BANGLADESH                     0               19     240  whz              
6 months    MAL-ED           BRAZIL                         1              207     209  whz              
6 months    MAL-ED           BRAZIL                         0                2     209  whz              
6 months    MAL-ED           INDIA                          1              220     235  whz              
6 months    MAL-ED           INDIA                          0               15     235  whz              
6 months    MAL-ED           NEPAL                          1              103     229  whz              
6 months    MAL-ED           NEPAL                          0              126     229  whz              
6 months    MAL-ED           PERU                           1               58     270  whz              
6 months    MAL-ED           PERU                           0              212     270  whz              
6 months    MAL-ED           SOUTH AFRICA                   1              229     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   0               20     249  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14     245  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231     245  whz              
6 months    NIH-Birth        BANGLADESH                     1              477     535  whz              
6 months    NIH-Birth        BANGLADESH                     0               58     535  whz              
6 months    NIH-Crypto       BANGLADESH                     1              537     715  whz              
6 months    NIH-Crypto       BANGLADESH                     0              178     715  whz              
6 months    PROVIDE          BANGLADESH                     1              557     603  whz              
6 months    PROVIDE          BANGLADESH                     0               46     603  whz              
24 months   CMC-V-BCS-2002   INDIA                          1              260     260  whz              
24 months   CMC-V-BCS-2002   INDIA                          0                0     260  whz              
24 months   CONTENT          PERU                           1              154     164  whz              
24 months   CONTENT          PERU                           0               10     164  whz              
24 months   GMS-Nepal        NEPAL                          1               72     373  whz              
24 months   GMS-Nepal        NEPAL                          0              301     373  whz              
24 months   IRC              INDIA                          1              305     305  whz              
24 months   IRC              INDIA                          0                0     305  whz              
24 months   JiVitA-3         BANGLADESH                     1              672    8580  whz              
24 months   JiVitA-3         BANGLADESH                     0             7908    8580  whz              
24 months   JiVitA-4         BANGLADESH                     1              565    4729  whz              
24 months   JiVitA-4         BANGLADESH                     0             4164    4729  whz              
24 months   MAL-ED           BANGLADESH                     1              195     212  whz              
24 months   MAL-ED           BANGLADESH                     0               17     212  whz              
24 months   MAL-ED           BRAZIL                         1              167     169  whz              
24 months   MAL-ED           BRAZIL                         0                2     169  whz              
24 months   MAL-ED           INDIA                          1              212     227  whz              
24 months   MAL-ED           INDIA                          0               15     227  whz              
24 months   MAL-ED           NEPAL                          1               98     221  whz              
24 months   MAL-ED           NEPAL                          0              123     221  whz              
24 months   MAL-ED           PERU                           1               49     201  whz              
24 months   MAL-ED           PERU                           0              152     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   1              220     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   0               18     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     212  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200     212  whz              
24 months   NIH-Birth        BANGLADESH                     1              376     426  whz              
24 months   NIH-Birth        BANGLADESH                     0               50     426  whz              
24 months   NIH-Crypto       BANGLADESH                     1              346     514  whz              
24 months   NIH-Crypto       BANGLADESH                     0              168     514  whz              
24 months   PROVIDE          BANGLADESH                     1              533     579  whz              
24 months   PROVIDE          BANGLADESH                     0               46     579  whz              


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
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
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
![](/tmp/cd22a9b8-ed13-4816-8629-7f54560c39d3/fa58f9cf-7752-43a3-b87c-e29a0d1bd4ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cd22a9b8-ed13-4816-8629-7f54560c39d3/fa58f9cf-7752-43a3-b87c-e29a0d1bd4ba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cd22a9b8-ed13-4816-8629-7f54560c39d3/fa58f9cf-7752-43a3-b87c-e29a0d1bd4ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -1.1772428   -1.4892199   -0.8652658
Birth       GMS-Nepal    NEPAL                          0                    NA                -1.0745849   -1.1884737   -0.9606961
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.6908950   -0.7665955   -0.6151945
Birth       JiVitA-3     BANGLADESH                     0                    NA                -0.7790826   -0.7992152   -0.7589499
Birth       JiVitA-4     BANGLADESH                     1                    NA                -0.8099748   -1.0496959   -0.5702537
Birth       JiVitA-4     BANGLADESH                     0                    NA                -0.6926665   -0.7589266   -0.6264065
Birth       MAL-ED       BANGLADESH                     1                    NA                -0.9959305   -1.1555578   -0.8363031
Birth       MAL-ED       BANGLADESH                     0                    NA                -0.7167584   -0.9730306   -0.4604861
Birth       MAL-ED       INDIA                          1                    NA                -0.8772727   -1.1935310   -0.5610144
Birth       MAL-ED       INDIA                          0                    NA                -1.3116667   -2.0623390   -0.5609943
Birth       MAL-ED       NEPAL                          1                    NA                -0.9125000   -1.6413488   -0.1836512
Birth       MAL-ED       NEPAL                          0                    NA                -0.7568750   -1.1980753   -0.3156747
Birth       MAL-ED       PERU                           1                    NA                -0.1772785   -0.5153779    0.1608210
Birth       MAL-ED       PERU                           0                    NA                -0.0190150   -0.1545925    0.1165624
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959302   -0.4617510    0.0698905
Birth       MAL-ED       SOUTH AFRICA                   0                    NA                 0.0466667   -0.4532880    0.5466213
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8440000    0.2094403    1.4785597
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7655660    0.5608207    0.9703114
Birth       NIH-Birth    BANGLADESH                     1                    NA                -1.3484268   -1.4502362   -1.2466174
Birth       NIH-Birth    BANGLADESH                     0                    NA                -1.3179721   -1.5745244   -1.0614198
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.1784526   -1.2730078   -1.0838975
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -1.3672921   -1.5629570   -1.1716271
Birth       PROVIDE      BANGLADESH                     1                    NA                -1.3030421   -1.3836089   -1.2224753
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.2125100   -1.4556559   -0.9693641
6 months    CONTENT      PERU                           1                    NA                 1.0378048    0.9162955    1.1593142
6 months    CONTENT      PERU                           0                    NA                 1.4542950    1.0353621    1.8732278
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.6874890   -1.0356006   -0.3393774
6 months    GMS-Nepal    NEPAL                          0                    NA                -0.6572044   -0.7706041   -0.5438047
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.5567253   -0.6340193   -0.4794313
6 months    JiVitA-3     BANGLADESH                     0                    NA                -0.5890242   -0.6123333   -0.5657151
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.2319639   -0.3593730   -0.1045548
6 months    JiVitA-4     BANGLADESH                     0                    NA                -0.3969506   -0.4465556   -0.3473456
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.1190365   -0.2530380    0.0149649
6 months    MAL-ED       BANGLADESH                     0                    NA                -0.3096401   -0.8168967    0.1976165
6 months    MAL-ED       INDIA                          1                    NA                -0.7109149   -0.8445881   -0.5772417
6 months    MAL-ED       INDIA                          0                    NA                -0.6441761   -1.1063222   -0.1820299
6 months    MAL-ED       NEPAL                          1                    NA                 0.1125504   -0.0844384    0.3095393
6 months    MAL-ED       NEPAL                          0                    NA                 0.1386048   -0.0462214    0.3234311
6 months    MAL-ED       PERU                           1                    NA                 1.0902480    0.8020744    1.3784217
6 months    MAL-ED       PERU                           0                    NA                 1.0421067    0.9065233    1.1776901
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.5373774    0.3738950    0.7008599
6 months    MAL-ED       SOUTH AFRICA                   0                    NA                 0.0846448   -0.2582799    0.4275696
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1478846   -0.5083517    0.8041210
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5561607    0.4210770    0.6912443
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.4134026   -0.5098138   -0.3169915
6 months    NIH-Birth    BANGLADESH                     0                    NA                -0.6179151   -0.8718766   -0.3639535
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0579310   -0.0339734    0.1498354
6 months    NIH-Crypto   BANGLADESH                     0                    NA                 0.0389675   -0.1498523    0.2277873
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.1835831   -0.2705821   -0.0965841
6 months    PROVIDE      BANGLADESH                     0                    NA                -0.4696558   -0.8981106   -0.0412009
24 months   CONTENT      PERU                           1                    NA                 0.5757317    0.4353553    0.7161082
24 months   CONTENT      PERU                           0                    NA                 0.8253537    0.2793535    1.3713539
24 months   GMS-Nepal    NEPAL                          1                    NA                -1.5284202   -1.8529108   -1.2039295
24 months   GMS-Nepal    NEPAL                          0                    NA                -1.1649268   -1.2983491   -1.0315045
24 months   JiVitA-3     BANGLADESH                     1                    NA                -1.2484854   -1.3477608   -1.1492101
24 months   JiVitA-3     BANGLADESH                     0                    NA                -1.2991572   -1.3241358   -1.2741786
24 months   JiVitA-4     BANGLADESH                     1                    NA                -1.1313671   -1.2382015   -1.0245327
24 months   JiVitA-4     BANGLADESH                     0                    NA                -1.2326043   -1.2724814   -1.1927271
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.8101045   -0.9363650   -0.6838440
24 months   MAL-ED       BANGLADESH                     0                    NA                -0.8316448   -1.3259034   -0.3373863
24 months   MAL-ED       INDIA                          1                    NA                -0.9338250   -1.0542610   -0.8133890
24 months   MAL-ED       INDIA                          0                    NA                -1.2465828   -1.7907136   -0.7024521
24 months   MAL-ED       NEPAL                          1                    NA                -0.2973921   -0.4717218   -0.1230624
24 months   MAL-ED       NEPAL                          0                    NA                -0.3929189   -0.5466774   -0.2391605
24 months   MAL-ED       PERU                           1                    NA                 0.1606353   -0.0995290    0.4207995
24 months   MAL-ED       PERU                           0                    NA                 0.0837727   -0.0570718    0.2246172
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.4056882    0.2765012    0.5348753
24 months   MAL-ED       SOUTH AFRICA                   0                    NA                 0.5387673    0.2298081    0.8477266
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2998291    0.0016143    0.5980440
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0562533   -0.0751600    0.1876666
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.8937943   -0.9986760   -0.7889125
24 months   NIH-Birth    BANGLADESH                     0                    NA                -1.0295447   -1.3105903   -0.7484991
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.6382547   -0.7604897   -0.5160198
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.5417008   -0.7707685   -0.3126332
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.8682998   -0.9541843   -0.7824153
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.2568181   -1.5636857   -0.9499506


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          NA                   NA                -1.0860636   -1.1830454   -0.9890818
Birth       JiVitA-3     BANGLADESH                     NA                   NA                -0.7773511   -0.7963777   -0.7583245
Birth       JiVitA-4     BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED       BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED       INDIA                          NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED       NEPAL                          NA                   NA                -0.8087500   -1.1914221   -0.4260779
Birth       MAL-ED       PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7690991    0.5714748    0.9667234
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -1.3448514   -1.4396716   -1.2500312
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CONTENT      PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal    NEPAL                          NA                   NA                -0.6273772   -0.7253868   -0.5293676
6 months    JiVitA-3     BANGLADESH                     NA                   NA                -0.5926720   -0.6122891   -0.5730549
6 months    JiVitA-4     BANGLADESH                     NA                   NA                -0.3901347   -0.4273932   -0.3528762
6 months    MAL-ED       BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED       INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED       NEPAL                          NA                   NA                 0.1281441   -0.0056126    0.2619008
6 months    MAL-ED       PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5355782    0.4032519    0.6679046
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -0.4447399   -0.5354039   -0.3540758
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   CONTENT      PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal    NEPAL                          NA                   NA                -1.1990840   -1.3039914   -1.0941766
24 months   JiVitA-3     BANGLADESH                     NA                   NA                -1.2970420   -1.3203145   -1.2737694
24 months   JiVitA-4     BANGLADESH                     NA                   NA                -1.2232311   -1.2550891   -1.1913732
24 months   MAL-ED       BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED       INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED       NEPAL                          NA                   NA                -0.3471493   -0.4618867   -0.2324120
24 months   MAL-ED       PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0477437   -0.0779935    0.1734809
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.9106710   -1.0090143   -0.8123277
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL                          0                    1                  0.1026579   -0.2285863    0.4339022
Birth       JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH                     0                    1                 -0.0881876   -0.1665418   -0.0098333
Birth       JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH                     0                    1                  0.1173083   -0.1303127    0.3649292
Birth       MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     0                    1                  0.2791721   -0.0231705    0.5815147
Birth       MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          0                    1                 -0.4343939   -1.2489664    0.3801785
Birth       MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          0                    1                  0.1556250   -0.6963599    1.0076099
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.1582634   -0.2067797    0.5233066
Birth       MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA                   0                    1                  0.2425969   -0.3236321    0.8088259
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0784340   -0.7452073    0.5883394
Birth       NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     0                    1                  0.0304547   -0.2457660    0.3066754
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.1888395   -0.4064738    0.0287949
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                  0.0905322   -0.1645862    0.3456505
6 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           0                    1                  0.4164901   -0.0217038    0.8546840
6 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL                          0                    1                  0.0302846   -0.3364844    0.3970536
6 months    JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH                     0                    1                 -0.0322989   -0.1135086    0.0489108
6 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH                     0                    1                 -0.1649867   -0.3014357   -0.0285376
6 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     0                    1                 -0.1906036   -0.7171524    0.3359453
6 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          0                    1                  0.0667389   -0.4142381    0.5477158
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.0260544   -0.2446727    0.2967815
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.0481414   -0.3669048    0.2706221
6 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   0                    1                 -0.4527326   -0.8362388   -0.0692263
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.4082760   -0.2615788    1.0781309
6 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     0                    1                 -0.2045124   -0.4760747    0.0670499
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0189635   -0.2286587    0.1907316
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -0.2860727   -0.7240027    0.1518574
24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           0                    1                  0.2496219   -0.3143698    0.8136136
24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL                          0                    1                  0.3634934    0.0128003    0.7141864
24 months   JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH                     0                    1                 -0.0506718   -0.1497853    0.0484418
24 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH                     0                    1                 -0.1012371   -0.2145999    0.0121256
24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     0                    1                 -0.0215403   -0.5325356    0.4894551
24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          0                    1                 -0.3127578   -0.8705895    0.2450739
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.0955268   -0.3277351    0.1366814
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.0768626   -0.3731904    0.2194652
24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.1330791   -0.2019373    0.4680955
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2435758   -0.5739125    0.0867608
24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.1357504   -0.4366205    0.1651197
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0965539   -0.1621087    0.3552165
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.3885183   -0.7067357   -0.0703010


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                 0.0911792   -0.2111204    0.3934788
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.0864561   -0.1609880   -0.0119241
Birth       JiVitA-4     BANGLADESH                     1                    NA                 0.1217250   -0.1120781    0.3555281
Birth       MAL-ED       BANGLADESH                     1                    NA                 0.0230946   -0.0029498    0.0491391
Birth       MAL-ED       INDIA                          1                    NA                -0.0668298   -0.2016929    0.0680332
Birth       MAL-ED       NEPAL                          1                    NA                 0.1037500   -0.4650307    0.6725307
Birth       MAL-ED       PERU                           1                    NA                 0.1304690   -0.1731165    0.4340544
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                 0.0229829   -0.0325492    0.0785150
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0749009   -0.7116467    0.5618449
Birth       NIH-Birth    BANGLADESH                     1                    NA                 0.0035754   -0.0286374    0.0357882
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0656987   -0.1165183   -0.0148792
Birth       PROVIDE      BANGLADESH                     1                    NA                 0.0045835   -0.0180882    0.0272551
6 months    CONTENT      PERU                           1                    NA                 0.0266231   -0.0055673    0.0588134
6 months    GMS-Nepal    NEPAL                          1                    NA                 0.0601118   -0.2744940    0.3947176
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.0359467   -0.1130831    0.0411898
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.1581708   -0.2825332   -0.0338084
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.0142968   -0.0551445    0.0265509
6 months    MAL-ED       INDIA                          1                    NA                 0.0006277   -0.0281624    0.0294177
6 months    MAL-ED       NEPAL                          1                    NA                 0.0155937   -0.1362582    0.1674455
6 months    MAL-ED       PERU                           1                    NA                -0.0390382   -0.2900395    0.2119631
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0030576   -0.0334552    0.0395705
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3876936   -0.2470460    1.0224332
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0313372   -0.0615486   -0.0011259
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0281688   -0.0767352    0.0203976
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.0155075   -0.0393726    0.0083575
24 months   CONTENT      PERU                           1                    NA                 0.0145122   -0.0140082    0.0430325
24 months   GMS-Nepal    NEPAL                          1                    NA                 0.3293362    0.0172407    0.6414316
24 months   JiVitA-3     BANGLADESH                     1                    NA                -0.0485565   -0.1437699    0.0466568
24 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0918640   -0.1974777    0.0137497
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.0091879   -0.0480153    0.0296394
24 months   MAL-ED       INDIA                          1                    NA                -0.0178270   -0.0500425    0.0143886
24 months   MAL-ED       NEPAL                          1                    NA                -0.0497572   -0.1800014    0.0804870
24 months   MAL-ED       PERU                           1                    NA                -0.0494371   -0.2742726    0.1753985
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0033419   -0.0199851    0.0266689
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2520854   -0.5577186    0.0535478
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0168767   -0.0524701    0.0187167
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0279046   -0.0477533    0.1035624
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0245672   -0.0492545    0.0001201

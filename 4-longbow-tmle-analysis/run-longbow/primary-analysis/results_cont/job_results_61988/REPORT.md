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
![](/tmp/287fc85b-ca1a-41a6-8651-cdf25a3fd100/a480a64c-3c58-4d6b-bcc6-a718ff18a595/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/287fc85b-ca1a-41a6-8651-cdf25a3fd100/a480a64c-3c58-4d6b-bcc6-a718ff18a595/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/287fc85b-ca1a-41a6-8651-cdf25a3fd100/a480a64c-3c58-4d6b-bcc6-a718ff18a595/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -1.1625774   -1.4623357   -0.8628192
Birth       GMS-Nepal    NEPAL                          0                    NA                -1.0784433   -1.1898254   -0.9670612
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.6831671   -0.7511870   -0.6151473
Birth       JiVitA-3     BANGLADESH                     0                    NA                -0.7797182   -0.7999139   -0.7595225
Birth       JiVitA-4     BANGLADESH                     1                    NA                -0.8215955   -1.0640495   -0.5791416
Birth       JiVitA-4     BANGLADESH                     0                    NA                -0.6935117   -0.7507107   -0.6363128
Birth       MAL-ED       BANGLADESH                     1                    NA                -0.9942321   -1.1538370   -0.8346271
Birth       MAL-ED       BANGLADESH                     0                    NA                -0.7200658   -0.9986107   -0.4415209
Birth       MAL-ED       INDIA                          1                    NA                -0.8772727   -1.1935310   -0.5610144
Birth       MAL-ED       INDIA                          0                    NA                -1.3116667   -2.0623390   -0.5609943
Birth       MAL-ED       NEPAL                          1                    NA                -0.9125000   -1.6413488   -0.1836512
Birth       MAL-ED       NEPAL                          0                    NA                -0.7568750   -1.1980753   -0.3156747
Birth       MAL-ED       PERU                           1                    NA                -0.1170407   -0.4575450    0.2234636
Birth       MAL-ED       PERU                           0                    NA                -0.0255348   -0.1605940    0.1095243
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959302   -0.4617510    0.0698905
Birth       MAL-ED       SOUTH AFRICA                   0                    NA                 0.0466667   -0.4532880    0.5466213
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8440000    0.2094403    1.4785597
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7655660    0.5608207    0.9703114
Birth       NIH-Birth    BANGLADESH                     1                    NA                -1.3479139   -1.4492652   -1.2465627
Birth       NIH-Birth    BANGLADESH                     0                    NA                -1.3114627   -1.5750179   -1.0479076
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.1902992   -1.2865105   -1.0940879
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -1.3933869   -1.5936522   -1.1931215
Birth       PROVIDE      BANGLADESH                     1                    NA                -1.2999286   -1.3805052   -1.2193520
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.2168165   -1.4642341   -0.9693990
6 months    CONTENT      PERU                           1                    NA                 1.0382357    0.9166736    1.1597979
6 months    CONTENT      PERU                           0                    NA                 1.4033141    0.9096438    1.8969843
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.9143597   -1.2217066   -0.6070129
6 months    GMS-Nepal    NEPAL                          0                    NA                -0.6387458   -0.7499425   -0.5275492
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.5680733   -0.6413845   -0.4947621
6 months    JiVitA-3     BANGLADESH                     0                    NA                -0.5902167   -0.6122716   -0.5681619
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.2556729   -0.3860891   -0.1252567
6 months    JiVitA-4     BANGLADESH                     0                    NA                -0.3978394   -0.4552020   -0.3404769
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.1190913   -0.2533201    0.0151376
6 months    MAL-ED       BANGLADESH                     0                    NA                -0.3133134   -0.7834663    0.1568394
6 months    MAL-ED       INDIA                          1                    NA                -0.7112711   -0.8448879   -0.5776544
6 months    MAL-ED       INDIA                          0                    NA                -0.6832983   -1.1846780   -0.1819186
6 months    MAL-ED       NEPAL                          1                    NA                 0.1080652   -0.0925405    0.3086709
6 months    MAL-ED       NEPAL                          0                    NA                 0.1260422   -0.0534659    0.3055502
6 months    MAL-ED       PERU                           1                    NA                 1.1040658    0.8111684    1.3969631
6 months    MAL-ED       PERU                           0                    NA                 1.0368964    0.9012263    1.1725664
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.5427929    0.3792324    0.7063535
6 months    MAL-ED       SOUTH AFRICA                   0                    NA                 0.9092687    0.4817756    1.3367619
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1446322   -0.5351962    0.8244606
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5574496    0.4224292    0.6924700
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.4211362   -0.5175093   -0.3247632
6 months    NIH-Birth    BANGLADESH                     0                    NA                -0.5833798   -0.8654524   -0.3013072
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0605841   -0.0312298    0.1523980
6 months    NIH-Crypto   BANGLADESH                     0                    NA                 0.0034295   -0.1810140    0.1878730
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.1828469   -0.2703947   -0.0952991
6 months    PROVIDE      BANGLADESH                     0                    NA                -0.4281027   -0.8423852   -0.0138201
24 months   CONTENT      PERU                           1                    NA                 0.5777631    0.4375518    0.7179743
24 months   CONTENT      PERU                           0                    NA                 0.9268888    0.4609271    1.3928504
24 months   GMS-Nepal    NEPAL                          1                    NA                -1.5063486   -1.7864976   -1.2261995
24 months   GMS-Nepal    NEPAL                          0                    NA                -1.1595891   -1.2958508   -1.0233273
24 months   JiVitA-3     BANGLADESH                     1                    NA                -1.2419047   -1.3386424   -1.1451670
24 months   JiVitA-3     BANGLADESH                     0                    NA                -1.2997995   -1.3247892   -1.2748097
24 months   JiVitA-4     BANGLADESH                     1                    NA                -1.1242547   -1.2367379   -1.0117715
24 months   JiVitA-4     BANGLADESH                     0                    NA                -1.2320545   -1.2727310   -1.1913781
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.8126310   -0.9389417   -0.6863202
24 months   MAL-ED       BANGLADESH                     0                    NA                -1.3273195   -1.7387056   -0.9159335
24 months   MAL-ED       INDIA                          1                    NA                -0.9374963   -1.0581820   -0.8168106
24 months   MAL-ED       INDIA                          0                    NA                -1.2228883   -1.7366015   -0.7091752
24 months   MAL-ED       NEPAL                          1                    NA                -0.2839346   -0.4571829   -0.1106863
24 months   MAL-ED       NEPAL                          0                    NA                -0.4013712   -0.5534510   -0.2492914
24 months   MAL-ED       PERU                           1                    NA                 0.0482406   -0.2041488    0.3006301
24 months   MAL-ED       PERU                           0                    NA                 0.0735853   -0.0661641    0.2133348
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.4062553    0.2772174    0.5352931
24 months   MAL-ED       SOUTH AFRICA                   0                    NA                 0.3775116    0.0737809    0.6812422
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2042031   -0.1094616    0.5178677
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0570344   -0.0745055    0.1885743
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.8991973   -1.0037473   -0.7946474
24 months   NIH-Birth    BANGLADESH                     0                    NA                -0.9510963   -1.2293381   -0.6728545
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.6151352   -0.7375006   -0.4927699
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.5560730   -0.7770593   -0.3350867
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.8688300   -0.9547208   -0.7829392
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.1702452   -1.4812016   -0.8592888


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
Birth       GMS-Nepal    NEPAL                          0                    1                  0.0841341   -0.2355577    0.4038259
Birth       JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH                     0                    1                 -0.0965510   -0.1671145   -0.0259876
Birth       JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH                     0                    1                  0.1280838   -0.1196124    0.3757800
Birth       MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     0                    1                  0.2741663   -0.0469822    0.5953148
Birth       MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          0                    1                 -0.4343939   -1.2489664    0.3801785
Birth       MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          0                    1                  0.1556250   -0.6963599    1.0076099
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.0915059   -0.2728750    0.4558868
Birth       MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA                   0                    1                  0.2425969   -0.3236321    0.8088259
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0784340   -0.7452073    0.5883394
Birth       NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     0                    1                  0.0364512   -0.2459237    0.3188261
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.2030877   -0.4255638    0.0193884
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                  0.0831121   -0.1763314    0.3425556
6 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           0                    1                  0.3650783   -0.1446985    0.8748551
6 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL                          0                    1                  0.2756139   -0.0516328    0.6028606
6 months    JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH                     0                    1                 -0.0221435   -0.0986598    0.0543729
6 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH                     0                    1                 -0.1421665   -0.2838556   -0.0004775
6 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     0                    1                 -0.1942222   -0.6850064    0.2965620
6 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          0                    1                  0.0279728   -0.4913807    0.5473264
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.0179770   -0.2509668    0.2869208
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.0671694   -0.3901771    0.2558382
6 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.3664758   -0.0924658    0.8254173
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.4128173   -0.2800059    1.1056406
6 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     0                    1                 -0.1622436   -0.4611211    0.1366340
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0571546   -0.2628389    0.1485297
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -0.2452557   -0.6694974    0.1789859
24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           0                    1                  0.3491257   -0.1371016    0.8353529
24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL                          0                    1                  0.3467595    0.0349899    0.6585291
24 months   JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH                     0                    1                 -0.0578948   -0.1548994    0.0391098
24 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH                     0                    1                 -0.1077998   -0.2267422    0.0111426
24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     0                    1                 -0.5146886   -0.9495305   -0.0798466
24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          0                    1                 -0.2853920   -0.8131237    0.2423397
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.1174366   -0.3477891    0.1129159
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                  0.0253447   -0.2641708    0.3148602
24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0287437   -0.3611654    0.3036780
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1471687   -0.4901548    0.1958175
24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0518989   -0.3502464    0.2464485
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0590622   -0.1919183    0.3100427
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.3014152   -0.6240178    0.0211874


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                 0.0765138   -0.2147043    0.3677319
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.0941840   -0.1611058   -0.0272621
Birth       JiVitA-4     BANGLADESH                     1                    NA                 0.1333457   -0.1021040    0.3687954
Birth       MAL-ED       BANGLADESH                     1                    NA                 0.0213962   -0.0042114    0.0470039
Birth       MAL-ED       INDIA                          1                    NA                -0.0668298   -0.2016929    0.0680332
Birth       MAL-ED       NEPAL                          1                    NA                 0.1037500   -0.4650307    0.6725307
Birth       MAL-ED       PERU                           1                    NA                 0.0702312   -0.2346559    0.3751183
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                 0.0229829   -0.0325492    0.0785150
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0749009   -0.7116467    0.5618449
Birth       NIH-Birth    BANGLADESH                     1                    NA                 0.0030626   -0.0289647    0.0350898
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0538522   -0.1055783   -0.0021260
Birth       PROVIDE      BANGLADESH                     1                    NA                 0.0014700   -0.0215187    0.0244586
6 months    CONTENT      PERU                           1                    NA                 0.0261922   -0.0059551    0.0583394
6 months    GMS-Nepal    NEPAL                          1                    NA                 0.2869826   -0.0092716    0.5832367
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.0245987   -0.0974697    0.0482723
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.1344618   -0.2615164   -0.0074072
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.0142421   -0.0552105    0.0267263
6 months    MAL-ED       INDIA                          1                    NA                 0.0009839   -0.0279461    0.0299140
6 months    MAL-ED       NEPAL                          1                    NA                 0.0200789   -0.1362554    0.1764131
6 months    MAL-ED       PERU                           1                    NA                -0.0528559   -0.3083250    0.2026132
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                -0.0023579   -0.0375382    0.0328224
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3909460   -0.2672214    1.0491134
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0236036   -0.0533159    0.0061086
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0308218   -0.0789618    0.0173181
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.0162437   -0.0405925    0.0081050
24 months   CONTENT      PERU                           1                    NA                 0.0124808   -0.0156370    0.0405986
24 months   GMS-Nepal    NEPAL                          1                    NA                 0.3072646    0.0410178    0.5735113
24 months   JiVitA-3     BANGLADESH                     1                    NA                -0.0551373   -0.1480773    0.0378027
24 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0989764   -0.2103123    0.0123595
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.0066615   -0.0458538    0.0325308
24 months   MAL-ED       INDIA                          1                    NA                -0.0141557   -0.0457271    0.0174158
24 months   MAL-ED       NEPAL                          1                    NA                -0.0632147   -0.1923229    0.0658934
24 months   MAL-ED       PERU                           1                    NA                 0.0629575   -0.1582158    0.2841309
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0027748   -0.0223745    0.0279242
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1564594   -0.4752083    0.1622896
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0114736   -0.0473620    0.0244147
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0047850   -0.0721225    0.0816925
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0240371   -0.0491060    0.0010319

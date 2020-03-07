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

agecat      studyid          country                        impfloor    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1               68      68
Birth       CMC-V-BCS-2002   INDIA                          0                0      68
Birth       CONTENT          PERU                           1                2       2
Birth       CONTENT          PERU                           0                0       2
Birth       GMS-Nepal        NEPAL                          1               97     503
Birth       GMS-Nepal        NEPAL                          0              406     503
Birth       IRC              INDIA                          1              253     253
Birth       IRC              INDIA                          0                0     253
Birth       JiVitA-3         BANGLADESH                     1             1215   17966
Birth       JiVitA-3         BANGLADESH                     0            16751   17966
Birth       JiVitA-4         BANGLADESH                     1              271    2394
Birth       JiVitA-4         BANGLADESH                     0             2123    2394
Birth       MAL-ED           BANGLADESH                     1              185     201
Birth       MAL-ED           BANGLADESH                     0               16     201
Birth       MAL-ED           BRAZIL                         1               55      57
Birth       MAL-ED           BRAZIL                         0                2      57
Birth       MAL-ED           INDIA                          1               33      39
Birth       MAL-ED           INDIA                          0                6      39
Birth       MAL-ED           NEPAL                          1                8      24
Birth       MAL-ED           NEPAL                          0               16      24
Birth       MAL-ED           PERU                           1               37     210
Birth       MAL-ED           PERU                           0              173     210
Birth       MAL-ED           SOUTH AFRICA                   1               86      95
Birth       MAL-ED           SOUTH AFRICA                   0                9      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                5     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              106     111
Birth       NIH-Birth        BANGLADESH                     1              505     572
Birth       NIH-Birth        BANGLADESH                     0               67     572
Birth       NIH-Crypto       BANGLADESH                     1              542     707
Birth       NIH-Crypto       BANGLADESH                     0              165     707
Birth       PROVIDE          BANGLADESH                     1              485     532
Birth       PROVIDE          BANGLADESH                     0               47     532
6 months    CMC-V-BCS-2002   INDIA                          1              257     257
6 months    CMC-V-BCS-2002   INDIA                          0                0     257
6 months    CONTENT          PERU                           1              201     215
6 months    CONTENT          PERU                           0               14     215
6 months    GMS-Nepal        NEPAL                          1               78     441
6 months    GMS-Nepal        NEPAL                          0              363     441
6 months    IRC              INDIA                          1              304     304
6 months    IRC              INDIA                          0                0     304
6 months    JiVitA-3         BANGLADESH                     1             1463   16746
6 months    JiVitA-3         BANGLADESH                     0            15283   16746
6 months    JiVitA-4         BANGLADESH                     1              590    4826
6 months    JiVitA-4         BANGLADESH                     0             4236    4826
6 months    MAL-ED           BANGLADESH                     1              221     240
6 months    MAL-ED           BANGLADESH                     0               19     240
6 months    MAL-ED           BRAZIL                         1              207     209
6 months    MAL-ED           BRAZIL                         0                2     209
6 months    MAL-ED           INDIA                          1              220     235
6 months    MAL-ED           INDIA                          0               15     235
6 months    MAL-ED           NEPAL                          1              103     229
6 months    MAL-ED           NEPAL                          0              126     229
6 months    MAL-ED           PERU                           1               58     270
6 months    MAL-ED           PERU                           0              212     270
6 months    MAL-ED           SOUTH AFRICA                   1              229     249
6 months    MAL-ED           SOUTH AFRICA                   0               20     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    NIH-Birth        BANGLADESH                     1              477     535
6 months    NIH-Birth        BANGLADESH                     0               58     535
6 months    NIH-Crypto       BANGLADESH                     1              537     715
6 months    NIH-Crypto       BANGLADESH                     0              178     715
6 months    PROVIDE          BANGLADESH                     1              557     603
6 months    PROVIDE          BANGLADESH                     0               46     603
24 months   CMC-V-BCS-2002   INDIA                          1              260     260
24 months   CMC-V-BCS-2002   INDIA                          0                0     260
24 months   CONTENT          PERU                           1              154     164
24 months   CONTENT          PERU                           0               10     164
24 months   GMS-Nepal        NEPAL                          1               72     373
24 months   GMS-Nepal        NEPAL                          0              301     373
24 months   IRC              INDIA                          1              305     305
24 months   IRC              INDIA                          0                0     305
24 months   JiVitA-3         BANGLADESH                     1              672    8580
24 months   JiVitA-3         BANGLADESH                     0             7908    8580
24 months   JiVitA-4         BANGLADESH                     1              565    4729
24 months   JiVitA-4         BANGLADESH                     0             4164    4729
24 months   MAL-ED           BANGLADESH                     1              195     212
24 months   MAL-ED           BANGLADESH                     0               17     212
24 months   MAL-ED           BRAZIL                         1              167     169
24 months   MAL-ED           BRAZIL                         0                2     169
24 months   MAL-ED           INDIA                          1              212     227
24 months   MAL-ED           INDIA                          0               15     227
24 months   MAL-ED           NEPAL                          1               98     221
24 months   MAL-ED           NEPAL                          0              123     221
24 months   MAL-ED           PERU                           1               49     201
24 months   MAL-ED           PERU                           0              152     201
24 months   MAL-ED           SOUTH AFRICA                   1              220     238
24 months   MAL-ED           SOUTH AFRICA                   0               18     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   NIH-Birth        BANGLADESH                     1              376     426
24 months   NIH-Birth        BANGLADESH                     0               50     426
24 months   NIH-Crypto       BANGLADESH                     1              346     514
24 months   NIH-Crypto       BANGLADESH                     0              168     514
24 months   PROVIDE          BANGLADESH                     1              533     579
24 months   PROVIDE          BANGLADESH                     0               46     579


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
![](/tmp/7a58bae5-0390-4bfa-81a4-5bd5aa72569a/7c2ed4cf-3366-48ef-9a7f-013d9d96e228/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7a58bae5-0390-4bfa-81a4-5bd5aa72569a/7c2ed4cf-3366-48ef-9a7f-013d9d96e228/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7a58bae5-0390-4bfa-81a4-5bd5aa72569a/7c2ed4cf-3366-48ef-9a7f-013d9d96e228/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -1.1937512   -1.5064230   -0.8810794
Birth       GMS-Nepal    NEPAL                          0                    NA                -1.0499457   -1.1596880   -0.9402034
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.6963756   -0.7644753   -0.6282759
Birth       JiVitA-3     BANGLADESH                     0                    NA                -0.7791386   -0.7992941   -0.7589831
Birth       JiVitA-4     BANGLADESH                     1                    NA                -0.8284996   -1.0525642   -0.6044350
Birth       JiVitA-4     BANGLADESH                     0                    NA                -0.6971175   -0.7578277   -0.6364073
Birth       MAL-ED       BANGLADESH                     1                    NA                -0.9963759   -1.1561956   -0.8365561
Birth       MAL-ED       BANGLADESH                     0                    NA                -0.7345521   -1.0020299   -0.4670744
Birth       MAL-ED       INDIA                          1                    NA                -0.8772727   -1.1935310   -0.5610144
Birth       MAL-ED       INDIA                          0                    NA                -1.3116667   -2.0623390   -0.5609943
Birth       MAL-ED       NEPAL                          1                    NA                -0.9125000   -1.6413488   -0.1836512
Birth       MAL-ED       NEPAL                          0                    NA                -0.7568750   -1.1980753   -0.3156747
Birth       MAL-ED       PERU                           1                    NA                -0.1851126   -0.5308770    0.1606519
Birth       MAL-ED       PERU                           0                    NA                -0.0208175   -0.1560196    0.1143846
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959302   -0.4617510    0.0698905
Birth       MAL-ED       SOUTH AFRICA                   0                    NA                 0.0466667   -0.4532880    0.5466213
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8440000    0.2094403    1.4785597
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7655660    0.5608207    0.9703114
Birth       NIH-Birth    BANGLADESH                     1                    NA                -1.3498801   -1.4509715   -1.2487888
Birth       NIH-Birth    BANGLADESH                     0                    NA                -1.2971704   -1.5617667   -1.0325741
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -1.2030238   -1.2980402   -1.1080075
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -1.3765149   -1.5794257   -1.1736040
Birth       PROVIDE      BANGLADESH                     1                    NA                -1.3006285   -1.3812096   -1.2200474
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.2561245   -1.5020145   -1.0102345
6 months    CONTENT      PERU                           1                    NA                 1.0402164    0.9186858    1.1617471
6 months    CONTENT      PERU                           0                    NA                 1.4706557    0.9951116    1.9461997
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.9425895   -1.2631662   -0.6220128
6 months    GMS-Nepal    NEPAL                          0                    NA                -0.6390650   -0.7472677   -0.5308623
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.5664665   -0.6495763   -0.4833566
6 months    JiVitA-3     BANGLADESH                     0                    NA                -0.5907566   -0.6127773   -0.5687359
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.2157175   -0.3443791   -0.0870560
6 months    JiVitA-4     BANGLADESH                     0                    NA                -0.3978421   -0.4508158   -0.3448683
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.1186527   -0.2530384    0.0157329
6 months    MAL-ED       BANGLADESH                     0                    NA                -0.3298278   -0.8399546    0.1802989
6 months    MAL-ED       INDIA                          1                    NA                -0.7120612   -0.8457461   -0.5783762
6 months    MAL-ED       INDIA                          0                    NA                -0.6390186   -1.1366018   -0.1414354
6 months    MAL-ED       NEPAL                          1                    NA                 0.1019441   -0.1037813    0.3076694
6 months    MAL-ED       NEPAL                          0                    NA                 0.1386778   -0.0408872    0.3182427
6 months    MAL-ED       PERU                           1                    NA                 1.0982559    0.7809248    1.4155869
6 months    MAL-ED       PERU                           0                    NA                 1.0363642    0.8984793    1.1742492
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.5435511    0.3800186    0.7070836
6 months    MAL-ED       SOUTH AFRICA                   0                    NA                 0.6062280    0.0967912    1.1156648
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2619805   -0.3474094    0.8713705
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5575954    0.4224887    0.6927022
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.4158330   -0.5124812   -0.3191848
6 months    NIH-Birth    BANGLADESH                     0                    NA                -0.6803016   -0.9375871   -0.4230161
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0657117   -0.0271518    0.1585752
6 months    NIH-Crypto   BANGLADESH                     0                    NA                 0.0494489   -0.1432532    0.2421511
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.1832245   -0.2708421   -0.0956068
6 months    PROVIDE      BANGLADESH                     0                    NA                -0.4305278   -0.8638564    0.0028008
24 months   CONTENT      PERU                           1                    NA                 0.5767951    0.4362198    0.7173704
24 months   CONTENT      PERU                           0                    NA                 0.7469606    0.2628017    1.2311195
24 months   GMS-Nepal    NEPAL                          1                    NA                -1.5353933   -1.8132891   -1.2574974
24 months   GMS-Nepal    NEPAL                          0                    NA                -1.1591260   -1.2931805   -1.0250715
24 months   JiVitA-3     BANGLADESH                     1                    NA                -1.2293286   -1.3259704   -1.1326867
24 months   JiVitA-3     BANGLADESH                     0                    NA                -1.2994288   -1.3245371   -1.2743205
24 months   JiVitA-4     BANGLADESH                     1                    NA                -1.1547105   -1.2709629   -1.0384581
24 months   JiVitA-4     BANGLADESH                     0                    NA                -1.2373390   -1.2754705   -1.1992076
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.8134121   -0.9398808   -0.6869434
24 months   MAL-ED       BANGLADESH                     0                    NA                -1.1197414   -1.5784934   -0.6609894
24 months   MAL-ED       INDIA                          1                    NA                -0.9384280   -1.0580706   -0.8187853
24 months   MAL-ED       INDIA                          0                    NA                -1.1268505   -1.6162574   -0.6374435
24 months   MAL-ED       NEPAL                          1                    NA                -0.2827097   -0.4538353   -0.1115840
24 months   MAL-ED       NEPAL                          0                    NA                -0.3969013   -0.5485493   -0.2452533
24 months   MAL-ED       PERU                           1                    NA                 0.2195116   -0.0346556    0.4736787
24 months   MAL-ED       PERU                           0                    NA                 0.0904244   -0.0497198    0.2305685
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.4052666    0.2762662    0.5342669
24 months   MAL-ED       SOUTH AFRICA                   0                    NA                 0.6125257    0.3373754    0.8876759
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2177888   -0.0657243    0.5013018
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0579074   -0.0736547    0.1894694
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.8914215   -0.9966888   -0.7861541
24 months   NIH-Birth    BANGLADESH                     0                    NA                -1.0131628   -1.2852774   -0.7410482
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.6161943   -0.7401006   -0.4922880
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.5230079   -0.7484628   -0.2975531
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.8712794   -0.9570734   -0.7854854
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.2416459   -1.5673152   -0.9159766


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
Birth       GMS-Nepal    NEPAL                          0                    1                  0.1438055   -0.1870562    0.4746673
Birth       JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH                     0                    1                 -0.0827630   -0.1531822   -0.0123438
Birth       JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH                     0                    1                  0.1313821   -0.0995447    0.3623089
Birth       MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     0                    1                  0.2618238   -0.0506431    0.5742907
Birth       MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          0                    1                 -0.4343939   -1.2489664    0.3801785
Birth       MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          0                    1                  0.1556250   -0.6963599    1.0076099
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.1642950   -0.2077770    0.5363671
Birth       MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA                   0                    1                  0.2425969   -0.3236321    0.8088259
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0784340   -0.7452073    0.5883394
Birth       NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     0                    1                  0.0527097   -0.2298421    0.3352615
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.1734910   -0.3988182    0.0518362
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                  0.0445040   -0.2138047    0.3028128
6 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           0                    1                  0.4304392   -0.0607649    0.9216433
6 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL                          0                    1                  0.3035245   -0.0358283    0.6428772
6 months    JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH                     0                    1                 -0.0242901   -0.1107404    0.0621602
6 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH                     0                    1                 -0.1821245   -0.3204758   -0.0437733
6 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     0                    1                 -0.2111751   -0.7393507    0.3170005
6 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          0                    1                  0.0730425   -0.4426003    0.5886853
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                  0.0367337   -0.2364569    0.3099243
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                 -0.0618916   -0.4116777    0.2878944
6 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0626770   -0.4756576    0.6010115
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2956149   -0.3284723    0.9197021
6 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     0                    1                 -0.2644686   -0.5390179    0.0100807
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0162628   -0.2305102    0.1979846
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -0.2473033   -0.6901021    0.1954955
24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           0                    1                  0.1701655   -0.3339526    0.6742836
24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL                          0                    1                  0.3762672    0.0666011    0.6859333
24 months   JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH                     0                    1                 -0.0701002   -0.1667949    0.0265944
24 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH                     0                    1                 -0.0826285   -0.2048090    0.0395521
24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     0                    1                 -0.3063293   -0.7835142    0.1708555
24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          0                    1                 -0.1884225   -0.6929338    0.3160889
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.1141916   -0.3395133    0.1111301
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.1290872   -0.4189218    0.1607474
24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.2072591   -0.0998149    0.5143331
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1598814   -0.4753741    0.1556113
24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.1217414   -0.4136157    0.1701329
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0931864   -0.1620629    0.3484357
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.3703665   -0.7070851   -0.0336480


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                 0.1076876   -0.1948442    0.4102193
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.0809755   -0.1476529   -0.0142981
Birth       JiVitA-4     BANGLADESH                     1                    NA                 0.1402498   -0.0775635    0.3580632
Birth       MAL-ED       BANGLADESH                     1                    NA                 0.0235401   -0.0028888    0.0499689
Birth       MAL-ED       INDIA                          1                    NA                -0.0668298   -0.2016929    0.0680332
Birth       MAL-ED       NEPAL                          1                    NA                 0.1037500   -0.4650307    0.6725307
Birth       MAL-ED       PERU                           1                    NA                 0.1383030   -0.1729111    0.4495172
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                 0.0229829   -0.0325492    0.0785150
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0749009   -0.7116467    0.5618449
Birth       NIH-Birth    BANGLADESH                     1                    NA                 0.0050287   -0.0265747    0.0366322
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0411275   -0.0916794    0.0094243
Birth       PROVIDE      BANGLADESH                     1                    NA                 0.0021699   -0.0212605    0.0256002
6 months    CONTENT      PERU                           1                    NA                 0.0242115   -0.0074794    0.0559023
6 months    GMS-Nepal    NEPAL                          1                    NA                 0.3152123    0.0027475    0.6276771
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.0262055   -0.1091704    0.0567593
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.1744172   -0.2999734   -0.0488609
6 months    MAL-ED       BANGLADESH                     1                    NA                -0.0146806   -0.0552256    0.0258644
6 months    MAL-ED       INDIA                          1                    NA                 0.0017739   -0.0271877    0.0307355
6 months    MAL-ED       NEPAL                          1                    NA                 0.0262000   -0.1322529    0.1846530
6 months    MAL-ED       PERU                           1                    NA                -0.0470460   -0.3275361    0.2334441
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                -0.0031160   -0.0418626    0.0356307
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2735977   -0.3154019    0.8625973
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0289069   -0.0582349    0.0004212
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0359495   -0.0861566    0.0142576
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.0158662   -0.0399236    0.0081913
24 months   CONTENT      PERU                           1                    NA                 0.0134488   -0.0150895    0.0419870
24 months   GMS-Nepal    NEPAL                          1                    NA                 0.3363093    0.0707865    0.6018320
24 months   JiVitA-3     BANGLADESH                     1                    NA                -0.0677134   -0.1604130    0.0249862
24 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0685206   -0.1836352    0.0465940
24 months   MAL-ED       BANGLADESH                     1                    NA                -0.0058804   -0.0446971    0.0329363
24 months   MAL-ED       INDIA                          1                    NA                -0.0132240   -0.0439184    0.0174704
24 months   MAL-ED       NEPAL                          1                    NA                -0.0644397   -0.1907440    0.0618647
24 months   MAL-ED       PERU                           1                    NA                -0.1083134   -0.3288376    0.1122108
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0037635   -0.0217883    0.0293153
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1700451   -0.4616843    0.1215942
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0192495   -0.0551099    0.0166109
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0058441   -0.0726121    0.0843004
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0215876   -0.0464579    0.0032826

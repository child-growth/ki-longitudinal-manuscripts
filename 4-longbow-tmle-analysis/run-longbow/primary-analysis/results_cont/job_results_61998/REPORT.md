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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid          country                        exclfeed36    n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  -----------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                  3      3  whz              
Birth       CMC-V-BCS-2002   INDIA                          0                  0      3  whz              
Birth       EE               PAKISTAN                       1                  2      6  whz              
Birth       EE               PAKISTAN                       0                  4      6  whz              
Birth       GMS-Nepal        NEPAL                          1                396    491  whz              
Birth       GMS-Nepal        NEPAL                          0                 95    491  whz              
Birth       IRC              INDIA                          1                  0      3  whz              
Birth       IRC              INDIA                          0                  3      3  whz              
Birth       JiVitA-3         BANGLADESH                     1               6736   8619  whz              
Birth       JiVitA-3         BANGLADESH                     0               1883   8619  whz              
Birth       JiVitA-4         BANGLADESH                     1               1711   2128  whz              
Birth       JiVitA-4         BANGLADESH                     0                417   2128  whz              
Birth       Keneba           GAMBIA                         1                343   1192  whz              
Birth       Keneba           GAMBIA                         0                849   1192  whz              
Birth       MAL-ED           BANGLADESH                     1                 31    208  whz              
Birth       MAL-ED           BANGLADESH                     0                177    208  whz              
Birth       MAL-ED           BRAZIL                         1                  4     62  whz              
Birth       MAL-ED           BRAZIL                         0                 58     62  whz              
Birth       MAL-ED           INDIA                          1                  1     40  whz              
Birth       MAL-ED           INDIA                          0                 39     40  whz              
Birth       MAL-ED           NEPAL                          1                  0     25  whz              
Birth       MAL-ED           NEPAL                          0                 25     25  whz              
Birth       MAL-ED           PERU                           1                  5    218  whz              
Birth       MAL-ED           PERU                           0                213    218  whz              
Birth       MAL-ED           SOUTH AFRICA                   1                  1    104  whz              
Birth       MAL-ED           SOUTH AFRICA                   0                103    104  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0    111  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                111    111  whz              
Birth       PROVIDE          BANGLADESH                     1                115    483  whz              
Birth       PROVIDE          BANGLADESH                     0                368    483  whz              
6 months    CMC-V-BCS-2002   INDIA                          1                  9      9  whz              
6 months    CMC-V-BCS-2002   INDIA                          0                  0      9  whz              
6 months    EE               PAKISTAN                       1                  4      9  whz              
6 months    EE               PAKISTAN                       0                  5      9  whz              
6 months    GMS-Nepal        NEPAL                          1                422    527  whz              
6 months    GMS-Nepal        NEPAL                          0                105    527  whz              
6 months    IRC              INDIA                          1                  0      4  whz              
6 months    IRC              INDIA                          0                  4      4  whz              
6 months    JiVitA-3         BANGLADESH                     1               6561   8535  whz              
6 months    JiVitA-3         BANGLADESH                     0               1974   8535  whz              
6 months    JiVitA-4         BANGLADESH                     1               3240   4188  whz              
6 months    JiVitA-4         BANGLADESH                     0                948   4188  whz              
6 months    Keneba           GAMBIA                         1                507   1790  whz              
6 months    Keneba           GAMBIA                         0               1283   1790  whz              
6 months    LCNI-5           MALAWI                         1                 47    272  whz              
6 months    LCNI-5           MALAWI                         0                225    272  whz              
6 months    MAL-ED           BANGLADESH                     1                 30    240  whz              
6 months    MAL-ED           BANGLADESH                     0                210    240  whz              
6 months    MAL-ED           BRAZIL                         1                 12    209  whz              
6 months    MAL-ED           BRAZIL                         0                197    209  whz              
6 months    MAL-ED           INDIA                          1                  9    233  whz              
6 months    MAL-ED           INDIA                          0                224    233  whz              
6 months    MAL-ED           NEPAL                          1                  4    235  whz              
6 months    MAL-ED           NEPAL                          0                231    235  whz              
6 months    MAL-ED           PERU                           1                  6    272  whz              
6 months    MAL-ED           PERU                           0                266    272  whz              
6 months    MAL-ED           SOUTH AFRICA                   1                  1    250  whz              
6 months    MAL-ED           SOUTH AFRICA                   0                249    250  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4    243  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239    243  whz              
6 months    PROVIDE          BANGLADESH                     1                145    603  whz              
6 months    PROVIDE          BANGLADESH                     0                458    603  whz              
6 months    SAS-FoodSuppl    INDIA                          1                  0    168  whz              
6 months    SAS-FoodSuppl    INDIA                          0                168    168  whz              
24 months   CMC-V-BCS-2002   INDIA                          1                  9      9  whz              
24 months   CMC-V-BCS-2002   INDIA                          0                  0      9  whz              
24 months   EE               PAKISTAN                       1                  0      3  whz              
24 months   EE               PAKISTAN                       0                  3      3  whz              
24 months   GMS-Nepal        NEPAL                          1                362    445  whz              
24 months   GMS-Nepal        NEPAL                          0                 83    445  whz              
24 months   IRC              INDIA                          1                  0      4  whz              
24 months   IRC              INDIA                          0                  4      4  whz              
24 months   JiVitA-3         BANGLADESH                     1               3311   4317  whz              
24 months   JiVitA-3         BANGLADESH                     0               1006   4317  whz              
24 months   JiVitA-4         BANGLADESH                     1               3132   4035  whz              
24 months   JiVitA-4         BANGLADESH                     0                903   4035  whz              
24 months   Keneba           GAMBIA                         1                424   1395  whz              
24 months   Keneba           GAMBIA                         0                971   1395  whz              
24 months   LCNI-5           MALAWI                         1                 34    184  whz              
24 months   LCNI-5           MALAWI                         0                150    184  whz              
24 months   MAL-ED           BANGLADESH                     1                 25    212  whz              
24 months   MAL-ED           BANGLADESH                     0                187    212  whz              
24 months   MAL-ED           BRAZIL                         1                 11    169  whz              
24 months   MAL-ED           BRAZIL                         0                158    169  whz              
24 months   MAL-ED           INDIA                          1                  9    224  whz              
24 months   MAL-ED           INDIA                          0                215    224  whz              
24 months   MAL-ED           NEPAL                          1                  4    227  whz              
24 months   MAL-ED           NEPAL                          0                223    227  whz              
24 months   MAL-ED           PERU                           1                  4    201  whz              
24 months   MAL-ED           PERU                           0                197    201  whz              
24 months   MAL-ED           SOUTH AFRICA                   1                  1    235  whz              
24 months   MAL-ED           SOUTH AFRICA                   0                234    235  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    213  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210    213  whz              
24 months   PROVIDE          BANGLADESH                     1                141    577  whz              
24 months   PROVIDE          BANGLADESH                     0                436    577  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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
![](/tmp/6e2cdd81-f8a0-40da-a113-0821d27ed904/3e9eddef-1944-4882-b9cf-102e4c975d5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6e2cdd81-f8a0-40da-a113-0821d27ed904/3e9eddef-1944-4882-b9cf-102e4c975d5e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6e2cdd81-f8a0-40da-a113-0821d27ed904/3e9eddef-1944-4882-b9cf-102e4c975d5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0965164   -1.2043580   -0.9886748
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1120251   -1.2994347   -0.9246155
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.7983115   -0.8253723   -0.7712508
Birth       JiVitA-3    BANGLADESH   0                    NA                -0.7543582   -0.8064268   -0.7022896
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.6894402   -0.7454518   -0.6334286
Birth       JiVitA-4    BANGLADESH   0                    NA                -0.7512362   -0.8899219   -0.6125505
Birth       Keneba      GAMBIA       1                    NA                -1.2535742   -1.3696667   -1.1374817
Birth       Keneba      GAMBIA       0                    NA                -1.2867612   -1.3643024   -1.2092200
Birth       MAL-ED      BANGLADESH   1                    NA                -0.8200871   -1.1760772   -0.4640970
Birth       MAL-ED      BANGLADESH   0                    NA                -0.9714220   -1.1379662   -0.8048777
Birth       MAL-ED      PERU         1                    NA                 0.6820000    0.4886003    0.8753997
Birth       MAL-ED      PERU         0                    NA                -0.0629108   -0.1888962    0.0630746
Birth       PROVIDE     BANGLADESH   1                    NA                -1.3222844   -1.4916858   -1.1528829
Birth       PROVIDE     BANGLADESH   0                    NA                -1.2885706   -1.3770443   -1.2000969
6 months    GMS-Nepal   NEPAL        1                    NA                -0.5684767   -0.6689014   -0.4680520
6 months    GMS-Nepal   NEPAL        0                    NA                -0.7283898   -0.9120458   -0.5447338
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.5996768   -0.6288413   -0.5705123
6 months    JiVitA-3    BANGLADESH   0                    NA                -0.5975647   -0.6460036   -0.5491258
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.3440451   -0.3900885   -0.2980017
6 months    JiVitA-4    BANGLADESH   0                    NA                -0.5594179   -0.6421456   -0.4766903
6 months    Keneba      GAMBIA       1                    NA                 0.0159604   -0.0903690    0.1222898
6 months    Keneba      GAMBIA       0                    NA                -0.2867280   -0.3502114   -0.2232446
6 months    LCNI-5      MALAWI       1                    NA                 0.3505710    0.0175239    0.6836181
6 months    LCNI-5      MALAWI       0                    NA                 0.3983557    0.2712187    0.5254927
6 months    MAL-ED      BANGLADESH   1                    NA                -0.1789276   -0.5163315    0.1584763
6 months    MAL-ED      BANGLADESH   0                    NA                -0.1270516   -0.2676931    0.0135899
6 months    MAL-ED      BRAZIL       1                    NA                 1.3326745    0.6468796    2.0184694
6 months    MAL-ED      BRAZIL       0                    NA                 0.9459492    0.7764911    1.1154072
6 months    MAL-ED      INDIA        1                    NA                -0.4850000   -1.2185777    0.2485777
6 months    MAL-ED      INDIA        0                    NA                -0.7254799   -0.8547181   -0.5962418
6 months    MAL-ED      PERU         1                    NA                 1.2841667    0.5956438    1.9726896
6 months    MAL-ED      PERU         0                    NA                 1.0459085    0.9221243    1.1696927
6 months    PROVIDE     BANGLADESH   1                    NA                -0.0071886   -0.1679695    0.1535924
6 months    PROVIDE     BANGLADESH   0                    NA                -0.2691482   -0.3647816   -0.1735147
24 months   GMS-Nepal   NEPAL        1                    NA                -1.0650334   -1.1635549   -0.9665119
24 months   GMS-Nepal   NEPAL        0                    NA                -1.3564542   -1.6032614   -1.1096470
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.3444942   -1.3831802   -1.3058083
24 months   JiVitA-3    BANGLADESH   0                    NA                -1.3011769   -1.3672468   -1.2351070
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.2305376   -1.2723278   -1.1887473
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.2466905   -1.3287150   -1.1646660
24 months   Keneba      GAMBIA       1                    NA                -0.7188826   -0.8122366   -0.6255287
24 months   Keneba      GAMBIA       0                    NA                -0.8363094   -0.8986098   -0.7740090
24 months   LCNI-5      MALAWI       1                    NA                -0.1144327   -0.4380004    0.2091349
24 months   LCNI-5      MALAWI       0                    NA                -0.0646771   -0.2262549    0.0969007
24 months   MAL-ED      BANGLADESH   1                    NA                -0.8899726   -1.3486936   -0.4312517
24 months   MAL-ED      BANGLADESH   0                    NA                -0.8116596   -0.9446377   -0.6786816
24 months   MAL-ED      BRAZIL       1                    NA                -0.2769494   -1.0878689    0.5339702
24 months   MAL-ED      BRAZIL       0                    NA                 0.4641801    0.2500833    0.6782769
24 months   MAL-ED      INDIA        1                    NA                -1.0300000   -1.4230980   -0.6369020
24 months   MAL-ED      INDIA        0                    NA                -0.9551163   -1.0754326   -0.8348000
24 months   PROVIDE     BANGLADESH   1                    NA                -0.8304970   -0.9910322   -0.6699618
24 months   PROVIDE     BANGLADESH   0                    NA                -0.9302648   -1.0258179   -0.8347117


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       JiVitA-3    BANGLADESH   NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       JiVitA-4    BANGLADESH   NA                   NA                -0.7018985   -0.7560164   -0.6477806
Birth       Keneba      GAMBIA       NA                   NA                -1.2752643   -1.3442810   -1.2062476
Birth       MAL-ED      BANGLADESH   NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       MAL-ED      PERU         NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       PROVIDE     BANGLADESH   NA                   NA                -1.2966874   -1.3774293   -1.2159454
6 months    GMS-Nepal   NEPAL        NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    JiVitA-3    BANGLADESH   NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    JiVitA-4    BANGLADESH   NA                   NA                -0.3960017   -0.4356255   -0.3563778
6 months    Keneba      GAMBIA       NA                   NA                -0.2009461   -0.2562412   -0.1456509
6 months    LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH   NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    MAL-ED      BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA        NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    MAL-ED      PERU         NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    PROVIDE     BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   JiVitA-3    BANGLADESH   NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.2344089   -1.2708428   -1.1979750
24 months   Keneba      GAMBIA       NA                   NA                -0.7973955   -0.8498696   -0.7449213
24 months   LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH   NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED      BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA        NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   PROVIDE     BANGLADESH   NA                   NA                -0.8945581   -0.9774087   -0.8117074


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0155087   -0.2186914    0.1876740
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                  0.0439534   -0.0144542    0.1023609
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0617960   -0.2072919    0.0836999
Birth       Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba      GAMBIA       0                    1                 -0.0331870   -0.1619680    0.0955940
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.1513349   -0.5445769    0.2419071
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.7449108   -0.9757262   -0.5140954
Birth       PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE     BANGLADESH   0                    1                  0.0337137   -0.1516367    0.2190642
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1599131   -0.3671797    0.0473535
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                  0.0021121   -0.0529444    0.0571686
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.2153729   -0.3098740   -0.1208717
6 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba      GAMBIA       0                    1                 -0.3026884   -0.4258907   -0.1794861
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0477847   -0.3093671    0.4049365
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0518760   -0.3145101    0.4182621
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.3867253   -1.0910855    0.3176349
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.2404799   -0.9853549    0.5043950
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.2382581   -0.9378196    0.4613034
6 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE     BANGLADESH   0                    1                 -0.2619596   -0.4492268   -0.0746924
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.2914208   -0.5565241   -0.0263175
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                  0.0433174   -0.0324844    0.1191192
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0161529   -0.1064752    0.0741694
24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba      GAMBIA       0                    1                 -0.1174268   -0.2281682   -0.0066853
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0497556   -0.3127054    0.4122167
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.0783130   -0.4007508    0.5573768
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.7411295   -0.0985833    1.5808422
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.0748837   -0.3362149    0.4859823
24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE     BANGLADESH   0                    1                 -0.0997678   -0.2851319    0.0855963


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0120580   -0.0524683    0.0283524
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0090808   -0.0037139    0.0218755
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0124583   -0.0404370    0.0155204
Birth       Keneba      GAMBIA       1                    NA                -0.0216901   -0.1135716    0.0701915
Birth       MAL-ED      BANGLADESH   1                    NA                -0.1279898   -0.4690214    0.2130418
Birth       MAL-ED      PERU         1                    NA                -0.7278257   -0.9533592   -0.5022921
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0255970   -0.1159330    0.1671270
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0316308   -0.0728819    0.0096203
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0001566   -0.0125367    0.0128499
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0519566   -0.0740092   -0.0299040
6 months    Keneba      GAMBIA       1                    NA                -0.2169065   -0.3058365   -0.1279764
6 months    LCNI-5      MALAWI       1                    NA                 0.0419290   -0.2552108    0.3390688
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0434693   -0.2837781    0.3707167
6 months    MAL-ED      BRAZIL       1                    NA                -0.3605971   -1.0290748    0.3078805
6 months    MAL-ED      INDIA        1                    NA                -0.2311910   -0.9473188    0.4849368
6 months    MAL-ED      PERU         1                    NA                -0.2330025   -0.9150876    0.4490827
6 months    PROVIDE     BANGLADESH   1                    NA                -0.1919021   -0.3343541   -0.0494500
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0585921   -0.1091731   -0.0080110
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0092707   -0.0084026    0.0269441
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0038713   -0.0239714    0.0162287
24 months   Keneba      GAMBIA       1                    NA                -0.0785128   -0.1559733   -0.0010524
24 months   LCNI-5      MALAWI       1                    NA                 0.0373675   -0.2635018    0.3382369
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0706802   -0.3738453    0.5152056
24 months   MAL-ED      BRAZIL       1                    NA                 0.7395726   -0.0551352    1.5342805
24 months   MAL-ED      INDIA        1                    NA                 0.0718750   -0.3227110    0.4664610
24 months   PROVIDE     BANGLADESH   1                    NA                -0.0640611   -0.2046132    0.0764910

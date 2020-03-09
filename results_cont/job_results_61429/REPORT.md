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
![](/tmp/aa935b18-3918-4c9f-a6c5-ce770c9a174a/819be3b4-f2e7-45f7-ba1d-5d9728e028db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aa935b18-3918-4c9f-a6c5-ce770c9a174a/819be3b4-f2e7-45f7-ba1d-5d9728e028db/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/aa935b18-3918-4c9f-a6c5-ce770c9a174a/819be3b4-f2e7-45f7-ba1d-5d9728e028db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0970992   -1.2063489   -0.9878494
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1271168   -1.3277227   -0.9265110
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.7984811   -0.8255344   -0.7714277
Birth       JiVitA-3    BANGLADESH   0                    NA                -0.7558619   -0.8080761   -0.7036478
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.6894941   -0.7454503   -0.6335378
Birth       JiVitA-4    BANGLADESH   0                    NA                -0.7518178   -0.8853678   -0.6182677
Birth       Keneba      GAMBIA       1                    NA                -1.2498501   -1.3660259   -1.1336744
Birth       Keneba      GAMBIA       0                    NA                -1.2858424   -1.3634526   -1.2082321
Birth       MAL-ED      BANGLADESH   1                    NA                -0.7816359   -1.1554075   -0.4078643
Birth       MAL-ED      BANGLADESH   0                    NA                -0.9832603   -1.1473601   -0.8191604
Birth       MAL-ED      PERU         1                    NA                 0.6820000    0.4886003    0.8753997
Birth       MAL-ED      PERU         0                    NA                -0.0629108   -0.1888962    0.0630746
Birth       PROVIDE     BANGLADESH   1                    NA                -1.3421248   -1.5101995   -1.1740501
Birth       PROVIDE     BANGLADESH   0                    NA                -1.2916112   -1.3795883   -1.2036341
6 months    GMS-Nepal   NEPAL        1                    NA                -0.5671387   -0.6678739   -0.4664035
6 months    GMS-Nepal   NEPAL        0                    NA                -0.6918580   -0.8819741   -0.5017419
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.6002756   -0.6294973   -0.5710540
6 months    JiVitA-3    BANGLADESH   0                    NA                -0.5984188   -0.6472632   -0.5495744
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.3444684   -0.3900807   -0.2988561
6 months    JiVitA-4    BANGLADESH   0                    NA                -0.5546325   -0.6365582   -0.4727068
6 months    Keneba      GAMBIA       1                    NA                 0.0208256   -0.0856982    0.1273494
6 months    Keneba      GAMBIA       0                    NA                -0.2871368   -0.3506022   -0.2236714
6 months    LCNI-5      MALAWI       1                    NA                 0.3268155   -0.0057339    0.6593649
6 months    LCNI-5      MALAWI       0                    NA                 0.4067087    0.2796853    0.5337320
6 months    MAL-ED      BANGLADESH   1                    NA                -0.2176356   -0.5781707    0.1428995
6 months    MAL-ED      BANGLADESH   0                    NA                -0.1193874   -0.2621249    0.0233502
6 months    MAL-ED      BRAZIL       1                    NA                 1.6117576    0.9940320    2.2294832
6 months    MAL-ED      BRAZIL       0                    NA                 0.9465644    0.7771876    1.1159412
6 months    MAL-ED      INDIA        1                    NA                -0.4850000   -1.2185777    0.2485777
6 months    MAL-ED      INDIA        0                    NA                -0.7254799   -0.8547181   -0.5962418
6 months    MAL-ED      PERU         1                    NA                 1.2841667    0.5956438    1.9726896
6 months    MAL-ED      PERU         0                    NA                 1.0459085    0.9221243    1.1696927
6 months    PROVIDE     BANGLADESH   1                    NA                 0.0358653   -0.1219498    0.1936805
6 months    PROVIDE     BANGLADESH   0                    NA                -0.2759672   -0.3715610   -0.1803733
24 months   GMS-Nepal   NEPAL        1                    NA                -1.0685890   -1.1673624   -0.9698155
24 months   GMS-Nepal   NEPAL        0                    NA                -1.3536002   -1.6067702   -1.1004303
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.3459698   -1.3846098   -1.3073298
24 months   JiVitA-3    BANGLADESH   0                    NA                -1.2998554   -1.3666924   -1.2330183
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.2290972   -1.2710011   -1.1871932
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.2344359   -1.3141847   -1.1546870
24 months   Keneba      GAMBIA       1                    NA                -0.7143126   -0.8080661   -0.6205591
24 months   Keneba      GAMBIA       0                    NA                -0.8374805   -0.8998079   -0.7751530
24 months   LCNI-5      MALAWI       1                    NA                -0.1346917   -0.4647945    0.1954111
24 months   LCNI-5      MALAWI       0                    NA                -0.0699329   -0.2302889    0.0904231
24 months   MAL-ED      BANGLADESH   1                    NA                -0.8662925   -1.2761151   -0.4564699
24 months   MAL-ED      BANGLADESH   0                    NA                -0.8155991   -0.9489100   -0.6822882
24 months   MAL-ED      BRAZIL       1                    NA                -0.3519834   -1.1485367    0.4445699
24 months   MAL-ED      BRAZIL       0                    NA                 0.4642935    0.2501582    0.6784288
24 months   MAL-ED      INDIA        1                    NA                -1.0300000   -1.4230980   -0.6369020
24 months   MAL-ED      INDIA        0                    NA                -0.9551163   -1.0754326   -0.8348000
24 months   PROVIDE     BANGLADESH   1                    NA                -0.8108809   -0.9716460   -0.6501158
24 months   PROVIDE     BANGLADESH   0                    NA                -0.9272418   -1.0224947   -0.8319889


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
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0300177   -0.2498965    0.1898611
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                  0.0426191   -0.0159234    0.1011617
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0623237   -0.2029263    0.0782789
Birth       Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba      GAMBIA       0                    1                 -0.0359922   -0.1650162    0.0930318
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.2016244   -0.6115317    0.2082829
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.7449108   -0.9757262   -0.5140954
Birth       PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE     BANGLADESH   0                    1                  0.0505136   -0.1326265    0.2336537
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1247193   -0.3405563    0.0911177
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                  0.0018568   -0.0538047    0.0575183
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.2101641   -0.3037317   -0.1165964
6 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba      GAMBIA       0                    1                 -0.3079624   -0.4312398   -0.1846850
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0798931   -0.2760862    0.4358725
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0982483   -0.2913243    0.4878208
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.6651932   -1.3055963   -0.0247901
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.2404799   -0.9853549    0.5043950
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.2382581   -0.9378196    0.4613034
6 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE     BANGLADESH   0                    1                 -0.3118325   -0.4949623   -0.1287027
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.2850113   -0.5569483   -0.0130743
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                  0.0461145   -0.0305409    0.1227699
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0053387   -0.0938889    0.0832114
24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba      GAMBIA       0                    1                 -0.1231679   -0.2344617   -0.0118741
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0647588   -0.3033685    0.4328861
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.0506934   -0.3811124    0.4824991
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.8162769   -0.0114596    1.6440134
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.0748837   -0.3362149    0.4859823
24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE     BANGLADESH   0                    1                 -0.1163609   -0.3010918    0.0683700


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0114752   -0.0537900    0.0308397
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0092503   -0.0035580    0.0220586
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0124044   -0.0403488    0.0155400
Birth       Keneba      GAMBIA       1                    NA                -0.0254141   -0.1173101    0.0664818
Birth       MAL-ED      BANGLADESH   1                    NA                -0.1664410   -0.5249190    0.1920369
Birth       MAL-ED      PERU         1                    NA                -0.7278257   -0.9533592   -0.5022921
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0454374   -0.0945517    0.1854265
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0329688   -0.0757518    0.0098142
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0007554   -0.0121028    0.0136136
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0515333   -0.0733472   -0.0297194
6 months    Keneba      GAMBIA       1                    NA                -0.2217717   -0.3109411   -0.1326023
6 months    LCNI-5      MALAWI       1                    NA                 0.0656845   -0.2298623    0.3612312
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0821773   -0.2677440    0.4320985
6 months    MAL-ED      BRAZIL       1                    NA                -0.6396803   -1.2471787   -0.0321818
6 months    MAL-ED      INDIA        1                    NA                -0.2311910   -0.9473188    0.4849368
6 months    MAL-ED      PERU         1                    NA                -0.2330025   -0.9150876    0.4490827
6 months    PROVIDE     BANGLADESH   1                    NA                -0.2349560   -0.3750010   -0.0949110
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0550365   -0.1058401   -0.0042329
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0107463   -0.0070193    0.0285118
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0053118   -0.0253362    0.0147127
24 months   Keneba      GAMBIA       1                    NA                -0.0830829   -0.1608321   -0.0053336
24 months   LCNI-5      MALAWI       1                    NA                 0.0576265   -0.2500888    0.3653418
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0470000   -0.3489961    0.4429961
24 months   MAL-ED      BRAZIL       1                    NA                 0.8146067    0.0272150    1.6019983
24 months   MAL-ED      INDIA        1                    NA                 0.0718750   -0.3227110    0.4664610
24 months   PROVIDE     BANGLADESH   1                    NA                -0.0836772   -0.2236347    0.0562804

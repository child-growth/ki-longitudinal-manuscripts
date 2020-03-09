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

**Intervention Variable:** exclfeed6

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

agecat      studyid          country                        exclfeed6    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7  whz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7  whz              
Birth       EE               PAKISTAN                       1                24      28  whz              
Birth       EE               PAKISTAN                       0                 4      28  whz              
Birth       GMS-Nepal        NEPAL                          1               390     522  whz              
Birth       GMS-Nepal        NEPAL                          0               132     522  whz              
Birth       IRC              INDIA                          1                 0      12  whz              
Birth       IRC              INDIA                          0                12      12  whz              
Birth       JiVitA-3         BANGLADESH                     1              8381   10744  whz              
Birth       JiVitA-3         BANGLADESH                     0              2363   10744  whz              
Birth       JiVitA-4         BANGLADESH                     1              1799    2224  whz              
Birth       JiVitA-4         BANGLADESH                     0               425    2224  whz              
Birth       Keneba           GAMBIA                         1               450    1327  whz              
Birth       Keneba           GAMBIA                         0               877    1327  whz              
Birth       MAL-ED           BANGLADESH                     1                29     194  whz              
Birth       MAL-ED           BANGLADESH                     0               165     194  whz              
Birth       MAL-ED           BRAZIL                         1                 1      57  whz              
Birth       MAL-ED           BRAZIL                         0                56      57  whz              
Birth       MAL-ED           INDIA                          1                 1      37  whz              
Birth       MAL-ED           INDIA                          0                36      37  whz              
Birth       MAL-ED           NEPAL                          1                 2      23  whz              
Birth       MAL-ED           NEPAL                          0                21      23  whz              
Birth       MAL-ED           PERU                           1                 2     208  whz              
Birth       MAL-ED           PERU                           0               206     208  whz              
Birth       MAL-ED           SOUTH AFRICA                   1                 0      90  whz              
Birth       MAL-ED           SOUTH AFRICA                   0                90      90  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     105  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               105     105  whz              
Birth       PROVIDE          BANGLADESH                     1               155     532  whz              
Birth       PROVIDE          BANGLADESH                     0               377     532  whz              
Birth       SAS-CompFeed     INDIA                          1               310     325  whz              
Birth       SAS-CompFeed     INDIA                          0                15     325  whz              
6 months    CMC-V-BCS-2002   INDIA                          1                19      19  whz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
6 months    EE               PAKISTAN                       1                43      48  whz              
6 months    EE               PAKISTAN                       0                 5      48  whz              
6 months    GMS-Nepal        NEPAL                          1               406     547  whz              
6 months    GMS-Nepal        NEPAL                          0               141     547  whz              
6 months    IRC              INDIA                          1                 0      14  whz              
6 months    IRC              INDIA                          0                14      14  whz              
6 months    JiVitA-3         BANGLADESH                     1              7610    9882  whz              
6 months    JiVitA-3         BANGLADESH                     0              2272    9882  whz              
6 months    JiVitA-4         BANGLADESH                     1              3315    4275  whz              
6 months    JiVitA-4         BANGLADESH                     0               960    4275  whz              
6 months    Keneba           GAMBIA                         1               586    1908  whz              
6 months    Keneba           GAMBIA                         0              1322    1908  whz              
6 months    LCNI-5           MALAWI                         1                47     272  whz              
6 months    LCNI-5           MALAWI                         0               225     272  whz              
6 months    MAL-ED           BANGLADESH                     1                33     231  whz              
6 months    MAL-ED           BANGLADESH                     0               198     231  whz              
6 months    MAL-ED           BRAZIL                         1                12     209  whz              
6 months    MAL-ED           BRAZIL                         0               197     209  whz              
6 months    MAL-ED           INDIA                          1                 2     218  whz              
6 months    MAL-ED           INDIA                          0               216     218  whz              
6 months    MAL-ED           NEPAL                          1                 5     225  whz              
6 months    MAL-ED           NEPAL                          0               220     225  whz              
6 months    MAL-ED           PERU                           1                 5     271  whz              
6 months    MAL-ED           PERU                           0               266     271  whz              
6 months    MAL-ED           SOUTH AFRICA                   1                 0     233  whz              
6 months    MAL-ED           SOUTH AFRICA                   0               233     233  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     232  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               232     232  whz              
6 months    PROVIDE          BANGLADESH                     1               141     603  whz              
6 months    PROVIDE          BANGLADESH                     0               462     603  whz              
6 months    SAS-CompFeed     INDIA                          1               376     395  whz              
6 months    SAS-CompFeed     INDIA                          0                19     395  whz              
6 months    SAS-FoodSuppl    INDIA                          1                 0     168  whz              
6 months    SAS-FoodSuppl    INDIA                          0               168     168  whz              
24 months   CMC-V-BCS-2002   INDIA                          1                19      19  whz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
24 months   EE               PAKISTAN                       1                20      23  whz              
24 months   EE               PAKISTAN                       0                 3      23  whz              
24 months   GMS-Nepal        NEPAL                          1               355     469  whz              
24 months   GMS-Nepal        NEPAL                          0               114     469  whz              
24 months   IRC              INDIA                          1                 0      14  whz              
24 months   IRC              INDIA                          0                14      14  whz              
24 months   JiVitA-3         BANGLADESH                     1              3899    5067  whz              
24 months   JiVitA-3         BANGLADESH                     0              1168    5067  whz              
24 months   JiVitA-4         BANGLADESH                     1              3266    4184  whz              
24 months   JiVitA-4         BANGLADESH                     0               918    4184  whz              
24 months   Keneba           GAMBIA                         1               514    1514  whz              
24 months   Keneba           GAMBIA                         0              1000    1514  whz              
24 months   LCNI-5           MALAWI                         1                34     184  whz              
24 months   LCNI-5           MALAWI                         0               150     184  whz              
24 months   MAL-ED           BANGLADESH                     1                31     205  whz              
24 months   MAL-ED           BANGLADESH                     0               174     205  whz              
24 months   MAL-ED           BRAZIL                         1                11     169  whz              
24 months   MAL-ED           BRAZIL                         0               158     169  whz              
24 months   MAL-ED           INDIA                          1                 2     209  whz              
24 months   MAL-ED           INDIA                          0               207     209  whz              
24 months   MAL-ED           NEPAL                          1                 5     219  whz              
24 months   MAL-ED           NEPAL                          0               214     219  whz              
24 months   MAL-ED           PERU                           1                 3     201  whz              
24 months   MAL-ED           PERU                           0               198     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   1                 0     216  whz              
24 months   MAL-ED           SOUTH AFRICA                   0               216     216  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     202  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202     202  whz              
24 months   PROVIDE          BANGLADESH                     1               137     579  whz              
24 months   PROVIDE          BANGLADESH                     0               442     579  whz              


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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
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
![](/tmp/5f9e19e8-fcda-49ff-a8ac-94e37996d05c/98ca1bde-6c25-48e1-9df8-eb1f383fea38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5f9e19e8-fcda-49ff-a8ac-94e37996d05c/98ca1bde-6c25-48e1-9df8-eb1f383fea38/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5f9e19e8-fcda-49ff-a8ac-94e37996d05c/98ca1bde-6c25-48e1-9df8-eb1f383fea38/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.1038147   -1.2170521   -0.9905772
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1164611   -1.2773470   -0.9555752
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.7865024   -0.8113858   -0.7616190
Birth       JiVitA-3       BANGLADESH   0                    NA                -0.7605501   -0.8044145   -0.7166857
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.6753506   -0.7304845   -0.6202167
Birth       JiVitA-4       BANGLADESH   0                    NA                -0.7523093   -0.8895477   -0.6150710
Birth       Keneba         GAMBIA       1                    NA                -1.2493975   -1.3496505   -1.1491445
Birth       Keneba         GAMBIA       0                    NA                -1.2656202   -1.3419510   -1.1892895
Birth       MAL-ED         BANGLADESH   1                    NA                -0.8336666   -1.1988297   -0.4685034
Birth       MAL-ED         BANGLADESH   0                    NA                -0.9812301   -1.1543977   -0.8080625
Birth       PROVIDE        BANGLADESH   1                    NA                -1.3183525   -1.4711781   -1.1655269
Birth       PROVIDE        BANGLADESH   0                    NA                -1.2914825   -1.3799932   -1.2029719
Birth       SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA        0                    NA                -1.0901282   -1.7027394   -0.4775170
6 months    EE             PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE             PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal      NEPAL        1                    NA                -0.5767848   -0.6791376   -0.4744320
6 months    GMS-Nepal      NEPAL        0                    NA                -0.6879352   -0.8595736   -0.5162967
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.6027244   -0.6298535   -0.5755952
6 months    JiVitA-3       BANGLADESH   0                    NA                -0.5925515   -0.6381415   -0.5469615
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.3465234   -0.3916388   -0.3014080
6 months    JiVitA-4       BANGLADESH   0                    NA                -0.5476155   -0.6255594   -0.4696717
6 months    Keneba         GAMBIA       1                    NA                -0.0064779   -0.1045389    0.0915831
6 months    Keneba         GAMBIA       0                    NA                -0.2824521   -0.3449922   -0.2199121
6 months    LCNI-5         MALAWI       1                    NA                 0.3653316    0.0251327    0.7055305
6 months    LCNI-5         MALAWI       0                    NA                 0.3989373    0.2722945    0.5255800
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0080668   -0.4065359    0.3904023
6 months    MAL-ED         BANGLADESH   0                    NA                -0.1201913   -0.2657140    0.0253315
6 months    MAL-ED         BRAZIL       1                    NA                 1.2144847    0.6301520    1.7988173
6 months    MAL-ED         BRAZIL       0                    NA                 0.9453037    0.7757931    1.1148142
6 months    MAL-ED         NEPAL        1                    NA                -0.2760000   -0.9362767    0.3842767
6 months    MAL-ED         NEPAL        0                    NA                 0.1178939   -0.0200258    0.2558137
6 months    MAL-ED         PERU         1                    NA                 0.9290000    0.5350705    1.3229295
6 months    MAL-ED         PERU         0                    NA                 1.0529010    0.9277571    1.1780449
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0148076   -0.1478617    0.1774770
6 months    PROVIDE        BANGLADESH   0                    NA                -0.2650615   -0.3594065   -0.1707166
6 months    SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL        1                    NA                -1.0938986   -1.1928826   -0.9949146
24 months   GMS-Nepal      NEPAL        0                    NA                -1.2964066   -1.5120245   -1.0807888
24 months   JiVitA-3       BANGLADESH   1                    NA                -1.3198137   -1.3548328   -1.2847946
24 months   JiVitA-3       BANGLADESH   0                    NA                -1.2814204   -1.3432307   -1.2196101
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.2229576   -1.2632482   -1.1826670
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.2356433   -1.3134575   -1.1578290
24 months   Keneba         GAMBIA       1                    NA                -0.7059914   -0.7885532   -0.6234297
24 months   Keneba         GAMBIA       0                    NA                -0.8493060   -0.9108859   -0.7877261
24 months   LCNI-5         MALAWI       1                    NA                -0.1502348   -0.5002113    0.1997416
24 months   LCNI-5         MALAWI       0                    NA                -0.0718792   -0.2327039    0.0889454
24 months   MAL-ED         BANGLADESH   1                    NA                -0.8944685   -1.2183153   -0.5706216
24 months   MAL-ED         BANGLADESH   0                    NA                -0.8020296   -0.9383629   -0.6656963
24 months   MAL-ED         BRAZIL       1                    NA                 0.1138191   -0.6958888    0.9235269
24 months   MAL-ED         BRAZIL       0                    NA                 0.4816385    0.2667960    0.6964810
24 months   MAL-ED         NEPAL        1                    NA                -0.4770000   -1.1267115    0.1727115
24 months   MAL-ED         NEPAL        0                    NA                -0.3648832   -0.4833183   -0.2464480
24 months   PROVIDE        BANGLADESH   1                    NA                -0.7917925   -0.9536323   -0.6299527
24 months   PROVIDE        BANGLADESH   0                    NA                -0.9245656   -1.0188687   -0.8302624


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3       BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4       BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
Birth       Keneba         GAMBIA       NA                   NA                -1.2599925   -1.3251703   -1.1948146
Birth       MAL-ED         BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
6 months    EE             PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal      NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3       BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4       BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
6 months    Keneba         GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    LCNI-5         MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED         BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED         BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED         NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    MAL-ED         PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
6 months    PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3       BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132
24 months   Keneba         GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   LCNI-5         MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED         BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED         BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED         NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0126465   -0.2007728    0.1754799
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                  0.0259523   -0.0228651    0.0747697
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0769587   -0.2215492    0.0676317
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                 -0.0162227   -0.1320565    0.0996112
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.1475635   -0.5572555    0.2621285
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0268700   -0.1443302    0.1980702
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783682    0.0820692
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.1111503   -0.3112737    0.0889730
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                  0.0101729   -0.0415193    0.0618651
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.2010922   -0.2908486   -0.1113357
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.2759742   -0.3915286   -0.1604197
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0336057   -0.3296026    0.3968140
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.1121245   -0.5382769    0.3140280
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.2691810   -0.8759358    0.3375738
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.3938939   -0.2806334    1.0684213
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                  0.1239010   -0.2894287    0.5372307
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.2798692   -0.4665717   -0.0931666
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                 -0.2025080   -0.4395210    0.0345050
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                  0.0383934   -0.0324448    0.1092315
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0126856   -0.0985195    0.0731482
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1433145   -0.2450373   -0.0415918
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0783556   -0.3074448    0.4641559
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.0924389   -0.2652848    0.4501625
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.3678195   -0.4707428    1.2063818
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.1121168   -0.5483011    0.7725348
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                 -0.1327731   -0.3175271    0.0519809


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0026413   -0.0501290    0.0448465
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0057215   -0.0049758    0.0164187
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0151080   -0.0427318    0.0125157
Birth       Keneba         GAMBIA       1                    NA                -0.0105949   -0.0875628    0.0663730
Birth       MAL-ED         BANGLADESH   1                    NA                -0.1419005   -0.4938344    0.2100335
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0198938   -0.1068815    0.1466692
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    EE             PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0241323   -0.0753789    0.0271143
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0025943   -0.0092757    0.0144643
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0503222   -0.0719210   -0.0287234
6 months    Keneba         GAMBIA       1                    NA                -0.1932867   -0.2740830   -0.1124904
6 months    LCNI-5         MALAWI       1                    NA                 0.0271684   -0.2771663    0.3315031
6 months    MAL-ED         BANGLADESH   1                    NA                -0.1132535   -0.4921751    0.2656680
6 months    MAL-ED         BRAZIL       1                    NA                -0.2424073   -0.8144659    0.3296513
6 months    MAL-ED         NEPAL        1                    NA                 0.3851407   -0.2725674    1.0428489
6 months    MAL-ED         PERU         1                    NA                 0.1216150   -0.2813864    0.5246164
6 months    PROVIDE        BANGLADESH   1                    NA                -0.2138983   -0.3573968   -0.0703998
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0484539   -0.1046949    0.0077871
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0094762   -0.0068737    0.0258261
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0035744   -0.0223356    0.0151868
24 months   Keneba         GAMBIA       1                    NA                -0.0972415   -0.1647077   -0.0297754
24 months   LCNI-5         MALAWI       1                    NA                 0.0731696   -0.2496663    0.3960055
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0774928   -0.2283179    0.3833036
24 months   MAL-ED         BRAZIL       1                    NA                 0.3488042   -0.4425489    1.1401573
24 months   MAL-ED         NEPAL        1                    NA                 0.1095571   -0.5343543    0.7534684
24 months   PROVIDE        BANGLADESH   1                    NA                -0.1010745   -0.2423037    0.0401547

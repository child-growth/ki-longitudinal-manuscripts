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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** predfeed36

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

agecat      studyid         country                        predfeed36    n_cell       n
----------  --------------  -----------------------------  -----------  -------  ------
Birth       EE              PAKISTAN                       1                  3       7
Birth       EE              PAKISTAN                       0                  4       7
Birth       GMS-Nepal       NEPAL                          1                422     526
Birth       GMS-Nepal       NEPAL                          0                104     526
Birth       JiVitA-3        BANGLADESH                     1               8334   10681
Birth       JiVitA-3        BANGLADESH                     0               2347   10681
Birth       JiVitA-4        BANGLADESH                     1               1999    2517
Birth       JiVitA-4        BANGLADESH                     0                518    2517
Birth       MAL-ED          BANGLADESH                     1                 72     221
Birth       MAL-ED          BANGLADESH                     0                149     221
Birth       MAL-ED          BRAZIL                         1                  8      65
Birth       MAL-ED          BRAZIL                         0                 57      65
Birth       MAL-ED          INDIA                          1                  4      42
Birth       MAL-ED          INDIA                          0                 38      42
Birth       MAL-ED          NEPAL                          1                  1      26
Birth       MAL-ED          NEPAL                          0                 25      26
Birth       MAL-ED          PERU                           1                 58     223
Birth       MAL-ED          PERU                           0                165     223
Birth       MAL-ED          SOUTH AFRICA                   1                  2     105
Birth       MAL-ED          SOUTH AFRICA                   0                103     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
6 months    EE              PAKISTAN                       1                  4       9
6 months    EE              PAKISTAN                       0                  5       9
6 months    GMS-Nepal       NEPAL                          1                422     527
6 months    GMS-Nepal       NEPAL                          0                105     527
6 months    JiVitA-3        BANGLADESH                     1               6593    8552
6 months    JiVitA-3        BANGLADESH                     0               1959    8552
6 months    JiVitA-4        BANGLADESH                     1               3253    4185
6 months    JiVitA-4        BANGLADESH                     0                932    4185
6 months    LCNI-5          MALAWI                         1                 47     272
6 months    LCNI-5          MALAWI                         0                225     272
6 months    MAL-ED          BANGLADESH                     1                 81     240
6 months    MAL-ED          BANGLADESH                     0                159     240
6 months    MAL-ED          BRAZIL                         1                 25     209
6 months    MAL-ED          BRAZIL                         0                184     209
6 months    MAL-ED          INDIA                          1                 17     233
6 months    MAL-ED          INDIA                          0                216     233
6 months    MAL-ED          NEPAL                          1                  8     235
6 months    MAL-ED          NEPAL                          0                227     235
6 months    MAL-ED          PERU                           1                 72     272
6 months    MAL-ED          PERU                           0                200     272
6 months    MAL-ED          SOUTH AFRICA                   1                  3     250
6 months    MAL-ED          SOUTH AFRICA                   0                247     250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     243
6 months    SAS-FoodSuppl   INDIA                          1                  0     168
6 months    SAS-FoodSuppl   INDIA                          0                168     168
24 months   EE              PAKISTAN                       1                  0       3
24 months   EE              PAKISTAN                       0                  3       3
24 months   GMS-Nepal       NEPAL                          1                363     446
24 months   GMS-Nepal       NEPAL                          0                 83     446
24 months   JiVitA-3        BANGLADESH                     1               3334    4334
24 months   JiVitA-3        BANGLADESH                     0               1000    4334
24 months   JiVitA-4        BANGLADESH                     1               3157    4049
24 months   JiVitA-4        BANGLADESH                     0                892    4049
24 months   LCNI-5          MALAWI                         1                 34     189
24 months   LCNI-5          MALAWI                         0                155     189
24 months   MAL-ED          BANGLADESH                     1                 69     212
24 months   MAL-ED          BANGLADESH                     0                143     212
24 months   MAL-ED          BRAZIL                         1                 20     169
24 months   MAL-ED          BRAZIL                         0                149     169
24 months   MAL-ED          INDIA                          1                 17     224
24 months   MAL-ED          INDIA                          0                207     224
24 months   MAL-ED          NEPAL                          1                  8     227
24 months   MAL-ED          NEPAL                          0                219     227
24 months   MAL-ED          PERU                           1                 53     201
24 months   MAL-ED          PERU                           0                148     201
24 months   MAL-ED          SOUTH AFRICA                   1                  3     235
24 months   MAL-ED          SOUTH AFRICA                   0                232     235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209     213


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
![](/tmp/159203db-cc70-4760-b653-d7b1b8c92055/1420959a-be6b-4838-98d2-cd2a793bd432/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/159203db-cc70-4760-b653-d7b1b8c92055/1420959a-be6b-4838-98d2-cd2a793bd432/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/159203db-cc70-4760-b653-d7b1b8c92055/1420959a-be6b-4838-98d2-cd2a793bd432/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0049585   -1.1009140   -0.9090031
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1008026   -1.2959114   -0.9056938
Birth       JiVitA-3    BANGLADESH                     1                    NA                -1.5734746   -1.6014603   -1.5454888
Birth       JiVitA-3    BANGLADESH                     0                    NA                -1.5863529   -1.6312768   -1.5414291
Birth       JiVitA-4    BANGLADESH                     1                    NA                -1.5035168   -1.5568627   -1.4501709
Birth       JiVitA-4    BANGLADESH                     0                    NA                -1.5919477   -1.7152494   -1.4686459
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.0760713   -1.2876535   -0.8644891
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0810589   -1.2545753   -0.9075425
Birth       MAL-ED      BRAZIL                         1                    NA                -1.0850000   -1.9106873   -0.2593127
Birth       MAL-ED      BRAZIL                         0                    NA                -0.6185965   -0.9082545   -0.3289385
Birth       MAL-ED      PERU                           1                    NA                -0.9521392   -1.1407913   -0.7634870
Birth       MAL-ED      PERU                           0                    NA                -0.8727100   -1.0080027   -0.7374174
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.2910774   -1.3773889   -1.2047660
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.5157809   -1.7003820   -1.3311798
6 months    JiVitA-3    BANGLADESH                     1                    NA                -1.3106355   -1.3426079   -1.2786632
6 months    JiVitA-3    BANGLADESH                     0                    NA                -1.3342704   -1.3890405   -1.2795004
6 months    JiVitA-4    BANGLADESH                     1                    NA                -1.3134652   -1.3546697   -1.2722607
6 months    JiVitA-4    BANGLADESH                     0                    NA                -1.4767259   -1.5716641   -1.3817876
6 months    LCNI-5      MALAWI                         1                    NA                -1.7184854   -2.0140555   -1.4229153
6 months    LCNI-5      MALAWI                         0                    NA                -1.6259047   -1.7573643   -1.4944450
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.1640371   -1.3565184   -0.9715558
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.1924865   -1.3409473   -1.0440257
6 months    MAL-ED      BRAZIL                         1                    NA                 0.1629361   -0.3269512    0.6528234
6 months    MAL-ED      BRAZIL                         0                    NA                 0.0311019   -0.1182565    0.1804602
6 months    MAL-ED      INDIA                          1                    NA                -1.7811209   -2.3909094   -1.1713324
6 months    MAL-ED      INDIA                          0                    NA                -1.2016702   -1.3206699   -1.0826706
6 months    MAL-ED      NEPAL                          1                    NA                -0.3325000   -0.9301243    0.2651243
6 months    MAL-ED      NEPAL                          0                    NA                -0.5702349   -0.6852437   -0.4552262
6 months    MAL-ED      PERU                           1                    NA                -1.3223829   -1.5273340   -1.1174318
6 months    MAL-ED      PERU                           0                    NA                -1.3283419   -1.4568322   -1.1998516
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2240000   -1.8175386   -0.6304614
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3768487   -1.5024066   -1.2512909
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8705883   -1.9644305   -1.7767462
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.9289192   -2.1615318   -1.6963065
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.9982226   -2.0406223   -1.9558229
24 months   JiVitA-3    BANGLADESH                     0                    NA                -2.0394503   -2.1165965   -1.9623041
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.7835763   -1.8262704   -1.7408823
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.8239870   -1.9038499   -1.7441242
24 months   LCNI-5      MALAWI                         1                    NA                -1.8941485   -2.2035537   -1.5847433
24 months   LCNI-5      MALAWI                         0                    NA                -1.9495724   -2.1085396   -1.7906052
24 months   MAL-ED      BANGLADESH                     1                    NA                -2.1095246   -2.3737944   -1.8452549
24 months   MAL-ED      BANGLADESH                     0                    NA                -1.9162805   -2.0531483   -1.7794127
24 months   MAL-ED      BRAZIL                         1                    NA                -0.0209258   -0.5659360    0.5240844
24 months   MAL-ED      BRAZIL                         0                    NA                 0.0125022   -0.1697697    0.1947740
24 months   MAL-ED      INDIA                          1                    NA                -2.2021066   -2.6949210   -1.7092921
24 months   MAL-ED      INDIA                          0                    NA                -1.8646892   -1.9944503   -1.7349281
24 months   MAL-ED      NEPAL                          1                    NA                -1.2725000   -1.9347673   -0.6102327
24 months   MAL-ED      NEPAL                          0                    NA                -1.3095434   -1.4315531   -1.1875337
24 months   MAL-ED      PERU                           1                    NA                -1.7934445   -2.0216869   -1.5652020
24 months   MAL-ED      PERU                           0                    NA                -1.7348297   -1.8755851   -1.5940742


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       JiVitA-3    BANGLADESH                     NA                   NA                -1.5762700   -1.6018685   -1.5506716
Birth       JiVitA-4    BANGLADESH                     NA                   NA                -1.5234724   -1.5733491   -1.4735957
Birth       MAL-ED      BANGLADESH                     NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       MAL-ED      BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED      PERU                           NA                   NA                -0.8913004   -1.0115814   -0.7710195
6 months    GMS-Nepal   NEPAL                          NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    JiVitA-3    BANGLADESH                     NA                   NA                -1.3152982   -1.3444394   -1.2861570
6 months    JiVitA-4    BANGLADESH                     NA                   NA                -1.3514886   -1.3904044   -1.3125729
6 months    LCNI-5      MALAWI                         NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH                     NA                   NA                -1.2072639   -1.3248889   -1.0896388
6 months    MAL-ED      BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA                          NA                   NA                -1.2055794   -1.3250712   -1.0860876
6 months    MAL-ED      NEPAL                          NA                   NA                -0.5621418   -0.6752179   -0.4490658
6 months    MAL-ED      PERU                           NA                   NA                -1.3230913   -1.4314947   -1.2146879
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3737037   -1.4970489   -1.2503585
24 months   GMS-Nepal   NEPAL                          NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   JiVitA-3    BANGLADESH                     NA                   NA                -2.0071989   -2.0453355   -1.9690623
24 months   JiVitA-4    BANGLADESH                     NA                   NA                -1.7922845   -1.8313538   -1.7532153
24 months   LCNI-5      MALAWI                         NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED      BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA                          NA                   NA                -1.8906250   -2.0165920   -1.7646580
24 months   MAL-ED      NEPAL                          NA                   NA                -1.3082379   -1.4282426   -1.1882331
24 months   MAL-ED      PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994


### Parameter: ATE


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.0958441   -0.3059120    0.1142239
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 -0.0128783   -0.0611419    0.0353852
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.0884308   -0.2219333    0.0450716
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.0049876   -0.2788668    0.2688917
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.4664035   -0.4086172    1.3414243
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0794291   -0.1278099    0.2866682
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.2247035   -0.4254960   -0.0239110
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0236349   -0.0830681    0.0357983
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.1632607   -0.2653209   -0.0612004
6 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI                         0                    1                  0.0925808   -0.2313118    0.4164733
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.0284494   -0.2732140    0.2163153
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.1318342   -0.6443513    0.3806829
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                  0.5794507   -0.0420451    1.2009465
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.2377349   -0.8463250    0.3708551
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0059590   -0.2482335    0.2363154
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1528487   -0.7595223    0.4538248
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 -0.0583308   -0.3078736    0.1912120
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 -0.0412277   -0.1268442    0.0443887
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0404107   -0.1261768    0.0453554
24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI                         0                    1                 -0.0554239   -0.4071771    0.2963293
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.1932441   -0.1034851    0.4899734
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.0334280   -0.5466588    0.6135148
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.3374174   -0.1722736    0.8471083
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.0370434   -0.7104558    0.6363691
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.0586148   -0.2050139    0.3222435


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0250034   -0.0668926    0.0168857
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0027954   -0.0133949    0.0078041
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0199556   -0.0485539    0.0086427
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0041549   -0.1902123    0.1819025
Birth       MAL-ED      BRAZIL                         1                    NA                 0.4090000   -0.3592436    1.1772436
Birth       MAL-ED      PERU                           1                    NA                 0.0608387   -0.0943510    0.2160284
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0426860   -0.0833354   -0.0020366
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0046626   -0.0182586    0.0089333
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0380235   -0.0600403   -0.0160066
6 months    LCNI-5      MALAWI                         1                    NA                 0.0788898   -0.1905590    0.3483386
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0432268   -0.2073356    0.1208821
6 months    MAL-ED      BRAZIL                         1                    NA                -0.1153603   -0.5686653    0.3379446
6 months    MAL-ED      INDIA                          1                    NA                 0.5755415   -0.0039295    1.1550125
6 months    MAL-ED      NEPAL                          1                    NA                -0.2296418   -0.8175399    0.3582562
6 months    MAL-ED      PERU                           1                    NA                -0.0007084   -0.1795690    0.1781521
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1497037   -0.7412167    0.4418093
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0124834   -0.0583479    0.0333810
24 months   JiVitA-3    BANGLADESH                     1                    NA                -0.0089763   -0.0287004    0.0107477
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0087082   -0.0270816    0.0096652
24 months   LCNI-5      MALAWI                         1                    NA                -0.0709838   -0.3637382    0.2217707
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.1311284   -0.0707499    0.3330067
24 months   MAL-ED      BRAZIL                         1                    NA                 0.0270402   -0.4926866    0.5467670
24 months   MAL-ED      INDIA                          1                    NA                 0.3114816   -0.1619811    0.7849442
24 months   MAL-ED      NEPAL                          1                    NA                -0.0357379   -0.6854184    0.6139426
24 months   MAL-ED      PERU                           1                    NA                 0.0409735   -0.1538926    0.2358396

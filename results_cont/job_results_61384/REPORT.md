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

agecat      studyid         country                        predfeed36    n_cell       n  outcome_variable 
----------  --------------  -----------------------------  -----------  -------  ------  -----------------
Birth       EE              PAKISTAN                       1                  3       7  haz              
Birth       EE              PAKISTAN                       0                  4       7  haz              
Birth       GMS-Nepal       NEPAL                          1                422     526  haz              
Birth       GMS-Nepal       NEPAL                          0                104     526  haz              
Birth       JiVitA-3        BANGLADESH                     1               8334   10681  haz              
Birth       JiVitA-3        BANGLADESH                     0               2347   10681  haz              
Birth       JiVitA-4        BANGLADESH                     1               1999    2517  haz              
Birth       JiVitA-4        BANGLADESH                     0                518    2517  haz              
Birth       MAL-ED          BANGLADESH                     1                 72     221  haz              
Birth       MAL-ED          BANGLADESH                     0                149     221  haz              
Birth       MAL-ED          BRAZIL                         1                  8      65  haz              
Birth       MAL-ED          BRAZIL                         0                 57      65  haz              
Birth       MAL-ED          INDIA                          1                  4      42  haz              
Birth       MAL-ED          INDIA                          0                 38      42  haz              
Birth       MAL-ED          NEPAL                          1                  1      26  haz              
Birth       MAL-ED          NEPAL                          0                 25      26  haz              
Birth       MAL-ED          PERU                           1                 58     223  haz              
Birth       MAL-ED          PERU                           0                165     223  haz              
Birth       MAL-ED          SOUTH AFRICA                   1                  2     105  haz              
Birth       MAL-ED          SOUTH AFRICA                   0                103     105  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119  haz              
6 months    EE              PAKISTAN                       1                  4       9  haz              
6 months    EE              PAKISTAN                       0                  5       9  haz              
6 months    GMS-Nepal       NEPAL                          1                422     527  haz              
6 months    GMS-Nepal       NEPAL                          0                105     527  haz              
6 months    JiVitA-3        BANGLADESH                     1               6593    8552  haz              
6 months    JiVitA-3        BANGLADESH                     0               1959    8552  haz              
6 months    JiVitA-4        BANGLADESH                     1               3253    4185  haz              
6 months    JiVitA-4        BANGLADESH                     0                932    4185  haz              
6 months    LCNI-5          MALAWI                         1                 47     272  haz              
6 months    LCNI-5          MALAWI                         0                225     272  haz              
6 months    MAL-ED          BANGLADESH                     1                 81     240  haz              
6 months    MAL-ED          BANGLADESH                     0                159     240  haz              
6 months    MAL-ED          BRAZIL                         1                 25     209  haz              
6 months    MAL-ED          BRAZIL                         0                184     209  haz              
6 months    MAL-ED          INDIA                          1                 17     233  haz              
6 months    MAL-ED          INDIA                          0                216     233  haz              
6 months    MAL-ED          NEPAL                          1                  8     235  haz              
6 months    MAL-ED          NEPAL                          0                227     235  haz              
6 months    MAL-ED          PERU                           1                 72     272  haz              
6 months    MAL-ED          PERU                           0                200     272  haz              
6 months    MAL-ED          SOUTH AFRICA                   1                  3     250  haz              
6 months    MAL-ED          SOUTH AFRICA                   0                247     250  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5     243  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     243  haz              
6 months    SAS-FoodSuppl   INDIA                          1                  0     168  haz              
6 months    SAS-FoodSuppl   INDIA                          0                168     168  haz              
24 months   EE              PAKISTAN                       1                  0       3  haz              
24 months   EE              PAKISTAN                       0                  3       3  haz              
24 months   GMS-Nepal       NEPAL                          1                363     446  haz              
24 months   GMS-Nepal       NEPAL                          0                 83     446  haz              
24 months   JiVitA-3        BANGLADESH                     1               3334    4334  haz              
24 months   JiVitA-3        BANGLADESH                     0               1000    4334  haz              
24 months   JiVitA-4        BANGLADESH                     1               3157    4049  haz              
24 months   JiVitA-4        BANGLADESH                     0                892    4049  haz              
24 months   LCNI-5          MALAWI                         1                 34     189  haz              
24 months   LCNI-5          MALAWI                         0                155     189  haz              
24 months   MAL-ED          BANGLADESH                     1                 69     212  haz              
24 months   MAL-ED          BANGLADESH                     0                143     212  haz              
24 months   MAL-ED          BRAZIL                         1                 20     169  haz              
24 months   MAL-ED          BRAZIL                         0                149     169  haz              
24 months   MAL-ED          INDIA                          1                 17     224  haz              
24 months   MAL-ED          INDIA                          0                207     224  haz              
24 months   MAL-ED          NEPAL                          1                  8     227  haz              
24 months   MAL-ED          NEPAL                          0                219     227  haz              
24 months   MAL-ED          PERU                           1                 53     201  haz              
24 months   MAL-ED          PERU                           0                148     201  haz              
24 months   MAL-ED          SOUTH AFRICA                   1                  3     235  haz              
24 months   MAL-ED          SOUTH AFRICA                   0                232     235  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     213  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209     213  haz              


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
![](/tmp/d3713aeb-78aa-4fcd-be15-79d4c1b7f417/608359e2-3e76-40ae-8042-17775d772282/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d3713aeb-78aa-4fcd-be15-79d4c1b7f417/608359e2-3e76-40ae-8042-17775d772282/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d3713aeb-78aa-4fcd-be15-79d4c1b7f417/608359e2-3e76-40ae-8042-17775d772282/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0047212   -1.1008739   -0.9085686
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1258293   -1.3245758   -0.9270829
Birth       JiVitA-3    BANGLADESH                     1                    NA                -1.5734378   -1.6014282   -1.5454475
Birth       JiVitA-3    BANGLADESH                     0                    NA                -1.5870528   -1.6319336   -1.5421720
Birth       JiVitA-4    BANGLADESH                     1                    NA                -1.5056073   -1.5589737   -1.4522409
Birth       JiVitA-4    BANGLADESH                     0                    NA                -1.5844473   -1.7051696   -1.4637251
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.0708912   -1.2880379   -0.8537445
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0832132   -1.2570076   -0.9094187
Birth       MAL-ED      BRAZIL                         1                    NA                -1.0850000   -1.9106873   -0.2593127
Birth       MAL-ED      BRAZIL                         0                    NA                -0.6185965   -0.9082545   -0.3289385
Birth       MAL-ED      PERU                           1                    NA                -0.9446498   -1.1303113   -0.7589882
Birth       MAL-ED      PERU                           0                    NA                -0.8683006   -1.0030820   -0.7335192
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.2884525   -1.3753940   -1.2015111
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.5456738   -1.7360005   -1.3553470
6 months    JiVitA-3    BANGLADESH                     1                    NA                -1.3104784   -1.3423900   -1.2785669
6 months    JiVitA-3    BANGLADESH                     0                    NA                -1.3321399   -1.3865072   -1.2777726
6 months    JiVitA-4    BANGLADESH                     1                    NA                -1.3129452   -1.3541684   -1.2717219
6 months    JiVitA-4    BANGLADESH                     0                    NA                -1.4743447   -1.5678849   -1.3808044
6 months    LCNI-5      MALAWI                         1                    NA                -1.6994983   -2.0054651   -1.3935315
6 months    LCNI-5      MALAWI                         0                    NA                -1.6246265   -1.7552267   -1.4940264
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.1980948   -1.3972374   -0.9989522
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.1998240   -1.3486951   -1.0509529
6 months    MAL-ED      BRAZIL                         1                    NA                 0.1538818   -0.3544817    0.6622454
6 months    MAL-ED      BRAZIL                         0                    NA                 0.0330636   -0.1174866    0.1836138
6 months    MAL-ED      INDIA                          1                    NA                -1.0954217   -1.6858829   -0.5049605
6 months    MAL-ED      INDIA                          0                    NA                -1.2094985   -1.3292744   -1.0897225
6 months    MAL-ED      NEPAL                          1                    NA                -0.3325000   -0.9301243    0.2651243
6 months    MAL-ED      NEPAL                          0                    NA                -0.5702349   -0.6852437   -0.4552262
6 months    MAL-ED      PERU                           1                    NA                -1.3046556   -1.5121986   -1.0971125
6 months    MAL-ED      PERU                           0                    NA                -1.3300272   -1.4575266   -1.2025279
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2240000   -1.8175386   -0.6304614
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3768487   -1.5024066   -1.2512909
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8705937   -1.9644103   -1.7767772
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.9309246   -2.1648482   -1.6970010
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.9980853   -2.0404798   -1.9556909
24 months   JiVitA-3    BANGLADESH                     0                    NA                -2.0359543   -2.1132790   -1.9586297
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.7824929   -1.8253713   -1.7396145
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.8235573   -1.9021384   -1.7449762
24 months   LCNI-5      MALAWI                         1                    NA                -1.9794573   -2.2786148   -1.6802998
24 months   LCNI-5      MALAWI                         0                    NA                -1.9488834   -2.1077738   -1.7899929
24 months   MAL-ED      BANGLADESH                     1                    NA                -2.1309783   -2.3925302   -1.8694265
24 months   MAL-ED      BANGLADESH                     0                    NA                -1.9197753   -2.0578472   -1.7817035
24 months   MAL-ED      BRAZIL                         1                    NA                 0.0412869   -0.5189604    0.6015341
24 months   MAL-ED      BRAZIL                         0                    NA                 0.0069654   -0.1750578    0.1889886
24 months   MAL-ED      INDIA                          1                    NA                -2.2649237   -2.7908647   -1.7389826
24 months   MAL-ED      INDIA                          0                    NA                -1.8631789   -1.9929052   -1.7334525
24 months   MAL-ED      NEPAL                          1                    NA                -1.2725000   -1.9347673   -0.6102327
24 months   MAL-ED      NEPAL                          0                    NA                -1.3095434   -1.4315531   -1.1875337
24 months   MAL-ED      PERU                           1                    NA                -1.8339432   -2.0712249   -1.5966614
24 months   MAL-ED      PERU                           0                    NA                -1.7443255   -1.8861955   -1.6024555


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
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.1211081   -0.3348738    0.0926576
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 -0.0136150   -0.0618276    0.0345977
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.0788400   -0.2099117    0.0522317
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.0123220   -0.2908547    0.2662108
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.4664035   -0.4086172    1.3414243
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0763491   -0.1285063    0.2812046
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.2572212   -0.4666166   -0.0478258
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0216615   -0.0805727    0.0372497
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.1613995   -0.2621808   -0.0606182
6 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI                         0                    1                  0.0748718   -0.2583179    0.4080614
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.0017292   -0.2507167    0.2472583
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.1208182   -0.6512633    0.4096269
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.1140767   -0.7160728    0.4879194
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.2377349   -0.8463250    0.3708551
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0253717   -0.2687210    0.2179777
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1528487   -0.7595223    0.4538248
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 -0.0603309   -0.3114950    0.1908333
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 -0.0378690   -0.1236868    0.0479487
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0410644   -0.1257959    0.0436671
24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI                         0                    1                  0.0305740   -0.3087858    0.3699338
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.2112030   -0.0858465    0.5082525
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                 -0.0343215   -0.6264067    0.5577637
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.4017448   -0.1396078    0.9430974
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.0370434   -0.7104558    0.6363691
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.0896177   -0.1861862    0.3654215


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0252407   -0.0675395    0.0170580
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0028322   -0.0134284    0.0077641
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0178651   -0.0464773    0.0107472
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0093350   -0.2006119    0.1819418
Birth       MAL-ED      BRAZIL                         1                    NA                 0.4090000   -0.3592436    1.1772436
Birth       MAL-ED      PERU                           1                    NA                 0.0533493   -0.1008851    0.2075838
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0453109   -0.0880870   -0.0025348
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0048197   -0.0182957    0.0086562
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0385435   -0.0606140   -0.0164730
6 months    LCNI-5      MALAWI                         1                    NA                 0.0599027   -0.2190912    0.3388967
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0091691   -0.1758296    0.1574915
6 months    MAL-ED      BRAZIL                         1                    NA                -0.1063061   -0.5786704    0.3660582
6 months    MAL-ED      INDIA                          1                    NA                -0.1101577   -0.6678927    0.4475773
6 months    MAL-ED      NEPAL                          1                    NA                -0.2296418   -0.8175399    0.3582562
6 months    MAL-ED      PERU                           1                    NA                -0.0184357   -0.1990790    0.1622076
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1497037   -0.7412167    0.4418093
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0124780   -0.0586434    0.0336874
24 months   JiVitA-3    BANGLADESH                     1                    NA                -0.0091136   -0.0289116    0.0106844
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0097916   -0.0282331    0.0086499
24 months   LCNI-5      MALAWI                         1                    NA                 0.0143251   -0.2651049    0.2937550
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.1525821   -0.0490785    0.3542427
24 months   MAL-ED      BRAZIL                         1                    NA                -0.0351725   -0.5674750    0.4971301
24 months   MAL-ED      INDIA                          1                    NA                 0.3742987   -0.1302378    0.8788352
24 months   MAL-ED      NEPAL                          1                    NA                -0.0357379   -0.6854184    0.6139426
24 months   MAL-ED      PERU                           1                    NA                 0.0814722   -0.1233226    0.2862670

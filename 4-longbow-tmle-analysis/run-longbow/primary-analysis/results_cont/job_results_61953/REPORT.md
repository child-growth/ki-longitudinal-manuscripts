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
![](/tmp/0d99268f-69b9-4aef-800b-6ad0557f1e34/0d55d737-34fc-43da-b940-38788e305d27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0d99268f-69b9-4aef-800b-6ad0557f1e34/0d55d737-34fc-43da-b940-38788e305d27/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0d99268f-69b9-4aef-800b-6ad0557f1e34/0d55d737-34fc-43da-b940-38788e305d27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.0070791   -1.1029868   -0.9111714
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.1441905   -1.3372295   -0.9511516
Birth       JiVitA-3    BANGLADESH                     1                    NA                -1.5733919   -1.6013792   -1.5454047
Birth       JiVitA-3    BANGLADESH                     0                    NA                -1.5872629   -1.6321609   -1.5423649
Birth       JiVitA-4    BANGLADESH                     1                    NA                -1.5041911   -1.5574919   -1.4508903
Birth       JiVitA-4    BANGLADESH                     0                    NA                -1.5953808   -1.7192030   -1.4715587
Birth       MAL-ED      BANGLADESH                     1                    NA                -1.0758668   -1.2910626   -0.8606711
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0793568   -1.2516195   -0.9070941
Birth       MAL-ED      BRAZIL                         1                    NA                -1.0850000   -1.9106873   -0.2593127
Birth       MAL-ED      BRAZIL                         0                    NA                -0.6185965   -0.9082545   -0.3289385
Birth       MAL-ED      PERU                           1                    NA                -0.9601495   -1.1474298   -0.7728693
Birth       MAL-ED      PERU                           0                    NA                -0.8696128   -1.0046703   -0.7345552
6 months    GMS-Nepal   NEPAL                          1                    NA                -1.2876522   -1.3748203   -1.2004841
6 months    GMS-Nepal   NEPAL                          0                    NA                -1.5266754   -1.7206172   -1.3327337
6 months    JiVitA-3    BANGLADESH                     1                    NA                -1.3105045   -1.3424564   -1.2785526
6 months    JiVitA-3    BANGLADESH                     0                    NA                -1.3324356   -1.3871338   -1.2777375
6 months    JiVitA-4    BANGLADESH                     1                    NA                -1.3129019   -1.3539742   -1.2718297
6 months    JiVitA-4    BANGLADESH                     0                    NA                -1.4792492   -1.5725719   -1.3859265
6 months    LCNI-5      MALAWI                         1                    NA                -1.7143181   -2.0250107   -1.4036255
6 months    LCNI-5      MALAWI                         0                    NA                -1.6240864   -1.7544439   -1.4937289
6 months    MAL-ED      BANGLADESH                     1                    NA                -1.2193614   -1.4133182   -1.0254045
6 months    MAL-ED      BANGLADESH                     0                    NA                -1.2019068   -1.3509215   -1.0528922
6 months    MAL-ED      BRAZIL                         1                    NA                 0.0921670   -0.4562549    0.6405888
6 months    MAL-ED      BRAZIL                         0                    NA                 0.0370188   -0.1129813    0.1870189
6 months    MAL-ED      INDIA                          1                    NA                -1.1387439   -1.7213362   -0.5561516
6 months    MAL-ED      INDIA                          0                    NA                -1.2101954   -1.3315285   -1.0888622
6 months    MAL-ED      NEPAL                          1                    NA                -0.3325000   -0.9301243    0.2651243
6 months    MAL-ED      NEPAL                          0                    NA                -0.5702349   -0.6852437   -0.4552262
6 months    MAL-ED      PERU                           1                    NA                -1.3023654   -1.5062681   -1.0984626
6 months    MAL-ED      PERU                           0                    NA                -1.3244817   -1.4527919   -1.1961715
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2240000   -1.8175386   -0.6304614
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3768487   -1.5024066   -1.2512909
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.8728272   -1.9665142   -1.7791403
24 months   GMS-Nepal   NEPAL                          0                    NA                -2.0004436   -2.2321785   -1.7687087
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.9979847   -2.0404385   -1.9555310
24 months   JiVitA-3    BANGLADESH                     0                    NA                -2.0341168   -2.1119718   -1.9562618
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.7814589   -1.8243689   -1.7385488
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.8255838   -1.9038299   -1.7473378
24 months   LCNI-5      MALAWI                         1                    NA                -2.0712818   -2.3787084   -1.7638552
24 months   LCNI-5      MALAWI                         0                    NA                -1.9530392   -2.1111204   -1.7949580
24 months   MAL-ED      BANGLADESH                     1                    NA                -2.1326320   -2.3945418   -1.8707222
24 months   MAL-ED      BANGLADESH                     0                    NA                -1.9179752   -2.0547599   -1.7811905
24 months   MAL-ED      BRAZIL                         1                    NA                 0.0336172   -0.5206426    0.5878770
24 months   MAL-ED      BRAZIL                         0                    NA                 0.0100329   -0.1714237    0.1914894
24 months   MAL-ED      INDIA                          1                    NA                -2.2075803   -2.7564478   -1.6587129
24 months   MAL-ED      INDIA                          0                    NA                -1.8639369   -1.9937990   -1.7340748
24 months   MAL-ED      NEPAL                          1                    NA                -1.2725000   -1.9347673   -0.6102327
24 months   MAL-ED      NEPAL                          0                    NA                -1.3095434   -1.4315531   -1.1875337
24 months   MAL-ED      PERU                           1                    NA                -1.7751749   -2.0013148   -1.5490350
24 months   MAL-ED      PERU                           0                    NA                -1.7271744   -1.8668572   -1.5874916


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
Birth       GMS-Nepal   NEPAL                          0                    1                 -0.1371114   -0.3450639    0.0708410
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 -0.0138710   -0.0620657    0.0343237
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.0911897   -0.2251574    0.0427779
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.0034900   -0.2795828    0.2726029
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                  0.4664035   -0.4086172    1.3414243
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                  0.0905368   -0.1162971    0.2973707
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 -0.2390232   -0.4517956   -0.0262509
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 -0.0219311   -0.0812794    0.0374171
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.1663472   -0.2669283   -0.0657661
6 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI                         0                    1                  0.0902317   -0.2454002    0.4258636
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                  0.0174545   -0.2276122    0.2625213
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.0551481   -0.6243975    0.5141012
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.0714515   -0.6668727    0.5239698
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.2377349   -0.8463250    0.3708551
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                 -0.0221163   -0.2633686    0.2191360
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1528487   -0.7595223    0.4538248
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 -0.1276163   -0.3763101    0.1210774
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 -0.0361321   -0.1225230    0.0502588
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0441250   -0.1289891    0.0407391
24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI                         0                    1                  0.1182426   -0.2278030    0.4642882
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.2146568   -0.0794483    0.5087619
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                 -0.0235843   -0.6076409    0.5604723
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.3436434   -0.2210349    0.9083217
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.0370434   -0.7104558    0.6363691
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.0480004   -0.2124521    0.3084530


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -0.0228829   -0.0649119    0.0191461
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.0028781   -0.0134607    0.0077045
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0192813   -0.0478856    0.0093230
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0043594   -0.1935967    0.1848779
Birth       MAL-ED      BRAZIL                         1                    NA                 0.4090000   -0.3592436    1.1772436
Birth       MAL-ED      PERU                           1                    NA                 0.0688491   -0.0854107    0.2231089
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.0461112   -0.0889095   -0.0033129
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.0047937   -0.0183585    0.0087712
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0385867   -0.0605136   -0.0166598
6 months    LCNI-5      MALAWI                         1                    NA                 0.0747225   -0.2082063    0.3576513
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0120975   -0.1502889    0.1744839
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0445912   -0.5570687    0.4678863
6 months    MAL-ED      INDIA                          1                    NA                -0.0668355   -0.6170213    0.4833503
6 months    MAL-ED      NEPAL                          1                    NA                -0.2296418   -0.8175399    0.3582562
6 months    MAL-ED      PERU                           1                    NA                -0.0207259   -0.1983716    0.1569197
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1497037   -0.7412167    0.4418093
24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0102445   -0.0560054    0.0355164
24 months   JiVitA-3    BANGLADESH                     1                    NA                -0.0092142   -0.0290634    0.0106351
24 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0108257   -0.0293035    0.0076522
24 months   LCNI-5      MALAWI                         1                    NA                 0.1061495   -0.1803335    0.3926325
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.1542358   -0.0464141    0.3548856
24 months   MAL-ED      BRAZIL                         1                    NA                -0.0275028   -0.5544156    0.4994100
24 months   MAL-ED      INDIA                          1                    NA                 0.3169553   -0.2110396    0.8449503
24 months   MAL-ED      NEPAL                          1                    NA                -0.0357379   -0.6854184    0.6139426
24 months   MAL-ED      PERU                           1                    NA                 0.0227039   -0.1695959    0.2150037

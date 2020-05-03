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

agecat      studyid          country                        exclfeed36    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                  3       3  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                  0       3  haz              
Birth       EE               PAKISTAN                       1                  3       7  haz              
Birth       EE               PAKISTAN                       0                  4       7  haz              
Birth       GMS-Nepal        NEPAL                          1                422     526  haz              
Birth       GMS-Nepal        NEPAL                          0                104     526  haz              
Birth       IRC              INDIA                          1                  0       4  haz              
Birth       IRC              INDIA                          0                  4       4  haz              
Birth       JiVitA-3         BANGLADESH                     1               8322   10681  haz              
Birth       JiVitA-3         BANGLADESH                     0               2359   10681  haz              
Birth       JiVitA-4         BANGLADESH                     1               1994    2517  haz              
Birth       JiVitA-4         BANGLADESH                     0                523    2517  haz              
Birth       Keneba           GAMBIA                         1                363    1253  haz              
Birth       Keneba           GAMBIA                         0                890    1253  haz              
Birth       MAL-ED           BANGLADESH                     1                 32     221  haz              
Birth       MAL-ED           BANGLADESH                     0                189     221  haz              
Birth       MAL-ED           BRAZIL                         1                  5      65  haz              
Birth       MAL-ED           BRAZIL                         0                 60      65  haz              
Birth       MAL-ED           INDIA                          1                  1      42  haz              
Birth       MAL-ED           INDIA                          0                 41      42  haz              
Birth       MAL-ED           NEPAL                          1                  0      26  haz              
Birth       MAL-ED           NEPAL                          0                 26      26  haz              
Birth       MAL-ED           PERU                           1                  5     223  haz              
Birth       MAL-ED           PERU                           0                218     223  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                  1     105  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                104     105  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0     119  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                119     119  haz              
Birth       PROVIDE          BANGLADESH                     1                119     490  haz              
Birth       PROVIDE          BANGLADESH                     0                371     490  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                  9       9  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                  0       9  haz              
6 months    EE               PAKISTAN                       1                  4       9  haz              
6 months    EE               PAKISTAN                       0                  5       9  haz              
6 months    GMS-Nepal        NEPAL                          1                422     527  haz              
6 months    GMS-Nepal        NEPAL                          0                105     527  haz              
6 months    IRC              INDIA                          1                  0       4  haz              
6 months    IRC              INDIA                          0                  4       4  haz              
6 months    JiVitA-3         BANGLADESH                     1               6578    8552  haz              
6 months    JiVitA-3         BANGLADESH                     0               1974    8552  haz              
6 months    JiVitA-4         BANGLADESH                     1               3241    4185  haz              
6 months    JiVitA-4         BANGLADESH                     0                944    4185  haz              
6 months    Keneba           GAMBIA                         1                507    1790  haz              
6 months    Keneba           GAMBIA                         0               1283    1790  haz              
6 months    LCNI-5           MALAWI                         1                 47     272  haz              
6 months    LCNI-5           MALAWI                         0                225     272  haz              
6 months    MAL-ED           BANGLADESH                     1                 30     240  haz              
6 months    MAL-ED           BANGLADESH                     0                210     240  haz              
6 months    MAL-ED           BRAZIL                         1                 12     209  haz              
6 months    MAL-ED           BRAZIL                         0                197     209  haz              
6 months    MAL-ED           INDIA                          1                  9     233  haz              
6 months    MAL-ED           INDIA                          0                224     233  haz              
6 months    MAL-ED           NEPAL                          1                  4     235  haz              
6 months    MAL-ED           NEPAL                          0                231     235  haz              
6 months    MAL-ED           PERU                           1                  6     272  haz              
6 months    MAL-ED           PERU                           0                266     272  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                  1     250  haz              
6 months    MAL-ED           SOUTH AFRICA                   0                249     250  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4     243  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239     243  haz              
6 months    PROVIDE          BANGLADESH                     1                145     603  haz              
6 months    PROVIDE          BANGLADESH                     0                458     603  haz              
6 months    SAS-FoodSuppl    INDIA                          1                  0     168  haz              
6 months    SAS-FoodSuppl    INDIA                          0                168     168  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                  9       9  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                  0       9  haz              
24 months   EE               PAKISTAN                       1                  0       3  haz              
24 months   EE               PAKISTAN                       0                  3       3  haz              
24 months   GMS-Nepal        NEPAL                          1                363     446  haz              
24 months   GMS-Nepal        NEPAL                          0                 83     446  haz              
24 months   IRC              INDIA                          1                  0       4  haz              
24 months   IRC              INDIA                          0                  4       4  haz              
24 months   JiVitA-3         BANGLADESH                     1               3325    4334  haz              
24 months   JiVitA-3         BANGLADESH                     0               1009    4334  haz              
24 months   JiVitA-4         BANGLADESH                     1               3145    4049  haz              
24 months   JiVitA-4         BANGLADESH                     0                904    4049  haz              
24 months   Keneba           GAMBIA                         1                424    1394  haz              
24 months   Keneba           GAMBIA                         0                970    1394  haz              
24 months   LCNI-5           MALAWI                         1                 34     189  haz              
24 months   LCNI-5           MALAWI                         0                155     189  haz              
24 months   MAL-ED           BANGLADESH                     1                 25     212  haz              
24 months   MAL-ED           BANGLADESH                     0                187     212  haz              
24 months   MAL-ED           BRAZIL                         1                 11     169  haz              
24 months   MAL-ED           BRAZIL                         0                158     169  haz              
24 months   MAL-ED           INDIA                          1                  9     224  haz              
24 months   MAL-ED           INDIA                          0                215     224  haz              
24 months   MAL-ED           NEPAL                          1                  4     227  haz              
24 months   MAL-ED           NEPAL                          0                223     227  haz              
24 months   MAL-ED           PERU                           1                  4     201  haz              
24 months   MAL-ED           PERU                           0                197     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                  1     235  haz              
24 months   MAL-ED           SOUTH AFRICA                   0                234     235  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3     213  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210     213  haz              
24 months   PROVIDE          BANGLADESH                     1                141     577  haz              
24 months   PROVIDE          BANGLADESH                     0                436     577  haz              


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
![](/tmp/6b32dcdf-9925-489a-b37e-5fb8d9f17908/0469fbb9-3c2c-4bb5-8589-53c2b9462baa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6b32dcdf-9925-489a-b37e-5fb8d9f17908/0469fbb9-3c2c-4bb5-8589-53c2b9462baa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6b32dcdf-9925-489a-b37e-5fb8d9f17908/0469fbb9-3c2c-4bb5-8589-53c2b9462baa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0062649   -1.1022686   -0.9102612
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1408507   -1.3340557   -0.9476458
Birth       JiVitA-3    BANGLADESH   1                    NA                -1.5732179   -1.6012398   -1.5451961
Birth       JiVitA-3    BANGLADESH   0                    NA                -1.5870328   -1.6319393   -1.5421264
Birth       JiVitA-4    BANGLADESH   1                    NA                -1.5024093   -1.5556152   -1.4492034
Birth       JiVitA-4    BANGLADESH   0                    NA                -1.6036710   -1.7305026   -1.4768393
Birth       Keneba      GAMBIA       1                    NA                 0.0216079   -0.0972524    0.1404682
Birth       Keneba      GAMBIA       0                    NA                 0.0357908   -0.0451665    0.1167481
Birth       MAL-ED      BANGLADESH   1                    NA                -1.1154578   -1.3940171   -0.8368984
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0698506   -1.2215201   -0.9181812
Birth       MAL-ED      BRAZIL       1                    NA                -1.4240000   -2.4288338   -0.4191662
Birth       MAL-ED      BRAZIL       0                    NA                -0.6136667   -0.8950902   -0.3322431
Birth       MAL-ED      PERU         1                    NA                -1.0080000   -1.6595862   -0.3564138
Birth       MAL-ED      PERU         0                    NA                -0.8886239   -1.0108291   -0.7664186
Birth       PROVIDE     BANGLADESH   1                    NA                -0.9550648   -1.0842999   -0.8258296
Birth       PROVIDE     BANGLADESH   0                    NA                -0.8662615   -0.9541803   -0.7783427
6 months    GMS-Nepal   NEPAL        1                    NA                -1.2868150   -1.3738066   -1.1998233
6 months    GMS-Nepal   NEPAL        0                    NA                -1.5199414   -1.7122960   -1.3275867
6 months    JiVitA-3    BANGLADESH   1                    NA                -1.3093063   -1.3412949   -1.2773177
6 months    JiVitA-3    BANGLADESH   0                    NA                -1.3354191   -1.3899678   -1.2808704
6 months    JiVitA-4    BANGLADESH   1                    NA                -1.3140832   -1.3550393   -1.2731272
6 months    JiVitA-4    BANGLADESH   0                    NA                -1.4793674   -1.5735298   -1.3852051
6 months    Keneba      GAMBIA       1                    NA                -0.9085693   -0.9986836   -0.8184551
6 months    Keneba      GAMBIA       0                    NA                -0.9440439   -1.0037932   -0.8842947
6 months    LCNI-5      MALAWI       1                    NA                -1.6275102   -1.9232434   -1.3317769
6 months    LCNI-5      MALAWI       0                    NA                -1.6230946   -1.7544372   -1.4917521
6 months    MAL-ED      BANGLADESH   1                    NA                -1.2942841   -1.5929764   -0.9955917
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2068040   -1.3338242   -1.0797839
6 months    MAL-ED      BRAZIL       1                    NA                 1.1301050    0.4592466    1.8009634
6 months    MAL-ED      BRAZIL       0                    NA                 0.0371961   -0.1082972    0.1826893
6 months    MAL-ED      INDIA        1                    NA                -0.9116667   -1.7458275   -0.0775058
6 months    MAL-ED      INDIA        0                    NA                -1.2173884   -1.3368172   -1.0979596
6 months    MAL-ED      PERU         1                    NA                -1.4083333   -2.0844008   -0.7322659
6 months    MAL-ED      PERU         0                    NA                -1.3211685   -1.4309807   -1.2113564
6 months    PROVIDE     BANGLADESH   1                    NA                -1.0904365   -1.2235609   -0.9573122
6 months    PROVIDE     BANGLADESH   0                    NA                -1.0867559   -1.1733596   -1.0001521
24 months   GMS-Nepal   NEPAL        1                    NA                -1.8721530   -1.9658124   -1.7784935
24 months   GMS-Nepal   NEPAL        0                    NA                -1.9682090   -2.1957096   -1.7407083
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.9978537   -2.0403127   -1.9553947
24 months   JiVitA-3    BANGLADESH   0                    NA                -2.0356027   -2.1131910   -1.9580145
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.7833174   -1.8259924   -1.7406423
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.8198567   -1.8988203   -1.7408930
24 months   Keneba      GAMBIA       1                    NA                -1.5426793   -1.6331603   -1.4521983
24 months   Keneba      GAMBIA       0                    NA                -1.6216934   -1.6888921   -1.5544946
24 months   LCNI-5      MALAWI       1                    NA                -2.0475749   -2.3492527   -1.7458970
24 months   LCNI-5      MALAWI       0                    NA                -1.9515785   -2.1101825   -1.7929746
24 months   MAL-ED      BANGLADESH   1                    NA                -2.1426733   -2.5823753   -1.7029714
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9759411   -2.1076063   -1.8442760
24 months   MAL-ED      BRAZIL       1                    NA                 0.1965286   -0.6699078    1.0629650
24 months   MAL-ED      BRAZIL       0                    NA                -0.0086619   -0.1813216    0.1639978
24 months   MAL-ED      INDIA        1                    NA                -2.2088889   -2.9737293   -1.4440485
24 months   MAL-ED      INDIA        0                    NA                -1.8773023   -2.0042653   -1.7503393
24 months   PROVIDE     BANGLADESH   1                    NA                -1.6806789   -1.8394521   -1.5219056
24 months   PROVIDE     BANGLADESH   0                    NA                -1.5741902   -1.6697732   -1.4786072


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       JiVitA-3    BANGLADESH   NA                   NA                -1.5762700   -1.6018685   -1.5506716
Birth       JiVitA-4    BANGLADESH   NA                   NA                -1.5234724   -1.5733491   -1.4735957
Birth       Keneba      GAMBIA       NA                   NA                 0.0318156   -0.0392907    0.1029220
Birth       MAL-ED      BANGLADESH   NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       MAL-ED      BRAZIL       NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED      PERU         NA                   NA                -0.8913004   -1.0115814   -0.7710195
Birth       PROVIDE     BANGLADESH   NA                   NA                -0.8769592   -0.9559693   -0.7979491
6 months    GMS-Nepal   NEPAL        NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    JiVitA-3    BANGLADESH   NA                   NA                -1.3152982   -1.3444394   -1.2861570
6 months    JiVitA-4    BANGLADESH   NA                   NA                -1.3514886   -1.3904044   -1.3125729
6 months    Keneba      GAMBIA       NA                   NA                -0.9355822   -0.9858754   -0.8852889
6 months    LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   NA                   NA                -1.2072639   -1.3248889   -1.0896388
6 months    MAL-ED      BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        NA                   NA                -1.2055794   -1.3250712   -1.0860876
6 months    MAL-ED      PERU         NA                   NA                -1.3230913   -1.4314947   -1.2146879
6 months    PROVIDE     BANGLADESH   NA                   NA                -1.0855583   -1.1591292   -1.0119875
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   JiVitA-3    BANGLADESH   NA                   NA                -2.0071989   -2.0453355   -1.9690623
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.7922845   -1.8313538   -1.7532153
24 months   Keneba      GAMBIA       NA                   NA                -1.5981956   -1.6534947   -1.5428965
24 months   LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED      BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        NA                   NA                -1.8906250   -2.0165920   -1.7646580
24 months   PROVIDE     BANGLADESH   NA                   NA                -1.6022704   -1.6857342   -1.5188065


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.1345858   -0.3427865    0.0736148
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 -0.0138149   -0.0621185    0.0344888
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.1012617   -0.2382841    0.0357608
Birth       Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba      GAMBIA       0                    1                  0.0141829   -0.1190806    0.1474464
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                  0.0456071   -0.2726843    0.3638986
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.8103333   -0.2331657    1.8538323
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                  0.1193761   -0.5435709    0.7823232
Birth       PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE     BANGLADESH   0                    1                  0.0888033   -0.0534903    0.2310968
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.2331264   -0.4444202   -0.0218326
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 -0.0261128   -0.0854187    0.0331931
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.1652842   -0.2665899   -0.0639785
6 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba      GAMBIA       0                    1                 -0.0354746   -0.1424334    0.0714843
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0044156   -0.3188754    0.3277066
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0874800   -0.2375384    0.4124985
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -1.0929090   -1.7838714   -0.4019466
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.3057217   -1.1483886    0.5369452
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                  0.0871648   -0.5977629    0.7720924
6 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE     BANGLADESH   0                    1                  0.0036807   -0.1538218    0.1611831
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.0960560   -0.3406375    0.1485255
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 -0.0377491   -0.1239465    0.0484484
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0365393   -0.1218549    0.0487763
24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba      GAMBIA       0                    1                 -0.0790141   -0.1897204    0.0316923
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0959963   -0.2457306    0.4377232
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.1667322   -0.2918519    0.6253163
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                 -0.2051905   -1.0890165    0.6786356
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.3315866   -0.4437201    1.1068933
24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE     BANGLADESH   0                    1                  0.1064887   -0.0753826    0.2883600


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0236971   -0.0657400    0.0183458
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0030521   -0.0137070    0.0076029
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0210631   -0.0498526    0.0077264
Birth       Keneba      GAMBIA       1                    NA                 0.0102078   -0.0850032    0.1054188
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0352315   -0.2383498    0.3088128
Birth       MAL-ED      BRAZIL       1                    NA                 0.7480000   -0.2166815    1.7126815
Birth       MAL-ED      PERU         1                    NA                 0.1166996   -0.5296780    0.7630771
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0781056   -0.0298669    0.1860781
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0469485   -0.0897173   -0.0041797
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0059919   -0.0196655    0.0076817
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0374054   -0.0593938   -0.0154170
6 months    Keneba      GAMBIA       1                    NA                -0.0270128   -0.1038394    0.0498137
6 months    LCNI-5      MALAWI       1                    NA                -0.0120854   -0.2817160    0.2575453
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0870202   -0.1979415    0.3719819
6 months    MAL-ED      BRAZIL       1                    NA                -1.0825293   -1.7390291   -0.4260295
6 months    MAL-ED      INDIA        1                    NA                -0.2939127   -1.1040658    0.5162403
6 months    MAL-ED      PERU         1                    NA                 0.0852420   -0.5825642    0.7530482
6 months    PROVIDE     BANGLADESH   1                    NA                 0.0048782   -0.1149492    0.1247057
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0109188   -0.0566274    0.0347898
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0093452   -0.0293505    0.0106601
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0089671   -0.0275530    0.0096187
24 months   Keneba      GAMBIA       1                    NA                -0.0555163   -0.1327198    0.0216872
24 months   LCNI-5      MALAWI       1                    NA                 0.0824426   -0.1989414    0.3638266
24 months   MAL-ED      BANGLADESH   1                    NA                 0.1642771   -0.2423545    0.5709087
24 months   MAL-ED      BRAZIL       1                    NA                -0.1904142   -1.0240577    0.6432292
24 months   MAL-ED      INDIA        1                    NA                 0.3182639   -0.4259412    1.0624690
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0784085   -0.0592740    0.2160911

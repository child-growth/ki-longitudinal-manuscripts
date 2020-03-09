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
![](/tmp/62c10966-3201-43bf-8c31-a60cb458147f/19cfe7b7-2107-4462-9d04-a19d6fcfc139/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/62c10966-3201-43bf-8c31-a60cb458147f/19cfe7b7-2107-4462-9d04-a19d6fcfc139/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/62c10966-3201-43bf-8c31-a60cb458147f/19cfe7b7-2107-4462-9d04-a19d6fcfc139/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0024072   -1.0985435   -0.9062709
Birth       GMS-Nepal   NEPAL        0                    NA                -1.0863522   -1.2843682   -0.8883362
Birth       JiVitA-3    BANGLADESH   1                    NA                -1.5732127   -1.6012285   -1.5451970
Birth       JiVitA-3    BANGLADESH   0                    NA                -1.5879312   -1.6327836   -1.5430788
Birth       JiVitA-4    BANGLADESH   1                    NA                -1.5023811   -1.5554562   -1.4493061
Birth       JiVitA-4    BANGLADESH   0                    NA                -1.6017693   -1.7290424   -1.4744961
Birth       Keneba      GAMBIA       1                    NA                 0.0288223   -0.0889336    0.1465782
Birth       Keneba      GAMBIA       0                    NA                 0.0347042   -0.0461883    0.1155968
Birth       MAL-ED      BANGLADESH   1                    NA                -1.2699716   -1.5409084   -0.9990348
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0752529   -1.2264469   -0.9240589
Birth       MAL-ED      BRAZIL       1                    NA                -1.4240000   -2.4288338   -0.4191662
Birth       MAL-ED      BRAZIL       0                    NA                -0.6136667   -0.8950902   -0.3322431
Birth       MAL-ED      PERU         1                    NA                -1.0080000   -1.6595862   -0.3564138
Birth       MAL-ED      PERU         0                    NA                -0.8886239   -1.0108291   -0.7664186
Birth       PROVIDE     BANGLADESH   1                    NA                -0.9266961   -1.0588790   -0.7945132
Birth       PROVIDE     BANGLADESH   0                    NA                -0.8615958   -0.9494881   -0.7737034
6 months    GMS-Nepal   NEPAL        1                    NA                -1.2874967   -1.3746828   -1.2003106
6 months    GMS-Nepal   NEPAL        0                    NA                -1.5143499   -1.7094172   -1.3192826
6 months    JiVitA-3    BANGLADESH   1                    NA                -1.3093942   -1.3413424   -1.2774459
6 months    JiVitA-3    BANGLADESH   0                    NA                -1.3351395   -1.3894297   -1.2808493
6 months    JiVitA-4    BANGLADESH   1                    NA                -1.3144782   -1.3557964   -1.2731600
6 months    JiVitA-4    BANGLADESH   0                    NA                -1.4823621   -1.5736235   -1.3911007
6 months    Keneba      GAMBIA       1                    NA                -0.9113808   -1.0019849   -0.8207766
6 months    Keneba      GAMBIA       0                    NA                -0.9442609   -1.0041162   -0.8844055
6 months    LCNI-5      MALAWI       1                    NA                -1.7060925   -1.9893165   -1.4228684
6 months    LCNI-5      MALAWI       0                    NA                -1.6278957   -1.7592313   -1.4965601
6 months    MAL-ED      BANGLADESH   1                    NA                -1.1994255   -1.5091600   -0.8896909
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2051426   -1.3326328   -1.0776525
6 months    MAL-ED      BRAZIL       1                    NA                 0.0276288   -0.6889268    0.7441843
6 months    MAL-ED      BRAZIL       0                    NA                 0.0318904   -0.1136083    0.1773890
6 months    MAL-ED      INDIA        1                    NA                -0.9116667   -1.7458275   -0.0775058
6 months    MAL-ED      INDIA        0                    NA                -1.2173884   -1.3368172   -1.0979596
6 months    MAL-ED      PERU         1                    NA                -1.4083333   -2.0844008   -0.7322659
6 months    MAL-ED      PERU         0                    NA                -1.3211685   -1.4309807   -1.2113564
6 months    PROVIDE     BANGLADESH   1                    NA                -1.0931121   -1.2269001   -0.9593241
6 months    PROVIDE     BANGLADESH   0                    NA                -1.0861111   -1.1727039   -0.9995183
24 months   GMS-Nepal   NEPAL        1                    NA                -1.8738399   -1.9677136   -1.7799662
24 months   GMS-Nepal   NEPAL        0                    NA                -1.9956885   -2.2288049   -1.7625720
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.9975515   -2.0399992   -1.9551038
24 months   JiVitA-3    BANGLADESH   0                    NA                -2.0324853   -2.1093104   -1.9556603
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.7824307   -1.8253705   -1.7394909
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.8210472   -1.8978617   -1.7442326
24 months   Keneba      GAMBIA       1                    NA                -1.5376455   -1.6285038   -1.4467872
24 months   Keneba      GAMBIA       0                    NA                -1.6230330   -1.6904026   -1.5556634
24 months   LCNI-5      MALAWI       1                    NA                -2.0837238   -2.3866725   -1.7807751
24 months   LCNI-5      MALAWI       0                    NA                -1.9517385   -2.1108366   -1.7926404
24 months   MAL-ED      BANGLADESH   1                    NA                -2.0379203   -2.4839616   -1.5918791
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9719741   -2.1036835   -1.8402648
24 months   MAL-ED      BRAZIL       1                    NA                 0.3141471   -0.4672094    1.0955036
24 months   MAL-ED      BRAZIL       0                    NA                -0.0061605   -0.1787512    0.1664303
24 months   MAL-ED      INDIA        1                    NA                -2.2088889   -2.9737293   -1.4440485
24 months   MAL-ED      INDIA        0                    NA                -1.8773023   -2.0042653   -1.7503393
24 months   PROVIDE     BANGLADESH   1                    NA                -1.6983794   -1.8587171   -1.5380417
24 months   PROVIDE     BANGLADESH   0                    NA                -1.5763998   -1.6724600   -1.4803395


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
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0839450   -0.2975812    0.1296912
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 -0.0147185   -0.0629646    0.0335277
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0993881   -0.2366726    0.0378963
Birth       Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba      GAMBIA       0                    1                  0.0058820   -0.1260746    0.1378386
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                  0.1947187   -0.1161698    0.5056072
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.8103333   -0.2331657    1.8538323
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                  0.1193761   -0.5435709    0.7823232
Birth       PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE     BANGLADESH   0                    1                  0.0651003   -0.0794047    0.2096054
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.2268533   -0.4406920   -0.0130146
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 -0.0257454   -0.0846370    0.0331463
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.1678839   -0.2664116   -0.0693562
6 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba      GAMBIA       0                    1                 -0.0328801   -0.1406767    0.0749165
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0781968   -0.2334797    0.3898733
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                 -0.0057172   -0.3410031    0.3295688
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                  0.0042616   -0.7258946    0.7344178
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.3057217   -1.1483886    0.5369452
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                  0.0871648   -0.5977629    0.7720924
6 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE     BANGLADESH   0                    1                  0.0070010   -0.1511871    0.1651891
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.1218486   -0.3716325    0.1279353
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 -0.0349338   -0.1204948    0.0506272
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0386165   -0.1219715    0.0447385
24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba      GAMBIA       0                    1                 -0.0853875   -0.1966992    0.0259242
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.1319853   -0.2110563    0.4750269
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.0659462   -0.3992540    0.5311464
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                 -0.3203076   -1.1212703    0.4806552
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.3315866   -0.4437201    1.1068933
24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE     BANGLADESH   0                    1                  0.1219797   -0.0625018    0.3064611


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0275548   -0.0701667    0.0150572
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0030573   -0.0137018    0.0075873
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0210913   -0.0498325    0.0076500
Birth       Keneba      GAMBIA       1                    NA                 0.0029934   -0.0910123    0.0969991
Birth       MAL-ED      BANGLADESH   1                    NA                 0.1897453   -0.0788201    0.4583107
Birth       MAL-ED      BRAZIL       1                    NA                 0.7480000   -0.2166815    1.7126815
Birth       MAL-ED      PERU         1                    NA                 0.1166996   -0.5296780    0.7630771
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0497369   -0.0599580    0.1594319
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0462668   -0.0893760   -0.0031575
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0059040   -0.0194711    0.0076631
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0370104   -0.0590418   -0.0149790
6 months    Keneba      GAMBIA       1                    NA                -0.0242014   -0.1015743    0.0531715
6 months    LCNI-5      MALAWI       1                    NA                 0.0664969   -0.1912884    0.3242822
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0078384   -0.3018486    0.2861718
6 months    MAL-ED      BRAZIL       1                    NA                 0.0199470   -0.6687550    0.7086490
6 months    MAL-ED      INDIA        1                    NA                -0.2939127   -1.1040658    0.5162403
6 months    MAL-ED      PERU         1                    NA                 0.0852420   -0.5825642    0.7530482
6 months    PROVIDE     BANGLADESH   1                    NA                 0.0075537   -0.1129904    0.1280978
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0092319   -0.0550800    0.0366162
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0096474   -0.0296166    0.0103219
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0098538   -0.0283962    0.0086886
24 months   Keneba      GAMBIA       1                    NA                -0.0605501   -0.1382034    0.0171033
24 months   LCNI-5      MALAWI       1                    NA                 0.1185915   -0.1646843    0.4018673
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0595241   -0.3525914    0.4716397
24 months   MAL-ED      BRAZIL       1                    NA                -0.3080327   -1.0596643    0.4435989
24 months   MAL-ED      INDIA        1                    NA                 0.3182639   -0.4259412    1.0624690
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0961090   -0.0434921    0.2357102

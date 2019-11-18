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

agecat      studyid                    country                        exclfeed36    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 32     221  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                189     221  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  5      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 60      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                  1      42  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                 41      42  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                 26      26  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                  5     223  haz              
Birth       ki0047075b-MAL-ED          PERU                           0                218     223  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     105  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                104     105  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3  haz              
Birth       ki1000108-IRC              INDIA                          1                  0       4  haz              
Birth       ki1000108-IRC              INDIA                          0                  4       4  haz              
Birth       ki1000109-EE               PAKISTAN                       1                  3       7  haz              
Birth       ki1000109-EE               PAKISTAN                       0                  4       7  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                119     490  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                371     490  haz              
Birth       ki1101329-Keneba           GAMBIA                         1                363    1253  haz              
Birth       ki1101329-Keneba           GAMBIA                         0                890    1253  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8322   10681  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2359   10681  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1994    2517  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                523    2517  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210     240  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1                  9     233  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0                224     233  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0                231     235  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                  6     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           0                266     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     250  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249     250  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     243  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239     243  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9  haz              
6 months    ki1000108-IRC              INDIA                          1                  0       4  haz              
6 months    ki1000108-IRC              INDIA                          0                  4       4  haz              
6 months    ki1000109-EE               PAKISTAN                       1                  4       9  haz              
6 months    ki1000109-EE               PAKISTAN                       0                  5       9  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458     603  haz              
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790  haz              
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6578    8552  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1974    8552  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3241    4185  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                944    4185  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1                  9     224  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0                215     224  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4     227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0                223     227  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                  4     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           0                197     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     235  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     235  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3     213  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210     213  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9  haz              
24 months   ki1000108-IRC              INDIA                          1                  0       4  haz              
24 months   ki1000108-IRC              INDIA                          0                  4       4  haz              
24 months   ki1000109-EE               PAKISTAN                       1                  0       3  haz              
24 months   ki1000109-EE               PAKISTAN                       0                  3       3  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436     577  haz              
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394  haz              
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3325    4334  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1009    4334  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3145    4049  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                904    4049  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/0dc33729-fc1e-401d-adfc-4d07c766302f/861277db-67b5-4729-bede-6ca4dd084d5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0dc33729-fc1e-401d-adfc-4d07c766302f/861277db-67b5-4729-bede-6ca4dd084d5e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0dc33729-fc1e-401d-adfc-4d07c766302f/861277db-67b5-4729-bede-6ca4dd084d5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.0685271   -1.3373816   -0.7996727
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0677107   -1.2193665   -0.9160550
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -1.4240000   -2.4288338   -0.4191662
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.6136667   -0.8950902   -0.3322431
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -1.0080000   -1.6595862   -0.3564138
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.8886239   -1.0108291   -0.7664186
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.9240441   -1.0549396   -0.7931486
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.8614074   -0.9492993   -0.7735156
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0177549   -0.1003780    0.1358877
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0355373   -0.0453524    0.1164271
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0064301   -1.1026621   -0.9101981
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1321123   -1.3261694   -0.9380552
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.5732082   -1.6012296   -1.5451869
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.5888880   -1.6337555   -1.5440206
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.5022356   -1.5557630   -1.4487083
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.5885357   -1.7144176   -1.4626538
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1857985   -1.5113103   -0.8602868
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2105600   -1.3377835   -1.0833366
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1388950   -0.7606879    1.0384778
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0328686   -0.1128993    0.1786364
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.9116667   -1.7458275   -0.0775058
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.2173884   -1.3368172   -1.0979596
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.4083333   -2.0844008   -0.7322659
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.3211685   -1.4309807   -1.2113564
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.0615978   -1.1937208   -0.9294747
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.0843671   -1.1709091   -0.9978250
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.9111328   -1.0007755   -0.8214901
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.9448897   -1.0044963   -0.8852832
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.2866167   -1.3735804   -1.1996531
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.5087470   -1.7019272   -1.3155669
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.6002751   -1.8865932   -1.3139571
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6215241   -1.7530120   -1.4900362
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3092434   -1.3412079   -1.2772789
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3321779   -1.3865270   -1.2778288
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3134229   -1.3546094   -1.2722363
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4810459   -1.5743215   -1.3877703
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.9415492   -2.3883266   -1.4947717
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.9691614   -2.1006392   -1.8376836
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1833480   -0.6396111    1.0063071
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0077933   -0.1801389    0.1645522
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.2088889   -2.9737293   -1.4440485
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8773023   -2.0042653   -1.7503393
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.6871007   -1.8461584   -1.5280429
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.5757953   -1.6714586   -1.4801320
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -1.5321856   -1.6222230   -1.4421483
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -1.6230897   -1.6904105   -1.5557688
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.8741841   -1.9674605   -1.7809078
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.9219769   -2.1552609   -1.6886929
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -2.0352574   -2.3280401   -1.7424746
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9531546   -2.1117943   -1.7945150
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.9960669   -2.0379529   -1.9541808
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0382230   -2.1117643   -1.9646818
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7797649   -1.8228614   -1.7366684
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8346825   -1.9150871   -1.7542778


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.8913004   -1.0115814   -0.7710195
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8769592   -0.9559693   -0.7979491
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                 0.0318156   -0.0392907    0.1029220
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5762700   -1.6018685   -1.5506716
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.2072639   -1.3248889   -1.0896388
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2055794   -1.3250712   -1.0860876
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3230913   -1.4314947   -1.2146879
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.0855583   -1.1591292   -1.0119875
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3152982   -1.3444394   -1.2861570
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8906250   -2.0165920   -1.7646580
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.6022704   -1.6857342   -1.5188065
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -1.5981956   -1.6534947   -1.5428965
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -2.0071989   -2.0453355   -1.9690623
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7922845   -1.8313538   -1.7532153


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0008164   -0.3083788    0.3100117
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.8103333   -0.2331657    1.8538323
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                  0.1193761   -0.5435709    0.7823232
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0626367   -0.0805766    0.2058500
Birth       ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                  0.0177825   -0.1144671    0.1500320
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1256822   -0.3354704    0.0841059
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0156798   -0.0639527    0.0325931
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0863001   -0.2225372    0.0499370
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0247615   -0.3744299    0.3249069
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1060264   -1.0175380    0.8054852
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.3057217   -1.1483886    0.5369452
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0871648   -0.5977629    0.7720924
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0227693   -0.1793285    0.1337899
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.0337569   -0.1400034    0.0724895
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2221303   -0.4335536   -0.0107070
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.0212490   -0.3372749    0.2947770
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0229345   -0.0819793    0.0361102
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1676230   -0.2678171   -0.0674289
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0276122   -0.4939520    0.4387275
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1911413   -1.0318511    0.6495684
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.3315866   -0.4437201    1.1068933
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.1113054   -0.0711438    0.2937546
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0909040   -0.2015695    0.0197614
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0477928   -0.2969476    0.2013620
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0821027   -0.2508411    0.4150466
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0421562   -0.1223454    0.0380331
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0549176   -0.1423912    0.0325561


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0116991   -0.2771308    0.2537326
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.7480000   -0.2166815    1.7126815
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.1166996   -0.5296780    0.7630771
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0470849   -0.0614920    0.1556619
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0140608   -0.0801953    0.1083168
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0235319   -0.0667268    0.0196629
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030618   -0.0137249    0.0076013
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0212367   -0.0501794    0.0077059
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0214654   -0.3323600    0.2894292
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0913192   -0.9592855    0.7766471
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.2939127   -1.1040657    0.5162403
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0852420   -0.5825642    0.7530482
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0239606   -0.1433473    0.0954262
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0244494   -0.1006720    0.0517733
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0471467   -0.0896096   -0.0046838
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0393204   -0.3019390    0.2232981
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0060548   -0.0196521    0.0075425
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0380658   -0.0601996   -0.0159319
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0368470   -0.4501838    0.3764897
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1772336   -0.9679373    0.6134701
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.3182639   -0.4259412    1.0624690
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0848303   -0.0533050    0.2229656
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0660100   -0.1431241    0.0111042
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0088876   -0.0542636    0.0364883
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0701251   -0.2028657    0.3431159
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0111320   -0.0299431    0.0076790
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0125196   -0.0317791    0.0067399

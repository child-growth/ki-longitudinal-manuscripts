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

agecat      studyid          country                        impfloor    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1               72      72  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                0      72  haz              
Birth       CONTENT          PERU                           1                2       2  haz              
Birth       CONTENT          PERU                           0                0       2  haz              
Birth       GMS-Nepal        NEPAL                          1              100     544  haz              
Birth       GMS-Nepal        NEPAL                          0              444     544  haz              
Birth       IRC              INDIA                          1              287     287  haz              
Birth       IRC              INDIA                          0                0     287  haz              
Birth       JiVitA-3         BANGLADESH                     1             1394   22399  haz              
Birth       JiVitA-3         BANGLADESH                     0            21005   22399  haz              
Birth       JiVitA-4         BANGLADESH                     1              307    2820  haz              
Birth       JiVitA-4         BANGLADESH                     0             2513    2820  haz              
Birth       MAL-ED           BANGLADESH                     1              196     213  haz              
Birth       MAL-ED           BANGLADESH                     0               17     213  haz              
Birth       MAL-ED           BRAZIL                         1               58      60  haz              
Birth       MAL-ED           BRAZIL                         0                2      60  haz              
Birth       MAL-ED           INDIA                          1               35      41  haz              
Birth       MAL-ED           INDIA                          0                6      41  haz              
Birth       MAL-ED           NEPAL                          1                9      25  haz              
Birth       MAL-ED           NEPAL                          0               16      25  haz              
Birth       MAL-ED           PERU                           1               39     215  haz              
Birth       MAL-ED           PERU                           0              176     215  haz              
Birth       MAL-ED           SOUTH AFRICA                   1               87      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                9      96  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                7     119  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              112     119  haz              
Birth       NIH-Birth        BANGLADESH                     1              533     605  haz              
Birth       NIH-Birth        BANGLADESH                     0               72     605  haz              
Birth       NIH-Crypto       BANGLADESH                     1              558     732  haz              
Birth       NIH-Crypto       BANGLADESH                     0              174     732  haz              
Birth       PROVIDE          BANGLADESH                     1              491     539  haz              
Birth       PROVIDE          BANGLADESH                     0               48     539  haz              
6 months    CMC-V-BCS-2002   INDIA                          1              257     257  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                0     257  haz              
6 months    CONTENT          PERU                           1              201     215  haz              
6 months    CONTENT          PERU                           0               14     215  haz              
6 months    GMS-Nepal        NEPAL                          1               78     441  haz              
6 months    GMS-Nepal        NEPAL                          0              363     441  haz              
6 months    IRC              INDIA                          1              303     303  haz              
6 months    IRC              INDIA                          0                0     303  haz              
6 months    JiVitA-3         BANGLADESH                     1             1465   16773  haz              
6 months    JiVitA-3         BANGLADESH                     0            15308   16773  haz              
6 months    JiVitA-4         BANGLADESH                     1              590    4824  haz              
6 months    JiVitA-4         BANGLADESH                     0             4234    4824  haz              
6 months    MAL-ED           BANGLADESH                     1              221     240  haz              
6 months    MAL-ED           BANGLADESH                     0               19     240  haz              
6 months    MAL-ED           BRAZIL                         1              207     209  haz              
6 months    MAL-ED           BRAZIL                         0                2     209  haz              
6 months    MAL-ED           INDIA                          1              220     235  haz              
6 months    MAL-ED           INDIA                          0               15     235  haz              
6 months    MAL-ED           NEPAL                          1              103     229  haz              
6 months    MAL-ED           NEPAL                          0              126     229  haz              
6 months    MAL-ED           PERU                           1               58     270  haz              
6 months    MAL-ED           PERU                           0              212     270  haz              
6 months    MAL-ED           SOUTH AFRICA                   1              229     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               20     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14     245  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231     245  haz              
6 months    NIH-Birth        BANGLADESH                     1              477     535  haz              
6 months    NIH-Birth        BANGLADESH                     0               58     535  haz              
6 months    NIH-Crypto       BANGLADESH                     1              537     715  haz              
6 months    NIH-Crypto       BANGLADESH                     0              178     715  haz              
6 months    PROVIDE          BANGLADESH                     1              557     604  haz              
6 months    PROVIDE          BANGLADESH                     0               47     604  haz              
24 months   CMC-V-BCS-2002   INDIA                          1              259     259  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                0     259  haz              
24 months   CONTENT          PERU                           1              154     164  haz              
24 months   CONTENT          PERU                           0               10     164  haz              
24 months   GMS-Nepal        NEPAL                          1               72     374  haz              
24 months   GMS-Nepal        NEPAL                          0              302     374  haz              
24 months   IRC              INDIA                          1              305     305  haz              
24 months   IRC              INDIA                          0                0     305  haz              
24 months   JiVitA-3         BANGLADESH                     1              674    8609  haz              
24 months   JiVitA-3         BANGLADESH                     0             7935    8609  haz              
24 months   JiVitA-4         BANGLADESH                     1              566    4746  haz              
24 months   JiVitA-4         BANGLADESH                     0             4180    4746  haz              
24 months   MAL-ED           BANGLADESH                     1              195     212  haz              
24 months   MAL-ED           BANGLADESH                     0               17     212  haz              
24 months   MAL-ED           BRAZIL                         1              167     169  haz              
24 months   MAL-ED           BRAZIL                         0                2     169  haz              
24 months   MAL-ED           INDIA                          1              212     227  haz              
24 months   MAL-ED           INDIA                          0               15     227  haz              
24 months   MAL-ED           NEPAL                          1               98     221  haz              
24 months   MAL-ED           NEPAL                          0              123     221  haz              
24 months   MAL-ED           PERU                           1               49     201  haz              
24 months   MAL-ED           PERU                           0              152     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   1              220     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               18     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     212  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200     212  haz              
24 months   NIH-Birth        BANGLADESH                     1              377     427  haz              
24 months   NIH-Birth        BANGLADESH                     0               50     427  haz              
24 months   NIH-Crypto       BANGLADESH                     1              346     514  haz              
24 months   NIH-Crypto       BANGLADESH                     0              168     514  haz              
24 months   PROVIDE          BANGLADESH                     1              533     578  haz              
24 months   PROVIDE          BANGLADESH                     0               45     578  haz              


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
![](/tmp/7ea5fd93-0492-4ea3-9abc-89450d79a8e3/2782100c-b0df-4759-9a48-1bc7671ba8d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7ea5fd93-0492-4ea3-9abc-89450d79a8e3/2782100c-b0df-4759-9a48-1bc7671ba8d6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7ea5fd93-0492-4ea3-9abc-89450d79a8e3/2782100c-b0df-4759-9a48-1bc7671ba8d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -0.7843600   -1.0485412   -0.5201789
Birth       GMS-Nepal    NEPAL                          0                    NA                -1.1950032   -1.3084886   -1.0815177
Birth       JiVitA-3     BANGLADESH                     1                    NA                -1.5187040   -1.5811840   -1.4562241
Birth       JiVitA-3     BANGLADESH                     0                    NA                -1.5885025   -1.6083622   -1.5686429
Birth       JiVitA-4     BANGLADESH                     1                    NA                -1.5891576   -1.8551375   -1.3231778
Birth       JiVitA-4     BANGLADESH                     0                    NA                -1.5308659   -1.5840673   -1.4776644
Birth       MAL-ED       BANGLADESH                     1                    NA                -1.0701988   -1.2130125   -0.9273851
Birth       MAL-ED       BANGLADESH                     0                    NA                -0.5866135   -1.0742195   -0.0990075
Birth       MAL-ED       INDIA                          1                    NA                -1.2242857   -1.5919558   -0.8566156
Birth       MAL-ED       INDIA                          0                    NA                -1.1066667   -1.4622060   -0.7511274
Birth       MAL-ED       NEPAL                          1                    NA                -1.0066667   -1.6704675   -0.3428658
Birth       MAL-ED       NEPAL                          0                    NA                -0.6568750   -1.0897018   -0.2240482
Birth       MAL-ED       PERU                           1                    NA                -1.1060960   -1.4820666   -0.7301253
Birth       MAL-ED       PERU                           0                    NA                -0.8759643   -0.9989769   -0.7529517
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.5463218   -0.7573107   -0.3353330
Birth       MAL-ED       SOUTH AFRICA                   0                    NA                -0.6111111   -1.3247632    0.1025410
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.8571429   -3.4252117   -0.2890740
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0753571   -1.2760805   -0.8746338
Birth       NIH-Birth    BANGLADESH                     1                    NA                -0.8961671   -0.9914491   -0.8008850
Birth       NIH-Birth    BANGLADESH                     0                    NA                -1.1603679   -1.3870505   -0.9336852
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.9085428   -0.9881035   -0.8289820
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -0.9399088   -1.1221029   -0.7577147
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.8600817   -0.9392469   -0.7809165
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.1344776   -1.3719913   -0.8969638
6 months    CONTENT      PERU                           1                    NA                -0.2805426   -0.4182026   -0.1428826
6 months    CONTENT      PERU                           0                    NA                 0.0402121   -0.4449064    0.5253306
6 months    GMS-Nepal    NEPAL                          1                    NA                -1.0790309   -1.3335813   -0.8244804
6 months    GMS-Nepal    NEPAL                          0                    NA                -1.3650680   -1.4727480   -1.2573880
6 months    JiVitA-3     BANGLADESH                     1                    NA                -1.1887948   -1.2495302   -1.1280594
6 months    JiVitA-3     BANGLADESH                     0                    NA                -1.3211469   -1.3461650   -1.2961289
6 months    JiVitA-4     BANGLADESH                     1                    NA                -1.1771417   -1.3490172   -1.0052663
6 months    JiVitA-4     BANGLADESH                     0                    NA                -1.3698885   -1.4106700   -1.3291070
6 months    MAL-ED       BANGLADESH                     1                    NA                -1.2055060   -1.3243639   -1.0866481
6 months    MAL-ED       BANGLADESH                     0                    NA                -1.0327531   -1.6082788   -0.4572274
6 months    MAL-ED       INDIA                          1                    NA                -1.2086494   -1.3302955   -1.0870032
6 months    MAL-ED       INDIA                          0                    NA                -1.1358337   -1.6404219   -0.6312455
6 months    MAL-ED       NEPAL                          1                    NA                -0.4665038   -0.6416387   -0.2913688
6 months    MAL-ED       NEPAL                          0                    NA                -0.6040625   -0.7515301   -0.4565949
6 months    MAL-ED       PERU                           1                    NA                -1.4073343   -1.6711255   -1.1435432
6 months    MAL-ED       PERU                           0                    NA                -1.2935919   -1.4120119   -1.1751719
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                -1.0529241   -1.1894984   -0.9163498
6 months    MAL-ED       SOUTH AFRICA                   0                    NA                -1.0580976   -1.5022761   -0.6139192
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7706625   -1.3484754   -0.1928496
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3801113   -1.5068686   -1.2533541
6 months    NIH-Birth    BANGLADESH                     1                    NA                -1.3768549   -1.4718742   -1.2818357
6 months    NIH-Birth    BANGLADESH                     0                    NA                -1.6595711   -1.9270409   -1.3921014
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -1.1705346   -1.2514627   -1.0896065
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -1.2828201   -1.4588834   -1.1067568
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.0463951   -1.1213167   -0.9714734
6 months    PROVIDE      BANGLADESH                     0                    NA                -1.4347883   -1.7612681   -1.1083084
24 months   CONTENT      PERU                           1                    NA                -0.6529957   -0.8093284   -0.4966631
24 months   CONTENT      PERU                           0                    NA                -0.9223470   -1.5221336   -0.3225603
24 months   GMS-Nepal    NEPAL                          1                    NA                -1.7009508   -1.9603018   -1.4415998
24 months   GMS-Nepal    NEPAL                          0                    NA                -1.8794002   -1.9943625   -1.7644380
24 months   JiVitA-3     BANGLADESH                     1                    NA                -1.8270189   -1.9162489   -1.7377889
24 months   JiVitA-3     BANGLADESH                     0                    NA                -2.0224749   -2.0521303   -1.9928196
24 months   JiVitA-4     BANGLADESH                     1                    NA                -1.5548511   -1.7400133   -1.3696890
24 months   JiVitA-4     BANGLADESH                     0                    NA                -1.7919920   -1.8302795   -1.7537045
24 months   MAL-ED       BANGLADESH                     1                    NA                -1.9856072   -2.1187735   -1.8524409
24 months   MAL-ED       BANGLADESH                     0                    NA                -1.6693970   -2.0191237   -1.3196703
24 months   MAL-ED       INDIA                          1                    NA                -1.8785962   -2.0064419   -1.7507504
24 months   MAL-ED       INDIA                          0                    NA                -1.9633107   -2.4008994   -1.5257220
24 months   MAL-ED       NEPAL                          1                    NA                -1.1194880   -1.3296799   -0.9092960
24 months   MAL-ED       NEPAL                          0                    NA                -1.3839790   -1.5337646   -1.2341933
24 months   MAL-ED       PERU                           1                    NA                -1.6291483   -1.9029871   -1.3553095
24 months   MAL-ED       PERU                           0                    NA                -1.7918127   -1.9282707   -1.6553548
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                -1.6466691   -1.7876436   -1.5056947
24 months   MAL-ED       SOUTH AFRICA                   0                    NA                -1.6166211   -2.1526691   -1.0805731
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3882369   -2.9436519   -1.8328219
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6642705   -2.8051469   -2.5233942
24 months   NIH-Birth    BANGLADESH                     1                    NA                -2.1577876   -2.2657408   -2.0498344
24 months   NIH-Birth    BANGLADESH                     0                    NA                -2.6950487   -2.9655051   -2.4245923
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -1.4213597   -1.5214021   -1.3213173
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -1.4515269   -1.6255576   -1.2774962
24 months   PROVIDE      BANGLADESH                     1                    NA                -1.5590565   -1.6443671   -1.4737459
24 months   PROVIDE      BANGLADESH                     0                    NA                -2.1119139   -2.4208979   -1.8029300


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          NA                   NA                -1.1177022   -1.2075344   -1.0278700
Birth       JiVitA-3     BANGLADESH                     NA                   NA                -1.5895451   -1.6088186   -1.5702715
Birth       JiVitA-4     BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED       BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED       INDIA                          NA                   NA                -1.2070732   -1.5254820   -0.8886644
Birth       MAL-ED       NEPAL                          NA                   NA                -0.7828000   -1.1547571   -0.4108429
Birth       MAL-ED       PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       MAL-ED       SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1213445   -1.3341800   -0.9085090
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -0.9289256   -1.0178691   -0.8399821
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CONTENT      PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    GMS-Nepal    NEPAL                          NA                   NA                -1.3225094   -1.4115793   -1.2334396
6 months    JiVitA-3     BANGLADESH                     NA                   NA                -1.3134597   -1.3365976   -1.2903219
6 months    JiVitA-4     BANGLADESH                     NA                   NA                -1.3440174   -1.3812821   -1.3067527
6 months    MAL-ED       BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED       INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    MAL-ED       NEPAL                          NA                   NA                -0.5534862   -0.6681825   -0.4387899
6 months    MAL-ED       PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3700408   -1.4930436   -1.2470380
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -1.4060639   -1.4948910   -1.3172368
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   CONTENT      PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   GMS-Nepal    NEPAL                          NA                   NA                -1.8396747   -1.9349390   -1.7444104
24 months   JiVitA-3     BANGLADESH                     NA                   NA                -2.0134592   -2.0410825   -1.9858359
24 months   JiVitA-4     BANGLADESH                     NA                   NA                -1.7804046   -1.8159135   -1.7448956
24 months   MAL-ED       BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED       NEPAL                          NA                   NA                -1.2928054   -1.4146944   -1.1709164
24 months   MAL-ED       PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6432311   -2.7795797   -2.5068826
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -2.2235968   -2.3265592   -2.1206344
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL                          0                    1                 -0.4106431   -0.6974628   -0.1238235
Birth       JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH                     0                    1                 -0.0697985   -0.1335895   -0.0060075
Birth       JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH                     0                    1                  0.0582917   -0.2099748    0.3265582
Birth       MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     0                    1                  0.4835853   -0.0264217    0.9935922
Birth       MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          0                    1                  0.1176190   -0.3938392    0.6290772
Birth       MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          0                    1                  0.3497917   -0.4426543    1.1422376
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.2301317   -0.1645682    0.6248315
Birth       MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA                   0                    1                 -0.0647893   -0.8089772    0.6793986
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.7817857   -0.7990779    2.3626493
Birth       NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     0                    1                 -0.2642008   -0.5099238   -0.0184778
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.0313660   -0.2298174    0.1670854
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.2743959   -0.5246779   -0.0241138
6 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           0                    1                  0.3207547   -0.1846257    0.8261351
6 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL                          0                    1                 -0.2860371   -0.5624645   -0.0096097
6 months    JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH                     0                    1                 -0.1323521   -0.1965605   -0.0681438
6 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH                     0                    1                 -0.1927468   -0.3683152   -0.0171783
6 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     0                    1                  0.1727530   -0.4151983    0.7607043
6 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          0                    1                  0.0728156   -0.4459068    0.5915381
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                 -0.1375587   -0.3671481    0.0920306
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                  0.1137424   -0.1758112    0.4032961
6 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   0                    1                 -0.0051736   -0.4701122    0.4597651
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6094488   -1.2003558   -0.0185418
6 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     0                    1                 -0.2827162   -0.5662657    0.0008334
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.1122855   -0.3049045    0.0803336
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -0.3883932   -0.7234181   -0.0533683
24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           0                    1                 -0.2693512   -0.8922656    0.3535631
24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL                          0                    1                 -0.1784494   -0.4621192    0.1052203
24 months   JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH                     0                    1                 -0.1954560   -0.2886501   -0.1022620
24 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH                     0                    1                 -0.2371409   -0.4249206   -0.0493612
24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     0                    1                  0.3162102   -0.0562402    0.6886606
24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          0                    1                 -0.0847145   -0.5404623    0.3710333
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.2644910   -0.5250871   -0.0038950
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.1626644   -0.4683656    0.1430367
24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0300480   -0.5251644    0.5852604
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2760337   -0.8491379    0.2970706
24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.5372611   -0.8268304   -0.2476918
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0301672   -0.2296137    0.1692793
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.5528574   -0.8740715   -0.2316434


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -0.3333422   -0.5912779   -0.0754064
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.0708410   -0.1319477   -0.0097343
Birth       JiVitA-4     BANGLADESH                     1                    NA                 0.0655441   -0.1900287    0.3211170
Birth       MAL-ED       BANGLADESH                     1                    NA                 0.0171472   -0.0222278    0.0565221
Birth       MAL-ED       INDIA                          1                    NA                 0.0172125   -0.0587357    0.0931607
Birth       MAL-ED       NEPAL                          1                    NA                 0.2238667   -0.2877278    0.7354611
Birth       MAL-ED       PERU                           1                    NA                 0.1919564   -0.1336207    0.5175335
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.0060740   -0.0759449    0.0637969
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7357983   -0.7524434    2.2240401
Birth       NIH-Birth    BANGLADESH                     1                    NA                -0.0327586   -0.0634831   -0.0020340
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0009518   -0.0485024    0.0465988
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.0250203   -0.0474391   -0.0026016
6 months    CONTENT      PERU                           1                    NA                 0.0020170   -0.0281224    0.0321564
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.2434786   -0.4913757    0.0044185
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.1246649   -0.1856718   -0.0636580
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.1668757   -0.3331920   -0.0005594
6 months    MAL-ED       BANGLADESH                     1                    NA                 0.0028255   -0.0415533    0.0472043
6 months    MAL-ED       INDIA                          1                    NA                 0.0015855   -0.0344586    0.0376297
6 months    MAL-ED       NEPAL                          1                    NA                -0.0869824   -0.2141088    0.0401440
6 months    MAL-ED       PERU                           1                    NA                 0.0824794   -0.1453547    0.3103135
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                -0.0018684   -0.0366182    0.0328813
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5993783   -1.1630811   -0.0356755
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0292089   -0.0608886    0.0024708
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0281437   -0.0729800    0.0166925
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.0452964   -0.0739501   -0.0166427
24 months   CONTENT      PERU                           1                    NA                -0.0338640   -0.0756736    0.0079455
24 months   GMS-Nepal    NEPAL                          1                    NA                -0.1387239   -0.3900994    0.1126516
24 months   JiVitA-3     BANGLADESH                     1                    NA                -0.1864403   -0.2757908   -0.0970897
24 months   JiVitA-4     BANGLADESH                     1                    NA                -0.2255534   -0.4047024   -0.0464044
24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0072110   -0.0267995    0.0412215
24 months   MAL-ED       INDIA                          1                    NA                -0.0075932   -0.0437778    0.0285913
24 months   MAL-ED       NEPAL                          1                    NA                -0.1733175   -0.3347354   -0.0118996
24 months   MAL-ED       PERU                           1                    NA                -0.1233227   -0.3570905    0.1104451
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0016096   -0.0361820    0.0394012
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2549943   -0.8014445    0.2914560
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0658092   -0.1057597   -0.0258588
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0199049   -0.0793385    0.0395288
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0433657   -0.0716185   -0.0151128

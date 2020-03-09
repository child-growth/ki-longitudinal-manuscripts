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

agecat      studyid          country                        exclfeed36    n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       EE               PAKISTAN                       1                  3       7
Birth       EE               PAKISTAN                       0                  4       7
Birth       GMS-Nepal        NEPAL                          1                422     526
Birth       GMS-Nepal        NEPAL                          0                104     526
Birth       IRC              INDIA                          1                  0       4
Birth       IRC              INDIA                          0                  4       4
Birth       JiVitA-3         BANGLADESH                     1               8322   10681
Birth       JiVitA-3         BANGLADESH                     0               2359   10681
Birth       JiVitA-4         BANGLADESH                     1               1994    2517
Birth       JiVitA-4         BANGLADESH                     0                523    2517
Birth       Keneba           GAMBIA                         1                363    1253
Birth       Keneba           GAMBIA                         0                890    1253
Birth       MAL-ED           BANGLADESH                     1                 32     221
Birth       MAL-ED           BANGLADESH                     0                189     221
Birth       MAL-ED           BRAZIL                         1                  5      65
Birth       MAL-ED           BRAZIL                         0                 60      65
Birth       MAL-ED           INDIA                          1                  1      42
Birth       MAL-ED           INDIA                          0                 41      42
Birth       MAL-ED           NEPAL                          1                  0      26
Birth       MAL-ED           NEPAL                          0                 26      26
Birth       MAL-ED           PERU                           1                  5     223
Birth       MAL-ED           PERU                           0                218     223
Birth       MAL-ED           SOUTH AFRICA                   1                  1     105
Birth       MAL-ED           SOUTH AFRICA                   0                104     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       PROVIDE          BANGLADESH                     1                119     490
Birth       PROVIDE          BANGLADESH                     0                371     490
6 months    CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    EE               PAKISTAN                       1                  4       9
6 months    EE               PAKISTAN                       0                  5       9
6 months    GMS-Nepal        NEPAL                          1                422     527
6 months    GMS-Nepal        NEPAL                          0                105     527
6 months    IRC              INDIA                          1                  0       4
6 months    IRC              INDIA                          0                  4       4
6 months    JiVitA-3         BANGLADESH                     1               6578    8552
6 months    JiVitA-3         BANGLADESH                     0               1974    8552
6 months    JiVitA-4         BANGLADESH                     1               3241    4185
6 months    JiVitA-4         BANGLADESH                     0                944    4185
6 months    Keneba           GAMBIA                         1                507    1790
6 months    Keneba           GAMBIA                         0               1283    1790
6 months    LCNI-5           MALAWI                         1                 47     272
6 months    LCNI-5           MALAWI                         0                225     272
6 months    MAL-ED           BANGLADESH                     1                 30     240
6 months    MAL-ED           BANGLADESH                     0                210     240
6 months    MAL-ED           BRAZIL                         1                 12     209
6 months    MAL-ED           BRAZIL                         0                197     209
6 months    MAL-ED           INDIA                          1                  9     233
6 months    MAL-ED           INDIA                          0                224     233
6 months    MAL-ED           NEPAL                          1                  4     235
6 months    MAL-ED           NEPAL                          0                231     235
6 months    MAL-ED           PERU                           1                  6     272
6 months    MAL-ED           PERU                           0                266     272
6 months    MAL-ED           SOUTH AFRICA                   1                  1     250
6 months    MAL-ED           SOUTH AFRICA                   0                249     250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239     243
6 months    PROVIDE          BANGLADESH                     1                145     603
6 months    PROVIDE          BANGLADESH                     0                458     603
6 months    SAS-FoodSuppl    INDIA                          1                  0     168
6 months    SAS-FoodSuppl    INDIA                          0                168     168
24 months   CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   EE               PAKISTAN                       1                  0       3
24 months   EE               PAKISTAN                       0                  3       3
24 months   GMS-Nepal        NEPAL                          1                363     446
24 months   GMS-Nepal        NEPAL                          0                 83     446
24 months   IRC              INDIA                          1                  0       4
24 months   IRC              INDIA                          0                  4       4
24 months   JiVitA-3         BANGLADESH                     1               3325    4334
24 months   JiVitA-3         BANGLADESH                     0               1009    4334
24 months   JiVitA-4         BANGLADESH                     1               3145    4049
24 months   JiVitA-4         BANGLADESH                     0                904    4049
24 months   Keneba           GAMBIA                         1                424    1394
24 months   Keneba           GAMBIA                         0                970    1394
24 months   LCNI-5           MALAWI                         1                 34     189
24 months   LCNI-5           MALAWI                         0                155     189
24 months   MAL-ED           BANGLADESH                     1                 25     212
24 months   MAL-ED           BANGLADESH                     0                187     212
24 months   MAL-ED           BRAZIL                         1                 11     169
24 months   MAL-ED           BRAZIL                         0                158     169
24 months   MAL-ED           INDIA                          1                  9     224
24 months   MAL-ED           INDIA                          0                215     224
24 months   MAL-ED           NEPAL                          1                  4     227
24 months   MAL-ED           NEPAL                          0                223     227
24 months   MAL-ED           PERU                           1                  4     201
24 months   MAL-ED           PERU                           0                197     201
24 months   MAL-ED           SOUTH AFRICA                   1                  1     235
24 months   MAL-ED           SOUTH AFRICA                   0                234     235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210     213
24 months   PROVIDE          BANGLADESH                     1                141     577
24 months   PROVIDE          BANGLADESH                     0                436     577


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
![](/tmp/8edb8d74-676d-4fc5-88aa-df4f29c992b6/d0d51fb2-f67f-41b9-9270-c470b23e9bb2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8edb8d74-676d-4fc5-88aa-df4f29c992b6/d0d51fb2-f67f-41b9-9270-c470b23e9bb2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8edb8d74-676d-4fc5-88aa-df4f29c992b6/d0d51fb2-f67f-41b9-9270-c470b23e9bb2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0022112   -1.0981842   -0.9062382
Birth       GMS-Nepal   NEPAL        0                    NA                -1.0480478   -1.2430469   -0.8530487
Birth       JiVitA-3    BANGLADESH   1                    NA                -1.5731886   -1.6012053   -1.5451720
Birth       JiVitA-3    BANGLADESH   0                    NA                -1.5881591   -1.6330490   -1.5432692
Birth       JiVitA-4    BANGLADESH   1                    NA                -1.5029710   -1.5561657   -1.4497763
Birth       JiVitA-4    BANGLADESH   0                    NA                -1.5951015   -1.7225319   -1.4676711
Birth       Keneba      GAMBIA       1                    NA                 0.0311301   -0.0871772    0.1494375
Birth       Keneba      GAMBIA       0                    NA                 0.0341100   -0.0467838    0.1150038
Birth       MAL-ED      BANGLADESH   1                    NA                -1.1795485   -1.4561444   -0.9029525
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0701683   -1.2216128   -0.9187239
Birth       MAL-ED      BRAZIL       1                    NA                -1.4240000   -2.4288338   -0.4191662
Birth       MAL-ED      BRAZIL       0                    NA                -0.6136667   -0.8950902   -0.3322431
Birth       MAL-ED      PERU         1                    NA                -1.0080000   -1.6595862   -0.3564138
Birth       MAL-ED      PERU         0                    NA                -0.8886239   -1.0108291   -0.7664186
Birth       PROVIDE     BANGLADESH   1                    NA                -0.9368732   -1.0718234   -0.8019229
Birth       PROVIDE     BANGLADESH   0                    NA                -0.8611705   -0.9494300   -0.7729111
6 months    GMS-Nepal   NEPAL        1                    NA                -1.2870603   -1.3741734   -1.1999471
6 months    GMS-Nepal   NEPAL        0                    NA                -1.5260336   -1.7237839   -1.3282833
6 months    JiVitA-3    BANGLADESH   1                    NA                -1.3095136   -1.3414881   -1.2775391
6 months    JiVitA-3    BANGLADESH   0                    NA                -1.3365911   -1.3909948   -1.2821875
6 months    JiVitA-4    BANGLADESH   1                    NA                -1.3149451   -1.3563489   -1.2735414
6 months    JiVitA-4    BANGLADESH   0                    NA                -1.4786333   -1.5696618   -1.3876049
6 months    Keneba      GAMBIA       1                    NA                -0.9114897   -1.0018917   -0.8210878
6 months    Keneba      GAMBIA       0                    NA                -0.9448898   -1.0047269   -0.8850528
6 months    LCNI-5      MALAWI       1                    NA                -1.7537088   -2.0532935   -1.4541241
6 months    LCNI-5      MALAWI       0                    NA                -1.6270681   -1.7582128   -1.4959233
6 months    MAL-ED      BANGLADESH   1                    NA                -1.2570290   -1.5570155   -0.9570426
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2067709   -1.3342289   -1.0793128
6 months    MAL-ED      BRAZIL       1                    NA                 0.2932607   -0.6195264    1.2060478
6 months    MAL-ED      BRAZIL       0                    NA                 0.0335341   -0.1118276    0.1788959
6 months    MAL-ED      INDIA        1                    NA                -0.9116667   -1.7458275   -0.0775058
6 months    MAL-ED      INDIA        0                    NA                -1.2173884   -1.3368172   -1.0979596
6 months    MAL-ED      PERU         1                    NA                -1.4083333   -2.0844008   -0.7322659
6 months    MAL-ED      PERU         0                    NA                -1.3211685   -1.4309807   -1.2113564
6 months    PROVIDE     BANGLADESH   1                    NA                -1.0877367   -1.2221308   -0.9533427
6 months    PROVIDE     BANGLADESH   0                    NA                -1.0859931   -1.1726755   -0.9993108
24 months   GMS-Nepal   NEPAL        1                    NA                -1.8697241   -1.9635134   -1.7759348
24 months   GMS-Nepal   NEPAL        0                    NA                -1.9303656   -2.1630974   -1.6976338
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.9975826   -2.0401087   -1.9550565
24 months   JiVitA-3    BANGLADESH   0                    NA                -2.0384161   -2.1156217   -1.9612105
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.7837824   -1.8268794   -1.7406854
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.8230936   -1.9006535   -1.7455337
24 months   Keneba      GAMBIA       1                    NA                -1.5386587   -1.6293466   -1.4479709
24 months   Keneba      GAMBIA       0                    NA                -1.6221926   -1.6895045   -1.5548807
24 months   LCNI-5      MALAWI       1                    NA                -1.9918220   -2.2914309   -1.6922132
24 months   LCNI-5      MALAWI       0                    NA                -1.9481112   -2.1070908   -1.7891315
24 months   MAL-ED      BANGLADESH   1                    NA                -2.2597982   -2.6940605   -1.8255358
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9745055   -2.1059390   -1.8430720
24 months   MAL-ED      BRAZIL       1                    NA                 0.2399686   -0.6030992    1.0830363
24 months   MAL-ED      BRAZIL       0                    NA                -0.0045046   -0.1772559    0.1682466
24 months   MAL-ED      INDIA        1                    NA                -2.2088889   -2.9737293   -1.4440485
24 months   MAL-ED      INDIA        0                    NA                -1.8773023   -2.0042653   -1.7503393
24 months   PROVIDE     BANGLADESH   1                    NA                -1.6888637   -1.8500154   -1.5277119
24 months   PROVIDE     BANGLADESH   0                    NA                -1.5746598   -1.6709304   -1.4783892


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
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0458367   -0.2562232    0.1645498
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 -0.0149705   -0.0632445    0.0333035
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0921305   -0.2296328    0.0453718
Birth       Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba      GAMBIA       0                    1                  0.0029799   -0.1294394    0.1353991
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                  0.1093801   -0.2072263    0.4259865
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.8103333   -0.2331657    1.8538323
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                  0.1193761   -0.5435709    0.7823232
Birth       PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE     BANGLADESH   0                    1                  0.0757026   -0.0731148    0.2245200
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.2389733   -0.4552428   -0.0227039
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 -0.0270775   -0.0861486    0.0319936
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.1636882   -0.2621317   -0.0652447
6 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba      GAMBIA       0                    1                 -0.0334001   -0.1409122    0.0741120
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.1266407   -0.1990874    0.4523689
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0502582   -0.2756551    0.3761715
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.2597266   -1.1842086    0.6647554
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.3057217   -1.1483886    0.5369452
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                  0.0871648   -0.5977629    0.7720924
6 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE     BANGLADESH   0                    1                  0.0017436   -0.1566446    0.1601317
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.0606415   -0.3106706    0.1893876
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 -0.0408335   -0.1268739    0.0452070
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0393112   -0.1232755    0.0446532
24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba      GAMBIA       0                    1                 -0.0835339   -0.1949220    0.0278543
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0437109   -0.2961004    0.3835221
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.2852927   -0.1699606    0.7405459
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                 -0.2444732   -1.1055256    0.6165792
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.3315866   -0.4437201    1.1068933
24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE     BANGLADESH   0                    1                  0.1142039   -0.0717945    0.3002023


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0277508   -0.0697632    0.0142615
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0030814   -0.0137368    0.0075740
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0205014   -0.0492929    0.0082901
Birth       Keneba      GAMBIA       1                    NA                 0.0006855   -0.0938753    0.0952463
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0993222   -0.1728065    0.3714509
Birth       MAL-ED      BRAZIL       1                    NA                 0.7480000   -0.2166815    1.7126815
Birth       MAL-ED      PERU         1                    NA                 0.1166996   -0.5296780    0.7630771
Birth       PROVIDE     BANGLADESH   1                    NA                 0.0599140   -0.0532011    0.1730291
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0467032   -0.0895907   -0.0038156
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0057845   -0.0194025    0.0078335
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0365435   -0.0587849   -0.0143021
6 months    Keneba      GAMBIA       1                    NA                -0.0240924   -0.1012258    0.0530410
6 months    LCNI-5      MALAWI       1                    NA                 0.1141132   -0.1592678    0.3874943
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0497651   -0.2352661    0.3347964
6 months    MAL-ED      BRAZIL       1                    NA                -0.2456850   -1.1263024    0.6349325
6 months    MAL-ED      INDIA        1                    NA                -0.2939127   -1.1040658    0.5162403
6 months    MAL-ED      PERU         1                    NA                 0.0852420   -0.5825642    0.7530482
6 months    PROVIDE     BANGLADESH   1                    NA                 0.0021784   -0.1186661    0.1230230
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0133476   -0.0595113    0.0328160
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0096163   -0.0296831    0.0104506
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0085021   -0.0273273    0.0103231
24 months   Keneba      GAMBIA       1                    NA                -0.0595369   -0.1372049    0.0181311
24 months   LCNI-5      MALAWI       1                    NA                 0.0266898   -0.2525262    0.3059057
24 months   MAL-ED      BANGLADESH   1                    NA                 0.2814019   -0.1241830    0.6869868
24 months   MAL-ED      BRAZIL       1                    NA                -0.2338542   -1.0447759    0.5770676
24 months   MAL-ED      INDIA        1                    NA                 0.3182639   -0.4259412    1.0624690
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0865933   -0.0540640    0.2272507

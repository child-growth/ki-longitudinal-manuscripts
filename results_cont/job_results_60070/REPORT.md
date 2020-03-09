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

agecat      studyid          country                        exclfeed6    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       EE               PAKISTAN                       1                38      42
Birth       EE               PAKISTAN                       0                 4      42
Birth       GMS-Nepal        NEPAL                          1               419     563
Birth       GMS-Nepal        NEPAL                          0               144     563
Birth       IRC              INDIA                          1                 0      14
Birth       IRC              INDIA                          0                14      14
Birth       JiVitA-3         BANGLADESH                     1             10452   13423
Birth       JiVitA-3         BANGLADESH                     0              2971   13423
Birth       JiVitA-4         BANGLADESH                     1              2098    2632
Birth       JiVitA-4         BANGLADESH                     0               534    2632
Birth       Keneba           GAMBIA                         1               485    1403
Birth       Keneba           GAMBIA                         0               918    1403
Birth       MAL-ED           BANGLADESH                     1                31     205
Birth       MAL-ED           BANGLADESH                     0               174     205
Birth       MAL-ED           BRAZIL                         1                 2      60
Birth       MAL-ED           BRAZIL                         0                58      60
Birth       MAL-ED           INDIA                          1                 1      39
Birth       MAL-ED           INDIA                          0                38      39
Birth       MAL-ED           NEPAL                          1                 2      24
Birth       MAL-ED           NEPAL                          0                22      24
Birth       MAL-ED           PERU                           1                 2     213
Birth       MAL-ED           PERU                           0               211     213
Birth       MAL-ED           SOUTH AFRICA                   1                 0      91
Birth       MAL-ED           SOUTH AFRICA                   0                91      91
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               113     113
Birth       PROVIDE          BANGLADESH                     1               159     539
Birth       PROVIDE          BANGLADESH                     0               380     539
Birth       SAS-CompFeed     INDIA                          1               346     364
Birth       SAS-CompFeed     INDIA                          0                18     364
6 months    CMC-V-BCS-2002   INDIA                          1                19      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    EE               PAKISTAN                       1                43      48
6 months    EE               PAKISTAN                       0                 5      48
6 months    GMS-Nepal        NEPAL                          1               406     547
6 months    GMS-Nepal        NEPAL                          0               141     547
6 months    IRC              INDIA                          1                 0      14
6 months    IRC              INDIA                          0                14      14
6 months    JiVitA-3         BANGLADESH                     1              7628    9901
6 months    JiVitA-3         BANGLADESH                     0              2273    9901
6 months    JiVitA-4         BANGLADESH                     1              3316    4272
6 months    JiVitA-4         BANGLADESH                     0               956    4272
6 months    Keneba           GAMBIA                         1               586    1908
6 months    Keneba           GAMBIA                         0              1322    1908
6 months    LCNI-5           MALAWI                         1                47     272
6 months    LCNI-5           MALAWI                         0               225     272
6 months    MAL-ED           BANGLADESH                     1                33     231
6 months    MAL-ED           BANGLADESH                     0               198     231
6 months    MAL-ED           BRAZIL                         1                12     209
6 months    MAL-ED           BRAZIL                         0               197     209
6 months    MAL-ED           INDIA                          1                 2     218
6 months    MAL-ED           INDIA                          0               216     218
6 months    MAL-ED           NEPAL                          1                 5     225
6 months    MAL-ED           NEPAL                          0               220     225
6 months    MAL-ED           PERU                           1                 5     271
6 months    MAL-ED           PERU                           0               266     271
6 months    MAL-ED           SOUTH AFRICA                   1                 0     233
6 months    MAL-ED           SOUTH AFRICA                   0               233     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               232     232
6 months    PROVIDE          BANGLADESH                     1               141     604
6 months    PROVIDE          BANGLADESH                     0               463     604
6 months    SAS-CompFeed     INDIA                          1               379     398
6 months    SAS-CompFeed     INDIA                          0                19     398
6 months    SAS-FoodSuppl    INDIA                          1                 0     168
6 months    SAS-FoodSuppl    INDIA                          0               168     168
24 months   CMC-V-BCS-2002   INDIA                          1                19      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   EE               PAKISTAN                       1                20      23
24 months   EE               PAKISTAN                       0                 3      23
24 months   GMS-Nepal        NEPAL                          1               356     470
24 months   GMS-Nepal        NEPAL                          0               114     470
24 months   IRC              INDIA                          1                 0      14
24 months   IRC              INDIA                          0                14      14
24 months   JiVitA-3         BANGLADESH                     1              3916    5088
24 months   JiVitA-3         BANGLADESH                     0              1172    5088
24 months   JiVitA-4         BANGLADESH                     1              3280    4199
24 months   JiVitA-4         BANGLADESH                     0               919    4199
24 months   Keneba           GAMBIA                         1               515    1513
24 months   Keneba           GAMBIA                         0               998    1513
24 months   LCNI-5           MALAWI                         1                34     189
24 months   LCNI-5           MALAWI                         0               155     189
24 months   MAL-ED           BANGLADESH                     1                31     205
24 months   MAL-ED           BANGLADESH                     0               174     205
24 months   MAL-ED           BRAZIL                         1                11     169
24 months   MAL-ED           BRAZIL                         0               158     169
24 months   MAL-ED           INDIA                          1                 2     209
24 months   MAL-ED           INDIA                          0               207     209
24 months   MAL-ED           NEPAL                          1                 5     219
24 months   MAL-ED           NEPAL                          0               214     219
24 months   MAL-ED           PERU                           1                 3     201
24 months   MAL-ED           PERU                           0               198     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0     216
24 months   MAL-ED           SOUTH AFRICA                   0               216     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202     202
24 months   PROVIDE          BANGLADESH                     1               137     578
24 months   PROVIDE          BANGLADESH                     0               441     578


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
![](/tmp/9d604c31-35a7-418c-b36d-5ff4bf6bb1ea/f3b98541-84e3-4bdc-98f6-2b014b0b818b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9d604c31-35a7-418c-b36d-5ff4bf6bb1ea/f3b98541-84e3-4bdc-98f6-2b014b0b818b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9d604c31-35a7-418c-b36d-5ff4bf6bb1ea/f3b98541-84e3-4bdc-98f6-2b014b0b818b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.0531423   -1.1506092   -0.9556754
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1096201   -1.2871172   -0.9321231
Birth       JiVitA-3       BANGLADESH   1                    NA                -1.5945946   -1.6193626   -1.5698266
Birth       JiVitA-3       BANGLADESH   0                    NA                -1.6003724   -1.6395871   -1.5611578
Birth       JiVitA-4       BANGLADESH   1                    NA                -1.5068594   -1.5591800   -1.4545388
Birth       JiVitA-4       BANGLADESH   0                    NA                -1.6011916   -1.7310205   -1.4713628
Birth       Keneba         GAMBIA       1                    NA                -0.0034860   -0.1110386    0.1040666
Birth       Keneba         GAMBIA       0                    NA                 0.0231390   -0.0556578    0.1019359
Birth       MAL-ED         BANGLADESH   1                    NA                -1.2500190   -1.5563710   -0.9436671
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0434154   -1.1967153   -0.8901155
Birth       PROVIDE        BANGLADESH   1                    NA                -0.9326540   -1.0699017   -0.7954063
Birth       PROVIDE        BANGLADESH   0                    NA                -0.8747753   -0.9601400   -0.7894106
Birth       SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
6 months    EE             PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE             PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal      NEPAL        1                    NA                -1.3081902   -1.3971897   -1.2191907
6 months    GMS-Nepal      NEPAL        0                    NA                -1.5048032   -1.6720802   -1.3375263
6 months    JiVitA-3       BANGLADESH   1                    NA                -1.3075557   -1.3379543   -1.2771572
6 months    JiVitA-3       BANGLADESH   0                    NA                -1.3387142   -1.3881391   -1.2892894
6 months    JiVitA-4       BANGLADESH   1                    NA                -1.3107620   -1.3518929   -1.2696311
6 months    JiVitA-4       BANGLADESH   0                    NA                -1.4877113   -1.5810310   -1.3943916
6 months    Keneba         GAMBIA       1                    NA                -0.8922996   -0.9806167   -0.8039824
6 months    Keneba         GAMBIA       0                    NA                -0.9492308   -1.0081346   -0.8903270
6 months    LCNI-5         MALAWI       1                    NA                -1.7673868   -2.0545123   -1.4802613
6 months    LCNI-5         MALAWI       0                    NA                -1.6297850   -1.7610555   -1.4985144
6 months    MAL-ED         BANGLADESH   1                    NA                -1.1576568   -1.4773590   -0.8379545
6 months    MAL-ED         BANGLADESH   0                    NA                -1.1888015   -1.3198684   -1.0577345
6 months    MAL-ED         BRAZIL       1                    NA                 0.1031762   -0.7439004    0.9502529
6 months    MAL-ED         BRAZIL       0                    NA                 0.0399905   -0.1054791    0.1854600
6 months    MAL-ED         NEPAL        1                    NA                -0.4050000   -1.0737079    0.2637079
6 months    MAL-ED         NEPAL        0                    NA                -0.5658106   -0.6826403   -0.4489809
6 months    MAL-ED         PERU         1                    NA                -1.8680000   -2.2794681   -1.4565319
6 months    MAL-ED         PERU         0                    NA                -1.3117701   -1.4224656   -1.2010745
6 months    PROVIDE        BANGLADESH   1                    NA                -1.0892056   -1.2251473   -0.9532639
6 months    PROVIDE        BANGLADESH   0                    NA                -1.0930382   -1.1810144   -1.0050620
6 months    SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL        1                    NA                -1.9061374   -2.0013217   -1.8109531
24 months   GMS-Nepal      NEPAL        0                    NA                -1.8811528   -2.0740944   -1.6882112
24 months   JiVitA-3       BANGLADESH   1                    NA                -2.0016223   -2.0416059   -1.9616387
24 months   JiVitA-3       BANGLADESH   0                    NA                -2.0445968   -2.1143402   -1.9748535
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.7804050   -1.8222684   -1.7385416
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.8308573   -1.9081263   -1.7535882
24 months   Keneba         GAMBIA       1                    NA                -1.5095558   -1.5938161   -1.4252955
24 months   Keneba         GAMBIA       0                    NA                -1.6166388   -1.6827692   -1.5505084
24 months   LCNI-5         MALAWI       1                    NA                -2.0144281   -2.3174483   -1.7114079
24 months   LCNI-5         MALAWI       0                    NA                -1.9513512   -2.1097187   -1.7929838
24 months   MAL-ED         BANGLADESH   1                    NA                -1.8732754   -2.3414824   -1.4050684
24 months   MAL-ED         BANGLADESH   0                    NA                -1.9573019   -2.0944706   -1.8201332
24 months   MAL-ED         BRAZIL       1                    NA                -0.7881857   -1.5641772   -0.0121941
24 months   MAL-ED         BRAZIL       0                    NA                 0.0143960   -0.1583337    0.1871257
24 months   MAL-ED         NEPAL        1                    NA                -1.1950000   -1.7707330   -0.6192670
24 months   MAL-ED         NEPAL        0                    NA                -1.3216589   -1.4457846   -1.1975331
24 months   PROVIDE        BANGLADESH   1                    NA                -1.6807751   -1.8401741   -1.5213761
24 months   PROVIDE        BANGLADESH   0                    NA                -1.5659422   -1.6623204   -1.4695640


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3       BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4       BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       Keneba         GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
6 months    EE             PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal      NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3       BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4       BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    Keneba         GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    LCNI-5         MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3       BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   Keneba         GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   LCNI-5         MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0564778   -0.2520908    0.1391351
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                 -0.0057778   -0.0464422    0.0348865
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0943322   -0.2337518    0.0450873
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                  0.0266250   -0.0966838    0.1499339
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                  0.2066036   -0.1368100    0.5500173
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0578787   -0.0931937    0.2089511
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.1966131   -0.3855568   -0.0076693
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                 -0.0311585   -0.0835991    0.0212821
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.1769493   -0.2774411   -0.0764575
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.0569312   -0.1622352    0.0483728
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.1376018   -0.1770249    0.4522286
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.0311447   -0.3765551    0.3142657
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.0631858   -0.9225565    0.7961849
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                 -0.1608106   -0.8396474    0.5180262
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                  0.5562299    0.1301320    0.9823279
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.0038326   -0.1658047    0.1581395
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                  0.0249846   -0.1879948    0.2379640
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                 -0.0429745   -0.1197090    0.0337600
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0504523   -0.1331102    0.0322056
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1070830   -0.2128962   -0.0012697
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0630769   -0.2795760    0.4057298
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                 -0.0840265   -0.5722298    0.4041769
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.8025816    0.0061971    1.5989662
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                 -0.1266589   -0.7156204    0.4623026
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                  0.1148329   -0.0700051    0.2996709


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0109785   -0.0609784    0.0390215
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.0009392   -0.0099534    0.0080751
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0204544   -0.0491533    0.0082444
Birth       Keneba         GAMBIA       1                    NA                 0.0161303   -0.0648888    0.0971495
Birth       MAL-ED         BANGLADESH   1                    NA                 0.1969946   -0.0955324    0.4895217
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0475520   -0.0676265    0.1627304
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
6 months    EE             PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0458379   -0.0952049    0.0035292
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0062701   -0.0183075    0.0057672
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0374684   -0.0590562   -0.0158805
6 months    Keneba         GAMBIA       1                    NA                -0.0408112   -0.1140972    0.0324748
6 months    LCNI-5         MALAWI       1                    NA                 0.1277912   -0.1337162    0.3892987
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0324226   -0.3345958    0.2697505
6 months    MAL-ED         BRAZIL       1                    NA                -0.0556005   -0.8703759    0.7591749
6 months    MAL-ED         NEPAL        1                    NA                -0.1572370   -0.8191102    0.5046361
6 months    MAL-ED         PERU         1                    NA                 0.5459674    0.1304259    0.9615089
6 months    PROVIDE        BANGLADESH   1                    NA                -0.0024859   -0.1267263    0.1217544
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0059246   -0.0453583    0.0572076
24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0101780   -0.0278677    0.0075118
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0110716   -0.0286696    0.0065264
24 months   Keneba         GAMBIA       1                    NA                -0.0780735   -0.1484616   -0.0076854
24 months   LCNI-5         MALAWI       1                    NA                 0.0492958   -0.2330953    0.3316870
24 months   MAL-ED         BANGLADESH   1                    NA                -0.0843587   -0.5146728    0.3459554
24 months   MAL-ED         BRAZIL       1                    NA                 0.7943001    0.0413729    1.5472272
24 months   MAL-ED         NEPAL        1                    NA                -0.1237671   -0.6980101    0.4504758
24 months   PROVIDE        BANGLADESH   1                    NA                 0.0783530   -0.0629763    0.2196823

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

agecat      studyid          country                        exclfeed6    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7  haz              
Birth       EE               PAKISTAN                       1                38      42  haz              
Birth       EE               PAKISTAN                       0                 4      42  haz              
Birth       GMS-Nepal        NEPAL                          1               419     563  haz              
Birth       GMS-Nepal        NEPAL                          0               144     563  haz              
Birth       IRC              INDIA                          1                 0      14  haz              
Birth       IRC              INDIA                          0                14      14  haz              
Birth       JiVitA-3         BANGLADESH                     1             10452   13423  haz              
Birth       JiVitA-3         BANGLADESH                     0              2971   13423  haz              
Birth       JiVitA-4         BANGLADESH                     1              2098    2632  haz              
Birth       JiVitA-4         BANGLADESH                     0               534    2632  haz              
Birth       Keneba           GAMBIA                         1               485    1403  haz              
Birth       Keneba           GAMBIA                         0               918    1403  haz              
Birth       MAL-ED           BANGLADESH                     1                31     205  haz              
Birth       MAL-ED           BANGLADESH                     0               174     205  haz              
Birth       MAL-ED           BRAZIL                         1                 2      60  haz              
Birth       MAL-ED           BRAZIL                         0                58      60  haz              
Birth       MAL-ED           INDIA                          1                 1      39  haz              
Birth       MAL-ED           INDIA                          0                38      39  haz              
Birth       MAL-ED           NEPAL                          1                 2      24  haz              
Birth       MAL-ED           NEPAL                          0                22      24  haz              
Birth       MAL-ED           PERU                           1                 2     213  haz              
Birth       MAL-ED           PERU                           0               211     213  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                 0      91  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                91      91  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
Birth       PROVIDE          BANGLADESH                     1               159     539  haz              
Birth       PROVIDE          BANGLADESH                     0               380     539  haz              
Birth       SAS-CompFeed     INDIA                          1               346     364  haz              
Birth       SAS-CompFeed     INDIA                          0                18     364  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                19      19  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
6 months    EE               PAKISTAN                       1                43      48  haz              
6 months    EE               PAKISTAN                       0                 5      48  haz              
6 months    GMS-Nepal        NEPAL                          1               406     547  haz              
6 months    GMS-Nepal        NEPAL                          0               141     547  haz              
6 months    IRC              INDIA                          1                 0      14  haz              
6 months    IRC              INDIA                          0                14      14  haz              
6 months    JiVitA-3         BANGLADESH                     1              7628    9901  haz              
6 months    JiVitA-3         BANGLADESH                     0              2273    9901  haz              
6 months    JiVitA-4         BANGLADESH                     1              3316    4272  haz              
6 months    JiVitA-4         BANGLADESH                     0               956    4272  haz              
6 months    Keneba           GAMBIA                         1               586    1908  haz              
6 months    Keneba           GAMBIA                         0              1322    1908  haz              
6 months    LCNI-5           MALAWI                         1                47     272  haz              
6 months    LCNI-5           MALAWI                         0               225     272  haz              
6 months    MAL-ED           BANGLADESH                     1                33     231  haz              
6 months    MAL-ED           BANGLADESH                     0               198     231  haz              
6 months    MAL-ED           BRAZIL                         1                12     209  haz              
6 months    MAL-ED           BRAZIL                         0               197     209  haz              
6 months    MAL-ED           INDIA                          1                 2     218  haz              
6 months    MAL-ED           INDIA                          0               216     218  haz              
6 months    MAL-ED           NEPAL                          1                 5     225  haz              
6 months    MAL-ED           NEPAL                          0               220     225  haz              
6 months    MAL-ED           PERU                           1                 5     271  haz              
6 months    MAL-ED           PERU                           0               266     271  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                 0     233  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               233     233  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     232  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               232     232  haz              
6 months    PROVIDE          BANGLADESH                     1               141     604  haz              
6 months    PROVIDE          BANGLADESH                     0               463     604  haz              
6 months    SAS-CompFeed     INDIA                          1               379     398  haz              
6 months    SAS-CompFeed     INDIA                          0                19     398  haz              
6 months    SAS-FoodSuppl    INDIA                          1                 0     168  haz              
6 months    SAS-FoodSuppl    INDIA                          0               168     168  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                19      19  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
24 months   EE               PAKISTAN                       1                20      23  haz              
24 months   EE               PAKISTAN                       0                 3      23  haz              
24 months   GMS-Nepal        NEPAL                          1               356     470  haz              
24 months   GMS-Nepal        NEPAL                          0               114     470  haz              
24 months   IRC              INDIA                          1                 0      14  haz              
24 months   IRC              INDIA                          0                14      14  haz              
24 months   JiVitA-3         BANGLADESH                     1              3916    5088  haz              
24 months   JiVitA-3         BANGLADESH                     0              1172    5088  haz              
24 months   JiVitA-4         BANGLADESH                     1              3280    4199  haz              
24 months   JiVitA-4         BANGLADESH                     0               919    4199  haz              
24 months   Keneba           GAMBIA                         1               515    1513  haz              
24 months   Keneba           GAMBIA                         0               998    1513  haz              
24 months   LCNI-5           MALAWI                         1                34     189  haz              
24 months   LCNI-5           MALAWI                         0               155     189  haz              
24 months   MAL-ED           BANGLADESH                     1                31     205  haz              
24 months   MAL-ED           BANGLADESH                     0               174     205  haz              
24 months   MAL-ED           BRAZIL                         1                11     169  haz              
24 months   MAL-ED           BRAZIL                         0               158     169  haz              
24 months   MAL-ED           INDIA                          1                 2     209  haz              
24 months   MAL-ED           INDIA                          0               207     209  haz              
24 months   MAL-ED           NEPAL                          1                 5     219  haz              
24 months   MAL-ED           NEPAL                          0               214     219  haz              
24 months   MAL-ED           PERU                           1                 3     201  haz              
24 months   MAL-ED           PERU                           0               198     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                 0     216  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               216     216  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     202  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202     202  haz              
24 months   PROVIDE          BANGLADESH                     1               137     578  haz              
24 months   PROVIDE          BANGLADESH                     0               441     578  haz              


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
![](/tmp/f77c13b3-91f0-4b3b-bc07-484ceb950876/ca36b097-1a4c-4c09-9f6b-a76d6b6297f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f77c13b3-91f0-4b3b-bc07-484ceb950876/ca36b097-1a4c-4c09-9f6b-a76d6b6297f4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f77c13b3-91f0-4b3b-bc07-484ceb950876/ca36b097-1a4c-4c09-9f6b-a76d6b6297f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.0491969   -1.1464576   -0.9519361
Birth       GMS-Nepal      NEPAL        0                    NA                -1.0907091   -1.2656520   -0.9157662
Birth       JiVitA-3       BANGLADESH   1                    NA                -1.5945351   -1.6193047   -1.5697654
Birth       JiVitA-3       BANGLADESH   0                    NA                -1.5986809   -1.6379410   -1.5594208
Birth       JiVitA-4       BANGLADESH   1                    NA                -1.5069126   -1.5590556   -1.4547695
Birth       JiVitA-4       BANGLADESH   0                    NA                -1.6033789   -1.7325687   -1.4741890
Birth       Keneba         GAMBIA       1                    NA                -0.0070026   -0.1127767    0.0987716
Birth       Keneba         GAMBIA       0                    NA                 0.0248980   -0.0539765    0.1037726
Birth       MAL-ED         BANGLADESH   1                    NA                -1.1006189   -1.4242414   -0.7769964
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0382802   -1.1918172   -0.8847431
Birth       PROVIDE        BANGLADESH   1                    NA                -0.9296704   -1.0568177   -0.8025230
Birth       PROVIDE        BANGLADESH   0                    NA                -0.8697766   -0.9567599   -0.7827933
Birth       SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
6 months    EE             PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE             PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal      NEPAL        1                    NA                -1.3042878   -1.3926315   -1.2159440
6 months    GMS-Nepal      NEPAL        0                    NA                -1.4782660   -1.6421442   -1.3143879
6 months    JiVitA-3       BANGLADESH   1                    NA                -1.3072881   -1.3376854   -1.2768908
6 months    JiVitA-3       BANGLADESH   0                    NA                -1.3359653   -1.3853924   -1.2865383
6 months    JiVitA-4       BANGLADESH   1                    NA                -1.3084363   -1.3492282   -1.2676444
6 months    JiVitA-4       BANGLADESH   0                    NA                -1.4727870   -1.5627342   -1.3828398
6 months    Keneba         GAMBIA       1                    NA                -0.8930514   -0.9804593   -0.8056435
6 months    Keneba         GAMBIA       0                    NA                -0.9486148   -1.0073888   -0.8898408
6 months    LCNI-5         MALAWI       1                    NA                -1.7159043   -2.0029315   -1.4288771
6 months    LCNI-5         MALAWI       0                    NA                -1.6231132   -1.7537391   -1.4924874
6 months    MAL-ED         BANGLADESH   1                    NA                -1.2195164   -1.5370123   -0.9020205
6 months    MAL-ED         BANGLADESH   0                    NA                -1.1860737   -1.3182100   -1.0539374
6 months    MAL-ED         BRAZIL       1                    NA                 0.2118605   -0.6426743    1.0663953
6 months    MAL-ED         BRAZIL       0                    NA                 0.0378494   -0.1079062    0.1836051
6 months    MAL-ED         NEPAL        1                    NA                -0.4050000   -1.0737079    0.2637079
6 months    MAL-ED         NEPAL        0                    NA                -0.5658106   -0.6826403   -0.4489809
6 months    MAL-ED         PERU         1                    NA                -1.8680000   -2.2794681   -1.4565319
6 months    MAL-ED         PERU         0                    NA                -1.3117701   -1.4224656   -1.2010745
6 months    PROVIDE        BANGLADESH   1                    NA                -1.1032987   -1.2364602   -0.9701371
6 months    PROVIDE        BANGLADESH   0                    NA                -1.0936037   -1.1816097   -1.0055977
6 months    SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL        1                    NA                -1.8980410   -1.9933442   -1.8027378
24 months   GMS-Nepal      NEPAL        0                    NA                -1.8422079   -2.0309543   -1.6534616
24 months   JiVitA-3       BANGLADESH   1                    NA                -2.0022061   -2.0421773   -1.9622348
24 months   JiVitA-3       BANGLADESH   0                    NA                -2.0435834   -2.1131611   -1.9740056
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.7801486   -1.8220316   -1.7382655
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.8307325   -1.9073847   -1.7540804
24 months   Keneba         GAMBIA       1                    NA                -1.5112503   -1.5967459   -1.4257547
24 months   Keneba         GAMBIA       0                    NA                -1.6209976   -1.6873572   -1.5546380
24 months   LCNI-5         MALAWI       1                    NA                -2.0479679   -2.3509650   -1.7449709
24 months   LCNI-5         MALAWI       0                    NA                -1.9499035   -2.1089972   -1.7908098
24 months   MAL-ED         BANGLADESH   1                    NA                -1.9019595   -2.3207279   -1.4831911
24 months   MAL-ED         BANGLADESH   0                    NA                -1.9496025   -2.0832736   -1.8159314
24 months   MAL-ED         BRAZIL       1                    NA                 0.4822935   -0.2258022    1.1903891
24 months   MAL-ED         BRAZIL       0                    NA                 0.0207042   -0.1519934    0.1934019
24 months   MAL-ED         NEPAL        1                    NA                -1.1950000   -1.7707330   -0.6192670
24 months   MAL-ED         NEPAL        0                    NA                -1.3216589   -1.4457846   -1.1975331
24 months   PROVIDE        BANGLADESH   1                    NA                -1.7075768   -1.8672574   -1.5478963
24 months   PROVIDE        BANGLADESH   0                    NA                -1.5703542   -1.6663934   -1.4743151


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
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0415122   -0.2339454    0.1509209
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                 -0.0041458   -0.0448316    0.0365399
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0964663   -0.2349229    0.0419903
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                  0.0319006   -0.0896104    0.1534116
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                  0.0623387   -0.2965730    0.4212504
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0598938   -0.0809873    0.2007748
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.1739783   -0.3574530    0.0094965
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                 -0.0286772   -0.0811407    0.0237862
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.1643507   -0.2617226   -0.0669788
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.0555634   -0.1597579    0.0486311
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0927910   -0.2201110    0.4056930
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                  0.0334427   -0.3109315    0.3778168
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.1740111   -1.0412846    0.6932625
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                 -0.1608106   -0.8396474    0.5180262
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                  0.5562299    0.1301320    0.9823279
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                  0.0096949   -0.1499953    0.1693852
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                  0.0558331   -0.1524285    0.2640947
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                 -0.0413773   -0.1178687    0.0351140
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0505840   -0.1328517    0.0316838
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1097473   -0.2169468   -0.0025479
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0980644   -0.2453163    0.4414451
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                 -0.0476430   -0.4875977    0.3923117
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                 -0.4615893   -1.1918357    0.2686572
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                 -0.1266589   -0.7156204    0.4623026
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                  0.1372226   -0.0462007    0.3206459


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0149239   -0.0644618    0.0346139
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.0009987   -0.0099978    0.0080004
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0204013   -0.0490361    0.0082335
Birth       Keneba         GAMBIA       1                    NA                 0.0196469   -0.0594502    0.0987440
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0475945   -0.2581862    0.3533751
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0445683   -0.0601270    0.1492636
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
6 months    EE             PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0497403   -0.0978610   -0.0016195
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0065378   -0.0185641    0.0054885
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0397940   -0.0613672   -0.0182209
6 months    Keneba         GAMBIA       1                    NA                -0.0400594   -0.1123639    0.0322451
6 months    LCNI-5         MALAWI       1                    NA                 0.0763087   -0.1836889    0.3363063
6 months    MAL-ED         BANGLADESH   1                    NA                 0.0294370   -0.2704598    0.3293339
6 months    MAL-ED         BRAZIL       1                    NA                -0.1642847   -0.9871083    0.6585388
6 months    MAL-ED         NEPAL        1                    NA                -0.1572370   -0.8191102    0.5046361
6 months    MAL-ED         PERU         1                    NA                 0.5459674    0.1304259    0.9615089
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0116072   -0.1105069    0.1337212
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0021718   -0.0530422    0.0486987
24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0095943   -0.0272345    0.0080460
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0113280   -0.0288441    0.0061882
24 months   Keneba         GAMBIA       1                    NA                -0.0763790   -0.1477239   -0.0050341
24 months   LCNI-5         MALAWI       1                    NA                 0.0828357   -0.1999410    0.3656123
24 months   MAL-ED         BANGLADESH   1                    NA                -0.0556747   -0.4379944    0.3266450
24 months   MAL-ED         BRAZIL       1                    NA                -0.4761791   -1.1606031    0.2082449
24 months   MAL-ED         NEPAL        1                    NA                -0.1237671   -0.6980101    0.4504758
24 months   PROVIDE        BANGLADESH   1                    NA                 0.1051547   -0.0354340    0.2457434

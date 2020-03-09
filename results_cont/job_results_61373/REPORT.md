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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        anywast06    n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                37     92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1                55     92  haz              
Birth       CMIN             BANGLADESH                     0                15     20  haz              
Birth       CMIN             BANGLADESH                     1                 5     20  haz              
Birth       CONTENT          PERU                           0                 2      2  haz              
Birth       CONTENT          PERU                           1                 0      2  haz              
Birth       EE               PAKISTAN                       0               156    240  haz              
Birth       EE               PAKISTAN                       1                84    240  haz              
Birth       GMS-Nepal        NEPAL                          0               422    684  haz              
Birth       GMS-Nepal        NEPAL                          1               262    684  haz              
Birth       IRC              INDIA                          0               164    388  haz              
Birth       IRC              INDIA                          1               224    388  haz              
Birth       Keneba           GAMBIA                         0               994   1542  haz              
Birth       Keneba           GAMBIA                         1               548   1542  haz              
Birth       MAL-ED           BANGLADESH                     0               177    229  haz              
Birth       MAL-ED           BANGLADESH                     1                52    229  haz              
Birth       MAL-ED           BRAZIL                         0                62     65  haz              
Birth       MAL-ED           BRAZIL                         1                 3     65  haz              
Birth       MAL-ED           INDIA                          0                33     47  haz              
Birth       MAL-ED           INDIA                          1                14     47  haz              
Birth       MAL-ED           NEPAL                          0                23     27  haz              
Birth       MAL-ED           NEPAL                          1                 4     27  haz              
Birth       MAL-ED           PERU                           0               223    233  haz              
Birth       MAL-ED           PERU                           1                10    233  haz              
Birth       MAL-ED           SOUTH AFRICA                   0               101    122  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                21    122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               119    124  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 5    124  haz              
Birth       PROVIDE          BANGLADESH                     0               396    539  haz              
Birth       PROVIDE          BANGLADESH                     1               143    539  haz              
Birth       ResPak           PAKISTAN                       0                28     42  haz              
Birth       ResPak           PAKISTAN                       1                14     42  haz              
6 months    CMC-V-BCS-2002   INDIA                          0               177    365  haz              
6 months    CMC-V-BCS-2002   INDIA                          1               188    365  haz              
6 months    CMIN             BANGLADESH                     0               201    243  haz              
6 months    CMIN             BANGLADESH                     1                42    243  haz              
6 months    CONTENT          PERU                           0               211    215  haz              
6 months    CONTENT          PERU                           1                 4    215  haz              
6 months    EE               PAKISTAN                       0               249    373  haz              
6 months    EE               PAKISTAN                       1               124    373  haz              
6 months    GMS-Nepal        NEPAL                          0               336    564  haz              
6 months    GMS-Nepal        NEPAL                          1               228    564  haz              
6 months    Guatemala BSC    GUATEMALA                      0               270    280  haz              
6 months    Guatemala BSC    GUATEMALA                      1                10    280  haz              
6 months    IRC              INDIA                          0               180    407  haz              
6 months    IRC              INDIA                          1               227    407  haz              
6 months    Keneba           GAMBIA                         0              1441   2056  haz              
6 months    Keneba           GAMBIA                         1               615   2056  haz              
6 months    MAL-ED           BANGLADESH                     0               183    241  haz              
6 months    MAL-ED           BANGLADESH                     1                58    241  haz              
6 months    MAL-ED           BRAZIL                         0               194    209  haz              
6 months    MAL-ED           BRAZIL                         1                15    209  haz              
6 months    MAL-ED           INDIA                          0               159    236  haz              
6 months    MAL-ED           INDIA                          1                77    236  haz              
6 months    MAL-ED           NEPAL                          0               188    236  haz              
6 months    MAL-ED           NEPAL                          1                48    236  haz              
6 months    MAL-ED           PERU                           0               263    273  haz              
6 months    MAL-ED           PERU                           1                10    273  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               223    254  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                31    254  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               234    247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    247  haz              
6 months    PROVIDE          BANGLADESH                     0               450    604  haz              
6 months    PROVIDE          BANGLADESH                     1               154    604  haz              
6 months    ResPak           PAKISTAN                       0               143    239  haz              
6 months    ResPak           PAKISTAN                       1                96    239  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029  haz              
24 months   CMC-V-BCS-2002   INDIA                          0               176    366  haz              
24 months   CMC-V-BCS-2002   INDIA                          1               190    366  haz              
24 months   CMIN             BANGLADESH                     0               200    242  haz              
24 months   CMIN             BANGLADESH                     1                42    242  haz              
24 months   CONTENT          PERU                           0               162    164  haz              
24 months   CONTENT          PERU                           1                 2    164  haz              
24 months   EE               PAKISTAN                       0               109    167  haz              
24 months   EE               PAKISTAN                       1                58    167  haz              
24 months   GMS-Nepal        NEPAL                          0               300    488  haz              
24 months   GMS-Nepal        NEPAL                          1               188    488  haz              
24 months   IRC              INDIA                          0               181    409  haz              
24 months   IRC              INDIA                          1               228    409  haz              
24 months   Keneba           GAMBIA                         0              1091   1563  haz              
24 months   Keneba           GAMBIA                         1               472   1563  haz              
24 months   MAL-ED           BANGLADESH                     0               162    212  haz              
24 months   MAL-ED           BANGLADESH                     1                50    212  haz              
24 months   MAL-ED           BRAZIL                         0               156    169  haz              
24 months   MAL-ED           BRAZIL                         1                13    169  haz              
24 months   MAL-ED           INDIA                          0               151    227  haz              
24 months   MAL-ED           INDIA                          1                76    227  haz              
24 months   MAL-ED           NEPAL                          0               182    228  haz              
24 months   MAL-ED           NEPAL                          1                46    228  haz              
24 months   MAL-ED           PERU                           0               193    201  haz              
24 months   MAL-ED           PERU                           1                 8    201  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               212    238  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                26    238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202    214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                12    214  haz              
24 months   PROVIDE          BANGLADESH                     0               432    578  haz              
24 months   PROVIDE          BANGLADESH                     1               146    578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/3c616d62-70f0-4427-91e9-93fdcaf459d2/4beb4d40-9610-4eaf-b7d8-a8260138c834/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3c616d62-70f0-4427-91e9-93fdcaf459d2/4beb4d40-9610-4eaf-b7d8-a8260138c834/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3c616d62-70f0-4427-91e9-93fdcaf459d2/4beb4d40-9610-4eaf-b7d8-a8260138c834/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.6574819   -0.9980281   -0.3169356
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -1.0294828   -1.3219468   -0.7370189
Birth       CMIN             BANGLADESH                     0                    NA                -1.2613333   -1.7710980   -0.7515686
Birth       CMIN             BANGLADESH                     1                    NA                -1.0280000   -2.2553082    0.1993082
Birth       EE               PAKISTAN                       0                    NA                -2.0377362   -2.2513474   -1.8241250
Birth       EE               PAKISTAN                       1                    NA                -1.4981720   -1.8667641   -1.1295798
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1527631   -1.2534598   -1.0520663
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.8759561   -0.9976706   -0.7542415
Birth       IRC              INDIA                          0                    NA                -0.8211439   -1.0368163   -0.6054715
Birth       IRC              INDIA                          1                    NA                 0.0964050   -0.1200908    0.3129008
Birth       Keneba           GAMBIA                         0                    NA                -0.1729418   -0.2475333   -0.0983503
Birth       Keneba           GAMBIA                         1                    NA                 0.4124458    0.3009022    0.5239894
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.1234625   -1.2716556   -0.9752694
Birth       MAL-ED           BANGLADESH                     1                    NA                -1.0456503   -1.3715039   -0.7197967
Birth       MAL-ED           INDIA                          0                    NA                -1.3209795   -1.6411741   -1.0007849
Birth       MAL-ED           INDIA                          1                    NA                -1.0027150   -1.5976399   -0.4077901
Birth       MAL-ED           PERU                           0                    NA                -0.8901728   -1.0073254   -0.7730202
Birth       MAL-ED           PERU                           1                    NA                -0.2225424   -1.0736756    0.6285908
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6698564   -0.8553632   -0.4843496
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.2809471   -0.7856200    0.2237257
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1432773   -1.3541075   -0.9324471
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9860000   -2.2167588    0.2447588
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8762238   -0.9611304   -0.7913173
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9233527   -1.0784205   -0.7682849
Birth       ResPak           PAKISTAN                       0                    NA                -1.1075057   -1.5601610   -0.6548504
Birth       ResPak           PAKISTAN                       1                    NA                -0.5758853   -1.4938639    0.3420933
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4046564   -1.6162859   -1.1930269
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4470202   -1.6377990   -1.2562415
6 months    CMIN             BANGLADESH                     0                    NA                -1.7712149   -1.9211407   -1.6212891
6 months    CMIN             BANGLADESH                     1                    NA                -1.8324528   -2.2075345   -1.4573710
6 months    EE               PAKISTAN                       0                    NA                -2.0544942   -2.1945757   -1.9144127
6 months    EE               PAKISTAN                       1                    NA                -2.1489248   -2.3740461   -1.9238035
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.3753803   -1.4748335   -1.2759271
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3183435   -1.4447492   -1.1919378
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5398931   -1.6538533   -1.4259328
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.5673914   -3.1114497   -2.0233330
6 months    IRC              INDIA                          0                    NA                -1.4467771   -1.6389653   -1.2545888
6 months    IRC              INDIA                          1                    NA                -1.0763125   -1.2547203   -0.8979048
6 months    Keneba           GAMBIA                         0                    NA                -0.9018108   -0.9553379   -0.8482837
6 months    Keneba           GAMBIA                         1                    NA                -0.9323900   -1.0289821   -0.8357979
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1584210   -1.2838228   -1.0330192
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.2610286   -1.5535266   -0.9685306
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0245176   -0.1248216    0.1738567
6 months    MAL-ED           BRAZIL                         1                    NA                 0.4259051   -0.1770872    1.0288974
6 months    MAL-ED           INDIA                          0                    NA                -1.2394723   -1.3803608   -1.0985838
6 months    MAL-ED           INDIA                          1                    NA                -1.1706628   -1.3863302   -0.9549955
6 months    MAL-ED           NEPAL                          0                    NA                -0.5333183   -0.6540086   -0.4126280
6 months    MAL-ED           NEPAL                          1                    NA                -0.6797252   -0.9740205   -0.3854300
6 months    MAL-ED           PERU                           0                    NA                -1.3344580   -1.4435279   -1.2253880
6 months    MAL-ED           PERU                           1                    NA                -1.1736957   -1.8533938   -0.4939976
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0472415   -1.1857187   -0.9087643
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.1878988   -1.5260751   -0.8497225
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3610028   -1.4853548   -1.2366507
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5190086   -2.1694080   -0.8686093
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0509349   -1.1362999   -0.9655699
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2082905   -1.3588690   -1.0577119
6 months    ResPak           PAKISTAN                       0                    NA                -1.7482523   -2.0005205   -1.4959840
6 months    ResPak           PAKISTAN                       1                    NA                -1.0258418   -1.3613203   -0.6903633
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5387994   -0.5917382   -0.4858605
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5783678   -0.7070778   -0.4496578
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5014549   -2.6450471   -2.3578627
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5888176   -2.7249481   -2.4526871
24 months   CMIN             BANGLADESH                     0                    NA                -2.4875048   -2.6258725   -2.3491371
24 months   CMIN             BANGLADESH                     1                    NA                -2.6055288   -2.9012069   -2.3098507
24 months   EE               PAKISTAN                       0                    NA                -2.6542762   -2.8380584   -2.4704939
24 months   EE               PAKISTAN                       1                    NA                -2.6998111   -2.9478779   -2.4517444
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.9020497   -2.0056271   -1.7984724
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8629048   -2.0118703   -1.7139394
24 months   IRC              INDIA                          0                    NA                -1.8211563   -1.9529040   -1.6894086
24 months   IRC              INDIA                          1                    NA                -1.7521062   -1.8840337   -1.6201787
24 months   Keneba           GAMBIA                         0                    NA                -1.5494660   -1.6107931   -1.4881388
24 months   Keneba           GAMBIA                         1                    NA                -1.6410931   -1.7383998   -1.5437865
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9907789   -2.1361173   -1.8454405
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.9006736   -2.1582040   -1.6431432
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0473870   -0.1276349    0.2224089
24 months   MAL-ED           BRAZIL                         1                    NA                -0.5493509   -1.1241812    0.0254794
24 months   MAL-ED           INDIA                          0                    NA                -1.9501973   -2.1012043   -1.7991902
24 months   MAL-ED           INDIA                          1                    NA                -1.8084005   -2.0301962   -1.5866048
24 months   MAL-ED           NEPAL                          0                    NA                -1.3167252   -1.4467643   -1.1866861
24 months   MAL-ED           NEPAL                          1                    NA                -1.2586114   -1.5833777   -0.9338450
24 months   MAL-ED           PERU                           0                    NA                -1.7639724   -1.8863550   -1.6415897
24 months   MAL-ED           PERU                           1                    NA                -1.4750000   -2.1910692   -0.7589308
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6452367   -1.7850730   -1.5054005
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.4389602   -1.9172328   -0.9606877
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6325832   -2.7705988   -2.4945676
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6358450   -3.2598898   -2.0118003
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5851133   -1.6848243   -1.4854023
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6470974   -1.7925542   -1.5016406


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     NA                   NA                -1.2030000   -1.6953191   -0.7106809
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0454532   -1.1235003   -0.9674062
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       Keneba           GAMBIA                         NA                   NA                 0.0325486   -0.0310420    0.0961393
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1041048   -1.2383048   -0.9699048
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5877869   -0.7622273   -0.4133464
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1369355   -1.3453337   -0.9285373
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4241872   -1.5668135   -1.2815609
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5785476   -1.6926664   -1.4644288
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    Keneba           GAMBIA                         NA                   NA                -0.9116762   -0.9588660   -0.8644864
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5489071   -2.6476125   -2.4502017
24 months   CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   Keneba           GAMBIA                         NA                   NA                -1.5774758   -1.6295950   -1.5253566
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.3720010   -0.8299999    0.0859980
Birth       CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     1                    0                  0.2333333   -1.0956307    1.5622974
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.5395642    0.1142844    0.9648440
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.2768070    0.1187407    0.4348733
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.9175489    0.6089647    1.2261331
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.5853877    0.4515315    0.7192438
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.0778122   -0.2808269    0.4364512
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.3182645   -0.3626508    0.9991798
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.6676305   -0.1920164    1.5272773
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.3889092   -0.1500972    0.9279157
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1572773   -1.0914086    1.4059632
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0471289   -0.2240469    0.1297891
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                  0.5316204   -0.4988868    1.5621276
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0423639   -0.3250879    0.2403602
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0612379   -0.4653602    0.3428844
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0944306   -0.3599187    0.1710575
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0570368   -0.1035247    0.2175983
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.0274983   -1.5835124   -0.4714842
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.3704645    0.1090672    0.6318618
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0305792   -0.1409910    0.0798325
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1026076   -0.4208109    0.2155957
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                  0.4013875   -0.2214356    1.0242107
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.0688095   -0.1892524    0.3268713
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.1464069   -0.4646841    0.1718702
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.1607622   -0.5270806    0.8486050
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.1406573   -0.5064798    0.2251652
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1580059   -0.8197974    0.5037857
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1573556   -0.3303089    0.0155978
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                  0.7224105    0.3034520    1.1413690
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0395684   -0.1782912    0.0991544
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0873627   -0.2855821    0.1108566
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.1180240   -0.4450435    0.2089955
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.0455350   -0.3551240    0.2640541
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                  0.0391449   -0.1424559    0.2207457
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                  0.0690501   -0.1175248    0.2556250
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.0916272   -0.2062256    0.0229713
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.0901053   -0.2034402    0.3836508
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.5967379   -1.1998146    0.0063389
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1417967   -0.1274629    0.4110564
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0581138   -0.2908122    0.4070399
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                  0.2889724   -0.4374797    1.0154244
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.2062765   -0.2925040    0.7050570
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0032618   -0.6408234    0.6342998
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0619841   -0.2375918    0.1136236


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.3037138   -0.5894598   -0.0179678
Birth       CMIN             BANGLADESH                     0                    NA                 0.0583333   -0.2769994    0.3936660
Birth       EE               PAKISTAN                       0                    NA                 0.1768612    0.0250251    0.3286973
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.1073098    0.0459787    0.1686409
Birth       IRC              INDIA                          0                    NA                 0.5131027    0.3263586    0.6998467
Birth       Keneba           GAMBIA                         0                    NA                 0.2054905    0.1560418    0.2549392
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0193577   -0.0595017    0.0982170
Birth       MAL-ED           INDIA                          0                    NA                 0.1173625   -0.1052017    0.3399267
Birth       MAL-ED           PERU                           0                    NA                 0.0073831   -0.0277213    0.0424875
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0820695   -0.0088228    0.1729618
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063418   -0.0443044    0.0569881
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0088782   -0.0563930    0.0386365
Birth       ResPak           PAKISTAN                       0                    NA                 0.1275057   -0.2327187    0.4877301
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0195308   -0.1652107    0.1261490
6 months    CMIN             BANGLADESH                     0                    NA                -0.0132227   -0.0788103    0.0523649
6 months    EE               PAKISTAN                       0                    NA                -0.0290626   -0.1161411    0.0580159
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0245410   -0.0404677    0.0895497
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0386546   -0.0696613   -0.0076478
6 months    IRC              INDIA                          0                    NA                 0.2123709    0.0649674    0.3597743
6 months    Keneba           GAMBIA                         0                    NA                -0.0098654   -0.0428669    0.0231361
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0465721   -0.1217971    0.0286530
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0230582   -0.0184503    0.0645667
6 months    MAL-ED           INDIA                          0                    NA                 0.0279469   -0.0573182    0.1132119
6 months    MAL-ED           NEPAL                          0                    NA                -0.0282636   -0.0928751    0.0363478
6 months    MAL-ED           PERU                           0                    NA                 0.0107919   -0.0149660    0.0365498
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0160787   -0.0590946    0.0269372
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0077422   -0.0401941    0.0247098
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0407566   -0.0849881    0.0034749
6 months    ResPak           PAKISTAN                       0                    NA                 0.3168436    0.1404618    0.4932255
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046395   -0.0251683    0.0158893
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0474522   -0.1507307    0.0558262
24 months   CMIN             BANGLADESH                     0                    NA                -0.0234456   -0.0801691    0.0332778
24 months   EE               PAKISTAN                       0                    NA                -0.0157138   -0.1214326    0.0900049
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0146317   -0.0552723    0.0845357
24 months   IRC              INDIA                          0                    NA                 0.0223788   -0.0815994    0.1263570
24 months   Keneba           GAMBIA                         0                    NA                -0.0280098   -0.0628056    0.0067860
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0123827   -0.0560462    0.0808116
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0412726   -0.0923456    0.0098005
24 months   MAL-ED           INDIA                          0                    NA                 0.0640078   -0.0265865    0.1546022
24 months   MAL-ED           NEPAL                          0                    NA                 0.0091375   -0.0571144    0.0753894
24 months   MAL-ED           PERU                           0                    NA                 0.0115014   -0.0184534    0.0414561
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0001772   -0.0544356    0.0547900
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0129775   -0.0502296    0.0242745
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0173089   -0.0615588    0.0269410

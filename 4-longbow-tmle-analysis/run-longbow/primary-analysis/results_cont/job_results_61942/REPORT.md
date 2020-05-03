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
![](/tmp/45d5425f-5496-4fb2-b761-cbe913701c47/66b63c92-28e4-4ff3-bd3f-8a801fc640ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/45d5425f-5496-4fb2-b761-cbe913701c47/66b63c92-28e4-4ff3-bd3f-8a801fc640ab/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/45d5425f-5496-4fb2-b761-cbe913701c47/66b63c92-28e4-4ff3-bd3f-8a801fc640ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8543307   -1.1910867   -0.5175747
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -1.1019047   -1.3936301   -0.8101793
Birth       CMIN             BANGLADESH                     0                    NA                -1.2613333   -1.7710980   -0.7515686
Birth       CMIN             BANGLADESH                     1                    NA                -1.0280000   -2.2553082    0.1993082
Birth       EE               PAKISTAN                       0                    NA                -2.0363557   -2.2459428   -1.8267686
Birth       EE               PAKISTAN                       1                    NA                -1.4838779   -1.8579579   -1.1097979
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.1470744   -1.2471692   -1.0469796
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.8760247   -0.9981319   -0.7539174
Birth       IRC              INDIA                          0                    NA                -0.8730811   -1.0877243   -0.6584378
Birth       IRC              INDIA                          1                    NA                 0.1025581   -0.1164703    0.3215865
Birth       Keneba           GAMBIA                         0                    NA                -0.1735255   -0.2480590   -0.0989920
Birth       Keneba           GAMBIA                         1                    NA                 0.4227943    0.3112653    0.5343233
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.1178188   -1.2655214   -0.9701162
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.9738953   -1.2831481   -0.6646425
Birth       MAL-ED           INDIA                          0                    NA                -1.3138544   -1.6351486   -0.9925602
Birth       MAL-ED           INDIA                          1                    NA                -1.1914510   -1.8965852   -0.4863169
Birth       MAL-ED           PERU                           0                    NA                -0.8933647   -1.0105773   -0.7761521
Birth       MAL-ED           PERU                           1                    NA                -0.6776504   -1.5907741    0.2354733
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6633386   -0.8484380   -0.4782393
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.1592648   -0.6259354    0.3074058
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1432773   -1.3541075   -0.9324471
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9860000   -2.2167588    0.2447588
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8747725   -0.9596786   -0.7898663
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9339362   -1.0919411   -0.7759313
Birth       ResPak           PAKISTAN                       0                    NA                -1.2455458   -1.6946926   -0.7963989
Birth       ResPak           PAKISTAN                       1                    NA                -0.5374414   -1.5673106    0.4924279
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.3957717   -1.6074510   -1.1840925
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4431583   -1.6331800   -1.2531366
6 months    CMIN             BANGLADESH                     0                    NA                -1.7699631   -1.9199216   -1.6200046
6 months    CMIN             BANGLADESH                     1                    NA                -1.8513021   -2.2278739   -1.4747303
6 months    EE               PAKISTAN                       0                    NA                -2.0499905   -2.1911836   -1.9087973
6 months    EE               PAKISTAN                       1                    NA                -2.1477777   -2.3766688   -1.9188866
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.3735824   -1.4728731   -1.2742916
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3233480   -1.4505668   -1.1961293
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5389032   -1.6529508   -1.4248556
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.6430510   -3.2258471   -2.0602548
6 months    IRC              INDIA                          0                    NA                -1.4117573   -1.6050118   -1.2185029
6 months    IRC              INDIA                          1                    NA                -1.0579511   -1.2354730   -0.8804292
6 months    Keneba           GAMBIA                         0                    NA                -0.9038250   -0.9572984   -0.8503517
6 months    Keneba           GAMBIA                         1                    NA                -0.9282479   -1.0243650   -0.8321307
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1715170   -1.2966327   -1.0464012
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.3815690   -1.6654340   -1.0977040
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0258620   -0.1233479    0.1750720
6 months    MAL-ED           BRAZIL                         1                    NA                 0.1787240   -0.3408680    0.6983159
6 months    MAL-ED           INDIA                          0                    NA                -1.2392468   -1.3813002   -1.0971934
6 months    MAL-ED           INDIA                          1                    NA                -1.1638997   -1.3850384   -0.9427610
6 months    MAL-ED           NEPAL                          0                    NA                -0.5312395   -0.6515896   -0.4108894
6 months    MAL-ED           NEPAL                          1                    NA                -0.6808080   -0.9824031   -0.3792128
6 months    MAL-ED           PERU                           0                    NA                -1.3331280   -1.4421471   -1.2241088
6 months    MAL-ED           PERU                           1                    NA                -1.0088419   -1.8894732   -0.1282106
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0487065   -1.1870198   -0.9103932
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.1263182   -1.4590362   -0.7936002
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3613351   -1.4858025   -1.2368678
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6611794   -2.3304198   -0.9919391
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0473701   -1.1327577   -0.9619826
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1914348   -1.3419727   -1.0408969
6 months    ResPak           PAKISTAN                       0                    NA                -1.7126277   -1.9628795   -1.4623759
6 months    ResPak           PAKISTAN                       1                    NA                -1.0089264   -1.3452960   -0.6725568
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5401939   -0.5930111   -0.4873768
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5850436   -0.7134026   -0.4566846
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5066242   -2.6493314   -2.3639169
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5769747   -2.7139510   -2.4399985
24 months   CMIN             BANGLADESH                     0                    NA                -2.4902482   -2.6288914   -2.3516050
24 months   CMIN             BANGLADESH                     1                    NA                -2.7330113   -3.0266105   -2.4394122
24 months   EE               PAKISTAN                       0                    NA                -2.6433725   -2.8327639   -2.4539810
24 months   EE               PAKISTAN                       1                    NA                -2.7340502   -3.0063213   -2.4617791
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.9011974   -2.0048026   -1.7975923
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8695906   -2.0181836   -1.7209976
24 months   IRC              INDIA                          0                    NA                -1.8332911   -1.9647906   -1.7017916
24 months   IRC              INDIA                          1                    NA                -1.7648388   -1.8959656   -1.6337120
24 months   Keneba           GAMBIA                         0                    NA                -1.5487452   -1.6100698   -1.4874206
24 months   Keneba           GAMBIA                         1                    NA                -1.6416406   -1.7386115   -1.5446697
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9653918   -2.1134652   -1.8173184
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.0131894   -2.2810845   -1.7452943
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0457429   -0.1291937    0.2206794
24 months   MAL-ED           BRAZIL                         1                    NA                -0.4216474   -1.0990686    0.2557739
24 months   MAL-ED           INDIA                          0                    NA                -1.9486303   -2.1004027   -1.7968579
24 months   MAL-ED           INDIA                          1                    NA                -1.7901095   -2.0100625   -1.5701565
24 months   MAL-ED           NEPAL                          0                    NA                -1.3062700   -1.4359846   -1.1765554
24 months   MAL-ED           NEPAL                          1                    NA                -1.2916640   -1.6132692   -0.9700589
24 months   MAL-ED           PERU                           0                    NA                -1.7639724   -1.8863550   -1.6415897
24 months   MAL-ED           PERU                           1                    NA                -1.4750000   -2.1910692   -0.7589308
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6471664   -1.7870047   -1.5073282
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.5689701   -2.0774199   -1.0605204
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6341232   -2.7721380   -2.4961085
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7870372   -3.4635263   -2.1105481
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5896052   -1.6892080   -1.4900025
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6493739   -1.7922215   -1.5065264


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.2475739   -0.6983492    0.2032014
Birth       CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     1                    0                  0.2333333   -1.0956307    1.5622974
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.5524778    0.1215911    0.9833645
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.2710497    0.1135220    0.4285774
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.9756392    0.6660963    1.2851820
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.5963198    0.4624743    0.7301653
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.1439235   -0.2000320    0.4878790
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.1224034   -0.6549203    0.8997271
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.2157143   -0.7051276    1.1365561
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.5040738    0.0018408    1.0063069
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1572773   -1.0914086    1.4059632
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0591637   -0.2390581    0.1207306
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                  0.7081044   -0.4353365    1.8515453
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0473866   -0.3290688    0.2342956
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0813390   -0.4869150    0.3242370
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0977872   -0.3671139    0.1715394
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0502343   -0.1113289    0.2117975
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.1041478   -1.6989593   -0.5093363
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.3538062    0.0920611    0.6155513
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0244228   -0.1343339    0.0854883
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.2100520   -0.5198346    0.0997306
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                  0.1528619   -0.3853029    0.6910268
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.0753470   -0.1895862    0.3402803
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.1495685   -0.4746324    0.1754954
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.3242861   -0.5633788    1.2119509
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0776117   -0.4386107    0.2833872
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2998443   -0.9805765    0.3808879
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1440647   -0.3174687    0.0293394
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                  0.7037013    0.2829261    1.1244765
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0448497   -0.1831908    0.0934914
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0703506   -0.2683782    0.1276770
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2427631   -0.5688104    0.0832841
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.0906777   -0.4234501    0.2420947
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                  0.0316068   -0.1494706    0.2126842
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                  0.0684523   -0.1164848    0.2533894
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.0928954   -0.2073128    0.0215220
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.0477976   -0.3596433    0.2640481
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.4673902   -1.1680343    0.2332538
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1585208   -0.1090900    0.4261316
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0146060   -0.3328571    0.3620690
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                  0.2889724   -0.4374797    1.0154244
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0781963   -0.4493131    0.6057057
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1529140   -0.8434049    0.5375770
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0597687   -0.2320813    0.1125439


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.1068649   -0.3838286    0.1700988
Birth       CMIN             BANGLADESH                     0                    NA                 0.0583333   -0.2769994    0.3936660
Birth       EE               PAKISTAN                       0                    NA                 0.1754807    0.0251316    0.3258298
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.1016212    0.0405141    0.1627283
Birth       IRC              INDIA                          0                    NA                 0.5650398    0.3788317    0.7512480
Birth       Keneba           GAMBIA                         0                    NA                 0.2060741    0.1566507    0.2554976
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0137140   -0.0656638    0.0930918
Birth       MAL-ED           INDIA                          0                    NA                 0.1102374   -0.1069721    0.3274469
Birth       MAL-ED           PERU                           0                    NA                 0.0105750   -0.0242898    0.0454397
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0755518   -0.0139140    0.1650175
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063418   -0.0443044    0.0569881
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0103296   -0.0584344    0.0377753
Birth       ResPak           PAKISTAN                       0                    NA                 0.2655458   -0.1293334    0.6604249
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0284155   -0.1740926    0.1172617
6 months    CMIN             BANGLADESH                     0                    NA                -0.0144745   -0.0800646    0.0511156
6 months    EE               PAKISTAN                       0                    NA                -0.0335663   -0.1212559    0.0541233
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0227431   -0.0426536    0.0881398
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0396445   -0.0714703   -0.0078186
6 months    IRC              INDIA                          0                    NA                 0.1773511    0.0290784    0.3256238
6 months    Keneba           GAMBIA                         0                    NA                -0.0078511   -0.0408167    0.0251145
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0334761   -0.1083945    0.0414422
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0217137   -0.0183759    0.0618033
6 months    MAL-ED           INDIA                          0                    NA                 0.0277214   -0.0589049    0.1143476
6 months    MAL-ED           NEPAL                          0                    NA                -0.0303424   -0.0952313    0.0345465
6 months    MAL-ED           PERU                           0                    NA                 0.0094619   -0.0163896    0.0353134
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0146137   -0.0580049    0.0287774
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0074098   -0.0399641    0.0251445
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0443214   -0.0889678    0.0003251
6 months    ResPak           PAKISTAN                       0                    NA                 0.2812190    0.1068045    0.4556335
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032449   -0.0237209    0.0172310
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0422829   -0.1446009    0.0600350
24 months   CMIN             BANGLADESH                     0                    NA                -0.0207022   -0.0779483    0.0365439
24 months   EE               PAKISTAN                       0                    NA                -0.0266176   -0.1394110    0.0861759
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0137794   -0.0560818    0.0836405
24 months   IRC              INDIA                          0                    NA                 0.0345136   -0.0685521    0.1375792
24 months   Keneba           GAMBIA                         0                    NA                -0.0287306   -0.0635615    0.0061003
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0130044   -0.0867776    0.0607688
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0396285   -0.0893758    0.0101188
24 months   MAL-ED           INDIA                          0                    NA                 0.0624409   -0.0284405    0.1533222
24 months   MAL-ED           NEPAL                          0                    NA                -0.0013177   -0.0679639    0.0653284
24 months   MAL-ED           PERU                           0                    NA                 0.0115014   -0.0184534    0.0414561
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0021069   -0.0522492    0.0564630
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0114375   -0.0482223    0.0253473
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0128169   -0.0564547    0.0308209

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

**Intervention Variable:** predfeed6

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

agecat      studyid         country                        predfeed6    n_cell       n  outcome_variable 
----------  --------------  -----------------------------  ----------  -------  ------  -----------------
Birth       EE              PAKISTAN                       1                38      42  haz              
Birth       EE              PAKISTAN                       0                 4      42  haz              
Birth       GMS-Nepal       NEPAL                          1               419     563  haz              
Birth       GMS-Nepal       NEPAL                          0               144     563  haz              
Birth       JiVitA-3        BANGLADESH                     1             10466   13423  haz              
Birth       JiVitA-3        BANGLADESH                     0              2957   13423  haz              
Birth       JiVitA-4        BANGLADESH                     1              2103    2632  haz              
Birth       JiVitA-4        BANGLADESH                     0               529    2632  haz              
Birth       MAL-ED          BANGLADESH                     1                72     205  haz              
Birth       MAL-ED          BANGLADESH                     0               133     205  haz              
Birth       MAL-ED          BRAZIL                         1                 6      60  haz              
Birth       MAL-ED          BRAZIL                         0                54      60  haz              
Birth       MAL-ED          INDIA                          1                 4      39  haz              
Birth       MAL-ED          INDIA                          0                35      39  haz              
Birth       MAL-ED          NEPAL                          1                 3      24  haz              
Birth       MAL-ED          NEPAL                          0                21      24  haz              
Birth       MAL-ED          PERU                           1                73     213  haz              
Birth       MAL-ED          PERU                           0               140     213  haz              
Birth       MAL-ED          SOUTH AFRICA                   1                 1      91  haz              
Birth       MAL-ED          SOUTH AFRICA                   0                90      91  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
6 months    EE              PAKISTAN                       1                43      48  haz              
6 months    EE              PAKISTAN                       0                 5      48  haz              
6 months    GMS-Nepal       NEPAL                          1               406     547  haz              
6 months    GMS-Nepal       NEPAL                          0               141     547  haz              
6 months    JiVitA-3        BANGLADESH                     1              7644    9901  haz              
6 months    JiVitA-3        BANGLADESH                     0              2257    9901  haz              
6 months    JiVitA-4        BANGLADESH                     1              3328    4272  haz              
6 months    JiVitA-4        BANGLADESH                     0               944    4272  haz              
6 months    LCNI-5          MALAWI                         1                47     272  haz              
6 months    LCNI-5          MALAWI                         0               225     272  haz              
6 months    MAL-ED          BANGLADESH                     1                84     231  haz              
6 months    MAL-ED          BANGLADESH                     0               147     231  haz              
6 months    MAL-ED          BRAZIL                         1                30     209  haz              
6 months    MAL-ED          BRAZIL                         0               179     209  haz              
6 months    MAL-ED          INDIA                          1                11     218  haz              
6 months    MAL-ED          INDIA                          0               207     218  haz              
6 months    MAL-ED          NEPAL                          1                12     225  haz              
6 months    MAL-ED          NEPAL                          0               213     225  haz              
6 months    MAL-ED          PERU                           1                92     271  haz              
6 months    MAL-ED          PERU                           0               179     271  haz              
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233  haz              
6 months    MAL-ED          SOUTH AFRICA                   0               230     233  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232  haz              
6 months    SAS-FoodSuppl   INDIA                          1                 0     168  haz              
6 months    SAS-FoodSuppl   INDIA                          0               168     168  haz              
24 months   EE              PAKISTAN                       1                20      23  haz              
24 months   EE              PAKISTAN                       0                 3      23  haz              
24 months   GMS-Nepal       NEPAL                          1               356     470  haz              
24 months   GMS-Nepal       NEPAL                          0               114     470  haz              
24 months   JiVitA-3        BANGLADESH                     1              3926    5088  haz              
24 months   JiVitA-3        BANGLADESH                     0              1162    5088  haz              
24 months   JiVitA-4        BANGLADESH                     1              3292    4199  haz              
24 months   JiVitA-4        BANGLADESH                     0               907    4199  haz              
24 months   LCNI-5          MALAWI                         1                34     189  haz              
24 months   LCNI-5          MALAWI                         0               155     189  haz              
24 months   MAL-ED          BANGLADESH                     1                76     205  haz              
24 months   MAL-ED          BANGLADESH                     0               129     205  haz              
24 months   MAL-ED          BRAZIL                         1                25     169  haz              
24 months   MAL-ED          BRAZIL                         0               144     169  haz              
24 months   MAL-ED          INDIA                          1                11     209  haz              
24 months   MAL-ED          INDIA                          0               198     209  haz              
24 months   MAL-ED          NEPAL                          1                12     219  haz              
24 months   MAL-ED          NEPAL                          0               207     219  haz              
24 months   MAL-ED          PERU                           1                68     201  haz              
24 months   MAL-ED          PERU                           0               133     201  haz              
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216  haz              
24 months   MAL-ED          SOUTH AFRICA                   0               213     216  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202  haz              


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
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/d19262d1-2894-4990-9995-58056e02a52e/65017768-88ef-4139-b1c4-a422ab4d6e69/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d19262d1-2894-4990-9995-58056e02a52e/65017768-88ef-4139-b1c4-a422ab4d6e69/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d19262d1-2894-4990-9995-58056e02a52e/65017768-88ef-4139-b1c4-a422ab4d6e69/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0556497   -1.1530543   -0.9582451
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1145623   -1.2908155   -0.9383091
Birth       JiVitA-3    BANGLADESH   1                    NA                -1.5948650   -1.6196484   -1.5700815
Birth       JiVitA-3    BANGLADESH   0                    NA                -1.5979968   -1.6373069   -1.5586867
Birth       JiVitA-4    BANGLADESH   1                    NA                -1.5086217   -1.5604577   -1.4567857
Birth       JiVitA-4    BANGLADESH   0                    NA                -1.6057263   -1.7311363   -1.4803163
Birth       MAL-ED      BANGLADESH   1                    NA                -1.0702924   -1.2999568   -0.8406280
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0362437   -1.2111706   -0.8613168
Birth       MAL-ED      BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       MAL-ED      BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       MAL-ED      PERU         1                    NA                -0.8719527   -1.0364614   -0.7074440
Birth       MAL-ED      PERU         0                    NA                -0.9185358   -1.0662686   -0.7708030
6 months    EE          PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE          PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal   NEPAL        1                    NA                -1.3062426   -1.3954554   -1.2170299
6 months    GMS-Nepal   NEPAL        0                    NA                -1.4950933   -1.6643853   -1.3258013
6 months    JiVitA-3    BANGLADESH   1                    NA                -1.3085156   -1.3389576   -1.2780735
6 months    JiVitA-3    BANGLADESH   0                    NA                -1.3328776   -1.3822140   -1.2835412
6 months    JiVitA-4    BANGLADESH   1                    NA                -1.3098191   -1.3506119   -1.2690264
6 months    JiVitA-4    BANGLADESH   0                    NA                -1.4902278   -1.5800429   -1.4004128
6 months    LCNI-5      MALAWI       1                    NA                -1.7827228   -2.0911364   -1.4743092
6 months    LCNI-5      MALAWI       0                    NA                -1.6253140   -1.7563340   -1.4942939
6 months    MAL-ED      BANGLADESH   1                    NA                -1.1222511   -1.3065240   -0.9379781
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2358940   -1.3915347   -1.0802533
6 months    MAL-ED      BRAZIL       1                    NA                 0.2308355   -0.2437811    0.7054521
6 months    MAL-ED      BRAZIL       0                    NA                 0.0308646   -0.1194807    0.1812099
6 months    MAL-ED      INDIA        1                    NA                -1.4546735   -2.2793191   -0.6300278
6 months    MAL-ED      INDIA        0                    NA                -1.1994323   -1.3216083   -1.0772563
6 months    MAL-ED      NEPAL        1                    NA                -0.9982367   -1.5518851   -0.4445884
6 months    MAL-ED      NEPAL        0                    NA                -0.5547188   -0.6730009   -0.4364366
6 months    MAL-ED      PERU         1                    NA                -1.2491505   -1.4266795   -1.0716214
6 months    MAL-ED      PERU         0                    NA                -1.3560265   -1.4912503   -1.2208028
24 months   GMS-Nepal   NEPAL        1                    NA                -1.9051666   -2.0001636   -1.8101696
24 months   GMS-Nepal   NEPAL        0                    NA                -1.8875384   -2.0835671   -1.6915097
24 months   JiVitA-3    BANGLADESH   1                    NA                -2.0027889   -2.0426878   -1.9628899
24 months   JiVitA-3    BANGLADESH   0                    NA                -2.0436738   -2.1128231   -1.9745246
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.7810991   -1.8229763   -1.7392219
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.8348256   -1.9110866   -1.7585647
24 months   LCNI-5      MALAWI       1                    NA                -1.8978097   -2.1906177   -1.6050017
24 months   LCNI-5      MALAWI       0                    NA                -1.9449137   -2.1037514   -1.7860759
24 months   MAL-ED      BANGLADESH   1                    NA                -1.9124866   -2.1457468   -1.6792264
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9212958   -2.0633858   -1.7792057
24 months   MAL-ED      BRAZIL       1                    NA                 0.0032578   -0.4986778    0.5051933
24 months   MAL-ED      BRAZIL       0                    NA                 0.0108269   -0.1745926    0.1962463
24 months   MAL-ED      INDIA        1                    NA                -2.4865090   -3.0136477   -1.9593702
24 months   MAL-ED      INDIA        0                    NA                -1.8523055   -1.9842465   -1.7203646
24 months   MAL-ED      NEPAL        1                    NA                -1.7228535   -2.2387368   -1.2069701
24 months   MAL-ED      NEPAL        0                    NA                -1.3069372   -1.4324764   -1.1813980
24 months   MAL-ED      PERU         1                    NA                -1.7791057   -1.9883412   -1.5698702
24 months   MAL-ED      PERU         0                    NA                -1.7401445   -1.8892442   -1.5910448


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3    BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4    BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       MAL-ED      BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED      BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED      PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
6 months    EE          PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal   NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3    BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4    BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED      BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED      NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED      PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3    BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED      BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED      NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED      PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0589126   -0.2527805    0.1349552
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 -0.0031319   -0.0439294    0.0376657
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0971046   -0.2321623    0.0379531
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                  0.0340487   -0.2560299    0.3241273
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.0465831   -0.2397181    0.1465518
6 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE          PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1888507   -0.3804249    0.0027235
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 -0.0243620   -0.0767745    0.0280505
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.1804087   -0.2778834   -0.0829340
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.1574089   -0.1790792    0.4938969
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                 -0.1136430   -0.3554909    0.1282050
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.1999709   -0.6982258    0.2982839
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                  0.2552411   -0.5779358    1.0884181
6 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL        0                    1                  0.4435180   -0.1247128    1.0117488
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.1068761   -0.3275467    0.1137946
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                  0.0176282   -0.1985813    0.2338377
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 -0.0408850   -0.1168337    0.0350637
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0537265   -0.1357817    0.0283287
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                 -0.0471040   -0.3824869    0.2882789
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                 -0.0088092   -0.2804704    0.2628520
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.0075691   -0.5285784    0.5437165
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.6342034    0.0906241    1.1777828
24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL        0                    1                  0.4159163   -0.1151825    0.9470150
24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU         0                    1                  0.0389611   -0.2177274    0.2956497


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0084711   -0.0581289    0.0411868
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0006688   -0.0096511    0.0083134
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0186922   -0.0469644    0.0095801
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0172680   -0.1755183    0.2100544
Birth       MAL-ED      BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       MAL-ED      PERU         1                    NA                -0.0346201   -0.1615083    0.0922681
6 months    EE          PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0477854   -0.0976705    0.0020997
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0053103   -0.0172643    0.0066437
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0384112   -0.0598188   -0.0170036
6 months    LCNI-5      MALAWI       1                    NA                 0.1431272   -0.1396112    0.4258657
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0678283   -0.2223791    0.0867225
6 months    MAL-ED      BRAZIL       1                    NA                -0.1832598   -0.6139213    0.2474018
6 months    MAL-ED      INDIA        1                    NA                 0.2358432   -0.5576609    1.0293472
6 months    MAL-ED      NEPAL        1                    NA                 0.4359997   -0.1066360    0.9786354
6 months    MAL-ED      PERU         1                    NA                -0.0728821   -0.2196764    0.0739122
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0049538   -0.0466274    0.0565351
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0090115   -0.0264719    0.0084490
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0103774   -0.0279306    0.0071758
24 months   LCNI-5      MALAWI       1                    NA                -0.0673226   -0.3440085    0.2093633
24 months   MAL-ED      BANGLADESH   1                    NA                -0.0451476   -0.2202056    0.1299105
24 months   MAL-ED      BRAZIL       1                    NA                 0.0028566   -0.4657742    0.4714874
24 months   MAL-ED      INDIA        1                    NA                 0.6001692    0.0853859    1.1149526
24 months   MAL-ED      NEPAL        1                    NA                 0.4040864   -0.0998887    0.9080614
24 months   MAL-ED      PERU         1                    NA                 0.0266347   -0.1469431    0.2002125

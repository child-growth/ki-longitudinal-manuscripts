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

**Intervention Variable:** predexfd6

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

agecat      studyid          country                        predexfd6    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       EE               PAKISTAN                       1                38      42
Birth       EE               PAKISTAN                       0                 4      42
Birth       GMS-Nepal        NEPAL                          1               419     563
Birth       GMS-Nepal        NEPAL                          0               144     563
Birth       IRC              INDIA                          1                 0      14
Birth       IRC              INDIA                          0                14      14
Birth       JiVitA-3         BANGLADESH                     1             10466   13423
Birth       JiVitA-3         BANGLADESH                     0              2957   13423
Birth       JiVitA-4         BANGLADESH                     1              2103    2632
Birth       JiVitA-4         BANGLADESH                     0               529    2632
Birth       Keneba           GAMBIA                         1               485    1403
Birth       Keneba           GAMBIA                         0               918    1403
Birth       MAL-ED           BANGLADESH                     1                72     205
Birth       MAL-ED           BANGLADESH                     0               133     205
Birth       MAL-ED           BRAZIL                         1                 6      60
Birth       MAL-ED           BRAZIL                         0                54      60
Birth       MAL-ED           INDIA                          1                 4      39
Birth       MAL-ED           INDIA                          0                35      39
Birth       MAL-ED           NEPAL                          1                 3      24
Birth       MAL-ED           NEPAL                          0                21      24
Birth       MAL-ED           PERU                           1                73     213
Birth       MAL-ED           PERU                           0               140     213
Birth       MAL-ED           SOUTH AFRICA                   1                 1      91
Birth       MAL-ED           SOUTH AFRICA                   0                90      91
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
6 months    JiVitA-3         BANGLADESH                     1              7644    9901
6 months    JiVitA-3         BANGLADESH                     0              2257    9901
6 months    JiVitA-4         BANGLADESH                     1              3328    4272
6 months    JiVitA-4         BANGLADESH                     0               944    4272
6 months    Keneba           GAMBIA                         1               586    1908
6 months    Keneba           GAMBIA                         0              1322    1908
6 months    LCNI-5           MALAWI                         1                47     272
6 months    LCNI-5           MALAWI                         0               225     272
6 months    MAL-ED           BANGLADESH                     1                84     231
6 months    MAL-ED           BANGLADESH                     0               147     231
6 months    MAL-ED           BRAZIL                         1                30     209
6 months    MAL-ED           BRAZIL                         0               179     209
6 months    MAL-ED           INDIA                          1                11     218
6 months    MAL-ED           INDIA                          0               207     218
6 months    MAL-ED           NEPAL                          1                12     225
6 months    MAL-ED           NEPAL                          0               213     225
6 months    MAL-ED           PERU                           1                92     271
6 months    MAL-ED           PERU                           0               179     271
6 months    MAL-ED           SOUTH AFRICA                   1                 3     233
6 months    MAL-ED           SOUTH AFRICA                   0               230     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               231     232
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
24 months   JiVitA-3         BANGLADESH                     1              3926    5088
24 months   JiVitA-3         BANGLADESH                     0              1162    5088
24 months   JiVitA-4         BANGLADESH                     1              3292    4199
24 months   JiVitA-4         BANGLADESH                     0               907    4199
24 months   Keneba           GAMBIA                         1               515    1513
24 months   Keneba           GAMBIA                         0               998    1513
24 months   LCNI-5           MALAWI                         1                34     189
24 months   LCNI-5           MALAWI                         0               155     189
24 months   MAL-ED           BANGLADESH                     1                76     205
24 months   MAL-ED           BANGLADESH                     0               129     205
24 months   MAL-ED           BRAZIL                         1                25     169
24 months   MAL-ED           BRAZIL                         0               144     169
24 months   MAL-ED           INDIA                          1                11     209
24 months   MAL-ED           INDIA                          0               198     209
24 months   MAL-ED           NEPAL                          1                12     219
24 months   MAL-ED           NEPAL                          0               207     219
24 months   MAL-ED           PERU                           1                68     201
24 months   MAL-ED           PERU                           0               133     201
24 months   MAL-ED           SOUTH AFRICA                   1                 3     216
24 months   MAL-ED           SOUTH AFRICA                   0               213     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               201     202
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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/960b7608-1b02-4919-b675-914ed0abc409/b2cba20b-0166-450a-b903-5972f2a0fb1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/960b7608-1b02-4919-b675-914ed0abc409/b2cba20b-0166-450a-b903-5972f2a0fb1a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/960b7608-1b02-4919-b675-914ed0abc409/b2cba20b-0166-450a-b903-5972f2a0fb1a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.0535402   -1.1508242   -0.9562562
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1181703   -1.2947998   -0.9415409
Birth       JiVitA-3       BANGLADESH   1                    NA                -1.5948499   -1.6196367   -1.5700631
Birth       JiVitA-3       BANGLADESH   0                    NA                -1.5983524   -1.6377596   -1.5589452
Birth       JiVitA-4       BANGLADESH   1                    NA                -1.5081133   -1.5600702   -1.4561563
Birth       JiVitA-4       BANGLADESH   0                    NA                -1.5999075   -1.7277846   -1.4720304
Birth       Keneba         GAMBIA       1                    NA                -0.0003303   -0.1061201    0.1054594
Birth       Keneba         GAMBIA       0                    NA                 0.0247714   -0.0543181    0.1038608
Birth       MAL-ED         BANGLADESH   1                    NA                -1.0385162   -1.2726729   -0.8043594
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0555956   -1.2349663   -0.8762249
Birth       MAL-ED         BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       MAL-ED         BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       MAL-ED         PERU         1                    NA                -0.8771790   -1.0412072   -0.7131507
Birth       MAL-ED         PERU         0                    NA                -0.9213049   -1.0688905   -0.7737193
Birth       PROVIDE        BANGLADESH   1                    NA                -0.9378016   -1.0664636   -0.8091396
Birth       PROVIDE        BANGLADESH   0                    NA                -0.8695546   -0.9558429   -0.7832663
Birth       SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
6 months    EE             PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE             PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal      NEPAL        1                    NA                -1.3043678   -1.3935015   -1.2152340
6 months    GMS-Nepal      NEPAL        0                    NA                -1.4768369   -1.6462221   -1.3074518
6 months    JiVitA-3       BANGLADESH   1                    NA                -1.3087430   -1.3391689   -1.2783171
6 months    JiVitA-3       BANGLADESH   0                    NA                -1.3335876   -1.3827748   -1.2844004
6 months    JiVitA-4       BANGLADESH   1                    NA                -1.3090863   -1.3499684   -1.2682042
6 months    JiVitA-4       BANGLADESH   0                    NA                -1.4879747   -1.5794517   -1.3964977
6 months    Keneba         GAMBIA       1                    NA                -0.8892971   -0.9730410   -0.8055533
6 months    Keneba         GAMBIA       0                    NA                -0.9510356   -1.0087063   -0.8933649
6 months    LCNI-5         MALAWI       1                    NA                -1.8156329   -2.1039465   -1.5273193
6 months    LCNI-5         MALAWI       0                    NA                -1.6282274   -1.7592029   -1.4972520
6 months    MAL-ED         BANGLADESH   1                    NA                -1.0894593   -1.2754092   -0.9035093
6 months    MAL-ED         BANGLADESH   0                    NA                -1.2347696   -1.3910954   -1.0784437
6 months    MAL-ED         BRAZIL       1                    NA                 0.1857711   -0.2693098    0.6408521
6 months    MAL-ED         BRAZIL       0                    NA                 0.0354610   -0.1147584    0.1856803
6 months    MAL-ED         INDIA        1                    NA                -2.6619395   -3.5433676   -1.7805114
6 months    MAL-ED         INDIA        0                    NA                -1.1969153   -1.3178133   -1.0760173
6 months    MAL-ED         NEPAL        1                    NA                -0.6200429   -1.1909057   -0.0491801
6 months    MAL-ED         NEPAL        0                    NA                -0.5573929   -0.6756978   -0.4390880
6 months    MAL-ED         PERU         1                    NA                -1.2678493   -1.4420923   -1.0936064
6 months    MAL-ED         PERU         0                    NA                -1.3633058   -1.4975159   -1.2290958
6 months    PROVIDE        BANGLADESH   1                    NA                -1.0969129   -1.2325114   -0.9613144
6 months    PROVIDE        BANGLADESH   0                    NA                -1.0920915   -1.1800764   -1.0041067
6 months    SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL        1                    NA                -1.9053102   -2.0004200   -1.8102003
24 months   GMS-Nepal      NEPAL        0                    NA                -1.8882059   -2.0795085   -1.6969033
24 months   JiVitA-3       BANGLADESH   1                    NA                -2.0021112   -2.0421030   -1.9621193
24 months   JiVitA-3       BANGLADESH   0                    NA                -2.0421841   -2.1120037   -1.9723645
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.7809981   -1.8229856   -1.7390106
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.8388377   -1.9158086   -1.7618669
24 months   Keneba         GAMBIA       1                    NA                -1.5136642   -1.5982363   -1.4290920
24 months   Keneba         GAMBIA       0                    NA                -1.6193135   -1.6857103   -1.5529167
24 months   LCNI-5         MALAWI       1                    NA                -2.0423391   -2.3427563   -1.7419219
24 months   LCNI-5         MALAWI       0                    NA                -1.9521956   -2.1112696   -1.7931215
24 months   MAL-ED         BANGLADESH   1                    NA                -1.9731641   -2.2157978   -1.7305303
24 months   MAL-ED         BANGLADESH   0                    NA                -1.9259264   -2.0725306   -1.7793223
24 months   MAL-ED         BRAZIL       1                    NA                -0.0931185   -0.5903882    0.4041511
24 months   MAL-ED         BRAZIL       0                    NA                 0.0113011   -0.1746203    0.1972225
24 months   MAL-ED         INDIA        1                    NA                -2.4718875   -2.9828661   -1.9609089
24 months   MAL-ED         INDIA        0                    NA                -1.8528872   -1.9844077   -1.7213667
24 months   MAL-ED         NEPAL        1                    NA                -1.3989339   -1.9379456   -0.8599222
24 months   MAL-ED         NEPAL        0                    NA                -1.3064342   -1.4319440   -1.1809244
24 months   MAL-ED         PERU         1                    NA                -1.8079764   -2.0117464   -1.6042064
24 months   MAL-ED         PERU         0                    NA                -1.7396350   -1.8893725   -1.5898975
24 months   PROVIDE        BANGLADESH   1                    NA                -1.6885418   -1.8468653   -1.5302184
24 months   PROVIDE        BANGLADESH   0                    NA                -1.5698091   -1.6658456   -1.4737725


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3       BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4       BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       Keneba         GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED         BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED         PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
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
6 months    MAL-ED         INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
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
24 months   MAL-ED         INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED         PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0646301   -0.2591143    0.1298540
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                 -0.0035024   -0.0443842    0.0373793
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0917942   -0.2289051    0.0453166
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                  0.0251017   -0.0966135    0.1468169
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.0170794   -0.3134255    0.2792667
Birth       MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU         0                    1                 -0.0441259   -0.2352357    0.1469838
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0682470   -0.0735790    0.2100730
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.1724691   -0.3637590    0.0188207
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                 -0.0248446   -0.0770849    0.0273957
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.1788884   -0.2779945   -0.0797823
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.0617385   -0.1592748    0.0357979
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.1874055   -0.1282830    0.5030939
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.1453103   -0.3893735    0.0987530
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.1503102   -0.6285074    0.3278870
6 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA        0                    1                  1.4650242    0.5773574    2.3526909
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.0626500   -0.5202566    0.6455565
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                 -0.0954565   -0.3108534    0.1199404
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                  0.0048214   -0.1569012    0.1665440
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                  0.0171043   -0.1939790    0.2281876
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                 -0.0400729   -0.1169201    0.0367743
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0578396   -0.1401656    0.0244864
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1056493   -0.2122288    0.0009302
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0901435   -0.2498761    0.4301631
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.0472376   -0.2361046    0.3305798
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.1044196   -0.4299527    0.6387919
24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA        0                    1                  0.6190003    0.0912490    1.1467516
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.0924997   -0.4607273    0.6457267
24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU         0                    1                  0.0683414   -0.1808530    0.3175358
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                  0.1187328   -0.0637416    0.3012072


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0105806   -0.0601620    0.0390008
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.0006839   -0.0096598    0.0082921
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0192006   -0.0474969    0.0090958
Birth       Keneba         GAMBIA       1                    NA                 0.0129747   -0.0663025    0.0922518
Birth       MAL-ED         BANGLADESH   1                    NA                -0.0145082   -0.2124570    0.1834406
Birth       MAL-ED         BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       MAL-ED         PERU         1                    NA                -0.0293938   -0.1554285    0.0966409
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0526996   -0.0536968    0.1590959
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
6 months    EE             PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0496603   -0.0993887    0.0000681
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0050829   -0.0170106    0.0068448
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0391441   -0.0606417   -0.0176464
6 months    Keneba         GAMBIA       1                    NA                -0.0438137   -0.1115606    0.0239333
6 months    LCNI-5         MALAWI       1                    NA                 0.1760373   -0.0881655    0.4402402
6 months    MAL-ED         BANGLADESH   1                    NA                -0.1006201   -0.2571266    0.0558864
6 months    MAL-ED         BRAZIL       1                    NA                -0.1381954   -0.5489495    0.2725587
6 months    MAL-ED         INDIA        1                    NA                 1.4431092    0.5913775    2.2948409
6 months    MAL-ED         NEPAL        1                    NA                 0.0578058   -0.4974105    0.6130221
6 months    MAL-ED         PERU         1                    NA                -0.0541833   -0.1972118    0.0888453
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0052214   -0.1188228    0.1292656
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0050974   -0.0458838    0.0560786
24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0096891   -0.0273755    0.0079973
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0104784   -0.0280312    0.0070744
24 months   Keneba         GAMBIA       1                    NA                -0.0739651   -0.1446607   -0.0032696
24 months   LCNI-5         MALAWI       1                    NA                 0.0772068   -0.2027636    0.3571772
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0155299   -0.1669146    0.1979744
24 months   MAL-ED         BRAZIL       1                    NA                 0.0992329   -0.3655688    0.5640347
24 months   MAL-ED         INDIA        1                    NA                 0.5855478    0.0867876    1.0843080
24 months   MAL-ED         NEPAL        1                    NA                 0.0801668   -0.4457005    0.6060341
24 months   MAL-ED         PERU         1                    NA                 0.0555054   -0.1136208    0.2246317
24 months   PROVIDE        BANGLADESH   1                    NA                 0.0861197   -0.0535247    0.2257641

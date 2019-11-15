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

agecat      studyid                    country                        predfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                72     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               133     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 6      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                54      60
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      39
Birth       ki0047075b-MAL-ED          INDIA                          0                35      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      24
Birth       ki0047075b-MAL-ED          PERU                           1                73     213
Birth       ki0047075b-MAL-ED          PERU                           0               140     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113
Birth       ki1000109-EE               PAKISTAN                       1                38      42
Birth       ki1000109-EE               PAKISTAN                       0                 4      42
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10466   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2957   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2103    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               529    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225
6 months    ki0047075b-MAL-ED          PERU                           1                92     271
6 months    ki0047075b-MAL-ED          PERU                           0               179     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7644    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3328    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               944    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219
24 months   ki0047075b-MAL-ED          PERU                           1                68     201
24 months   ki0047075b-MAL-ED          PERU                           0               133     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3926    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1162    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3292    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               907    4199


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/01d21e1b-7656-470d-9463-b842148310d6/b8122946-00f8-4fa1-8b4c-c0580e626ae4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/01d21e1b-7656-470d-9463-b842148310d6/b8122946-00f8-4fa1-8b4c-c0580e626ae4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/01d21e1b-7656-470d-9463-b842148310d6/b8122946-00f8-4fa1-8b4c-c0580e626ae4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.0333686   -1.2573106   -0.8094267
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0639853   -1.2429585   -0.8850122
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.8698495   -1.0359033   -0.7037957
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.9242719   -1.0725558   -0.7759880
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0519937   -1.1495057   -0.9544816
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1020653   -1.2784377   -0.9256929
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.5948280   -1.6196165   -1.5700395
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.5980571   -1.6373643   -1.5587499
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.5076867   -1.5597515   -1.4556218
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.5966860   -1.7242381   -1.4691340
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1199679   -1.3042391   -0.9356966
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2424552   -1.3987370   -1.0861735
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1140678   -0.3006663    0.5288020
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0291488   -0.1210867    0.1793842
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -1.6591702   -2.5311627   -0.7871776
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1960475   -1.3169853   -1.0751097
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.2095807   -0.7676852    0.3485238
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.5560711   -0.6742456   -0.4378967
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.2659839   -1.4457340   -1.0862337
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.3649671   -1.5024897   -1.2274444
6 months    ki1000109-EE          PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.3047737   -1.3936087   -1.2159388
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.4599231   -1.6279490   -1.2918972
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.6868610   -1.9810992   -1.3926229
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6254286   -1.7569648   -1.4938925
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3084086   -1.3388506   -1.2779665
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3327723   -1.3821059   -1.2834387
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3092571   -1.3502899   -1.2682243
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4767226   -1.5677059   -1.3857392
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.9189412   -2.1614966   -1.6763858
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.9168276   -2.0573611   -1.7762942
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0537031   -0.5433926    0.4359863
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0191616   -0.1668748    0.2051979
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.7578353   -3.3254471   -2.1902235
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8479789   -1.9796769   -1.7162810
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -1.6011895   -2.1653880   -1.0369910
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -1.3045793   -1.4300895   -1.1790691
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -1.8256085   -2.0384168   -1.6128002
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -1.7254746   -1.8720398   -1.5789095
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.9053046   -2.0007391   -1.8098701
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.8814225   -2.0736538   -1.6891913
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -1.9659896   -2.2662999   -1.6656792
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9508095   -2.1093506   -1.7922685
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -2.0025810   -2.0425962   -1.9625658
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0415010   -2.1121055   -1.9708965
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7813211   -1.8232544   -1.7393879
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8317748   -1.9092731   -1.7542766


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0306167   -0.3179376    0.2567042
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0544224   -0.2492456    0.1404008
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0500717   -0.2445252    0.1443819
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0032291   -0.0440292    0.0375710
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0889994   -0.2256487    0.0476500
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1224874   -0.3646362    0.1196614
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0849191   -0.5254817    0.3556436
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.4631227   -0.4155313    1.3417766
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                 -0.3464904   -0.9171246    0.2241437
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.0989832   -0.3259321    0.1279657
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1551493   -0.3443914    0.0340927
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0614324   -0.2611914    0.3840562
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0243637   -0.0767996    0.0280721
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1674655   -0.2656776   -0.0692533
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0021136   -0.2776754    0.2819026
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0728647   -0.4540337    0.5997632
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.9098563    0.3285199    1.4911928
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.2966102   -0.2811646    0.8743850
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.1001339   -0.1523504    0.3526182
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0238821   -0.1882642    0.2360284
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0151801   -0.3264564    0.3568165
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0389200   -0.1165519    0.0387120
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0504537   -0.1337683    0.0328609


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0196557   -0.2076072    0.1682957
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0367233   -0.1650490    0.0916025
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0121271   -0.0619579    0.0377036
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007058   -0.0096959    0.0082843
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0196272   -0.0479497    0.0086954
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0701115   -0.2240774    0.0838544
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0664921   -0.4455253    0.3125412
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.4403399   -0.3987144    1.2793942
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3526563   -0.8967974    0.1914847
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0560487   -0.2070115    0.0949141
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0492543   -0.0984874   -0.0000212
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0472654   -0.2201476    0.3146785
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0054173   -0.0173660    0.0065314
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0389732   -0.0604309   -0.0175155
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0386929   -0.2225278    0.1451420
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0598175   -0.3966900    0.5163251
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.8714955    0.3173944    1.4255967
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.2824224   -0.2675628    0.8324076
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0731375   -0.1005955    0.2468706
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0050918   -0.0462159    0.0563995
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0008573   -0.2819668    0.2836814
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0092193   -0.0269142    0.0084756
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0101554   -0.0278900    0.0075792

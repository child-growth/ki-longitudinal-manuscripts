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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12323   15793
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3470   15793
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7624    9877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2253    9877
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3897    5048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1151    5048
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
![](/tmp/9aeadc49-d603-4eab-b2f2-8ae0434bbbe0/b0986de7-960e-4890-a328-9b90b4754e50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9aeadc49-d603-4eab-b2f2-8ae0434bbbe0/b0986de7-960e-4890-a328-9b90b4754e50/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9aeadc49-d603-4eab-b2f2-8ae0434bbbe0/b0986de7-960e-4890-a328-9b90b4754e50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.0363916   -1.2553751   -0.8174081
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0569491   -1.2334404   -0.8804577
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.8677955   -1.0330071   -0.7025839
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.9234756   -1.0717248   -0.7752264
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0548175   -1.1521681   -0.9574669
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1228182   -1.2979299   -0.9477065
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.2128791   -1.2467664   -1.1789919
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.2251534   -1.2789211   -1.1713857
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.5067098   -1.5590367   -1.4543830
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.5999612   -1.7322859   -1.4676364
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.0987859   -1.2812757   -0.9162962
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2415552   -1.3971456   -1.0859649
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1104762   -0.3176181    0.5385706
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0335821   -0.1165791    0.1837432
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -1.5341830   -2.5319564   -0.5364095
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1890520   -1.3101709   -1.0679330
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.7117394   -1.2781111   -0.1453676
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.5570507   -0.6754479   -0.4386535
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.2559079   -1.4338272   -1.0779887
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.3623083   -1.4970158   -1.2276009
6 months    ki1000109-EE          PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.3054951   -1.3943226   -1.2166677
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.4585646   -1.6276530   -1.2894761
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.7133444   -2.0064455   -1.4202433
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6254731   -1.7568024   -1.4941437
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3311627   -1.3616194   -1.3007059
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3561191   -1.4054865   -1.3067517
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3072961   -1.3484456   -1.2661467
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4806663   -1.5718912   -1.3894415
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.9583922   -2.1908698   -1.7259145
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.9344542   -2.0869530   -1.7819555
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0027446   -0.5058311    0.5113203
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0146379   -0.1725317    0.2018074
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.5576905   -3.1029509   -2.0124301
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8475126   -1.9789626   -1.7160626
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -1.8869552   -2.4298017   -1.3441087
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -1.3118636   -1.4375394   -1.1861879
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -1.8171217   -2.0259332   -1.6083102
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -1.7363171   -1.8891015   -1.5835327
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.9085388   -2.0033379   -1.8137396
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.8726867   -2.0639590   -1.6814145
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -2.0941453   -2.3940851   -1.7942055
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9545016   -2.1129963   -1.7960070
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -2.0062527   -2.0459012   -1.9666042
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0562136   -2.1229785   -1.9894488
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7796192   -1.8214632   -1.7377752
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8271819   -1.9029656   -1.7513982


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.2156259   -1.2478377   -1.1834141
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.1905988   -1.3103463   -1.0708514
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2185703   -1.3422027   -1.0949380
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.5616889   -0.6770008   -0.4463770
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3264945   -1.4355111   -1.2174779
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3370052   -1.3650190   -1.3089913
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9581707   -2.0862906   -1.8300508
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8848804   -2.0154334   -1.7543274
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -1.3232192   -1.4452887   -1.2011496
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -2.0173019   -2.0536076   -1.9809962
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0205574   -0.3025352    0.2614203
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0556801   -0.2496742    0.1383140
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0680007   -0.2613502    0.1253488
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0122743   -0.0659540    0.0414054
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0932513   -0.2346607    0.0481580
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1427693   -0.3830656    0.0975270
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0768942   -0.5303287    0.3765403
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.3451310   -0.6600448    1.3503069
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.1546887   -0.4243334    0.7337108
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.1064004   -0.3258617    0.1130608
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1530694   -0.3434810    0.0373421
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0878713   -0.2308312    0.4065738
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0249564   -0.0775226    0.0276097
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1733702   -0.2720504   -0.0746901
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0239379   -0.2543386    0.3022145
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0118933   -0.5316490    0.5554355
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.7101779    0.1491073    1.2712485
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.5750916    0.0184221    1.1317610
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0808046   -0.1766540    0.3382633
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0358520   -0.1749304    0.2466344
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1396437   -0.2002230    0.4795104
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0499609   -0.1220643    0.0221425
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0475627   -0.1296326    0.0345073


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0166328   -0.2001189    0.1668533
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0387773   -0.1665551    0.0890006
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0093033   -0.0592150    0.0406085
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0027468   -0.0145213    0.0090277
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0206040   -0.0490530    0.0078450
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0918129   -0.2448898    0.0612640
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0594555   -0.4488293    0.3299183
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.3156126   -0.6470473    1.2782726
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1500505   -0.4011422    0.7012432
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0705866   -0.2162900    0.0751169
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0485329   -0.0978640    0.0007982
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0737488   -0.1922115    0.3397091
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0058425   -0.0178127    0.0061277
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0409342   -0.0626122   -0.0192562
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0002214   -0.1741988    0.1746417
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0043560   -0.4701828    0.4788947
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.6728101    0.1418721    1.2037481
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.5637360    0.0332390    1.0942330
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0626441   -0.1103739    0.2356621
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0083260   -0.0425581    0.0592100
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.1290130   -0.1512561    0.4092821
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0110492   -0.0275110    0.0054127
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0118573   -0.0294851    0.0057705

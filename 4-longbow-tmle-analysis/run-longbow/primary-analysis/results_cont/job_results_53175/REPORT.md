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

agecat      studyid                    country                        predexfd6    n_cell       n
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                38      42
Birth       ki1000109-EE               PAKISTAN                       0                 4      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               159     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               380     539
Birth       ki1101329-Keneba           GAMBIA                         1               485    1403
Birth       ki1101329-Keneba           GAMBIA                         0               918    1403
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               463     604
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               441     578
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
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
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/98cb864a-99a7-4caf-8d49-980481a94c88/74dfe42b-4f38-4222-b4c8-9e5c0bdc57c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/98cb864a-99a7-4caf-8d49-980481a94c88/74dfe42b-4f38-4222-b4c8-9e5c0bdc57c1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/98cb864a-99a7-4caf-8d49-980481a94c88/74dfe42b-4f38-4222-b4c8-9e5c0bdc57c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.0133351   -1.2463298   -0.7803404
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0679123   -1.2482783   -0.8875463
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.8679798   -1.0339522   -0.7020073
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.9254570   -1.0731359   -0.7777781
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.9258295   -1.0493489   -0.8023100
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.8655376   -0.9521422   -0.7789330
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0070025   -0.0995174    0.1135224
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0249659   -0.0538384    0.1037703
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0527977   -1.1502216   -0.9553739
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.1087959   -1.2860670   -0.9315248
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5948588   -1.6196472   -1.5700703
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.5979694   -1.6372884   -1.5586505
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.5073847   -1.5592691   -1.4555002
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.5971455   -1.7267845   -1.4675065
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1098339   -1.2901678   -0.9294999
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.2371891   -1.3933629   -1.0810154
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1088359   -0.3521896    0.5698613
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0297432   -0.1208808    0.1803672
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -1.7473411   -2.6534067   -0.8412755
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -1.1926054   -1.3137748   -1.0714361
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.9190667   -1.4480457   -0.3900877
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5564747   -0.6747904   -0.4381591
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.2486106   -1.4272967   -1.0699245
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.3676205   -1.5049307   -1.2303104
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.0839992   -1.2134623   -0.9545362
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0953757   -1.1823447   -1.0084068
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8859990   -0.9734806   -0.7985174
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9496285   -1.0085751   -0.8906820
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.3083604   -1.3973946   -1.2193262
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.4934150   -1.6636051   -1.3232249
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.6178579   -1.9046598   -1.3310559
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6206976   -1.7520174   -1.4893779
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3084880   -1.3389045   -1.2780714
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.3310479   -1.3802900   -1.2818059
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3097775   -1.3505939   -1.2689611
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.4867095   -1.5778160   -1.3956030
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.9893754   -2.2179218   -1.7608291
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9224785   -2.0710150   -1.7739421
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0754668   -0.5201476    0.3692141
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0112614   -0.1722010    0.1947237
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -2.6370446   -3.0959722   -2.1781171
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -1.8488787   -1.9806199   -1.7171376
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -2.0943542   -2.4817632   -1.7069452
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.3071040   -1.4324883   -1.1817197
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -1.7768741   -1.9901486   -1.5635996
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -1.7485869   -1.8982472   -1.5989265
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.6821352   -1.8410533   -1.5232172
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5688609   -1.6650199   -1.4727018
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5287278   -1.6104515   -1.4470040
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6166575   -1.6816607   -1.5516544
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.9063587   -2.0015304   -1.8111871
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8835903   -2.0768043   -1.6903764
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.0480915   -2.3429411   -1.7532419
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9531818   -2.1114861   -1.7948775
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0026559   -2.0426019   -1.9627099
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0400373   -2.1098455   -1.9702292
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7784060   -1.8203475   -1.7364645
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8382213   -1.9167683   -1.7596744


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0545772   -0.3499339    0.2407794
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.0574772   -0.2515195    0.1365650
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0602919   -0.0749731    0.1955569
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.0179634   -0.1042889    0.1402158
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0559981   -0.2514028    0.1394065
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0031106   -0.0439300    0.0377087
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0897609   -0.2285186    0.0489969
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1273553   -0.3665829    0.1118723
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0790926   -0.5649033    0.4067181
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.5547356   -0.3596953    1.4691665
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.3625919   -0.1802307    0.9054146
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.1190099   -0.3456105    0.1075907
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0113765   -0.1634993    0.1407463
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0636295   -0.1681242    0.0408651
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1850546   -0.3763359    0.0062267
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0028398   -0.3172128    0.3115333
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0225600   -0.0748864    0.0297664
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1769320   -0.2754964   -0.0783675
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0668969   -0.2052244    0.3390182
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0867281   -0.3954134    0.5688696
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.7881659    0.3108725    1.2654593
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.7872502    0.3795432    1.1949571
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0282872   -0.2329511    0.2895255
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1132744   -0.0707710    0.2973197
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0879298   -0.1885309    0.0126714
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0227684   -0.1903642    0.2359010
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0949097   -0.2408375    0.4306568
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0373814   -0.1142735    0.0395107
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0598153   -0.1443587    0.0247280


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0396893   -0.2365004    0.1571219
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0385930   -0.1669549    0.0897689
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0407274   -0.0596079    0.1410627
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0056418   -0.0743785    0.0856621
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0113231   -0.0612551    0.0386090
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0006750   -0.0096563    0.0083062
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0199292   -0.0482673    0.0084090
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0802455   -0.2319858    0.0714948
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0612601   -0.4785631    0.3560429
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.5285108   -0.3451476    1.4021692
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.3568296   -0.1589900    0.8726493
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0734220   -0.2234711    0.0766271
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0076923   -0.1245995    0.1092150
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0471118   -0.1197786    0.0255550
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0456677   -0.0948585    0.0035231
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0217377   -0.2830092    0.2395338
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0053379   -0.0172481    0.0065723
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0384528   -0.0598557   -0.0170499
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0317413   -0.1375457    0.2010283
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0815812   -0.3321348    0.4952971
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.7507049    0.3018720    1.1995378
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.7755871    0.3876530    1.1635211
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0244031   -0.1535509    0.2023571
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0797131   -0.0611951    0.2206213
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0589016   -0.1253938    0.0075907
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0061460   -0.0451078    0.0573998
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0829592   -0.1933766    0.3592950
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0091444   -0.0267877    0.0084989
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0130705   -0.0309544    0.0048133

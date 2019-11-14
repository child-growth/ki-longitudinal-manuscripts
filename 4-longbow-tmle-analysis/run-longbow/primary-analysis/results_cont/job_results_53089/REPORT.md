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
Birth       ki1101329-Keneba           GAMBIA                         1                 6      12
Birth       ki1101329-Keneba           GAMBIA                         0                 6      12
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
![](/tmp/5d082991-bf27-48c8-8ad9-f08288b5185a/f9f6f968-c6cc-4b95-a5e9-a707c2d46f5c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5d082991-bf27-48c8-8ad9-f08288b5185a/f9f6f968-c6cc-4b95-a5e9-a707c2d46f5c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5d082991-bf27-48c8-8ad9-f08288b5185a/f9f6f968-c6cc-4b95-a5e9-a707c2d46f5c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.0332810   -1.2551204   -0.8114416
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0568171   -1.2346097   -0.8790245
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.8829307   -1.0519576   -0.7139039
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.9179744   -1.0642687   -0.7716801
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.3791683   -1.4632120   -1.2951246
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4196640   -2.1447080   -0.6946200
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.9305003   -1.0581823   -0.8028182
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.8770089   -0.9628203   -0.7911975
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.9616667   -1.9274750    0.0041417
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.1016667   -2.3897981    2.1864648
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0470387   -1.1443193   -0.9497582
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.0567689   -1.2341070   -0.8794308
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.2127747   -1.2466718   -1.1788777
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2249042   -1.2785567   -1.1712517
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.5062781   -1.5583799   -1.4541762
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.6062035   -1.7359419   -1.4764652
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.0956591   -1.2791473   -0.9121708
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.2383311   -1.3957464   -1.0809158
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.4617123    0.0014314    0.9219932
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0426046   -0.1082354    0.1934446
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -1.6911595   -2.5294903   -0.8528287
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -1.1936085   -1.3149904   -1.0722266
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.7781050   -1.4624953   -0.0937147
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5555850   -0.6740154   -0.4371545
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.2837600   -1.4635649   -1.1039551
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.3711371   -1.5077575   -1.2345166
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.0873010   -1.2237113   -0.9508908
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0911908   -1.1792705   -1.0031111
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8947098   -0.9821941   -0.8072255
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9485621   -1.0071543   -0.8899699
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.3083556   -1.3970364   -1.2196748
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.4910831   -1.6592993   -1.3228669
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.7566429   -2.0406186   -1.4726672
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6249598   -1.7565797   -1.4933398
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3313965   -1.3618436   -1.3009494
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.3564077   -1.4057757   -1.3070398
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3100239   -1.3510716   -1.2689761
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.4845127   -1.5743809   -1.3946444
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.9924562   -2.2334667   -1.7514457
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9220502   -2.0684826   -1.7756178
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0651969   -0.5115434    0.3811497
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0155274   -0.1681018    0.1991566
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -2.5240426   -3.0878941   -1.9601912
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -1.8492357   -1.9807269   -1.7177445
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -1.4259227   -2.0386625   -0.8131830
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.3087319   -1.4345111   -1.1829528
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -1.7953554   -1.9980140   -1.5926968
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -1.7347706   -1.8840403   -1.5855009
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.6961691   -1.8542123   -1.5381260
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5684340   -1.6645882   -1.4722799
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5230278   -1.6052429   -1.4408127
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6182137   -1.6833013   -1.5531262
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.9070585   -2.0024010   -1.8117160
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8824770   -2.0756258   -1.6893282
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.0834343   -2.3761184   -1.7907502
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9565064   -2.1152729   -1.7977398
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0055363   -2.0453285   -1.9657441
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0593161   -2.1267443   -1.9918879
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7770286   -1.8189977   -1.7350595
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8402006   -1.9190956   -1.7613057


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                -0.5316667   -1.7992053    0.7358720
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.2156259   -1.2478377   -1.1834141
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.1905988   -1.3103463   -1.0708514
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -1.2185703   -1.3422027   -1.0949380
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5616889   -0.6770008   -0.4463770
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3264945   -1.4355111   -1.2174779
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3370052   -1.3650190   -1.3089913
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9581707   -2.0862906   -1.8300508
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -1.8848804   -2.0154334   -1.7543274
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.3232192   -1.4452887   -1.2011496
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0173019   -2.0536076   -1.9809962
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0235361   -0.3087823    0.2617101
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.0350437   -0.2311734    0.1610860
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0404957   -0.7393477    0.6583563
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0534914   -0.0854572    0.1924400
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.8600000   -1.6236126    3.3436126
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0097302   -0.2052287    0.1857684
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0121295   -0.0656867    0.0414278
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0999255   -0.2386931    0.0388421
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1426721   -0.3851219    0.0997777
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.4191078   -0.9062301    0.0680146
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.4975510   -0.3495003    1.3446023
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.2225200   -0.4719359    0.9169759
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.0873771   -0.3143378    0.1395837
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0038898   -0.1663248    0.1585453
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0538523   -0.1575847    0.0498801
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1827275   -0.3718737    0.0064187
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.1316832   -0.1814224    0.4447888
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0250112   -0.0775980    0.0275755
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1744888   -0.2717254   -0.0772522
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0704060   -0.2112239    0.3520359
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0807243   -0.4031417    0.5645904
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.6748070    0.0953070    1.2543069
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1171908   -0.5076506    0.7420322
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0605848   -0.1869830    0.3081526
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1277351   -0.0551221    0.3105923
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0951859   -0.1961294    0.0057576
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0245815   -0.1894251    0.2385880
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1269280   -0.2065274    0.4603833
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0537798   -0.1268599    0.0193003
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0631720   -0.1482453    0.0219013


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0197434   -0.2064178    0.1669311
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0236420   -0.1554457    0.1081617
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0145405   -0.0577897    0.0287087
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0453982   -0.0595076    0.1503040
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.4300000   -0.8375387    1.6975387
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0170820   -0.0671716    0.0330075
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0028512   -0.0146190    0.0089167
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0210358   -0.0493251    0.0072536
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0949398   -0.2495003    0.0596207
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.4106916   -0.8331727    0.0117895
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.4725892   -0.3332025    1.2783809
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.2164161   -0.4508933    0.8837255
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0427345   -0.1941239    0.1086550
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0043905   -0.1290615    0.1202805
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0384010   -0.1105171    0.0337152
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0456724   -0.0945763    0.0032315
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.1170473   -0.1441540    0.3782487
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0056087   -0.0175948    0.0063775
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0382065   -0.0597333   -0.0166796
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0342855   -0.1463998    0.2149707
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0722975   -0.3428325    0.4874275
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.6391623    0.0877988    1.1905257
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1027035   -0.4950258    0.7004329
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0408778   -0.1238817    0.2056373
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0937470   -0.0459146    0.2334086
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0646015   -0.1314541    0.0022511
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0068457   -0.0450868    0.0587782
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1183021   -0.1565057    0.3931099
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0117656   -0.0284238    0.0048925
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0144479   -0.0324163    0.0035205

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
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               177    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                52    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                62     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 3     65
Birth       ki0047075b-MAL-ED          INDIA                          0                33     47
Birth       ki0047075b-MAL-ED          INDIA                          1                14     47
Birth       ki0047075b-MAL-ED          NEPAL                          0                23     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 4     27
Birth       ki0047075b-MAL-ED          PERU                           0               223    233
Birth       ki0047075b-MAL-ED          PERU                           1                10    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               102    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                20    122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               119    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 5    124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                37     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                55     92
Birth       ki1000108-IRC              INDIA                          0               164    388
Birth       ki1000108-IRC              INDIA                          1               224    388
Birth       ki1000109-EE               PAKISTAN                       0               156    240
Birth       ki1000109-EE               PAKISTAN                       1                84    240
Birth       ki1000109-ResPak           PAKISTAN                       0                28     42
Birth       ki1000109-ResPak           PAKISTAN                       1                14     42
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               396    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               143    539
Birth       ki1101329-Keneba           GAMBIA                         0                 9     13
Birth       ki1101329-Keneba           GAMBIA                         1                 4     13
Birth       ki1113344-GMS-Nepal        NEPAL                          0               422    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1               262    684
Birth       ki1114097-CMIN             BANGLADESH                     0                15     20
Birth       ki1114097-CMIN             BANGLADESH                     1                 5     20
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               183    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                58    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               194    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                15    209
6 months    ki0047075b-MAL-ED          INDIA                          0               159    236
6 months    ki0047075b-MAL-ED          INDIA                          1                77    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               188    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                48    236
6 months    ki0047075b-MAL-ED          PERU                           0               263    273
6 months    ki0047075b-MAL-ED          PERU                           1                10    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               224    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                30    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               234    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                13    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               177    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               188    365
6 months    ki1000108-IRC              INDIA                          0               180    407
6 months    ki1000108-IRC              INDIA                          1               227    407
6 months    ki1000109-EE               PAKISTAN                       0               249    373
6 months    ki1000109-EE               PAKISTAN                       1               124    373
6 months    ki1000109-ResPak           PAKISTAN                       0               143    239
6 months    ki1000109-ResPak           PAKISTAN                       1                96    239
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               154    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
6 months    ki1101329-Keneba           GAMBIA                         0              1441   2056
6 months    ki1101329-Keneba           GAMBIA                         1               615   2056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               336    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               228    564
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243
6 months    ki1114097-CONTENT          PERU                           0               211    215
6 months    ki1114097-CONTENT          PERU                           1                 4    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               162    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                50    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               156    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                13    169
24 months   ki0047075b-MAL-ED          INDIA                          0               151    227
24 months   ki0047075b-MAL-ED          INDIA                          1                76    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               182    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                46    228
24 months   ki0047075b-MAL-ED          PERU                           0               193    201
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                25    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                12    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               176    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               190    366
24 months   ki1000108-IRC              INDIA                          0               181    409
24 months   ki1000108-IRC              INDIA                          1               228    409
24 months   ki1000109-EE               PAKISTAN                       0               109    167
24 months   ki1000109-EE               PAKISTAN                       1                58    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               432    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6
24 months   ki1101329-Keneba           GAMBIA                         0              1091   1563
24 months   ki1101329-Keneba           GAMBIA                         1               472   1563
24 months   ki1113344-GMS-Nepal        NEPAL                          0               300    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1               188    488
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242
24 months   ki1114097-CONTENT          PERU                           0               161    164
24 months   ki1114097-CONTENT          PERU                           1                 3    164


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/0350d665-aae3-48dd-b1c2-e302320ea2ac/67b77a27-d4c5-4f03-87ab-3e3bf884c5f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0350d665-aae3-48dd-b1c2-e302320ea2ac/67b77a27-d4c5-4f03-87ab-3e3bf884c5f6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0350d665-aae3-48dd-b1c2-e302320ea2ac/67b77a27-d4c5-4f03-87ab-3e3bf884c5f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1166345   -1.2660859   -0.9671831
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.0667726   -1.3782458   -0.7552994
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.3352226   -1.6660503   -1.0043949
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1945042   -1.8235179   -0.5654906
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8921788   -1.0093401   -0.7750176
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.6797246   -1.6228838    0.2634346
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.6724113   -0.8566549   -0.4881678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0224130   -0.4894893    0.4446632
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1432773   -1.3541075   -0.9324471
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.9860000   -2.2167588    0.2447588
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.7868067   -1.1184084   -0.4552050
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.0786301   -1.3614127   -0.7958475
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.8736710   -1.0840436   -0.6632983
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.1075981   -0.1089330    0.3241292
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -2.0477185   -2.2586778   -1.8367591
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.4670966   -1.8420951   -1.0920981
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -1.1296205   -1.5586607   -0.7005803
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -0.5912673   -1.5808347    0.3983000
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8699836   -0.9551364   -0.7848309
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9409875   -1.0966672   -0.7853078
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1525158   -1.2529656   -1.0520660
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.8672220   -0.9896584   -0.7447856
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -1.2613333   -1.7710980   -0.7515686
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -1.0280000   -2.2553082    0.1993082
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1662401   -1.2907018   -1.0417784
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.3567323   -1.6469977   -1.0664668
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0274268   -0.1218470    0.1767007
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1797865   -0.4374767    0.7970496
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2378414   -1.3794547   -1.0962280
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1774158   -1.3973614   -0.9574701
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.5263031   -0.6462218   -0.4063845
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7150289   -1.0059322   -0.4241257
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3352885   -1.4445006   -1.2260764
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.8868059   -1.6768832   -0.0967286
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0464400   -1.1846609   -0.9082191
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3022722   -1.6312808   -0.9732636
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3596467   -1.4839655   -1.2353279
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5312177   -2.1000134   -0.9624220
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.3928038   -1.6049176   -1.1806900
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4428328   -1.6335074   -1.2521582
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.4466568   -1.6362017   -1.2571119
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.0631707   -1.2393517   -0.8869898
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0517550   -2.1941242   -1.9093858
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.1472664   -2.3764731   -1.9180597
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.7222471   -1.9727604   -1.4717338
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.0144070   -1.3477732   -0.6810408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0474479   -1.1327029   -0.9621930
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2135072   -1.3601851   -1.0668293
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5419233   -0.5948835   -0.4889630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5592822   -0.6925538   -0.4260106
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.9031890   -0.9567636   -0.8496145
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9322792   -1.0293910   -0.8351674
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5398494   -1.6547430   -1.4249558
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.6793173   -3.2546939   -2.1039408
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3795216   -1.4790673   -1.2799759
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3100589   -1.4389017   -1.1812161
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7655959   -1.9148668   -1.6163250
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.8782967   -2.2437331   -1.5128604
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9929340   -2.1383757   -1.8474924
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.9668744   -2.2292236   -1.7045252
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0529412   -0.1218183    0.2277008
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1998006   -0.7822630    0.3826619
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9320471   -2.0830097   -1.7810844
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7231009   -1.9424881   -1.5037138
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.3108145   -1.4404648   -1.1811641
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.3150868   -1.6247149   -1.0054588
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7661917   -1.8882396   -1.6441438
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.4718750   -2.1856481   -0.7581019
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6549212   -1.7943329   -1.5155096
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7802835   -2.2632232   -1.2973437
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6337227   -2.7712750   -2.4961704
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.8644084   -3.4020045   -2.3268123
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5134336   -2.6567895   -2.3700777
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5986033   -2.7352392   -2.4619674
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.8399628   -1.9727208   -1.7072047
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.7716785   -1.9033433   -1.6400136
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.6502633   -2.8374993   -2.4630272
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.7057130   -2.9623235   -2.4491025
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5866084   -1.6863541   -1.4868627
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6484488   -1.7941190   -1.5027786
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5499845   -1.6115033   -1.4884657
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.6468008   -1.7462906   -1.5473110
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8945951   -1.9974915   -1.7916986
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8528842   -2.0020604   -1.7037080
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4887650   -2.6274221   -2.3501079
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.6520949   -2.9562456   -2.3479442


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1041048   -1.2383048   -0.9699048
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5877869   -0.7622273   -0.4133464
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1369355   -1.3453337   -0.9285373
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0454532   -1.1235003   -0.9674062
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.2030000   -1.6953191   -0.7106809
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4241872   -1.5668135   -1.2815609
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9116762   -0.9588660   -0.8644864
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5489071   -2.6476125   -2.4502017
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5774758   -1.6295950   -1.5253566
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0498619   -0.2962435    0.3959673
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.1407183   -0.5786417    0.8600784
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.2124543   -0.7377458    1.1626544
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.6499983    0.1413472    1.1586494
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1572773   -1.0914086    1.4059632
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2918234   -0.7302687    0.1466219
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.9812691    0.6788780    1.2836601
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.5806219    0.1518484    1.0093954
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                  0.5383532   -0.5518423    1.6285487
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0710039   -0.2483967    0.1063890
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2852938    0.1273476    0.4432401
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                  0.2333333   -1.0956307    1.5622974
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1904922   -0.5066934    0.1257091
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1523597   -0.4831023    0.7878216
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0604256   -0.2019004    0.3227516
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1887258   -0.5041837    0.1267321
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.4484826   -0.3490370    1.2460022
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2558322   -0.6129407    0.1012763
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1715710   -0.7541593    0.4110173
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0500290   -0.3332262    0.2331683
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.3834861    0.1276084    0.6393638
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0955114   -0.3658063    0.1747834
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.7078402    0.2900106    1.1256698
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1660593   -0.3361728    0.0040543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0173589   -0.1607526    0.1260348
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0290902   -0.1401482    0.0819679
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.1394679   -1.7259343   -0.5530016
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0694627   -0.0948992    0.2338246
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1127008   -0.5076510    0.2822494
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0260596   -0.2734496    0.3255688
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2527418   -0.8611601    0.3556764
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.2089461   -0.0586569    0.4765492
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0042724   -0.3403484    0.3318036
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.2943167   -0.4298157    1.0184491
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1253622   -0.6270885    0.3763641
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2306857   -0.7858389    0.3244675
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0851697   -0.2829526    0.1126132
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.0682843   -0.1186003    0.2551689
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0554497   -0.3731385    0.2622391
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0618404   -0.2384617    0.1147809
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0968163   -0.2138847    0.0202521
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0417109   -0.1395369    0.2229586
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1633299   -0.4976231    0.1709632


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0125297   -0.0677542    0.0928137
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1316055   -0.0989078    0.3621189
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0093891   -0.0255858    0.0443641
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0846245   -0.0091942    0.1784431
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063418   -0.0443044    0.0569881
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1743889   -0.4431371    0.0943592
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.5656297    0.3843398    0.7469197
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.1868435    0.0366026    0.3370843
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1496205   -0.2022347    0.5014757
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0151184   -0.0631507    0.0329139
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1070626    0.0461884    0.1679367
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0583333   -0.2769994    0.3936660
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0392509   -0.1149061    0.0364042
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0235939   -0.0186586    0.0658464
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0264713   -0.0590710    0.1120135
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0347562   -0.0998087    0.0302964
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0071933   -0.0186176    0.0330041
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0174773   -0.0594106    0.0244560
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0090982   -0.0421999    0.0240035
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0313834   -0.1776545    0.1148876
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.2122506    0.0674316    0.3570696
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0318018   -0.1201957    0.0565922
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2908385    0.1160442    0.4656327
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0442436   -0.0888264    0.0003392
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0015156   -0.0223523    0.0193211
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0084872   -0.0415723    0.0245980
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0386982   -0.0703736   -0.0070228
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0286823   -0.0381545    0.0955192
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0188417   -0.0840032    0.0463198
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0140189   -0.0570994    0.0851373
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0458407   -0.0974990    0.0058177
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0472012   -0.0432115    0.1376139
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0010496   -0.0670407    0.0649416
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0117141   -0.0181898    0.0416180
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0057406   -0.0479346    0.0594157
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0114409   -0.0486783    0.0257966
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0354735   -0.1382378    0.0672908
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0411853   -0.0630899    0.1454604
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0197268   -0.1281641    0.0887106
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0158138   -0.0605296    0.0289021
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0274913   -0.0627149    0.0077324
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0071770   -0.0623434    0.0766975
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0221854   -0.0792040    0.0348331

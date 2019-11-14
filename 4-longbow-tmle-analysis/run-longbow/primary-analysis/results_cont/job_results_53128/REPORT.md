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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** exclfeed3

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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               130     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                72     202
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                44      55
Birth       ki0047075b-MAL-ED          INDIA                          1                22      39
Birth       ki0047075b-MAL-ED          INDIA                          0                17      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                17      25
Birth       ki0047075b-MAL-ED          PERU                           1                47     218
Birth       ki0047075b-MAL-ED          PERU                           0               171     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                87      99
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                15      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80      95
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0       9
Birth       ki1000108-IRC              INDIA                          0                 9       9
Birth       ki1000109-EE               PAKISTAN                       1                22      22
Birth       ki1000109-EE               PAKISTAN                       0                 0      22
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               381     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               151     532
Birth       ki1101329-Keneba           GAMBIA                         1                11      12
Birth       ki1101329-Keneba           GAMBIA                         0                 1      12
Birth       ki1113344-GMS-Nepal        NEPAL                          1               352     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                70     422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10995   12129
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1134   12129
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                89      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 8      97
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               152     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                81     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                60     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0               127     187
6 months    ki0047075b-MAL-ED          INDIA                          1               110     210
6 months    ki0047075b-MAL-ED          INDIA                          0               100     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                70     227
6 months    ki0047075b-MAL-ED          NEPAL                          0               157     227
6 months    ki0047075b-MAL-ED          PERU                           1                61     270
6 months    ki0047075b-MAL-ED          PERU                           0               209     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                46     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               166     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1                39      39
6 months    ki1000109-EE               PAKISTAN                       0                 0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               175     603
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8480    9289
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               809    9289
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               135     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0               100     152
24 months   ki0047075b-MAL-ED          INDIA                          1               102     202
24 months   ki0047075b-MAL-ED          INDIA                          0               100     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                67     220
24 months   ki0047075b-MAL-ED          NEPAL                          0               153     220
24 months   ki0047075b-MAL-ED          PERU                           1                43     198
24 months   ki0047075b-MAL-ED          PERU                           0               155     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               146     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1000109-EE               PAKISTAN                       1                20      20
24 months   ki1000109-EE               PAKISTAN                       0                 0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               171     579
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1421
24 months   ki1101329-Keneba           GAMBIA                         0               147    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4380    4795
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               415    4795
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               135     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     150


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/111a4f6f-1ccf-4e33-9b62-bf55e31160fa/2cf843bb-443b-49a7-a06a-db47f3092bd9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/111a4f6f-1ccf-4e33-9b62-bf55e31160fa/2cf843bb-443b-49a7-a06a-db47f3092bd9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/111a4f6f-1ccf-4e33-9b62-bf55e31160fa/2cf843bb-443b-49a7-a06a-db47f3092bd9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8906860   -1.0754562   -0.7059158
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0226580   -1.2738449   -0.7714711
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0624707   -0.6320786    0.7570201
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.4238733    0.0400660    0.8076805
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0175896   -1.4137359   -0.6214433
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8949113   -1.3532602   -0.4365623
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4487500   -0.8783289   -0.0191711
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.9570588   -1.4394884   -0.4746293
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.2185769   -0.0214174    0.4585711
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.1008270   -0.2436393    0.0419852
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.3597300   -1.0902600    0.3708000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1684631   -0.4109027    0.0739765
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.3177658    0.8814013    1.7541303
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6954843    0.4620697    0.9288989
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.0901282   -1.7027393   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.2691896   -1.3566064   -1.1817728
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.3954101   -1.5307437   -1.2600765
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1106934   -1.2290199   -0.9923669
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.0684445   -1.2756815   -0.8612075
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.7840131   -0.8064950   -0.7615313
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7638414   -0.8274603   -0.7002224
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0959780   -0.2620715    0.0701155
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1862601   -0.4044448    0.0319247
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.2165496    0.8896861    1.5434130
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.9013338    0.6910551    1.1116125
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.6938755   -0.8573340   -0.5304170
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.7611058   -0.9693215   -0.5528900
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1954780   -0.0561463    0.4471023
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0616613   -0.0996369    0.2229594
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 1.2960569    1.0761509    1.5159629
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.0275639    0.8818204    1.1733074
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5134841    0.2339560    0.7930121
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5631127    0.3998822    0.7263432
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7550737    0.4466899    1.0634574
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4474624    0.2934031    0.6015217
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.1351001   -0.2295431   -0.0406572
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.3503952   -0.5158938   -0.1848965
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.1816293   -0.2399912   -0.1232673
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.3988791   -0.5754161   -0.2223421
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.6266025   -0.7365379   -0.5166671
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.5703035   -0.8174778   -0.3231291
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.6057195   -0.6312583   -0.5801807
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.5807262   -0.6579620   -0.5034903
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.4132713   -0.6418409   -0.1847017
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.6225930   -1.0153135   -0.2298725
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8347300   -0.9910815   -0.6783786
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.7933613   -0.9857928   -0.6009298
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2600484   -0.0790106    0.5991074
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.6066239    0.3244886    0.8887592
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9355250   -1.0872521   -0.7837979
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9607630   -1.1455370   -0.7759890
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2749930   -0.4903082   -0.0596778
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4270090   -0.5658138   -0.2882042
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.1430382   -0.0772641    0.3633405
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1199302   -0.0180113    0.2578717
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5737720    0.2463839    0.9011601
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.3979289    0.2678602    0.5279976
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0075342   -0.2333464    0.2182779
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0394791   -0.1236519    0.2026101
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.9234786   -1.0199054   -0.8270519
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8479577   -1.0031522   -0.6927633
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.7743217   -0.8285555   -0.7200878
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.9580357   -1.1107611   -0.8053104
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1531163   -1.2658831   -1.0403496
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.0517605   -1.2919473   -0.8115736
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3163068   -1.3483388   -1.2842748
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.2708720   -1.3903300   -1.1514140
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.0218446   -1.1843359   -0.8593532
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.8727098   -1.3505836   -0.3948360


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9404455   -1.0889530   -0.7919381
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7822228   -0.8038489   -0.7605966
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1312375   -0.2633777    0.0009027
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9730392    0.7966084    1.1494700
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7190952   -0.8496984   -0.5884921
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1047871   -0.0305193    0.2400934
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0554753    0.9329598    1.1779909
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5569945    0.4061636    0.7078255
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2057183   -0.2614359   -0.1500006
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.6040726   -0.6286341   -0.5795110
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8086098   -0.9307952   -0.6864243
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4943421    0.2716679    0.7170163
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9524010   -1.0710590   -0.8337430
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3806364   -0.4971717   -0.2641010
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1199242    0.0008627    0.2389858
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4181579    0.2964894    0.5398263
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0485870   -0.0868148    0.1839888
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.7930925   -0.8442611   -0.7419240
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3119979   -1.3435475   -1.2804484
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1319720   -0.4438800    0.1799360
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.3614025   -0.4517873    1.1745924
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.1226783   -0.4992129    0.7445696
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.5083088   -1.1542781    0.1376604
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.3194039   -0.5989794   -0.0398285
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.1912669   -0.5823266    0.9648603
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6222815   -1.1199362   -0.1246268
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.1262205   -0.2797745    0.0273336
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0422489   -0.1839276    0.2684253
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0201718   -0.0457495    0.0860930
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0902820   -0.3648887    0.1843247
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.3152158   -0.7052742    0.0748427
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0672303   -0.3347557    0.2002951
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1338167   -0.4290346    0.1614012
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.2684930   -0.5343332   -0.0026527
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0496286   -0.2733410    0.3725982
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3076113   -0.6528771    0.0376546
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.2152950   -0.4059129   -0.0246772
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.2172498   -0.4024415   -0.0320582
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0562990   -0.2132165    0.3258146
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0249933   -0.0553005    0.1052871
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.2093217   -0.6744259    0.2557824
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0413687   -0.2070933    0.2898307
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.3465755   -0.0918097    0.7849606
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0252380   -0.2642440    0.2137681
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1520160   -0.4063933    0.1023612
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0231080   -0.2790043    0.2327882
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1758431   -0.5307036    0.1790174
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0470134   -0.2319845    0.3260113
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0755209   -0.1056909    0.2567327
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.1837141   -0.3456596   -0.0217686
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.1013559   -0.1640921    0.3668038
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0454348   -0.0763408    0.1672103
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.1491348   -0.3571461    0.6554157


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0497595   -0.1606961    0.0611770
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.3691656   -0.3024032    1.0407345
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0396409   -0.2346501    0.3139318
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.3456500   -0.7950359    0.1037359
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.2521090   -0.4720279   -0.0321901
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2008411   -0.4919285    0.8936107
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5180816   -0.9394513   -0.0967119
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0292690   -0.0729647    0.0144267
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0115228   -0.0255416    0.0485871
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0017904   -0.0043602    0.0079409
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0352595   -0.1309259    0.0604070
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2435103   -0.5119874    0.0249667
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0252197   -0.1550585    0.1046191
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0906909   -0.2982550    0.1168732
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.2405816   -0.4489184   -0.0322447
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0435105   -0.2502752    0.3372961
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2293111   -0.5018430    0.0432209
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0639905   -0.1197814   -0.0081996
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0240890   -0.0453062   -0.0028718
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0067234   -0.0382098    0.0516567
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0016469   -0.0053109    0.0086047
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0022486   -0.0591700    0.0636671
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0261203   -0.0581184    0.1103590
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2342937   -0.0581004    0.5266878
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0168760   -0.1352209    0.1014690
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1056434   -0.2861111    0.0748243
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0231140   -0.2250782    0.1788503
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1556141   -0.4852468    0.1740186
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0561212   -0.1648961    0.2771384
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0306116   -0.0229060    0.0841293
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0187709   -0.0354901   -0.0020516
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0134722   -0.0293728    0.0563173
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0043089   -0.0059908    0.0146086
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0122446   -0.0342256    0.0587147

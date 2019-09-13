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
* W_mage
* meducyrs
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               198    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                57    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0               178    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                13    191
Birth       ki0047075b-MAL-ED          INDIA                          0               144    206
Birth       ki0047075b-MAL-ED          INDIA                          1                62    206
Birth       ki0047075b-MAL-ED          NEPAL                          0               141    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                32    173
Birth       ki0047075b-MAL-ED          PERU                           0               275    286
Birth       ki0047075b-MAL-ED          PERU                           1                11    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               230    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                31    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               117    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 6    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                36     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                54     90
Birth       ki1000108-IRC              INDIA                          0               164    388
Birth       ki1000108-IRC              INDIA                          1               224    388
Birth       ki1000109-EE               PAKISTAN                       0                 0      2
Birth       ki1000109-EE               PAKISTAN                       1                 2      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 6      7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1      7
Birth       ki1101329-Keneba           GAMBIA                         0              1287   1541
Birth       ki1101329-Keneba           GAMBIA                         1               254   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 5      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 3      8
Birth       ki1114097-CMIN             PERU                           0                10     10
Birth       ki1114097-CMIN             PERU                           1                 0     10
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               184    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                57    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               195    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                14    209
6 months    ki0047075b-MAL-ED          INDIA                          0               162    236
6 months    ki0047075b-MAL-ED          INDIA                          1                74    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               193    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                43    236
6 months    ki0047075b-MAL-ED          PERU                           0               263    273
6 months    ki0047075b-MAL-ED          PERU                           1                10    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               226    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                28    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               236    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               174    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               192    366
6 months    ki1000108-IRC              INDIA                          0               165    407
6 months    ki1000108-IRC              INDIA                          1               242    407
6 months    ki1000109-EE               PAKISTAN                       0               270    372
6 months    ki1000109-EE               PAKISTAN                       1               102    372
6 months    ki1000109-ResPak           PAKISTAN                       0               140    235
6 months    ki1000109-ResPak           PAKISTAN                       1                95    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               435    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               148    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
6 months    ki1101329-Keneba           GAMBIA                         0              1695   2057
6 months    ki1101329-Keneba           GAMBIA                         1               362   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               391    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               172    563
6 months    ki1114097-CMIN             BANGLADESH                     0               201    243
6 months    ki1114097-CMIN             BANGLADESH                     1                42    243
6 months    ki1114097-CMIN             PERU                           0               581    627
6 months    ki1114097-CMIN             PERU                           1                46    627
6 months    ki1114097-CONTENT          PERU                           0               211    215
6 months    ki1114097-CONTENT          PERU                           1                 4    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               163    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                49    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               157    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                12    169
24 months   ki0047075b-MAL-ED          INDIA                          0               154    227
24 months   ki0047075b-MAL-ED          INDIA                          1                73    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               187    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                41    228
24 months   ki0047075b-MAL-ED          PERU                           0               193    201
24 months   ki0047075b-MAL-ED          PERU                           1                 8    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               214    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                24    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               203    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                11    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               174    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               194    368
24 months   ki1000108-IRC              INDIA                          0               166    409
24 months   ki1000108-IRC              INDIA                          1               243    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               431    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               146    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6
24 months   ki1101329-Keneba           GAMBIA                         0              1297   1564
24 months   ki1101329-Keneba           GAMBIA                         1               267   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0               351    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               148    499
24 months   ki1114097-CMIN             BANGLADESH                     0               200    242
24 months   ki1114097-CMIN             BANGLADESH                     1                42    242
24 months   ki1114097-CMIN             PERU                           0               220    234
24 months   ki1114097-CMIN             PERU                           1                14    234
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/6582f825-9858-4f43-b887-9517e93a9f19/e1cd98f9-1cf7-4c1f-8a4f-ba45c32b672d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6582f825-9858-4f43-b887-9517e93a9f19/e1cd98f9-1cf7-4c1f-8a4f-ba45c32b672d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6582f825-9858-4f43-b887-9517e93a9f19/e1cd98f9-1cf7-4c1f-8a4f-ba45c32b672d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1149797   -1.2537136   -0.9762458
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9176308   -1.2200770   -0.6151847
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.7933950   -0.9582670   -0.6285230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2995157   -0.7100852    0.1110538
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0735631   -1.2406120   -0.9065143
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8950863   -1.1484156   -0.6417570
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.6758511   -0.8409709   -0.5107313
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7796831   -1.2684180   -0.2909481
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.9175513   -1.0272169   -0.8078856
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.9144144   -1.7899147   -0.0389141
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.7388752   -0.8589411   -0.6188093
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4712200   -0.9636195    0.0211794
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9458974   -1.1623359   -0.7294590
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6983333   -1.7751862    0.3785195
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8714716   -1.1821028   -0.5608404
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.0455753   -1.3336506   -0.7575000
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.8731886   -1.0831104   -0.6632667
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.1180354   -0.0990382    0.3351089
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0131278   -0.0544511    0.0807066
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.1057605   -0.0743091    0.2858300
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1633118   -1.2892925   -1.0373312
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.3476763   -1.6245875   -1.0707652
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0239572   -0.1249050    0.1728194
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.4026045   -0.2270893    1.0322982
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2183179   -1.3590573   -1.0775785
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.2803496   -1.5022681   -1.0584311
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.5197875   -0.6381123   -0.4014628
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7462267   -1.0672094   -0.4252440
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3358387   -1.4452212   -1.2264563
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.1967371   -1.9388162   -0.4546579
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0578597   -1.1955255   -0.9201940
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.0641048   -1.4487426   -0.6794670
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3578387   -1.4818520   -1.2338253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4428259   -2.2956960   -0.5899558
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4047474   -1.6236830   -1.1858118
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.4511188   -1.6405028   -1.2617347
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.4557855   -1.6584781   -1.2530930
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.0986107   -1.2714498   -0.9257716
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.1804408   -2.3234947   -2.0373869
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.1963838   -2.4387035   -1.9540641
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.6683828   -1.9200186   -1.4167471
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.0487050   -1.3911186   -0.7062915
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0452724   -1.1329163   -0.9576286
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2131451   -1.3684766   -1.0578136
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5425673   -0.5955209   -0.4896137
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5547173   -0.6861729   -0.4232617
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8861599   -0.9354662   -0.8368536
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.0341017   -1.1709614   -0.8972420
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5353793   -1.6512808   -1.4194777
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.6954674   -3.1015162   -2.2894187
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3431708   -1.4347306   -1.2516111
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2802307   -1.4313755   -1.1290858
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7689812   -1.9183354   -1.6196269
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.8644474   -2.2388685   -1.4900263
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.4709810   -0.5485523   -0.3934097
6 months    ki1114097-CMIN             PERU                           1                    NA                -1.0199198   -1.4836795   -0.5561601
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9436028   -2.0866872   -1.8005184
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.9188326   -2.1844245   -1.6532407
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0827231   -0.0898513    0.2552975
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4536729   -1.1127421    0.2053962
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.8918354   -2.0437785   -1.7398923
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7899455   -2.0190296   -1.5608613
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.2705811   -1.3982003   -1.1429619
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.4126435   -1.7492840   -1.0760029
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7616321   -1.8832592   -1.6400051
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.4718750   -2.1856481   -0.7581019
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6334737   -1.7733318   -1.4936157
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.4403810   -1.9683956   -0.9123664
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5889681   -2.7256750   -2.4522612
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.3354572   -4.2547370   -2.4161774
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4851006   -2.6342616   -2.3359395
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5770134   -2.7125733   -2.4414535
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7887434   -1.9267447   -1.6507420
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.7624798   -1.8898972   -1.6350624
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5745923   -1.6747618   -1.4744227
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6422237   -1.7885481   -1.4958992
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5428817   -1.5985903   -1.4871732
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.6380889   -1.7800031   -1.4961748
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8735763   -1.9684850   -1.7786675
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8931344   -2.0677360   -1.7185329
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4880366   -2.6259743   -2.3500988
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.6230025   -2.9236258   -2.3223792
24 months   ki1114097-CMIN             PERU                           0                    NA                -1.4507408   -1.5749380   -1.3265436
24 months   ki1114097-CMIN             PERU                           1                    NA                -1.7075532   -2.7541471   -0.6609594


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0715686   -1.1969582   -0.9461791
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9163986   -1.0263706   -0.8064266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7064368   -0.8290380   -0.5838355
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4251321   -1.5673802   -1.2828839
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4029220   -1.6085859   -1.1972581
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9121372   -0.9593127   -0.8649617
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5098299   -0.5892202   -0.4304395
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5530299   -2.6529925   -2.4530672
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5604961   -1.6126979   -1.5082943
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.4696439   -1.5956384   -1.3436493


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1973489   -0.1360839    0.5307816
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.4938793    0.0509541    0.9368045
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.1784768   -0.1257197    0.4826733
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1038320   -0.6205613    0.4128973
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.0031368   -0.8793533    0.8856270
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2676552   -0.2387281    0.7740384
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2475641   -0.8508246    1.3459528
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1741037   -0.6010272    0.2528198
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.9912239    0.6880584    1.2943894
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.0926327   -0.0995962    0.2848616
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1843645   -0.4889348    0.1202057
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.3786473   -0.2680956    1.0253901
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0620317   -0.3265954    0.2025320
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2264392   -0.5692853    0.1164070
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.1391017   -0.6107957    0.8889991
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0062450   -0.4158659    0.4033758
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0849872   -0.9462173    0.7762428
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0463714   -0.3353754    0.2426327
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.3571748    0.0906407    0.6237090
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0159429   -0.2980154    0.2661295
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.6196778    0.1928286    1.0465270
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1678727   -0.3463382    0.0105929
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0121500   -0.1538877    0.1295877
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.1479418   -0.2934408   -0.0024428
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.1600882   -1.5801672   -0.7400091
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0629401   -0.1140925    0.2399728
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0954662   -0.4988216    0.3078893
6 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 -0.5489388   -1.0190040   -0.0788735
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0247701   -0.2767976    0.3263379
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5363961   -1.2157137    0.1429215
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.1018900   -0.1741271    0.3779070
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1420624   -0.5029212    0.2187964
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.2897571   -0.4343044    1.0138187
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1930927   -0.3535254    0.7397108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7464891   -1.6768224    0.1838442
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0919129   -0.2939970    0.1101713
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.0262635   -0.1618061    0.2143332
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0676314   -0.2452080    0.1099452
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0952072   -0.2476869    0.0572726
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0195582   -0.2183450    0.1792286
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1349659   -0.4659970    0.1960651
24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 -0.2568124   -1.3098324    0.7962076


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0434111   -0.0316489    0.1184711
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0324526   -0.0013474    0.0662526
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0629320   -0.0291926    0.1550567
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0330506   -0.1238686    0.0577673
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0011527   -0.0305691    0.0328744
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0324384   -0.0289593    0.0938362
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0120763   -0.0423328    0.0664854
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0939729   -0.3525288    0.1645831
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.5651473    0.3837538    0.7465408
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0210189   -0.0101821    0.0522198
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0423659   -0.1186978    0.0339659
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0270635   -0.0145419    0.0686689
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0020493   -0.0838978    0.0797991
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0412718   -0.1034676    0.0209240
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0090378   -0.0166909    0.0347665
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0055162   -0.0460219    0.0349894
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022828   -0.0319568    0.0273912
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0203846   -0.1727741    0.1320048
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.2213793    0.0616075    0.3811511
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0200296   -0.0980506    0.0579914
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2654608    0.0902900    0.4406316
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0418316   -0.0875054    0.0038421
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0008716   -0.0216529    0.0199097
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0259773   -0.0515674   -0.0003872
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0431684   -0.0756907   -0.0106461
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0110187   -0.0428870    0.0649243
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0154564   -0.0808782    0.0499654
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.0388489   -0.0730338   -0.0046640
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0004895   -0.0697780    0.0707571
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0408888   -0.0903062    0.0085286
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0460204   -0.0427015    0.1347424
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0046382   -0.0693498    0.0600734
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0115326   -0.0183359    0.0414011
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0106376   -0.0417600    0.0630352
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0169198   -0.0527780    0.0189384
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0679293   -0.1749242    0.0390655
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0062658   -0.1057569    0.1182884
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0115256   -0.0566216    0.0335704
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0176143   -0.0438581    0.0086294
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0100142   -0.0691774    0.0491489
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0229139   -0.0796881    0.0338604
24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0189031   -0.0667209    0.0289148

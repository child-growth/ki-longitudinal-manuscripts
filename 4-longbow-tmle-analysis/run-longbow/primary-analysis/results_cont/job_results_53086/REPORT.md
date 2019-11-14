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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               138     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                77     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1                12      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                45      57
Birth       ki0047075b-MAL-ED          INDIA                          1                24      41
Birth       ki0047075b-MAL-ED          INDIA                          0                17      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                18      26
Birth       ki0047075b-MAL-ED          PERU                           1                49     223
Birth       ki0047075b-MAL-ED          PERU                           0               174     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                88     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                17     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                85     102
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0      10
Birth       ki1000108-IRC              INDIA                          0                10      10
Birth       ki1000109-EE               PAKISTAN                       1                35      35
Birth       ki1000109-EE               PAKISTAN                       0                 0      35
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               387     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               152     539
Birth       ki1101329-Keneba           GAMBIA                         1                11      12
Birth       ki1101329-Keneba           GAMBIA                         0                 1      12
Birth       ki1113344-GMS-Nepal        NEPAL                          1               380     458
Birth       ki1113344-GMS-Nepal        NEPAL                          0                78     458
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             13479   14888
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1409   14888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               105     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                11     116
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               176     604
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8495    9307
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               812    9307
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     578
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4396    4813
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               417    4813
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     151


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/5d297a64-648a-4e7a-83de-d66a1e7ef4d6/799afbc9-f02e-473f-a90f-4a6d972f2058/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5d297a64-648a-4e7a-83de-d66a1e7ef4d6/799afbc9-f02e-473f-a90f-4a6d972f2058/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5d297a64-648a-4e7a-83de-d66a1e7ef4d6/799afbc9-f02e-473f-a90f-4a6d972f2058/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1290419   -1.2903919   -0.9676918
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0262900   -1.2800692   -0.7725109
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.7962762   -1.4592838   -0.1332686
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.7546316   -1.0847454   -0.4245177
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.3132694   -1.8064029   -0.8201359
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.6886395   -1.0443874   -0.3328916
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6962500   -1.1273498   -0.2651502
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8800000   -1.3706027   -0.3893973
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8761652   -1.1070970   -0.6452335
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.8852361   -1.0096214   -0.7608508
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.6776079   -1.1439077   -0.2113081
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.5611878   -0.7797423   -0.3426333
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.9597945   -2.4724098   -1.4471793
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0906739   -1.3356647   -0.8456832
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.3774344   -1.4632073   -1.2916615
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4059668   -2.1227838   -0.6891497
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.9065683   -0.9867390   -0.8263976
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8308083   -0.9631284   -0.6984882
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.0245220   -1.1314296   -0.9176144
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1742343   -1.4393918   -0.9090768
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3806114   -1.4067485   -1.3544743
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.4187856   -1.4820341   -1.3555372
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.5727404   -1.7750443   -1.3704365
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.0075420   -2.8096622   -1.2054218
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1886402   -1.3220651   -1.0552152
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2796194   -1.5186239   -1.0406148
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0585833   -0.2222096    0.3393762
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0318225   -0.1568728    0.2205179
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1754261   -1.3448520   -1.0060002
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2342759   -1.4238830   -1.0446687
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6427951   -0.8681607   -0.4174295
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.5282208   -0.6580218   -0.3984198
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3481301   -1.5848535   -1.1114067
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.2935795   -1.4146560   -1.1725030
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.7648306   -1.2415844   -0.2880768
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0990729   -1.2342857   -0.9638601
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4091576   -1.6692005   -1.1491148
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4013408   -1.5453522   -1.2573293
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.0839752   -1.1677776   -1.0001728
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.0899983   -1.2432040   -0.9367925
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.9290703   -0.9831548   -0.8749859
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -1.1013110   -1.2599768   -0.9426452
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.3229809   -1.4179715   -1.2279903
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.3687003   -1.6046231   -1.1327774
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3425032   -1.3716224   -1.3133840
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3890299   -1.4739388   -1.3041211
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.1299999   -1.3181334   -0.9418665
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.6897499   -2.3183912   -1.0611086
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9707183   -2.1273516   -1.8140851
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -2.0387530   -2.2697872   -1.8077187
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0671050   -0.3670832    0.2328731
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0096054   -0.2112205    0.2304312
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -2.0128729   -2.2024682   -1.8232776
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.7942106   -1.9846236   -1.6037976
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.4012202   -1.6175132   -1.1849272
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2799625   -1.4271736   -1.1327513
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8224285   -2.1219587   -1.5228983
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.7280966   -1.8610558   -1.5951375
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.2106123   -1.7190708   -0.7021538
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.6681409   -1.8147649   -1.5215169
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5192918   -2.8236817   -2.2149018
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6914532   -2.8551333   -2.5277730
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.6469802   -1.7444489   -1.5495114
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.4952494   -1.6471670   -1.3433318
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -1.5751861   -1.6319510   -1.5184212
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -1.7816263   -1.9424893   -1.6207633
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.8820111   -1.9834999   -1.7805222
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.8029001   -2.0332887   -1.5725115
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0102868   -2.0481937   -1.9723799
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -2.1665391   -2.2712231   -2.0618550
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7184159   -1.8665511   -1.5702807
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.3853068   -2.6839956   -2.0866179


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3843216   -1.4102231   -1.3584201
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2248069   -1.3446487   -1.1049651
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0641266   -0.0913400    0.2195931
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2002063   -1.3275718   -1.0728409
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5628634   -0.6765658   -0.4491611
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3153519   -1.4229629   -1.2077408
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0665369   -1.1970117   -0.9360620
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3470624   -1.3756620   -1.3184628
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -2.0021951   -2.1308572   -1.8735330
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0151974   -0.1917967    0.1614019
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8978960   -2.0332143   -1.7625777
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.3153636   -1.4359803   -1.1947469
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7432323   -1.8646545   -1.6218102
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6467544   -1.7856657   -1.5078431
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6763587   -2.8207363   -2.5319811
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -1.5961170   -1.6505261   -1.5417080
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -2.0239144   -2.0607740   -1.9870548
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.1027518   -0.1982667    0.4037704
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0416446   -0.6975336    0.7808229
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.6246300   -0.0078782    1.2571381
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1837500   -0.8368488    0.4693488
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.0090708   -0.2480208    0.2298791
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.1164201   -0.3990388    0.6318790
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.8691206    0.2916438    1.4465974
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0285323   -0.7102536    0.6531889
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0757600   -0.0627856    0.2143056
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1497123   -0.4357813    0.1363567
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0381742   -0.0996630    0.0233145
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.4348016   -1.2419119    0.3723088
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0909792   -0.3650477    0.1830893
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0267608   -0.3671745    0.3136530
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0588498   -0.3135114    0.1958118
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1145743   -0.1459667    0.3751154
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0545506   -0.2118183    0.3209195
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.3342423   -0.8299718    0.1614872
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0078169   -0.2867982    0.3024319
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0060230   -0.1806249    0.1685788
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.1722407   -0.3396982   -0.0047832
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0457194   -0.3005340    0.2090953
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0465268   -0.1322671    0.0392136
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.5597500   -1.2166337    0.0971337
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0680346   -0.3483300    0.2122608
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0767104   -0.2968312    0.4502521
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.2186623   -0.0470291    0.4843536
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1212577   -0.1400224    0.3825379
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0943318   -0.2327813    0.4214450
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.4575286   -0.9903967    0.0753395
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1721614   -0.5166380    0.1723153
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.1517307   -0.0261502    0.3296117
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.2064402   -0.3740264   -0.0388540
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0791109   -0.1704986    0.3287205
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.1562523   -0.2636899   -0.0488147
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.6668908   -1.0003856   -0.3333961


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0340651   -0.0736624    0.1417926
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0966271   -0.4953128    0.6885669
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1057085   -0.1539688    0.3653857
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1272115   -0.5805774    0.3261543
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0007841   -0.1868274    0.1883955
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0979079   -0.3591582    0.5549740
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8511671    0.3574788    1.3448553
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0162744   -0.0566088    0.0240600
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0214663   -0.0174504    0.0603830
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0310021   -0.0797587    0.0177546
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0037102   -0.0094358    0.0020154
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0345872   -0.1061098    0.0369355
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0361667   -0.1311072    0.0587738
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0055433   -0.2270153    0.2381018
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0247803   -0.1438590    0.0942985
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0799317   -0.1014242    0.2612876
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0327782   -0.1737985    0.2393550
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.3017063   -0.7537500    0.1503374
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0061073   -0.2260551    0.2382697
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0077163   -0.0589044    0.0434718
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0198613   -0.0391724   -0.0005502
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0270040   -0.0714690    0.0174610
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0045593   -0.0120493    0.0029307
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0694319   -0.1558893    0.0170256
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0314768   -0.1262509    0.0632973
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0519077   -0.1950093    0.2988247
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1149769   -0.0237025    0.2536562
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0858566   -0.0974638    0.2691769
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0791962   -0.1786877    0.3370801
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.4361421   -0.9309381    0.0586539
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1570669   -0.4325252    0.1183914
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0445580   -0.0080105    0.0971266
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0209309   -0.0381812   -0.0036806
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0067116   -0.0333607    0.0467838
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0136276   -0.0229879   -0.0042674
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0542331   -0.0929769   -0.0154892

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               126     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                52      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      37
Birth       ki0047075b-MAL-ED          INDIA                          0                33      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                20      23
Birth       ki0047075b-MAL-ED          PERU                           1                72     208
Birth       ki0047075b-MAL-ED          PERU                           0               136     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                89      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               155     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               377     532
Birth       ki1101329-Keneba           GAMBIA                         1               450    1327
Birth       ki1101329-Keneba           GAMBIA                         0               877    1327
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8392   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2352   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1802    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               422    2224
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               462     603
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7625    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3327    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               948    4275
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               442     579
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3909    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1158    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3278    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               906    4184


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
![](/tmp/dc4f25ba-71b8-4396-be8b-01ebf3d3b420/0e169b9d-57fe-4719-bc3e-7fbf45eacc6d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dc4f25ba-71b8-4396-be8b-01ebf3d3b420/0e169b9d-57fe-4719-bc3e-7fbf45eacc6d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dc4f25ba-71b8-4396-be8b-01ebf3d3b420/0e169b9d-57fe-4719-bc3e-7fbf45eacc6d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8685768   -1.0886368   -0.6485167
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0272857   -1.2321333   -0.8224381
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.0046398   -0.2177443    0.2270239
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0961536   -0.2611848    0.0688776
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.0901282   -1.7027393   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.3155735   -1.4635758   -1.1675712
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.2999532   -1.3875453   -1.2123612
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -1.2480714   -1.3496991   -1.1464437
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -1.2649601   -1.3414465   -1.1884737
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.1018349   -1.2142591   -0.9894108
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.1045122   -1.2623361   -0.9466884
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7869126   -0.8117305   -0.7620947
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7582527   -0.8021167   -0.7143888
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.6766778   -0.7316026   -0.6217529
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.7492275   -0.8912898   -0.6071651
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1603564   -0.3899246    0.0692118
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1002595   -0.2668260    0.0663070
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.4640487    1.0213619    1.9067356
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.8908885    0.7167753    1.0650018
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.0259014   -0.5359113    0.4841085
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.7413442   -0.8747722   -0.6079163
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0240519   -0.5563121    0.6044160
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.1152220   -0.0242989    0.2547430
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 1.2279353    1.0247927    1.4310779
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 0.9859836    0.8324406    1.1395266
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0430585   -0.1195993    0.2057162
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2688166   -0.3631802   -0.1744530
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0233826   -0.1214799    0.0747148
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2780802   -0.3406906   -0.2154697
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5779374   -0.6803635   -0.4755113
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.6733582   -0.8437266   -0.5029897
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.3711427    0.0352750    0.7070104
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.3983018    0.2718300    0.5247736
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.6033285   -0.6303943   -0.5762626
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.5884485   -0.6344709   -0.5424261
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3461186   -0.3908846   -0.3013526
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5637642   -0.6453506   -0.4821779
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.9513492   -1.1326817   -0.7700166
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7365668   -0.8980446   -0.5750890
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1689048   -0.3600993    0.6979088
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4603500    0.2406658    0.6800343
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.5314582   -0.9618808   -0.1010356
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.9605145   -1.0848338   -0.8361952
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4682308   -1.0821344    0.1456728
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3615353   -0.4820004   -0.2410702
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0234221   -0.1683522    0.2151965
24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.1509282   -0.0049863    0.3068427
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.7714961   -0.9337542   -0.6092380
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9225197   -1.0171913   -0.8278481
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7158199   -0.7981178   -0.6335219
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8472106   -0.9083282   -0.7860929
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0902885   -1.1900055   -0.9905714
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.3100123   -1.5209092   -1.0991155
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1574232   -0.4587103    0.1438639
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0595128   -0.2195252    0.1004996
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3203039   -1.3552201   -1.2853876
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2765460   -1.3397889   -1.2133031
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2195825   -1.2600303   -1.1791347
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2438475   -1.3234370   -1.1642581


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.0587981   -0.1871869    0.0695908
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                -1.2599925   -1.3251703   -1.1948146
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.7067317   -0.8369134   -0.5765499
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.9442584   -1.0642426   -0.8242742
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1587089   -0.4609477    0.1435298
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.1007934   -0.3781827    0.1765958
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0156203   -0.1477951    0.1790356
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 -0.0168887   -0.1343250    0.1005476
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0026773   -0.1854621    0.1801075
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0286599   -0.0200121    0.0773318
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0725497   -0.2212089    0.0761095
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0600969   -0.2249030    0.3450968
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.5731602   -1.0486582   -0.0976622
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                 -0.7154428   -1.2430365   -0.1878490
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.0911701   -0.5064017    0.6887419
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.2419517   -0.4976253    0.0137219
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.3118751   -0.4983050   -0.1254451
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2546976   -0.3700972   -0.1392980
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0954208   -0.2943758    0.1035342
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0271591   -0.3319927    0.3863108
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0148799   -0.0371964    0.0669562
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2176456   -0.3102583   -0.1250330
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.2147824   -0.0281883    0.4577531
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.2914452   -0.2806437    0.8635341
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.4290563   -0.8776318    0.0195193
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1066955   -0.5188722    0.7322631
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.1275061   -0.1186304    0.3736426
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.1510235   -0.3370337    0.0349867
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1313907   -0.2321507   -0.0306307
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.2197238   -0.4533088    0.0138611
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0979104   -0.2437572    0.4395779
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0437579   -0.0284136    0.1159293
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0242651   -0.1115433    0.0630132


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1069902   -0.3034145    0.0894340
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0634379   -0.2502159    0.1233401
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0171148   -0.1038485    0.1380782
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0119211   -0.0900888    0.0662466
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0046210   -0.0507595    0.0415174
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0061317   -0.0045054    0.0167688
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0137809   -0.0412521    0.0136904
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0390361   -0.1455571    0.2236293
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.4919714   -0.9002962   -0.0836466
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.6808302   -1.1856494   -0.1760110
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0850888   -0.4801092    0.6502868
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.1773203   -0.3485109   -0.0061296
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2421491   -0.3858735   -0.0984248
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1763821   -0.2570066   -0.0957576
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0229797   -0.0743921    0.0284327
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0213573   -0.2775838    0.3202984
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0031984   -0.0086987    0.0150955
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0507270   -0.0723450   -0.0291090
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1343736   -0.0214130    0.2901601
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2937185   -0.1967984    0.7842354
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.4128002   -0.8394839    0.0138835
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1007879   -0.4988614    0.7004371
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0877760   -0.0803768    0.2559289
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.1213709   -0.2635496    0.0208079
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0874131   -0.1543505   -0.0204756
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0520640   -0.1089604    0.0048323
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0803580   -0.2022134    0.3629293
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0099664   -0.0064808    0.0264135
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0069495   -0.0260103    0.0121112

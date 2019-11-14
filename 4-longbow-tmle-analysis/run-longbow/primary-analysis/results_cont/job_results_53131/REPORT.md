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
Birth       ki1101329-Keneba           GAMBIA                         1                 6      12
Birth       ki1101329-Keneba           GAMBIA                         0                 6      12
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10161   13000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2839   13000
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7605    9858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2253    9858
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3881    5028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1147    5028
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
![](/tmp/ca2cdec1-912c-4f32-9bda-3208e1d16615/0e85c023-0c46-4f76-bdba-88852e6918a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ca2cdec1-912c-4f32-9bda-3208e1d16615/0e85c023-0c46-4f76-bdba-88852e6918a7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ca2cdec1-912c-4f32-9bda-3208e1d16615/0e85c023-0c46-4f76-bdba-88852e6918a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8811768   -1.1019030   -0.6604506
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0232647   -1.2283222   -0.8182071
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0029575   -0.2223254    0.2164103
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0828694   -0.2445975    0.0788587
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.0901282   -1.7027394   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.3122180   -1.4656916   -1.1587444
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.2993864   -1.3865706   -1.2122021
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -1.0850000   -1.9196826   -0.2503174
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.8066667   -0.5095831    2.1229164
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.1034345   -1.2159329   -0.9909362
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.1185138   -1.2774250   -0.9596027
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7587792   -0.7824186   -0.7351398
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7442163   -0.7846171   -0.7038155
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.6757635   -0.7306420   -0.6208850
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.7515536   -0.8838743   -0.6192329
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1587230   -0.3930665    0.0756206
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1025854   -0.2688771    0.0637063
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.3560666    0.9117292    1.8004040
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.8831674    0.7088384    1.0574964
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.0882753   -0.4085073    0.5850580
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.7378180   -0.8715807   -0.6040553
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1448179   -0.9311709    0.6415352
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.1158385   -0.0230490    0.2547260
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 1.1677156    0.9675594    1.3678717
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 0.9691459    0.8154653    1.1228265
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0262269   -0.1381206    0.1905744
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2645097   -0.3590425   -0.1699769
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0162757   -0.1133482    0.0807968
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2824415   -0.3449485   -0.2199345
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5724216   -0.6749965   -0.4698468
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.6574477   -0.8286658   -0.4862296
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.3769163    0.0441419    0.7096906
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.3964475    0.2692252    0.5236699
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.6033114   -0.6304417   -0.5761810
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.5901808   -0.6360004   -0.5443612
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3465898   -0.3912581   -0.3019216
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5616763   -0.6418076   -0.4815449
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.9342186   -1.1141950   -0.7542422
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7328068   -0.8927187   -0.5728948
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1625323   -0.4300600    0.7551246
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4625828    0.2408118    0.6843537
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.3959949   -0.7392829   -0.0527070
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.9599826   -1.0840328   -0.8359324
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4991282   -1.0881519    0.0898956
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3663965   -0.4865819   -0.2462111
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0378549   -0.1605219    0.2362318
24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.1442206   -0.0041897    0.2926310
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.8003339   -0.9634227   -0.6372451
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9268898   -1.0211482   -0.8326313
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7196686   -0.8024459   -0.6368912
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8457827   -0.9071898   -0.7843756
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0902107   -1.1902132   -0.9902081
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.3088023   -1.5172619   -1.1003427
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1391878   -0.4356537    0.1572780
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0580557   -0.2198982    0.1037868
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3228546   -1.3580356   -1.2876737
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2723971   -1.3352551   -1.2095392
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2205939   -1.2608194   -1.1803683
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2370349   -1.3166892   -1.1573806


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.9748454   -1.1280978   -0.8215930
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.0587981   -0.1871869    0.0695908
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                -0.1391667   -1.0981858    0.8198525
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.7557115   -0.7768180   -0.7346051
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1220707   -0.2547831    0.0106417
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.7073471   -0.8375598   -0.5771344
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.1097852   -0.0259319    0.2455023
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                 1.0546617    0.9322137    1.1771098
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.5998808   -0.6237974   -0.5759642
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.8179024   -0.9399789   -0.6958260
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.9449522   -1.0648865   -0.8250178
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.3690411   -0.4853679   -0.2527143
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3113405   -1.3420927   -1.2805883
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1420878   -0.4443190    0.1601433
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.0799119   -0.3525499    0.1927261
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0128316   -0.1559991    0.1816624
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  1.8916667    0.3330748    3.4502585
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0150793   -0.1990612    0.1689026
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0145629   -0.0305667    0.0596925
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0757901   -0.2151778    0.0635976
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0561376   -0.2318016    0.3440768
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.4728992   -0.9485535    0.0027552
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                 -0.8260934   -1.3398208   -0.3123659
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                  0.2606564   -0.5405487    1.0618615
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.1985696   -0.4517775    0.0546382
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.2907366   -0.4793857   -0.1020874
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2661658   -0.3806464   -0.1516851
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0850260   -0.2847192    0.1146672
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0195312   -0.3369857    0.3760482
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0131305   -0.0389053    0.0651664
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2150864   -0.3059600   -0.1242128
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.2014119   -0.0389796    0.4418033
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.3000505   -0.3305277    0.9306286
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                 -0.5639877   -0.9285772   -0.1993981
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.1327316   -0.4683661    0.7338293
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.1063657   -0.1367647    0.3494961
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.1265559   -0.3125215    0.0594097
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1261141   -0.2279215   -0.0243068
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.2185916   -0.4500370    0.0128539
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0811321   -0.2570480    0.4193123
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0504575   -0.0212731    0.1221881
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0164410   -0.1039501    0.0710680


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0936685   -0.2903407    0.1030036
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0558406   -0.2390376    0.1273565
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0137594   -0.1127904    0.1403091
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.9458333   -0.0131858    1.9048525
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0030214   -0.0492021    0.0431593
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0030677   -0.0067698    0.0129051
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0146951   -0.0421396    0.0127493
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0366523   -0.1507987    0.2241033
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.3843441   -0.7942472    0.0255591
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.7956224   -1.2878671   -0.3033778
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.2546030   -0.5094405    1.0186466
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.1130538   -0.2814006    0.0552929
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2253175   -0.3706095   -0.0800256
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1834889   -0.2633431   -0.1036348
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0284955   -0.0801838    0.0231928
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0155837   -0.2805852    0.3117526
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0034306   -0.0084381    0.0152992
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0502558   -0.0715999   -0.0289117
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1163162   -0.0385330    0.2711654
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2966985   -0.2493048    0.8427018
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -0.5489572   -0.8939943   -0.2039201
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1300871   -0.4451978    0.7053719
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0825928   -0.0861686    0.2513543
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0925331   -0.2352156    0.0501493
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0835643   -0.1513252   -0.0158035
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0521418   -0.1089981    0.0047144
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0621226   -0.2147822    0.3390275
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0115142   -0.0048482    0.0278765
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0059382   -0.0249864    0.0131101

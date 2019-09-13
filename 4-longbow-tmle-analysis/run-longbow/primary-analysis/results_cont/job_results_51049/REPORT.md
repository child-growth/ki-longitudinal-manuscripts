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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
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

agecat      studyid                    country                        exclfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                53     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               166     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0               157     168
Birth       ki0047075b-MAL-ED          INDIA                          1                 5     187
Birth       ki0047075b-MAL-ED          INDIA                          0               182     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                11     165
Birth       ki0047075b-MAL-ED          NEPAL                          0               154     165
Birth       ki0047075b-MAL-ED          PERU                           1                10     249
Birth       ki0047075b-MAL-ED          PERU                           0               239     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               114     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                 0       1
Birth       ki1000109-EE               PAKISTAN                       0                 1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                45      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      47
Birth       ki1101329-Keneba           GAMBIA                         1               451    1336
Birth       ki1101329-Keneba           GAMBIA                         0               885    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12371   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3049   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               519     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               114     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                57     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               178     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               193     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 6     232
6 months    ki0047075b-MAL-ED          INDIA                          0               226     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                15     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     235
6 months    ki0047075b-MAL-ED          PERU                           1                11     269
6 months    ki0047075b-MAL-ED          PERU                           0               258     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               242     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               243     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1               220     376
6 months    ki1000109-EE               PAKISTAN                       0               156     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               446     582
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13162   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3493   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3318    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               942    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               156     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               154     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 5     224
24 months   ki0047075b-MAL-ED          INDIA                          0               219     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                15     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               212     227
24 months   ki0047075b-MAL-ED          PERU                           1                 8     198
24 months   ki0047075b-MAL-ED          PERU                           0               190     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               227     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               434     578
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               359     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     479
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6641    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1872    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3262    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               897    4159


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/529b89e7-19e7-422e-b4b7-0da7d3e22bbd/149d3406-44b3-44f7-a318-4ef7ba901f4d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/529b89e7-19e7-422e-b4b7-0da7d3e22bbd/149d3406-44b3-44f7-a318-4ef7ba901f4d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/529b89e7-19e7-422e-b4b7-0da7d3e22bbd/149d3406-44b3-44f7-a318-4ef7ba901f4d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8613342   -1.1229267   -0.5997416
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0519162   -1.2202184   -0.8836139
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1429685   -0.7908589    0.5049219
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4202943    0.2282799    0.6123087
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -0.4840000   -1.1529993    0.1849993
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                -1.0589560   -1.2040739   -0.9138382
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2117708   -0.4888710    0.0653295
Birth       ki0047075b-MAL-ED         NEPAL        0                    NA                -0.9708799   -1.1162392   -0.8255206
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.2002020   -0.4029748    0.8033787
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0551940   -0.1750584    0.0646705
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 1.7207601    1.5657110    1.8758093
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 1.6775211    1.5774262    1.7776161
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7151646   -0.7364481   -0.6938810
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7516749   -0.7902594   -0.7130904
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3617890   -0.4541506   -0.2694273
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.4317213   -0.5984671   -0.2649755
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1021510   -0.3701819    0.1658798
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1379630   -0.2899800    0.0140539
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.6104170    1.0780176    2.1428163
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.9223422    0.7514348    1.0932497
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.8747222   -1.4459598   -0.3034846
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.6983112   -0.8261224   -0.5705000
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.7468511    0.2725293    1.2211729
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.1128452   -0.0230316    0.2487221
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 1.1779110    0.7754620    1.5803601
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 1.0521724    0.9247619    1.1795828
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.4810148   -0.6190044   -0.3430252
6 months    ki1000109-EE              PAKISTAN     0                    NA                -1.0782031   -1.2573838   -0.8990225
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6465859   -0.7848454   -0.5083265
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.6556227   -1.1386877   -0.1725576
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0431550   -0.1249185    0.2112285
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2703265   -0.3674078   -0.1732453
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0224791   -0.1192620    0.0743038
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2815004   -0.3441224   -0.2188783
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5753782   -0.6784362   -0.4723202
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.6689384   -0.8390018   -0.4988749
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.3983533    0.0574230    0.7392837
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.3956955    0.2689067    0.5224842
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.5638929   -0.5853110   -0.5424748
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7114630   -0.7532174   -0.6697086
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3442580   -0.3906754   -0.2978406
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5631488   -0.6396986   -0.4865991
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.9899497   -1.2436539   -0.7362455
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7813875   -0.9213733   -0.6414017
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.5191131   -0.0474834    1.0857096
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4379480    0.2225050    0.6533909
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -1.0270000   -1.3699520   -0.6840480
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.9370776   -1.0552061   -0.8189492
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.0976579   -0.3902379    0.5855537
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3772087   -0.4945595   -0.2598580
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0437500   -0.3245346    0.4120346
24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.1471842    0.0256636    0.2687048
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.7931828   -0.9492322   -0.6371333
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9186776   -1.0148032   -0.8225520
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7378431   -0.8198764   -0.6558097
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8365241   -0.8982808   -0.7747675
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0853137   -1.1842270   -0.9864005
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.2876967   -1.4934834   -1.0819100
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0536859   -0.3849790    0.2776071
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0526653   -0.2158767    0.1105460
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3039756   -1.3303844   -1.2775668
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2852163   -1.3328805   -1.2375521
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2250774   -1.2622464   -1.1879085
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2599271   -1.3339921   -1.1858622


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.9925114   -1.1346572   -0.8503656
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4073214    0.2229599    0.5916830
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                -1.0435829   -1.1865715   -0.9005943
Birth       ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.9226061   -1.0630064   -0.7822058
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.0430924   -0.1600210    0.0738362
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 1.6904416    1.6057966    1.7750867
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.7234060   -0.7433920   -0.7034200
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3738863   -0.4580087   -0.2897638
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1464929   -0.2779745   -0.0150113
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.7028736   -0.8283047   -0.5774424
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.1167518   -0.0146454    0.2481490
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                 1.0554461    0.9322755    1.1786167
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1997850   -0.2531586   -0.1464114
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.6015049   -0.6892785   -0.5137313
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                 0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.5931801   -0.6126929   -0.5736674
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3971948   -0.4378192   -0.3565704
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.8315789   -0.9546058   -0.7085521
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.9390848   -1.0545919   -0.8235777
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.3703084   -0.4835704   -0.2570464
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                 0.1430051    0.0254144    0.2605957
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1369520   -1.2269975   -1.0469065
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.2991319   -1.3225545   -1.2757094
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.2337581   -1.2679680   -1.1995482


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1905820   -0.5022847    0.1211207
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.5632628   -0.1122995    1.2388251
Birth       ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA        0                    1                 -0.5749560   -1.2595138    0.1096017
Birth       ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL        0                    1                 -0.7591091   -1.0726489   -0.4455693
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.2553959   -0.8699854    0.3591936
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 -0.0432390   -0.2279956    0.1415176
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0365103   -0.0766165    0.0035959
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0699323   -0.2518298    0.1119651
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0358120   -0.3452216    0.2735976
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.6880747   -1.2471438   -0.1290056
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.1764110   -0.4089505    0.7617725
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.6340059   -1.1271756   -0.1408361
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.1257387   -0.5477951    0.2963177
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                 -0.5971883   -0.8242837   -0.3700930
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0090367   -0.5362411    0.5181676
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.3134815   -0.5076880   -0.1192750
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2590213   -0.3731528   -0.1448897
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0935602   -0.2925682    0.1054478
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                 -0.0026579   -0.3666647    0.3613489
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.1475701   -0.1928385   -0.1023016
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2188908   -0.3069965   -0.1307851
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.2085622   -0.0805306    0.4976550
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0811651   -0.6888042    0.5264740
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0899224   -0.2728040    0.4526487
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.4748666   -0.9779107    0.0281775
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.1034342   -0.2843812    0.4912496
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.1254948   -0.3061783    0.0551886
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0986811   -0.2001601    0.0027980
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.2023830   -0.4308428    0.0260768
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0010206   -0.3710164    0.3730576
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                  0.0187592   -0.0345023    0.0720207
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0348497   -0.1152285    0.0455291


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1311772   -0.3685001    0.1061456
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.5502899   -0.0861917    1.1867715
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -0.5595829   -1.2259702    0.1068045
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.7108353   -1.0053645   -0.4163061
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.2432943   -0.8377994    0.3512107
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0303185   -0.1528436    0.0922066
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0082414   -0.0163470   -0.0001358
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0120973   -0.0445236    0.0203290
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0443419   -0.2794411    0.1907574
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.6386945   -1.1599028   -0.1174862
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.1718487   -0.3983856    0.7420829
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.6300993   -1.0962173   -0.1639813
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.1224650   -0.5280940    0.2831641
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.2402618   -0.3385131   -0.1420105
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0116999   -0.0141795    0.0375792
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2515256   -0.4014639   -0.1015872
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1773059   -0.2567831   -0.0978286
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0261267   -0.0781484    0.0258950
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -0.0055960   -0.3099088    0.2987168
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0292872   -0.0387920   -0.0197824
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0529368   -0.0730337   -0.0328399
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1583707   -0.0583892    0.3751307
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0724859   -0.6205548    0.4755830
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0879152   -0.2657473    0.4415777
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4679662   -0.9456544    0.0097220
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0992551   -0.2729019    0.4714120
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0947584   -0.2307879    0.0412711
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0653899   -0.1324512    0.0016714
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0516382   -0.1082583    0.0049818
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.0234336   -0.3313633    0.2844960
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0048436   -0.0069311    0.0166184
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0086807   -0.0264898    0.0091284

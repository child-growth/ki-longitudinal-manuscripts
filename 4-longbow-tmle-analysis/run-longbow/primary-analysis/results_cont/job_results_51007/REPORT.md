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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                56     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               175     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                12     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0               163     175
Birth       ki0047075b-MAL-ED          INDIA                          1                 5     190
Birth       ki0047075b-MAL-ED          INDIA                          0               185     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                11     170
Birth       ki0047075b-MAL-ED          NEPAL                          0               159     170
Birth       ki0047075b-MAL-ED          PERU                           1                10     256
Birth       ki0047075b-MAL-ED          PERU                           0               246     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               211     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               118     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                 1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1               484    1401
Birth       ki1101329-Keneba           GAMBIA                         0               917    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             15068   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              4014   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               617     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               150     767
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
6 months    ki1000109-EE               PAKISTAN                       1               218     372
6 months    ki1000109-EE               PAKISTAN                       0               154     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               447     583
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13199   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3483   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3319    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               940    4259
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               433     577
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1               360     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     480
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6665    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1877    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3276    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               898    4174


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
![](/tmp/35668663-1e88-4ab6-b5e7-482fda44c115/123a3424-4aef-4ccf-af7c-a74b15a348b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/35668663-1e88-4ab6-b5e7-482fda44c115/123a3424-4aef-4ccf-af7c-a74b15a348b9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/35668663-1e88-4ab6-b5e7-482fda44c115/123a3424-4aef-4ccf-af7c-a74b15a348b9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.0190999   -1.2624479   -0.7757520
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0070241   -1.1610367   -0.8530115
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.9419665   -1.7424783   -0.1414547
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.7327678   -0.8977659   -0.5677698
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -1.3600000   -2.6219090   -0.0980910
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                -1.0160000   -1.1632300   -0.8687700
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0217483   -0.3014425    0.2579460
Birth       ki0047075b-MAL-ED         NEPAL        0                    NA                -0.7343902   -0.8993427   -0.5694377
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -1.4107026   -2.1127516   -0.7086537
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.9141334   -1.0305616   -0.7977052
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0198896   -0.0862008    0.1259800
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0286869   -0.0499007    0.1072746
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5309312   -1.5513341   -1.5105283
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.6056771   -1.6383734   -1.5729807
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.4929051   -1.5816007   -1.4042095
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.6308057   -1.8148914   -1.4467200
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.2135736   -1.4517640   -0.9753833
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.2106344   -1.3470424   -1.0742264
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.6211866   -0.0958153    1.3381885
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0125532   -0.1326006    0.1577071
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -1.4863889   -2.7590210   -0.2137568
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -1.2122714   -1.3302421   -1.0943006
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2606774   -0.6476174    0.1262626
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5748412   -0.6933671   -0.4563153
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.3264349   -1.9931978   -0.6596719
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.2965633   -1.4055747   -1.1875520
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3773280   -2.5365157   -2.2181404
6 months    ki1000109-EE              PAKISTAN     0                    NA                -1.9625866   -2.1567214   -1.7684518
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.0945161   -1.2351654   -0.9538668
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0888233   -1.1791950   -0.9984515
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8982667   -0.9861487   -0.8103847
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9475895   -1.0062340   -0.8889451
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.2865559   -1.3763997   -1.1967121
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.4772698   -1.6476629   -1.3068768
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.7160409   -1.9792548   -1.4528270
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6206929   -1.7518138   -1.4895721
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.2736229   -1.2986494   -1.2485964
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.4422945   -1.4868749   -1.3977140
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3146407   -1.3566166   -1.2726648
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.5078365   -1.5994497   -1.4162232
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -2.0546425   -2.3265522   -1.7827328
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9157376   -2.0544970   -1.7769783
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0524706   -0.6956976    0.5907564
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0491815   -0.1253628    0.2237258
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -2.6930000   -3.7064117   -1.6795883
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -1.8272831   -1.9537841   -1.7007822
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -1.1196533   -1.5126078   -0.7266987
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.2829212   -1.4093740   -1.1564684
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -2.0556250   -2.5736792   -1.5375708
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -1.7157632   -1.8378518   -1.5936746
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.6897585   -1.8455233   -1.5339938
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5507363   -1.6472382   -1.4542344
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5003349   -1.5849237   -1.4157462
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6034326   -1.6697263   -1.5371388
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.8938904   -1.9887802   -1.7990005
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8830190   -2.0721514   -1.6938866
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.0120740   -2.3156899   -1.7084580
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9426430   -2.1002391   -1.7850468
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0094483   -2.0386445   -1.9802522
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0129479   -2.0633056   -1.9625902
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7571954   -1.7989557   -1.7154351
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8431098   -1.9233292   -1.7628904


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0317316   -1.1618799   -0.9015833
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.7263429   -0.8876385   -0.5650472
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                -1.0250526   -1.1724135   -0.8776918
Birth       ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.6964706   -0.8552823   -0.5376589
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.9311719   -1.0458986   -0.8164451
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 0.0162027   -0.0517648    0.0841702
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.5502914   -1.5696478   -1.5309349
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5207432   -1.6058630   -1.4356233
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.2140355   -1.3320337   -1.0960372
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -1.2193606   -1.3390323   -1.0996890
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5595745   -0.6727496   -0.4463993
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3092999   -1.4165606   -1.2020392
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3352045   -1.4146382   -1.2557708
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3104400   -1.3338132   -1.2870668
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3574771   -1.3964060   -1.3185482
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9532775   -2.0781247   -1.8284303
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -1.8466071   -1.9736347   -1.7195796
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.2744493   -1.3952297   -1.1536689
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                -1.7294949   -1.8488722   -1.6101177
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5721046   -1.6251725   -1.5190368
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.8951389   -1.9810871   -1.8091907
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0122091   -2.0399540   -1.9844641
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7762003   -1.8148628   -1.7375378


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0120758   -0.2774717    0.3016233
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.2091987   -0.6082002    1.0265975
Birth       ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA        0                    1                  0.3440000   -0.9264688    1.6144688
Birth       ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL        0                    1                 -0.7126419   -1.0394062   -0.3858777
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                  0.4965692   -0.2150127    1.2081511
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.0087973   -0.1130093    0.1306040
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0747458   -0.1074524   -0.0420392
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1379006   -0.3282133    0.0524121
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0029393   -0.2720798    0.2779583
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.6086334   -1.3389531    0.1216864
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.2741175   -1.0039707    1.5522057
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.3141638   -0.7187576    0.0904300
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                  0.0298716   -0.6458395    0.7055827
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  0.4147414    0.1640078    0.6654751
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0056928   -0.1615593    0.1729450
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0493228   -0.1539935    0.0553479
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1907139   -0.3836510    0.0022232
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0953480   -0.1933669    0.3840628
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.1686716   -0.2150351   -0.1223080
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1931957   -0.2921329   -0.0942586
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.1389049   -0.1655188    0.4433286
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.1016521   -0.5633755    0.7666796
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.8657169   -0.1555597    1.8869934
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1632679   -0.5759127    0.2493769
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.3398618   -0.1923842    0.8721078
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1390223   -0.0416793    0.3197238
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1030976   -0.2090226    0.0028273
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0108713   -0.2005300    0.2222727
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0694310   -0.2732459    0.4121079
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0034996   -0.0547085    0.0477094
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0859144   -0.1711046   -0.0007242


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0126317   -0.2337123    0.2084489
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2156236   -0.5526750    0.9839223
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                 0.3349474   -0.9021130    1.5720077
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.6747223   -0.9779872   -0.3714575
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.4795308   -0.2086736    1.1677351
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0036869   -0.0838267    0.0764530
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0193602   -0.0269973   -0.0117230
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0278380   -0.0647807    0.0091046
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0004618   -0.2091599    0.2082363
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.5701659   -1.2513260    0.1109943
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.2670283   -0.9780186    1.5120751
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2988971   -0.6810991    0.0833050
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.0171350   -0.6357122    0.6699822
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1768576    0.0714695    0.2822457
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0074120   -0.1209836    0.1358076
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0348441   -0.1075879    0.0378997
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0486486   -0.0994896    0.0021925
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0764453   -0.1625134    0.3154040
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0368171   -0.0471718   -0.0264624
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0428364   -0.0644156   -0.0212571
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1013650   -0.1263418    0.3290717
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0943049   -0.5203988    0.7090087
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.8463929   -0.1494933    1.8422790
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1547961   -0.5433234    0.2337313
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.3261301   -0.1846965    0.8369566
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1036407   -0.0323005    0.2395819
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0717697   -0.1419998   -0.0015397
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0012485   -0.0556202    0.0531232
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0514920   -0.2308631    0.3338470
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0027607   -0.0141454    0.0086240
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0190049   -0.0368686   -0.0011412

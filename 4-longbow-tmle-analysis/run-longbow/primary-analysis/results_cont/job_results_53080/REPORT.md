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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             213     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0      41
Birth       ki0047075b-MAL-ED          BRAZIL                         0              41      41
Birth       ki0047075b-MAL-ED          INDIA                          1               0      41
Birth       ki0047075b-MAL-ED          INDIA                          0              41      41
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      26
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      26
Birth       ki0047075b-MAL-ED          PERU                           1               9     207
Birth       ki0047075b-MAL-ED          PERU                           0             198     207
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              13      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              83      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40     119
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             606     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               2     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              45      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      45
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             732     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           26599   26642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              43   26642
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2820    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             240     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0             142     142
6 months    ki0047075b-MAL-ED          INDIA                          1               0     235
6 months    ki0047075b-MAL-ED          INDIA                          0             235     235
6 months    ki0047075b-MAL-ED          NEPAL                          1               1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0             232     233
6 months    ki0047075b-MAL-ED          PERU                           1              11     259
6 months    ki0047075b-MAL-ED          PERU                           0             248     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             380     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             535     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              11      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      11
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16725   16745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16745
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4824    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0             113     113
24 months   ki0047075b-MAL-ED          INDIA                          1               0     227
24 months   ki0047075b-MAL-ED          INDIA                          0             227     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               1     226
24 months   ki0047075b-MAL-ED          NEPAL                          0             225     226
24 months   ki0047075b-MAL-ED          PERU                           1               7     193
24 months   ki0047075b-MAL-ED          PERU                           0             186     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             427     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             475     574
24 months   ki1148112-LCNI-5           MALAWI                         0              99     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8545    8556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8556
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4746    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/31302a05-7753-4617-8b91-0a1448182e50/5bacffd1-d6e7-409d-91ac-6001d8e61a5b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/31302a05-7753-4617-8b91-0a1448182e50/5bacffd1-d6e7-409d-91ac-6001d8e61a5b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/31302a05-7753-4617-8b91-0a1448182e50/5bacffd1-d6e7-409d-91ac-6001d8e61a5b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.6677778   -1.2689426   -0.0666129
Birth       ki0047075b-MAL-ED   PERU                           0                    NA                -0.9054040   -1.0308665   -0.7799416
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.4251897   -1.1320596    0.2816802
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.5671133   -0.7817031   -0.3525234
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0650263   -1.3221816   -0.8078710
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.2648522   -1.7147377   -0.8149668
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.1719515   -1.2006434   -1.1432596
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.7911379   -1.8256596   -1.7566162
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                -1.3177104   -1.8937621   -0.7416586
6 months    ki0047075b-MAL-ED   PERU                           0                    NA                -1.3147681   -1.4279556   -1.2015807
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.1921385   -1.5979437   -0.7863332
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.0480475   -1.1844559   -0.9116390
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3490604   -1.4993016   -1.1988193
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4244825   -1.6338182   -1.2151468
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -1.6206825   -1.6974656   -1.5438994
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -1.7473630   -1.9034316   -1.5912944
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.3353364   -1.3589387   -1.3117341
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.6667688   -1.6967370   -1.6368006
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -2.1757143   -2.7976265   -1.5538020
24 months   ki0047075b-MAL-ED   PERU                           0                    NA                -1.7386828   -1.8660283   -1.6113373
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.7170638   -2.1848328   -1.2492947
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.6390751   -1.7817791   -1.4963710
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6865447   -2.8568364   -2.5162530
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6503957   -2.8756900   -2.4251014
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -1.8732933   -1.9639503   -1.7826364
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -1.9348729   -2.1195461   -1.7501996
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -2.0192230   -2.0475133   -1.9909326
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -2.2601466   -2.2935738   -2.2267193


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           NA                   NA                -0.8950725   -1.0180716   -0.7720734
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1158824   -1.3283278   -0.9034369
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.1729536   -1.2010222   -1.1448850
6 months    ki0047075b-MAL-ED   PERU                           NA                   NA                -1.3116216   -1.4217664   -1.2014769
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.0539919   -1.1841437   -0.9238401
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3658943   -1.4882808   -1.2435078
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.3357056   -1.3587889   -1.3126223
24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -1.7545337   -1.8798502   -1.6292172
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.6512658   -1.7868828   -1.5156488
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6484507   -2.7840006   -2.5129008
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -2.0194951   -2.0471365   -1.9918537


### Parameter: ATE


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   PERU                           0                    1                 -0.2376263   -0.8517435    0.3764910
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.1419236   -0.8827977    0.5989505
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1998259   -0.7192658    0.3196140
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.6191864   -0.6626942   -0.5756785
6 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   PERU                           0                    1                  0.0029423   -0.5845853    0.5904698
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.1440910   -0.2843288    0.5725109
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0754221   -0.3325210    0.1816768
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 -0.1266805   -0.2996432    0.0462821
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.3314324   -0.3681043   -0.2947605
24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.4370315   -0.1977848    1.0718478
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0779887   -0.4111061    0.5670834
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0361490   -0.2477379    0.3200358
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0615795   -0.2675214    0.1443624
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2409236   -0.2837860   -0.1980612


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.2272947   -0.8147485   0.3601591
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1272061   -0.7812044   0.5267922
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0508560   -0.2167217   0.1150096
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0010021   -0.0021606   0.0001565
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                 0.0060888   -0.5625689   0.5747464
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1381466   -0.2281755   0.5044686
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0168339   -0.0975586   0.0638909
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0220136   -0.0526454   0.0086182
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0003692   -0.0012714   0.0005330
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.4211806   -0.1907204   1.0330816
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0657979   -0.3612099   0.4928057
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0380940   -0.0525557   0.1287436
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0089715   -0.0444136   0.0264706
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002721   -0.0014188   0.0008745

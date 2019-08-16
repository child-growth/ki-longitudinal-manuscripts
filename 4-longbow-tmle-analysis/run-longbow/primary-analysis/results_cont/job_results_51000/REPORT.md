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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             234     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0     124
Birth       ki0047075b-MAL-ED          BRAZIL                         0             124     124
Birth       ki0047075b-MAL-ED          INDIA                          1               0     191
Birth       ki0047075b-MAL-ED          INDIA                          0             191     191
Birth       ki0047075b-MAL-ED          NEPAL                          1               1     168
Birth       ki0047075b-MAL-ED          NEPAL                          0             167     168
Birth       ki0047075b-MAL-ED          PERU                           1               9     247
Birth       ki0047075b-MAL-ED          PERU                           0             238     247
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             183     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              39     118
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              28      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              27      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           19558   19593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              35   19593
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             822     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     822
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             581     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16783   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16803
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             576     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             475     574
24 months   ki1148112-LCNI-5           MALAWI                         0              99     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8612    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8623
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
![](/tmp/e3bf94ab-3222-4c54-950b-139c37a15a09/aa598b4d-6468-4919-94f0-f48defccc753/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e3bf94ab-3222-4c54-950b-139c37a15a09/aa598b4d-6468-4919-94f0-f48defccc753/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e3bf94ab-3222-4c54-950b-139c37a15a09/aa598b4d-6468-4919-94f0-f48defccc753/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.5088889   -1.0941264    0.0763486
Birth       ki0047075b-MAL-ED   PERU                           0                    NA                -0.9466387   -1.0665684   -0.8267089
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.5150319   -0.8575828   -0.1724810
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.6851401   -0.8298532   -0.5404270
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7945493   -1.0334249   -0.5556738
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1100711   -1.5008103   -0.7193318
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.5743557   -1.5945719   -1.5541395
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.9124904   -1.9516617   -1.8733191
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                -1.2234529   -1.7344437   -0.7124621
6 months    ki0047075b-MAL-ED   PERU                           0                    NA                -1.3147376   -1.4278351   -1.2016401
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.0654898   -1.4742717   -0.6567078
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.0428679   -1.1792395   -0.9064962
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3280343   -1.4781501   -1.1779185
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4221423   -1.6366604   -1.2076243
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -1.6197955   -1.6968829   -1.5427081
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -1.7420368   -1.9007653   -1.5833083
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.3128339   -1.3364934   -1.2891743
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.6005283   -1.6297643   -1.5712923
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -2.1600000   -2.7672125   -1.5527875
24 months   ki0047075b-MAL-ED   PERU                           0                    NA                -1.7351344   -1.8622365   -1.6080323
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.7211856   -2.1995139   -1.2428574
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.6078524   -1.7517508   -1.4639540
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6512564   -2.8209491   -2.4815636
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5642550   -2.7776308   -2.3508792
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -1.8623469   -1.9529273   -1.7717665
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -1.9064640   -2.0912772   -1.7216508
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -2.0122989   -2.0406023   -1.9839954
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -2.1578104   -2.1928116   -2.1228092


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  ----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           NA                   NA                -0.9306883   -1.048645   -0.8127312
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.6819907   -0.814754   -0.5492274
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.8810169   -1.086924   -0.6751103
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.5750140   -1.594790   -1.5552384
6 months    ki0047075b-MAL-ED   PERU                           NA                   NA                -1.3102574   -1.420486   -1.2000288
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.0534375   -1.183632   -0.9232428
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3572358   -1.479663   -1.2348087
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.6426961   -1.712060   -1.5733318
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.3132090   -1.336349   -1.2900693
24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -1.7505440   -1.875506   -1.6255816
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.6248101   -1.760608   -1.4890121
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6089906   -2.743901   -2.4740799
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.8714634   -1.952856   -1.7900711
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -2.0125560   -2.040268   -1.9848436


### Parameter: ATE


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   PERU                           0                    1                 -0.4377498   -1.0351492    0.1596497
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.1701082   -0.5421158    0.2018993
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3155217   -0.7760470    0.1450035
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.3381347   -0.3809421   -0.2953273
6 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   PERU                           0                    1                 -0.0912847   -0.6148445    0.4322751
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0226219   -0.4088358    0.4540796
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0941081   -0.3559434    0.1677273
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 -0.1222413   -0.2987463    0.0542637
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2876944   -0.3237843   -0.2516046
24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.4248656   -0.1955068    1.0452380
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.1133332   -0.3869906    0.6136571
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0870014   -0.1841029    0.3581057
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0441171   -0.2498309    0.1615967
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.1455116   -0.1882452   -0.1027780


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.4217994   -0.9975224   0.1539237
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1669588   -0.4854667   0.1515491
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0864676   -0.2456802   0.0727450
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0006584   -0.0017896   0.0004728
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0868045   -0.5901221   0.4165131
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0120523   -0.3565709   0.3806754
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0292015   -0.1112918   0.0528888
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0229006   -0.0540731   0.0082720
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0003751   -0.0012665   0.0005163
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.4094560   -0.1885215   1.0074334
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0963755   -0.3422196   0.5349706
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0422658   -0.0470812   0.1316127
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0091165   -0.0444408   0.0262078
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002571   -0.0013818   0.0008677

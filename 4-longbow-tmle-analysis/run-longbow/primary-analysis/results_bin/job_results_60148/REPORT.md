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

**Outcome Variable:** stunted

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

agecat      studyid         country                        safeh20    stunted   n_cell       n
----------  --------------  -----------------------------  --------  --------  -------  ------
Birth       JiVitA-3        BANGLADESH                     1                0    15028   22432
Birth       JiVitA-3        BANGLADESH                     1                1     7364   22432
Birth       JiVitA-3        BANGLADESH                     0                0       22   22432
Birth       JiVitA-3        BANGLADESH                     0                1       18   22432
Birth       JiVitA-4        BANGLADESH                     1                0     1964    2820
Birth       JiVitA-4        BANGLADESH                     1                1      856    2820
Birth       JiVitA-4        BANGLADESH                     0                0        0    2820
Birth       JiVitA-4        BANGLADESH                     0                1        0    2820
Birth       MAL-ED          BANGLADESH                     1                0        0     213
Birth       MAL-ED          BANGLADESH                     1                1        0     213
Birth       MAL-ED          BANGLADESH                     0                0      176     213
Birth       MAL-ED          BANGLADESH                     0                1       37     213
Birth       MAL-ED          BRAZIL                         1                0        0      41
Birth       MAL-ED          BRAZIL                         1                1        0      41
Birth       MAL-ED          BRAZIL                         0                0       32      41
Birth       MAL-ED          BRAZIL                         0                1        9      41
Birth       MAL-ED          INDIA                          1                0        0      41
Birth       MAL-ED          INDIA                          1                1        0      41
Birth       MAL-ED          INDIA                          0                0       33      41
Birth       MAL-ED          INDIA                          0                1        8      41
Birth       MAL-ED          NEPAL                          1                0        1      26
Birth       MAL-ED          NEPAL                          1                1        0      26
Birth       MAL-ED          NEPAL                          0                0       23      26
Birth       MAL-ED          NEPAL                          0                1        2      26
Birth       MAL-ED          PERU                           1                0        8     207
Birth       MAL-ED          PERU                           1                1        1     207
Birth       MAL-ED          PERU                           0                0      176     207
Birth       MAL-ED          PERU                           0                1       22     207
Birth       MAL-ED          SOUTH AFRICA                   1                0       12      96
Birth       MAL-ED          SOUTH AFRICA                   1                1        1      96
Birth       MAL-ED          SOUTH AFRICA                   0                0       76      96
Birth       MAL-ED          SOUTH AFRICA                   0                1        7      96
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       68     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       11     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       30     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       10     119
Birth       NIH-Birth       BANGLADESH                     1                0      511     608
Birth       NIH-Birth       BANGLADESH                     1                1       95     608
Birth       NIH-Birth       BANGLADESH                     0                0        0     608
Birth       NIH-Birth       BANGLADESH                     0                1        2     608
Birth       NIH-Crypto      BANGLADESH                     1                0      631     732
Birth       NIH-Crypto      BANGLADESH                     1                1      101     732
Birth       NIH-Crypto      BANGLADESH                     0                0        0     732
Birth       NIH-Crypto      BANGLADESH                     0                1        0     732
Birth       PROVIDE         BANGLADESH                     1                0       43      45
Birth       PROVIDE         BANGLADESH                     1                1        2      45
Birth       PROVIDE         BANGLADESH                     0                0        0      45
Birth       PROVIDE         BANGLADESH                     0                1        0      45
6 months    CONTENT         PERU                           1                0       54      57
6 months    CONTENT         PERU                           1                1        0      57
6 months    CONTENT         PERU                           0                0        3      57
6 months    CONTENT         PERU                           0                1        0      57
6 months    JiVitA-3        BANGLADESH                     1                0    12567   16803
6 months    JiVitA-3        BANGLADESH                     1                1     4216   16803
6 months    JiVitA-3        BANGLADESH                     0                0       12   16803
6 months    JiVitA-3        BANGLADESH                     0                1        8   16803
6 months    JiVitA-4        BANGLADESH                     1                0     3606    4825
6 months    JiVitA-4        BANGLADESH                     1                1     1218    4825
6 months    JiVitA-4        BANGLADESH                     0                0        1    4825
6 months    JiVitA-4        BANGLADESH                     0                1        0    4825
6 months    LCNI-5          MALAWI                         1                0      428     816
6 months    LCNI-5          MALAWI                         1                1      244     816
6 months    LCNI-5          MALAWI                         0                0       92     816
6 months    LCNI-5          MALAWI                         0                1       52     816
6 months    MAL-ED          BANGLADESH                     1                0        0     240
6 months    MAL-ED          BANGLADESH                     1                1        0     240
6 months    MAL-ED          BANGLADESH                     0                0      196     240
6 months    MAL-ED          BANGLADESH                     0                1       44     240
6 months    MAL-ED          BRAZIL                         1                0        0     142
6 months    MAL-ED          BRAZIL                         1                1        0     142
6 months    MAL-ED          BRAZIL                         0                0      140     142
6 months    MAL-ED          BRAZIL                         0                1        2     142
6 months    MAL-ED          INDIA                          1                0        0     235
6 months    MAL-ED          INDIA                          1                1        0     235
6 months    MAL-ED          INDIA                          0                0      191     235
6 months    MAL-ED          INDIA                          0                1       44     235
6 months    MAL-ED          NEPAL                          1                0        1     233
6 months    MAL-ED          NEPAL                          1                1        0     233
6 months    MAL-ED          NEPAL                          0                0      221     233
6 months    MAL-ED          NEPAL                          0                1       11     233
6 months    MAL-ED          PERU                           1                0        8     259
6 months    MAL-ED          PERU                           1                1        3     259
6 months    MAL-ED          PERU                           0                0      195     259
6 months    MAL-ED          PERU                           0                1       53     259
6 months    MAL-ED          SOUTH AFRICA                   1                0       27     248
6 months    MAL-ED          SOUTH AFRICA                   1                1       10     248
6 months    MAL-ED          SOUTH AFRICA                   0                0      172     248
6 months    MAL-ED          SOUTH AFRICA                   0                1       39     248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      130     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       38     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       58     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       20     246
6 months    NIH-Birth       BANGLADESH                     1                0      391     537
6 months    NIH-Birth       BANGLADESH                     1                1      144     537
6 months    NIH-Birth       BANGLADESH                     0                0        2     537
6 months    NIH-Birth       BANGLADESH                     0                1        0     537
6 months    NIH-Crypto      BANGLADESH                     1                0      565     715
6 months    NIH-Crypto      BANGLADESH                     1                1      150     715
6 months    NIH-Crypto      BANGLADESH                     0                0        0     715
6 months    NIH-Crypto      BANGLADESH                     0                1        0     715
6 months    PROVIDE         BANGLADESH                     1                0       10      11
6 months    PROVIDE         BANGLADESH                     1                1        1      11
6 months    PROVIDE         BANGLADESH                     0                0        0      11
6 months    PROVIDE         BANGLADESH                     0                1        0      11
6 months    SAS-FoodSuppl   INDIA                          1                0      217     380
6 months    SAS-FoodSuppl   INDIA                          1                1      163     380
6 months    SAS-FoodSuppl   INDIA                          0                0        0     380
6 months    SAS-FoodSuppl   INDIA                          0                1        0     380
24 months   CONTENT         PERU                           1                0       43      48
24 months   CONTENT         PERU                           1                1        2      48
24 months   CONTENT         PERU                           0                0        3      48
24 months   CONTENT         PERU                           0                1        0      48
24 months   JiVitA-3        BANGLADESH                     1                0     4385    8623
24 months   JiVitA-3        BANGLADESH                     1                1     4227    8623
24 months   JiVitA-3        BANGLADESH                     0                0        3    8623
24 months   JiVitA-3        BANGLADESH                     0                1        8    8623
24 months   JiVitA-4        BANGLADESH                     1                0     2843    4747
24 months   JiVitA-4        BANGLADESH                     1                1     1903    4747
24 months   JiVitA-4        BANGLADESH                     0                0        1    4747
24 months   JiVitA-4        BANGLADESH                     0                1        0    4747
24 months   LCNI-5          MALAWI                         1                0      263     574
24 months   LCNI-5          MALAWI                         1                1      212     574
24 months   LCNI-5          MALAWI                         0                0       57     574
24 months   LCNI-5          MALAWI                         0                1       42     574
24 months   MAL-ED          BANGLADESH                     1                0        0     212
24 months   MAL-ED          BANGLADESH                     1                1        0     212
24 months   MAL-ED          BANGLADESH                     0                0      111     212
24 months   MAL-ED          BANGLADESH                     0                1      101     212
24 months   MAL-ED          BRAZIL                         1                0        0     113
24 months   MAL-ED          BRAZIL                         1                1        0     113
24 months   MAL-ED          BRAZIL                         0                0      110     113
24 months   MAL-ED          BRAZIL                         0                1        3     113
24 months   MAL-ED          INDIA                          1                0        0     227
24 months   MAL-ED          INDIA                          1                1        0     227
24 months   MAL-ED          INDIA                          0                0      130     227
24 months   MAL-ED          INDIA                          0                1       97     227
24 months   MAL-ED          NEPAL                          1                0        1     226
24 months   MAL-ED          NEPAL                          1                1        0     226
24 months   MAL-ED          NEPAL                          0                0      175     226
24 months   MAL-ED          NEPAL                          0                1       50     226
24 months   MAL-ED          PERU                           1                0        3     193
24 months   MAL-ED          PERU                           1                1        4     193
24 months   MAL-ED          PERU                           0                0      117     193
24 months   MAL-ED          PERU                           0                1       69     193
24 months   MAL-ED          SOUTH AFRICA                   1                0       22     237
24 months   MAL-ED          SOUTH AFRICA                   1                1       12     237
24 months   MAL-ED          SOUTH AFRICA                   0                0      131     237
24 months   MAL-ED          SOUTH AFRICA                   0                1       72     237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       40     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1      105     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       18     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       50     213
24 months   NIH-Birth       BANGLADESH                     1                0      184     429
24 months   NIH-Birth       BANGLADESH                     1                1      243     429
24 months   NIH-Birth       BANGLADESH                     0                0        1     429
24 months   NIH-Birth       BANGLADESH                     0                1        1     429
24 months   NIH-Crypto      BANGLADESH                     1                0      382     514
24 months   NIH-Crypto      BANGLADESH                     1                1      132     514
24 months   NIH-Crypto      BANGLADESH                     0                0        0     514
24 months   NIH-Crypto      BANGLADESH                     0                1        0     514
24 months   PROVIDE         BANGLADESH                     1                0        5       9
24 months   PROVIDE         BANGLADESH                     1                1        4       9
24 months   PROVIDE         BANGLADESH                     0                0        0       9
24 months   PROVIDE         BANGLADESH                     0                1        0       9


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/083080ac-88cd-41e5-a0e4-e4e235a2a415/fbaf6757-94b2-47cb-8004-742821a80b20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/083080ac-88cd-41e5-a0e4-e4e235a2a415/fbaf6757-94b2-47cb-8004-742821a80b20/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/083080ac-88cd-41e5-a0e4-e4e235a2a415/fbaf6757-94b2-47cb-8004-742821a80b20/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/083080ac-88cd-41e5-a0e4-e4e235a2a415/fbaf6757-94b2-47cb-8004-742821a80b20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                0.3288687   0.3213264   0.3364111
Birth       JiVitA-3   BANGLADESH                     0                    NA                0.4465029   0.4346533   0.4583525
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1339038   0.0564414   0.2113663
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2144674   0.0764253   0.3525094
6 months    JiVitA-3   BANGLADESH                     1                    NA                0.2512066   0.2428938   0.2595194
6 months    JiVitA-3   BANGLADESH                     0                    NA                0.4000000   0.3887912   0.4112088
6 months    LCNI-5     MALAWI                         1                    NA                0.3643909   0.3282291   0.4005527
6 months    LCNI-5     MALAWI                         0                    NA                0.3720599   0.2945662   0.4495536
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                0.2714114   0.1293451   0.4134778
6 months    MAL-ED     SOUTH AFRICA                   0                    NA                0.1843660   0.1320361   0.2366960
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2208575   0.1584512   0.2832638
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2662179   0.1649872   0.3674487
24 months   LCNI-5     MALAWI                         1                    NA                0.4465291   0.4018863   0.4911719
24 months   LCNI-5     MALAWI                         0                    NA                0.4255088   0.3271581   0.5238594
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.3664722   0.1900144   0.5429300
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.3581725   0.2923992   0.4239458
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7079314   0.6328344   0.7830283
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7411504   0.6308157   0.8514850


### Parameter: E(Y)


agecat      studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH                     NA                   NA                0.3290835   0.3217078   0.3364591
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1764706   0.1076873   0.2452539
6 months    JiVitA-3   BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
6 months    LCNI-5     MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    MAL-ED     SOUTH AFRICA                   NA                   NA                0.1975806   0.1479246   0.2472367
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2357724   0.1826200   0.2889248
24 months   LCNI-5     MALAWI                         NA                   NA                0.4425087   0.4018409   0.4831765
24 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.3544304   0.2934024   0.4154584
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7276995   0.6677783   0.7876207


### Parameter: RR


agecat      studyid    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3   BANGLADESH                     0                    1                 1.3576934   1.3119140   1.405070
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.6016522   0.6730504   3.811438
6 months    JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3   BANGLADESH                     0                    1                 1.5923150   1.5266883   1.660763
6 months    LCNI-5     MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    LCNI-5     MALAWI                         0                    1                 1.0210461   0.8117437   1.284316
6 months    MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED     SOUTH AFRICA                   0                    1                 0.6792863   0.3736825   1.234818
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2053831   0.7502753   1.936554
24 months   LCNI-5     MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   LCNI-5     MALAWI                         0                    1                 0.9529250   0.7411279   1.225249
24 months   MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                 0.9773524   0.5840841   1.635411
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0469240   0.8719834   1.256962


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                 0.0002147   -0.0001243   0.0005537
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0425668   -0.0110638   0.0961973
6 months    JiVitA-3   BANGLADESH                     1                    NA                 0.0001771   -0.0001696   0.0005239
6 months    LCNI-5     MALAWI                         1                    NA                -0.0016458   -0.0167977   0.0135061
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                -0.0738308   -0.2033203   0.0556588
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0149148   -0.0214420   0.0512717
24 months   LCNI-5     MALAWI                         1                    NA                -0.0040204   -0.0225079   0.0144671
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0120418   -0.1751615   0.1510779
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0197682   -0.0235010   0.0630373


### Parameter: PAF


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                 0.0006525   -0.0003852   0.0016892
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2412116   -0.1236512   0.4875992
6 months    JiVitA-3   BANGLADESH                     1                    NA                 0.0007045   -0.0006877   0.0020948
6 months    LCNI-5     MALAWI                         1                    NA                -0.0045371   -0.0471949   0.0363830
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                -0.3736741   -1.2131925   0.1473942
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0632594   -0.1040411   0.2052082
24 months   LCNI-5     MALAWI                         1                    NA                -0.0090855   -0.0517516   0.0318498
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0339751   -0.6133711   0.3373474
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0271653   -0.0342752   0.0849560

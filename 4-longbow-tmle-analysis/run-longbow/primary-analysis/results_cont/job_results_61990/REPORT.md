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

agecat      studyid         country                        safeh20    n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  -------  ------  -----------------
Birth       JiVitA-3        BANGLADESH                     1           17963   17992  whz              
Birth       JiVitA-3        BANGLADESH                     0              29   17992  whz              
Birth       JiVitA-4        BANGLADESH                     1            2394    2394  whz              
Birth       JiVitA-4        BANGLADESH                     0               0    2394  whz              
Birth       MAL-ED          BANGLADESH                     1               0     201  whz              
Birth       MAL-ED          BANGLADESH                     0             201     201  whz              
Birth       MAL-ED          BRAZIL                         1               0      38  whz              
Birth       MAL-ED          BRAZIL                         0              38      38  whz              
Birth       MAL-ED          INDIA                          1               0      39  whz              
Birth       MAL-ED          INDIA                          0              39      39  whz              
Birth       MAL-ED          NEPAL                          1               1      25  whz              
Birth       MAL-ED          NEPAL                          0              24      25  whz              
Birth       MAL-ED          PERU                           1               9     202  whz              
Birth       MAL-ED          PERU                           0             193     202  whz              
Birth       MAL-ED          SOUTH AFRICA                   1              13      95  whz              
Birth       MAL-ED          SOUTH AFRICA                   0              82      95  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              74     111  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              37     111  whz              
Birth       NIH-Birth       BANGLADESH                     1             573     575  whz              
Birth       NIH-Birth       BANGLADESH                     0               2     575  whz              
Birth       NIH-Crypto      BANGLADESH                     1             707     707  whz              
Birth       NIH-Crypto      BANGLADESH                     0               0     707  whz              
Birth       PROVIDE         BANGLADESH                     1              45      45  whz              
Birth       PROVIDE         BANGLADESH                     0               0      45  whz              
6 months    CONTENT         PERU                           1              54      57  whz              
6 months    CONTENT         PERU                           0               3      57  whz              
6 months    JiVitA-3        BANGLADESH                     1           16756   16776  whz              
6 months    JiVitA-3        BANGLADESH                     0              20   16776  whz              
6 months    JiVitA-4        BANGLADESH                     1            4826    4827  whz              
6 months    JiVitA-4        BANGLADESH                     0               1    4827  whz              
6 months    LCNI-5          MALAWI                         1             672     816  whz              
6 months    LCNI-5          MALAWI                         0             144     816  whz              
6 months    MAL-ED          BANGLADESH                     1               0     240  whz              
6 months    MAL-ED          BANGLADESH                     0             240     240  whz              
6 months    MAL-ED          BRAZIL                         1               0     142  whz              
6 months    MAL-ED          BRAZIL                         0             142     142  whz              
6 months    MAL-ED          INDIA                          1               0     235  whz              
6 months    MAL-ED          INDIA                          0             235     235  whz              
6 months    MAL-ED          NEPAL                          1               1     233  whz              
6 months    MAL-ED          NEPAL                          0             232     233  whz              
6 months    MAL-ED          PERU                           1              11     259  whz              
6 months    MAL-ED          PERU                           0             248     259  whz              
6 months    MAL-ED          SOUTH AFRICA                   1              37     248  whz              
6 months    MAL-ED          SOUTH AFRICA                   0             211     248  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246  whz              
6 months    NIH-Birth       BANGLADESH                     1             535     537  whz              
6 months    NIH-Birth       BANGLADESH                     0               2     537  whz              
6 months    NIH-Crypto      BANGLADESH                     1             715     715  whz              
6 months    NIH-Crypto      BANGLADESH                     0               0     715  whz              
6 months    PROVIDE         BANGLADESH                     1              11      11  whz              
6 months    PROVIDE         BANGLADESH                     0               0      11  whz              
6 months    SAS-FoodSuppl   INDIA                          1             380     380  whz              
6 months    SAS-FoodSuppl   INDIA                          0               0     380  whz              
24 months   CONTENT         PERU                           1              45      48  whz              
24 months   CONTENT         PERU                           0               3      48  whz              
24 months   JiVitA-3        BANGLADESH                     1            8583    8594  whz              
24 months   JiVitA-3        BANGLADESH                     0              11    8594  whz              
24 months   JiVitA-4        BANGLADESH                     1            4729    4730  whz              
24 months   JiVitA-4        BANGLADESH                     0               1    4730  whz              
24 months   LCNI-5          MALAWI                         1             464     558  whz              
24 months   LCNI-5          MALAWI                         0              94     558  whz              
24 months   MAL-ED          BANGLADESH                     1               0     212  whz              
24 months   MAL-ED          BANGLADESH                     0             212     212  whz              
24 months   MAL-ED          BRAZIL                         1               0     113  whz              
24 months   MAL-ED          BRAZIL                         0             113     113  whz              
24 months   MAL-ED          INDIA                          1               0     227  whz              
24 months   MAL-ED          INDIA                          0             227     227  whz              
24 months   MAL-ED          NEPAL                          1               1     226  whz              
24 months   MAL-ED          NEPAL                          0             225     226  whz              
24 months   MAL-ED          PERU                           1               7     193  whz              
24 months   MAL-ED          PERU                           0             186     193  whz              
24 months   MAL-ED          SOUTH AFRICA                   1              34     237  whz              
24 months   MAL-ED          SOUTH AFRICA                   0             203     237  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213  whz              
24 months   NIH-Birth       BANGLADESH                     1             426     428  whz              
24 months   NIH-Birth       BANGLADESH                     0               2     428  whz              
24 months   NIH-Crypto      BANGLADESH                     1             514     514  whz              
24 months   NIH-Crypto      BANGLADESH                     0               0     514  whz              
24 months   PROVIDE         BANGLADESH                     1               9       9  whz              
24 months   PROVIDE         BANGLADESH                     0               0       9  whz              


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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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
![](/tmp/0cdffaad-67eb-4024-a67d-30228f9ddd81/6ed0c069-6d91-4dc5-982c-1ef99f8079af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0cdffaad-67eb-4024-a67d-30228f9ddd81/6ed0c069-6d91-4dc5-982c-1ef99f8079af/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0cdffaad-67eb-4024-a67d-30228f9ddd81/6ed0c069-6d91-4dc5-982c-1ef99f8079af/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.7775540   -0.7970320   -0.7580761
Birth       JiVitA-3   BANGLADESH                     0                    NA                -0.9092330   -0.9301932   -0.8882727
Birth       MAL-ED     PERU                           1                    NA                 0.1222222   -0.3522777    0.5967221
Birth       MAL-ED     PERU                           0                    NA                -0.0486528   -0.1831806    0.0858749
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.1882814   -1.2173184    0.8407555
Birth       MAL-ED     SOUTH AFRICA                   0                    NA                -0.1776190   -0.4326485    0.0774105
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7456230    0.4775629    1.0136831
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.8036808    0.5014608    1.1059009
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.5930104   -0.6129865   -0.5730343
6 months    JiVitA-3   BANGLADESH                     0                    NA                -0.7687144   -0.7937722   -0.7436566
6 months    LCNI-5     MALAWI                         1                    NA                 0.4331770    0.3559255    0.5104286
6 months    LCNI-5     MALAWI                         0                    NA                 0.4811478    0.2939648    0.6683308
6 months    MAL-ED     PERU                           1                    NA                 1.4692570    1.0059400    1.9325739
6 months    MAL-ED     PERU                           0                    NA                 1.0487657    0.9186322    1.1788992
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.4552518    0.1520660    0.7584376
6 months    MAL-ED     SOUTH AFRICA                   0                    NA                 0.5358275    0.3636309    0.7080240
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6082598    0.4483004    0.7682193
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3613260    0.1119203    0.6107318
24 months   JiVitA-3   BANGLADESH                     1                    NA                -1.2970059   -1.3208086   -1.2732032
24 months   JiVitA-3   BANGLADESH                     0                    NA                -1.6003100   -1.6647621   -1.5358580
24 months   LCNI-5     MALAWI                         1                    NA                -0.0124028   -0.1021488    0.0773432
24 months   LCNI-5     MALAWI                         0                    NA                -0.2522750   -0.4583682   -0.0461819
24 months   MAL-ED     PERU                           1                    NA                 0.0150000   -0.4862499    0.5162499
24 months   MAL-ED     PERU                           0                    NA                 0.1005332   -0.0288801    0.2299464
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.2647238   -0.0496892    0.5791368
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                 0.4300361    0.2976872    0.5623850
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0456176   -0.1098621    0.2010972
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0093690   -0.2062841    0.2250222


### Parameter: E(Y)


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     NA                   NA                -0.7777807   -0.7967797   -0.7587816
Birth       MAL-ED     PERU                           NA                   NA                -0.0410396   -0.1713918    0.0893125
Birth       MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7618919    0.5640188    0.9597650
6 months    JiVitA-3   BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
6 months    LCNI-5     MALAWI                         NA                   NA                 0.4417647    0.3702742    0.5132552
6 months    MAL-ED     PERU                           NA                   NA                 1.0487066    0.9226025    1.1748107
6 months    MAL-ED     SOUTH AFRICA                   NA                   NA                 0.5430175    0.3887455    0.6972895
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5357995    0.4039850    0.6676139
24 months   JiVitA-3   BANGLADESH                     NA                   NA                -1.2973086   -1.3206115   -1.2740057
24 months   LCNI-5     MALAWI                         NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   MAL-ED     PERU                           NA                   NA                 0.0974309   -0.0286270    0.2234888
24 months   MAL-ED     SOUTH AFRICA                   NA                   NA                 0.4054395    0.2840471    0.5268320
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0518153   -0.0737716    0.1774023


### Parameter: ATE


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3   BANGLADESH                     0                    1                 -0.1316790   -0.1604986   -0.1028593
Birth       MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     PERU                           0                    1                 -0.1708751   -0.6640768    0.3223266
Birth       MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     SOUTH AFRICA                   0                    1                  0.0106625   -1.0501856    1.0715105
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0580578   -0.3546538    0.4707695
6 months    JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3   BANGLADESH                     0                    1                 -0.1757040   -0.2068854   -0.1445226
6 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5     MALAWI                         0                    1                  0.0479707   -0.1546573    0.2505988
6 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     PERU                           0                    1                 -0.4204913   -0.9037816    0.0627991
6 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0805757   -0.2675773    0.4287286
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2469338   -0.5440917    0.0502241
24 months   JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3   BANGLADESH                     0                    1                 -0.3033041   -0.3718159   -0.2347923
24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5     MALAWI                         0                    1                 -0.2398722   -0.4640142   -0.0157303
24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     PERU                           0                    1                  0.0855332   -0.4321533    0.6032196
24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.1653123   -0.1770299    0.5076544
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0362486   -0.3030044    0.2305073


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.0002267   -0.0009339   0.0004806
Birth       MAL-ED     PERU                           1                    NA                -0.1632618   -0.6345144   0.3079907
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                 0.0153341   -0.9303303   0.9609984
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0162689   -0.1369104   0.1694483
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.0002398   -0.0010224   0.0005429
6 months    LCNI-5     MALAWI                         1                    NA                 0.0085877   -0.0268779   0.0440532
6 months    MAL-ED     PERU                           1                    NA                -0.4205504   -0.8879942   0.0468934
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0877657   -0.2067495   0.3822809
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0724604   -0.1630874   0.0181667
24 months   JiVitA-3   BANGLADESH                     1                    NA                -0.0003026   -0.0020768   0.0014715
24 months   LCNI-5     MALAWI                         1                    NA                -0.0353839   -0.0727215   0.0019537
24 months   MAL-ED     PERU                           1                    NA                 0.0824309   -0.4164844   0.5813463
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.1407157   -0.1576675   0.4390989
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0061978   -0.0827574   0.0951529

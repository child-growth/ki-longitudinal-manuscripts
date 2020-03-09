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
![](/tmp/68df7093-cba4-4fd3-9b22-598c77a477f1/c9ff58be-7fd4-49af-a570-cda2836e7be5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/68df7093-cba4-4fd3-9b22-598c77a477f1/c9ff58be-7fd4-49af-a570-cda2836e7be5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/68df7093-cba4-4fd3-9b22-598c77a477f1/c9ff58be-7fd4-49af-a570-cda2836e7be5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.7775452   -0.7970226   -0.7580678
Birth       JiVitA-3   BANGLADESH                     0                    NA                -0.9075263   -0.9288833   -0.8861694
Birth       MAL-ED     PERU                           1                    NA                 0.1222222   -0.3522777    0.5967221
Birth       MAL-ED     PERU                           0                    NA                -0.0486528   -0.1831806    0.0858749
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.1080614   -0.9984179    0.7822951
Birth       MAL-ED     SOUTH AFRICA                   0                    NA                -0.1756784   -0.4291409    0.0777841
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7613651    0.5081080    1.0146222
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.8000586    0.5040865    1.0960307
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.5930221   -0.6129979   -0.5730462
6 months    JiVitA-3   BANGLADESH                     0                    NA                -0.7790980   -0.8034336   -0.7547624
6 months    LCNI-5     MALAWI                         1                    NA                 0.4324403    0.3551656    0.5097150
6 months    LCNI-5     MALAWI                         0                    NA                 0.4780144    0.2906966    0.6653323
6 months    MAL-ED     PERU                           1                    NA                 0.7748337    0.3291059    1.2205615
6 months    MAL-ED     PERU                           0                    NA                 1.0489960    0.9187823    1.1792097
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.4736811    0.1419910    0.8053712
6 months    MAL-ED     SOUTH AFRICA                   0                    NA                 0.5452186    0.3728001    0.7176371
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6028147    0.4425974    0.7630320
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3951175    0.1624498    0.6277852
24 months   JiVitA-3   BANGLADESH                     1                    NA                -1.2970105   -1.3208135   -1.2732075
24 months   JiVitA-3   BANGLADESH                     0                    NA                -1.6090172   -1.6734401   -1.5445943
24 months   LCNI-5     MALAWI                         1                    NA                -0.0125575   -0.1024146    0.0772996
24 months   LCNI-5     MALAWI                         0                    NA                -0.2375093   -0.4373931   -0.0376255
24 months   MAL-ED     PERU                           1                    NA                 0.0150000   -0.4862499    0.5162499
24 months   MAL-ED     PERU                           0                    NA                 0.1005332   -0.0288801    0.2299464
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.1861338   -0.1036298    0.4758973
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                 0.4299269    0.2965131    0.5633407
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0401450   -0.1149361    0.1952260
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0091342   -0.2482313    0.2299628


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
Birth       JiVitA-3   BANGLADESH                     0                    1                 -0.1299811   -0.1591381   -0.1008242
Birth       MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     PERU                           0                    1                 -0.1708751   -0.6640768    0.3223266
Birth       MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     SOUTH AFRICA                   0                    1                 -0.0676170   -0.9931904    0.8579563
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0386935   -0.3560408    0.4334279
6 months    JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3   BANGLADESH                     0                    1                 -0.1860759   -0.2167075   -0.1554443
6 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5     MALAWI                         0                    1                  0.0455741   -0.1570872    0.2482355
6 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     PERU                           0                    1                  0.2741623   -0.1906815    0.7390061
6 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0715375   -0.3030741    0.4461492
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2076971   -0.4911143    0.0757200
24 months   JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3   BANGLADESH                     0                    1                 -0.3120066   -0.3804917   -0.2435216
24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5     MALAWI                         0                    1                 -0.2249518   -0.4434130   -0.0064905
24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     PERU                           0                    1                  0.0855332   -0.4321533    0.6032196
24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.2437931   -0.0756639    0.5632501
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0492792   -0.3338008    0.2352424


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.0002355   -0.0009421   0.0004712
Birth       MAL-ED     PERU                           1                    NA                -0.1632618   -0.6345144   0.3079907
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.0648860   -0.8743151   0.7445431
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0005268   -0.1360047   0.1370583
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.0002281   -0.0010108   0.0005545
6 months    LCNI-5     MALAWI                         1                    NA                 0.0093244   -0.0260967   0.0447456
6 months    MAL-ED     PERU                           1                    NA                 0.2738728   -0.1725188   0.7202645
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0693364   -0.2498826   0.3885553
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0670152   -0.1568843   0.0228538
24 months   JiVitA-3   BANGLADESH                     1                    NA                -0.0002981   -0.0020691   0.0014730
24 months   LCNI-5     MALAWI                         1                    NA                -0.0352292   -0.0719478   0.0014893
24 months   MAL-ED     PERU                           1                    NA                 0.0824309   -0.4164844   0.5813463
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.2193058   -0.0573934   0.4960049
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0116704   -0.0774963   0.1008371

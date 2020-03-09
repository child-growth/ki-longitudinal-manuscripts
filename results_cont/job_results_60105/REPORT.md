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

agecat      studyid         country                        safeh20    n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       JiVitA-3        BANGLADESH                     1           17963   17992
Birth       JiVitA-3        BANGLADESH                     0              29   17992
Birth       JiVitA-4        BANGLADESH                     1            2394    2394
Birth       JiVitA-4        BANGLADESH                     0               0    2394
Birth       MAL-ED          BANGLADESH                     1               0     201
Birth       MAL-ED          BANGLADESH                     0             201     201
Birth       MAL-ED          BRAZIL                         1               0      38
Birth       MAL-ED          BRAZIL                         0              38      38
Birth       MAL-ED          INDIA                          1               0      39
Birth       MAL-ED          INDIA                          0              39      39
Birth       MAL-ED          NEPAL                          1               1      25
Birth       MAL-ED          NEPAL                          0              24      25
Birth       MAL-ED          PERU                           1               9     202
Birth       MAL-ED          PERU                           0             193     202
Birth       MAL-ED          SOUTH AFRICA                   1              13      95
Birth       MAL-ED          SOUTH AFRICA                   0              82      95
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              74     111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              37     111
Birth       NIH-Birth       BANGLADESH                     1             573     575
Birth       NIH-Birth       BANGLADESH                     0               2     575
Birth       NIH-Crypto      BANGLADESH                     1             707     707
Birth       NIH-Crypto      BANGLADESH                     0               0     707
Birth       PROVIDE         BANGLADESH                     1              45      45
Birth       PROVIDE         BANGLADESH                     0               0      45
6 months    CONTENT         PERU                           1              54      57
6 months    CONTENT         PERU                           0               3      57
6 months    JiVitA-3        BANGLADESH                     1           16756   16776
6 months    JiVitA-3        BANGLADESH                     0              20   16776
6 months    JiVitA-4        BANGLADESH                     1            4826    4827
6 months    JiVitA-4        BANGLADESH                     0               1    4827
6 months    LCNI-5          MALAWI                         1             672     816
6 months    LCNI-5          MALAWI                         0             144     816
6 months    MAL-ED          BANGLADESH                     1               0     240
6 months    MAL-ED          BANGLADESH                     0             240     240
6 months    MAL-ED          BRAZIL                         1               0     142
6 months    MAL-ED          BRAZIL                         0             142     142
6 months    MAL-ED          INDIA                          1               0     235
6 months    MAL-ED          INDIA                          0             235     235
6 months    MAL-ED          NEPAL                          1               1     233
6 months    MAL-ED          NEPAL                          0             232     233
6 months    MAL-ED          PERU                           1              11     259
6 months    MAL-ED          PERU                           0             248     259
6 months    MAL-ED          SOUTH AFRICA                   1              37     248
6 months    MAL-ED          SOUTH AFRICA                   0             211     248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    NIH-Birth       BANGLADESH                     1             535     537
6 months    NIH-Birth       BANGLADESH                     0               2     537
6 months    NIH-Crypto      BANGLADESH                     1             715     715
6 months    NIH-Crypto      BANGLADESH                     0               0     715
6 months    PROVIDE         BANGLADESH                     1              11      11
6 months    PROVIDE         BANGLADESH                     0               0      11
6 months    SAS-FoodSuppl   INDIA                          1             380     380
6 months    SAS-FoodSuppl   INDIA                          0               0     380
24 months   CONTENT         PERU                           1              45      48
24 months   CONTENT         PERU                           0               3      48
24 months   JiVitA-3        BANGLADESH                     1            8583    8594
24 months   JiVitA-3        BANGLADESH                     0              11    8594
24 months   JiVitA-4        BANGLADESH                     1            4729    4730
24 months   JiVitA-4        BANGLADESH                     0               1    4730
24 months   LCNI-5          MALAWI                         1             464     558
24 months   LCNI-5          MALAWI                         0              94     558
24 months   MAL-ED          BANGLADESH                     1               0     212
24 months   MAL-ED          BANGLADESH                     0             212     212
24 months   MAL-ED          BRAZIL                         1               0     113
24 months   MAL-ED          BRAZIL                         0             113     113
24 months   MAL-ED          INDIA                          1               0     227
24 months   MAL-ED          INDIA                          0             227     227
24 months   MAL-ED          NEPAL                          1               1     226
24 months   MAL-ED          NEPAL                          0             225     226
24 months   MAL-ED          PERU                           1               7     193
24 months   MAL-ED          PERU                           0             186     193
24 months   MAL-ED          SOUTH AFRICA                   1              34     237
24 months   MAL-ED          SOUTH AFRICA                   0             203     237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   NIH-Birth       BANGLADESH                     1             426     428
24 months   NIH-Birth       BANGLADESH                     0               2     428
24 months   NIH-Crypto      BANGLADESH                     1             514     514
24 months   NIH-Crypto      BANGLADESH                     0               0     514
24 months   PROVIDE         BANGLADESH                     1               9       9
24 months   PROVIDE         BANGLADESH                     0               0       9


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
![](/tmp/ff35fad2-6bd6-47b4-817e-f38a81f986c3/27af97a1-f311-4c4a-b2de-ac208b2496ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ff35fad2-6bd6-47b4-817e-f38a81f986c3/27af97a1-f311-4c4a-b2de-ac208b2496ba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ff35fad2-6bd6-47b4-817e-f38a81f986c3/27af97a1-f311-4c4a-b2de-ac208b2496ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.7775443   -0.7970225   -0.7580661
Birth       JiVitA-3   BANGLADESH                     0                    NA                -0.9169666   -0.9375656   -0.8963677
Birth       MAL-ED     PERU                           1                    NA                 0.1222222   -0.3522777    0.5967221
Birth       MAL-ED     PERU                           0                    NA                -0.0486528   -0.1831806    0.0858749
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.4395865   -1.3411952    0.4620222
Birth       MAL-ED     SOUTH AFRICA                   0                    NA                -0.1811445   -0.4349507    0.0726617
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7493411    0.4926367    1.0060454
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7844471    0.5118470    1.0570471
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.5930139   -0.6129873   -0.5730405
6 months    JiVitA-3   BANGLADESH                     0                    NA                -0.7904738   -0.8150943   -0.7658533
6 months    LCNI-5     MALAWI                         1                    NA                 0.4323510    0.3551248    0.5095773
6 months    LCNI-5     MALAWI                         0                    NA                 0.4680277    0.2816246    0.6544308
6 months    MAL-ED     PERU                           1                    NA                 0.8458040    0.3941388    1.2974693
6 months    MAL-ED     PERU                           0                    NA                 1.0486048    0.9185368    1.1786729
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.5721919    0.2349109    0.9094730
6 months    MAL-ED     SOUTH AFRICA                   0                    NA                 0.5507053    0.3787971    0.7226135
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6075494    0.4478174    0.7672813
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3862016    0.1483546    0.6240486
24 months   JiVitA-3   BANGLADESH                     1                    NA                -1.2970076   -1.3208107   -1.2732046
24 months   JiVitA-3   BANGLADESH                     0                    NA                -1.5765468   -1.6407463   -1.5123474
24 months   LCNI-5     MALAWI                         1                    NA                -0.0135009   -0.1033171    0.0763153
24 months   LCNI-5     MALAWI                         0                    NA                -0.2573391   -0.4664248   -0.0482534
24 months   MAL-ED     PERU                           1                    NA                 0.0150000   -0.4862499    0.5162499
24 months   MAL-ED     PERU                           0                    NA                 0.1005332   -0.0288801    0.2299464
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.2280561   -0.0527598    0.5088720
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                 0.4316842    0.2983702    0.5649982
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0438961   -0.1116245    0.1994166
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0411928   -0.1980273    0.2804130


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
Birth       JiVitA-3   BANGLADESH                     0                    1                 -0.1394224   -0.1678180   -0.1110268
Birth       MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     PERU                           0                    1                 -0.1708751   -0.6640768    0.3223266
Birth       MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     SOUTH AFRICA                   0                    1                  0.2584420   -0.6791833    1.1960674
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0351060   -0.3398916    0.4101036
6 months    JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3   BANGLADESH                     0                    1                 -0.1974599   -0.2284100   -0.1665098
6 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5     MALAWI                         0                    1                  0.0356767   -0.1662648    0.2376181
6 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     PERU                           0                    1                  0.2028008   -0.2670578    0.6726594
6 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     SOUTH AFRICA                   0                    1                 -0.0214867   -0.3996159    0.3566426
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2213478   -0.5080039    0.0653083
24 months   JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3   BANGLADESH                     0                    1                 -0.2795392   -0.3475974   -0.2114810
24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5     MALAWI                         0                    1                 -0.2438382   -0.4699391   -0.0177374
24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     PERU                           0                    1                  0.0855332   -0.4321533    0.6032196
24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.2036281   -0.1079319    0.5151881
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0027032   -0.2884703    0.2830639


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.0002364   -0.0009454   0.0004726
Birth       MAL-ED     PERU                           1                    NA                -0.1632618   -0.6345144   0.3079907
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                 0.2666391   -0.5583073   1.0915855
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0125508   -0.1231601   0.1482617
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.0002363   -0.0010178   0.0005452
6 months    LCNI-5     MALAWI                         1                    NA                 0.0094137   -0.0260625   0.0448898
6 months    MAL-ED     PERU                           1                    NA                 0.2029025   -0.2488088   0.6546138
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                -0.0291745   -0.3527649   0.2944159
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0717499   -0.1609611   0.0174612
24 months   JiVitA-3   BANGLADESH                     1                    NA                -0.0003009   -0.0020739   0.0014720
24 months   LCNI-5     MALAWI                         1                    NA                -0.0342859   -0.0706825   0.0021108
24 months   MAL-ED     PERU                           1                    NA                 0.0824309   -0.4164844   0.5813463
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.1773834   -0.0913049   0.4460718
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0079193   -0.0794089   0.0952474

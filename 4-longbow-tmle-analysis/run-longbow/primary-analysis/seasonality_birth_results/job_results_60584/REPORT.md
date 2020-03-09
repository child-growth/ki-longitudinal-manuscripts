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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country      brthmon    n_cell     n
---------------  -----------  --------  -------  ----
CMC-V-BCS-2002   India        1              10    89
CMC-V-BCS-2002   India        2               1    89
CMC-V-BCS-2002   India        3               7    89
CMC-V-BCS-2002   India        4               9    89
CMC-V-BCS-2002   India        5              10    89
CMC-V-BCS-2002   India        6               9    89
CMC-V-BCS-2002   India        7               7    89
CMC-V-BCS-2002   India        8               4    89
CMC-V-BCS-2002   India        9              10    89
CMC-V-BCS-2002   India        10              8    89
CMC-V-BCS-2002   India        11             11    89
CMC-V-BCS-2002   India        12              3    89
CMIN             Bangladesh   1               2    19
CMIN             Bangladesh   2               4    19
CMIN             Bangladesh   3               0    19
CMIN             Bangladesh   4               2    19
CMIN             Bangladesh   5               1    19
CMIN             Bangladesh   6               0    19
CMIN             Bangladesh   7               4    19
CMIN             Bangladesh   8               2    19
CMIN             Bangladesh   9               1    19
CMIN             Bangladesh   10              1    19
CMIN             Bangladesh   11              2    19
CMIN             Bangladesh   12              0    19
EE               Pakistan     1              40   178
EE               Pakistan     2              36   178
EE               Pakistan     3              16   178
EE               Pakistan     4               7   178
EE               Pakistan     5               0   178
EE               Pakistan     6               0   178
EE               Pakistan     7               0   178
EE               Pakistan     8               0   178
EE               Pakistan     9               0   178
EE               Pakistan     10              0   178
EE               Pakistan     11             41   178
EE               Pakistan     12             38   178
GMS-Nepal        Nepal        1               0   641
GMS-Nepal        Nepal        2               0   641
GMS-Nepal        Nepal        3               0   641
GMS-Nepal        Nepal        4               1   641
GMS-Nepal        Nepal        5               0   641
GMS-Nepal        Nepal        6             162   641
GMS-Nepal        Nepal        7             242   641
GMS-Nepal        Nepal        8             236   641
GMS-Nepal        Nepal        9               0   641
GMS-Nepal        Nepal        10              0   641
GMS-Nepal        Nepal        11              0   641
GMS-Nepal        Nepal        12              0   641
IRC              India        1              31   343
IRC              India        2              23   343
IRC              India        3              24   343
IRC              India        4              19   343
IRC              India        5              15   343
IRC              India        6              26   343
IRC              India        7              31   343
IRC              India        8              36   343
IRC              India        9              24   343
IRC              India        10             33   343
IRC              India        11             38   343
IRC              India        12             43   343
MAL-ED           Bangladesh   1              19   215
MAL-ED           Bangladesh   2              21   215
MAL-ED           Bangladesh   3              21   215
MAL-ED           Bangladesh   4              19   215
MAL-ED           Bangladesh   5              17   215
MAL-ED           Bangladesh   6               7   215
MAL-ED           Bangladesh   7              13   215
MAL-ED           Bangladesh   8              23   215
MAL-ED           Bangladesh   9              16   215
MAL-ED           Bangladesh   10             20   215
MAL-ED           Bangladesh   11             15   215
MAL-ED           Bangladesh   12             24   215
MAL-ED           India        1               2    45
MAL-ED           India        2               6    45
MAL-ED           India        3               3    45
MAL-ED           India        4               5    45
MAL-ED           India        5               4    45
MAL-ED           India        6               2    45
MAL-ED           India        7               3    45
MAL-ED           India        8               8    45
MAL-ED           India        9               4    45
MAL-ED           India        10              5    45
MAL-ED           India        11              3    45
MAL-ED           India        12              0    45
MAL-ED           Nepal        1               2    26
MAL-ED           Nepal        2               2    26
MAL-ED           Nepal        3               1    26
MAL-ED           Nepal        4               2    26
MAL-ED           Nepal        5               3    26
MAL-ED           Nepal        6               2    26
MAL-ED           Nepal        7               2    26
MAL-ED           Nepal        8               1    26
MAL-ED           Nepal        9               2    26
MAL-ED           Nepal        10              4    26
MAL-ED           Nepal        11              4    26
MAL-ED           Nepal        12              1    26
PROVIDE          Bangladesh   1              30   532
PROVIDE          Bangladesh   2              24   532
PROVIDE          Bangladesh   3              45   532
PROVIDE          Bangladesh   4              28   532
PROVIDE          Bangladesh   5              45   532
PROVIDE          Bangladesh   6              75   532
PROVIDE          Bangladesh   7              75   532
PROVIDE          Bangladesh   8              53   532
PROVIDE          Bangladesh   9              55   532
PROVIDE          Bangladesh   10             54   532
PROVIDE          Bangladesh   11             27   532
PROVIDE          Bangladesh   12             21   532
ResPak           Pakistan     1               2    38
ResPak           Pakistan     2               1    38
ResPak           Pakistan     3               1    38
ResPak           Pakistan     4               6    38
ResPak           Pakistan     5               7    38
ResPak           Pakistan     6               7    38
ResPak           Pakistan     7               8    38
ResPak           Pakistan     8               4    38
ResPak           Pakistan     9               1    38
ResPak           Pakistan     10              1    38
ResPak           Pakistan     11              0    38
ResPak           Pakistan     12              0    38


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: India
* studyid: CMIN, country: Bangladesh
* studyid: EE, country: Pakistan
* studyid: GMS-Nepal, country: Nepal
* studyid: IRC, country: India
* studyid: MAL-ED, country: Bangladesh
* studyid: MAL-ED, country: India
* studyid: MAL-ED, country: Nepal
* studyid: PROVIDE, country: Bangladesh
* studyid: ResPak, country: Pakistan

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CMC-V-BCS-2002, country: India
* studyid: CMIN, country: Bangladesh
* studyid: EE, country: Pakistan
* studyid: GMS-Nepal, country: Nepal
* studyid: MAL-ED, country: India
* studyid: MAL-ED, country: Nepal
* studyid: ResPak, country: Pakistan

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
![](/tmp/b9155df5-9325-4e48-9a88-da866b676d12/3dc64891-0b84-4149-a3f8-d3742c425825/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b9155df5-9325-4e48-9a88-da866b676d12/3dc64891-0b84-4149-a3f8-d3742c425825/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b9155df5-9325-4e48-9a88-da866b676d12/3dc64891-0b84-4149-a3f8-d3742c425825/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  -----------  -------------------  ---------------  -----------  -----------  -----------
IRC       India        1                    NA                -0.2064516   -0.8241587    0.4112554
IRC       India        2                    NA                -0.5304348   -1.0966348    0.0357652
IRC       India        3                    NA                -0.8991667   -1.7172346   -0.0810988
IRC       India        4                    NA                -1.5168421   -2.1488141   -0.8848701
IRC       India        5                    NA                -1.7686667   -2.5910096   -0.9463238
IRC       India        6                    NA                -1.3615385   -2.0604069   -0.6626700
IRC       India        7                    NA                -1.0848387   -1.6762039   -0.4934735
IRC       India        8                    NA                -1.3869444   -1.9532683   -0.8206205
IRC       India        9                    NA                -1.0200000   -1.8383304   -0.2016696
IRC       India        10                   NA                -0.9990909   -1.5750645   -0.4231173
IRC       India        11                   NA                -0.8418421   -1.3887010   -0.2949832
IRC       India        12                   NA                -0.9930233   -1.4781855   -0.5078611
MAL-ED    Bangladesh   1                    NA                -0.8447368   -1.2679122   -0.4215615
MAL-ED    Bangladesh   2                    NA                -0.9766667   -1.4645399   -0.4887935
MAL-ED    Bangladesh   3                    NA                -1.0814286   -1.5581991   -0.6046581
MAL-ED    Bangladesh   4                    NA                -1.2013158   -1.7040536   -0.6985780
MAL-ED    Bangladesh   5                    NA                -0.5841176   -1.1364997   -0.0317356
MAL-ED    Bangladesh   6                    NA                -0.7257143   -1.1540291   -0.2973994
MAL-ED    Bangladesh   7                    NA                -1.1130769   -1.5329650   -0.6931889
MAL-ED    Bangladesh   8                    NA                -0.6582609   -1.1407755   -0.1757462
MAL-ED    Bangladesh   9                    NA                -1.4718750   -1.9537166   -0.9900334
MAL-ED    Bangladesh   10                   NA                -0.9840000   -1.4629655   -0.5050345
MAL-ED    Bangladesh   11                   NA                -0.9360000   -1.3986933   -0.4733067
MAL-ED    Bangladesh   12                   NA                -0.7714583   -1.2225093   -0.3204073
PROVIDE   Bangladesh   1                    NA                -0.7130000   -0.9699481   -0.4560519
PROVIDE   Bangladesh   2                    NA                -1.2404167   -1.6655483   -0.8152851
PROVIDE   Bangladesh   3                    NA                -1.1888889   -1.4299534   -0.9478243
PROVIDE   Bangladesh   4                    NA                -1.1375000   -1.3642553   -0.9107447
PROVIDE   Bangladesh   5                    NA                -1.6000000   -1.8372875   -1.3627125
PROVIDE   Bangladesh   6                    NA                -1.3874667   -1.5677779   -1.2071555
PROVIDE   Bangladesh   7                    NA                -1.5102667   -1.7175159   -1.3030175
PROVIDE   Bangladesh   8                    NA                -1.4407547   -1.7015896   -1.1799199
PROVIDE   Bangladesh   9                    NA                -1.2358182   -1.4847475   -0.9868889
PROVIDE   Bangladesh   10                   NA                -1.2955556   -1.5507933   -1.0403178
PROVIDE   Bangladesh   11                   NA                -1.0155556   -1.3070053   -0.7241058
PROVIDE   Bangladesh   12                   NA                -1.1061905   -1.5519148   -0.6604661


### Parameter: E(Y)


studyid   country      intervention_level   baseline_level      estimate    ci_lower     ci_upper
--------  -----------  -------------------  ---------------  -----------  ----------  -----------
IRC       India        NA                   NA                -1.0105831   -1.197302   -0.8238643
MAL-ED    Bangladesh   NA                   NA                -0.9418605   -1.086983   -0.7967375
PROVIDE   Bangladesh   NA                   NA                -1.2984586   -1.375276   -1.2216415


### Parameter: ATE


studyid   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  -----------  -------------------  ---------------  -----------  -----------  -----------
IRC       India        1                    1                  0.0000000    0.0000000    0.0000000
IRC       India        2                    1                 -0.3239832   -1.1619238    0.5139574
IRC       India        3                    1                 -0.6927151   -1.7177990    0.3323689
IRC       India        4                    1                 -1.3103905   -2.1941046   -0.4266764
IRC       India        5                    1                 -1.5622151   -2.5907139   -0.5337162
IRC       India        6                    1                 -1.1550868   -2.0878136   -0.2223601
IRC       India        7                    1                 -0.8783871   -1.7335332   -0.0232410
IRC       India        8                    1                 -1.1804928   -2.0185171   -0.3424685
IRC       India        9                    1                 -0.8135484   -1.8388418    0.2117450
IRC       India        10                   1                 -0.7926393   -1.6372147    0.0519361
IRC       India        11                   1                 -0.6353905   -1.4603854    0.1896045
IRC       India        12                   1                 -0.7865716   -1.5720297   -0.0011136
MAL-ED    Bangladesh   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED    Bangladesh   2                    1                 -0.1319298   -0.7777608    0.5139012
MAL-ED    Bangladesh   3                    1                 -0.2366917   -0.8741770    0.4007936
MAL-ED    Bangladesh   4                    1                 -0.3565789   -1.0137111    0.3005532
MAL-ED    Bangladesh   5                    1                  0.2606192   -0.4352280    0.9564664
MAL-ED    Bangladesh   6                    1                  0.1190226   -0.4830829    0.7211280
MAL-ED    Bangladesh   7                    1                 -0.2683401   -0.8644805    0.3278003
MAL-ED    Bangladesh   8                    1                  0.1864760   -0.4553167    0.8282686
MAL-ED    Bangladesh   9                    1                 -0.6271382   -1.2684249    0.0141486
MAL-ED    Bangladesh   10                   1                 -0.1392632   -0.7783917    0.4998654
MAL-ED    Bangladesh   11                   1                 -0.0912632   -0.7182898    0.5357635
MAL-ED    Bangladesh   12                   1                  0.0732785   -0.5452070    0.6917641
PROVIDE   Bangladesh   1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE   Bangladesh   2                    1                 -0.5274167   -1.0241653   -0.0306680
PROVIDE   Bangladesh   3                    1                 -0.4758889   -0.8282161   -0.1235617
PROVIDE   Bangladesh   4                    1                 -0.4245000   -0.7671956   -0.0818044
PROVIDE   Bangladesh   5                    1                 -0.8870000   -1.2367537   -0.5372463
PROVIDE   Bangladesh   6                    1                 -0.6744667   -0.9883686   -0.3605647
PROVIDE   Bangladesh   7                    1                 -0.7972667   -1.1273796   -0.4671537
PROVIDE   Bangladesh   8                    1                 -0.7277547   -1.0938929   -0.3616166
PROVIDE   Bangladesh   9                    1                 -0.5228182   -0.8805724   -0.1650639
PROVIDE   Bangladesh   10                   1                 -0.5825556   -0.9447276   -0.2203835
PROVIDE   Bangladesh   11                   1                 -0.3025556   -0.6910981    0.0859870
PROVIDE   Bangladesh   12                   1                 -0.3931905   -0.9076732    0.1212923


### Parameter: PAR


studyid   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  -----------  -------------------  ---------------  -----------  -----------  -----------
IRC       India        1                    NA                -0.8041315   -1.3935851   -0.2146779
MAL-ED    Bangladesh   1                    NA                -0.0971236   -0.5075955    0.3133483
PROVIDE   Bangladesh   1                    NA                -0.5854586   -0.8393820   -0.3315353

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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
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

agecat      studyid         country                        predfeed6    wasted   n_cell       n
----------  --------------  -----------------------------  ----------  -------  -------  ------
Birth       EE              PAKISTAN                       1                 0       20      28
Birth       EE              PAKISTAN                       1                 1        4      28
Birth       EE              PAKISTAN                       0                 0        3      28
Birth       EE              PAKISTAN                       0                 1        1      28
Birth       GMS-Nepal       NEPAL                          1                 0      309     522
Birth       GMS-Nepal       NEPAL                          1                 1       81     522
Birth       GMS-Nepal       NEPAL                          0                 0      111     522
Birth       GMS-Nepal       NEPAL                          0                 1       21     522
Birth       JiVitA-3        BANGLADESH                     1                 0     7437   10744
Birth       JiVitA-3        BANGLADESH                     1                 1      955   10744
Birth       JiVitA-3        BANGLADESH                     0                 0     2112   10744
Birth       JiVitA-3        BANGLADESH                     0                 1      240   10744
Birth       JiVitA-4        BANGLADESH                     1                 0     1626    2224
Birth       JiVitA-4        BANGLADESH                     1                 1      176    2224
Birth       JiVitA-4        BANGLADESH                     0                 0      375    2224
Birth       JiVitA-4        BANGLADESH                     0                 1       47    2224
Birth       MAL-ED          BANGLADESH                     1                 0       58     194
Birth       MAL-ED          BANGLADESH                     1                 1       10     194
Birth       MAL-ED          BANGLADESH                     0                 0      102     194
Birth       MAL-ED          BANGLADESH                     0                 1       24     194
Birth       MAL-ED          BRAZIL                         1                 0        5      57
Birth       MAL-ED          BRAZIL                         1                 1        0      57
Birth       MAL-ED          BRAZIL                         0                 0       50      57
Birth       MAL-ED          BRAZIL                         0                 1        2      57
Birth       MAL-ED          INDIA                          1                 0        4      37
Birth       MAL-ED          INDIA                          1                 1        0      37
Birth       MAL-ED          INDIA                          0                 0       28      37
Birth       MAL-ED          INDIA                          0                 1        5      37
Birth       MAL-ED          NEPAL                          1                 0        3      23
Birth       MAL-ED          NEPAL                          1                 1        0      23
Birth       MAL-ED          NEPAL                          0                 0       19      23
Birth       MAL-ED          NEPAL                          0                 1        1      23
Birth       MAL-ED          PERU                           1                 0       71     208
Birth       MAL-ED          PERU                           1                 1        1     208
Birth       MAL-ED          PERU                           0                 0      132     208
Birth       MAL-ED          PERU                           0                 1        4     208
Birth       MAL-ED          SOUTH AFRICA                   1                 0        1      90
Birth       MAL-ED          SOUTH AFRICA                   1                 1        0      90
Birth       MAL-ED          SOUTH AFRICA                   0                 0       80      90
Birth       MAL-ED          SOUTH AFRICA                   0                 1        9      90
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      104     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     105
6 months    EE              PAKISTAN                       1                 0       39      48
6 months    EE              PAKISTAN                       1                 1        4      48
6 months    EE              PAKISTAN                       0                 0        5      48
6 months    EE              PAKISTAN                       0                 1        0      48
6 months    GMS-Nepal       NEPAL                          1                 0      370     547
6 months    GMS-Nepal       NEPAL                          1                 1       36     547
6 months    GMS-Nepal       NEPAL                          0                 0      127     547
6 months    GMS-Nepal       NEPAL                          0                 1       14     547
6 months    JiVitA-3        BANGLADESH                     1                 0     6962    9882
6 months    JiVitA-3        BANGLADESH                     1                 1      663    9882
6 months    JiVitA-3        BANGLADESH                     0                 0     2066    9882
6 months    JiVitA-3        BANGLADESH                     0                 1      191    9882
6 months    JiVitA-4        BANGLADESH                     1                 0     3164    4275
6 months    JiVitA-4        BANGLADESH                     1                 1      163    4275
6 months    JiVitA-4        BANGLADESH                     0                 0      870    4275
6 months    JiVitA-4        BANGLADESH                     0                 1       78    4275
6 months    LCNI-5          MALAWI                         1                 0       47     272
6 months    LCNI-5          MALAWI                         1                 1        0     272
6 months    LCNI-5          MALAWI                         0                 0      221     272
6 months    LCNI-5          MALAWI                         0                 1        4     272
6 months    MAL-ED          BANGLADESH                     1                 0       80     231
6 months    MAL-ED          BANGLADESH                     1                 1        4     231
6 months    MAL-ED          BANGLADESH                     0                 0      143     231
6 months    MAL-ED          BANGLADESH                     0                 1        4     231
6 months    MAL-ED          BRAZIL                         1                 0       29     209
6 months    MAL-ED          BRAZIL                         1                 1        1     209
6 months    MAL-ED          BRAZIL                         0                 0      179     209
6 months    MAL-ED          BRAZIL                         0                 1        0     209
6 months    MAL-ED          INDIA                          1                 0       11     218
6 months    MAL-ED          INDIA                          1                 1        0     218
6 months    MAL-ED          INDIA                          0                 0      191     218
6 months    MAL-ED          INDIA                          0                 1       16     218
6 months    MAL-ED          NEPAL                          1                 0       12     225
6 months    MAL-ED          NEPAL                          1                 1        0     225
6 months    MAL-ED          NEPAL                          0                 0      209     225
6 months    MAL-ED          NEPAL                          0                 1        4     225
6 months    MAL-ED          PERU                           1                 0       92     271
6 months    MAL-ED          PERU                           1                 1        0     271
6 months    MAL-ED          PERU                           0                 0      179     271
6 months    MAL-ED          PERU                           0                 1        0     271
6 months    MAL-ED          SOUTH AFRICA                   1                 0        3     233
6 months    MAL-ED          SOUTH AFRICA                   1                 1        0     233
6 months    MAL-ED          SOUTH AFRICA                   0                 0      223     233
6 months    MAL-ED          SOUTH AFRICA                   0                 1        7     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     232
6 months    SAS-FoodSuppl   INDIA                          1                 0        0     168
6 months    SAS-FoodSuppl   INDIA                          1                 1        0     168
6 months    SAS-FoodSuppl   INDIA                          0                 0      127     168
6 months    SAS-FoodSuppl   INDIA                          0                 1       41     168
24 months   EE              PAKISTAN                       1                 0       17      23
24 months   EE              PAKISTAN                       1                 1        3      23
24 months   EE              PAKISTAN                       0                 0        3      23
24 months   EE              PAKISTAN                       0                 1        0      23
24 months   GMS-Nepal       NEPAL                          1                 0      294     469
24 months   GMS-Nepal       NEPAL                          1                 1       61     469
24 months   GMS-Nepal       NEPAL                          0                 0       85     469
24 months   GMS-Nepal       NEPAL                          0                 1       29     469
24 months   JiVitA-3        BANGLADESH                     1                 0     3046    5067
24 months   JiVitA-3        BANGLADESH                     1                 1      863    5067
24 months   JiVitA-3        BANGLADESH                     0                 0      909    5067
24 months   JiVitA-3        BANGLADESH                     0                 1      249    5067
24 months   JiVitA-4        BANGLADESH                     1                 0     2663    4184
24 months   JiVitA-4        BANGLADESH                     1                 1      615    4184
24 months   JiVitA-4        BANGLADESH                     0                 0      704    4184
24 months   JiVitA-4        BANGLADESH                     0                 1      202    4184
24 months   LCNI-5          MALAWI                         1                 0       33     184
24 months   LCNI-5          MALAWI                         1                 1        1     184
24 months   LCNI-5          MALAWI                         0                 0      147     184
24 months   LCNI-5          MALAWI                         0                 1        3     184
24 months   MAL-ED          BANGLADESH                     1                 0       69     205
24 months   MAL-ED          BANGLADESH                     1                 1        7     205
24 months   MAL-ED          BANGLADESH                     0                 0      116     205
24 months   MAL-ED          BANGLADESH                     0                 1       13     205
24 months   MAL-ED          BRAZIL                         1                 0       24     169
24 months   MAL-ED          BRAZIL                         1                 1        1     169
24 months   MAL-ED          BRAZIL                         0                 0      142     169
24 months   MAL-ED          BRAZIL                         0                 1        2     169
24 months   MAL-ED          INDIA                          1                 0       11     209
24 months   MAL-ED          INDIA                          1                 1        0     209
24 months   MAL-ED          INDIA                          0                 0      174     209
24 months   MAL-ED          INDIA                          0                 1       24     209
24 months   MAL-ED          NEPAL                          1                 0       12     219
24 months   MAL-ED          NEPAL                          1                 1        0     219
24 months   MAL-ED          NEPAL                          0                 0      202     219
24 months   MAL-ED          NEPAL                          0                 1        5     219
24 months   MAL-ED          PERU                           1                 0       66     201
24 months   MAL-ED          PERU                           1                 1        2     201
24 months   MAL-ED          PERU                           0                 0      131     201
24 months   MAL-ED          PERU                           0                 1        2     201
24 months   MAL-ED          SOUTH AFRICA                   1                 0        3     216
24 months   MAL-ED          SOUTH AFRICA                   1                 1        0     216
24 months   MAL-ED          SOUTH AFRICA                   0                 0      212     216
24 months   MAL-ED          SOUTH AFRICA                   0                 1        1     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      197     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     202


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/46099224-b121-4e17-a973-367d7d27135d/056e0b89-2693-4124-bb62-2196ac8e899d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/46099224-b121-4e17-a973-367d7d27135d/056e0b89-2693-4124-bb62-2196ac8e899d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/46099224-b121-4e17-a973-367d7d27135d/056e0b89-2693-4124-bb62-2196ac8e899d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/46099224-b121-4e17-a973-367d7d27135d/056e0b89-2693-4124-bb62-2196ac8e899d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.2068436   0.1665099   0.2471773
Birth       GMS-Nepal   NEPAL        0                    NA                0.1557443   0.0929286   0.2185601
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1110292   0.1046451   0.1174133
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1116494   0.1047689   0.1185300
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0978340   0.0808335   0.1148345
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1114411   0.0744391   0.1484431
Birth       MAL-ED      BANGLADESH   1                    NA                0.1420087   0.0556523   0.2283651
Birth       MAL-ED      BANGLADESH   0                    NA                0.1944939   0.1235582   0.2654296
6 months    GMS-Nepal   NEPAL        1                    NA                0.0902451   0.0625724   0.1179177
6 months    GMS-Nepal   NEPAL        0                    NA                0.1114716   0.0620086   0.1609346
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0870507   0.0797814   0.0943200
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0844354   0.0721712   0.0966996
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0493202   0.0392005   0.0594399
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0809280   0.0625613   0.0992948
24 months   GMS-Nepal   NEPAL        1                    NA                0.1680783   0.1288040   0.2073525
24 months   GMS-Nepal   NEPAL        0                    NA                0.2341730   0.1538833   0.3144628
24 months   JiVitA-3    BANGLADESH   1                    NA                0.2202850   0.2046637   0.2359062
24 months   JiVitA-3    BANGLADESH   0                    NA                0.2162435   0.1876193   0.2448676
24 months   JiVitA-4    BANGLADESH   1                    NA                0.1903788   0.1750308   0.2057268
24 months   JiVitA-4    BANGLADESH   0                    NA                0.2109695   0.1768477   0.2450914
24 months   MAL-ED      BANGLADESH   1                    NA                0.0921053   0.0269330   0.1572776
24 months   MAL-ED      BANGLADESH   0                    NA                0.1007752   0.0487006   0.1528498


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1752577   0.1216204   0.2288951
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589
24 months   MAL-ED      BANGLADESH   NA                   NA                0.0975610   0.0568436   0.1382784


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.7529571   0.4810164   1.178638
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 1.0055862   0.9729724   1.039293
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.1390838   0.7853786   1.652085
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 1.3695918   0.6733283   2.785836
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.2352103   0.7192879   2.121187
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.9699573   0.8189222   1.148848
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.6408698   1.2078326   2.229161
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.3932381   0.9197947   2.110376
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9816534   0.8448347   1.140629
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1081568   0.9286887   1.322307
24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      BANGLADESH   0                    1                 1.0941307   0.4555621   2.627791


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0114413   -0.0303705   0.0074879
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0001957   -0.0006197   0.0010111
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0024358   -0.0052570   0.0101285
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0332491   -0.0402323   0.1067305
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0011626   -0.0136249   0.0159501
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0006309   -0.0039195   0.0026576
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0070541    0.0023856   0.0117226
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0238194    0.0016978   0.0459410
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0008257   -0.0082603   0.0066088
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0048889   -0.0029349   0.0127128
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0054557   -0.0470421   0.0579535


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0585525   -0.1596368   0.0337204
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0017593   -0.0056009   0.0090657
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0242922   -0.0553896   0.0979581
Birth       MAL-ED      BANGLADESH   1                    NA                 0.1897153   -0.3560602   0.5158317
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0127191   -0.1628996   0.1618162
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0073008   -0.0460395   0.0300034
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1251294    0.0350924   0.2067648
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1241255    0.0019511   0.2313441
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0037625   -0.0382174   0.0295489
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0250371   -0.0156530   0.0640969
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0559211   -0.6686320   0.4658588

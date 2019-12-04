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

agecat      studyid                    country                        predfeed6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       60     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       12     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      109     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        4      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       47      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        7      60
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        2      39
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       29      39
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        6      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3      24
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       20      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      24
Birth       ki0047075b-MAL-ED          PERU                           1                  0       66     213
Birth       ki0047075b-MAL-ED          PERU                           1                  1        7     213
Birth       ki0047075b-MAL-ED          PERU                           0                  0      121     213
Birth       ki0047075b-MAL-ED          PERU                           0                  1       19     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       82      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        8      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       92     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     113
Birth       ki1000109-EE               PAKISTAN                       1                  0       22      42
Birth       ki1000109-EE               PAKISTAN                       1                  1       16      42
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      42
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      42
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      351     563
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       68     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      118     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       26     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7012   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3454   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1967   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      990   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1479    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      624    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      354    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      175    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       73     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       11     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      117     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       30     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       29     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        7     218
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        4     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      170     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       37     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       11     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      202     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       11     225
6 months    ki0047075b-MAL-ED          PERU                           1                  0       77     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1       15     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      134     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1       45     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       42     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      173     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       58     232
6 months    ki1000109-EE               PAKISTAN                       1                  0       20      48
6 months    ki1000109-EE               PAKISTAN                       1                  1       23      48
6 months    ki1000109-EE               PAKISTAN                       0                  0        4      48
6 months    ki1000109-EE               PAKISTAN                       0                  1        1      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      326     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       80     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      103     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       38     547
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5767    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1877    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1676    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      581    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2542    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      786    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      657    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      287    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       38     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       38     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       71     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       58     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      137     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        7     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        3     209
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        8     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      117     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       81     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        9     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      161     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       46     219
24 months   ki0047075b-MAL-ED          PERU                           1                  0       42     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1       26     201
24 months   ki0047075b-MAL-ED          PERU                           0                  0       85     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       48     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      141     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       72     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       53     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      148     202
24 months   ki1000109-EE               PAKISTAN                       1                  0        5      23
24 months   ki1000109-EE               PAKISTAN                       1                  1       15      23
24 months   ki1000109-EE               PAKISTAN                       0                  0        2      23
24 months   ki1000109-EE               PAKISTAN                       0                  1        1      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      199     470
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      157     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       57     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       57     470
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2006    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1920    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      578    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      584    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1989    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1303    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      509    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      398    4199


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/9a858804-2033-4c3e-9091-37b55aa44fac/0b7f414c-605c-4876-ba27-3862644c4a7c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a858804-2033-4c3e-9091-37b55aa44fac/0b7f414c-605c-4876-ba27-3862644c4a7c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a858804-2033-4c3e-9091-37b55aa44fac/0b7f414c-605c-4876-ba27-3862644c4a7c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a858804-2033-4c3e-9091-37b55aa44fac/0b7f414c-605c-4876-ba27-3862644c4a7c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1671649   0.0785000   0.2558298
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1819437   0.1155445   0.2483429
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.0958904   0.0281876   0.1635932
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1357143   0.0788490   0.1925796
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1617696   0.1262947   0.1972445
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1822547   0.1195510   0.2449584
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3307119   0.3214618   0.3399619
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3323960   0.3226140   0.3421780
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3040569   0.2825122   0.3256016
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3010380   0.2768624   0.3252136
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1184836   0.0505989   0.1863683
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2079894   0.1418914   0.2740875
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1635957   0.0869903   0.2402010
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2512045   0.1873685   0.3150406
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1976118   0.1587818   0.2364419
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2680693   0.1940230   0.3421156
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3727495   0.2320815   0.5134175
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3556125   0.2928824   0.4183426
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2457469   0.2348007   0.2566931
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2572717   0.2392935   0.2752498
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2425544   0.2266603   0.2584486
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2810667   0.2491362   0.3129973
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4750497   0.3592321   0.5908672
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4629710   0.3790808   0.5468613
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.3957712   0.2809960   0.5105463
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3468687   0.2657327   0.4280048
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4419225   0.3903881   0.4934568
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4849471   0.3962058   0.5736884
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5369522   0.3604538   0.7134505
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4859522   0.4067666   0.5651377
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4874640   0.4687817   0.5061462
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.5084006   0.4765699   0.5402314
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4006884   0.3810273   0.4203495
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4185143   0.3810437   0.4559850


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1756098   0.1233973   0.2278222
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                0.1220657   0.0779993   0.1661322
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1669627   0.1361293   0.1977961
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3310735   0.3218922   0.3402548
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3035714   0.2824097   0.3247332
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1774892   0.1281103   0.2268680
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.2214022   0.1718784   0.2709260
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2157221   0.1812209   0.2502233
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2482578   0.2382387   0.2582768
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2511704   0.2362353   0.2661055
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4682927   0.3998183   0.5367670
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4553191   0.4102488   0.5003895
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4921384   0.4750959   0.5091808
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4050965   0.3867240   0.4234689


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0884086   0.5721498   2.070495
Birth       ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 1.4153061   0.6227136   3.216714
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1266310   0.7485953   1.695572
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0050926   0.9917934   1.018570
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9900712   0.9395996   1.043254
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.7554285   0.9133331   3.373938
6 months    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 1.5355206   0.9010059   2.616879
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3565448   0.9661074   1.904771
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9540254   0.6288687   1.447304
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0468971   0.9702506   1.129598
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1587780   1.0238495   1.311488
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9745740   0.7233389   1.313070
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 0.8764376   0.6070342   1.265403
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0973579   0.8856358   1.359695
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.9050194   0.6264512   1.307460
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0429502   0.9737172   1.117106
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0444882   0.9499071   1.148487


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0084448   -0.0641861   0.0810758
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0261753   -0.0319940   0.0843446
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051931   -0.0134381   0.0238242
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003617   -0.0006124   0.0013357
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0004855   -0.0036545   0.0026836
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0590056   -0.0003065   0.1183177
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0578065   -0.0085449   0.1241580
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0181103   -0.0035653   0.0397859
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0161318   -0.1441813   0.1119176
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0025109   -0.0019033   0.0069250
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0086160    0.0012419   0.0159900
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0067570   -0.0961876   0.0826737
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0276120   -0.1199093   0.0646853
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0133967   -0.0113539   0.0381472
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0501797   -0.2106642   0.1103048
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0046744   -0.0032458   0.0125946
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0044080   -0.0040650   0.0128810


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0480887   -0.4698879   0.3835345
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.2144362   -0.4318688   0.5690175
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0311032   -0.0871106   0.1364623
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0010924   -0.0018547   0.0040309
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0015991   -0.0120882   0.0087812
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.3324462   -0.0871770   0.5901053
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.2610928   -0.1038582   0.5053859
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0839519   -0.0217184   0.1786934
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0452357   -0.4736958   0.2586546
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0101140   -0.0078317   0.0277402
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0343033    0.0046580   0.0630657
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0144290   -0.2244224   0.1595497
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0750001   -0.3575504   0.1487423
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0294226   -0.0265859   0.0823754
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1030866   -0.4875536   0.1820127
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0094982   -0.0067249   0.0254598
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0108815   -0.0102263   0.0315482

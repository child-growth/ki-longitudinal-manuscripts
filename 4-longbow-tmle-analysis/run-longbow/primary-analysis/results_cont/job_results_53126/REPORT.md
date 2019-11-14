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

agecat      studyid                    country                        predfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               126     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                52      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      37
Birth       ki0047075b-MAL-ED          INDIA                          0                33      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                20      23
Birth       ki0047075b-MAL-ED          PERU                           1                72     208
Birth       ki0047075b-MAL-ED          PERU                           0               136     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                89      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10161   13000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2839   13000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1802    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               422    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225
6 months    ki0047075b-MAL-ED          PERU                           1                92     271
6 months    ki0047075b-MAL-ED          PERU                           0               179     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7605    9858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2253    9858
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3327    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               948    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219
24 months   ki0047075b-MAL-ED          PERU                           1                68     201
24 months   ki0047075b-MAL-ED          PERU                           0               133     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3881    5028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1147    5028
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3278    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               906    4184


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
![](/tmp/df03c2e7-6bc3-4b54-99bc-3b459742ef14/ce842d3d-2ad7-48c5-a470-c75893964605/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/df03c2e7-6bc3-4b54-99bc-3b459742ef14/ce842d3d-2ad7-48c5-a470-c75893964605/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/df03c2e7-6bc3-4b54-99bc-3b459742ef14/ce842d3d-2ad7-48c5-a470-c75893964605/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8439987   -1.0852265   -0.6027710
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0508757   -1.2579530   -0.8437984
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0011671   -0.2175427    0.2198769
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0812846   -0.2473847    0.0848155
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.1043724   -1.2166498   -0.9920951
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1315802   -1.2892781   -0.9738824
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7587763   -0.7823833   -0.7351694
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7439410   -0.7841238   -0.7037583
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.6759365   -0.7308168   -0.6210561
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7497179   -0.8858337   -0.6136022
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1476923   -0.3765950    0.0812104
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1052602   -0.2700244    0.0595041
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.2071853    0.7280773    1.6862933
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.8768799    0.7023426    1.0514172
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0846648   -0.6273576    0.4580279
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7411586   -0.8744566   -0.6078606
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0122983   -0.6033183    0.6279149
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                 0.1158157   -0.0234498    0.2550812
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.2111537    1.0108666    1.4114407
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 0.9884613    0.8348135    1.1421091
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5757489   -0.6781045   -0.4733933
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6683153   -0.8384775   -0.4981531
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3750810    0.0392112    0.7109509
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.3960421    0.2688229    0.5232613
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.6022534   -0.6294462   -0.5750606
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5870938   -0.6323457   -0.5418418
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3464775   -0.3913991   -0.3015560
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5556332   -0.6359645   -0.4753018
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9232715   -1.1132623   -0.7332808
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.7504325   -0.9123721   -0.5884930
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3818513   -0.2450403    1.0087429
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4667419    0.2449852    0.6884985
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.6024681   -1.1553264   -0.0496098
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9625004   -1.0873819   -0.8376188
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3004041   -1.0329739    0.4321657
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.3621634   -0.4824213   -0.2419055
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0370593   -0.1464411    0.2205597
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.1532359    0.0013082    0.3051635
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0859439   -1.1855779   -0.9863099
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3079612   -1.5135860   -1.1023363
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1358236   -0.4515197    0.1798725
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0694475   -0.2290436    0.0901486
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3235102   -1.3586211   -1.2883992
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.2696122   -1.3326417   -1.2065828
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2227972   -1.2629924   -1.1826021
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2339913   -1.3116866   -1.1562961


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9748454   -1.1280978   -0.8215930
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0587981   -0.1871869    0.0695908
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7557115   -0.7768180   -0.7346051
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1220707   -0.2547831    0.0106417
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7073471   -0.8375598   -0.5771344
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.1097852   -0.0259319    0.2455023
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0546617    0.9322137    1.1771098
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5998808   -0.6237974   -0.5759642
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8179024   -0.9399789   -0.6958260
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9449522   -1.0648865   -0.8250178
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.3690411   -0.4853679   -0.2527143
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3113405   -1.3420927   -1.2805883
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.2068770   -0.5335557    0.1198018
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0824517   -0.3579219    0.1930184
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0272078   -0.2094231    0.1550075
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0148353   -0.0299346    0.0596053
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0737814   -0.2167299    0.0691670
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0424322   -0.2399606    0.3248249
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.3303054   -0.8388294    0.1782186
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.6564938   -1.2156560   -0.0973315
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.1035174   -0.5280569    0.7350917
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2226924   -0.4754483    0.0300636
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0925664   -0.2910783    0.1059455
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0209610   -0.3386133    0.3805354
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0151596   -0.0364584    0.0667775
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2091556   -0.3004949   -0.1178163
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1728390   -0.0804808    0.4261588
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0848905   -0.5792868    0.7490678
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.3600323   -0.9274232    0.2073587
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0617593   -0.8019139    0.6783953
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.1161766   -0.1165091    0.3488623
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2220173   -0.4500440    0.0060095
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0663760   -0.2887702    0.4215223
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0538979   -0.0180184    0.1258142
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0111941   -0.0965805    0.0741923


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1308466   -0.3451953    0.0835021
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0599652   -0.2432865    0.1233561
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0020835   -0.0479675    0.0438005
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0030648   -0.0067040    0.0128336
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0145221   -0.0419066    0.0128623
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0256216   -0.1573024    0.2085456
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.2354628   -0.6761566    0.2052309
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.6226823   -1.1595319   -0.0858327
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0974869   -0.4985532    0.6935270
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1564919   -0.3238776    0.0108938
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0251682   -0.0764495    0.0261131
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0174190   -0.2822140    0.3170519
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0023726   -0.0094001    0.0141452
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0503681   -0.0719828   -0.0287533
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1053691   -0.0578743    0.2686125
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0773794   -0.5004274    0.6551863
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.3424840   -0.8872206    0.2022525
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0686370   -0.7823392    0.6450652
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0833884   -0.0716769    0.2384538
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0564086   -0.1129000    0.0000828
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0587583   -0.2384397    0.3559564
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0121697   -0.0041943    0.0285336
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0037348   -0.0225205    0.0150509

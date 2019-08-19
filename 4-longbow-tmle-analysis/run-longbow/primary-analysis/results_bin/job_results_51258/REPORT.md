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

**Intervention Variable:** predfeed36

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

agecat      studyid                    country                        predfeed36    wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      102     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       89     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       28     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      143     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        6     177
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       14     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2     195
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      148     195
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       31     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       24     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      123     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       19     167
Birth       ki0047075b-MAL-ED          PERU                           1                  0      115     266
Birth       ki0047075b-MAL-ED          PERU                           1                  1        1     266
Birth       ki0047075b-MAL-ED          PERU                           0                  0      145     266
Birth       ki0047075b-MAL-ED          PERU                           0                  1        5     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      217     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       14     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        2     116
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                  0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8298   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      894   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1898   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      229   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      462     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       31     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      105     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4     602
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      125     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      107     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        4     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      172     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      199     236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       32     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      200     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4     236
6 months    ki0047075b-MAL-ED          PERU                           1                  0      126     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      145     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      244     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      244     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     247
6 months    ki1000109-EE               PAKISTAN                       1                  0      202     371
6 months    ki1000109-EE               PAKISTAN                       1                  1       22     371
6 months    ki1000109-EE               PAKISTAN                       0                  0      120     371
6 months    ki1000109-EE               PAKISTAN                       0                  1       27     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      384     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       93     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10     526
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     9877   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      797   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2341   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      338   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3099    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      156    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      839    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78    4172
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      103     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       14     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       87     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      137     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      183     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       29     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      194     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        4     228
24 months   ki0047075b-MAL-ED          PERU                           1                  0       93     200
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     200
24 months   ki0047075b-MAL-ED          PERU                           0                  0      104     200
24 months   ki0047075b-MAL-ED          PERU                           0                  1        2     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      234     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      310     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       64     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23     455
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4102    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1174    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1055    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      341    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2542    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      598    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      672    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      197    4009


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/f482638f-8388-42e3-b84e-80a097eaaa01/da29838e-ccf9-404b-a30f-c10a4e7d8d71/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f482638f-8388-42e3-b84e-80a097eaaa01/da29838e-ccf9-404b-a30f-c10a4e7d8d71/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f482638f-8388-42e3-b84e-80a097eaaa01/da29838e-ccf9-404b-a30f-c10a4e7d8d71/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f482638f-8388-42e3-b84e-80a097eaaa01/da29838e-ccf9-404b-a30f-c10a4e7d8d71/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1581517   0.0946775   0.2216258
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2079522   0.1335044   0.2824001
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0989617   0.0926997   0.1052238
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1003042   0.0933696   0.1072389
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0981524   0.0589920   0.1373129
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1797550   0.1165501   0.2429599
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0916361   0.0641799   0.1190923
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0971907   0.0405161   0.1538653
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0761995   0.0706051   0.0817940
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1181006   0.1049385   0.1312626
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0488317   0.0377275   0.0599359
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0799358   0.0609088   0.0989628
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1196581   0.0607082   0.1786081
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0744681   0.0212699   0.1276662
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1578338   0.1204472   0.1952205
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2605301   0.1672925   0.3537676
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2253448   0.2122362   0.2384534
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2317176   0.2060509   0.2573843
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1930445   0.1771309   0.2089581
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2146381   0.1817101   0.2475661


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1695652   0.1209635   0.2181669
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0992137   0.0929975   0.1054299
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1320755   0.0975770   0.1665739
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0931559   0.0682937   0.1180181
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849996   0.0797287   0.0902706
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0560882   0.0466363   0.0655401
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1780220   0.1428346   0.2132094
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2270683   0.2155455   0.2385912
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1983038   0.1835884   0.2130192


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.3148910   0.7652477   2.259319
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0135660   0.9760393   1.052536
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 1.8313854   1.0753718   3.118896
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0606158   0.5498397   2.045880
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5498859   1.3608924   1.765126
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.6369659   1.1756081   2.279380
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6223404   0.2613104   1.482174
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.6506603   1.0744230   2.535947
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0282801   0.9071800   1.165546
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1118581   0.9374562   1.318705


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0114135   -0.0351669   0.0579940
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002520   -0.0005060   0.0010099
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0339230    0.0042383   0.0636078
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0015198   -0.0109023   0.0139419
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0088001    0.0058987   0.0117015
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0072565    0.0022593   0.0122537
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0201321   -0.0556369   0.0153728
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0201881    0.0005427   0.0398336
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017235   -0.0043689   0.0078160
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0052593   -0.0026643   0.0131829


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0673106   -0.2501604   0.3041617
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0025397   -0.0051309   0.0101518
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.2568458    0.0048143   0.4450501
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0163146   -0.1264246   0.1409660
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1035310    0.0691836   0.1366110
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1293768    0.0304280   0.2182274
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2022792   -0.6081499   0.1011564
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1134025   -0.0025269   0.2159261
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0075904   -0.0196148   0.0340697
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0265215   -0.0140875   0.0655042

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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        predfeed36    swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      119     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      103     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       28     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      149     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       16     195
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     195
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      172     195
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       25     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      138     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4     167
Birth       ki0047075b-MAL-ED          PERU                           1                   0      116     266
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     266
Birth       ki0047075b-MAL-ED          PERU                           0                   0      150     266
Birth       ki0047075b-MAL-ED          PERU                           0                   1        0     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      230     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      114     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1     116
Birth       ki1000109-EE               PAKISTAN                       1                   0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                   0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9030   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1      162   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2091   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1       36   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      488     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1        5     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      109     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1        0     602
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      128     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      110     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      172     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      212     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        5     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       32     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      204     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                   0      126     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                   0      145     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      248     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      245     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     247
6 months    ki1000109-EE               PAKISTAN                       1                   0      222     371
6 months    ki1000109-EE               PAKISTAN                       1                   1        2     371
6 months    ki1000109-EE               PAKISTAN                       0                   0      140     371
6 months    ki1000109-EE               PAKISTAN                       0                   1        7     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       12     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      417     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        6     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      103     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        0     526
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10545   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      129   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2624   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       55   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3236    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      907    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       10    4172
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       94     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      139     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      207     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       30     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      198     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1                   0       93     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     200
24 months   ki0047075b-MAL-ED          PERU                           0                   0      106     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1        0     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      235     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      212     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      361     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        7     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       80     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        7     455
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                   1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5069    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      207    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1329    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       67    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3063    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       77    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      844    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       25    4009


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
![](/tmp/584099cb-4c00-4965-9471-1718b7010a14/3f54b8bd-95f7-49a9-90eb-83d924bf7516/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/584099cb-4c00-4965-9471-1718b7010a14/3f54b8bd-95f7-49a9-90eb-83d924bf7516/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/584099cb-4c00-4965-9471-1718b7010a14/3f54b8bd-95f7-49a9-90eb-83d924bf7516/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/584099cb-4c00-4965-9471-1718b7010a14/3f54b8bd-95f7-49a9-90eb-83d924bf7516/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0176031   0.0141568   0.0210493
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0169319   0.0113210   0.0225427
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0120731   0.0098372   0.0143091
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0203875   0.0139793   0.0267957
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0059228   0.0005331   0.0113126
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0111012   0.0057555   0.0164469
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0190217   0.0050498   0.0329937
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0804598   0.0232407   0.1376789
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0394786   0.0332289   0.0457284
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0468768   0.0345882   0.0591655
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0246167   0.0182426   0.0309908
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0293505   0.0182282   0.0404729


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0174927   0.0144504   0.0205350
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0137797   0.0115120   0.0160474
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0069511   0.0026049   0.0112973
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0307692   0.0148841   0.0466544
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0410671   0.0355641   0.0465702
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0254428   0.0199234   0.0309621


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9618727   0.6605921    1.400560
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6886645   1.1867034    2.402949
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.8743015   0.6675997    5.262144
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.2298850   1.5216473   11.758261
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1873981   0.8731294    1.614783
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1923030   0.7495505    1.896585


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0001103   -0.0013254   0.0011048
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017065    0.0003865   0.0030265
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0010283   -0.0006473   0.0027039
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0117475    0.0002681   0.0232269
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0015885   -0.0013498   0.0045269
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008261   -0.0020178   0.0036700


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0063077   -0.0780518   0.0606618
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1238440    0.0274575   0.2106778
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1479279   -0.2097036   0.3998307
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.3817935   -0.0359673   0.6310894
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0386813   -0.0358257   0.1078289
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0324679   -0.0867910   0.1386399

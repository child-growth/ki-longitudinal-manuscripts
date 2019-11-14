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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** trth2o

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
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        trth2o    n_cell     n
----------  -------------------------  -----------------------------  -------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            117   119
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   119
Birth       ki0047075b-MAL-ED          BRAZIL                         1              4    22
Birth       ki0047075b-MAL-ED          BRAZIL                         0             18    22
Birth       ki0047075b-MAL-ED          INDIA                          1              0     2
Birth       ki0047075b-MAL-ED          INDIA                          0              2     2
Birth       ki0047075b-MAL-ED          NEPAL                          1              7     9
Birth       ki0047075b-MAL-ED          NEPAL                          0              2     9
Birth       ki0047075b-MAL-ED          PERU                           1             28    36
Birth       ki0047075b-MAL-ED          PERU                           0              8    36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              4     5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              4    22
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             18    22
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             26    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    26
Birth       ki1000108-IRC              INDIA                          1            120   120
Birth       ki1000108-IRC              INDIA                          0              0   120
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             12   539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            527   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            409   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            323   732
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0              3     4
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6 months    ki0047075b-MAL-ED          PERU                           1             39    49
6 months    ki0047075b-MAL-ED          PERU                           0             10    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120
6 months    ki1000108-IRC              INDIA                          1            121   121
6 months    ki1000108-IRC              INDIA                          0              0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            590   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
24 months   ki0047075b-MAL-ED          PERU                           1             39    49
24 months   ki0047075b-MAL-ED          PERU                           0             10    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119
24 months   ki1000108-IRC              INDIA                          1            121   121
24 months   ki1000108-IRC              INDIA                          0              0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            564   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/f9269c3f-ac41-4674-a17a-82ffdf252e50/82cb4fcb-6643-44a4-ae14-2c2a8523c874/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f9269c3f-ac41-4674-a17a-82ffdf252e50/82cb4fcb-6643-44a4-ae14-2c2a8523c874/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f9269c3f-ac41-4674-a17a-82ffdf252e50/82cb4fcb-6643-44a4-ae14-2c2a8523c874/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -1.1403571   -1.4705172   -0.8101971
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.9150000   -1.3733730   -0.4566270
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.6983582   -1.3067050   -0.0900113
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.8894057   -0.9649421   -0.8138692
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.9796303   -1.0724981   -0.8867625
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.8225242   -0.9411122   -0.7039363
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1452833   -0.7499542    0.4593877
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.2011290   -0.0164052    0.4186633
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.4757720   -0.6921794   -0.2593646
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.8406340   -1.2791780   -0.4020899
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -1.4529276   -1.7594658   -1.1463893
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                -0.9431082   -1.4264079   -0.4598085
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3394444   -2.3247416   -0.3541473
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5815278   -1.8930135   -1.2700421
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.7302758   -2.1649718   -1.2955798
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.0893478   -1.1648910   -1.0138046
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.2747779   -1.3756261   -1.1739297
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.0912114   -1.1961273   -0.9862955
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.7975830   -1.2067544   -0.3884115
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.2103356   -0.0047069    0.4253781
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.2075868   -1.4414896   -0.9736840
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -1.5736848   -2.1598420   -0.9875276
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -1.8184036   -2.0967341   -1.5400731
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -2.2372084   -2.7524035   -1.7220133
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7600000   -3.4536768   -2.0663232
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.8620270   -3.2058314   -2.5182226
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0384937   -0.6402637    0.5632764
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.5978835   -1.6821991   -1.5135679
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.4799902   -1.6200913   -1.3398891
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.4171052   -1.5324953   -1.3017151


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -1.0902778   -1.3682718   -0.8122837
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.1586084   -0.0412881    0.3585049
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5388554   -0.7304990   -0.3472118
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.4397959   -1.7022556   -1.1773362
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.5469444   -1.8498756   -1.2440133
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0839320   -0.1213874    0.2892514
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2665060   -1.4788044   -1.0542077
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.9109184   -2.1555913   -1.6662455
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.8477907   -3.1592380   -2.5363434
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.2253571   -0.3395424    0.7902567
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1910475   -0.8043305    0.4222355
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1571060    0.0070460    0.3071661
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.3464123   -0.2979038    0.9907285
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.3648620   -0.8545996    0.1248756
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.5098194   -0.0638913    1.0835301
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2420833   -1.2754438    0.7912771
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.6409280    0.1992342    1.0826218
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1835665    0.0379191    0.3292139
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  1.0079186    0.5430757    1.4727614
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.3660980   -1.0012308    0.2690349
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.4188048   -1.0065396    0.1689300
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1020270   -0.8762292    0.6721752
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -1.5593899   -2.1709447   -0.9478350
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0628850   -0.1173245    0.2430945


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0500794   -0.0792342    0.1793930
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1867439   -0.7854875    0.4119998
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0701358    0.0037525    0.1365190
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.3038917   -0.2741066    0.8818900
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0630834   -0.1445821    0.0184153
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0131317   -0.1188367    0.1451001
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075000   -1.0936170    0.6786170
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.6385843    0.2074891    1.0696795
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0760996    0.0103366    0.1418626
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.8815150    0.4680507    1.2949793
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0589192   -0.1589410    0.0411026
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0925148   -0.2173220    0.0322925
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0877907   -0.7540505    0.5784691
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.5639285   -2.1619346   -0.9659224
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0387256   -0.0638839    0.1413350

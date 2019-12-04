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

agecat      studyid                    country                        trth2o    n_cell     n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            117   119  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   119  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1              4    22  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0             18    22  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1              0     2  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0              2     2  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1              7     9  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0              2     9  haz              
Birth       ki0047075b-MAL-ED          PERU                           1             28    36  haz              
Birth       ki0047075b-MAL-ED          PERU                           0              8    36  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1     5  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              4     5  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              4    22  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             18    22  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             26    26  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    26  haz              
Birth       ki1000108-IRC              INDIA                          1            120   120  haz              
Birth       ki1000108-IRC              INDIA                          0              0   120  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1             12   539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            527   539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            409   732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            323   732  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1     4  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0              3     4  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83  haz              
6 months    ki0047075b-MAL-ED          PERU                           1             39    49  haz              
6 months    ki0047075b-MAL-ED          PERU                           0             10    49  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120  haz              
6 months    ki1000108-IRC              INDIA                          1            121   121  haz              
6 months    ki1000108-IRC              INDIA                          0              0   121  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             14   604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            590   604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83  haz              
24 months   ki0047075b-MAL-ED          PERU                           1             39    49  haz              
24 months   ki0047075b-MAL-ED          PERU                           0             10    49  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119  haz              
24 months   ki1000108-IRC              INDIA                          1            121   121  haz              
24 months   ki1000108-IRC              INDIA                          0              0   121  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            564   578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4  haz              


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
![](/tmp/50df5cc6-9a53-40db-97dc-6fb6dfcf7ce7/e50c9b35-7380-47dd-97e0-0d450cf58d38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/50df5cc6-9a53-40db-97dc-6fb6dfcf7ce7/e50c9b35-7380-47dd-97e0-0d450cf58d38/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/50df5cc6-9a53-40db-97dc-6fb6dfcf7ce7/e50c9b35-7380-47dd-97e0-0d450cf58d38/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -1.1403571   -1.4705172   -0.8101971
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.9150000   -1.3733730   -0.4566270
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.7274278   -1.2887612   -0.1660944
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.8895135   -0.9650373   -0.8139896
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.0066648   -1.1019771   -0.9113526
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.8216948   -0.9375455   -0.7058441
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1246352   -0.6443094    0.3950390
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.1923719   -0.0240343    0.4087780
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.4793477   -0.6976219   -0.2610735
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.9089802   -1.3087696   -0.5091907
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -1.4525268   -1.7634762   -1.1415774
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                -1.0176406   -1.5393746   -0.4959067
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3394444   -2.3247416   -0.3541473
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5815278   -1.8930135   -1.2700421
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.5614109   -1.0653385   -0.0574832
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.0874342   -1.1629676   -1.0119009
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.2781708   -1.3789073   -1.1774343
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.0953871   -1.2002377   -0.9905365
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.8416622   -1.2406761   -0.4426482
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.2160739    0.0017795    0.4303683
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.2218308   -1.4598677   -0.9837940
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -1.4804205   -2.0457715   -0.9150696
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -1.7857990   -2.0666200   -1.5049781
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -1.9560813   -2.4376123   -1.4745503
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7600000   -3.4536768   -2.0663232
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.8620270   -3.2058314   -2.5182226
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.5438917   -2.0773445   -1.0104389
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.6001086   -1.6844822   -1.5157350
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.4899505   -1.6210117   -1.3588892
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.4018384   -1.5169055   -1.2867713


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -1.0902778   -1.3682718   -0.8122837
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.1558900   -0.0436128    0.3553927
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5416867   -0.7337282   -0.3496452
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.4335034   -1.6988926   -1.1681142
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.5469444   -1.8498756   -1.2440133
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.0833172   -0.1220854    0.2887197
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2665060   -1.4788044   -1.0542077
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.9093878   -2.1570845   -1.6616910
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.8477907   -3.1592380   -2.5363434
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.2253571   -0.3395424    0.7902567
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1620857   -0.7293958    0.4052244
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1849700    0.0349092    0.3350309
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                  0.3170071   -0.2472302    0.8812443
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.4296325   -0.8885252    0.0292602
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.4348862   -0.1835645    1.0533368
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2420833   -1.2754438    0.7912771
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5260234   -1.0353933   -0.0166535
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1827836    0.0372628    0.3283045
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                  1.0577361    0.6024214    1.5130508
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.2585897   -0.8720022    0.3548227
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1702823   -0.7364690    0.3959044
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1020270   -0.8762292    0.6721752
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0562169   -0.5961396    0.4837057
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0881121   -0.0856820    0.2619061


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0500794   -0.0792342    0.1793930
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1576742   -0.7102468    0.3948984
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0971703    0.0290753    0.1652653
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.2805252   -0.2168130    0.7778633
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0623391   -0.1473100    0.0226319
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0190234   -0.1132314    0.1512781
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075000   -1.0936170    0.6786170
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.5302807   -1.0293946   -0.0311667
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0794924    0.0140123    0.1449726
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.9249793    0.5212838    1.3286748
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0446752   -0.1467685    0.0574181
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.1235887   -0.2576611    0.0104837
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0877907   -0.7540505    0.5784691
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0585305   -0.5850172    0.4679562
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0486859   -0.0453315    0.1427032

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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              37    86
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              49    86
Birth       ki1000108-IRC              INDIA          1             198   337
Birth       ki1000108-IRC              INDIA          0             139   337
Birth       ki1017093b-PROVIDE         BANGLADESH     1             433   532
Birth       ki1017093b-PROVIDE         BANGLADESH     0              99   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1             336   543
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0             207   543
Birth       ki1113344-GMS-Nepal        NEPAL          1               9   570
Birth       ki1113344-GMS-Nepal        NEPAL          0             561   570
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             162   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   368
6 months    ki1000108-IRC              INDIA          1             229   398
6 months    ki1000108-IRC              INDIA          0             169   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             497   603
6 months    ki1017093b-PROVIDE         BANGLADESH     0             106   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   505
6 months    ki1113344-GMS-Nepal        NEPAL          0             497   505
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             480   579
24 months   ki1017093b-PROVIDE         BANGLADESH     0              99   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               5   434
24 months   ki1113344-GMS-Nepal        NEPAL          0             429   434


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

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
![](/tmp/9d54f951-8883-4625-a9df-df0555b8720b/f7c0ef1f-6be4-4370-9a6d-70d3a6272a07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9d54f951-8883-4625-a9df-df0555b8720b/f7c0ef1f-6be4-4370-9a6d-70d3a6272a07/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9d54f951-8883-4625-a9df-df0555b8720b/f7c0ef1f-6be4-4370-9a6d-70d3a6272a07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2820088   -0.7268250    0.1628074
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6764178   -1.1130929   -0.2397427
Birth       ki1000108-IRC              INDIA        1                    NA                -0.7609129   -1.0207647   -0.5010612
Birth       ki1000108-IRC              INDIA        0                    NA                -1.1958645   -1.5019256   -0.8898035
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.2843995   -1.3688918   -1.1999072
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.3692047   -1.5639833   -1.1744261
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.0918304   -1.2256065   -0.9580544
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3928475   -1.5768141   -1.2088810
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.5077778   -2.0451921   -0.9703635
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1081283   -1.2024430   -1.0138137
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3858639   -0.6119078   -0.1598201
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6232718   -0.8363986   -0.4101451
6 months    ki1000108-IRC              INDIA        1                    NA                -0.6656331   -0.8458492   -0.4854169
6 months    ki1000108-IRC              INDIA        0                    NA                -0.5715119   -0.7882560   -0.3547679
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1396432   -0.2294567   -0.0498297
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4795256   -0.6795577   -0.2794936
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1190724   -0.0071437    0.2452886
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0416759   -0.1985073    0.1151556
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1876486   -0.4936014
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.6195607   -0.7114689   -0.5276524
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2804045   -0.4471852   -0.1136238
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.7163175   -0.8500536   -0.5825815
24 months   ki1000108-IRC              INDIA        1                    NA                -0.6777434   -0.8039246   -0.5515622
24 months   ki1000108-IRC              INDIA        0                    NA                -0.8460942   -0.9874999   -0.7046884
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8421693   -0.9303226   -0.7540159
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1346753   -1.3583795   -0.9109711
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.6220239   -0.7869700   -0.4570778
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.4622483   -0.6330930   -0.2914037
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.8380000   -1.3259702   -0.3500298
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1280730   -1.2245191   -1.0316270


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.9860831   -1.1746070   -0.7975591
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1841160   -1.2799097   -1.0883224
Birth       ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.1144386   -1.2074618   -1.0214154
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA        NA                   NA                -0.6153685   -0.7522411   -0.4784959
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0640826   -0.0252594    0.1534245
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.6230627   -0.7131245   -0.5330009
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA        NA                   NA                -0.7479083   -0.8403586   -0.6554581
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.5518293   -0.6602513   -0.4434072
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.1247312   -1.2195989   -1.0298635


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.3944090   -1.0256017    0.2367836
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                 -0.4349516   -0.8393526   -0.0305506
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0848052   -0.2971136    0.1275033
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.3010171   -0.5297940   -0.0722402
Birth       ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL        0                    1                  0.3996494   -0.1459781    0.9452770
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2374079   -0.5466778    0.0718620
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                  0.0941211   -0.1882656    0.3765079
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.3398824   -0.5591089   -0.1206559
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.1607483   -0.3634625    0.0419658
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                  0.2210643   -0.1379239    0.5800525
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.4359130   -0.6504665   -0.2213596
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.1683507   -0.3588453    0.0221438
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.2925060   -0.5332588   -0.0517532
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1597756   -0.0773196    0.3968707
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2900730   -0.7874831    0.2073370


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1828168   -0.5646998    0.1990662
Birth       ki1000108-IRC              INDIA        1                    NA                -0.2251701   -0.3974380   -0.0529023
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0140591   -0.0523634    0.0242451
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0922856   -0.1844286   -0.0001425
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.3933392   -0.1386634    0.9253418
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1168127   -0.2922126    0.0585872
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0502646   -0.0704600    0.1709891
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0594474   -0.0996313   -0.0192636
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0549899   -0.1424903    0.0325106
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.2175623   -0.1324595    0.5675841
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2767460   -0.4076798   -0.1458123
24 months   ki1000108-IRC              INDIA        1                    NA                -0.0701649   -0.1511914    0.0108616
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0506978   -0.0924577   -0.0089378
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0701946   -0.0634281    0.2038173
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2867312   -0.7717148    0.1982524

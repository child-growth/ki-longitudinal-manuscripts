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
![](/tmp/0e4ed5d7-efe2-4111-a653-7d15a7f3e555/3f5872fd-d012-40c3-9899-f31eda3ecc49/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0e4ed5d7-efe2-4111-a653-7d15a7f3e555/3f5872fd-d012-40c3-9899-f31eda3ecc49/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0e4ed5d7-efe2-4111-a653-7d15a7f3e555/3f5872fd-d012-40c3-9899-f31eda3ecc49/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2537529   -0.7033270    0.1958213
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6408812   -1.0815848   -0.2001776
Birth       ki1000108-IRC              INDIA        1                    NA                -0.7584707   -1.0144071   -0.5025343
Birth       ki1000108-IRC              INDIA        0                    NA                -1.1244388   -1.4178946   -0.8309830
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.2829751   -1.3674833   -1.1984669
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.3663078   -1.5578727   -1.1747428
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.0966671   -1.2243223   -0.9690119
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3857667   -1.5676169   -1.2039164
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.5077778   -2.0451921   -0.9703635
Birth       ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1081283   -1.2024430   -1.0138137
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.4186109   -0.6413504   -0.1958714
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6262387   -0.8447613   -0.4077162
6 months    ki1000108-IRC              INDIA        1                    NA                -0.6694689   -0.8504074   -0.4885305
6 months    ki1000108-IRC              INDIA        0                    NA                -0.5621115   -0.7798695   -0.3443536
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1389632   -0.2289003   -0.0490261
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4791961   -0.6782264   -0.2801658
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1157736   -0.0103958    0.2419430
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0139988   -0.1836143    0.1556168
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1876486   -0.4936014
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.6195607   -0.7114689   -0.5276524
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2801275   -0.4463113   -0.1139436
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.7544221   -0.8870463   -0.6217979
24 months   ki1000108-IRC              INDIA        1                    NA                -0.6576104   -0.7798015   -0.5354193
24 months   ki1000108-IRC              INDIA        0                    NA                -0.8371299   -0.9828443   -0.6914155
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8439474   -0.9318455   -0.7560492
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1269033   -1.3547752   -0.8990313
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.6323762   -0.7924455   -0.4723068
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.4898980   -0.6589413   -0.3208547
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.3871283   -1.0193298    0.2450731
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                 -0.3659681   -0.7593136    0.0273773
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.0833326   -0.2924512    0.1257859
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.2890995   -0.5117592   -0.0664399
Birth       ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL        0                    1                  0.3996494   -0.1459781    0.9452770
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2076278   -0.5210543    0.1057987
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                  0.1073574   -0.1765148    0.3912296
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.3402329   -0.5582431   -0.1222227
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.1297724   -0.3414094    0.0818647
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                  0.2210643   -0.1379239    0.5800525
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.4742947   -0.6875281   -0.2610613
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.1795195   -0.3708632    0.0118243
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.2829559   -0.5266946   -0.0392172
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1424782   -0.0900360    0.3749923
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2900730   -0.7874831    0.2073370


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2110727   -0.5892344    0.1670890
Birth       ki1000108-IRC              INDIA        1                    NA                -0.2276124   -0.3991514   -0.0560733
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0154835   -0.0533823    0.0224152
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0874489   -0.1729253   -0.0019725
Birth       ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.3933392   -0.1386634    0.9253418
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0840657   -0.2583698    0.0902384
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0541004   -0.0682688    0.1764697
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0601275   -0.1002269   -0.0200280
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0516910   -0.1397265    0.0363444
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.2175623   -0.1324595    0.5675841
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2770231   -0.4079573   -0.1460889
24 months   ki1000108-IRC              INDIA        1                    NA                -0.0902979   -0.1701142   -0.0104816
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0489197   -0.0903186   -0.0075207
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0805469   -0.0505423    0.2116361
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2867312   -0.7717148    0.1982524

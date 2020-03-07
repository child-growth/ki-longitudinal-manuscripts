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

agecat      studyid          country        cleanck    wasted   n_cell     n
----------  ---------------  -------------  --------  -------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1               0       34    86
Birth       CMC-V-BCS-2002   INDIA          1               1        3    86
Birth       CMC-V-BCS-2002   INDIA          0               0       41    86
Birth       CMC-V-BCS-2002   INDIA          0               1        8    86
Birth       GMS-Nepal        NEPAL          1               0        5   570
Birth       GMS-Nepal        NEPAL          1               1        4   570
Birth       GMS-Nepal        NEPAL          0               0      448   570
Birth       GMS-Nepal        NEPAL          0               1      113   570
Birth       IRC              INDIA          1               0      157   337
Birth       IRC              INDIA          1               1       41   337
Birth       IRC              INDIA          0               0       91   337
Birth       IRC              INDIA          0               1       48   337
Birth       MAL-ED           PERU           1               0        1     2
Birth       MAL-ED           PERU           1               1        0     2
Birth       MAL-ED           PERU           0               0        1     2
Birth       MAL-ED           PERU           0               1        0     2
Birth       NIH-Crypto       BANGLADESH     1               0      275   543
Birth       NIH-Crypto       BANGLADESH     1               1       61   543
Birth       NIH-Crypto       BANGLADESH     0               0      146   543
Birth       NIH-Crypto       BANGLADESH     0               1       61   543
Birth       PROVIDE          BANGLADESH     1               0      341   532
Birth       PROVIDE          BANGLADESH     1               1       92   532
Birth       PROVIDE          BANGLADESH     0               0       74   532
Birth       PROVIDE          BANGLADESH     0               1       25   532
6 months    CMC-V-BCS-2002   INDIA          1               0      146   368
6 months    CMC-V-BCS-2002   INDIA          1               1       16   368
6 months    CMC-V-BCS-2002   INDIA          0               0      176   368
6 months    CMC-V-BCS-2002   INDIA          0               1       30   368
6 months    GMS-Nepal        NEPAL          1               0        8   505
6 months    GMS-Nepal        NEPAL          1               1        0   505
6 months    GMS-Nepal        NEPAL          0               0      451   505
6 months    GMS-Nepal        NEPAL          0               1       46   505
6 months    IRC              INDIA          1               0      195   398
6 months    IRC              INDIA          1               1       34   398
6 months    IRC              INDIA          0               0      150   398
6 months    IRC              INDIA          0               1       19   398
6 months    MAL-ED           SOUTH AFRICA   1               0        1     1
6 months    MAL-ED           SOUTH AFRICA   1               1        0     1
6 months    MAL-ED           SOUTH AFRICA   0               0        0     1
6 months    MAL-ED           SOUTH AFRICA   0               1        0     1
6 months    NIH-Crypto       BANGLADESH     1               0      321   545
6 months    NIH-Crypto       BANGLADESH     1               1        8   545
6 months    NIH-Crypto       BANGLADESH     0               0      211   545
6 months    NIH-Crypto       BANGLADESH     0               1        5   545
6 months    PROVIDE          BANGLADESH     1               0      481   603
6 months    PROVIDE          BANGLADESH     1               1       16   603
6 months    PROVIDE          BANGLADESH     0               0       97   603
6 months    PROVIDE          BANGLADESH     0               1        9   603
24 months   CMC-V-BCS-2002   INDIA          1               0      157   372
24 months   CMC-V-BCS-2002   INDIA          1               1        6   372
24 months   CMC-V-BCS-2002   INDIA          0               0      192   372
24 months   CMC-V-BCS-2002   INDIA          0               1       17   372
24 months   GMS-Nepal        NEPAL          1               0        4   434
24 months   GMS-Nepal        NEPAL          1               1        1   434
24 months   GMS-Nepal        NEPAL          0               0      350   434
24 months   GMS-Nepal        NEPAL          0               1       79   434
24 months   IRC              INDIA          1               0      216   400
24 months   IRC              INDIA          1               1       15   400
24 months   IRC              INDIA          0               0      153   400
24 months   IRC              INDIA          0               1       16   400
24 months   MAL-ED           SOUTH AFRICA   1               0        1     1
24 months   MAL-ED           SOUTH AFRICA   1               1        0     1
24 months   MAL-ED           SOUTH AFRICA   0               0        0     1
24 months   MAL-ED           SOUTH AFRICA   0               1        0     1
24 months   NIH-Crypto       BANGLADESH     1               0      185   410
24 months   NIH-Crypto       BANGLADESH     1               1       14   410
24 months   NIH-Crypto       BANGLADESH     0               0      193   410
24 months   NIH-Crypto       BANGLADESH     0               1       18   410
24 months   PROVIDE          BANGLADESH     1               0      438   579
24 months   PROVIDE          BANGLADESH     1               1       42   579
24 months   PROVIDE          BANGLADESH     0               0       79   579
24 months   PROVIDE          BANGLADESH     0               1       20   579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/cdbae0f7-2eb9-47aa-a602-d1699bde1c6e/6a7d216c-ea29-43a7-89ba-51c1b819aad5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cdbae0f7-2eb9-47aa-a602-d1699bde1c6e/6a7d216c-ea29-43a7-89ba-51c1b819aad5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cdbae0f7-2eb9-47aa-a602-d1699bde1c6e/6a7d216c-ea29-43a7-89ba-51c1b819aad5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cdbae0f7-2eb9-47aa-a602-d1699bde1c6e/6a7d216c-ea29-43a7-89ba-51c1b819aad5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        1                    NA                0.2028066   0.1430160   0.2625972
Birth       IRC              INDIA        0                    NA                0.3302896   0.2467094   0.4138699
Birth       NIH-Crypto       BANGLADESH   1                    NA                0.2148137   0.1553181   0.2743094
Birth       NIH-Crypto       BANGLADESH   0                    NA                0.3348683   0.2338924   0.4358443
Birth       PROVIDE          BANGLADESH   1                    NA                0.2126651   0.1740910   0.2512392
Birth       PROVIDE          BANGLADESH   0                    NA                0.2492917   0.1637653   0.3348180
6 months    CMC-V-BCS-2002   INDIA        1                    NA                0.0976453   0.0514385   0.1438521
6 months    CMC-V-BCS-2002   INDIA        0                    NA                0.1442671   0.0958552   0.1926791
6 months    IRC              INDIA        1                    NA                0.1501367   0.1035952   0.1966781
6 months    IRC              INDIA        0                    NA                0.1114029   0.0641105   0.1586953
6 months    NIH-Crypto       BANGLADESH   1                    NA                0.0243161   0.0076570   0.0409752
6 months    NIH-Crypto       BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
6 months    PROVIDE          BANGLADESH   1                    NA                0.0321932   0.0166619   0.0477244
6 months    PROVIDE          BANGLADESH   0                    NA                0.0849057   0.0317980   0.1380133
24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078646   0.0657550
24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.0813397   0.0442299   0.1184495
24 months   IRC              INDIA        1                    NA                0.0651406   0.0331358   0.0971455
24 months   IRC              INDIA        0                    NA                0.0944284   0.0499754   0.1388814
24 months   NIH-Crypto       BANGLADESH   1                    NA                0.0724364   0.0353340   0.1095388
24 months   NIH-Crypto       BANGLADESH   0                    NA                0.0843722   0.0468196   0.1219248
24 months   PROVIDE          BANGLADESH   1                    NA                0.0889741   0.0632038   0.1147443
24 months   PROVIDE          BANGLADESH   0                    NA                0.1935909   0.1111085   0.2760732


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        NA                   NA                0.2640950   0.2169571   0.3112328
Birth       NIH-Crypto       BANGLADESH   NA                   NA                0.2246777   0.1895403   0.2598151
Birth       PROVIDE          BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.1250000   0.0911644   0.1588356
6 months    IRC              INDIA        NA                   NA                0.1331658   0.0997450   0.1665867
6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.0238532   0.0110305   0.0366759
6 months    PROVIDE          BANGLADESH   NA                   NA                0.0414594   0.0255348   0.0573839
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.0618280   0.0373207   0.0863352
24 months   IRC              INDIA        NA                   NA                0.0775000   0.0512641   0.1037359
24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.0780488   0.0520518   0.1040458
24 months   PROVIDE          BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       IRC              INDIA        0                    1                 1.6285943   1.1054715   2.399265
Birth       NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 1.5588778   1.0345103   2.349034
Birth       PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH   0                    1                 1.1722265   0.7962030   1.725835
6 months    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 1.4774604   0.8263831   2.641498
6 months    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA        0                    1                 0.7420099   0.4384996   1.255597
6 months    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 0.9519676   0.3152693   2.874502
6 months    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH   0                    1                 2.6373821   1.1970491   5.810776
24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 2.2097289   0.8902591   5.484809
24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   IRC              INDIA        0                    1                 1.4496088   0.7336207   2.864376
24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH   0                    1                 1.1647763   0.5909003   2.295995
24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH   0                    1                 2.1758124   1.2997226   3.642439


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.0612884    0.0161496   0.1064271
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0098640   -0.0394731   0.0592011
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0072597   -0.0100301   0.0245495
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.0273547   -0.0102657   0.0649750
6 months    IRC              INDIA        1                    NA                -0.0169708   -0.0455992   0.0116575
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0004629   -0.0108012   0.0098754
6 months    PROVIDE          BANGLADESH   1                    NA                 0.0092662   -0.0005917   0.0191241
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0250181   -0.0015188   0.0515551
24 months   IRC              INDIA        1                    NA                 0.0123594   -0.0108407   0.0355595
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0056124   -0.0223337   0.0335585
24 months   PROVIDE          BANGLADESH   1                    NA                 0.0181071    0.0033145   0.0328997


### Parameter: PAF


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.2320694    0.0426985   0.3839795
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0439028   -0.2027649   0.2399830
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0330100   -0.0488387   0.1084714
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.2188374   -0.1423290   0.4658149
6 months    IRC              INDIA        1                    NA                -0.1274414   -0.3625192   0.0670780
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0194061   -0.5593435   0.3335728
6 months    PROVIDE          BANGLADESH   1                    NA                 0.2235010   -0.0346153   0.4172223
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.4046412   -0.1668932   0.6962429
24 months   IRC              INDIA        1                    NA                 0.1594760   -0.1942406   0.4084269
24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0719089   -0.3642636   0.3686315
24 months   PROVIDE          BANGLADESH   1                    NA                 0.1690970    0.0240916   0.2925568

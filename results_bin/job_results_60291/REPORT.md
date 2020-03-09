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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        vagbrth    wasted   n_cell       n
----------  ---------------  -----------------------------  --------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0               0        8      86
Birth       CMC-V-BCS-2002   INDIA                          0               1        2      86
Birth       CMC-V-BCS-2002   INDIA                          1               0       67      86
Birth       CMC-V-BCS-2002   INDIA                          1               1        9      86
Birth       IRC              INDIA                          0               0       45     343
Birth       IRC              INDIA                          0               1       21     343
Birth       IRC              INDIA                          1               0      206     343
Birth       IRC              INDIA                          1               1       71     343
Birth       JiVitA-3         BANGLADESH                     0               0      398   17985
Birth       JiVitA-3         BANGLADESH                     0               1      102   17985
Birth       JiVitA-3         BANGLADESH                     1               0    15618   17985
Birth       JiVitA-3         BANGLADESH                     1               1     1867   17985
Birth       JiVitA-4         BANGLADESH                     0               0       57    2395
Birth       JiVitA-4         BANGLADESH                     0               1       14    2395
Birth       JiVitA-4         BANGLADESH                     1               0     2099    2395
Birth       JiVitA-4         BANGLADESH                     1               1      225    2395
Birth       NIH-Crypto       BANGLADESH                     0               0      150     465
Birth       NIH-Crypto       BANGLADESH                     0               1       34     465
Birth       NIH-Crypto       BANGLADESH                     1               0      220     465
Birth       NIH-Crypto       BANGLADESH                     1               1       61     465
Birth       PROBIT           BELARUS                        0               0     1298   13817
Birth       PROBIT           BELARUS                        0               1      293   13817
Birth       PROBIT           BELARUS                        1               0     9613   13817
Birth       PROBIT           BELARUS                        1               1     2613   13817
Birth       PROVIDE          BANGLADESH                     0               0       85     532
Birth       PROVIDE          BANGLADESH                     0               1       23     532
Birth       PROVIDE          BANGLADESH                     1               0      330     532
Birth       PROVIDE          BANGLADESH                     1               1       94     532
Birth       ZVITAMBO         ZIMBABWE                       0               0      906   12814
Birth       ZVITAMBO         ZIMBABWE                       0               1      194   12814
Birth       ZVITAMBO         ZIMBABWE                       1               0     9861   12814
Birth       ZVITAMBO         ZIMBABWE                       1               1     1853   12814
6 months    CMC-V-BCS-2002   INDIA                          0               0       21     368
6 months    CMC-V-BCS-2002   INDIA                          0               1        4     368
6 months    CMC-V-BCS-2002   INDIA                          1               0      301     368
6 months    CMC-V-BCS-2002   INDIA                          1               1       42     368
6 months    IRC              INDIA                          0               0       61     408
6 months    IRC              INDIA                          0               1        7     408
6 months    IRC              INDIA                          1               0      293     408
6 months    IRC              INDIA                          1               1       47     408
6 months    JiVitA-3         BANGLADESH                     0               0     1001   16705
6 months    JiVitA-3         BANGLADESH                     0               1       74   16705
6 months    JiVitA-3         BANGLADESH                     1               0    14288   16705
6 months    JiVitA-3         BANGLADESH                     1               1     1342   16705
6 months    JiVitA-4         BANGLADESH                     0               0      323    4056
6 months    JiVitA-4         BANGLADESH                     0               1       14    4056
6 months    JiVitA-4         BANGLADESH                     1               0     3516    4056
6 months    JiVitA-4         BANGLADESH                     1               1      203    4056
6 months    NIH-Crypto       BANGLADESH                     0               0      185     457
6 months    NIH-Crypto       BANGLADESH                     0               1        2     457
6 months    NIH-Crypto       BANGLADESH                     1               0      257     457
6 months    NIH-Crypto       BANGLADESH                     1               1       13     457
6 months    PROBIT           BELARUS                        0               0     1787   15757
6 months    PROBIT           BELARUS                        0               1       10   15757
6 months    PROBIT           BELARUS                        1               0    13862   15757
6 months    PROBIT           BELARUS                        1               1       98   15757
6 months    PROVIDE          BANGLADESH                     0               0      134     603
6 months    PROVIDE          BANGLADESH                     0               1        5     603
6 months    PROVIDE          BANGLADESH                     1               0      444     603
6 months    PROVIDE          BANGLADESH                     1               1       20     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0      181    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        8    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0     1737    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       78    2004
6 months    ZVITAMBO         ZIMBABWE                       0               0      697    8437
6 months    ZVITAMBO         ZIMBABWE                       0               1       24    8437
6 months    ZVITAMBO         ZIMBABWE                       1               0     7478    8437
6 months    ZVITAMBO         ZIMBABWE                       1               1      238    8437
24 months   CMC-V-BCS-2002   INDIA                          0               0       23     372
24 months   CMC-V-BCS-2002   INDIA                          0               1        2     372
24 months   CMC-V-BCS-2002   INDIA                          1               0      326     372
24 months   CMC-V-BCS-2002   INDIA                          1               1       21     372
24 months   IRC              INDIA                          0               0       64     409
24 months   IRC              INDIA                          0               1        5     409
24 months   IRC              INDIA                          1               0      314     409
24 months   IRC              INDIA                          1               1       26     409
24 months   JiVitA-3         BANGLADESH                     0               0      396    8555
24 months   JiVitA-3         BANGLADESH                     0               1       79    8555
24 months   JiVitA-3         BANGLADESH                     1               0     6292    8555
24 months   JiVitA-3         BANGLADESH                     1               1     1788    8555
24 months   JiVitA-4         BANGLADESH                     0               0      263    4008
24 months   JiVitA-4         BANGLADESH                     0               1       60    4008
24 months   JiVitA-4         BANGLADESH                     1               0     2934    4008
24 months   JiVitA-4         BANGLADESH                     1               1      751    4008
24 months   NIH-Crypto       BANGLADESH                     0               0       90     260
24 months   NIH-Crypto       BANGLADESH                     0               1        9     260
24 months   NIH-Crypto       BANGLADESH                     1               0      143     260
24 months   NIH-Crypto       BANGLADESH                     1               1       18     260
24 months   PROBIT           BELARUS                        0               0      461    3970
24 months   PROBIT           BELARUS                        0               1        2    3970
24 months   PROBIT           BELARUS                        1               0     3477    3970
24 months   PROBIT           BELARUS                        1               1       30    3970
24 months   PROVIDE          BANGLADESH                     0               0      126     579
24 months   PROVIDE          BANGLADESH                     0               1       11     579
24 months   PROVIDE          BANGLADESH                     1               0      391     579
24 months   PROVIDE          BANGLADESH                     1               1       51     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0               0       27     426
24 months   ZVITAMBO         ZIMBABWE                       0               1        1     426
24 months   ZVITAMBO         ZIMBABWE                       1               0      321     426
24 months   ZVITAMBO         ZIMBABWE                       1               1       77     426


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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
![](/tmp/54cf5e37-ad29-4af9-b2fd-f8dca7c2c8f4/7701effb-f332-430a-8da4-f36a292513cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/54cf5e37-ad29-4af9-b2fd-f8dca7c2c8f4/7701effb-f332-430a-8da4-f36a292513cd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/54cf5e37-ad29-4af9-b2fd-f8dca7c2c8f4/7701effb-f332-430a-8da4-f36a292513cd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/54cf5e37-ad29-4af9-b2fd-f8dca7c2c8f4/7701effb-f332-430a-8da4-f36a292513cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          0                    NA                0.2746107   0.1574937   0.3917277
Birth       IRC              INDIA                          1                    NA                0.2560207   0.2043478   0.3076937
Birth       JiVitA-3         BANGLADESH                     0                    NA                0.2168414   0.1888892   0.2447935
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.1067475   0.1015107   0.1119844
Birth       JiVitA-4         BANGLADESH                     0                    NA                0.2023152   0.0752736   0.3293568
Birth       JiVitA-4         BANGLADESH                     1                    NA                0.0968425   0.0814657   0.1122193
Birth       NIH-Crypto       BANGLADESH                     0                    NA                0.1818732   0.1272164   0.2365301
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.2149513   0.1666439   0.2632587
Birth       PROBIT           BELARUS                        0                    NA                0.1872035   0.1201304   0.2542767
Birth       PROBIT           BELARUS                        1                    NA                0.2132346   0.1470076   0.2794616
Birth       PROVIDE          BANGLADESH                     0                    NA                0.2157304   0.1363775   0.2950834
Birth       PROVIDE          BANGLADESH                     1                    NA                0.2207879   0.1813025   0.2602733
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.1768775   0.1536624   0.2000927
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1585181   0.1519005   0.1651358
6 months    IRC              INDIA                          0                    NA                0.1029412   0.0306257   0.1752567
6 months    IRC              INDIA                          1                    NA                0.1382353   0.1015032   0.1749674
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0797559   0.0600326   0.0994792
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0852118   0.0803190   0.0901045
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0418920   0.0159874   0.0677967
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.0545417   0.0442830   0.0648004
6 months    PROBIT           BELARUS                        0                    NA                0.0055001   0.0000065   0.0109938
6 months    PROBIT           BELARUS                        1                    NA                0.0070198   0.0054235   0.0086160
6 months    PROVIDE          BANGLADESH                     0                    NA                0.0359712   0.0049882   0.0669542
6 months    PROVIDE          BANGLADESH                     1                    NA                0.0431034   0.0246091   0.0615978
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0423280   0.0136171   0.0710390
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0429752   0.0336429   0.0523075
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0323734   0.0187646   0.0459821
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0309599   0.0270883   0.0348315
24 months   IRC              INDIA                          0                    NA                0.0724638   0.0112173   0.1337102
24 months   IRC              INDIA                          1                    NA                0.0764706   0.0481884   0.1047528
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.1809193   0.1369609   0.2248776
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2205674   0.2101513   0.2309834
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.2003945   0.1479117   0.2528773
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.2031576   0.1877203   0.2185948
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0909091   0.0341710   0.1476472
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1118012   0.0630315   0.1605710
24 months   PROVIDE          BANGLADESH                     0                    NA                0.0811799   0.0332818   0.1290779
24 months   PROVIDE          BANGLADESH                     1                    NA                0.1146564   0.0848740   0.1444389


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1094801   0.1043667   0.1145935
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.0997912   0.0844161   0.1151664
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2043011   0.1676152   0.2409869
Birth       PROBIT           BELARUS                        NA                   NA                0.2103206   0.1450833   0.2755580
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1597472   0.1534034   0.1660909
6 months    IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0847650   0.0799741   0.0895560
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0535010   0.0438560   0.0631459
6 months    PROBIT           BELARUS                        NA                   NA                0.0068541   0.0051915   0.0085167
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429142   0.0340389   0.0517895
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0310537   0.0273521   0.0347553
24 months   IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2182350   0.2083008   0.2281691
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2023453   0.1877652   0.2169254
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1038462   0.0666939   0.1409984
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          1                    0                 0.9323043   0.5793403   1.5003121
Birth       JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 0.4922840   0.4279758   0.5662552
Birth       JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 0.4786715   0.2496306   0.9178618
Birth       NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 1.1818741   0.8119238   1.7203910
Birth       PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        1                    0                 1.1390523   0.9456230   1.3720481
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 1.0234436   0.6802249   1.5398387
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 0.8962028   0.7809538   1.0284596
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          1                    0                 1.3428571   0.6336429   2.8458702
6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 1.0684072   0.8306218   1.3742644
6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 1.3019585   0.6813301   2.4879219
6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        1                    0                 1.2762867   0.4791390   3.3996556
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.1982759   0.4577659   3.1366798
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0152893   0.4980591   2.0696586
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 0.9563386   0.6167976   1.4827935
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          1                    0                 1.0552941   0.4194722   2.6548739
24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 1.2191480   0.9502334   1.5641651
24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 1.0137880   0.7716461   1.3319138
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.2298137   0.5743075   2.6335048
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 1.4123752   0.7412080   2.6912875


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          0                    NA                -0.0063891   -0.1125356    0.0997573
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.1073612   -0.1350709   -0.0796516
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.1025240   -0.2267703    0.0217223
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0224278   -0.0214686    0.0663243
Birth       PROBIT           BELARUS                        0                    NA                 0.0231171   -0.0085807    0.0548149
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0041944   -0.0667059    0.0750947
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0171304   -0.0393152    0.0050544
6 months    IRC              INDIA                          0                    NA                 0.0294118   -0.0381917    0.0970152
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0050091   -0.0142384    0.0242567
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0116089   -0.0140378    0.0372557
6 months    PROBIT           BELARUS                        0                    NA                 0.0013539   -0.0034474    0.0061553
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0054881   -0.0222783    0.0332546
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005861   -0.0267563    0.0279285
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0013197   -0.0143160    0.0116767
24 months   IRC              INDIA                          0                    NA                 0.0033309   -0.0527495    0.0594112
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0373157   -0.0063274    0.0809588
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0019508   -0.0490567    0.0529583
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0129371   -0.0334089    0.0592830
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0259013   -0.0177900    0.0695926


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          0                    NA                -0.0238203   -0.5068131    0.3043543
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.9806460   -1.2575904   -0.7376752
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.0273845   -2.7295645   -0.1020825
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.1097783   -0.1321568    0.3000134
Birth       PROBIT           BELARUS                        0                    NA                 0.1099135   -0.0514185    0.2464904
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0190719   -0.3626468    0.2938596
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.1072344   -0.2551559    0.0232543
6 months    IRC              INDIA                          0                    NA                 0.2222222   -0.4955071    0.5954962
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0590945   -0.1976480    0.2607986
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.2169855   -0.4355713    0.5729145
6 months    PROBIT           BELARUS                        0                    NA                 0.1975385   -0.9562915    0.6708341
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.1323741   -0.8735818    0.5982163
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0136582   -0.8817567    0.4829989
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0424960   -0.5573243    0.3021377
24 months   IRC              INDIA                          0                    NA                 0.0439458   -1.0726677    0.5590033
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.1709886   -0.0545571    0.3482952
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0096409   -0.2773918    0.2321767
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.1245791   -0.4545902    0.4731425
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.2418847   -0.2943187    0.5559527

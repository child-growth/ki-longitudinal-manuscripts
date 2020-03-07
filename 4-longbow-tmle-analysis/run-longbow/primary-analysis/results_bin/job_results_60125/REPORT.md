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

agecat      studyid          country                        vagbrth    stunted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                0        9      92
Birth       CMC-V-BCS-2002   INDIA                          0                1        2      92
Birth       CMC-V-BCS-2002   INDIA                          1                0       66      92
Birth       CMC-V-BCS-2002   INDIA                          1                1       15      92
Birth       IRC              INDIA                          0                0       58     388
Birth       IRC              INDIA                          0                1       10     388
Birth       IRC              INDIA                          1                0      285     388
Birth       IRC              INDIA                          1                1       35     388
Birth       JiVitA-3         BANGLADESH                     0                0      418   22418
Birth       JiVitA-3         BANGLADESH                     0                1      121   22418
Birth       JiVitA-3         BANGLADESH                     1                0    14626   22418
Birth       JiVitA-3         BANGLADESH                     1                1     7253   22418
Birth       JiVitA-4         BANGLADESH                     0                0       57    2822
Birth       JiVitA-4         BANGLADESH                     0                1       19    2822
Birth       JiVitA-4         BANGLADESH                     1                0     1908    2822
Birth       JiVitA-4         BANGLADESH                     1                1      838    2822
Birth       NIH-Crypto       BANGLADESH                     0                0      160     477
Birth       NIH-Crypto       BANGLADESH                     0                1       26     477
Birth       NIH-Crypto       BANGLADESH                     1                0      253     477
Birth       NIH-Crypto       BANGLADESH                     1                1       38     477
Birth       PROBIT           BELARUS                        0                0     1595   13893
Birth       PROBIT           BELARUS                        0                1        2   13893
Birth       PROBIT           BELARUS                        1                0    12264   13893
Birth       PROBIT           BELARUS                        1                1       32   13893
Birth       PROVIDE          BANGLADESH                     0                0       98     539
Birth       PROVIDE          BANGLADESH                     0                1       10     539
Birth       PROVIDE          BANGLADESH                     1                0      393     539
Birth       PROVIDE          BANGLADESH                     1                1       38     539
Birth       ZVITAMBO         ZIMBABWE                       0                0     1076   13761
Birth       ZVITAMBO         ZIMBABWE                       0                1       90   13761
Birth       ZVITAMBO         ZIMBABWE                       1                0    11273   13761
Birth       ZVITAMBO         ZIMBABWE                       1                1     1322   13761
6 months    CMC-V-BCS-2002   INDIA                          0                0       17     369
6 months    CMC-V-BCS-2002   INDIA                          0                1        8     369
6 months    CMC-V-BCS-2002   INDIA                          1                0      241     369
6 months    CMC-V-BCS-2002   INDIA                          1                1      103     369
6 months    IRC              INDIA                          0                0       50     407
6 months    IRC              INDIA                          0                1       19     407
6 months    IRC              INDIA                          1                0      257     407
6 months    IRC              INDIA                          1                1       81     407
6 months    JiVitA-3         BANGLADESH                     0                0      909   16732
6 months    JiVitA-3         BANGLADESH                     0                1      168   16732
6 months    JiVitA-3         BANGLADESH                     1                0    11614   16732
6 months    JiVitA-3         BANGLADESH                     1                1     4041   16732
6 months    JiVitA-4         BANGLADESH                     0                0      281    4052
6 months    JiVitA-4         BANGLADESH                     0                1       55    4052
6 months    JiVitA-4         BANGLADESH                     1                0     2758    4052
6 months    JiVitA-4         BANGLADESH                     1                1      958    4052
6 months    NIH-Crypto       BANGLADESH                     0                0      151     457
6 months    NIH-Crypto       BANGLADESH                     0                1       36     457
6 months    NIH-Crypto       BANGLADESH                     1                0      198     457
6 months    NIH-Crypto       BANGLADESH                     1                1       72     457
6 months    PROBIT           BELARUS                        0                0     1725   15760
6 months    PROBIT           BELARUS                        0                1       74   15760
6 months    PROBIT           BELARUS                        1                0    13415   15760
6 months    PROBIT           BELARUS                        1                1      546   15760
6 months    PROVIDE          BANGLADESH                     0                0      117     604
6 months    PROVIDE          BANGLADESH                     0                1       22     604
6 months    PROVIDE          BANGLADESH                     1                0      391     604
6 months    PROVIDE          BANGLADESH                     1                1       74     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      172    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1636    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      180    2005
6 months    ZVITAMBO         ZIMBABWE                       0                0      628    8601
6 months    ZVITAMBO         ZIMBABWE                       0                1      112    8601
6 months    ZVITAMBO         ZIMBABWE                       1                0     6568    8601
6 months    ZVITAMBO         ZIMBABWE                       1                1     1293    8601
24 months   CMC-V-BCS-2002   INDIA                          0                0        8     371
24 months   CMC-V-BCS-2002   INDIA                          0                1       16     371
24 months   CMC-V-BCS-2002   INDIA                          1                0       97     371
24 months   CMC-V-BCS-2002   INDIA                          1                1      250     371
24 months   IRC              INDIA                          0                0       42     409
24 months   IRC              INDIA                          0                1       27     409
24 months   IRC              INDIA                          1                0      195     409
24 months   IRC              INDIA                          1                1      145     409
24 months   JiVitA-3         BANGLADESH                     0                0      324    8584
24 months   JiVitA-3         BANGLADESH                     0                1      156    8584
24 months   JiVitA-3         BANGLADESH                     1                0     4043    8584
24 months   JiVitA-3         BANGLADESH                     1                1     4061    8584
24 months   JiVitA-4         BANGLADESH                     0                0      237    4020
24 months   JiVitA-4         BANGLADESH                     0                1       86    4020
24 months   JiVitA-4         BANGLADESH                     1                0     2177    4020
24 months   JiVitA-4         BANGLADESH                     1                1     1520    4020
24 months   NIH-Crypto       BANGLADESH                     0                0       75     260
24 months   NIH-Crypto       BANGLADESH                     0                1       24     260
24 months   NIH-Crypto       BANGLADESH                     1                0      104     260
24 months   NIH-Crypto       BANGLADESH                     1                1       57     260
24 months   PROBIT           BELARUS                        0                0      439    4035
24 months   PROBIT           BELARUS                        0                1       33    4035
24 months   PROBIT           BELARUS                        1                0     3321    4035
24 months   PROBIT           BELARUS                        1                1      242    4035
24 months   PROVIDE          BANGLADESH                     0                0       99     578
24 months   PROVIDE          BANGLADESH                     0                1       38     578
24 months   PROVIDE          BANGLADESH                     1                0      289     578
24 months   PROVIDE          BANGLADESH                     1                1      152     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1       6
24 months   ZVITAMBO         ZIMBABWE                       0                0       96    1619
24 months   ZVITAMBO         ZIMBABWE                       0                1       37    1619
24 months   ZVITAMBO         ZIMBABWE                       1                0      962    1619
24 months   ZVITAMBO         ZIMBABWE                       1                1      524    1619


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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/00ac9538-e6f9-4928-bf9f-dc40c3989fbe/1dee97cb-0be4-433f-94b1-276eededd12f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/00ac9538-e6f9-4928-bf9f-dc40c3989fbe/1dee97cb-0be4-433f-94b1-276eededd12f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/00ac9538-e6f9-4928-bf9f-dc40c3989fbe/1dee97cb-0be4-433f-94b1-276eededd12f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/00ac9538-e6f9-4928-bf9f-dc40c3989fbe/1dee97cb-0be4-433f-94b1-276eededd12f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          0                    NA                0.1545206   0.0679178   0.2411233
Birth       IRC              INDIA                          1                    NA                0.1085884   0.0744325   0.1427442
Birth       JiVitA-3         BANGLADESH                     0                    NA                0.2640533   0.2371275   0.2909792
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.3307995   0.3232932   0.3383057
Birth       JiVitA-4         BANGLADESH                     0                    NA                0.2219526   0.1234773   0.3204279
Birth       JiVitA-4         BANGLADESH                     1                    NA                0.3048905   0.2843334   0.3254476
Birth       NIH-Crypto       BANGLADESH                     0                    NA                0.1414037   0.0915959   0.1912115
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.1305910   0.0919839   0.1691981
Birth       PROVIDE          BANGLADESH                     0                    NA                0.0931104   0.0376202   0.1486006
Birth       PROVIDE          BANGLADESH                     1                    NA                0.0881923   0.0614336   0.1149509
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.0761324   0.0602011   0.0920636
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1053901   0.1000280   0.1107521
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2994186   0.2509538   0.3478835
6 months    IRC              INDIA                          0                    NA                0.2871959   0.1755868   0.3988050
6 months    IRC              INDIA                          1                    NA                0.2373263   0.1919134   0.2827391
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.1909360   0.1583389   0.2235332
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2554011   0.2470907   0.2637116
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.1938895   0.1370679   0.2507112
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.2548719   0.2377671   0.2719767
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.2001692   0.1438119   0.2565266
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2618925   0.2092809   0.3145041
6 months    PROBIT           BELARUS                        0                    NA                0.0449627   0.0320125   0.0579128
6 months    PROBIT           BELARUS                        1                    NA                0.0390781   0.0287602   0.0493960
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1571941   0.0954678   0.2189204
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1593994   0.1261562   0.1926425
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0907439   0.0498007   0.1316871
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0991318   0.0853812   0.1128825
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1386279   0.1123877   0.1648681
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1662664   0.1580400   0.1744928
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6666667   0.4778144   0.8555190
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7204611   0.6731791   0.7677431
24 months   IRC              INDIA                          0                    NA                0.4093357   0.2909846   0.5276869
24 months   IRC              INDIA                          1                    NA                0.4219724   0.3695315   0.4744132
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.4110467   0.3586676   0.4634258
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4966815   0.4831548   0.5102082
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3014473   0.2152886   0.3876060
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.4065073   0.3872547   0.4257599
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2527515   0.1698754   0.3356275
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3453724   0.2722523   0.4184925
24 months   PROBIT           BELARUS                        0                    NA                0.0690614   0.0161378   0.1219849
24 months   PROBIT           BELARUS                        1                    NA                0.0681032   0.0434628   0.0927436
24 months   PROVIDE          BANGLADESH                     0                    NA                0.3350612   0.2543130   0.4158094
24 months   PROVIDE          BANGLADESH                     1                    NA                0.3264954   0.2829742   0.3700166
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.2682644   0.1922860   0.3442428
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3537866   0.3295223   0.3780510


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3289321   0.3215578   0.3363064
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.3036853   0.2836812   0.3236894
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1341719   0.1035529   0.1647909
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1026088   0.0975387   0.1076790
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2515539   0.2434271   0.2596807
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2500000   0.2338924   0.2661076
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2363239   0.1973320   0.2753157
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0982544   0.0852222   0.1112865
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1633531   0.1555398   0.1711664
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4912628   0.4781447   0.5043809
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3995025   0.3807924   0.4182126
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3115385   0.2551365   0.3679404
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3465102   0.3233236   0.3696967


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       IRC              INDIA                          1                    0                 0.7027437   0.3691053   1.337962
Birth       JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 1.2527752   1.1303870   1.388414
Birth       JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 1.3736742   0.8749487   2.156676
Birth       NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 0.9235333   0.5828159   1.463436
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     1                    0                 0.9471798   0.4855180   1.847819
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 1.3843009   1.1160953   1.716958
6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 0.9356831   0.5162674   1.695832
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA                          1                    0                 0.8263567   0.5355991   1.274956
6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 1.3376267   1.1255108   1.589718
6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 1.3145214   0.9730458   1.775833
6 months    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 1.3083554   0.9283969   1.843817
6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        1                    0                 0.8691233   0.6776763   1.114655
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.0140288   0.6505987   1.580474
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0924352   0.6811225   1.752129
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.1993721   0.9865806   1.458060
24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 1.0806916   0.8080108   1.445395
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   IRC              INDIA                          1                    0                 1.0308710   0.7533449   1.410635
24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 1.2083335   1.0625490   1.374120
24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 1.3485187   1.0098638   1.800740
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.3664507   0.9315944   2.004292
24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        1                    0                 0.9861264   0.5371494   1.810381
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     1                    0                 0.9744350   0.7437779   1.276622
24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.3187982   0.9860271   1.763875


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA                          0                    NA                -0.0385412   -0.1158547   0.0387724
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0648788    0.0383463   0.0914113
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0817328   -0.0167564   0.1802219
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0072318   -0.0457568   0.0312933
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0040566   -0.0534752   0.0453620
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0264765    0.0110063   0.0419466
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0191870   -0.1957642   0.1573902
6 months    IRC              INDIA                          0                    NA                -0.0414957   -0.1428626   0.0598713
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0606179    0.0285735   0.0926623
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0561105    0.0002030   0.1120180
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0361546   -0.0092401   0.0815493
6 months    PROBIT           BELARUS                        0                    NA                -0.0056226   -0.0151969   0.0039518
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0017463   -0.0523289   0.0558214
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0075105   -0.0316375   0.0466584
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0247252   -0.0005099   0.0499603
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0503145   -0.1317778   0.2324068
24 months   IRC              INDIA                          0                    NA                 0.0112021   -0.0964713   0.1188756
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0802161    0.0289280   0.1315042
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0980552    0.0150784   0.1810319
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0587870   -0.0088425   0.1264164
24 months   PROBIT           BELARUS                        0                    NA                -0.0009077   -0.0378915   0.0360761
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0063415   -0.0785431   0.0658602
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0782458    0.0051377   0.1513539


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA                          0                    NA                -0.3323106   -1.1922646   0.1903115
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.1972406    0.1126695   0.2737513
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.2691363   -0.1369967   0.5301994
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0538993   -0.3838947   0.1974074
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0455520   -0.7773843   0.3849507
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.2580331    0.0913121   0.3941650
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637838   -0.8471227   0.3873521
6 months    IRC              INDIA                          0                    NA                -0.1688874   -0.6630020   0.1784149
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.2409737    0.1025292   0.3580616
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.2244419   -0.0337124   0.4181260
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.1529876   -0.0610792   0.3238676
6 months    PROBIT           BELARUS                        0                    NA                -0.1429216   -0.4228999   0.0819664
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0109870   -0.3951235   0.2988817
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0764390   -0.4215559   0.3999780
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.1513605   -0.0180736   0.2925964
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0701754   -0.2220596   0.2925274
24 months   IRC              INDIA                          0                    NA                 0.0266377   -0.2663009   0.2518096
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.1632855    0.0522056   0.2613471
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.2454433    0.0050098   0.4277774
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.1886990   -0.0585207   0.3781800
24 months   PROBIT           BELARUS                        0                    NA                -0.0133185   -0.7277397   0.4056892
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0192915   -0.2644933   0.1783625
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.2258110   -0.0167903   0.4105287

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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hdlvry    stunted   n_cell      n
----------  ---------------  -----------------------------  -------  --------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0               0       75     92
Birth       CMC-V-BCS-2002   INDIA                          0               1       17     92
Birth       CMC-V-BCS-2002   INDIA                          1               0        0     92
Birth       CMC-V-BCS-2002   INDIA                          1               1        0     92
Birth       COHORTS          INDIA                          0               0     2613   4694
Birth       COHORTS          INDIA                          0               1      325   4694
Birth       COHORTS          INDIA                          1               0     1534   4694
Birth       COHORTS          INDIA                          1               1      222   4694
Birth       EE               PAKISTAN                       0               0       93    238
Birth       EE               PAKISTAN                       0               1       68    238
Birth       EE               PAKISTAN                       1               0       46    238
Birth       EE               PAKISTAN                       1               1       31    238
Birth       GMS-Nepal        NEPAL                          0               0      125    646
Birth       GMS-Nepal        NEPAL                          0               1       32    646
Birth       GMS-Nepal        NEPAL                          1               0      408    646
Birth       GMS-Nepal        NEPAL                          1               1       81    646
Birth       IRC              INDIA                          0               0      337    388
Birth       IRC              INDIA                          0               1       44    388
Birth       IRC              INDIA                          1               0        6    388
Birth       IRC              INDIA                          1               1        1    388
Birth       JiVitA-3         BANGLADESH                     0               0       23    334
Birth       JiVitA-3         BANGLADESH                     0               1        7    334
Birth       JiVitA-3         BANGLADESH                     1               0      220    334
Birth       JiVitA-3         BANGLADESH                     1               1       84    334
Birth       JiVitA-4         BANGLADESH                     0               0      420   2808
Birth       JiVitA-4         BANGLADESH                     0               1      134   2808
Birth       JiVitA-4         BANGLADESH                     1               0     1535   2808
Birth       JiVitA-4         BANGLADESH                     1               1      719   2808
Birth       NIH-Crypto       BANGLADESH                     0               0      495    732
Birth       NIH-Crypto       BANGLADESH                     0               1       72    732
Birth       NIH-Crypto       BANGLADESH                     1               0      136    732
Birth       NIH-Crypto       BANGLADESH                     1               1       29    732
Birth       PROVIDE          BANGLADESH                     0               0      355    539
Birth       PROVIDE          BANGLADESH                     0               1       36    539
Birth       PROVIDE          BANGLADESH                     1               0      136    539
Birth       PROVIDE          BANGLADESH                     1               1       12    539
Birth       SAS-CompFeed     INDIA                          0               0       85   1085
Birth       SAS-CompFeed     INDIA                          0               1       39   1085
Birth       SAS-CompFeed     INDIA                          1               0      692   1085
Birth       SAS-CompFeed     INDIA                          1               1      269   1085
6 months    CMC-V-BCS-2002   INDIA                          0               0      249    366
6 months    CMC-V-BCS-2002   INDIA                          0               1      109    366
6 months    CMC-V-BCS-2002   INDIA                          1               0        7    366
6 months    CMC-V-BCS-2002   INDIA                          1               1        1    366
6 months    COHORTS          INDIA                          0               0     2457   4699
6 months    COHORTS          INDIA                          0               1      443   4699
6 months    COHORTS          INDIA                          1               0     1323   4699
6 months    COHORTS          INDIA                          1               1      476   4699
6 months    EE               PAKISTAN                       0               0      131    371
6 months    EE               PAKISTAN                       0               1      119    371
6 months    EE               PAKISTAN                       1               0       58    371
6 months    EE               PAKISTAN                       1               1       63    371
6 months    GMS-Nepal        NEPAL                          0               0      110    528
6 months    GMS-Nepal        NEPAL                          0               1       19    528
6 months    GMS-Nepal        NEPAL                          1               0      311    528
6 months    GMS-Nepal        NEPAL                          1               1       88    528
6 months    IRC              INDIA                          0               0      303    407
6 months    IRC              INDIA                          0               1       96    407
6 months    IRC              INDIA                          1               0        4    407
6 months    IRC              INDIA                          1               1        4    407
6 months    JiVitA-3         BANGLADESH                     0               0       34    332
6 months    JiVitA-3         BANGLADESH                     0               1        5    332
6 months    JiVitA-3         BANGLADESH                     1               0      220    332
6 months    JiVitA-3         BANGLADESH                     1               1       73    332
6 months    JiVitA-4         BANGLADESH                     0               0      860   4038
6 months    JiVitA-4         BANGLADESH                     0               1      221   4038
6 months    JiVitA-4         BANGLADESH                     1               0     2173   4038
6 months    JiVitA-4         BANGLADESH                     1               1      784   4038
6 months    NIH-Crypto       BANGLADESH                     0               0      449    715
6 months    NIH-Crypto       BANGLADESH                     0               1      105    715
6 months    NIH-Crypto       BANGLADESH                     1               0      116    715
6 months    NIH-Crypto       BANGLADESH                     1               1       45    715
6 months    PROVIDE          BANGLADESH                     0               0      379    604
6 months    PROVIDE          BANGLADESH                     0               1       71    604
6 months    PROVIDE          BANGLADESH                     1               0      129    604
6 months    PROVIDE          BANGLADESH                     1               1       25    604
6 months    SAS-CompFeed     INDIA                          0               0      109   1091
6 months    SAS-CompFeed     INDIA                          0               1       38   1091
6 months    SAS-CompFeed     INDIA                          1               0      655   1091
6 months    SAS-CompFeed     INDIA                          1               1      289   1091
6 months    SAS-FoodSuppl    INDIA                          0               0       45    380
6 months    SAS-FoodSuppl    INDIA                          0               1       31    380
6 months    SAS-FoodSuppl    INDIA                          1               0      172    380
6 months    SAS-FoodSuppl    INDIA                          1               1      132    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1707   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      182   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       27   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5   1921
24 months   CMC-V-BCS-2002   INDIA                          0               0      101    368
24 months   CMC-V-BCS-2002   INDIA                          0               1      259    368
24 months   CMC-V-BCS-2002   INDIA                          1               0        3    368
24 months   CMC-V-BCS-2002   INDIA                          1               1        5    368
24 months   COHORTS          INDIA                          0               0     1155   3556
24 months   COHORTS          INDIA                          0               1     1078   3556
24 months   COHORTS          INDIA                          1               0      377   3556
24 months   COHORTS          INDIA                          1               1      946   3556
24 months   EE               PAKISTAN                       0               0       34    166
24 months   EE               PAKISTAN                       0               1       78    166
24 months   EE               PAKISTAN                       1               0       14    166
24 months   EE               PAKISTAN                       1               1       40    166
24 months   GMS-Nepal        NEPAL                          0               0       71    456
24 months   GMS-Nepal        NEPAL                          0               1       47    456
24 months   GMS-Nepal        NEPAL                          1               0      181    456
24 months   GMS-Nepal        NEPAL                          1               1      157    456
24 months   IRC              INDIA                          0               0      234    409
24 months   IRC              INDIA                          0               1      167    409
24 months   IRC              INDIA                          1               0        3    409
24 months   IRC              INDIA                          1               1        5    409
24 months   JiVitA-3         BANGLADESH                     0               0       21    291
24 months   JiVitA-3         BANGLADESH                     0               1       14    291
24 months   JiVitA-3         BANGLADESH                     1               0      115    291
24 months   JiVitA-3         BANGLADESH                     1               1      141    291
24 months   JiVitA-4         BANGLADESH                     0               0      689   4005
24 months   JiVitA-4         BANGLADESH                     0               1      344   4005
24 months   JiVitA-4         BANGLADESH                     1               0     1717   4005
24 months   JiVitA-4         BANGLADESH                     1               1     1255   4005
24 months   NIH-Crypto       BANGLADESH                     0               0      302    514
24 months   NIH-Crypto       BANGLADESH                     0               1       89    514
24 months   NIH-Crypto       BANGLADESH                     1               0       80    514
24 months   NIH-Crypto       BANGLADESH                     1               1       43    514
24 months   PROVIDE          BANGLADESH                     0               0      295    578
24 months   PROVIDE          BANGLADESH                     0               1      138    578
24 months   PROVIDE          BANGLADESH                     1               0       93    578
24 months   PROVIDE          BANGLADESH                     1               1       52    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/a177d260-f1a4-49a7-870c-1193b895596a/d93c4c59-d983-4b38-95ad-27c321be7de1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a177d260-f1a4-49a7-870c-1193b895596a/d93c4c59-d983-4b38-95ad-27c321be7de1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a177d260-f1a4-49a7-870c-1193b895596a/d93c4c59-d983-4b38-95ad-27c321be7de1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a177d260-f1a4-49a7-870c-1193b895596a/d93c4c59-d983-4b38-95ad-27c321be7de1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          0                    NA                0.1182522   0.1050275   0.1314770
Birth       COHORTS          INDIA                          1                    NA                0.1247895   0.1066092   0.1429698
Birth       EE               PAKISTAN                       0                    NA                0.4230464   0.3464034   0.4996895
Birth       EE               PAKISTAN                       1                    NA                0.4076450   0.2956338   0.5196561
Birth       GMS-Nepal        NEPAL                          0                    NA                0.2259596   0.1581173   0.2938019
Birth       GMS-Nepal        NEPAL                          1                    NA                0.1643076   0.1310537   0.1975616
Birth       JiVitA-3         BANGLADESH                     0                    NA                0.2333333   0.1228972   0.3437694
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.2763158   0.2043428   0.3482888
Birth       JiVitA-4         BANGLADESH                     0                    NA                0.2405307   0.1927093   0.2883521
Birth       JiVitA-4         BANGLADESH                     1                    NA                0.3191092   0.2961921   0.3420262
Birth       NIH-Crypto       BANGLADESH                     0                    NA                0.1271094   0.0996493   0.1545694
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.1636453   0.1059862   0.2213043
Birth       PROVIDE          BANGLADESH                     0                    NA                0.0924316   0.0637653   0.1210978
Birth       PROVIDE          BANGLADESH                     1                    NA                0.0808945   0.0367063   0.1250826
Birth       SAS-CompFeed     INDIA                          0                    NA                0.2944865   0.2312328   0.3577403
Birth       SAS-CompFeed     INDIA                          1                    NA                0.2788971   0.2426333   0.3151609
6 months    COHORTS          INDIA                          0                    NA                0.1794439   0.1633793   0.1955084
6 months    COHORTS          INDIA                          1                    NA                0.2237785   0.2025892   0.2449678
6 months    EE               PAKISTAN                       0                    NA                0.4718582   0.4097663   0.5339501
6 months    EE               PAKISTAN                       1                    NA                0.5331870   0.4440480   0.6223260
6 months    GMS-Nepal        NEPAL                          0                    NA                0.1623890   0.0927961   0.2319819
6 months    GMS-Nepal        NEPAL                          1                    NA                0.2208663   0.1798937   0.2618388
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.1282051   0.0052540   0.2511562
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2491468   0.1752336   0.3230600
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.2188747   0.1877663   0.2499832
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.2597228   0.2399843   0.2794613
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.1907954   0.1581034   0.2234873
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2720454   0.2016648   0.3424261
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1584877   0.1247792   0.1921961
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1737290   0.1155728   0.2318852
6 months    SAS-CompFeed     INDIA                          0                    NA                0.2858538   0.2567494   0.3149583
6 months    SAS-CompFeed     INDIA                          1                    NA                0.3049065   0.2833263   0.3264868
6 months    SAS-FoodSuppl    INDIA                          0                    NA                0.4427692   0.3224504   0.5630880
6 months    SAS-FoodSuppl    INDIA                          1                    NA                0.4393015   0.3827468   0.4958562
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0963473   0.0829238   0.1097708
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562500   0.0724034   0.2400966
24 months   COHORTS          INDIA                          0                    NA                0.5461748   0.5250041   0.5673455
24 months   COHORTS          INDIA                          1                    NA                0.6318826   0.6017282   0.6620369
24 months   EE               PAKISTAN                       0                    NA                0.6997500   0.6147648   0.7847353
24 months   EE               PAKISTAN                       1                    NA                0.7287143   0.6075487   0.8498799
24 months   GMS-Nepal        NEPAL                          0                    NA                0.3959806   0.3028122   0.4891490
24 months   GMS-Nepal        NEPAL                          1                    NA                0.4644112   0.4109942   0.5178282
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.5069327   0.3120690   0.7017964
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.5423682   0.4753175   0.6094189
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3574035   0.3172986   0.3975083
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.4100986   0.3886139   0.4315833
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2326672   0.1912127   0.2741216
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3349369   0.2508455   0.4190282
24 months   PROVIDE          BANGLADESH                     0                    NA                0.3253931   0.2813581   0.3694282
24 months   PROVIDE          BANGLADESH                     1                    NA                0.3448217   0.2659582   0.4236852


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          NA                   NA                0.1165317   0.1073518   0.1257117
Birth       EE               PAKISTAN                       NA                   NA                0.4159664   0.3532152   0.4787176
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1749226   0.1456043   0.2042409
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.2724551   0.2076543   0.3372559
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.3037749   0.2834613   0.3240886
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2838710   0.2475589   0.3201830
6 months    COHORTS          INDIA                          NA                   NA                0.1955735   0.1842315   0.2069155
6 months    EE               PAKISTAN                       NA                   NA                0.4905660   0.4396283   0.5415038
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2026515   0.1683319   0.2369711
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2349398   0.1664503   0.3034292
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2488856   0.2328153   0.2649558
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2997250   0.2767096   0.3227405
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0973451   0.0840860   0.1106043
24 months   COHORTS          INDIA                          NA                   NA                0.5691789   0.5529008   0.5854569
24 months   EE               PAKISTAN                       NA                   NA                0.7108434   0.6416667   0.7800200
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4473684   0.4016814   0.4930554
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.5326460   0.4663548   0.5989373
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3992509   0.3804088   0.4180930
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          1                    0                 1.0552819   0.8784438   1.267719
Birth       EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
Birth       EE               PAKISTAN                       1                    0                 0.9635940   0.6937304   1.338435
Birth       GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal        NEPAL                          1                    0                 0.7271548   0.5062300   1.044494
Birth       JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 1.1842105   0.6662901   2.104721
Birth       JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 1.3266877   1.0725140   1.641098
Birth       NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 1.2874365   0.8519131   1.945612
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     1                    0                 0.8751820   0.4674608   1.638519
Birth       SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          1                    0                 0.9470623   0.7738585   1.159032
6 months    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          1                    0                 1.2470670   1.0958792   1.419113
6 months    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6 months    EE               PAKISTAN                       1                    0                 1.1299729   0.9135181   1.397716
6 months    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal        NEPAL                          1                    0                 1.3601056   0.8521613   2.170818
6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 1.9433447   0.7402346   5.101881
6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 1.1866277   1.0112542   1.392415
6 months    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 1.4258494   1.0450625   1.945383
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.0961672   0.7372223   1.629878
6 months    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          1                    0                 1.0666520   0.9610709   1.183832
6 months    SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 0.9921682   0.7339194   1.341289
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6217376   0.9315439   2.823306
24 months   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          1                    0                 1.1569236   1.0897193   1.228273
24 months   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
24 months   EE               PAKISTAN                       1                    0                 1.0413922   0.8475673   1.279542
24 months   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal        NEPAL                          1                    0                 1.1728130   0.9027016   1.523749
24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 1.0699018   0.7296163   1.568893
24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 1.1474389   1.0152957   1.296781
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.4395536   1.0597862   1.955408
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     1                    0                 1.0597080   0.8142012   1.379243


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA                          0                    NA                -0.0017205   -0.0110135   0.0075725
Birth       EE               PAKISTAN                       0                    NA                -0.0070800   -0.0506417   0.0364816
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0510370   -0.1102149   0.0081408
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0391218   -0.0892717   0.1675152
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0632442    0.0199747   0.1065137
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0108687   -0.0036582   0.0253957
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0033778   -0.0178126   0.0110570
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0106156   -0.0612347   0.0400036
6 months    COHORTS          INDIA                          0                    NA                 0.0161297    0.0041112   0.0281482
6 months    EE               PAKISTAN                       0                    NA                 0.0187078   -0.0173537   0.0547693
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0402625   -0.0236030   0.1041279
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.1067346   -0.0122702   0.2257395
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0300108    0.0027828   0.0572389
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0189949    0.0014270   0.0365627
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0004527   -0.0167147   0.0176201
6 months    SAS-CompFeed     INDIA                          0                    NA                 0.0138712   -0.0112694   0.0390118
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0138218   -0.1238326   0.0961890
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009979   -0.0011525   0.0031482
24 months   COHORTS          INDIA                          0                    NA                 0.0230040    0.0098789   0.0361292
24 months   EE               PAKISTAN                       0                    NA                 0.0110933   -0.0362267   0.0584134
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0513878   -0.0300332   0.1328089
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0257133   -0.1509024   0.2023290
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0418475    0.0072187   0.0764763
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0241422    0.0015489   0.0467355
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0033266   -0.0192279   0.0258811


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA                          0                    NA                -0.0147643   -0.0977058   0.0619103
Birth       EE               PAKISTAN                       0                    NA                -0.0170207   -0.1273410   0.0825038
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.2917693   -0.6786925   0.0059717
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.1435897   -0.4564758   0.4964293
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.2081943    0.0513075   0.3391365
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0787715   -0.0320407   0.1776856
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0379298   -0.2131525   0.1119845
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0373958   -0.2318464   0.1263602
6 months    COHORTS          INDIA                          0                    NA                 0.0824737    0.0189991   0.1418413
6 months    EE               PAKISTAN                       0                    NA                 0.0381352   -0.0383256   0.1089656
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.1986784   -0.1853891   0.4583075
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.4543064   -0.3476061   0.7790292
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.1205809    0.0040927   0.2234438
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0905421    0.0035155   0.1699684
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0028484   -0.1112256   0.1052119
6 months    SAS-CompFeed     INDIA                          0                    NA                 0.0462798   -0.0404203   0.1257549
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0322226   -0.3234442   0.1949161
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0102507   -0.0121270   0.0321337
24 months   COHORTS          INDIA                          0                    NA                 0.0404162    0.0170171   0.0632582
24 months   EE               PAKISTAN                       0                    NA                 0.0156059   -0.0533331   0.0800329
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.1148669   -0.0875893   0.2796356
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0482747   -0.3493474   0.3287265
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.1048150    0.0133585   0.1877939
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0940082    0.0023959   0.1772075
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0101198   -0.0609098   0.0763939

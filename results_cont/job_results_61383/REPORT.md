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

**Intervention Variable:** predfeed6

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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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

agecat      studyid         country                        predfeed6    n_cell       n  outcome_variable 
----------  --------------  -----------------------------  ----------  -------  ------  -----------------
Birth       EE              PAKISTAN                       1                38      42  haz              
Birth       EE              PAKISTAN                       0                 4      42  haz              
Birth       GMS-Nepal       NEPAL                          1               419     563  haz              
Birth       GMS-Nepal       NEPAL                          0               144     563  haz              
Birth       JiVitA-3        BANGLADESH                     1             10466   13423  haz              
Birth       JiVitA-3        BANGLADESH                     0              2957   13423  haz              
Birth       JiVitA-4        BANGLADESH                     1              2103    2632  haz              
Birth       JiVitA-4        BANGLADESH                     0               529    2632  haz              
Birth       MAL-ED          BANGLADESH                     1                72     205  haz              
Birth       MAL-ED          BANGLADESH                     0               133     205  haz              
Birth       MAL-ED          BRAZIL                         1                 6      60  haz              
Birth       MAL-ED          BRAZIL                         0                54      60  haz              
Birth       MAL-ED          INDIA                          1                 4      39  haz              
Birth       MAL-ED          INDIA                          0                35      39  haz              
Birth       MAL-ED          NEPAL                          1                 3      24  haz              
Birth       MAL-ED          NEPAL                          0                21      24  haz              
Birth       MAL-ED          PERU                           1                73     213  haz              
Birth       MAL-ED          PERU                           0               140     213  haz              
Birth       MAL-ED          SOUTH AFRICA                   1                 1      91  haz              
Birth       MAL-ED          SOUTH AFRICA                   0                90      91  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
6 months    EE              PAKISTAN                       1                43      48  haz              
6 months    EE              PAKISTAN                       0                 5      48  haz              
6 months    GMS-Nepal       NEPAL                          1               406     547  haz              
6 months    GMS-Nepal       NEPAL                          0               141     547  haz              
6 months    JiVitA-3        BANGLADESH                     1              7644    9901  haz              
6 months    JiVitA-3        BANGLADESH                     0              2257    9901  haz              
6 months    JiVitA-4        BANGLADESH                     1              3328    4272  haz              
6 months    JiVitA-4        BANGLADESH                     0               944    4272  haz              
6 months    LCNI-5          MALAWI                         1                47     272  haz              
6 months    LCNI-5          MALAWI                         0               225     272  haz              
6 months    MAL-ED          BANGLADESH                     1                84     231  haz              
6 months    MAL-ED          BANGLADESH                     0               147     231  haz              
6 months    MAL-ED          BRAZIL                         1                30     209  haz              
6 months    MAL-ED          BRAZIL                         0               179     209  haz              
6 months    MAL-ED          INDIA                          1                11     218  haz              
6 months    MAL-ED          INDIA                          0               207     218  haz              
6 months    MAL-ED          NEPAL                          1                12     225  haz              
6 months    MAL-ED          NEPAL                          0               213     225  haz              
6 months    MAL-ED          PERU                           1                92     271  haz              
6 months    MAL-ED          PERU                           0               179     271  haz              
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233  haz              
6 months    MAL-ED          SOUTH AFRICA                   0               230     233  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232  haz              
6 months    SAS-FoodSuppl   INDIA                          1                 0     168  haz              
6 months    SAS-FoodSuppl   INDIA                          0               168     168  haz              
24 months   EE              PAKISTAN                       1                20      23  haz              
24 months   EE              PAKISTAN                       0                 3      23  haz              
24 months   GMS-Nepal       NEPAL                          1               356     470  haz              
24 months   GMS-Nepal       NEPAL                          0               114     470  haz              
24 months   JiVitA-3        BANGLADESH                     1              3926    5088  haz              
24 months   JiVitA-3        BANGLADESH                     0              1162    5088  haz              
24 months   JiVitA-4        BANGLADESH                     1              3292    4199  haz              
24 months   JiVitA-4        BANGLADESH                     0               907    4199  haz              
24 months   LCNI-5          MALAWI                         1                34     189  haz              
24 months   LCNI-5          MALAWI                         0               155     189  haz              
24 months   MAL-ED          BANGLADESH                     1                76     205  haz              
24 months   MAL-ED          BANGLADESH                     0               129     205  haz              
24 months   MAL-ED          BRAZIL                         1                25     169  haz              
24 months   MAL-ED          BRAZIL                         0               144     169  haz              
24 months   MAL-ED          INDIA                          1                11     209  haz              
24 months   MAL-ED          INDIA                          0               198     209  haz              
24 months   MAL-ED          NEPAL                          1                12     219  haz              
24 months   MAL-ED          NEPAL                          0               207     219  haz              
24 months   MAL-ED          PERU                           1                68     201  haz              
24 months   MAL-ED          PERU                           0               133     201  haz              
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216  haz              
24 months   MAL-ED          SOUTH AFRICA                   0               213     216  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202  haz              


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/cd547108-7b22-46d8-a89e-45fac59c7e57/fc63acdd-a0b8-48ef-b6aa-eb0c8cac7f0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cd547108-7b22-46d8-a89e-45fac59c7e57/fc63acdd-a0b8-48ef-b6aa-eb0c8cac7f0c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cd547108-7b22-46d8-a89e-45fac59c7e57/fc63acdd-a0b8-48ef-b6aa-eb0c8cac7f0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.0532290   -1.1504466   -0.9560115
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1039039   -1.2788005   -0.9290074
Birth       JiVitA-3    BANGLADESH   1                    NA                -1.5948276   -1.6195991   -1.5700561
Birth       JiVitA-3    BANGLADESH   0                    NA                -1.5981034   -1.6373530   -1.5588539
Birth       JiVitA-4    BANGLADESH   1                    NA                -1.5066256   -1.5587504   -1.4545008
Birth       JiVitA-4    BANGLADESH   0                    NA                -1.6005346   -1.7330956   -1.4679735
Birth       MAL-ED      BANGLADESH   1                    NA                -1.0811744   -1.3038389   -0.8585099
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0572870   -1.2337248   -0.8808493
Birth       MAL-ED      BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       MAL-ED      BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       MAL-ED      PERU         1                    NA                -0.8775718   -1.0419795   -0.7131641
Birth       MAL-ED      PERU         0                    NA                -0.9216333   -1.0686415   -0.7746250
6 months    EE          PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE          PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal   NEPAL        1                    NA                -1.3056083   -1.3947138   -1.2165028
6 months    GMS-Nepal   NEPAL        0                    NA                -1.4916647   -1.6608643   -1.3224650
6 months    JiVitA-3    BANGLADESH   1                    NA                -1.3084890   -1.3389147   -1.2780633
6 months    JiVitA-3    BANGLADESH   0                    NA                -1.3328869   -1.3822185   -1.2835553
6 months    JiVitA-4    BANGLADESH   1                    NA                -1.3095218   -1.3503925   -1.2686511
6 months    JiVitA-4    BANGLADESH   0                    NA                -1.4867299   -1.5777019   -1.3957579
6 months    LCNI-5      MALAWI       1                    NA                -1.7493228   -2.0539948   -1.4446508
6 months    LCNI-5      MALAWI       0                    NA                -1.6268810   -1.7581336   -1.4956283
6 months    MAL-ED      BANGLADESH   1                    NA                -1.0991848   -1.2783319   -0.9200377
6 months    MAL-ED      BANGLADESH   0                    NA                -1.2439491   -1.3985812   -1.0893170
6 months    MAL-ED      BRAZIL       1                    NA                 0.2588641   -0.1903787    0.7081068
6 months    MAL-ED      BRAZIL       0                    NA                 0.0301650   -0.1196332    0.1799632
6 months    MAL-ED      INDIA        1                    NA                -1.5142805   -2.3005637   -0.7279972
6 months    MAL-ED      INDIA        0                    NA                -1.1880902   -1.3089085   -1.0672718
6 months    MAL-ED      NEPAL        1                    NA                -0.2436884   -0.7585695    0.2711927
6 months    MAL-ED      NEPAL        0                    NA                -0.5574784   -0.6758674   -0.4390894
6 months    MAL-ED      PERU         1                    NA                -1.2536318   -1.4326704   -1.0745931
6 months    MAL-ED      PERU         0                    NA                -1.3559390   -1.4913966   -1.2204814
24 months   GMS-Nepal   NEPAL        1                    NA                -1.9040889   -1.9991037   -1.8090741
24 months   GMS-Nepal   NEPAL        0                    NA                -1.8884171   -2.0810345   -1.6957996
24 months   JiVitA-3    BANGLADESH   1                    NA                -2.0025432   -2.0425096   -1.9625767
24 months   JiVitA-3    BANGLADESH   0                    NA                -2.0432876   -2.1130633   -1.9735118
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.7815254   -1.8233236   -1.7397273
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.8293405   -1.9056841   -1.7529968
24 months   LCNI-5      MALAWI       1                    NA                -1.9906369   -2.2987408   -1.6825330
24 months   LCNI-5      MALAWI       0                    NA                -1.9516140   -2.1105003   -1.7927277
24 months   MAL-ED      BANGLADESH   1                    NA                -1.9925865   -2.2371292   -1.7480439
24 months   MAL-ED      BANGLADESH   0                    NA                -1.9331285   -2.0780761   -1.7881808
24 months   MAL-ED      BRAZIL       1                    NA                 0.0081380   -0.4858666    0.5021426
24 months   MAL-ED      BRAZIL       0                    NA                 0.0153519   -0.1711083    0.2018120
24 months   MAL-ED      INDIA        1                    NA                -2.5071687   -3.0747425   -1.9395950
24 months   MAL-ED      INDIA        0                    NA                -1.8515871   -1.9833002   -1.7198740
24 months   MAL-ED      NEPAL        1                    NA                -1.5199765   -2.0602381   -0.9797150
24 months   MAL-ED      NEPAL        0                    NA                -1.3058656   -1.4312702   -1.1804610
24 months   MAL-ED      PERU         1                    NA                -1.7799441   -1.9850810   -1.5748072
24 months   MAL-ED      PERU         0                    NA                -1.7425438   -1.8933843   -1.5917033


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3    BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4    BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       MAL-ED      BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED      BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED      PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
6 months    EE          PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal   NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3    BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4    BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED      BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED      NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED      PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3    BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED      BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED      NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED      PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0506749   -0.2433031    0.1419534
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                 -0.0032758   -0.0440004    0.0374487
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0939089   -0.2354288    0.0476109
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                  0.0238874   -0.2603605    0.3081352
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.0440615   -0.2365847    0.1484617
6 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE          PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1860564   -0.3770219    0.0049091
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                 -0.0243979   -0.0768229    0.0280271
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.1772081   -0.2756143   -0.0788019
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.1224418   -0.2099007    0.4547844
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                 -0.1447643   -0.3779701    0.0884415
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.2286991   -0.7008614    0.2434633
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                  0.3261903   -0.4685481    1.1209287
6 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL        0                    1                 -0.3137900   -0.8432705    0.2156906
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.1023072   -0.3256383    0.1210238
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                  0.0156718   -0.1970471    0.2283907
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                 -0.0407444   -0.1177185    0.0362297
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0478151   -0.1297018    0.0340717
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0390229   -0.3082251    0.3862710
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.0594581   -0.2227328    0.3416490
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.0072139   -0.5237088    0.5381366
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                  0.6555816    0.0725902    1.2385731
24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL        0                    1                  0.2141110   -0.3408258    0.7690477
24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU         0                    1                  0.0374003   -0.2179525    0.2927531


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0108917   -0.0603374    0.0385539
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0007062   -0.0096704    0.0082581
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0206882   -0.0491424    0.0077660
Birth       MAL-ED      BANGLADESH   1                    NA                 0.0281500   -0.1567040    0.2130040
Birth       MAL-ED      BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       MAL-ED      PERU         1                    NA                -0.0290010   -0.1559815    0.0979795
6 months    EE          PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0484198   -0.0979326    0.0010931
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0053369   -0.0172663    0.0065926
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0387086   -0.0600847   -0.0173325
6 months    LCNI-5      MALAWI       1                    NA                 0.1097272   -0.1679802    0.3874346
6 months    MAL-ED      BANGLADESH   1                    NA                -0.0908946   -0.2391689    0.0573798
6 months    MAL-ED      BRAZIL       1                    NA                -0.2112883   -0.6171564    0.1945798
6 months    MAL-ED      INDIA        1                    NA                 0.2954502   -0.4590941    1.0499945
6 months    MAL-ED      NEPAL        1                    NA                -0.3185486   -0.8215526    0.1844554
6 months    MAL-ED      PERU         1                    NA                -0.0684008   -0.2177927    0.0809911
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0038761   -0.0473194    0.0550716
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0092572   -0.0269312    0.0084169
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0099511   -0.0273118    0.0074095
24 months   LCNI-5      MALAWI       1                    NA                 0.0255046   -0.2616236    0.3126329
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0349524   -0.1464428    0.2163476
24 months   MAL-ED      BRAZIL       1                    NA                -0.0020236   -0.4626408    0.4585937
24 months   MAL-ED      INDIA        1                    NA                 0.6208290    0.0675971    1.1740609
24 months   MAL-ED      NEPAL        1                    NA                 0.2012094   -0.3253828    0.7278016
24 months   MAL-ED      PERU         1                    NA                 0.0274731   -0.1430723    0.1980185

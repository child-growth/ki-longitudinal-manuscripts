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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid          country                        predexfd6    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7  whz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7  whz              
Birth       EE               PAKISTAN                       1                24      28  whz              
Birth       EE               PAKISTAN                       0                 4      28  whz              
Birth       GMS-Nepal        NEPAL                          1               390     522  whz              
Birth       GMS-Nepal        NEPAL                          0               132     522  whz              
Birth       IRC              INDIA                          1                 0      12  whz              
Birth       IRC              INDIA                          0                12      12  whz              
Birth       JiVitA-3         BANGLADESH                     1              8392   10744  whz              
Birth       JiVitA-3         BANGLADESH                     0              2352   10744  whz              
Birth       JiVitA-4         BANGLADESH                     1              1802    2224  whz              
Birth       JiVitA-4         BANGLADESH                     0               422    2224  whz              
Birth       Keneba           GAMBIA                         1               450    1327  whz              
Birth       Keneba           GAMBIA                         0               877    1327  whz              
Birth       MAL-ED           BANGLADESH                     1                68     194  whz              
Birth       MAL-ED           BANGLADESH                     0               126     194  whz              
Birth       MAL-ED           BRAZIL                         1                 5      57  whz              
Birth       MAL-ED           BRAZIL                         0                52      57  whz              
Birth       MAL-ED           INDIA                          1                 4      37  whz              
Birth       MAL-ED           INDIA                          0                33      37  whz              
Birth       MAL-ED           NEPAL                          1                 3      23  whz              
Birth       MAL-ED           NEPAL                          0                20      23  whz              
Birth       MAL-ED           PERU                           1                72     208  whz              
Birth       MAL-ED           PERU                           0               136     208  whz              
Birth       MAL-ED           SOUTH AFRICA                   1                 1      90  whz              
Birth       MAL-ED           SOUTH AFRICA                   0                89      90  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     105  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               105     105  whz              
Birth       PROVIDE          BANGLADESH                     1               155     532  whz              
Birth       PROVIDE          BANGLADESH                     0               377     532  whz              
Birth       SAS-CompFeed     INDIA                          1               310     325  whz              
Birth       SAS-CompFeed     INDIA                          0                15     325  whz              
6 months    CMC-V-BCS-2002   INDIA                          1                19      19  whz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
6 months    EE               PAKISTAN                       1                43      48  whz              
6 months    EE               PAKISTAN                       0                 5      48  whz              
6 months    GMS-Nepal        NEPAL                          1               406     547  whz              
6 months    GMS-Nepal        NEPAL                          0               141     547  whz              
6 months    IRC              INDIA                          1                 0      14  whz              
6 months    IRC              INDIA                          0                14      14  whz              
6 months    JiVitA-3         BANGLADESH                     1              7625    9882  whz              
6 months    JiVitA-3         BANGLADESH                     0              2257    9882  whz              
6 months    JiVitA-4         BANGLADESH                     1              3327    4275  whz              
6 months    JiVitA-4         BANGLADESH                     0               948    4275  whz              
6 months    Keneba           GAMBIA                         1               586    1908  whz              
6 months    Keneba           GAMBIA                         0              1322    1908  whz              
6 months    LCNI-5           MALAWI                         1                47     272  whz              
6 months    LCNI-5           MALAWI                         0               225     272  whz              
6 months    MAL-ED           BANGLADESH                     1                84     231  whz              
6 months    MAL-ED           BANGLADESH                     0               147     231  whz              
6 months    MAL-ED           BRAZIL                         1                30     209  whz              
6 months    MAL-ED           BRAZIL                         0               179     209  whz              
6 months    MAL-ED           INDIA                          1                11     218  whz              
6 months    MAL-ED           INDIA                          0               207     218  whz              
6 months    MAL-ED           NEPAL                          1                12     225  whz              
6 months    MAL-ED           NEPAL                          0               213     225  whz              
6 months    MAL-ED           PERU                           1                92     271  whz              
6 months    MAL-ED           PERU                           0               179     271  whz              
6 months    MAL-ED           SOUTH AFRICA                   1                 3     233  whz              
6 months    MAL-ED           SOUTH AFRICA                   0               230     233  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     232  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               231     232  whz              
6 months    PROVIDE          BANGLADESH                     1               141     603  whz              
6 months    PROVIDE          BANGLADESH                     0               462     603  whz              
6 months    SAS-CompFeed     INDIA                          1               376     395  whz              
6 months    SAS-CompFeed     INDIA                          0                19     395  whz              
6 months    SAS-FoodSuppl    INDIA                          1                 0     168  whz              
6 months    SAS-FoodSuppl    INDIA                          0               168     168  whz              
24 months   CMC-V-BCS-2002   INDIA                          1                19      19  whz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
24 months   EE               PAKISTAN                       1                20      23  whz              
24 months   EE               PAKISTAN                       0                 3      23  whz              
24 months   GMS-Nepal        NEPAL                          1               355     469  whz              
24 months   GMS-Nepal        NEPAL                          0               114     469  whz              
24 months   IRC              INDIA                          1                 0      14  whz              
24 months   IRC              INDIA                          0                14      14  whz              
24 months   JiVitA-3         BANGLADESH                     1              3909    5067  whz              
24 months   JiVitA-3         BANGLADESH                     0              1158    5067  whz              
24 months   JiVitA-4         BANGLADESH                     1              3278    4184  whz              
24 months   JiVitA-4         BANGLADESH                     0               906    4184  whz              
24 months   Keneba           GAMBIA                         1               514    1514  whz              
24 months   Keneba           GAMBIA                         0              1000    1514  whz              
24 months   LCNI-5           MALAWI                         1                34     184  whz              
24 months   LCNI-5           MALAWI                         0               150     184  whz              
24 months   MAL-ED           BANGLADESH                     1                76     205  whz              
24 months   MAL-ED           BANGLADESH                     0               129     205  whz              
24 months   MAL-ED           BRAZIL                         1                25     169  whz              
24 months   MAL-ED           BRAZIL                         0               144     169  whz              
24 months   MAL-ED           INDIA                          1                11     209  whz              
24 months   MAL-ED           INDIA                          0               198     209  whz              
24 months   MAL-ED           NEPAL                          1                12     219  whz              
24 months   MAL-ED           NEPAL                          0               207     219  whz              
24 months   MAL-ED           PERU                           1                68     201  whz              
24 months   MAL-ED           PERU                           0               133     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   1                 3     216  whz              
24 months   MAL-ED           SOUTH AFRICA                   0               213     216  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     202  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               201     202  whz              
24 months   PROVIDE          BANGLADESH                     1               137     579  whz              
24 months   PROVIDE          BANGLADESH                     0               442     579  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/085c78d4-27d3-49e3-86cd-c9914c222a9c/f6a4df6b-81f9-4b13-9360-2459d4835269/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/085c78d4-27d3-49e3-86cd-c9914c222a9c/f6a4df6b-81f9-4b13-9360-2459d4835269/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/085c78d4-27d3-49e3-86cd-c9914c222a9c/f6a4df6b-81f9-4b13-9360-2459d4835269/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.1062135   -1.2181121   -0.9943148
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1106353   -1.2679093   -0.9533613
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.7868301   -0.8116432   -0.7620171
Birth       JiVitA-3       BANGLADESH   0                    NA                -0.7592131   -0.8030444   -0.7153818
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.6755609   -0.7304640   -0.6206577
Birth       JiVitA-4       BANGLADESH   0                    NA                -0.7500500   -0.8903022   -0.6097978
Birth       Keneba         GAMBIA       1                    NA                -1.2452157   -1.3439955   -1.1464359
Birth       Keneba         GAMBIA       0                    NA                -1.2669188   -1.3429359   -1.1909017
Birth       MAL-ED         BANGLADESH   1                    NA                -0.7994676   -1.0541587   -0.5447766
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0452784   -1.2544413   -0.8361155
Birth       MAL-ED         BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       MAL-ED         BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       MAL-ED         PERU         1                    NA                -0.0212430   -0.2332011    0.1907151
Birth       MAL-ED         PERU         0                    NA                -0.0847007   -0.2476966    0.0782953
Birth       PROVIDE        BANGLADESH   1                    NA                -1.3176930   -1.4755499   -1.1598361
Birth       PROVIDE        BANGLADESH   0                    NA                -1.3009720   -1.3891852   -1.2127588
Birth       SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA        0                    NA                -1.0901281   -1.7027393   -0.4775170
6 months    EE             PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE             PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal      NEPAL        1                    NA                -0.5774055   -0.6798732   -0.4749377
6 months    GMS-Nepal      NEPAL        0                    NA                -0.6745994   -0.8451115   -0.5040874
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.6033796   -0.6304821   -0.5762771
6 months    JiVitA-3       BANGLADESH   0                    NA                -0.5888108   -0.6345520   -0.5430696
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.3454157   -0.3897446   -0.3010867
6 months    JiVitA-4       BANGLADESH   0                    NA                -0.5581764   -0.6402756   -0.4760771
6 months    Keneba         GAMBIA       1                    NA                -0.0122496   -0.1101841    0.0856850
6 months    Keneba         GAMBIA       0                    NA                -0.2853688   -0.3477938   -0.2229437
6 months    LCNI-5         MALAWI       1                    NA                 0.3781496    0.0478584    0.7084407
6 months    LCNI-5         MALAWI       0                    NA                 0.3985063    0.2717287    0.5252838
6 months    MAL-ED         BANGLADESH   1                    NA                -0.1672402   -0.4092174    0.0747370
6 months    MAL-ED         BANGLADESH   0                    NA                -0.1085589   -0.2710050    0.0538872
6 months    MAL-ED         BRAZIL       1                    NA                 1.5221060    1.0719569    1.9722551
6 months    MAL-ED         BRAZIL       0                    NA                 0.8890340    0.7148261    1.0632419
6 months    MAL-ED         INDIA        1                    NA                -0.1942015   -0.6815551    0.2931522
6 months    MAL-ED         INDIA        0                    NA                -0.7432892   -0.8768326   -0.6097458
6 months    MAL-ED         NEPAL        1                    NA                 0.0167780   -0.8104269    0.8439829
6 months    MAL-ED         NEPAL        0                    NA                 0.1152269   -0.0238645    0.2543182
6 months    MAL-ED         PERU         1                    NA                 1.1910110    0.9903464    1.3916756
6 months    MAL-ED         PERU         0                    NA                 0.9738518    0.8197734    1.1279301
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0127960   -0.1509104    0.1765024
6 months    PROVIDE        BANGLADESH   0                    NA                -0.2654751   -0.3599837   -0.1709666
6 months    SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL        1                    NA                -1.0925883   -1.1923260   -0.9928505
24 months   GMS-Nepal      NEPAL        0                    NA                -1.2988784   -1.5083862   -1.0893707
24 months   JiVitA-3       BANGLADESH   1                    NA                -1.3210846   -1.3558647   -1.2863044
24 months   JiVitA-3       BANGLADESH   0                    NA                -1.2747595   -1.3374187   -1.2121002
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.2236227   -1.2644042   -1.1828413
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.2328146   -1.3132109   -1.1524183
24 months   Keneba         GAMBIA       1                    NA                -0.7168867   -0.8003924   -0.6333809
24 months   Keneba         GAMBIA       0                    NA                -0.8454575   -0.9068697   -0.7840452
24 months   LCNI-5         MALAWI       1                    NA                -0.0999044   -0.4461452    0.2463363
24 months   LCNI-5         MALAWI       0                    NA                -0.0757098   -0.2368393    0.0854196
24 months   MAL-ED         BANGLADESH   1                    NA                -0.9799898   -1.1580879   -0.8018917
24 months   MAL-ED         BANGLADESH   0                    NA                -0.7619717   -0.9252897   -0.5986536
24 months   MAL-ED         BRAZIL       1                    NA                 0.5435115   -0.0665930    1.1536161
24 months   MAL-ED         BRAZIL       0                    NA                 0.4790585    0.2570626    0.7010544
24 months   MAL-ED         INDIA        1                    NA                -0.6998989   -1.2404036   -0.1593942
24 months   MAL-ED         INDIA        0                    NA                -0.9584703   -1.0828710   -0.8340696
24 months   MAL-ED         NEPAL        1                    NA                -0.4544501   -1.0721588    0.1632585
24 months   MAL-ED         NEPAL        0                    NA                -0.3613270   -0.4815447   -0.2411092
24 months   MAL-ED         PERU         1                    NA                 0.0523924   -0.1336072    0.2383920
24 months   MAL-ED         PERU         0                    NA                 0.1337542   -0.0229432    0.2904516
24 months   PROVIDE        BANGLADESH   1                    NA                -0.7622191   -0.9256909   -0.5987473
24 months   PROVIDE        BANGLADESH   0                    NA                -0.9211459   -1.0157980   -0.8264937


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3       BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4       BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
Birth       Keneba         GAMBIA       NA                   NA                -1.2599925   -1.3251703   -1.1948146
Birth       MAL-ED         BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       MAL-ED         BRAZIL       NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       MAL-ED         PERU         NA                   NA                -0.0587981   -0.1871869    0.0695908
Birth       PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
6 months    EE             PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal      NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3       BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4       BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
6 months    Keneba         GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    LCNI-5         MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED         BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED         BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED         INDIA        NA                   NA                -0.7067317   -0.8369134   -0.5765499
6 months    MAL-ED         NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    MAL-ED         PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
6 months    PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3       BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132
24 months   Keneba         GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   LCNI-5         MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED         BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED         BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED         INDIA        NA                   NA                -0.9442584   -1.0642426   -0.8242742
24 months   MAL-ED         NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   MAL-ED         PERU         NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0044218   -0.1849441    0.1761005
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                  0.0276170   -0.0210390    0.0762731
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0744891   -0.2216231    0.0726448
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                 -0.0217031   -0.1354375    0.0920314
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.2458108   -0.5936969    0.1020754
Birth       MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU         0                    1                 -0.0634577   -0.3319445    0.2050292
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0167210   -0.1597279    0.1931699
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783681    0.0820692
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.0971940   -0.2962779    0.1018899
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                  0.0145688   -0.0372550    0.0663926
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.2127607   -0.3059743   -0.1195471
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.2731192   -0.3883901   -0.1578482
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0203567   -0.3334175    0.3741308
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                  0.0586813   -0.2351312    0.3524937
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.6330720   -1.1123708   -0.1537732
6 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA        0                    1                 -0.5490877   -1.0542833   -0.0438921
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.0984489   -0.7416111    0.9385089
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                 -0.2171592   -0.4702473    0.0359289
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.2782712   -0.4661629   -0.0903795
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                 -0.2062902   -0.4380692    0.0254889
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                  0.0463251   -0.0250049    0.1176551
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0091918   -0.0979672    0.0795835
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1285708   -0.2309455   -0.0261961
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0241946   -0.3613198    0.4097090
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.2180182   -0.0248880    0.4609243
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                 -0.0644530   -0.7124114    0.5835053
24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA        0                    1                 -0.2585714   -0.8130108    0.2958680
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.0931232   -0.5363809    0.7226273
24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU         0                    1                  0.0813618   -0.1569041    0.3196277
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                 -0.1589268   -0.3464486    0.0285950


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0002424   -0.0460320    0.0455472
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0060492   -0.0045822    0.0166807
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0148977   -0.0423848    0.0125894
Birth       Keneba         GAMBIA       1                    NA                -0.0147767   -0.0900111    0.0604576
Birth       MAL-ED         BANGLADESH   1                    NA                -0.1760994   -0.4110820    0.0588832
Birth       MAL-ED         BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       MAL-ED         PERU         1                    NA                -0.0375551   -0.2145281    0.1394179
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0192343   -0.1123126    0.1507813
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    EE             PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0235117   -0.0748645    0.0278412
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0032496   -0.0085625    0.0150616
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0514300   -0.0726864   -0.0301735
6 months    Keneba         GAMBIA       1                    NA                -0.1875151   -0.2682313   -0.1067988
6 months    LCNI-5         MALAWI       1                    NA                 0.0143504   -0.2802743    0.3089751
6 months    MAL-ED         BANGLADESH   1                    NA                 0.0459198   -0.1499995    0.2418391
6 months    MAL-ED         BRAZIL       1                    NA                -0.5500287   -0.9646094   -0.1354479
6 months    MAL-ED         INDIA        1                    NA                -0.5125302   -0.9951918   -0.0298685
6 months    MAL-ED         NEPAL        1                    NA                 0.0923627   -0.7124125    0.8971380
6 months    MAL-ED         PERU         1                    NA                -0.1403960   -0.3083614    0.0275695
6 months    PROVIDE        BANGLADESH   1                    NA                -0.2118867   -0.3563784   -0.0673950
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0497643   -0.1063367    0.0068082
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0107471   -0.0055210    0.0270151
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0029093   -0.0223783    0.0165597
24 months   Keneba         GAMBIA       1                    NA                -0.0863463   -0.1546410   -0.0180516
24 months   LCNI-5         MALAWI       1                    NA                 0.0228392   -0.2976929    0.3433713
24 months   MAL-ED         BANGLADESH   1                    NA                 0.1630142    0.0087775    0.3172510
24 months   MAL-ED         BRAZIL       1                    NA                -0.0808883   -0.6482941    0.4865176
24 months   MAL-ED         INDIA        1                    NA                -0.2443595   -0.7767136    0.2879947
24 months   MAL-ED         NEPAL        1                    NA                 0.0870072   -0.5170352    0.6910496
24 months   MAL-ED         PERU         1                    NA                 0.0588057   -0.0998564    0.2174679
24 months   PROVIDE        BANGLADESH   1                    NA                -0.1306479   -0.2742915    0.0129956

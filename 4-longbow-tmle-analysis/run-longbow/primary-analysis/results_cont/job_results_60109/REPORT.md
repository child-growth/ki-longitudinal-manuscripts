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

agecat      studyid         country                        predfeed6    n_cell       n
----------  --------------  -----------------------------  ----------  -------  ------
Birth       EE              PAKISTAN                       1                24      28
Birth       EE              PAKISTAN                       0                 4      28
Birth       GMS-Nepal       NEPAL                          1               390     522
Birth       GMS-Nepal       NEPAL                          0               132     522
Birth       JiVitA-3        BANGLADESH                     1              8392   10744
Birth       JiVitA-3        BANGLADESH                     0              2352   10744
Birth       JiVitA-4        BANGLADESH                     1              1802    2224
Birth       JiVitA-4        BANGLADESH                     0               422    2224
Birth       MAL-ED          BANGLADESH                     1                68     194
Birth       MAL-ED          BANGLADESH                     0               126     194
Birth       MAL-ED          BRAZIL                         1                 5      57
Birth       MAL-ED          BRAZIL                         0                52      57
Birth       MAL-ED          INDIA                          1                 4      37
Birth       MAL-ED          INDIA                          0                33      37
Birth       MAL-ED          NEPAL                          1                 3      23
Birth       MAL-ED          NEPAL                          0                20      23
Birth       MAL-ED          PERU                           1                72     208
Birth       MAL-ED          PERU                           0               136     208
Birth       MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       MAL-ED          SOUTH AFRICA                   0                89      90
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
6 months    EE              PAKISTAN                       1                43      48
6 months    EE              PAKISTAN                       0                 5      48
6 months    GMS-Nepal       NEPAL                          1               406     547
6 months    GMS-Nepal       NEPAL                          0               141     547
6 months    JiVitA-3        BANGLADESH                     1              7625    9882
6 months    JiVitA-3        BANGLADESH                     0              2257    9882
6 months    JiVitA-4        BANGLADESH                     1              3327    4275
6 months    JiVitA-4        BANGLADESH                     0               948    4275
6 months    LCNI-5          MALAWI                         1                47     272
6 months    LCNI-5          MALAWI                         0               225     272
6 months    MAL-ED          BANGLADESH                     1                84     231
6 months    MAL-ED          BANGLADESH                     0               147     231
6 months    MAL-ED          BRAZIL                         1                30     209
6 months    MAL-ED          BRAZIL                         0               179     209
6 months    MAL-ED          INDIA                          1                11     218
6 months    MAL-ED          INDIA                          0               207     218
6 months    MAL-ED          NEPAL                          1                12     225
6 months    MAL-ED          NEPAL                          0               213     225
6 months    MAL-ED          PERU                           1                92     271
6 months    MAL-ED          PERU                           0               179     271
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    MAL-ED          SOUTH AFRICA                   0               230     233
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    SAS-FoodSuppl   INDIA                          1                 0     168
6 months    SAS-FoodSuppl   INDIA                          0               168     168
24 months   EE              PAKISTAN                       1                20      23
24 months   EE              PAKISTAN                       0                 3      23
24 months   GMS-Nepal       NEPAL                          1               355     469
24 months   GMS-Nepal       NEPAL                          0               114     469
24 months   JiVitA-3        BANGLADESH                     1              3909    5067
24 months   JiVitA-3        BANGLADESH                     0              1158    5067
24 months   JiVitA-4        BANGLADESH                     1              3278    4184
24 months   JiVitA-4        BANGLADESH                     0               906    4184
24 months   LCNI-5          MALAWI                         1                34     184
24 months   LCNI-5          MALAWI                         0               150     184
24 months   MAL-ED          BANGLADESH                     1                76     205
24 months   MAL-ED          BANGLADESH                     0               129     205
24 months   MAL-ED          BRAZIL                         1                25     169
24 months   MAL-ED          BRAZIL                         0               144     169
24 months   MAL-ED          INDIA                          1                11     209
24 months   MAL-ED          INDIA                          0               198     209
24 months   MAL-ED          NEPAL                          1                12     219
24 months   MAL-ED          NEPAL                          0               207     219
24 months   MAL-ED          PERU                           1                68     201
24 months   MAL-ED          PERU                           0               133     201
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   MAL-ED          SOUTH AFRICA                   0               213     216
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202


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
![](/tmp/78e1a578-6a15-47c6-b75a-08b21753c7f5/20b23348-a940-41ad-9a83-414fa2fba999/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/78e1a578-6a15-47c6-b75a-08b21753c7f5/20b23348-a940-41ad-9a83-414fa2fba999/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/78e1a578-6a15-47c6-b75a-08b21753c7f5/20b23348-a940-41ad-9a83-414fa2fba999/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.1058358   -1.2190334   -0.9926381
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1165057   -1.2789961   -0.9540154
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.7869315   -0.8117560   -0.7621069
Birth       JiVitA-3    BANGLADESH   0                    NA                -0.7568311   -0.8006831   -0.7129791
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.6752655   -0.7300355   -0.6204956
Birth       JiVitA-4    BANGLADESH   0                    NA                -0.7512081   -0.8870885   -0.6153276
Birth       MAL-ED      BANGLADESH   1                    NA                -0.8230325   -1.0830704   -0.5629947
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0342793   -1.2383189   -0.8302397
Birth       MAL-ED      BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       MAL-ED      BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       MAL-ED      PERU         1                    NA                -0.0150852   -0.2263595    0.1961891
Birth       MAL-ED      PERU         0                    NA                -0.0851422   -0.2475141    0.0772298
6 months    EE          PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE          PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal   NEPAL        1                    NA                -0.5769327   -0.6792946   -0.4745708
6 months    GMS-Nepal   NEPAL        0                    NA                -0.6648680   -0.8354458   -0.4942903
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.6025125   -0.6295878   -0.5754372
6 months    JiVitA-3    BANGLADESH   0                    NA                -0.5893354   -0.6349217   -0.5437490
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.3467472   -0.3912816   -0.3022128
6 months    JiVitA-4    BANGLADESH   0                    NA                -0.5632596   -0.6451699   -0.4813494
6 months    LCNI-5      MALAWI       1                    NA                 0.3477114    0.0094107    0.6860121
6 months    LCNI-5      MALAWI       0                    NA                 0.3972305    0.2698370    0.5246240
6 months    MAL-ED      BANGLADESH   1                    NA                -0.1735496   -0.4352448    0.0881456
6 months    MAL-ED      BANGLADESH   0                    NA                -0.1127090   -0.2773911    0.0519731
6 months    MAL-ED      BRAZIL       1                    NA                 1.4970536    1.0318760    1.9622312
6 months    MAL-ED      BRAZIL       0                    NA                 0.8788982    0.7048709    1.0529254
6 months    MAL-ED      INDIA        1                    NA                -0.0870502   -0.5824895    0.4083891
6 months    MAL-ED      INDIA        0                    NA                -0.7406554   -0.8741454   -0.6071653
6 months    MAL-ED      NEPAL        1                    NA                 0.3893120   -0.3322522    1.1108762
6 months    MAL-ED      NEPAL        0                    NA                 0.1135327   -0.0252373    0.2523027
6 months    MAL-ED      PERU         1                    NA                 1.2065702    1.0046829    1.4084575
6 months    MAL-ED      PERU         0                    NA                 0.9787072    0.8252770    1.1321374
24 months   GMS-Nepal   NEPAL        1                    NA                -1.0910317   -1.1898160   -0.9922474
24 months   GMS-Nepal   NEPAL        0                    NA                -1.3033706   -1.5182951   -1.0884462
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.3207140   -1.3555647   -1.2858632
24 months   JiVitA-3    BANGLADESH   0                    NA                -1.2758244   -1.3387028   -1.2129459
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.2225671   -1.2632001   -1.1819341
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.2341256   -1.3125571   -1.1556941
24 months   LCNI-5      MALAWI       1                    NA                -0.1754804   -0.5070004    0.1560395
24 months   LCNI-5      MALAWI       0                    NA                -0.0711735   -0.2321487    0.0898017
24 months   MAL-ED      BANGLADESH   1                    NA                -0.9192131   -1.1088557   -0.7295705
24 months   MAL-ED      BANGLADESH   0                    NA                -0.7563096   -0.9173174   -0.5953019
24 months   MAL-ED      BRAZIL       1                    NA                 0.4329058   -0.1771104    1.0429221
24 months   MAL-ED      BRAZIL       0                    NA                 0.4727674    0.2516980    0.6938368
24 months   MAL-ED      INDIA        1                    NA                -0.7136660   -1.1981648   -0.2291672
24 months   MAL-ED      INDIA        0                    NA                -0.9600743   -1.0842240   -0.8359245
24 months   MAL-ED      NEPAL        1                    NA                -0.3621628   -0.9430058    0.2186802
24 months   MAL-ED      NEPAL        0                    NA                -0.3659806   -0.4855058   -0.2464554
24 months   MAL-ED      PERU         1                    NA                 0.0916797   -0.0947639    0.2781233
24 months   MAL-ED      PERU         0                    NA                 0.1476322   -0.0095030    0.3047674


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3    BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4    BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
Birth       MAL-ED      BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       MAL-ED      BRAZIL       NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       MAL-ED      PERU         NA                   NA                -0.0587981   -0.1871869    0.0695908
6 months    EE          PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal   NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3    BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4    BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
6 months    LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED      BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA        NA                   NA                -0.7067317   -0.8369134   -0.5765499
6 months    MAL-ED      NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    MAL-ED      PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3    BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132
24 months   LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED      BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA        NA                   NA                -0.9442584   -1.0642426   -0.8242742
24 months   MAL-ED      NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   MAL-ED      PERU         NA                   NA                 0.1111982   -0.0118399    0.2342362


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0106699   -0.2002856    0.1789457
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                  0.0301004   -0.0186475    0.0788483
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0759425   -0.2189458    0.0670607
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.2112468   -0.5569497    0.1344561
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.0700570   -0.3372328    0.1971189
6 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE          PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.0879353   -0.2869522    0.1110815
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                  0.0131771   -0.0385199    0.0648742
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.2165124   -0.3093602   -0.1236646
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0495191   -0.3129769    0.4120152
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0608407   -0.2539425    0.3756238
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.6181555   -1.1128326   -0.1234783
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.6536051   -1.1669079   -0.1403024
6 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL        0                    1                 -0.2757793   -1.0118851    0.4603264
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.2278630   -0.4818156    0.0260897
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.2123390   -0.4492008    0.0245229
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                  0.0448896   -0.0266932    0.1164723
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0115585   -0.0979658    0.0748489
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.1043069   -0.2657644    0.4743782
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.1629034   -0.0864645    0.4122713
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.0398615   -0.6090786    0.6888016
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                 -0.2464083   -0.7468610    0.2540445
24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL        0                    1                 -0.0038178   -0.5969615    0.5893259
24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU         0                    1                  0.0559525   -0.1849990    0.2969041


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0006201   -0.0483743    0.0471340
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0061506   -0.0044971    0.0167982
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0151931   -0.0426070    0.0122208
Birth       MAL-ED      BANGLADESH   1                    NA                -0.1525345   -0.3889853    0.0839163
Birth       MAL-ED      BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       MAL-ED      PERU         1                    NA                -0.0437129   -0.2195180    0.1320923
6 months    EE          PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0239844   -0.0752606    0.0272917
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0023825   -0.0094183    0.0141833
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0500984   -0.0713381   -0.0288587
6 months    LCNI-5      MALAWI       1                    NA                 0.0447886   -0.2574617    0.3470389
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0522293   -0.1634614    0.2679200
6 months    MAL-ED      BRAZIL       1                    NA                -0.5249763   -0.9539272   -0.0960253
6 months    MAL-ED      INDIA        1                    NA                -0.6196814   -1.1104435   -0.1289194
6 months    MAL-ED      NEPAL        1                    NA                -0.2801713   -0.9814536    0.4211111
6 months    MAL-ED      PERU         1                    NA                -0.1559552   -0.3248722    0.0129618
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0513208   -0.1078444    0.0052027
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0103765   -0.0059074    0.0266604
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0039649   -0.0230535    0.0151237
24 months   LCNI-5      MALAWI       1                    NA                 0.0984152   -0.2104268    0.4072572
24 months   MAL-ED      BANGLADESH   1                    NA                 0.1022375   -0.0617381    0.2662130
24 months   MAL-ED      BRAZIL       1                    NA                 0.0297174   -0.5321386    0.5915734
24 months   MAL-ED      INDIA        1                    NA                -0.2305924   -0.7091363    0.2479514
24 months   MAL-ED      NEPAL        1                    NA                -0.0052801   -0.5695277    0.5589675
24 months   MAL-ED      PERU         1                    NA                 0.0195185   -0.1417660    0.1808029

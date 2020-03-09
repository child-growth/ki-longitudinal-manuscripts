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

agecat      studyid         country                        predfeed6    n_cell       n  outcome_variable 
----------  --------------  -----------------------------  ----------  -------  ------  -----------------
Birth       EE              PAKISTAN                       1                24      28  whz              
Birth       EE              PAKISTAN                       0                 4      28  whz              
Birth       GMS-Nepal       NEPAL                          1               390     522  whz              
Birth       GMS-Nepal       NEPAL                          0               132     522  whz              
Birth       JiVitA-3        BANGLADESH                     1              8392   10744  whz              
Birth       JiVitA-3        BANGLADESH                     0              2352   10744  whz              
Birth       JiVitA-4        BANGLADESH                     1              1802    2224  whz              
Birth       JiVitA-4        BANGLADESH                     0               422    2224  whz              
Birth       MAL-ED          BANGLADESH                     1                68     194  whz              
Birth       MAL-ED          BANGLADESH                     0               126     194  whz              
Birth       MAL-ED          BRAZIL                         1                 5      57  whz              
Birth       MAL-ED          BRAZIL                         0                52      57  whz              
Birth       MAL-ED          INDIA                          1                 4      37  whz              
Birth       MAL-ED          INDIA                          0                33      37  whz              
Birth       MAL-ED          NEPAL                          1                 3      23  whz              
Birth       MAL-ED          NEPAL                          0                20      23  whz              
Birth       MAL-ED          PERU                           1                72     208  whz              
Birth       MAL-ED          PERU                           0               136     208  whz              
Birth       MAL-ED          SOUTH AFRICA                   1                 1      90  whz              
Birth       MAL-ED          SOUTH AFRICA                   0                89      90  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105  whz              
6 months    EE              PAKISTAN                       1                43      48  whz              
6 months    EE              PAKISTAN                       0                 5      48  whz              
6 months    GMS-Nepal       NEPAL                          1               406     547  whz              
6 months    GMS-Nepal       NEPAL                          0               141     547  whz              
6 months    JiVitA-3        BANGLADESH                     1              7625    9882  whz              
6 months    JiVitA-3        BANGLADESH                     0              2257    9882  whz              
6 months    JiVitA-4        BANGLADESH                     1              3327    4275  whz              
6 months    JiVitA-4        BANGLADESH                     0               948    4275  whz              
6 months    LCNI-5          MALAWI                         1                47     272  whz              
6 months    LCNI-5          MALAWI                         0               225     272  whz              
6 months    MAL-ED          BANGLADESH                     1                84     231  whz              
6 months    MAL-ED          BANGLADESH                     0               147     231  whz              
6 months    MAL-ED          BRAZIL                         1                30     209  whz              
6 months    MAL-ED          BRAZIL                         0               179     209  whz              
6 months    MAL-ED          INDIA                          1                11     218  whz              
6 months    MAL-ED          INDIA                          0               207     218  whz              
6 months    MAL-ED          NEPAL                          1                12     225  whz              
6 months    MAL-ED          NEPAL                          0               213     225  whz              
6 months    MAL-ED          PERU                           1                92     271  whz              
6 months    MAL-ED          PERU                           0               179     271  whz              
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233  whz              
6 months    MAL-ED          SOUTH AFRICA                   0               230     233  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232  whz              
6 months    SAS-FoodSuppl   INDIA                          1                 0     168  whz              
6 months    SAS-FoodSuppl   INDIA                          0               168     168  whz              
24 months   EE              PAKISTAN                       1                20      23  whz              
24 months   EE              PAKISTAN                       0                 3      23  whz              
24 months   GMS-Nepal       NEPAL                          1               355     469  whz              
24 months   GMS-Nepal       NEPAL                          0               114     469  whz              
24 months   JiVitA-3        BANGLADESH                     1              3909    5067  whz              
24 months   JiVitA-3        BANGLADESH                     0              1158    5067  whz              
24 months   JiVitA-4        BANGLADESH                     1              3278    4184  whz              
24 months   JiVitA-4        BANGLADESH                     0               906    4184  whz              
24 months   LCNI-5          MALAWI                         1                34     184  whz              
24 months   LCNI-5          MALAWI                         0               150     184  whz              
24 months   MAL-ED          BANGLADESH                     1                76     205  whz              
24 months   MAL-ED          BANGLADESH                     0               129     205  whz              
24 months   MAL-ED          BRAZIL                         1                25     169  whz              
24 months   MAL-ED          BRAZIL                         0               144     169  whz              
24 months   MAL-ED          INDIA                          1                11     209  whz              
24 months   MAL-ED          INDIA                          0               198     209  whz              
24 months   MAL-ED          NEPAL                          1                12     219  whz              
24 months   MAL-ED          NEPAL                          0               207     219  whz              
24 months   MAL-ED          PERU                           1                68     201  whz              
24 months   MAL-ED          PERU                           0               133     201  whz              
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216  whz              
24 months   MAL-ED          SOUTH AFRICA                   0               213     216  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202  whz              


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
![](/tmp/3255fb72-6788-4b37-af78-d3df3889dc48/b9e5d4cf-1da0-4eb9-9599-74f58812a4c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3255fb72-6788-4b37-af78-d3df3889dc48/b9e5d4cf-1da0-4eb9-9599-74f58812a4c9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3255fb72-6788-4b37-af78-d3df3889dc48/b9e5d4cf-1da0-4eb9-9599-74f58812a4c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.1036305   -1.2163462   -0.9909149
Birth       GMS-Nepal   NEPAL        0                    NA                -1.1269905   -1.2869834   -0.9669976
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.7869602   -0.8117892   -0.7621312
Birth       JiVitA-3    BANGLADESH   0                    NA                -0.7595592   -0.8034325   -0.7156860
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.6758145   -0.7305560   -0.6210729
Birth       JiVitA-4    BANGLADESH   0                    NA                -0.7499115   -0.8866203   -0.6132028
Birth       MAL-ED      BANGLADESH   1                    NA                -0.8610279   -1.0842020   -0.6378538
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0238706   -1.2254880   -0.8222532
Birth       MAL-ED      BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       MAL-ED      BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       MAL-ED      PERU         1                    NA                 0.0038350   -0.2074734    0.2151434
Birth       MAL-ED      PERU         0                    NA                -0.0775854   -0.2404216    0.0852507
6 months    EE          PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE          PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal   NEPAL        1                    NA                -0.5738563   -0.6763651   -0.4713476
6 months    GMS-Nepal   NEPAL        0                    NA                -0.6704641   -0.8412155   -0.4997128
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.6028982   -0.6299685   -0.5758278
6 months    JiVitA-3    BANGLADESH   0                    NA                -0.5909332   -0.6366716   -0.5451948
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.3463171   -0.3910063   -0.3016280
6 months    JiVitA-4    BANGLADESH   0                    NA                -0.5546671   -0.6344739   -0.4748604
6 months    LCNI-5      MALAWI       1                    NA                 0.3795774    0.0389546    0.7202001
6 months    LCNI-5      MALAWI       0                    NA                 0.3983253    0.2718407    0.5248099
6 months    MAL-ED      BANGLADESH   1                    NA                -0.1681433   -0.4103387    0.0740521
6 months    MAL-ED      BANGLADESH   0                    NA                -0.0993813   -0.2621277    0.0633651
6 months    MAL-ED      BRAZIL       1                    NA                 1.5655371    1.1148977    2.0161765
6 months    MAL-ED      BRAZIL       0                    NA                 0.8929536    0.7188688    1.0670385
6 months    MAL-ED      INDIA        1                    NA                -0.2149730   -0.6779515    0.2480056
6 months    MAL-ED      INDIA        0                    NA                -0.7425946   -0.8760176   -0.6091715
6 months    MAL-ED      NEPAL        1                    NA                 0.0207899   -0.6451522    0.6867319
6 months    MAL-ED      NEPAL        0                    NA                 0.1134236   -0.0256239    0.2524711
6 months    MAL-ED      PERU         1                    NA                 1.1668071    0.9697100    1.3639043
6 months    MAL-ED      PERU         0                    NA                 0.9627052    0.8087934    1.1166169
24 months   GMS-Nepal   NEPAL        1                    NA                -1.0918142   -1.1909263   -0.9927021
24 months   GMS-Nepal   NEPAL        0                    NA                -1.2997807   -1.5120789   -1.0874824
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.3210504   -1.3559058   -1.2861950
24 months   JiVitA-3    BANGLADESH   0                    NA                -1.2748454   -1.3377183   -1.2119725
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.2239168   -1.2644755   -1.1833580
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.2291730   -1.3079494   -1.1503966
24 months   LCNI-5      MALAWI       1                    NA                -0.1239526   -0.4346962    0.1867910
24 months   LCNI-5      MALAWI       0                    NA                -0.0646462   -0.2252562    0.0959639
24 months   MAL-ED      BANGLADESH   1                    NA                -0.9239754   -1.1079952   -0.7399556
24 months   MAL-ED      BANGLADESH   0                    NA                -0.7515438   -0.9138456   -0.5892419
24 months   MAL-ED      BRAZIL       1                    NA                 0.4361702   -0.1756015    1.0479420
24 months   MAL-ED      BRAZIL       0                    NA                 0.4723992    0.2506985    0.6940999
24 months   MAL-ED      INDIA        1                    NA                -0.6540696   -1.2563472   -0.0517920
24 months   MAL-ED      INDIA        0                    NA                -0.9571875   -1.0821351   -0.8322399
24 months   MAL-ED      NEPAL        1                    NA                -0.4951599   -1.1029174    0.1125977
24 months   MAL-ED      NEPAL        0                    NA                -0.3646368   -0.4848578   -0.2444157
24 months   MAL-ED      PERU         1                    NA                 0.0729318   -0.1128357    0.2586993
24 months   MAL-ED      PERU         0                    NA                 0.1365175   -0.0222041    0.2952390


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
Birth       GMS-Nepal   NEPAL        0                    1                 -0.0233600   -0.2086435    0.1619235
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                  0.0274010   -0.0213160    0.0761180
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0740971   -0.2174951    0.0693009
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.1628427   -0.4684354    0.1427500
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.0814204   -0.3492275    0.1863867
6 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE          PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.0966078   -0.2958867    0.1026710
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                  0.0119649   -0.0397949    0.0637248
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.2083500   -0.2991463   -0.1175537
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0187479   -0.3449686    0.3824645
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0687619   -0.2247283    0.3622522
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.6725834   -1.1556282   -0.1895387
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.5276216   -1.0101745   -0.0450687
6 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL        0                    1                  0.0926337   -0.5882957    0.7735631
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.2041020   -0.4548983    0.0466943
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.2079665   -0.4425253    0.0265923
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                  0.0462050   -0.0254674    0.1178775
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0052563   -0.0921704    0.0816579
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0593064   -0.2926576    0.4112705
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.1724316   -0.0745746    0.4194378
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                  0.0362290   -0.6147788    0.6872368
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                 -0.3031180   -0.9183383    0.3121024
24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL        0                    1                  0.1305231   -0.4892533    0.7502996
24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU         0                    1                  0.0635856   -0.1774679    0.3046391


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0028254   -0.0492615    0.0436107
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0061793   -0.0044701    0.0168287
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0146442   -0.0419398    0.0126515
Birth       MAL-ED      BANGLADESH   1                    NA                -0.1145391   -0.3174634    0.0883852
Birth       MAL-ED      BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       MAL-ED      PERU         1                    NA                -0.0626331   -0.2385616    0.1132955
6 months    EE          PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0270608   -0.0785779    0.0244563
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0027681   -0.0090654    0.0146017
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0505285   -0.0718414   -0.0292155
6 months    LCNI-5      MALAWI       1                    NA                 0.0129226   -0.2914662    0.3173115
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0468229   -0.1483514    0.2419973
6 months    MAL-ED      BRAZIL       1                    NA                -0.5934597   -1.0107867   -0.1761327
6 months    MAL-ED      INDIA        1                    NA                -0.4917587   -0.9527023   -0.0308151
6 months    MAL-ED      NEPAL        1                    NA                 0.0883509   -0.5569902    0.7336920
6 months    MAL-ED      PERU         1                    NA                -0.1161921   -0.2806913    0.0483070
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0505384   -0.1071934    0.0061166
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0107129   -0.0056207    0.0270466
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0026152   -0.0217243    0.0164938
24 months   LCNI-5      MALAWI       1                    NA                 0.0468874   -0.2461430    0.3399177
24 months   MAL-ED      BANGLADESH   1                    NA                 0.1069998   -0.0508601    0.2648596
24 months   MAL-ED      BRAZIL       1                    NA                 0.0264531   -0.5364860    0.5893921
24 months   MAL-ED      INDIA        1                    NA                -0.2901888   -0.8832443    0.3028667
24 months   MAL-ED      NEPAL        1                    NA                 0.1277169   -0.4652415    0.7206754
24 months   MAL-ED      PERU         1                    NA                 0.0382663   -0.1213925    0.1979252

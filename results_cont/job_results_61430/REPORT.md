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
![](/tmp/172f2a10-87f2-4197-8dcb-1da27adc7b5e/511ac3df-827d-44f3-9d5a-0a342925ada9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/172f2a10-87f2-4197-8dcb-1da27adc7b5e/511ac3df-827d-44f3-9d5a-0a342925ada9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/172f2a10-87f2-4197-8dcb-1da27adc7b5e/511ac3df-827d-44f3-9d5a-0a342925ada9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.1054103   -1.2175038   -0.9933167
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1416653   -1.2987414   -0.9845893
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.7869328   -0.8117627   -0.7621028
Birth       JiVitA-3       BANGLADESH   0                    NA                -0.7596830   -0.8036286   -0.7157374
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.6762213   -0.7310342   -0.6214083
Birth       JiVitA-4       BANGLADESH   0                    NA                -0.7475035   -0.8887273   -0.6062797
Birth       Keneba         GAMBIA       1                    NA                -1.2445312   -1.3454126   -1.1436498
Birth       Keneba         GAMBIA       0                    NA                -1.2661764   -1.3428832   -1.1894696
Birth       MAL-ED         BANGLADESH   1                    NA                -0.8890271   -1.1281976   -0.6498566
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0058785   -1.2132159   -0.7985411
Birth       MAL-ED         BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       MAL-ED         BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       MAL-ED         PERU         1                    NA                -0.0130769   -0.2240129    0.1978591
Birth       MAL-ED         PERU         0                    NA                -0.0799653   -0.2430386    0.0831081
Birth       PROVIDE        BANGLADESH   1                    NA                -1.3191337   -1.4698066   -1.1684609
Birth       PROVIDE        BANGLADESH   0                    NA                -1.2931215   -1.3795854   -1.2066577
Birth       SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA        0                    NA                -1.0901281   -1.7027393   -0.4775170
6 months    EE             PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE             PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal      NEPAL        1                    NA                -0.5705311   -0.6723254   -0.4687368
6 months    GMS-Nepal      NEPAL        0                    NA                -0.6351953   -0.8040320   -0.4663586
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.6029649   -0.6300968   -0.5758331
6 months    JiVitA-3       BANGLADESH   0                    NA                -0.5890347   -0.6346054   -0.5434640
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.3473740   -0.3921352   -0.3026128
6 months    JiVitA-4       BANGLADESH   0                    NA                -0.5623985   -0.6440755   -0.4807214
6 months    Keneba         GAMBIA       1                    NA                -0.0254542   -0.1239786    0.0730701
6 months    Keneba         GAMBIA       0                    NA                -0.2825305   -0.3451329   -0.2199281
6 months    LCNI-5         MALAWI       1                    NA                 0.3673117    0.0242437    0.7103797
6 months    LCNI-5         MALAWI       0                    NA                 0.3995555    0.2722878    0.5268233
6 months    MAL-ED         BANGLADESH   1                    NA                -0.1290953   -0.3644672    0.1062766
6 months    MAL-ED         BANGLADESH   0                    NA                -0.1147640   -0.2785409    0.0490128
6 months    MAL-ED         BRAZIL       1                    NA                 1.4364922    0.9943396    1.8786448
6 months    MAL-ED         BRAZIL       0                    NA                 0.8959621    0.7215484    1.0703758
6 months    MAL-ED         INDIA        1                    NA                -0.5699174   -0.9725922   -0.1672425
6 months    MAL-ED         INDIA        0                    NA                -0.7444305   -0.8780751   -0.6107860
6 months    MAL-ED         NEPAL        1                    NA                -0.0942797   -0.7607355    0.5721760
6 months    MAL-ED         NEPAL        0                    NA                 0.1127081   -0.0258012    0.2512174
6 months    MAL-ED         PERU         1                    NA                 1.1621087    0.9613575    1.3628600
6 months    MAL-ED         PERU         0                    NA                 0.9815020    0.8279705    1.1350336
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0034680   -0.1637601    0.1706962
6 months    PROVIDE        BANGLADESH   0                    NA                -0.2612432   -0.3559417   -0.1665447
6 months    SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL        1                    NA                -1.0923415   -1.1916245   -0.9930584
24 months   GMS-Nepal      NEPAL        0                    NA                -1.2959616   -1.5082202   -1.0837030
24 months   JiVitA-3       BANGLADESH   1                    NA                -1.3213209   -1.3560556   -1.2865862
24 months   JiVitA-3       BANGLADESH   0                    NA                -1.2731677   -1.3355546   -1.2107809
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.2226135   -1.2634543   -1.1817728
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.2315409   -1.3079931   -1.1550887
24 months   Keneba         GAMBIA       1                    NA                -0.7204906   -0.8031641   -0.6378171
24 months   Keneba         GAMBIA       0                    NA                -0.8452031   -0.9066592   -0.7837470
24 months   LCNI-5         MALAWI       1                    NA                -0.1301094   -0.4474567    0.1872379
24 months   LCNI-5         MALAWI       0                    NA                -0.0663053   -0.2272440    0.0946334
24 months   MAL-ED         BANGLADESH   1                    NA                -0.9177681   -1.1123305   -0.7232057
24 months   MAL-ED         BANGLADESH   0                    NA                -0.7469246   -0.9076974   -0.5861519
24 months   MAL-ED         BRAZIL       1                    NA                 0.4839216   -0.1159550    1.0837983
24 months   MAL-ED         BRAZIL       0                    NA                 0.4744965    0.2531181    0.6958750
24 months   MAL-ED         INDIA        1                    NA                -0.6505829   -1.1087961   -0.1923697
24 months   MAL-ED         INDIA        0                    NA                -0.9592405   -1.0834758   -0.8350052
24 months   MAL-ED         NEPAL        1                    NA                -0.4372695   -1.0701445    0.1956055
24 months   MAL-ED         NEPAL        0                    NA                -0.3620635   -0.4827629   -0.2413641
24 months   MAL-ED         PERU         1                    NA                 0.0484601   -0.1334426    0.2303628
24 months   MAL-ED         PERU         0                    NA                 0.1414925   -0.0130067    0.2959918
24 months   PROVIDE        BANGLADESH   1                    NA                -0.7926283   -0.9576699   -0.6275868
24 months   PROVIDE        BANGLADESH   0                    NA                -0.9239880   -1.0186689   -0.8293070


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
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0362551   -0.2176392    0.1451291
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                  0.0272498   -0.0215483    0.0760478
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0712822   -0.2191009    0.0765364
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                 -0.0216452   -0.1383719    0.0950815
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.1168514   -0.4470833    0.2133805
Birth       MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU         0                    1                 -0.0668884   -0.3346221    0.2008454
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0260122   -0.1385037    0.1905280
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783681    0.0820692
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.0646642   -0.2610903    0.1317619
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                  0.0139302   -0.0378102    0.0656706
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.2150244   -0.3080293   -0.1220195
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.2570762   -0.3730821   -0.1410704
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0322438   -0.3343815    0.3988691
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                  0.0143313   -0.2727694    0.3014320
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.5405301   -1.0158891   -0.0651711
6 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA        0                    1                 -0.1745132   -0.5986256    0.2495992
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.2069878   -0.4736877    0.8876633
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                 -0.1806067   -0.4343781    0.0731647
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.2647112   -0.4568803   -0.0725421
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                 -0.2036201   -0.4381248    0.0308846
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                  0.0481532   -0.0226438    0.1189501
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0089274   -0.0936026    0.0757478
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1247125   -0.2263100   -0.0231150
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0638041   -0.2924300    0.4200382
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.1708435   -0.0825493    0.4242362
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                 -0.0094251   -0.6477732    0.6289230
24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA        0                    1                 -0.3086576   -0.7833589    0.1660437
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.0752060   -0.5693735    0.7197855
24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU         0                    1                  0.0930324   -0.1377371    0.3238020
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                 -0.1313596   -0.3200356    0.0573163


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0010457   -0.0467996    0.0447082
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0061519   -0.0044991    0.0168029
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0142374   -0.0416569    0.0131822
Birth       Keneba         GAMBIA       1                    NA                -0.0154613   -0.0929201    0.0619976
Birth       MAL-ED         BANGLADESH   1                    NA                -0.0865399   -0.3068533    0.1337734
Birth       MAL-ED         BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       MAL-ED         PERU         1                    NA                -0.0457212   -0.2222493    0.1308069
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0206751   -0.1030597    0.1444099
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    EE             PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0303860   -0.0810500    0.0202780
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0028349   -0.0089921    0.0146619
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0494716   -0.0709451   -0.0279981
6 months    Keneba         GAMBIA       1                    NA                -0.1743104   -0.2555531   -0.0930677
6 months    LCNI-5         MALAWI       1                    NA                 0.0251883   -0.2806790    0.3310556
6 months    MAL-ED         BANGLADESH   1                    NA                 0.0077750   -0.1807197    0.1962696
6 months    MAL-ED         BRAZIL       1                    NA                -0.4644148   -0.8721568   -0.0566729
6 months    MAL-ED         INDIA        1                    NA                -0.1368143   -0.5412058    0.2675772
6 months    MAL-ED         NEPAL        1                    NA                 0.2034205   -0.4424399    0.8492809
6 months    MAL-ED         PERU         1                    NA                -0.1114937   -0.2792293    0.0562418
6 months    PROVIDE        BANGLADESH   1                    NA                -0.2025587   -0.3505563   -0.0545610
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0500110   -0.1067173    0.0066952
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0109834   -0.0051266    0.0270934
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0039185   -0.0232482    0.0154111
24 months   Keneba         GAMBIA       1                    NA                -0.0827423   -0.1500462   -0.0154385
24 months   LCNI-5         MALAWI       1                    NA                 0.0530442   -0.2406382    0.3467266
24 months   MAL-ED         BANGLADESH   1                    NA                 0.1007925   -0.0660984    0.2676834
24 months   MAL-ED         BRAZIL       1                    NA                -0.0212984   -0.5722289    0.5296321
24 months   MAL-ED         INDIA        1                    NA                -0.2936755   -0.7460854    0.1587344
24 months   MAL-ED         NEPAL        1                    NA                 0.0698266   -0.5483488    0.6880020
24 months   MAL-ED         PERU         1                    NA                 0.0627381   -0.0910383    0.2165144
24 months   PROVIDE        BANGLADESH   1                    NA                -0.1002387   -0.2447254    0.0442480

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

**Intervention Variable:** exclfeed3

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

agecat      studyid          country                        exclfeed3    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       EE               PAKISTAN                       1                35      35
Birth       EE               PAKISTAN                       0                 0      35
Birth       GMS-Nepal        NEPAL                          1               380     458
Birth       GMS-Nepal        NEPAL                          0                78     458
Birth       IRC              INDIA                          1                 0      10
Birth       IRC              INDIA                          0                10      10
Birth       JiVitA-3         BANGLADESH                     1             12014   13276
Birth       JiVitA-3         BANGLADESH                     0              1262   13276
Birth       JiVitA-4         BANGLADESH                     1               105     116
Birth       JiVitA-4         BANGLADESH                     0                11     116
Birth       Keneba           GAMBIA                         1              1198    1356
Birth       Keneba           GAMBIA                         0               158    1356
Birth       MAL-ED           BANGLADESH                     1               138     215
Birth       MAL-ED           BANGLADESH                     0                77     215
Birth       MAL-ED           BRAZIL                         1                12      57
Birth       MAL-ED           BRAZIL                         0                45      57
Birth       MAL-ED           INDIA                          1                24      41
Birth       MAL-ED           INDIA                          0                17      41
Birth       MAL-ED           NEPAL                          1                 8      26
Birth       MAL-ED           NEPAL                          0                18      26
Birth       MAL-ED           PERU                           1                49     223
Birth       MAL-ED           PERU                           0               174     223
Birth       MAL-ED           SOUTH AFRICA                   1                12     100
Birth       MAL-ED           SOUTH AFRICA                   0                88     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                17     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                85     102
Birth       PROVIDE          BANGLADESH                     1               387     539
Birth       PROVIDE          BANGLADESH                     0               152     539
Birth       SAS-CompFeed     INDIA                          1               346     364
Birth       SAS-CompFeed     INDIA                          0                18     364
6 months    CMC-V-BCS-2002   INDIA                          1                10      10
6 months    CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    EE               PAKISTAN                       1                39      39
6 months    EE               PAKISTAN                       0                 0      39
6 months    GMS-Nepal        NEPAL                          1               367     441
6 months    GMS-Nepal        NEPAL                          0                74     441
6 months    IRC              INDIA                          1                 0      10
6 months    IRC              INDIA                          0                10      10
6 months    JiVitA-3         BANGLADESH                     1              8514    9328
6 months    JiVitA-3         BANGLADESH                     0               814    9328
6 months    JiVitA-4         BANGLADESH                     1                76      88
6 months    JiVitA-4         BANGLADESH                     0                12      88
6 months    Keneba           GAMBIA                         1              1541    1742
6 months    Keneba           GAMBIA                         0               201    1742
6 months    MAL-ED           BANGLADESH                     1               152     233
6 months    MAL-ED           BANGLADESH                     0                81     233
6 months    MAL-ED           BRAZIL                         1                60     187
6 months    MAL-ED           BRAZIL                         0               127     187
6 months    MAL-ED           INDIA                          1               110     210
6 months    MAL-ED           INDIA                          0               100     210
6 months    MAL-ED           NEPAL                          1                70     227
6 months    MAL-ED           NEPAL                          0               157     227
6 months    MAL-ED           PERU                           1                61     270
6 months    MAL-ED           PERU                           0               209     270
6 months    MAL-ED           SOUTH AFRICA                   1                22     244
6 months    MAL-ED           SOUTH AFRICA                   0               222     244
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                46     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               166     212
6 months    PROVIDE          BANGLADESH                     1               428     604
6 months    PROVIDE          BANGLADESH                     0               176     604
6 months    SAS-CompFeed     INDIA                          1               379     398
6 months    SAS-CompFeed     INDIA                          0                19     398
24 months   CMC-V-BCS-2002   INDIA                          1                10      10
24 months   CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   EE               PAKISTAN                       1                20      20
24 months   EE               PAKISTAN                       0                 0      20
24 months   GMS-Nepal        NEPAL                          1               322     384
24 months   GMS-Nepal        NEPAL                          0                62     384
24 months   IRC              INDIA                          1                 0      10
24 months   IRC              INDIA                          0                10      10
24 months   JiVitA-3         BANGLADESH                     1              4433    4852
24 months   JiVitA-3         BANGLADESH                     0               419    4852
24 months   JiVitA-4         BANGLADESH                     1               136     151
24 months   JiVitA-4         BANGLADESH                     0                15     151
24 months   Keneba           GAMBIA                         1              1274    1420
24 months   Keneba           GAMBIA                         0               146    1420
24 months   MAL-ED           BANGLADESH                     1               135     205
24 months   MAL-ED           BANGLADESH                     0                70     205
24 months   MAL-ED           BRAZIL                         1                52     152
24 months   MAL-ED           BRAZIL                         0               100     152
24 months   MAL-ED           INDIA                          1               102     202
24 months   MAL-ED           INDIA                          0               100     202
24 months   MAL-ED           NEPAL                          1                67     220
24 months   MAL-ED           NEPAL                          0               153     220
24 months   MAL-ED           PERU                           1                43     198
24 months   MAL-ED           PERU                           0               155     198
24 months   MAL-ED           SOUTH AFRICA                   1                19     228
24 months   MAL-ED           SOUTH AFRICA                   0               209     228
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               146     184
24 months   PROVIDE          BANGLADESH                     1               408     578
24 months   PROVIDE          BANGLADESH                     0               170     578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/73a8c195-a7a8-402b-9d0a-1154d951e26c/09599579-2fb1-4ef8-9ea0-56c3dc706ce9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/73a8c195-a7a8-402b-9d0a-1154d951e26c/09599579-2fb1-4ef8-9ea0-56c3dc706ce9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/73a8c195-a7a8-402b-9d0a-1154d951e26c/09599579-2fb1-4ef8-9ea0-56c3dc706ce9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.0231943   -1.1301915   -0.9161971
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.1733290   -1.4375510   -0.9091069
Birth       JiVitA-3       BANGLADESH                     1                    NA                -1.5898494   -1.6134685   -1.5662303
Birth       JiVitA-3       BANGLADESH                     0                    NA                -1.6154830   -1.6702938   -1.5606722
Birth       JiVitA-4       BANGLADESH                     1                    NA                -1.5527682   -1.7583542   -1.3471823
Birth       JiVitA-4       BANGLADESH                     0                    NA                -1.4409494   -2.7737118   -0.1081869
Birth       Keneba         GAMBIA                         1                    NA                 0.0013583   -0.0718009    0.0745175
Birth       Keneba         GAMBIA                         0                    NA                 0.0779466   -0.0891943    0.2450875
Birth       MAL-ED         BANGLADESH                     1                    NA                -1.1226789   -1.2831219   -0.9622358
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0466337   -1.2995687   -0.7936987
Birth       MAL-ED         BRAZIL                         1                    NA                -0.5017155   -1.2638539    0.2604229
Birth       MAL-ED         BRAZIL                         0                    NA                -0.7213633   -1.0436809   -0.3990456
Birth       MAL-ED         INDIA                          1                    NA                -1.4714430   -1.9606224   -0.9822636
Birth       MAL-ED         INDIA                          0                    NA                -0.8576786   -1.1688021   -0.5465551
Birth       MAL-ED         NEPAL                          1                    NA                -0.6962500   -1.1273498   -0.2651502
Birth       MAL-ED         NEPAL                          0                    NA                -0.8800000   -1.3706027   -0.3893973
Birth       MAL-ED         PERU                           1                    NA                -0.8520626   -1.0912038   -0.6129215
Birth       MAL-ED         PERU                           0                    NA                -0.8791446   -1.0035503   -0.7547389
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.2864578   -0.7863513    0.2134357
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.5588398   -0.7781569   -0.3395227
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6070827   -2.1233397   -1.0908257
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0722901   -1.3185182   -0.8260619
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.9031761   -0.9845857   -0.8217666
Birth       PROVIDE        BANGLADESH                     0                    NA                -0.8488725   -0.9850439   -0.7127011
Birth       SAS-CompFeed   INDIA                          1                    NA                -1.3791852   -1.4632653   -1.2951052
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.4188476   -2.1434587   -0.6942365
6 months    GMS-Nepal      NEPAL                          1                    NA                -1.3263283   -1.4213460   -1.2313106
6 months    GMS-Nepal      NEPAL                          0                    NA                -1.4269688   -1.6663482   -1.1875893
6 months    JiVitA-3       BANGLADESH                     1                    NA                -1.3197186   -1.3488830   -1.2905543
6 months    JiVitA-3       BANGLADESH                     0                    NA                -1.3746230   -1.4595696   -1.2896764
6 months    JiVitA-4       BANGLADESH                     1                    NA                -1.1134409   -1.3032710   -0.9236109
6 months    JiVitA-4       BANGLADESH                     0                    NA                -1.2361332   -1.7995432   -0.6727233
6 months    Keneba         GAMBIA                         1                    NA                -0.9288188   -0.9828669   -0.8747707
6 months    Keneba         GAMBIA                         0                    NA                -1.1032379   -1.2613745   -0.9451013
6 months    MAL-ED         BANGLADESH                     1                    NA                -1.1813799   -1.3152657   -1.0474941
6 months    MAL-ED         BANGLADESH                     0                    NA                -1.2552341   -1.4961389   -1.0143293
6 months    MAL-ED         BRAZIL                         1                    NA                 0.1227280   -0.1582946    0.4037505
6 months    MAL-ED         BRAZIL                         0                    NA                 0.0389752   -0.1495291    0.2274794
6 months    MAL-ED         INDIA                          1                    NA                -1.1857187   -1.3568709   -1.0145665
6 months    MAL-ED         INDIA                          0                    NA                -1.2291299   -1.4156677   -1.0425922
6 months    MAL-ED         NEPAL                          1                    NA                -0.6151873   -0.8383579   -0.3920167
6 months    MAL-ED         NEPAL                          0                    NA                -0.5404773   -0.6716034   -0.4093513
6 months    MAL-ED         PERU                           1                    NA                -1.3683176   -1.6036639   -1.1329713
6 months    MAL-ED         PERU                           0                    NA                -1.2934206   -1.4141927   -1.1726485
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.7203679   -1.2037050   -0.2370308
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                -1.0972736   -1.2324146   -0.9621326
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4718741   -1.7303781   -1.2133700
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4066019   -1.5500268   -1.2631770
6 months    PROVIDE        BANGLADESH                     1                    NA                -1.0873626   -1.1712441   -1.0034811
6 months    PROVIDE        BANGLADESH                     0                    NA                -1.1091830   -1.2638617   -0.9545043
6 months    SAS-CompFeed   INDIA                          1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA                          0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.8880129   -1.9894666   -1.7865593
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.8442330   -2.0766959   -1.6117701
24 months   JiVitA-3       BANGLADESH                     1                    NA                -2.0051368   -2.0429150   -1.9673585
24 months   JiVitA-3       BANGLADESH                     0                    NA                -2.1568974   -2.2644379   -2.0493570
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.7143651   -1.8622618   -1.5664683
24 months   JiVitA-4       BANGLADESH                     0                    NA                -2.0080362   -2.3025635   -1.7135089
24 months   Keneba         GAMBIA                         1                    NA                -1.5737219   -1.6306825   -1.5167612
24 months   Keneba         GAMBIA                         0                    NA                -1.7917329   -1.9638374   -1.6196283
24 months   MAL-ED         BANGLADESH                     1                    NA                -1.9776874   -2.1348815   -1.8204933
24 months   MAL-ED         BANGLADESH                     0                    NA                -2.0946731   -2.3242222   -1.8651241
24 months   MAL-ED         BRAZIL                         1                    NA                -0.0823438   -0.3845866    0.2198990
24 months   MAL-ED         BRAZIL                         0                    NA                 0.0181696   -0.2036868    0.2400259
24 months   MAL-ED         INDIA                          1                    NA                -2.0320523   -2.2175043   -1.8466003
24 months   MAL-ED         INDIA                          0                    NA                -1.7650013   -1.9605880   -1.5694147
24 months   MAL-ED         NEPAL                          1                    NA                -1.4169636   -1.6330755   -1.2008517
24 months   MAL-ED         NEPAL                          0                    NA                -1.2808489   -1.4272687   -1.1344291
24 months   MAL-ED         PERU                           1                    NA                -1.8669773   -2.1387164   -1.5952382
24 months   MAL-ED         PERU                           0                    NA                -1.7155289   -1.8476471   -1.5834106
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -1.2277879   -1.6977505   -0.7578253
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                -1.6585990   -1.8044303   -1.5127677
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5855990   -2.8898646   -2.2813334
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6937377   -2.8582262   -2.5292492
24 months   PROVIDE        BANGLADESH                     1                    NA                -1.6423537   -1.7396953   -1.5450120
24 months   PROVIDE        BANGLADESH                     0                    NA                -1.5092923   -1.6598640   -1.3587205


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       JiVitA-3       BANGLADESH                     NA                   NA                -1.5928457   -1.6158667   -1.5698248
Birth       JiVitA-4       BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
Birth       Keneba         GAMBIA                         NA                   NA                 0.0098304   -0.0597854    0.0794461
Birth       MAL-ED         BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       MAL-ED         BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       MAL-ED         INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       MAL-ED         NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       MAL-ED         PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
Birth       PROVIDE        BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA                          NA                   NA                -1.3937088   -1.5095039   -1.2779137
6 months    GMS-Nepal      NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    JiVitA-3       BANGLADESH                     NA                   NA                -1.3240051   -1.3526414   -1.2953689
6 months    JiVitA-4       BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
6 months    Keneba         GAMBIA                         NA                   NA                -0.9489317   -1.0001696   -0.8976937
6 months    MAL-ED         BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    MAL-ED         INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    MAL-ED         NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    MAL-ED         PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    PROVIDE        BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA                          NA                   NA                -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   JiVitA-3       BANGLADESH                     NA                   NA                -2.0187325   -2.0554682   -1.9819968
24 months   JiVitA-4       BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067
24 months   Keneba         GAMBIA                         NA                   NA                -1.5961170   -1.6505261   -1.5417080
24 months   MAL-ED         BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   MAL-ED         BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   MAL-ED         INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   MAL-ED         NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   MAL-ED         PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235
24 months   PROVIDE        BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 -0.1501347   -0.4351747    0.1349053
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                 -0.0256336   -0.0805693    0.0293020
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                  0.1118189   -1.2348728    1.4585106
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                  0.0765883   -0.0979323    0.2511089
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                  0.0760452   -0.2236657    0.3757560
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.2196478   -1.0461423    0.6068468
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.6137644    0.0266458    1.2008830
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.1837500   -0.8368488    0.4693488
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.0270820   -0.2737221    0.2195582
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.2723820   -0.8232167    0.2784527
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.5347927   -0.0391185    1.1087038
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                  0.0543037   -0.0909013    0.1995087
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.0396624   -0.7382457    0.6589209
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.1006405   -0.3584304    0.1571495
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                 -0.0549044   -0.1406515    0.0308428
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.1226923   -0.7166194    0.4712348
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.1744191   -0.3413403   -0.0074978
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0738542   -0.3501431    0.2024347
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.0837528   -0.4205674    0.2530618
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0434112   -0.2949501    0.2081277
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.0747099   -0.1846125    0.3340324
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.0748970   -0.1897214    0.3395154
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.3769057   -0.8799242    0.1261127
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0652722   -0.2257313    0.3562756
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.0218204   -0.1978910    0.1542501
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0437799   -0.2068344    0.2943943
24 months   JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH                     0                    1                 -0.1517607   -0.2621269   -0.0413945
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                 -0.2936711   -0.6249348    0.0375925
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.2180110   -0.3981054   -0.0379166
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.1169858   -0.3952129    0.1612413
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.1005134   -0.2750110    0.4760378
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.2670510   -0.0024176    0.5365196
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1361147   -0.1257457    0.3979751
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.1514484   -0.1422627    0.4451596
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.4308111   -0.9247990    0.0631767
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1081387   -0.4546620    0.2383846
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.1330614   -0.0430539    0.3091768


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.0323297   -0.0812788    0.0166193
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.0029964   -0.0082345    0.0022418
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0545594   -0.1447128    0.0355940
Birth       Keneba         GAMBIA                         1                    NA                 0.0084721   -0.0118935    0.0288377
Birth       MAL-ED         BANGLADESH                     1                    NA                 0.0277021   -0.0798049    0.1352092
Birth       MAL-ED         BRAZIL                         1                    NA                -0.1979336   -0.8791223    0.4832551
Birth       MAL-ED         INDIA                          1                    NA                 0.2638820   -0.0016697    0.5294337
Birth       MAL-ED         NEPAL                          1                    NA                -0.1272115   -0.5805774    0.3261543
Birth       MAL-ED         PERU                           1                    NA                -0.0233185   -0.2168956    0.1702585
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.2932422   -0.7885888    0.2021043
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4984553    0.0159090    0.9810016
Birth       PROVIDE        BANGLADESH                     1                    NA                 0.0180741   -0.0238274    0.0599756
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0145236   -0.0577567    0.0287095
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.0236566   -0.0674200    0.0201068
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.0042865   -0.0117591    0.0031861
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0859909   -0.1779307    0.0059490
6 months    Keneba         GAMBIA                         1                    NA                -0.0201128   -0.0393999   -0.0008257
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0429119   -0.1387001    0.0528762
6 months    MAL-ED         BRAZIL                         1                    NA                -0.0618189   -0.2940944    0.1704566
6 months    MAL-ED         INDIA                          1                    NA                -0.0145194   -0.1331920    0.1041532
6 months    MAL-ED         NEPAL                          1                    NA                 0.0517805   -0.1275808    0.2311418
6 months    MAL-ED         PERU                           1                    NA                 0.0574442   -0.1478033    0.2626916
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.3458548   -0.8045965    0.1128870
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0688238   -0.1614112    0.2990587
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0043289   -0.0555115    0.0468537
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0127135   -0.0268763    0.0523032
24 months   JiVitA-3       BANGLADESH                     1                    NA                -0.0135957   -0.0230963   -0.0040951
24 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0582840   -0.0979514   -0.0186165
24 months   Keneba         GAMBIA                         1                    NA                -0.0223951   -0.0407152   -0.0040751
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0239712   -0.1187224    0.0707800
24 months   MAL-ED         BRAZIL                         1                    NA                 0.0660500   -0.1822439    0.3143438
24 months   MAL-ED         INDIA                          1                    NA                 0.1326464   -0.0025216    0.2678144
24 months   MAL-ED         NEPAL                          1                    NA                 0.1060318   -0.0777941    0.2898577
24 months   MAL-ED         PERU                           1                    NA                 0.1256810   -0.1060132    0.3573752
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.4146646   -0.8721869    0.0428577
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0912217   -0.3662667    0.1838234
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0399315   -0.0122118    0.0920749

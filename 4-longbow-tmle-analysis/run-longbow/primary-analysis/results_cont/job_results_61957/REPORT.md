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
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7  haz              
Birth       EE               PAKISTAN                       1                38      42  haz              
Birth       EE               PAKISTAN                       0                 4      42  haz              
Birth       GMS-Nepal        NEPAL                          1               419     563  haz              
Birth       GMS-Nepal        NEPAL                          0               144     563  haz              
Birth       IRC              INDIA                          1                 0      14  haz              
Birth       IRC              INDIA                          0                14      14  haz              
Birth       JiVitA-3         BANGLADESH                     1             10466   13423  haz              
Birth       JiVitA-3         BANGLADESH                     0              2957   13423  haz              
Birth       JiVitA-4         BANGLADESH                     1              2103    2632  haz              
Birth       JiVitA-4         BANGLADESH                     0               529    2632  haz              
Birth       Keneba           GAMBIA                         1               485    1403  haz              
Birth       Keneba           GAMBIA                         0               918    1403  haz              
Birth       MAL-ED           BANGLADESH                     1                72     205  haz              
Birth       MAL-ED           BANGLADESH                     0               133     205  haz              
Birth       MAL-ED           BRAZIL                         1                 6      60  haz              
Birth       MAL-ED           BRAZIL                         0                54      60  haz              
Birth       MAL-ED           INDIA                          1                 4      39  haz              
Birth       MAL-ED           INDIA                          0                35      39  haz              
Birth       MAL-ED           NEPAL                          1                 3      24  haz              
Birth       MAL-ED           NEPAL                          0                21      24  haz              
Birth       MAL-ED           PERU                           1                73     213  haz              
Birth       MAL-ED           PERU                           0               140     213  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                 1      91  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                90      91  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
Birth       PROVIDE          BANGLADESH                     1               159     539  haz              
Birth       PROVIDE          BANGLADESH                     0               380     539  haz              
Birth       SAS-CompFeed     INDIA                          1               346     364  haz              
Birth       SAS-CompFeed     INDIA                          0                18     364  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                19      19  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
6 months    EE               PAKISTAN                       1                43      48  haz              
6 months    EE               PAKISTAN                       0                 5      48  haz              
6 months    GMS-Nepal        NEPAL                          1               406     547  haz              
6 months    GMS-Nepal        NEPAL                          0               141     547  haz              
6 months    IRC              INDIA                          1                 0      14  haz              
6 months    IRC              INDIA                          0                14      14  haz              
6 months    JiVitA-3         BANGLADESH                     1              7644    9901  haz              
6 months    JiVitA-3         BANGLADESH                     0              2257    9901  haz              
6 months    JiVitA-4         BANGLADESH                     1              3328    4272  haz              
6 months    JiVitA-4         BANGLADESH                     0               944    4272  haz              
6 months    Keneba           GAMBIA                         1               586    1908  haz              
6 months    Keneba           GAMBIA                         0              1322    1908  haz              
6 months    LCNI-5           MALAWI                         1                47     272  haz              
6 months    LCNI-5           MALAWI                         0               225     272  haz              
6 months    MAL-ED           BANGLADESH                     1                84     231  haz              
6 months    MAL-ED           BANGLADESH                     0               147     231  haz              
6 months    MAL-ED           BRAZIL                         1                30     209  haz              
6 months    MAL-ED           BRAZIL                         0               179     209  haz              
6 months    MAL-ED           INDIA                          1                11     218  haz              
6 months    MAL-ED           INDIA                          0               207     218  haz              
6 months    MAL-ED           NEPAL                          1                12     225  haz              
6 months    MAL-ED           NEPAL                          0               213     225  haz              
6 months    MAL-ED           PERU                           1                92     271  haz              
6 months    MAL-ED           PERU                           0               179     271  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                 3     233  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               230     233  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     232  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               231     232  haz              
6 months    PROVIDE          BANGLADESH                     1               141     604  haz              
6 months    PROVIDE          BANGLADESH                     0               463     604  haz              
6 months    SAS-CompFeed     INDIA                          1               379     398  haz              
6 months    SAS-CompFeed     INDIA                          0                19     398  haz              
6 months    SAS-FoodSuppl    INDIA                          1                 0     168  haz              
6 months    SAS-FoodSuppl    INDIA                          0               168     168  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                19      19  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
24 months   EE               PAKISTAN                       1                20      23  haz              
24 months   EE               PAKISTAN                       0                 3      23  haz              
24 months   GMS-Nepal        NEPAL                          1               356     470  haz              
24 months   GMS-Nepal        NEPAL                          0               114     470  haz              
24 months   IRC              INDIA                          1                 0      14  haz              
24 months   IRC              INDIA                          0                14      14  haz              
24 months   JiVitA-3         BANGLADESH                     1              3926    5088  haz              
24 months   JiVitA-3         BANGLADESH                     0              1162    5088  haz              
24 months   JiVitA-4         BANGLADESH                     1              3292    4199  haz              
24 months   JiVitA-4         BANGLADESH                     0               907    4199  haz              
24 months   Keneba           GAMBIA                         1               515    1513  haz              
24 months   Keneba           GAMBIA                         0               998    1513  haz              
24 months   LCNI-5           MALAWI                         1                34     189  haz              
24 months   LCNI-5           MALAWI                         0               155     189  haz              
24 months   MAL-ED           BANGLADESH                     1                76     205  haz              
24 months   MAL-ED           BANGLADESH                     0               129     205  haz              
24 months   MAL-ED           BRAZIL                         1                25     169  haz              
24 months   MAL-ED           BRAZIL                         0               144     169  haz              
24 months   MAL-ED           INDIA                          1                11     209  haz              
24 months   MAL-ED           INDIA                          0               198     209  haz              
24 months   MAL-ED           NEPAL                          1                12     219  haz              
24 months   MAL-ED           NEPAL                          0               207     219  haz              
24 months   MAL-ED           PERU                           1                68     201  haz              
24 months   MAL-ED           PERU                           0               133     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                 3     216  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               213     216  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     202  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               201     202  haz              
24 months   PROVIDE          BANGLADESH                     1               137     578  haz              
24 months   PROVIDE          BANGLADESH                     0               441     578  haz              


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
![](/tmp/78f75e34-078d-4c0b-8c9e-de3f008f3b9d/7df86fab-092b-4623-9f97-120b5ad9d76f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/78f75e34-078d-4c0b-8c9e-de3f008f3b9d/7df86fab-092b-4623-9f97-120b5ad9d76f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/78f75e34-078d-4c0b-8c9e-de3f008f3b9d/7df86fab-092b-4623-9f97-120b5ad9d76f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.0544641   -1.1518255   -0.9571027
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1202663   -1.2965789   -0.9439537
Birth       JiVitA-3       BANGLADESH   1                    NA                -1.5946890   -1.6194672   -1.5699108
Birth       JiVitA-3       BANGLADESH   0                    NA                -1.5980065   -1.6373136   -1.5586994
Birth       JiVitA-4       BANGLADESH   1                    NA                -1.5091167   -1.5613777   -1.4568557
Birth       JiVitA-4       BANGLADESH   0                    NA                -1.6022009   -1.7298527   -1.4745492
Birth       Keneba         GAMBIA       1                    NA                -0.0072101   -0.1150396    0.1006194
Birth       Keneba         GAMBIA       0                    NA                 0.0247498   -0.0542056    0.1037053
Birth       MAL-ED         BANGLADESH   1                    NA                -1.0498479   -1.2794300   -0.8202658
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0626195   -1.2417289   -0.8835102
Birth       MAL-ED         BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       MAL-ED         BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       MAL-ED         PERU         1                    NA                -0.8776044   -1.0427338   -0.7124749
Birth       MAL-ED         PERU         0                    NA                -0.9207338   -1.0691906   -0.7722771
Birth       PROVIDE        BANGLADESH   1                    NA                -0.9376219   -1.0673724   -0.8078714
Birth       PROVIDE        BANGLADESH   0                    NA                -0.8749844   -0.9618567   -0.7881121
Birth       SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
6 months    EE             PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE             PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal      NEPAL        1                    NA                -1.3070013   -1.3958834   -1.2181191
6 months    GMS-Nepal      NEPAL        0                    NA                -1.4720513   -1.6419461   -1.3021565
6 months    JiVitA-3       BANGLADESH   1                    NA                -1.3085486   -1.3389818   -1.2781153
6 months    JiVitA-3       BANGLADESH   0                    NA                -1.3326171   -1.3819007   -1.2833334
6 months    JiVitA-4       BANGLADESH   1                    NA                -1.3095165   -1.3504487   -1.2685843
6 months    JiVitA-4       BANGLADESH   0                    NA                -1.4729347   -1.5631742   -1.3826952
6 months    Keneba         GAMBIA       1                    NA                -0.8920431   -0.9808636   -0.8032226
6 months    Keneba         GAMBIA       0                    NA                -0.9469047   -1.0056703   -0.8881390
6 months    LCNI-5         MALAWI       1                    NA                -1.7134805   -1.9994541   -1.4275068
6 months    LCNI-5         MALAWI       0                    NA                -1.6256196   -1.7565828   -1.4946564
6 months    MAL-ED         BANGLADESH   1                    NA                -1.1140250   -1.2969354   -0.9311146
6 months    MAL-ED         BANGLADESH   0                    NA                -1.2408264   -1.3956843   -1.0859684
6 months    MAL-ED         BRAZIL       1                    NA                 0.1941036   -0.2177991    0.6060063
6 months    MAL-ED         BRAZIL       0                    NA                 0.0312538   -0.1185736    0.1810812
6 months    MAL-ED         INDIA        1                    NA                -1.2488776   -2.2079269   -0.2898282
6 months    MAL-ED         INDIA        0                    NA                -1.1939063   -1.3147647   -1.0730478
6 months    MAL-ED         NEPAL        1                    NA                -0.6086820   -1.1726910   -0.0446729
6 months    MAL-ED         NEPAL        0                    NA                -0.5572679   -0.6755468   -0.4389889
6 months    MAL-ED         PERU         1                    NA                -1.2771506   -1.4523624   -1.1019389
6 months    MAL-ED         PERU         0                    NA                -1.3691056   -1.5057296   -1.2324816
6 months    PROVIDE        BANGLADESH   1                    NA                -1.0943573   -1.2293089   -0.9594057
6 months    PROVIDE        BANGLADESH   0                    NA                -1.0930770   -1.1807358   -1.0054181
6 months    SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL        1                    NA                -1.9073912   -2.0023116   -1.8124709
24 months   GMS-Nepal      NEPAL        0                    NA                -1.9045786   -2.0989385   -1.7102187
24 months   JiVitA-3       BANGLADESH   1                    NA                -2.0026992   -2.0426011   -1.9627973
24 months   JiVitA-3       BANGLADESH   0                    NA                -2.0415106   -2.1116982   -1.9713230
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.7810986   -1.8228610   -1.7393361
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.8329213   -1.9086002   -1.7572423
24 months   Keneba         GAMBIA       1                    NA                -1.5162493   -1.6015608   -1.4309378
24 months   Keneba         GAMBIA       0                    NA                -1.6194716   -1.6859486   -1.5529946
24 months   LCNI-5         MALAWI       1                    NA                -2.0137333   -2.3203902   -1.7070764
24 months   LCNI-5         MALAWI       0                    NA                -1.9495008   -2.1077066   -1.7912950
24 months   MAL-ED         BANGLADESH   1                    NA                -1.9169230   -2.1574062   -1.6764397
24 months   MAL-ED         BANGLADESH   0                    NA                -1.9433159   -2.0903643   -1.7962676
24 months   MAL-ED         BRAZIL       1                    NA                -0.0708919   -0.5566598    0.4148760
24 months   MAL-ED         BRAZIL       0                    NA                 0.0160534   -0.1680078    0.2001145
24 months   MAL-ED         INDIA        1                    NA                -2.5207714   -3.0470193   -1.9945236
24 months   MAL-ED         INDIA        0                    NA                -1.8513087   -1.9826807   -1.7199366
24 months   MAL-ED         NEPAL        1                    NA                -1.6475469   -2.1748182   -1.1202755
24 months   MAL-ED         NEPAL        0                    NA                -1.3058504   -1.4313726   -1.1803283
24 months   MAL-ED         PERU         1                    NA                -1.7912200   -2.0049547   -1.5774854
24 months   MAL-ED         PERU         0                    NA                -1.7408866   -1.8948454   -1.5869278
24 months   PROVIDE        BANGLADESH   1                    NA                -1.7020404   -1.8590794   -1.5450014
24 months   PROVIDE        BANGLADESH   0                    NA                -1.5696558   -1.6654226   -1.4738890


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3       BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4       BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       Keneba         GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED         BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED         PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
6 months    EE             PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal      NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3       BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4       BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    Keneba         GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    LCNI-5         MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3       BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   Keneba         GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   LCNI-5         MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED         PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0658022   -0.2601184    0.1285140
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                 -0.0033175   -0.0440879    0.0374529
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0930843   -0.2301065    0.0439379
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                  0.0319599   -0.0917417    0.1556616
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.0127716   -0.3048193    0.2792760
Birth       MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU         0                    1                 -0.0431295   -0.2380806    0.1518217
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0626376   -0.0812106    0.2064858
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.1650501   -0.3559386    0.0258384
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                 -0.0240685   -0.0764339    0.0282969
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.1634183   -0.2610280   -0.0658085
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.0548616   -0.1601937    0.0504705
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0878609   -0.2232350    0.3989567
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.1268014   -0.3682278    0.1146251
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.1628498   -0.6029261    0.2772264
6 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA        0                    1                  0.0549713   -0.9111237    1.0210662
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.0514141   -0.5247832    0.6276115
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                 -0.0919550   -0.3126935    0.1287836
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                  0.0012803   -0.1588329    0.1613936
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                  0.0028126   -0.2112306    0.2168559
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                 -0.0388114   -0.1157572    0.0381345
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0518227   -0.1328240    0.0291786
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1032223   -0.2106039    0.0041593
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0642325   -0.2812914    0.4097563
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                 -0.0263930   -0.3122609    0.2594750
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.0869453   -0.4335266    0.6074172
24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA        0                    1                  0.6694628    0.1269639    1.2119616
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.3416964   -0.1998026    0.8831955
24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU         0                    1                  0.0503334   -0.2136712    0.3143381
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                  0.1323846   -0.0484723    0.3132416


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0096567   -0.0594368    0.0401234
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.0008448   -0.0098117    0.0081221
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0181972   -0.0466444    0.0102500
Birth       Keneba         GAMBIA       1                    NA                 0.0198544   -0.0612457    0.1009546
Birth       MAL-ED         BANGLADESH   1                    NA                -0.0031765   -0.1968772    0.1905242
Birth       MAL-ED         BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       MAL-ED         PERU         1                    NA                -0.0289684   -0.1570558    0.0991190
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0525199   -0.0551879    0.1602277
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
6 months    EE             PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0470268   -0.0961247    0.0020712
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0052773   -0.0172110    0.0066564
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0387139   -0.0601079   -0.0173198
6 months    Keneba         GAMBIA       1                    NA                -0.0410677   -0.1147164    0.0325809
6 months    LCNI-5         MALAWI       1                    NA                 0.0738849   -0.1845162    0.3322860
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0760544   -0.2308009    0.0786922
6 months    MAL-ED         BRAZIL       1                    NA                -0.1465278   -0.5238129    0.2307573
6 months    MAL-ED         INDIA        1                    NA                 0.0300473   -0.8949422    0.9550367
6 months    MAL-ED         NEPAL        1                    NA                 0.0464449   -0.5019167    0.5948066
6 months    MAL-ED         PERU         1                    NA                -0.0448820   -0.1909385    0.1011746
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0026658   -0.1203348    0.1256664
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0071785   -0.0441188    0.0584758
24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0091011   -0.0266550    0.0084528
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0103780   -0.0276383    0.0068824
24 months   Keneba         GAMBIA       1                    NA                -0.0713800   -0.1426025   -0.0001576
24 months   LCNI-5         MALAWI       1                    NA                 0.0486010   -0.2369365    0.3341386
24 months   MAL-ED         BANGLADESH   1                    NA                -0.0407112   -0.2233093    0.1418869
24 months   MAL-ED         BRAZIL       1                    NA                 0.0770063   -0.3756391    0.5296518
24 months   MAL-ED         INDIA        1                    NA                 0.6344317    0.1211742    1.1476893
24 months   MAL-ED         NEPAL        1                    NA                 0.3287798   -0.1853040    0.8428635
24 months   MAL-ED         PERU         1                    NA                 0.0387490   -0.1396785    0.2171766
24 months   PROVIDE        BANGLADESH   1                    NA                 0.0996183   -0.0385739    0.2378105

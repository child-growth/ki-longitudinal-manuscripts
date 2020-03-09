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

agecat      studyid          country                        exclfeed3    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 4       4  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       4  haz              
Birth       EE               PAKISTAN                       1                35      35  haz              
Birth       EE               PAKISTAN                       0                 0      35  haz              
Birth       GMS-Nepal        NEPAL                          1               380     458  haz              
Birth       GMS-Nepal        NEPAL                          0                78     458  haz              
Birth       IRC              INDIA                          1                 0      10  haz              
Birth       IRC              INDIA                          0                10      10  haz              
Birth       JiVitA-3         BANGLADESH                     1             12014   13276  haz              
Birth       JiVitA-3         BANGLADESH                     0              1262   13276  haz              
Birth       JiVitA-4         BANGLADESH                     1               105     116  haz              
Birth       JiVitA-4         BANGLADESH                     0                11     116  haz              
Birth       Keneba           GAMBIA                         1              1198    1356  haz              
Birth       Keneba           GAMBIA                         0               158    1356  haz              
Birth       MAL-ED           BANGLADESH                     1               138     215  haz              
Birth       MAL-ED           BANGLADESH                     0                77     215  haz              
Birth       MAL-ED           BRAZIL                         1                12      57  haz              
Birth       MAL-ED           BRAZIL                         0                45      57  haz              
Birth       MAL-ED           INDIA                          1                24      41  haz              
Birth       MAL-ED           INDIA                          0                17      41  haz              
Birth       MAL-ED           NEPAL                          1                 8      26  haz              
Birth       MAL-ED           NEPAL                          0                18      26  haz              
Birth       MAL-ED           PERU                           1                49     223  haz              
Birth       MAL-ED           PERU                           0               174     223  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                12     100  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                88     100  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                17     102  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                85     102  haz              
Birth       PROVIDE          BANGLADESH                     1               387     539  haz              
Birth       PROVIDE          BANGLADESH                     0               152     539  haz              
Birth       SAS-CompFeed     INDIA                          1               346     364  haz              
Birth       SAS-CompFeed     INDIA                          0                18     364  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                10      10  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      10  haz              
6 months    EE               PAKISTAN                       1                39      39  haz              
6 months    EE               PAKISTAN                       0                 0      39  haz              
6 months    GMS-Nepal        NEPAL                          1               367     441  haz              
6 months    GMS-Nepal        NEPAL                          0                74     441  haz              
6 months    IRC              INDIA                          1                 0      10  haz              
6 months    IRC              INDIA                          0                10      10  haz              
6 months    JiVitA-3         BANGLADESH                     1              8514    9328  haz              
6 months    JiVitA-3         BANGLADESH                     0               814    9328  haz              
6 months    JiVitA-4         BANGLADESH                     1                76      88  haz              
6 months    JiVitA-4         BANGLADESH                     0                12      88  haz              
6 months    Keneba           GAMBIA                         1              1541    1742  haz              
6 months    Keneba           GAMBIA                         0               201    1742  haz              
6 months    MAL-ED           BANGLADESH                     1               152     233  haz              
6 months    MAL-ED           BANGLADESH                     0                81     233  haz              
6 months    MAL-ED           BRAZIL                         1                60     187  haz              
6 months    MAL-ED           BRAZIL                         0               127     187  haz              
6 months    MAL-ED           INDIA                          1               110     210  haz              
6 months    MAL-ED           INDIA                          0               100     210  haz              
6 months    MAL-ED           NEPAL                          1                70     227  haz              
6 months    MAL-ED           NEPAL                          0               157     227  haz              
6 months    MAL-ED           PERU                           1                61     270  haz              
6 months    MAL-ED           PERU                           0               209     270  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                22     244  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               222     244  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                46     212  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               166     212  haz              
6 months    PROVIDE          BANGLADESH                     1               428     604  haz              
6 months    PROVIDE          BANGLADESH                     0               176     604  haz              
6 months    SAS-CompFeed     INDIA                          1               379     398  haz              
6 months    SAS-CompFeed     INDIA                          0                19     398  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                10      10  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      10  haz              
24 months   EE               PAKISTAN                       1                20      20  haz              
24 months   EE               PAKISTAN                       0                 0      20  haz              
24 months   GMS-Nepal        NEPAL                          1               322     384  haz              
24 months   GMS-Nepal        NEPAL                          0                62     384  haz              
24 months   IRC              INDIA                          1                 0      10  haz              
24 months   IRC              INDIA                          0                10      10  haz              
24 months   JiVitA-3         BANGLADESH                     1              4433    4852  haz              
24 months   JiVitA-3         BANGLADESH                     0               419    4852  haz              
24 months   JiVitA-4         BANGLADESH                     1               136     151  haz              
24 months   JiVitA-4         BANGLADESH                     0                15     151  haz              
24 months   Keneba           GAMBIA                         1              1274    1420  haz              
24 months   Keneba           GAMBIA                         0               146    1420  haz              
24 months   MAL-ED           BANGLADESH                     1               135     205  haz              
24 months   MAL-ED           BANGLADESH                     0                70     205  haz              
24 months   MAL-ED           BRAZIL                         1                52     152  haz              
24 months   MAL-ED           BRAZIL                         0               100     152  haz              
24 months   MAL-ED           INDIA                          1               102     202  haz              
24 months   MAL-ED           INDIA                          0               100     202  haz              
24 months   MAL-ED           NEPAL                          1                67     220  haz              
24 months   MAL-ED           NEPAL                          0               153     220  haz              
24 months   MAL-ED           PERU                           1                43     198  haz              
24 months   MAL-ED           PERU                           0               155     198  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                19     228  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               209     228  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     184  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               146     184  haz              
24 months   PROVIDE          BANGLADESH                     1               408     578  haz              
24 months   PROVIDE          BANGLADESH                     0               170     578  haz              


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
![](/tmp/5144e014-4946-4833-b980-c16bd9f09d57/7f1d8af1-e5c7-4d2f-8233-833068d8873a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5144e014-4946-4833-b980-c16bd9f09d57/7f1d8af1-e5c7-4d2f-8233-833068d8873a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5144e014-4946-4833-b980-c16bd9f09d57/7f1d8af1-e5c7-4d2f-8233-833068d8873a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.0254653   -1.1324664   -0.9184641
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.2005179   -1.4677674   -0.9332684
Birth       JiVitA-3       BANGLADESH                     1                    NA                -1.5899020   -1.6135434   -1.5662606
Birth       JiVitA-3       BANGLADESH                     0                    NA                -1.6190831   -1.6742452   -1.5639210
Birth       JiVitA-4       BANGLADESH                     1                    NA                -1.5578127   -1.7633388   -1.3522867
Birth       JiVitA-4       BANGLADESH                     0                    NA                -1.5278897   -2.6062732   -0.4495062
Birth       Keneba         GAMBIA                         1                    NA                 0.0004887   -0.0726591    0.0736364
Birth       Keneba         GAMBIA                         0                    NA                 0.0560739   -0.1101861    0.2223339
Birth       MAL-ED         BANGLADESH                     1                    NA                -1.1074966   -1.2690657   -0.9459275
Birth       MAL-ED         BANGLADESH                     0                    NA                -0.9634474   -1.2159692   -0.7109256
Birth       MAL-ED         BRAZIL                         1                    NA                -0.6486454   -1.4248289    0.1275381
Birth       MAL-ED         BRAZIL                         0                    NA                -0.7245356   -1.0466266   -0.4024445
Birth       MAL-ED         INDIA                          1                    NA                -1.5705425   -2.0480390   -1.0930460
Birth       MAL-ED         INDIA                          0                    NA                -1.0155999   -1.3015352   -0.7296646
Birth       MAL-ED         NEPAL                          1                    NA                -0.6962500   -1.1273498   -0.2651502
Birth       MAL-ED         NEPAL                          0                    NA                -0.8800000   -1.3706027   -0.3893973
Birth       MAL-ED         PERU                           1                    NA                -0.8707978   -1.1024293   -0.6391663
Birth       MAL-ED         PERU                           0                    NA                -0.8821947   -1.0054355   -0.7589539
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.6708026   -1.1795795   -0.1620256
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.5618227   -0.7803952   -0.3432503
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.8121562   -2.2649020   -1.3594103
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0863085   -1.3339865   -0.8386305
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.9027179   -0.9831410   -0.8222948
Birth       PROVIDE        BANGLADESH                     0                    NA                -0.8477029   -0.9884190   -0.7069868
Birth       SAS-CompFeed   INDIA                          1                    NA                -1.3791852   -1.4632653   -1.2951052
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.4188476   -2.1434587   -0.6942365
6 months    GMS-Nepal      NEPAL                          1                    NA                -1.3295864   -1.4243040   -1.2348687
6 months    GMS-Nepal      NEPAL                          0                    NA                -1.4541726   -1.6928368   -1.2155085
6 months    JiVitA-3       BANGLADESH                     1                    NA                -1.3197618   -1.3489334   -1.2905901
6 months    JiVitA-3       BANGLADESH                     0                    NA                -1.3701438   -1.4557450   -1.2845425
6 months    JiVitA-4       BANGLADESH                     1                    NA                -1.1281066   -1.3156615   -0.9405516
6 months    JiVitA-4       BANGLADESH                     0                    NA                -1.5954844   -2.2383720   -0.9525968
6 months    Keneba         GAMBIA                         1                    NA                -0.9285895   -0.9825747   -0.8746043
6 months    Keneba         GAMBIA                         0                    NA                -1.1047992   -1.2612534   -0.9483449
6 months    MAL-ED         BANGLADESH                     1                    NA                -1.1943934   -1.3256548   -1.0631319
6 months    MAL-ED         BANGLADESH                     0                    NA                -1.3081145   -1.5378949   -1.0783340
6 months    MAL-ED         BRAZIL                         1                    NA                 0.1039324   -0.1728775    0.3807423
6 months    MAL-ED         BRAZIL                         0                    NA                 0.0399114   -0.1472115    0.2270344
6 months    MAL-ED         INDIA                          1                    NA                -1.1861294   -1.3608864   -1.0113724
6 months    MAL-ED         INDIA                          0                    NA                -1.2199359   -1.4057566   -1.0341152
6 months    MAL-ED         NEPAL                          1                    NA                -0.5819767   -0.8030324   -0.3609209
6 months    MAL-ED         NEPAL                          0                    NA                -0.5292988   -0.6585642   -0.4000333
6 months    MAL-ED         PERU                           1                    NA                -1.3518723   -1.5941021   -1.1096424
6 months    MAL-ED         PERU                           0                    NA                -1.2935139   -1.4144584   -1.1725694
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.8496030   -1.3256994   -0.3735066
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                -1.0980887   -1.2330941   -0.9630833
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4605731   -1.7216021   -1.1995441
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4013869   -1.5442891   -1.2584846
6 months    PROVIDE        BANGLADESH                     1                    NA                -1.0842039   -1.1681563   -1.0002514
6 months    PROVIDE        BANGLADESH                     0                    NA                -1.1085468   -1.2650270   -0.9520666
6 months    SAS-CompFeed   INDIA                          1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA                          0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.8829028   -1.9845584   -1.7812473
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.8353169   -2.0680698   -1.6025640
24 months   JiVitA-3       BANGLADESH                     1                    NA                -2.0050497   -2.0428321   -1.9672673
24 months   JiVitA-3       BANGLADESH                     0                    NA                -2.1572239   -2.2656656   -2.0487823
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.7193946   -1.8668960   -1.5718933
24 months   JiVitA-4       BANGLADESH                     0                    NA                -2.5418461   -2.7961341   -2.2875580
24 months   Keneba         GAMBIA                         1                    NA                -1.5743931   -1.6313799   -1.5174062
24 months   Keneba         GAMBIA                         0                    NA                -1.7834221   -1.9540048   -1.6128394
24 months   MAL-ED         BANGLADESH                     1                    NA                -1.9637951   -2.1186225   -1.8089676
24 months   MAL-ED         BANGLADESH                     0                    NA                -2.0651087   -2.2890264   -1.8411910
24 months   MAL-ED         BRAZIL                         1                    NA                -0.1910279   -0.4933323    0.1112766
24 months   MAL-ED         BRAZIL                         0                    NA                 0.0945258   -0.1277379    0.3167894
24 months   MAL-ED         INDIA                          1                    NA                -2.0438339   -2.2285885   -1.8590792
24 months   MAL-ED         INDIA                          0                    NA                -1.7714060   -1.9719718   -1.5708403
24 months   MAL-ED         NEPAL                          1                    NA                -1.3861289   -1.5937129   -1.1785449
24 months   MAL-ED         NEPAL                          0                    NA                -1.2757517   -1.4202747   -1.1312288
24 months   MAL-ED         PERU                           1                    NA                -1.7931937   -2.0808921   -1.5054954
24 months   MAL-ED         PERU                           0                    NA                -1.7209098   -1.8532140   -1.5886056
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -1.7640824   -2.2343424   -1.2938223
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                -1.6594030   -1.8049546   -1.5138514
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6049204   -2.9184019   -2.2914389
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6975390   -2.8615618   -2.5335162
24 months   PROVIDE        BANGLADESH                     1                    NA                -1.6441034   -1.7417051   -1.5465016
24 months   PROVIDE        BANGLADESH                     0                    NA                -1.4909094   -1.6431724   -1.3386464


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
Birth       GMS-Nepal      NEPAL                          0                    1                 -0.1750526   -0.4630324    0.1129271
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                 -0.0291811   -0.0846686    0.0263065
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                  0.0299230   -1.0699825    1.1298286
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                  0.0555852   -0.1181410    0.2293115
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                  0.1440492   -0.1582187    0.4463171
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.0758902   -0.9103308    0.7585504
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.5549426   -0.0252682    1.1351534
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.1837500   -0.8368488    0.4693488
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.0113969   -0.2514636    0.2286698
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                  0.1089798   -0.4474073    0.6653669
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.7258477    0.2059400    1.2457554
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                  0.0550151   -0.0944342    0.2044643
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.0396624   -0.7382457    0.6589209
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.1245863   -0.3796786    0.1305061
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                 -0.0503820   -0.1368013    0.0360373
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.4673779   -1.1382995    0.2035438
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.1762097   -0.3410335   -0.0113858
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.1137211   -0.3731998    0.1457576
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.0640210   -0.3971781    0.2691362
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0338065   -0.2890804    0.2214674
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.0526779   -0.2024640    0.3078198
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.0583583   -0.2127574    0.3294740
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.2484857   -0.7436308    0.2466593
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0591862   -0.2351318    0.3535043
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.0243429   -0.2019659    0.1532801
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0475859   -0.2048129    0.2999848
24 months   JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH                     0                    1                 -0.1521742   -0.2635750   -0.0407735
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                 -0.8224515   -1.1194256   -0.5254773
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.2090290   -0.3875145   -0.0305436
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.1013136   -0.3698811    0.1672539
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.2855536   -0.0935262    0.6646335
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.2724278   -0.0019083    0.5467639
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1103772   -0.1397615    0.3605159
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.0722840   -0.2408708    0.3854387
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.1046793   -0.3887155    0.5980742
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0926186   -0.4454714    0.2602341
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.1531940   -0.0253119    0.3316998


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.0300588   -0.0787879    0.0186704
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.0029437   -0.0081921    0.0023047
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0495149   -0.1375613    0.0385316
Birth       Keneba         GAMBIA                         1                    NA                 0.0093417   -0.0110936    0.0297771
Birth       MAL-ED         BANGLADESH                     1                    NA                 0.0125199   -0.0979843    0.1230241
Birth       MAL-ED         BRAZIL                         1                    NA                -0.0510037   -0.7446339    0.6426264
Birth       MAL-ED         INDIA                          1                    NA                 0.3629815    0.0752745    0.6506885
Birth       MAL-ED         NEPAL                          1                    NA                -0.1272115   -0.5805774    0.3261543
Birth       MAL-ED         PERU                           1                    NA                -0.0045833   -0.1922342    0.1830675
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                 0.0911026   -0.4055408    0.5877459
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7035287    0.2697823    1.1372752
Birth       PROVIDE        BANGLADESH                     1                    NA                 0.0176159   -0.0240607    0.0592925
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0145236   -0.0577567    0.0287095
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.0203985   -0.0626459    0.0218489
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.0042434   -0.0117658    0.0032791
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0713253   -0.1575992    0.0149487
6 months    Keneba         GAMBIA                         1                    NA                -0.0203422   -0.0394118   -0.0012725
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0298985   -0.1207654    0.0609685
6 months    MAL-ED         BRAZIL                         1                    NA                -0.0430233   -0.2699505    0.1839039
6 months    MAL-ED         INDIA                          1                    NA                -0.0141087   -0.1357273    0.1075100
6 months    MAL-ED         NEPAL                          1                    NA                 0.0185699   -0.1586920    0.1958318
6 months    MAL-ED         PERU                           1                    NA                 0.0409988   -0.1705297    0.2525273
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.2166197   -0.6701004    0.2368610
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0575228   -0.1750138    0.2900594
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0074876   -0.0587591    0.0437838
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0076034   -0.0328118    0.0480185
24 months   JiVitA-3       BANGLADESH                     1                    NA                -0.0136828   -0.0232099   -0.0041557
24 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0532544   -0.0919367   -0.0145721
24 months   Keneba         GAMBIA                         1                    NA                -0.0217240   -0.0400220   -0.0034259
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0378635   -0.1288843    0.0531574
24 months   MAL-ED         BRAZIL                         1                    NA                 0.1747340   -0.0782735    0.4277416
24 months   MAL-ED         INDIA                          1                    NA                 0.1444279    0.0090758    0.2797801
24 months   MAL-ED         NEPAL                          1                    NA                 0.0751971   -0.0995952    0.2499894
24 months   MAL-ED         PERU                           1                    NA                 0.0518975   -0.1945399    0.2983348
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.1216299   -0.3352988    0.5785586
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0719003   -0.3546470    0.2108464
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0416812   -0.0110979    0.0944603

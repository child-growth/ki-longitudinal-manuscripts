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
Birth       EE               PAKISTAN                       1                22      22
Birth       EE               PAKISTAN                       0                 0      22
Birth       GMS-Nepal        NEPAL                          1               352     422
Birth       GMS-Nepal        NEPAL                          0                70     422
Birth       IRC              INDIA                          1                 0       9
Birth       IRC              INDIA                          0                 9       9
Birth       JiVitA-3         BANGLADESH                     1              9636   10634
Birth       JiVitA-3         BANGLADESH                     0               998   10634
Birth       JiVitA-4         BANGLADESH                     1                89      97
Birth       JiVitA-4         BANGLADESH                     0                 8      97
Birth       Keneba           GAMBIA                         1              1133    1282
Birth       Keneba           GAMBIA                         0               149    1282
Birth       MAL-ED           BANGLADESH                     1               130     202
Birth       MAL-ED           BANGLADESH                     0                72     202
Birth       MAL-ED           BRAZIL                         1                11      55
Birth       MAL-ED           BRAZIL                         0                44      55
Birth       MAL-ED           INDIA                          1                22      39
Birth       MAL-ED           INDIA                          0                17      39
Birth       MAL-ED           NEPAL                          1                 8      25
Birth       MAL-ED           NEPAL                          0                17      25
Birth       MAL-ED           PERU                           1                47     218
Birth       MAL-ED           PERU                           0               171     218
Birth       MAL-ED           SOUTH AFRICA                   1                12      99
Birth       MAL-ED           SOUTH AFRICA                   0                87      99
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                15      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                80      95
Birth       PROVIDE          BANGLADESH                     1               381     532
Birth       PROVIDE          BANGLADESH                     0               151     532
Birth       SAS-CompFeed     INDIA                          1               310     325
Birth       SAS-CompFeed     INDIA                          0                15     325
6 months    CMC-V-BCS-2002   INDIA                          1                10      10
6 months    CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    EE               PAKISTAN                       1                39      39
6 months    EE               PAKISTAN                       0                 0      39
6 months    GMS-Nepal        NEPAL                          1               367     441
6 months    GMS-Nepal        NEPAL                          0                74     441
6 months    IRC              INDIA                          1                 0      10
6 months    IRC              INDIA                          0                10      10
6 months    JiVitA-3         BANGLADESH                     1              8499    9310
6 months    JiVitA-3         BANGLADESH                     0               811    9310
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
6 months    PROVIDE          BANGLADESH                     1               428     603
6 months    PROVIDE          BANGLADESH                     0               175     603
6 months    SAS-CompFeed     INDIA                          1               376     395
6 months    SAS-CompFeed     INDIA                          0                19     395
24 months   CMC-V-BCS-2002   INDIA                          1                10      10
24 months   CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   EE               PAKISTAN                       1                20      20
24 months   EE               PAKISTAN                       0                 0      20
24 months   GMS-Nepal        NEPAL                          1               322     384
24 months   GMS-Nepal        NEPAL                          0                62     384
24 months   IRC              INDIA                          1                 0      10
24 months   IRC              INDIA                          0                10      10
24 months   JiVitA-3         BANGLADESH                     1              4416    4833
24 months   JiVitA-3         BANGLADESH                     0               417    4833
24 months   JiVitA-4         BANGLADESH                     1               135     150
24 months   JiVitA-4         BANGLADESH                     0                15     150
24 months   Keneba           GAMBIA                         1              1274    1421
24 months   Keneba           GAMBIA                         0               147    1421
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
24 months   PROVIDE          BANGLADESH                     1               408     579
24 months   PROVIDE          BANGLADESH                     0               171     579


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
![](/tmp/bbe73a87-6bd4-43d8-8aaa-37ac5759939b/28f1132a-dc68-4dad-9762-2194e61d1bb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bbe73a87-6bd4-43d8-8aaa-37ac5759939b/28f1132a-dc68-4dad-9762-2194e61d1bb0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bbe73a87-6bd4-43d8-8aaa-37ac5759939b/28f1132a-dc68-4dad-9762-2194e61d1bb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.1120763   -1.2308966   -0.9932560
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.0293886   -1.2408308   -0.8179464
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.7830241   -0.8062645   -0.7597836
Birth       JiVitA-3       BANGLADESH                     0                    NA                -0.7499306   -0.8163783   -0.6834828
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       JiVitA-4       BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
Birth       Keneba         GAMBIA                         1                    NA                -1.2586423   -1.3266868   -1.1905978
Birth       Keneba         GAMBIA                         0                    NA                -1.2906561   -1.4740124   -1.1072999
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.8639625   -1.0613697   -0.6665552
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.1059116   -1.3789865   -0.8328367
Birth       MAL-ED         BRAZIL                         1                    NA                 0.0616449   -0.6470906    0.7703804
Birth       MAL-ED         BRAZIL                         0                    NA                 0.4107420    0.0256865    0.7957974
Birth       MAL-ED         INDIA                          1                    NA                -1.0603923   -1.4761813   -0.6446032
Birth       MAL-ED         INDIA                          0                    NA                -0.8907536   -1.3524780   -0.4290292
Birth       MAL-ED         NEPAL                          1                    NA                -0.4487500   -0.8783289   -0.0191711
Birth       MAL-ED         NEPAL                          0                    NA                -0.9570588   -1.4394884   -0.4746293
Birth       MAL-ED         PERU                           1                    NA                 0.1788673   -0.0449332    0.4026678
Birth       MAL-ED         PERU                           0                    NA                -0.0965866   -0.2384133    0.0452402
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.6291708   -1.3595136    0.1011719
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.1692285   -0.4114046    0.0729477
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.1624240    0.6465444    1.6783035
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6845618    0.4530332    0.9160904
Birth       PROVIDE        BANGLADESH                     1                    NA                -1.2667741   -1.3553267   -1.1782214
Birth       PROVIDE        BANGLADESH                     0                    NA                -1.3746977   -1.5166025   -1.2327929
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.0901281   -1.7027393   -0.4775170
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.6289951   -0.7390389   -0.5189513
6 months    GMS-Nepal      NEPAL                          0                    NA                -0.6734089   -0.9209063   -0.4259115
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.6061867   -0.6317355   -0.5806378
6 months    JiVitA-3       BANGLADESH                     0                    NA                -0.5813002   -0.6588647   -0.5037357
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.4033665   -0.6309351   -0.1757980
6 months    JiVitA-4       BANGLADESH                     0                    NA                -0.3265596   -0.7924123    0.1392930
6 months    Keneba         GAMBIA                         1                    NA                -0.1851632   -0.2435155   -0.1268109
6 months    Keneba         GAMBIA                         0                    NA                -0.3784326   -0.5534938   -0.2033715
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0967151   -0.2625786    0.0691484
6 months    MAL-ED         BANGLADESH                     0                    NA                -0.1832358   -0.4036478    0.0371761
6 months    MAL-ED         BRAZIL                         1                    NA                 1.1421364    0.8138535    1.4704193
6 months    MAL-ED         BRAZIL                         0                    NA                 0.8991942    0.6900910    1.1082975
6 months    MAL-ED         INDIA                          1                    NA                -0.6875334   -0.8513298   -0.5237369
6 months    MAL-ED         INDIA                          0                    NA                -0.7568846   -0.9673678   -0.5464014
6 months    MAL-ED         NEPAL                          1                    NA                 0.1445798   -0.0954902    0.3846498
6 months    MAL-ED         NEPAL                          0                    NA                 0.0493907   -0.1116643    0.2104456
6 months    MAL-ED         PERU                           1                    NA                 1.1795403    0.9632025    1.3958781
6 months    MAL-ED         PERU                           0                    NA                 1.0179065    0.8725963    1.1632167
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.5299467    0.1770231    0.8828704
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                 0.5749243    0.4117206    0.7381281
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8204636    0.4716901    1.1692371
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4445164    0.2925998    0.5964330
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.1322812   -0.2266797   -0.0378827
6 months    PROVIDE        BANGLADESH                     0                    NA                -0.3322199   -0.4979375   -0.1665023
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA                          0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.1558253   -1.2683465   -1.0433041
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.1006581   -1.3424848   -0.8588314
24 months   JiVitA-3       BANGLADESH                     1                    NA                -1.3143348   -1.3461492   -1.2825205
24 months   JiVitA-3       BANGLADESH                     0                    NA                -1.2802384   -1.4009734   -1.1595034
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.0142043   -1.1771931   -0.8512156
24 months   JiVitA-4       BANGLADESH                     0                    NA                -0.8064235   -1.2332731   -0.3795739
24 months   Keneba         GAMBIA                         1                    NA                -0.7750079   -0.8292000   -0.7208158
24 months   Keneba         GAMBIA                         0                    NA                -0.9387723   -1.0889487   -0.7885958
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.8318500   -0.9886444   -0.6750556
24 months   MAL-ED         BANGLADESH                     0                    NA                -0.8249423   -1.0138008   -0.6360837
24 months   MAL-ED         BRAZIL                         1                    NA                 0.3090799   -0.0230680    0.6412277
24 months   MAL-ED         BRAZIL                         0                    NA                 0.5920933    0.3098674    0.8743192
24 months   MAL-ED         INDIA                          1                    NA                -0.9591127   -1.1073146   -0.8109107
24 months   MAL-ED         INDIA                          0                    NA                -0.9973673   -1.1808668   -0.8138677
24 months   MAL-ED         NEPAL                          1                    NA                -0.2383317   -0.4480878   -0.0285756
24 months   MAL-ED         NEPAL                          0                    NA                -0.4422899   -0.5842041   -0.3003758
24 months   MAL-ED         PERU                           1                    NA                 0.0776589   -0.1535401    0.3088580
24 months   MAL-ED         PERU                           0                    NA                 0.1195566   -0.0185562    0.2576694
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.6688604    0.3498710    0.9878498
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.3914911    0.2611754    0.5218068
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0171003   -0.2447297    0.2105291
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0497839   -0.1103424    0.2099102
24 months   PROVIDE        BANGLADESH                     1                    NA                -0.9193728   -1.0157649   -0.8229807
24 months   PROVIDE        BANGLADESH                     0                    NA                -0.8120411   -0.9689062   -0.6551761


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       JiVitA-3       BANGLADESH                     NA                   NA                -0.7798636   -0.8022140   -0.7575133
Birth       JiVitA-4       BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
Birth       Keneba         GAMBIA                         NA                   NA                -1.2629563   -1.3291505   -1.1967622
Birth       MAL-ED         BANGLADESH                     NA                   NA                -0.9411386   -1.0895370   -0.7927402
Birth       MAL-ED         BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       MAL-ED         INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       MAL-ED         NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       MAL-ED         PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
Birth       PROVIDE        BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA                          NA                   NA                -0.6596308   -0.9005716   -0.4186900
6 months    GMS-Nepal      NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    JiVitA-3       BANGLADESH                     NA                   NA                -0.6040977   -0.6286619   -0.5795335
6 months    JiVitA-4       BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
6 months    Keneba         GAMBIA                         NA                   NA                -0.2057183   -0.2614359   -0.1500006
6 months    MAL-ED         BANGLADESH                     NA                   NA                -0.1304936   -0.2625419    0.0015547
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.9754144    0.7990651    1.1517638
6 months    MAL-ED         INDIA                          NA                   NA                -0.7185992   -0.8491469   -0.5880515
6 months    MAL-ED         NEPAL                          NA                   NA                 0.1041483   -0.0311352    0.2394318
6 months    MAL-ED         PERU                           NA                   NA                 1.0514136    0.9289176    1.1739096
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5564071    0.4055220    0.7072922
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
6 months    PROVIDE        BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA                          NA                   NA                -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   JiVitA-3       BANGLADESH                     NA                   NA                -1.3109518   -1.3423299   -1.2795737
24 months   JiVitA-4       BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836
24 months   Keneba         GAMBIA                         NA                   NA                -0.7930925   -0.8442611   -0.7419240
24 months   MAL-ED         BANGLADESH                     NA                   NA                -0.8076829   -0.9296166   -0.6857493
24 months   MAL-ED         BRAZIL                         NA                   NA                 0.4981140    0.2760418    0.7201863
24 months   MAL-ED         INDIA                          NA                   NA                -0.9516832   -1.0703961   -0.8329703
24 months   MAL-ED         NEPAL                          NA                   NA                -0.3790455   -0.4958857   -0.2622052
24 months   MAL-ED         PERU                           NA                   NA                 0.1176052   -0.0015211    0.2367315
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4120797    0.2900939    0.5340654
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0495743   -0.0857535    0.1849021
24 months   PROVIDE        BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                  0.0826877   -0.1498298    0.3152053
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.0330935   -0.0358238    0.1020108
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                 -0.0320138   -0.2203073    0.1562796
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.2419491   -0.5988093    0.1149111
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                  0.3490971   -0.4686061    1.1668003
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.1696387   -0.4570521    0.7963295
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.5083088   -1.1542781    0.1376604
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.2754539   -0.5412586   -0.0096491
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                  0.4599424   -0.3187299    1.2386147
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.4778622   -1.0482285    0.0925042
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                 -0.1079236   -0.2705683    0.0547211
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.4481495   -0.9783681    0.0820692
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.0444138   -0.3153106    0.2264830
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.0248865   -0.0557783    0.1055512
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                  0.0768069   -0.4396901    0.5933039
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.1932694   -0.3770920   -0.0094468
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0865207   -0.3627914    0.1897499
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.2429422   -0.6333569    0.1474725
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0693512   -0.3367241    0.1980216
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                 -0.0951891   -0.3826221    0.1922438
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                 -0.1616338   -0.4220295    0.0987620
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0449776   -0.3444652    0.4344203
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3759472   -0.7559826    0.0040882
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.1999387   -0.3908204   -0.0090570
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0551671   -0.2115463    0.3218806
24 months   JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH                     0                    1                  0.0340964   -0.0888231    0.1570160
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.2077808   -0.2495632    0.6651248
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.1637644   -0.3229788   -0.0045499
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                  0.0069078   -0.2395419    0.2533574
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.2830134   -0.1492015    0.7152284
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                 -0.0382546   -0.2727552    0.1962459
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                 -0.2039582   -0.4566604    0.0487439
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.0418977   -0.2245333    0.3083287
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.2773693   -0.6231618    0.0684232
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0668842   -0.2111072    0.3448755
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.1073316   -0.0753617    0.2900249


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0129057   -0.0253169    0.0511283
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0031604   -0.0033377    0.0096585
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
Birth       Keneba         GAMBIA                         1                    NA                -0.0043140   -0.0265442    0.0179162
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0771761   -0.2045453    0.0501930
Birth       MAL-ED         BRAZIL                         1                    NA                 0.3699915   -0.3034762    1.0434592
Birth       MAL-ED         INDIA                          1                    NA                 0.0824435   -0.2060031    0.3708902
Birth       MAL-ED         NEPAL                          1                    NA                -0.3456500   -0.7950359    0.1037359
Birth       MAL-ED         PERU                           1                    NA                -0.2123994   -0.4189496   -0.0058492
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                 0.4702820   -0.2338297    1.1743936
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3627397   -0.8573506    0.1318711
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.0316846   -0.0777689    0.0143998
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.0091161   -0.0362243    0.0544564
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0020889   -0.0049289    0.0091067
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0076562   -0.0627680    0.0474556
6 months    Keneba         GAMBIA                         1                    NA                -0.0205550   -0.0417345    0.0006244
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0337784   -0.1291299    0.0615730
6 months    MAL-ED         BRAZIL                         1                    NA                -0.1667220   -0.4330252    0.0995812
6 months    MAL-ED         INDIA                          1                    NA                -0.0310658   -0.1580182    0.0958865
6 months    MAL-ED         NEPAL                          1                    NA                -0.0404315   -0.2397450    0.1588821
6 months    MAL-ED         PERU                           1                    NA                -0.1281267   -0.3306607    0.0744072
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0264604   -0.3367126    0.3896333
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2947010   -0.6033325    0.0139304
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0668094   -0.1227498   -0.0108691
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0161812   -0.0267449    0.0591073
24 months   JiVitA-3       BANGLADESH                     1                    NA                 0.0033830   -0.0068545    0.0136206
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0046043   -0.0430781    0.0522868
24 months   Keneba         GAMBIA                         1                    NA                -0.0180846   -0.0345939   -0.0015754
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0241671   -0.0619837    0.1103179
24 months   MAL-ED         BRAZIL                         1                    NA                 0.1890342   -0.0965785    0.4746468
24 months   MAL-ED         INDIA                          1                    NA                 0.0074295   -0.1080462    0.1229051
24 months   MAL-ED         NEPAL                          1                    NA                -0.1407137   -0.3173232    0.0358957
24 months   MAL-ED         PERU                           1                    NA                 0.0399463   -0.1712732    0.2511658
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.2567807   -0.5778538    0.0642924
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0666746   -0.1557822    0.2891313
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0265058   -0.0269215    0.0799330

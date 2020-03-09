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

agecat      studyid          country                        exclfeed3    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 4       4  whz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       4  whz              
Birth       EE               PAKISTAN                       1                22      22  whz              
Birth       EE               PAKISTAN                       0                 0      22  whz              
Birth       GMS-Nepal        NEPAL                          1               352     422  whz              
Birth       GMS-Nepal        NEPAL                          0                70     422  whz              
Birth       IRC              INDIA                          1                 0       9  whz              
Birth       IRC              INDIA                          0                 9       9  whz              
Birth       JiVitA-3         BANGLADESH                     1              9636   10634  whz              
Birth       JiVitA-3         BANGLADESH                     0               998   10634  whz              
Birth       JiVitA-4         BANGLADESH                     1                89      97  whz              
Birth       JiVitA-4         BANGLADESH                     0                 8      97  whz              
Birth       Keneba           GAMBIA                         1              1133    1282  whz              
Birth       Keneba           GAMBIA                         0               149    1282  whz              
Birth       MAL-ED           BANGLADESH                     1               130     202  whz              
Birth       MAL-ED           BANGLADESH                     0                72     202  whz              
Birth       MAL-ED           BRAZIL                         1                11      55  whz              
Birth       MAL-ED           BRAZIL                         0                44      55  whz              
Birth       MAL-ED           INDIA                          1                22      39  whz              
Birth       MAL-ED           INDIA                          0                17      39  whz              
Birth       MAL-ED           NEPAL                          1                 8      25  whz              
Birth       MAL-ED           NEPAL                          0                17      25  whz              
Birth       MAL-ED           PERU                           1                47     218  whz              
Birth       MAL-ED           PERU                           0               171     218  whz              
Birth       MAL-ED           SOUTH AFRICA                   1                12      99  whz              
Birth       MAL-ED           SOUTH AFRICA                   0                87      99  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                15      95  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                80      95  whz              
Birth       PROVIDE          BANGLADESH                     1               381     532  whz              
Birth       PROVIDE          BANGLADESH                     0               151     532  whz              
Birth       SAS-CompFeed     INDIA                          1               310     325  whz              
Birth       SAS-CompFeed     INDIA                          0                15     325  whz              
6 months    CMC-V-BCS-2002   INDIA                          1                10      10  whz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      10  whz              
6 months    EE               PAKISTAN                       1                39      39  whz              
6 months    EE               PAKISTAN                       0                 0      39  whz              
6 months    GMS-Nepal        NEPAL                          1               367     441  whz              
6 months    GMS-Nepal        NEPAL                          0                74     441  whz              
6 months    IRC              INDIA                          1                 0      10  whz              
6 months    IRC              INDIA                          0                10      10  whz              
6 months    JiVitA-3         BANGLADESH                     1              8499    9310  whz              
6 months    JiVitA-3         BANGLADESH                     0               811    9310  whz              
6 months    JiVitA-4         BANGLADESH                     1                76      88  whz              
6 months    JiVitA-4         BANGLADESH                     0                12      88  whz              
6 months    Keneba           GAMBIA                         1              1541    1742  whz              
6 months    Keneba           GAMBIA                         0               201    1742  whz              
6 months    MAL-ED           BANGLADESH                     1               152     233  whz              
6 months    MAL-ED           BANGLADESH                     0                81     233  whz              
6 months    MAL-ED           BRAZIL                         1                60     187  whz              
6 months    MAL-ED           BRAZIL                         0               127     187  whz              
6 months    MAL-ED           INDIA                          1               110     210  whz              
6 months    MAL-ED           INDIA                          0               100     210  whz              
6 months    MAL-ED           NEPAL                          1                70     227  whz              
6 months    MAL-ED           NEPAL                          0               157     227  whz              
6 months    MAL-ED           PERU                           1                61     270  whz              
6 months    MAL-ED           PERU                           0               209     270  whz              
6 months    MAL-ED           SOUTH AFRICA                   1                22     244  whz              
6 months    MAL-ED           SOUTH AFRICA                   0               222     244  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                46     212  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               166     212  whz              
6 months    PROVIDE          BANGLADESH                     1               428     603  whz              
6 months    PROVIDE          BANGLADESH                     0               175     603  whz              
6 months    SAS-CompFeed     INDIA                          1               376     395  whz              
6 months    SAS-CompFeed     INDIA                          0                19     395  whz              
24 months   CMC-V-BCS-2002   INDIA                          1                10      10  whz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      10  whz              
24 months   EE               PAKISTAN                       1                20      20  whz              
24 months   EE               PAKISTAN                       0                 0      20  whz              
24 months   GMS-Nepal        NEPAL                          1               322     384  whz              
24 months   GMS-Nepal        NEPAL                          0                62     384  whz              
24 months   IRC              INDIA                          1                 0      10  whz              
24 months   IRC              INDIA                          0                10      10  whz              
24 months   JiVitA-3         BANGLADESH                     1              4416    4833  whz              
24 months   JiVitA-3         BANGLADESH                     0               417    4833  whz              
24 months   JiVitA-4         BANGLADESH                     1               135     150  whz              
24 months   JiVitA-4         BANGLADESH                     0                15     150  whz              
24 months   Keneba           GAMBIA                         1              1274    1421  whz              
24 months   Keneba           GAMBIA                         0               147    1421  whz              
24 months   MAL-ED           BANGLADESH                     1               135     205  whz              
24 months   MAL-ED           BANGLADESH                     0                70     205  whz              
24 months   MAL-ED           BRAZIL                         1                52     152  whz              
24 months   MAL-ED           BRAZIL                         0               100     152  whz              
24 months   MAL-ED           INDIA                          1               102     202  whz              
24 months   MAL-ED           INDIA                          0               100     202  whz              
24 months   MAL-ED           NEPAL                          1                67     220  whz              
24 months   MAL-ED           NEPAL                          0               153     220  whz              
24 months   MAL-ED           PERU                           1                43     198  whz              
24 months   MAL-ED           PERU                           0               155     198  whz              
24 months   MAL-ED           SOUTH AFRICA                   1                19     228  whz              
24 months   MAL-ED           SOUTH AFRICA                   0               209     228  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     184  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               146     184  whz              
24 months   PROVIDE          BANGLADESH                     1               408     579  whz              
24 months   PROVIDE          BANGLADESH                     0               171     579  whz              


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
![](/tmp/70a0f3c8-1634-4ffd-b0b2-68a632ddd906/8d2ed768-265d-4f50-bf58-e3b14b9617fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/70a0f3c8-1634-4ffd-b0b2-68a632ddd906/8d2ed768-265d-4f50-bf58-e3b14b9617fe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/70a0f3c8-1634-4ffd-b0b2-68a632ddd906/8d2ed768-265d-4f50-bf58-e3b14b9617fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.1119727   -1.2304545   -0.9934910
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.0448620   -1.2504793   -0.8392447
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.7829739   -0.8062101   -0.7597378
Birth       JiVitA-3       BANGLADESH                     0                    NA                -0.7497181   -0.8161177   -0.6833185
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       JiVitA-4       BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
Birth       Keneba         GAMBIA                         1                    NA                -1.2589995   -1.3270783   -1.1909208
Birth       Keneba         GAMBIA                         0                    NA                -1.2808766   -1.4702207   -1.0915326
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.9038677   -1.0913213   -0.7164140
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0149566   -1.2741453   -0.7557679
Birth       MAL-ED         BRAZIL                         1                    NA                 0.4020983   -0.3380116    1.1422082
Birth       MAL-ED         BRAZIL                         0                    NA                 0.4258144    0.0386127    0.8130162
Birth       MAL-ED         INDIA                          1                    NA                -1.0149177   -1.4182957   -0.6115396
Birth       MAL-ED         INDIA                          0                    NA                -0.9353297   -1.4017272   -0.4689321
Birth       MAL-ED         NEPAL                          1                    NA                -0.4487500   -0.8783289   -0.0191711
Birth       MAL-ED         NEPAL                          0                    NA                -0.9570588   -1.4394884   -0.4746293
Birth       MAL-ED         PERU                           1                    NA                 0.1945756   -0.0337798    0.4229310
Birth       MAL-ED         PERU                           0                    NA                -0.0992512   -0.2414880    0.0429856
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.6510843   -1.2238730   -0.0782957
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.1749426   -0.4179717    0.0680864
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.6465131    1.2384420    2.0545843
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7070069    0.4750461    0.9389676
Birth       PROVIDE        BANGLADESH                     1                    NA                -1.2700830   -1.3578562   -1.1823099
Birth       PROVIDE        BANGLADESH                     0                    NA                -1.3744432   -1.5156694   -1.2332170
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.0901281   -1.7027393   -0.4775170
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.6274243   -0.7376521   -0.5171964
6 months    GMS-Nepal      NEPAL                          0                    NA                -0.5945065   -0.8431874   -0.3458256
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.6061958   -0.6317656   -0.5806260
6 months    JiVitA-3       BANGLADESH                     0                    NA                -0.5845195   -0.6616057   -0.5074333
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.4063089   -0.6336553   -0.1789626
6 months    JiVitA-4       BANGLADESH                     0                    NA                -0.6715110   -1.0441696   -0.2988524
6 months    Keneba         GAMBIA                         1                    NA                -0.1839874   -0.2423380   -0.1256368
6 months    Keneba         GAMBIA                         0                    NA                -0.3842664   -0.5605752   -0.2079576
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0940613   -0.2607951    0.0726725
6 months    MAL-ED         BANGLADESH                     0                    NA                -0.1888662   -0.4052580    0.0275256
6 months    MAL-ED         BRAZIL                         1                    NA                 1.0241251    0.6994319    1.3488183
6 months    MAL-ED         BRAZIL                         0                    NA                 0.8747179    0.6642450    1.0851909
6 months    MAL-ED         INDIA                          1                    NA                -0.6706204   -0.8320964   -0.5091443
6 months    MAL-ED         INDIA                          0                    NA                -0.7242299   -0.9344385   -0.5140213
6 months    MAL-ED         NEPAL                          1                    NA                 0.2271225   -0.0147373    0.4689824
6 months    MAL-ED         NEPAL                          0                    NA                 0.0668330   -0.0947598    0.2284258
6 months    MAL-ED         PERU                           1                    NA                 1.1712812    0.9572423    1.3853202
6 months    MAL-ED         PERU                           0                    NA                 1.0109585    0.8655013    1.1564156
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.5707714    0.2495892    0.8919535
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                 0.5740403    0.4113565    0.7367240
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7977853    0.4600644    1.1355062
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4506856    0.2973586    0.6040126
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.1333868   -0.2279860   -0.0387876
6 months    PROVIDE        BANGLADESH                     0                    NA                -0.3469013   -0.5131134   -0.1806892
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA                          0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.1529619   -1.2657397   -1.0401840
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.0764386   -1.3246264   -0.8282507
24 months   JiVitA-3       BANGLADESH                     1                    NA                -1.3149758   -1.3468402   -1.2831113
24 months   JiVitA-3       BANGLADESH                     0                    NA                -1.2690793   -1.3873182   -1.1508404
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.0307904   -1.1941342   -0.8674466
24 months   JiVitA-4       BANGLADESH                     0                    NA                -1.2138030   -1.6087531   -0.8188529
24 months   Keneba         GAMBIA                         1                    NA                -0.7741189   -0.8283714   -0.7198664
24 months   Keneba         GAMBIA                         0                    NA                -0.9596597   -1.1106464   -0.8086729
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.8134566   -0.9705482   -0.6563651
24 months   MAL-ED         BANGLADESH                     0                    NA                -0.7621766   -0.9523647   -0.5719885
24 months   MAL-ED         BRAZIL                         1                    NA                 0.2984880   -0.0434750    0.6404509
24 months   MAL-ED         BRAZIL                         0                    NA                 0.5956850    0.3101726    0.8811975
24 months   MAL-ED         INDIA                          1                    NA                -0.9330361   -1.0846824   -0.7813898
24 months   MAL-ED         INDIA                          0                    NA                -0.9833293   -1.1621656   -0.8044930
24 months   MAL-ED         NEPAL                          1                    NA                -0.2469364   -0.4588593   -0.0350135
24 months   MAL-ED         NEPAL                          0                    NA                -0.4374024   -0.5786913   -0.2961136
24 months   MAL-ED         PERU                           1                    NA                 0.1373295   -0.0813667    0.3560257
24 months   MAL-ED         PERU                           0                    NA                 0.1229724   -0.0160361    0.2619809
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.6984423    0.3831666    1.0137179
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.3907371    0.2602478    0.5212264
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1156215   -0.1197199    0.3509629
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0507733   -0.1094429    0.2109894
24 months   PROVIDE        BANGLADESH                     1                    NA                -0.9191383   -1.0156839   -0.8225927
24 months   PROVIDE        BANGLADESH                     0                    NA                -0.8263649   -0.9821453   -0.6705844


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
Birth       GMS-Nepal      NEPAL                          0                    1                  0.0671108   -0.1579615    0.2921830
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.0332558   -0.0355898    0.1021014
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                 -0.0218771   -0.2157379    0.1719837
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.1110889   -0.4369757    0.2147979
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                  0.0237161   -0.8139926    0.8614249
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.0795880   -0.5508779    0.7100539
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.5083088   -1.1542781    0.1376604
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.2938268   -0.5630615   -0.0245921
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                  0.4761417   -0.1552787    1.1075621
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.9395063   -1.4118426   -0.4671700
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                 -0.1043602   -0.2647663    0.0560460
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.4481495   -0.9783681    0.0820692
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                  0.0329178   -0.2390213    0.3048569
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.0216763   -0.0585317    0.1018843
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.2652020   -0.7043479    0.1739438
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.2002790   -0.3854620   -0.0150960
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.0948050   -0.3686575    0.1790476
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.1494072   -0.5390470    0.2402327
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0536095   -0.3201252    0.2129062
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                 -0.1602896   -0.4492198    0.1286407
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                 -0.1603228   -0.4191480    0.0985025
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0032689   -0.3575621    0.3640999
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3470997   -0.7183426    0.0241432
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.2135145   -0.4049845   -0.0220444
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0765233   -0.1963051    0.3493517
24 months   JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH                     0                    1                  0.0458965   -0.0749054    0.1666984
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                 -0.1830126   -0.6083877    0.2423625
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.1855407   -0.3458311   -0.0252504
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                  0.0512801   -0.1963167    0.2988768
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.2971971   -0.1497138    0.7441080
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                 -0.0502932   -0.2841716    0.1835851
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                 -0.1904661   -0.4453198    0.0643876
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                 -0.0143571   -0.2723478    0.2436337
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.3077052   -0.6530628    0.0376524
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0648482   -0.3501861    0.2204897
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.0927735   -0.0891498    0.2746967


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0128021   -0.0243936    0.0499978
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0031103   -0.0033781    0.0095987
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
Birth       Keneba         GAMBIA                         1                    NA                -0.0039568   -0.0262119    0.0182983
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0372710   -0.1530758    0.0785339
Birth       MAL-ED         BRAZIL                         1                    NA                 0.0295380   -0.6532608    0.7123368
Birth       MAL-ED         INDIA                          1                    NA                 0.0369690   -0.2429342    0.3168722
Birth       MAL-ED         NEPAL                          1                    NA                -0.3456500   -0.7950359    0.1037359
Birth       MAL-ED         PERU                           1                    NA                -0.2281077   -0.4376061   -0.0186094
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                 0.4921954   -0.0711070    1.0554979
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8468289   -1.2530090   -0.4406489
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.0283756   -0.0731037    0.0163524
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.0075452   -0.0380608    0.0531513
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0020981   -0.0048441    0.0090402
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0047138   -0.0616284    0.0522009
6 months    Keneba         GAMBIA                         1                    NA                -0.0217308   -0.0430823   -0.0003794
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0364323   -0.1329928    0.0601283
6 months    MAL-ED         BRAZIL                         1                    NA                -0.0487107   -0.3154185    0.2179971
6 months    MAL-ED         INDIA                          1                    NA                -0.0479788   -0.1743956    0.0784380
6 months    MAL-ED         NEPAL                          1                    NA                -0.1229742   -0.3227049    0.0767565
6 months    MAL-ED         PERU                           1                    NA                -0.1198677   -0.3208162    0.0810809
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0143643   -0.3491636    0.3204350
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2720227   -0.5704154    0.0263700
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0657038   -0.1218100   -0.0095977
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0133178   -0.0295318    0.0561673
24 months   JiVitA-3       BANGLADESH                     1                    NA                 0.0040240   -0.0061920    0.0142400
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0211904   -0.0268439    0.0692247
24 months   Keneba         GAMBIA                         1                    NA                -0.0189736   -0.0356828   -0.0022644
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0057737   -0.0800819    0.0916293
24 months   MAL-ED         BRAZIL                         1                    NA                 0.1996261   -0.0960185    0.4952707
24 months   MAL-ED         INDIA                          1                    NA                -0.0186471   -0.1381672    0.1008730
24 months   MAL-ED         NEPAL                          1                    NA                -0.1321091   -0.3108263    0.0466081
24 months   MAL-ED         PERU                           1                    NA                -0.0197242   -0.2214516    0.1820031
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.2863626   -0.6062207    0.0334955
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0660472   -0.2946047    0.1625103
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0262713   -0.0273638    0.0799064

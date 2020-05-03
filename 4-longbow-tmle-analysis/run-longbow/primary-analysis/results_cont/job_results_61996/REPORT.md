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
![](/tmp/c72c7c51-2138-4446-95a5-e089eb66c380/03dec354-e446-44e6-b710-ee8121f0ea8d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c72c7c51-2138-4446-95a5-e089eb66c380/03dec354-e446-44e6-b710-ee8121f0ea8d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c72c7c51-2138-4446-95a5-e089eb66c380/03dec354-e446-44e6-b710-ee8121f0ea8d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                -1.1110199   -1.2292147   -0.9928252
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.0511687   -1.2524146   -0.8499229
Birth       JiVitA-3       BANGLADESH                     1                    NA                -0.7828989   -0.8061395   -0.7596582
Birth       JiVitA-3       BANGLADESH                     0                    NA                -0.7505089   -0.8167856   -0.6842321
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       JiVitA-4       BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
Birth       Keneba         GAMBIA                         1                    NA                -1.2595711   -1.3276131   -1.1915290
Birth       Keneba         GAMBIA                         0                    NA                -1.2925377   -1.4819411   -1.1031343
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.8918578   -1.0821201   -0.7015955
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.0139954   -1.2732529   -0.7547380
Birth       MAL-ED         BRAZIL                         1                    NA                 0.5607444   -0.1788534    1.3003423
Birth       MAL-ED         BRAZIL                         0                    NA                 0.4307055    0.0428913    0.8185198
Birth       MAL-ED         INDIA                          1                    NA                -1.0662286   -1.4749215   -0.6575357
Birth       MAL-ED         INDIA                          0                    NA                -0.8641765   -1.3543670   -0.3739860
Birth       MAL-ED         NEPAL                          1                    NA                -0.4487500   -0.8783289   -0.0191711
Birth       MAL-ED         NEPAL                          0                    NA                -0.9570588   -1.4394884   -0.4746293
Birth       MAL-ED         PERU                           1                    NA                 0.1951152   -0.0304819    0.4207122
Birth       MAL-ED         PERU                           0                    NA                -0.1011930   -0.2444498    0.0420638
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.1833332   -0.8780023    0.5113360
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.1608815   -0.4036115    0.0818485
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.1485686    0.6922949    1.6048424
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6906436    0.4579255    0.9233618
Birth       PROVIDE        BANGLADESH                     1                    NA                -1.2684117   -1.3561755   -1.1806480
Birth       PROVIDE        BANGLADESH                     0                    NA                -1.3682470   -1.5058425   -1.2306515
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.0901281   -1.7027393   -0.4775170
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.6255616   -0.7356558   -0.5154674
6 months    GMS-Nepal      NEPAL                          0                    NA                -0.6123158   -0.8651580   -0.3594735
6 months    JiVitA-3       BANGLADESH                     1                    NA                -0.6058560   -0.6314152   -0.5802969
6 months    JiVitA-3       BANGLADESH                     0                    NA                -0.5863746   -0.6638240   -0.5089253
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.4016803   -0.6298870   -0.1734737
6 months    JiVitA-4       BANGLADESH                     0                    NA                -0.4344356   -0.8363241   -0.0325472
6 months    Keneba         GAMBIA                         1                    NA                -0.1833658   -0.2417375   -0.1249940
6 months    Keneba         GAMBIA                         0                    NA                -0.3971782   -0.5736995   -0.2206569
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.1018005   -0.2678461    0.0642451
6 months    MAL-ED         BANGLADESH                     0                    NA                -0.2086757   -0.4276755    0.0103241
6 months    MAL-ED         BRAZIL                         1                    NA                 1.1734578    0.8498696    1.4970459
6 months    MAL-ED         BRAZIL                         0                    NA                 0.8946309    0.6846752    1.1045865
6 months    MAL-ED         INDIA                          1                    NA                -0.6953293   -0.8612511   -0.5294075
6 months    MAL-ED         INDIA                          0                    NA                -0.7457904   -0.9548472   -0.5367336
6 months    MAL-ED         NEPAL                          1                    NA                 0.1948237   -0.0570974    0.4467449
6 months    MAL-ED         NEPAL                          0                    NA                 0.0607298   -0.1010703    0.2225300
6 months    MAL-ED         PERU                           1                    NA                 1.1607093    0.9464651    1.3749535
6 months    MAL-ED         PERU                           0                    NA                 1.0155847    0.8698754    1.1612940
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.5513861    0.2047890    0.8979832
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                 0.5716981    0.4087462    0.7346500
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8163293    0.4944307    1.1382279
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4465876    0.2942270    0.5989481
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.1325832   -0.2265785   -0.0385880
6 months    PROVIDE        BANGLADESH                     0                    NA                -0.3455776   -0.5086795   -0.1824757
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA                          0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.1538411   -1.2665064   -1.0411758
24 months   GMS-Nepal      NEPAL                          0                    NA                -1.0743395   -1.3181351   -0.8305440
24 months   JiVitA-3       BANGLADESH                     1                    NA                -1.3149233   -1.3468147   -1.2830319
24 months   JiVitA-3       BANGLADESH                     0                    NA                -1.2714335   -1.3907240   -1.1521430
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.0173056   -1.1802456   -0.8543656
24 months   JiVitA-4       BANGLADESH                     0                    NA                -0.8333365   -1.2989743   -0.3676987
24 months   Keneba         GAMBIA                         1                    NA                -0.7742045   -0.8284523   -0.7199566
24 months   Keneba         GAMBIA                         0                    NA                -0.9568444   -1.1110559   -0.8026328
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.8220249   -0.9783182   -0.6657316
24 months   MAL-ED         BANGLADESH                     0                    NA                -0.7763468   -0.9673163   -0.5853773
24 months   MAL-ED         BRAZIL                         1                    NA                 0.3312767   -0.0177902    0.6803437
24 months   MAL-ED         BRAZIL                         0                    NA                 0.5934861    0.3100056    0.8769666
24 months   MAL-ED         INDIA                          1                    NA                -0.9358969   -1.0883268   -0.7834669
24 months   MAL-ED         INDIA                          0                    NA                -0.9688889   -1.1512380   -0.7865398
24 months   MAL-ED         NEPAL                          1                    NA                -0.2439905   -0.4577211   -0.0302599
24 months   MAL-ED         NEPAL                          0                    NA                -0.4369530   -0.5775077   -0.2963983
24 months   MAL-ED         PERU                           1                    NA                 0.1574832   -0.0569060    0.3718723
24 months   MAL-ED         PERU                           0                    NA                 0.1293550   -0.0087223    0.2674323
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.6682685    0.3433255    0.9932116
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.3936658    0.2628229    0.5245088
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0480654   -0.1971689    0.2932997
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0507717   -0.1100052    0.2115487
24 months   PROVIDE        BANGLADESH                     1                    NA                -0.9177857   -1.0133700   -0.8222014
24 months   PROVIDE        BANGLADESH                     0                    NA                -0.8381815   -0.9870463   -0.6893166


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
Birth       GMS-Nepal      NEPAL                          0                    1                  0.0598512   -0.1598455    0.2795479
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.0323900   -0.0362898    0.1010699
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
Birth       Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA                         0                    1                 -0.0329667   -0.2268442    0.1609109
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.1221377   -0.4531033    0.2088279
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.1300389   -0.9692834    0.7092056
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                  0.2020521   -0.4467985    0.8509028
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.5083088   -1.1542781    0.1376604
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.2963082   -0.5645381   -0.0280782
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                  0.0224517   -0.7178310    0.7627343
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.4579250   -0.9735836    0.0577336
Birth       PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                 -0.0998353   -0.2562810    0.0566104
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.4481495   -0.9783681    0.0820692
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                  0.0132459   -0.2623739    0.2888656
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.0194814   -0.0609326    0.0998955
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.0327553   -0.4939697    0.4284591
6 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA                         0                    1                 -0.2138124   -0.3990602   -0.0285646
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.1068752   -0.3822566    0.1685062
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                 -0.2788269   -0.6629256    0.1052718
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0504611   -0.3196698    0.2187475
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                 -0.1340939   -0.4308567    0.1626689
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                 -0.1451246   -0.4046797    0.1144305
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0203121   -0.3629884    0.4036125
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3697418   -0.7265328   -0.0129508
6 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 -0.2129944   -0.3997963   -0.0261924
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                  0.0795016   -0.1892098    0.3482130
24 months   JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH                     0                    1                  0.0434898   -0.0783343    0.1653138
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.1839691   -0.3134144    0.6813526
24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA                         0                    1                 -0.1826399   -0.3461112   -0.0191686
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                  0.0456781   -0.2007100    0.2920662
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.2622094   -0.1852724    0.7096911
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                 -0.0329920   -0.2690436    0.2030595
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                 -0.1929625   -0.4492171    0.0632921
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                 -0.0281282   -0.2779445    0.2216881
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.2746027   -0.6275753    0.0783700
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0027063   -0.2915740    0.2969867
24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                  0.0796042   -0.0917645    0.2509730


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0118493   -0.0247358    0.0484344
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0030352   -0.0034565    0.0095269
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
Birth       Keneba         GAMBIA                         1                    NA                -0.0033853   -0.0255471    0.0187766
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0492808   -0.1677460    0.0691844
Birth       MAL-ED         BRAZIL                         1                    NA                -0.1291081   -0.8122523    0.5540361
Birth       MAL-ED         INDIA                          1                    NA                 0.0882799   -0.1918561    0.3684159
Birth       MAL-ED         NEPAL                          1                    NA                -0.3456500   -0.7950359    0.1037359
Birth       MAL-ED         PERU                           1                    NA                -0.2286473   -0.4382741   -0.0190205
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                 0.0244443   -0.6318767    0.6807653
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3488844   -0.7902732    0.0925044
Birth       PROVIDE        BANGLADESH                     1                    NA                -0.0300469   -0.0747781    0.0146843
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.0056826   -0.0397840    0.0511492
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0017583   -0.0052336    0.0087502
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0093424   -0.0654461    0.0467613
6 months    Keneba         GAMBIA                         1                    NA                -0.0223525   -0.0436314   -0.0010736
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0286930   -0.1246511    0.0672650
6 months    MAL-ED         BRAZIL                         1                    NA                -0.1980433   -0.4609826    0.0648960
6 months    MAL-ED         INDIA                          1                    NA                -0.0232699   -0.1531129    0.1065731
6 months    MAL-ED         NEPAL                          1                    NA                -0.0906754   -0.2984460    0.1170952
6 months    MAL-ED         PERU                           1                    NA                -0.1092957   -0.3106572    0.0920658
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0050210   -0.3525901    0.3626321
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2905667   -0.5748972   -0.0062363
6 months    PROVIDE        BANGLADESH                     1                    NA                -0.0665074   -0.1214639   -0.0115509
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0141970   -0.0285790    0.0569730
24 months   JiVitA-3       BANGLADESH                     1                    NA                 0.0039715   -0.0063237    0.0142668
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0077056   -0.0396798    0.0550911
24 months   Keneba         GAMBIA                         1                    NA                -0.0188881   -0.0356673   -0.0021088
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0143420   -0.0697923    0.0984763
24 months   MAL-ED         BRAZIL                         1                    NA                 0.1668373   -0.1338254    0.4675000
24 months   MAL-ED         INDIA                          1                    NA                -0.0157863   -0.1334555    0.1018829
24 months   MAL-ED         NEPAL                          1                    NA                -0.1350550   -0.3151747    0.0450648
24 months   MAL-ED         PERU                           1                    NA                -0.0398779   -0.2361435    0.1563876
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.2561888   -0.5844458    0.0720682
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0015089   -0.2349014    0.2379192
24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0249187   -0.0255656    0.0754030

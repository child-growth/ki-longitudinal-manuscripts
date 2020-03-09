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

agecat      studyid          country                        predexfd6    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       EE               PAKISTAN                       1                24      28
Birth       EE               PAKISTAN                       0                 4      28
Birth       GMS-Nepal        NEPAL                          1               390     522
Birth       GMS-Nepal        NEPAL                          0               132     522
Birth       IRC              INDIA                          1                 0      12
Birth       IRC              INDIA                          0                12      12
Birth       JiVitA-3         BANGLADESH                     1              8392   10744
Birth       JiVitA-3         BANGLADESH                     0              2352   10744
Birth       JiVitA-4         BANGLADESH                     1              1802    2224
Birth       JiVitA-4         BANGLADESH                     0               422    2224
Birth       Keneba           GAMBIA                         1               450    1327
Birth       Keneba           GAMBIA                         0               877    1327
Birth       MAL-ED           BANGLADESH                     1                68     194
Birth       MAL-ED           BANGLADESH                     0               126     194
Birth       MAL-ED           BRAZIL                         1                 5      57
Birth       MAL-ED           BRAZIL                         0                52      57
Birth       MAL-ED           INDIA                          1                 4      37
Birth       MAL-ED           INDIA                          0                33      37
Birth       MAL-ED           NEPAL                          1                 3      23
Birth       MAL-ED           NEPAL                          0                20      23
Birth       MAL-ED           PERU                           1                72     208
Birth       MAL-ED           PERU                           0               136     208
Birth       MAL-ED           SOUTH AFRICA                   1                 1      90
Birth       MAL-ED           SOUTH AFRICA                   0                89      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       PROVIDE          BANGLADESH                     1               155     532
Birth       PROVIDE          BANGLADESH                     0               377     532
Birth       SAS-CompFeed     INDIA                          1               310     325
Birth       SAS-CompFeed     INDIA                          0                15     325
6 months    CMC-V-BCS-2002   INDIA                          1                19      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    EE               PAKISTAN                       1                43      48
6 months    EE               PAKISTAN                       0                 5      48
6 months    GMS-Nepal        NEPAL                          1               406     547
6 months    GMS-Nepal        NEPAL                          0               141     547
6 months    IRC              INDIA                          1                 0      14
6 months    IRC              INDIA                          0                14      14
6 months    JiVitA-3         BANGLADESH                     1              7625    9882
6 months    JiVitA-3         BANGLADESH                     0              2257    9882
6 months    JiVitA-4         BANGLADESH                     1              3327    4275
6 months    JiVitA-4         BANGLADESH                     0               948    4275
6 months    Keneba           GAMBIA                         1               586    1908
6 months    Keneba           GAMBIA                         0              1322    1908
6 months    LCNI-5           MALAWI                         1                47     272
6 months    LCNI-5           MALAWI                         0               225     272
6 months    MAL-ED           BANGLADESH                     1                84     231
6 months    MAL-ED           BANGLADESH                     0               147     231
6 months    MAL-ED           BRAZIL                         1                30     209
6 months    MAL-ED           BRAZIL                         0               179     209
6 months    MAL-ED           INDIA                          1                11     218
6 months    MAL-ED           INDIA                          0               207     218
6 months    MAL-ED           NEPAL                          1                12     225
6 months    MAL-ED           NEPAL                          0               213     225
6 months    MAL-ED           PERU                           1                92     271
6 months    MAL-ED           PERU                           0               179     271
6 months    MAL-ED           SOUTH AFRICA                   1                 3     233
6 months    MAL-ED           SOUTH AFRICA                   0               230     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    PROVIDE          BANGLADESH                     1               141     603
6 months    PROVIDE          BANGLADESH                     0               462     603
6 months    SAS-CompFeed     INDIA                          1               376     395
6 months    SAS-CompFeed     INDIA                          0                19     395
6 months    SAS-FoodSuppl    INDIA                          1                 0     168
6 months    SAS-FoodSuppl    INDIA                          0               168     168
24 months   CMC-V-BCS-2002   INDIA                          1                19      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   EE               PAKISTAN                       1                20      23
24 months   EE               PAKISTAN                       0                 3      23
24 months   GMS-Nepal        NEPAL                          1               355     469
24 months   GMS-Nepal        NEPAL                          0               114     469
24 months   IRC              INDIA                          1                 0      14
24 months   IRC              INDIA                          0                14      14
24 months   JiVitA-3         BANGLADESH                     1              3909    5067
24 months   JiVitA-3         BANGLADESH                     0              1158    5067
24 months   JiVitA-4         BANGLADESH                     1              3278    4184
24 months   JiVitA-4         BANGLADESH                     0               906    4184
24 months   Keneba           GAMBIA                         1               514    1514
24 months   Keneba           GAMBIA                         0              1000    1514
24 months   LCNI-5           MALAWI                         1                34     184
24 months   LCNI-5           MALAWI                         0               150     184
24 months   MAL-ED           BANGLADESH                     1                76     205
24 months   MAL-ED           BANGLADESH                     0               129     205
24 months   MAL-ED           BRAZIL                         1                25     169
24 months   MAL-ED           BRAZIL                         0               144     169
24 months   MAL-ED           INDIA                          1                11     209
24 months   MAL-ED           INDIA                          0               198     209
24 months   MAL-ED           NEPAL                          1                12     219
24 months   MAL-ED           NEPAL                          0               207     219
24 months   MAL-ED           PERU                           1                68     201
24 months   MAL-ED           PERU                           0               133     201
24 months   MAL-ED           SOUTH AFRICA                   1                 3     216
24 months   MAL-ED           SOUTH AFRICA                   0               213     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               201     202
24 months   PROVIDE          BANGLADESH                     1               137     579
24 months   PROVIDE          BANGLADESH                     0               442     579


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
![](/tmp/7d8c5306-7a6b-4674-b284-16b535983c88/ad28bd9b-ef36-4a34-8adb-c884cd56a0cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7d8c5306-7a6b-4674-b284-16b535983c88/ad28bd9b-ef36-4a34-8adb-c884cd56a0cf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7d8c5306-7a6b-4674-b284-16b535983c88/ad28bd9b-ef36-4a34-8adb-c884cd56a0cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.1020498   -1.2150162   -0.9890834
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1075611   -1.2676059   -0.9475163
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.7865869   -0.8113975   -0.7617764
Birth       JiVitA-3       BANGLADESH   0                    NA                -0.7597997   -0.8035474   -0.7160520
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.6769095   -0.7318378   -0.6219811
Birth       JiVitA-4       BANGLADESH   0                    NA                -0.7469109   -0.8832618   -0.6105601
Birth       Keneba         GAMBIA       1                    NA                -1.2477289   -1.3484049   -1.1470529
Birth       Keneba         GAMBIA       0                    NA                -1.2649917   -1.3415011   -1.1884823
Birth       MAL-ED         BANGLADESH   1                    NA                -0.8519852   -1.0697597   -0.6342107
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0339783   -1.2412259   -0.8267306
Birth       MAL-ED         BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       MAL-ED         BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       MAL-ED         PERU         1                    NA                -0.0242230   -0.2373311    0.1888851
Birth       MAL-ED         PERU         0                    NA                -0.0788132   -0.2422885    0.0846620
Birth       PROVIDE        BANGLADESH   1                    NA                -1.3061070   -1.4585164   -1.1536975
Birth       PROVIDE        BANGLADESH   0                    NA                -1.2800646   -1.3694496   -1.1906796
Birth       SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA        0                    NA                -1.0901281   -1.7027393   -0.4775170
6 months    EE             PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE             PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal      NEPAL        1                    NA                -0.5754049   -0.6777827   -0.4730271
6 months    GMS-Nepal      NEPAL        0                    NA                -0.6711581   -0.8418664   -0.5004498
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.6034118   -0.6304813   -0.5763424
6 months    JiVitA-3       BANGLADESH   0                    NA                -0.5908421   -0.6366235   -0.5450607
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.3463032   -0.3911355   -0.3014709
6 months    JiVitA-4       BANGLADESH   0                    NA                -0.5538454   -0.6346467   -0.4730442
6 months    Keneba         GAMBIA       1                    NA                -0.0207029   -0.1187951    0.0773893
6 months    Keneba         GAMBIA       0                    NA                -0.2796961   -0.3422506   -0.2171416
6 months    LCNI-5         MALAWI       1                    NA                 0.3829923    0.0484350    0.7175497
6 months    LCNI-5         MALAWI       0                    NA                 0.3944109    0.2674079    0.5214138
6 months    MAL-ED         BANGLADESH   1                    NA                -0.1259328   -0.3715961    0.1197305
6 months    MAL-ED         BANGLADESH   0                    NA                -0.1251302   -0.2901840    0.0399236
6 months    MAL-ED         BRAZIL       1                    NA                 1.5163773    1.0555057    1.9772488
6 months    MAL-ED         BRAZIL       0                    NA                 0.8872157    0.7130178    1.0614137
6 months    MAL-ED         INDIA        1                    NA                 0.1922715   -0.3255202    0.7100633
6 months    MAL-ED         INDIA        0                    NA                -0.7423373   -0.8758092   -0.6088654
6 months    MAL-ED         NEPAL        1                    NA                -0.0636646   -0.7856909    0.6583617
6 months    MAL-ED         NEPAL        0                    NA                 0.1136373   -0.0252911    0.2525656
6 months    MAL-ED         PERU         1                    NA                 1.1948911    0.9884895    1.4012927
6 months    MAL-ED         PERU         0                    NA                 0.9762319    0.8221990    1.1302648
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0012336   -0.1646240    0.1670912
6 months    PROVIDE        BANGLADESH   0                    NA                -0.2624186   -0.3572076   -0.1676296
6 months    SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL        1                    NA                -1.0901008   -1.1900401   -0.9901615
24 months   GMS-Nepal      NEPAL        0                    NA                -1.3147565   -1.5235903   -1.1059226
24 months   JiVitA-3       BANGLADESH   1                    NA                -1.3217251   -1.3564797   -1.2869705
24 months   JiVitA-3       BANGLADESH   0                    NA                -1.2721196   -1.3349759   -1.2092632
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.2244845   -1.2651004   -1.1838686
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.2297365   -1.3066103   -1.1528627
24 months   Keneba         GAMBIA       1                    NA                -0.7010253   -0.7833270   -0.6187236
24 months   Keneba         GAMBIA       0                    NA                -0.8510843   -0.9124807   -0.7896880
24 months   LCNI-5         MALAWI       1                    NA                -0.1804846   -0.5146919    0.1537227
24 months   LCNI-5         MALAWI       0                    NA                -0.0693589   -0.2302953    0.0915775
24 months   MAL-ED         BANGLADESH   1                    NA                -0.8837117   -1.0757074   -0.6917161
24 months   MAL-ED         BANGLADESH   0                    NA                -0.7686166   -0.9315479   -0.6056853
24 months   MAL-ED         BRAZIL       1                    NA                 0.4108069   -0.2238581    1.0454719
24 months   MAL-ED         BRAZIL       0                    NA                 0.4765102    0.2555094    0.6975110
24 months   MAL-ED         INDIA        1                    NA                -0.4616676   -0.8378802   -0.0854550
24 months   MAL-ED         INDIA        0                    NA                -0.9562633   -1.0806812   -0.8318455
24 months   MAL-ED         NEPAL        1                    NA                -0.4348095   -1.0675311    0.1979121
24 months   MAL-ED         NEPAL        0                    NA                -0.3601052   -0.4809721   -0.2392383
24 months   MAL-ED         PERU         1                    NA                 0.0872868   -0.1053198    0.2798934
24 months   MAL-ED         PERU         0                    NA                 0.1449856   -0.0090949    0.2990661
24 months   PROVIDE        BANGLADESH   1                    NA                -0.7849196   -0.9496479   -0.6201913
24 months   PROVIDE        BANGLADESH   0                    NA                -0.9222902   -1.0171779   -0.8274024


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
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0055113   -0.1918024    0.1807798
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                  0.0267872   -0.0217097    0.0752842
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0700015   -0.2134888    0.0734859
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                 -0.0172628   -0.1333484    0.0988228
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.1819930   -0.4860912    0.1221051
Birth       MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU         0                    1                 -0.0545902   -0.3244432    0.2152629
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0260424   -0.1432289    0.1953138
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783681    0.0820692
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.0957532   -0.2948868    0.1033804
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                  0.0125697   -0.0392644    0.0644039
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.2075423   -0.2997609   -0.1153236
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.2589932   -0.3745832   -0.1434032
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0114185   -0.3466665    0.3695036
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                  0.0008026   -0.2965791    0.2981843
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.6291615   -1.1208724   -0.1374507
6 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA        0                    1                 -0.9346088   -1.4697875   -0.3994302
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.1773019   -0.5585335    0.9131373
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                 -0.2186592   -0.4793695    0.0420512
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.2636522   -0.4548460   -0.0724584
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                 -0.2246557   -0.4562159    0.0069046
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                  0.0496055   -0.0218398    0.1210508
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0052520   -0.0900266    0.0795225
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1500591   -0.2513959   -0.0487222
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.1111257   -0.2598925    0.4821439
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.1150952   -0.1406668    0.3708571
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.0657033   -0.6052055    0.7366122
24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA        0                    1                 -0.4945957   -0.8901719   -0.0990195
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.0747043   -0.5688947    0.7183033
24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU         0                    1                  0.0576987   -0.1874119    0.3028093
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                 -0.1373706   -0.3264960    0.0517548


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0044061   -0.0513027    0.0424905
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0058060   -0.0047993    0.0164114
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0135492   -0.0411307    0.0140324
Birth       Keneba         GAMBIA       1                    NA                -0.0122636   -0.0896250    0.0650979
Birth       MAL-ED         BANGLADESH   1                    NA                -0.1235818   -0.3205858    0.0734222
Birth       MAL-ED         BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       MAL-ED         PERU         1                    NA                -0.0345750   -0.2121363    0.1429863
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0076483   -0.1182697    0.1335664
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    EE             PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0255122   -0.0768476    0.0258232
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0032818   -0.0085460    0.0151096
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0505424   -0.0718293   -0.0292556
6 months    Keneba         GAMBIA       1                    NA                -0.1790618   -0.2597041   -0.0984194
6 months    LCNI-5         MALAWI       1                    NA                 0.0095077   -0.2886912    0.3077066
6 months    MAL-ED         BANGLADESH   1                    NA                 0.0046124   -0.1951545    0.2043793
6 months    MAL-ED         BRAZIL       1                    NA                -0.5442999   -0.9696217   -0.1189781
6 months    MAL-ED         INDIA        1                    NA                -0.8990032   -1.4124163   -0.3855901
6 months    MAL-ED         NEPAL        1                    NA                 0.1728054   -0.5277037    0.8733144
6 months    MAL-ED         PERU         1                    NA                -0.1442761   -0.3175743    0.0290221
6 months    PROVIDE        BANGLADESH   1                    NA                -0.2003243   -0.3472394   -0.0534092
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0522517   -0.1089747    0.0044713
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0113876   -0.0048905    0.0276657
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0020475   -0.0210191    0.0169240
24 months   Keneba         GAMBIA       1                    NA                -0.1022077   -0.1693126   -0.0351027
24 months   LCNI-5         MALAWI       1                    NA                 0.1034194   -0.2084972    0.4153360
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0667361   -0.0986281    0.2321003
24 months   MAL-ED         BRAZIL       1                    NA                 0.0518164   -0.5329696    0.6366023
24 months   MAL-ED         INDIA        1                    NA                -0.4825908   -0.8585168   -0.1066648
24 months   MAL-ED         NEPAL        1                    NA                 0.0673666   -0.5501057    0.6848389
24 months   MAL-ED         PERU         1                    NA                 0.0239114   -0.1410807    0.1889034
24 months   PROVIDE        BANGLADESH   1                    NA                -0.1079474   -0.2524759    0.0365810

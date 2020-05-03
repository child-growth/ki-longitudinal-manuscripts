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

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1               72      72  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                0      72  haz              
Birth       CONTENT          PERU                           1                2       2  haz              
Birth       CONTENT          PERU                           0                0       2  haz              
Birth       GMS-Nepal        NEPAL                          1              100     544  haz              
Birth       GMS-Nepal        NEPAL                          0              444     544  haz              
Birth       IRC              INDIA                          1              287     287  haz              
Birth       IRC              INDIA                          0                0     287  haz              
Birth       JiVitA-3         BANGLADESH                     1             1394   22399  haz              
Birth       JiVitA-3         BANGLADESH                     0            21005   22399  haz              
Birth       JiVitA-4         BANGLADESH                     1              307    2820  haz              
Birth       JiVitA-4         BANGLADESH                     0             2513    2820  haz              
Birth       MAL-ED           BANGLADESH                     1              196     213  haz              
Birth       MAL-ED           BANGLADESH                     0               17     213  haz              
Birth       MAL-ED           BRAZIL                         1               58      60  haz              
Birth       MAL-ED           BRAZIL                         0                2      60  haz              
Birth       MAL-ED           INDIA                          1               35      41  haz              
Birth       MAL-ED           INDIA                          0                6      41  haz              
Birth       MAL-ED           NEPAL                          1                9      25  haz              
Birth       MAL-ED           NEPAL                          0               16      25  haz              
Birth       MAL-ED           PERU                           1               39     215  haz              
Birth       MAL-ED           PERU                           0              176     215  haz              
Birth       MAL-ED           SOUTH AFRICA                   1               87      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                9      96  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                7     119  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              112     119  haz              
Birth       NIH-Birth        BANGLADESH                     1              533     605  haz              
Birth       NIH-Birth        BANGLADESH                     0               72     605  haz              
Birth       NIH-Crypto       BANGLADESH                     1              558     732  haz              
Birth       NIH-Crypto       BANGLADESH                     0              174     732  haz              
Birth       PROVIDE          BANGLADESH                     1              491     539  haz              
Birth       PROVIDE          BANGLADESH                     0               48     539  haz              
6 months    CMC-V-BCS-2002   INDIA                          1              257     257  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                0     257  haz              
6 months    CONTENT          PERU                           1              201     215  haz              
6 months    CONTENT          PERU                           0               14     215  haz              
6 months    GMS-Nepal        NEPAL                          1               78     441  haz              
6 months    GMS-Nepal        NEPAL                          0              363     441  haz              
6 months    IRC              INDIA                          1              303     303  haz              
6 months    IRC              INDIA                          0                0     303  haz              
6 months    JiVitA-3         BANGLADESH                     1             1465   16773  haz              
6 months    JiVitA-3         BANGLADESH                     0            15308   16773  haz              
6 months    JiVitA-4         BANGLADESH                     1              590    4824  haz              
6 months    JiVitA-4         BANGLADESH                     0             4234    4824  haz              
6 months    MAL-ED           BANGLADESH                     1              221     240  haz              
6 months    MAL-ED           BANGLADESH                     0               19     240  haz              
6 months    MAL-ED           BRAZIL                         1              207     209  haz              
6 months    MAL-ED           BRAZIL                         0                2     209  haz              
6 months    MAL-ED           INDIA                          1              220     235  haz              
6 months    MAL-ED           INDIA                          0               15     235  haz              
6 months    MAL-ED           NEPAL                          1              103     229  haz              
6 months    MAL-ED           NEPAL                          0              126     229  haz              
6 months    MAL-ED           PERU                           1               58     270  haz              
6 months    MAL-ED           PERU                           0              212     270  haz              
6 months    MAL-ED           SOUTH AFRICA                   1              229     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               20     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14     245  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231     245  haz              
6 months    NIH-Birth        BANGLADESH                     1              477     535  haz              
6 months    NIH-Birth        BANGLADESH                     0               58     535  haz              
6 months    NIH-Crypto       BANGLADESH                     1              537     715  haz              
6 months    NIH-Crypto       BANGLADESH                     0              178     715  haz              
6 months    PROVIDE          BANGLADESH                     1              557     604  haz              
6 months    PROVIDE          BANGLADESH                     0               47     604  haz              
24 months   CMC-V-BCS-2002   INDIA                          1              259     259  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                0     259  haz              
24 months   CONTENT          PERU                           1              154     164  haz              
24 months   CONTENT          PERU                           0               10     164  haz              
24 months   GMS-Nepal        NEPAL                          1               72     374  haz              
24 months   GMS-Nepal        NEPAL                          0              302     374  haz              
24 months   IRC              INDIA                          1              305     305  haz              
24 months   IRC              INDIA                          0                0     305  haz              
24 months   JiVitA-3         BANGLADESH                     1              674    8609  haz              
24 months   JiVitA-3         BANGLADESH                     0             7935    8609  haz              
24 months   JiVitA-4         BANGLADESH                     1              566    4746  haz              
24 months   JiVitA-4         BANGLADESH                     0             4180    4746  haz              
24 months   MAL-ED           BANGLADESH                     1              195     212  haz              
24 months   MAL-ED           BANGLADESH                     0               17     212  haz              
24 months   MAL-ED           BRAZIL                         1              167     169  haz              
24 months   MAL-ED           BRAZIL                         0                2     169  haz              
24 months   MAL-ED           INDIA                          1              212     227  haz              
24 months   MAL-ED           INDIA                          0               15     227  haz              
24 months   MAL-ED           NEPAL                          1               98     221  haz              
24 months   MAL-ED           NEPAL                          0              123     221  haz              
24 months   MAL-ED           PERU                           1               49     201  haz              
24 months   MAL-ED           PERU                           0              152     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   1              220     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               18     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     212  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200     212  haz              
24 months   NIH-Birth        BANGLADESH                     1              377     427  haz              
24 months   NIH-Birth        BANGLADESH                     0               50     427  haz              
24 months   NIH-Crypto       BANGLADESH                     1              346     514  haz              
24 months   NIH-Crypto       BANGLADESH                     0              168     514  haz              
24 months   PROVIDE          BANGLADESH                     1              533     578  haz              
24 months   PROVIDE          BANGLADESH                     0               45     578  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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
![](/tmp/8de4a48a-5bba-4f0c-9d37-85764ee18da5/05ae5980-6b8f-42dc-9ecc-08388ffbc60c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8de4a48a-5bba-4f0c-9d37-85764ee18da5/05ae5980-6b8f-42dc-9ecc-08388ffbc60c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8de4a48a-5bba-4f0c-9d37-85764ee18da5/05ae5980-6b8f-42dc-9ecc-08388ffbc60c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -0.8738430   -1.1318568   -0.6158291
Birth       GMS-Nepal    NEPAL                          0                    NA                -1.1767992   -1.2866354   -1.0669631
Birth       JiVitA-3     BANGLADESH                     1                    NA                -1.5089295   -1.5722611   -1.4455980
Birth       JiVitA-3     BANGLADESH                     0                    NA                -1.5881681   -1.6080933   -1.5682430
Birth       JiVitA-4     BANGLADESH                     1                    NA                -1.5423189   -1.7991790   -1.2854588
Birth       JiVitA-4     BANGLADESH                     0                    NA                -1.5330239   -1.5855692   -1.4804787
Birth       MAL-ED       BANGLADESH                     1                    NA                -1.0717403   -1.2147045   -0.9287761
Birth       MAL-ED       BANGLADESH                     0                    NA                -0.8692408   -1.3650068   -0.3734748
Birth       MAL-ED       INDIA                          1                    NA                -1.2242857   -1.5919558   -0.8566156
Birth       MAL-ED       INDIA                          0                    NA                -1.1066667   -1.4622060   -0.7511274
Birth       MAL-ED       NEPAL                          1                    NA                -1.0066667   -1.6704675   -0.3428658
Birth       MAL-ED       NEPAL                          0                    NA                -0.6568750   -1.0897018   -0.2240482
Birth       MAL-ED       PERU                           1                    NA                -1.0873393   -1.4776179   -0.6970607
Birth       MAL-ED       PERU                           0                    NA                -0.8717151   -0.9940742   -0.7493560
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.5463218   -0.7573107   -0.3353330
Birth       MAL-ED       SOUTH AFRICA                   0                    NA                -0.6111111   -1.3247632    0.1025410
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.8571429   -3.4252117   -0.2890740
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0753571   -1.2760805   -0.8746338
Birth       NIH-Birth    BANGLADESH                     1                    NA                -0.8928102   -0.9875872   -0.7980331
Birth       NIH-Birth    BANGLADESH                     0                    NA                -1.1746307   -1.3970085   -0.9522529
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.9068907   -0.9869158   -0.8268656
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -0.9063280   -1.0865140   -0.7261419
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.8626116   -0.9417012   -0.7835220
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.1056146   -1.3413449   -0.8698843
6 months    CONTENT      PERU                           1                    NA                -0.2828418   -0.4203015   -0.1453821
6 months    CONTENT      PERU                           0                    NA                -0.6890264   -1.1974150   -0.1806378
6 months    GMS-Nepal    NEPAL                          1                    NA                -1.0251481   -1.3118910   -0.7384052
6 months    GMS-Nepal    NEPAL                          0                    NA                -1.3545288   -1.4566817   -1.2523759
6 months    JiVitA-3     BANGLADESH                     1                    NA                -1.1754105   -1.2375101   -1.1133110
6 months    JiVitA-3     BANGLADESH                     0                    NA                -1.3214288   -1.3466802   -1.2961774
6 months    JiVitA-4     BANGLADESH                     1                    NA                -1.2046973   -1.3944397   -1.0149550
6 months    JiVitA-4     BANGLADESH                     0                    NA                -1.3710897   -1.4119743   -1.3302050
6 months    MAL-ED       BANGLADESH                     1                    NA                -1.2082965   -1.3272018   -1.0893911
6 months    MAL-ED       BANGLADESH                     0                    NA                -1.6873432   -2.1786653   -1.1960210
6 months    MAL-ED       INDIA                          1                    NA                -1.2057479   -1.3269148   -1.0845810
6 months    MAL-ED       INDIA                          0                    NA                -1.2753239   -1.8557057   -0.6949422
6 months    MAL-ED       NEPAL                          1                    NA                -0.4850632   -0.6597799   -0.3103466
6 months    MAL-ED       NEPAL                          0                    NA                -0.5806750   -0.7284331   -0.4329169
6 months    MAL-ED       PERU                           1                    NA                -1.4348225   -1.6959228   -1.1737222
6 months    MAL-ED       PERU                           0                    NA                -1.2993181   -1.4178004   -1.1808358
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                -1.0517745   -1.1898795   -0.9136695
6 months    MAL-ED       SOUTH AFRICA                   0                    NA                -1.0611085   -1.4645449   -0.6576721
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0117245   -1.5080179   -0.5154311
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3810103   -1.5077799   -1.2542407
6 months    NIH-Birth    BANGLADESH                     1                    NA                -1.3689557   -1.4632116   -1.2746999
6 months    NIH-Birth    BANGLADESH                     0                    NA                -1.7493876   -2.0001145   -1.4986607
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -1.1655316   -1.2458934   -1.0851699
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -1.2665841   -1.4346572   -1.0985110
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.0482907   -1.1232253   -0.9733561
6 months    PROVIDE      BANGLADESH                     0                    NA                -1.6154868   -1.9494558   -1.2815178
24 months   CONTENT      PERU                           1                    NA                -0.6516263   -0.8080959   -0.4951567
24 months   CONTENT      PERU                           0                    NA                -0.9871825   -1.6103821   -0.3639829
24 months   GMS-Nepal    NEPAL                          1                    NA                -1.5687055   -1.8363410   -1.3010700
24 months   GMS-Nepal    NEPAL                          0                    NA                -1.8842203   -2.0000860   -1.7683547
24 months   JiVitA-3     BANGLADESH                     1                    NA                -1.8436127   -1.9309297   -1.7562956
24 months   JiVitA-3     BANGLADESH                     0                    NA                -2.0248969   -2.0548149   -1.9949789
24 months   JiVitA-4     BANGLADESH                     1                    NA                -1.5263750   -1.7167958   -1.3359542
24 months   JiVitA-4     BANGLADESH                     0                    NA                -1.7941240   -1.8316636   -1.7565844
24 months   MAL-ED       BANGLADESH                     1                    NA                -1.9930995   -2.1263013   -1.8598976
24 months   MAL-ED       BANGLADESH                     0                    NA                -1.8099719   -2.1908775   -1.4290663
24 months   MAL-ED       INDIA                          1                    NA                -1.8793182   -2.0073508   -1.7512855
24 months   MAL-ED       INDIA                          0                    NA                -1.9458157   -2.3787551   -1.5128763
24 months   MAL-ED       NEPAL                          1                    NA                -1.1336460   -1.3484519   -0.9188401
24 months   MAL-ED       NEPAL                          0                    NA                -1.3795688   -1.5297853   -1.2293524
24 months   MAL-ED       PERU                           1                    NA                -1.6220416   -1.8775235   -1.3665596
24 months   MAL-ED       PERU                           0                    NA                -1.7917124   -1.9268123   -1.6566125
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                -1.6496897   -1.7903390   -1.5090404
24 months   MAL-ED       SOUTH AFRICA                   0                    NA                -1.6270302   -2.1376019   -1.1164585
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3340995   -2.8932837   -1.7749153
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6638462   -2.8050420   -2.5226505
24 months   NIH-Birth    BANGLADESH                     1                    NA                -2.1611313   -2.2692526   -2.0530101
24 months   NIH-Birth    BANGLADESH                     0                    NA                -2.6780089   -2.9623587   -2.3936592
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -1.4137896   -1.5140398   -1.3135394
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -1.4272480   -1.5998650   -1.2546309
24 months   PROVIDE      BANGLADESH                     1                    NA                -1.5577532   -1.6429950   -1.4725114
24 months   PROVIDE      BANGLADESH                     0                    NA                -2.1361320   -2.4395665   -1.8326975


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          NA                   NA                -1.1177022   -1.2075344   -1.0278700
Birth       JiVitA-3     BANGLADESH                     NA                   NA                -1.5895451   -1.6088186   -1.5702715
Birth       JiVitA-4     BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED       BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED       INDIA                          NA                   NA                -1.2070732   -1.5254820   -0.8886644
Birth       MAL-ED       NEPAL                          NA                   NA                -0.7828000   -1.1547571   -0.4108429
Birth       MAL-ED       PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       MAL-ED       SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1213445   -1.3341800   -0.9085090
Birth       NIH-Birth    BANGLADESH                     NA                   NA                -0.9289256   -1.0178691   -0.8399821
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CONTENT      PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    GMS-Nepal    NEPAL                          NA                   NA                -1.3225094   -1.4115793   -1.2334396
6 months    JiVitA-3     BANGLADESH                     NA                   NA                -1.3134597   -1.3365976   -1.2903219
6 months    JiVitA-4     BANGLADESH                     NA                   NA                -1.3440174   -1.3812821   -1.3067527
6 months    MAL-ED       BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED       INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    MAL-ED       NEPAL                          NA                   NA                -0.5534862   -0.6681825   -0.4387899
6 months    MAL-ED       PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3700408   -1.4930436   -1.2470380
6 months    NIH-Birth    BANGLADESH                     NA                   NA                -1.4060639   -1.4948910   -1.3172368
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   CONTENT      PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   GMS-Nepal    NEPAL                          NA                   NA                -1.8396747   -1.9349390   -1.7444104
24 months   JiVitA-3     BANGLADESH                     NA                   NA                -2.0134592   -2.0410825   -1.9858359
24 months   JiVitA-4     BANGLADESH                     NA                   NA                -1.7804046   -1.8159135   -1.7448956
24 months   MAL-ED       BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED       INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED       NEPAL                          NA                   NA                -1.2928054   -1.4146944   -1.1709164
24 months   MAL-ED       PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6432311   -2.7795797   -2.5068826
24 months   NIH-Birth    BANGLADESH                     NA                   NA                -2.2235968   -2.3265592   -2.1206344
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL                          0                    1                 -0.3029563   -0.5836455   -0.0222671
Birth       JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH                     0                    1                 -0.0792386   -0.1442570   -0.0142202
Birth       JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH                     0                    1                  0.0092949   -0.2506064    0.2691963
Birth       MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     0                    1                  0.2024995   -0.3137247    0.7187236
Birth       MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          0                    1                  0.1176190   -0.3938392    0.6290772
Birth       MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          0                    1                  0.3497917   -0.4426543    1.1422376
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.2156242   -0.1935051    0.6247534
Birth       MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA                   0                    1                 -0.0647893   -0.8089772    0.6793986
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.7817857   -0.7990779    2.3626493
Birth       NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     0                    1                 -0.2818206   -0.5224026   -0.0412385
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                  0.0005627   -0.1970546    0.1981800
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.2430030   -0.4912599    0.0052539
6 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           0                    1                 -0.4061846   -0.9354038    0.1230346
6 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL                          0                    1                 -0.3293807   -0.6337251   -0.0250362
6 months    JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH                     0                    1                 -0.1460183   -0.2114955   -0.0805410
6 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH                     0                    1                 -0.1663923   -0.3594314    0.0266467
6 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     0                    1                 -0.4790467   -0.9846031    0.0265097
6 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          0                    1                 -0.0695761   -0.6627421    0.5235900
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                 -0.0956117   -0.3262171    0.1349936
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                  0.1355044   -0.1516242    0.4226330
6 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   0                    1                 -0.0093340   -0.4358741    0.4172061
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3692858   -0.8805102    0.1419386
6 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     0                    1                 -0.3804319   -0.6484352   -0.1124285
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.1010524   -0.2865593    0.0844544
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -0.5671961   -0.9095393   -0.2248528
24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           0                    1                 -0.3355562   -0.9777566    0.3066441
24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL                          0                    1                 -0.3155149   -0.6076784   -0.0233513
24 months   JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH                     0                    1                 -0.1812842   -0.2726649   -0.0899036
24 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH                     0                    1                 -0.2677490   -0.4607403   -0.0747576
24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     0                    1                  0.1831276   -0.2179462    0.5842014
24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          0                    1                 -0.0664976   -0.5168995    0.3839044
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.2459229   -0.5100566    0.0182108
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.1696708   -0.4568473    0.1175056
24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0226594   -0.5077326    0.5530515
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3297468   -0.9064236    0.2469301
24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.5168776   -0.8189375   -0.2148177
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0134584   -0.2125258    0.1856090
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.5783788   -0.8937114   -0.2630461


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -0.2438592   -0.4969556    0.0092371
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.0806155   -0.1428800   -0.0183511
Birth       JiVitA-4     BANGLADESH                     1                    NA                 0.0187054   -0.2282072    0.2656180
Birth       MAL-ED       BANGLADESH                     1                    NA                 0.0186887   -0.0205461    0.0579235
Birth       MAL-ED       INDIA                          1                    NA                 0.0172125   -0.0587357    0.0931607
Birth       MAL-ED       NEPAL                          1                    NA                 0.2238667   -0.2877278    0.7354611
Birth       MAL-ED       PERU                           1                    NA                 0.1731997   -0.1659250    0.5123245
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.0060740   -0.0759449    0.0637969
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7357983   -0.7524434    2.2240401
Birth       NIH-Birth    BANGLADESH                     1                    NA                -0.0361154   -0.0667564   -0.0054745
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0026038   -0.0506779    0.0454703
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.0224904   -0.0446622   -0.0003187
6 months    CONTENT      PERU                           1                    NA                 0.0043162   -0.0252397    0.0338721
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.2973613   -0.5767398   -0.0179829
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.1380492   -0.2002977   -0.0758007
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.1393201   -0.3227813    0.0441411
6 months    MAL-ED       BANGLADESH                     1                    NA                 0.0056159   -0.0394473    0.0506791
6 months    MAL-ED       INDIA                          1                    NA                -0.0013159   -0.0368584    0.0342265
6 months    MAL-ED       NEPAL                          1                    NA                -0.0684229   -0.1978861    0.0610402
6 months    MAL-ED       PERU                           1                    NA                 0.1099676   -0.1164219    0.3363571
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                -0.0030180   -0.0392162    0.0331802
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3583163   -0.8426096    0.1259769
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0371081   -0.0683613   -0.0058550
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0331467   -0.0771117    0.0108184
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.0434008   -0.0717916   -0.0150100
24 months   CONTENT      PERU                           1                    NA                -0.0352335   -0.0762937    0.0058268
24 months   GMS-Nepal    NEPAL                          1                    NA                -0.2709692   -0.5307555   -0.0111829
24 months   JiVitA-3     BANGLADESH                     1                    NA                -0.1698465   -0.2573365   -0.0823566
24 months   JiVitA-4     BANGLADESH                     1                    NA                -0.2540295   -0.4383463   -0.0697127
24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0147033   -0.0184725    0.0478790
24 months   MAL-ED       INDIA                          1                    NA                -0.0068713   -0.0424913    0.0287488
24 months   MAL-ED       NEPAL                          1                    NA                -0.1591595   -0.3244453    0.0061264
24 months   MAL-ED       PERU                           1                    NA                -0.1304294   -0.3492716    0.0884128
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0046301   -0.0326923    0.0419526
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3091317   -0.8593291    0.2410658
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0624655   -0.1017928   -0.0231382
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0274750   -0.0881585    0.0332085
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0446689   -0.0727910   -0.0165469

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

agecat      studyid          country                        impfloor    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1               72      72
Birth       CMC-V-BCS-2002   INDIA                          0                0      72
Birth       CONTENT          PERU                           1                2       2
Birth       CONTENT          PERU                           0                0       2
Birth       GMS-Nepal        NEPAL                          1              100     544
Birth       GMS-Nepal        NEPAL                          0              444     544
Birth       IRC              INDIA                          1              287     287
Birth       IRC              INDIA                          0                0     287
Birth       JiVitA-3         BANGLADESH                     1             1394   22399
Birth       JiVitA-3         BANGLADESH                     0            21005   22399
Birth       JiVitA-4         BANGLADESH                     1              307    2820
Birth       JiVitA-4         BANGLADESH                     0             2513    2820
Birth       MAL-ED           BANGLADESH                     1              196     213
Birth       MAL-ED           BANGLADESH                     0               17     213
Birth       MAL-ED           BRAZIL                         1               58      60
Birth       MAL-ED           BRAZIL                         0                2      60
Birth       MAL-ED           INDIA                          1               35      41
Birth       MAL-ED           INDIA                          0                6      41
Birth       MAL-ED           NEPAL                          1                9      25
Birth       MAL-ED           NEPAL                          0               16      25
Birth       MAL-ED           PERU                           1               39     215
Birth       MAL-ED           PERU                           0              176     215
Birth       MAL-ED           SOUTH AFRICA                   1               87      96
Birth       MAL-ED           SOUTH AFRICA                   0                9      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                7     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              112     119
Birth       NIH-Birth        BANGLADESH                     1              533     605
Birth       NIH-Birth        BANGLADESH                     0               72     605
Birth       NIH-Crypto       BANGLADESH                     1              558     732
Birth       NIH-Crypto       BANGLADESH                     0              174     732
Birth       PROVIDE          BANGLADESH                     1              491     539
Birth       PROVIDE          BANGLADESH                     0               48     539
6 months    CMC-V-BCS-2002   INDIA                          1              257     257
6 months    CMC-V-BCS-2002   INDIA                          0                0     257
6 months    CONTENT          PERU                           1              201     215
6 months    CONTENT          PERU                           0               14     215
6 months    GMS-Nepal        NEPAL                          1               78     441
6 months    GMS-Nepal        NEPAL                          0              363     441
6 months    IRC              INDIA                          1              303     303
6 months    IRC              INDIA                          0                0     303
6 months    JiVitA-3         BANGLADESH                     1             1465   16773
6 months    JiVitA-3         BANGLADESH                     0            15308   16773
6 months    JiVitA-4         BANGLADESH                     1              590    4824
6 months    JiVitA-4         BANGLADESH                     0             4234    4824
6 months    MAL-ED           BANGLADESH                     1              221     240
6 months    MAL-ED           BANGLADESH                     0               19     240
6 months    MAL-ED           BRAZIL                         1              207     209
6 months    MAL-ED           BRAZIL                         0                2     209
6 months    MAL-ED           INDIA                          1              220     235
6 months    MAL-ED           INDIA                          0               15     235
6 months    MAL-ED           NEPAL                          1              103     229
6 months    MAL-ED           NEPAL                          0              126     229
6 months    MAL-ED           PERU                           1               58     270
6 months    MAL-ED           PERU                           0              212     270
6 months    MAL-ED           SOUTH AFRICA                   1              229     249
6 months    MAL-ED           SOUTH AFRICA                   0               20     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    NIH-Birth        BANGLADESH                     1              477     535
6 months    NIH-Birth        BANGLADESH                     0               58     535
6 months    NIH-Crypto       BANGLADESH                     1              537     715
6 months    NIH-Crypto       BANGLADESH                     0              178     715
6 months    PROVIDE          BANGLADESH                     1              557     604
6 months    PROVIDE          BANGLADESH                     0               47     604
24 months   CMC-V-BCS-2002   INDIA                          1              259     259
24 months   CMC-V-BCS-2002   INDIA                          0                0     259
24 months   CONTENT          PERU                           1              154     164
24 months   CONTENT          PERU                           0               10     164
24 months   GMS-Nepal        NEPAL                          1               72     374
24 months   GMS-Nepal        NEPAL                          0              302     374
24 months   IRC              INDIA                          1              305     305
24 months   IRC              INDIA                          0                0     305
24 months   JiVitA-3         BANGLADESH                     1              674    8609
24 months   JiVitA-3         BANGLADESH                     0             7935    8609
24 months   JiVitA-4         BANGLADESH                     1              566    4746
24 months   JiVitA-4         BANGLADESH                     0             4180    4746
24 months   MAL-ED           BANGLADESH                     1              195     212
24 months   MAL-ED           BANGLADESH                     0               17     212
24 months   MAL-ED           BRAZIL                         1              167     169
24 months   MAL-ED           BRAZIL                         0                2     169
24 months   MAL-ED           INDIA                          1              212     227
24 months   MAL-ED           INDIA                          0               15     227
24 months   MAL-ED           NEPAL                          1               98     221
24 months   MAL-ED           NEPAL                          0              123     221
24 months   MAL-ED           PERU                           1               49     201
24 months   MAL-ED           PERU                           0              152     201
24 months   MAL-ED           SOUTH AFRICA                   1              220     238
24 months   MAL-ED           SOUTH AFRICA                   0               18     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   NIH-Birth        BANGLADESH                     1              377     427
24 months   NIH-Birth        BANGLADESH                     0               50     427
24 months   NIH-Crypto       BANGLADESH                     1              346     514
24 months   NIH-Crypto       BANGLADESH                     0              168     514
24 months   PROVIDE          BANGLADESH                     1              533     578
24 months   PROVIDE          BANGLADESH                     0               45     578


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
![](/tmp/d604ab52-bd07-4934-aee7-e38b4d7090bc/cd7dbfea-d206-43eb-a695-103dc87952a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d604ab52-bd07-4934-aee7-e38b4d7090bc/cd7dbfea-d206-43eb-a695-103dc87952a0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d604ab52-bd07-4934-aee7-e38b4d7090bc/cd7dbfea-d206-43eb-a695-103dc87952a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -0.8490029   -1.1241189   -0.5738868
Birth       GMS-Nepal    NEPAL                          0                    NA                -1.1914857   -1.3040830   -1.0788885
Birth       JiVitA-3     BANGLADESH                     1                    NA                -1.5089515   -1.5750993   -1.4428037
Birth       JiVitA-3     BANGLADESH                     0                    NA                -1.5882019   -1.6080847   -1.5683191
Birth       JiVitA-4     BANGLADESH                     1                    NA                -1.5272584   -1.7806468   -1.2738700
Birth       JiVitA-4     BANGLADESH                     0                    NA                -1.5295428   -1.5840211   -1.4750644
Birth       MAL-ED       BANGLADESH                     1                    NA                -1.0735309   -1.2167619   -0.9302999
Birth       MAL-ED       BANGLADESH                     0                    NA                -0.6635948   -1.1540193   -0.1731703
Birth       MAL-ED       INDIA                          1                    NA                -1.2242857   -1.5919558   -0.8566156
Birth       MAL-ED       INDIA                          0                    NA                -1.1066667   -1.4622060   -0.7511274
Birth       MAL-ED       NEPAL                          1                    NA                -1.0066667   -1.6704675   -0.3428658
Birth       MAL-ED       NEPAL                          0                    NA                -0.6568750   -1.0897018   -0.2240482
Birth       MAL-ED       PERU                           1                    NA                -1.0881277   -1.4543891   -0.7218663
Birth       MAL-ED       PERU                           0                    NA                -0.8772800   -0.9989236   -0.7556365
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.5463218   -0.7573107   -0.3353330
Birth       MAL-ED       SOUTH AFRICA                   0                    NA                -0.6111111   -1.3247632    0.1025410
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.8571429   -3.4252117   -0.2890740
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0753571   -1.2760805   -0.8746338
Birth       NIH-Birth    BANGLADESH                     1                    NA                -0.8903475   -0.9849896   -0.7957054
Birth       NIH-Birth    BANGLADESH                     0                    NA                -1.1818875   -1.4176618   -0.9461131
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.9027855   -0.9817699   -0.8238012
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -0.9385038   -1.1307801   -0.7462275
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.8633146   -0.9422996   -0.7843295
Birth       PROVIDE      BANGLADESH                     0                    NA                -1.1027355   -1.3446700   -0.8608011
6 months    CONTENT      PERU                           1                    NA                -0.2824949   -0.4199450   -0.1450448
6 months    CONTENT      PERU                           0                    NA                -0.2840586   -0.7627258    0.1946085
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.9558667   -1.2781507   -0.6335827
6 months    GMS-Nepal    NEPAL                          0                    NA                -1.3641230   -1.4724585   -1.2557874
6 months    JiVitA-3     BANGLADESH                     1                    NA                -1.1819440   -1.2416053   -1.1222828
6 months    JiVitA-3     BANGLADESH                     0                    NA                -1.3217976   -1.3471088   -1.2964864
6 months    JiVitA-4     BANGLADESH                     1                    NA                -1.1923464   -1.3647342   -1.0199585
6 months    JiVitA-4     BANGLADESH                     0                    NA                -1.3696944   -1.4112328   -1.3281561
6 months    MAL-ED       BANGLADESH                     1                    NA                -1.2068401   -1.3259238   -1.0877565
6 months    MAL-ED       BANGLADESH                     0                    NA                -1.1870045   -1.5907442   -0.7832648
6 months    MAL-ED       INDIA                          1                    NA                -1.2087911   -1.3304291   -1.0871530
6 months    MAL-ED       INDIA                          0                    NA                -1.1243713   -1.6474081   -0.6013344
6 months    MAL-ED       NEPAL                          1                    NA                -0.4865154   -0.6643314   -0.3086995
6 months    MAL-ED       NEPAL                          0                    NA                -0.5976951   -0.7486114   -0.4467789
6 months    MAL-ED       PERU                           1                    NA                -1.3740615   -1.6437842   -1.1043388
6 months    MAL-ED       PERU                           0                    NA                -1.2999509   -1.4182881   -1.1816137
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                -1.0555908   -1.1927771   -0.9184045
6 months    MAL-ED       SOUTH AFRICA                   0                    NA                -1.0531643   -1.4764910   -0.6298377
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3390129   -1.8677459   -0.8102799
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3823089   -1.5090948   -1.2555231
6 months    NIH-Birth    BANGLADESH                     1                    NA                -1.3731826   -1.4679369   -1.2784282
6 months    NIH-Birth    BANGLADESH                     0                    NA                -1.6862485   -1.9406542   -1.4318429
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -1.1726926   -1.2529378   -1.0924474
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -1.2345026   -1.3971903   -1.0718150
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.0481061   -1.1230243   -0.9731878
6 months    PROVIDE      BANGLADESH                     0                    NA                -1.6609932   -1.9914963   -1.3304902
24 months   CONTENT      PERU                           1                    NA                -0.6522050   -0.8087071   -0.4957030
24 months   CONTENT      PERU                           0                    NA                -1.2519345   -1.9771308   -0.5267382
24 months   GMS-Nepal    NEPAL                          1                    NA                -1.6010006   -1.8588452   -1.3431559
24 months   GMS-Nepal    NEPAL                          0                    NA                -1.8905322   -2.0058651   -1.7751992
24 months   JiVitA-3     BANGLADESH                     1                    NA                -1.8444641   -1.9346884   -1.7542398
24 months   JiVitA-3     BANGLADESH                     0                    NA                -2.0238417   -2.0535374   -1.9941460
24 months   JiVitA-4     BANGLADESH                     1                    NA                -1.5665957   -1.7553986   -1.3777929
24 months   JiVitA-4     BANGLADESH                     0                    NA                -1.7952428   -1.8331908   -1.7572948
24 months   MAL-ED       BANGLADESH                     1                    NA                -1.9943807   -2.1275577   -1.8612036
24 months   MAL-ED       BANGLADESH                     0                    NA                -1.8967336   -2.3024965   -1.4909708
24 months   MAL-ED       INDIA                          1                    NA                -1.8790486   -2.0074112   -1.7506859
24 months   MAL-ED       INDIA                          0                    NA                -1.9664755   -2.4214247   -1.5115264
24 months   MAL-ED       NEPAL                          1                    NA                -1.1291106   -1.3309286   -0.9272927
24 months   MAL-ED       NEPAL                          0                    NA                -1.4159347   -1.5656968   -1.2661726
24 months   MAL-ED       PERU                           1                    NA                -1.6191268   -1.8712769   -1.3669766
24 months   MAL-ED       PERU                           0                    NA                -1.7939271   -1.9293058   -1.6585484
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                -1.6486776   -1.7896500   -1.5077051
24 months   MAL-ED       SOUTH AFRICA                   0                    NA                -1.6425907   -2.1750376   -1.1101437
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.2874504   -2.8778852   -1.6970157
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6621838   -2.8033100   -2.5210576
24 months   NIH-Birth    BANGLADESH                     1                    NA                -2.1588297   -2.2668231   -2.0508364
24 months   NIH-Birth    BANGLADESH                     0                    NA                -2.6924745   -2.9717465   -2.4132025
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -1.4121201   -1.5100858   -1.3141543
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -1.4462685   -1.6357985   -1.2567386
24 months   PROVIDE      BANGLADESH                     1                    NA                -1.5564716   -1.6417044   -1.4712389
24 months   PROVIDE      BANGLADESH                     0                    NA                -2.0212696   -2.3319068   -1.7106324


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
Birth       GMS-Nepal    NEPAL                          0                    1                 -0.3424829   -0.6398896   -0.0450762
Birth       JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH                     0                    1                 -0.0792504   -0.1468839   -0.0116169
Birth       JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH                     0                    1                 -0.0022843   -0.2588081    0.2542394
Birth       MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       BANGLADESH                     0                    1                  0.4099361   -0.1040389    0.9239112
Birth       MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       INDIA                          0                    1                  0.1176190   -0.3938392    0.6290772
Birth       MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       NEPAL                          0                    1                  0.3497917   -0.4426543    1.1422376
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.2108477   -0.1708219    0.5925172
Birth       MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA                   0                    1                 -0.0647893   -0.8089772    0.6793986
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.7817857   -0.7990779    2.3626493
Birth       NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH                     0                    1                 -0.2915400   -0.5447271   -0.0383528
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                 -0.0357182   -0.2430103    0.1715738
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.2394210   -0.4934759    0.0146340
6 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    CONTENT      PERU                           0                    1                 -0.0015637   -0.5005739    0.4974465
6 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL                          0                    1                 -0.4082563   -0.7482738   -0.0682387
6 months    JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH                     0                    1                 -0.1398536   -0.2032414   -0.0764658
6 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH                     0                    1                 -0.1773480   -0.3537154   -0.0009807
6 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       BANGLADESH                     0                    1                  0.0198357   -0.3991812    0.4388525
6 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA                          0                    1                  0.0844198   -0.4531066    0.6219461
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL                          0                    1                 -0.1111797   -0.3444016    0.1220423
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU                           0                    1                  0.0741106   -0.2215377    0.3697588
6 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0024265   -0.4420193    0.4468723
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0432960   -0.5868818    0.5002898
6 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH                     0                    1                 -0.3130660   -0.5835829   -0.0425490
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                 -0.0618100   -0.2425025    0.1188824
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                 -0.6128872   -0.9517916   -0.2739827
24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   CONTENT      PERU                           0                    1                 -0.5997295   -1.3425284    0.1430694
24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL                          0                    1                 -0.2895316   -0.5716183   -0.0074448
24 months   JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH                     0                    1                 -0.1793775   -0.2736249   -0.0851302
24 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH                     0                    1                 -0.2286471   -0.4201504   -0.0371438
24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       BANGLADESH                     0                    1                  0.0976471   -0.3283358    0.5236299
24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA                          0                    1                 -0.0874270   -0.5599250    0.3850710
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.2868241   -0.5383873   -0.0352608
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.1748003   -0.4592043    0.1096036
24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0060869   -0.5451949    0.5573687
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3747334   -0.9819318    0.2324651
24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.5336448   -0.8311877   -0.2361018
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0341485   -0.2452468    0.1769499
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                 -0.4647980   -0.7880847   -0.1415113


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL                          1                    NA                -0.2686993   -0.5374550    0.0000564
Birth       JiVitA-3     BANGLADESH                     1                    NA                -0.0805936   -0.1454573   -0.0157299
Birth       JiVitA-4     BANGLADESH                     1                    NA                 0.0036449   -0.2398897    0.2471796
Birth       MAL-ED       BANGLADESH                     1                    NA                 0.0204793   -0.0191457    0.0601043
Birth       MAL-ED       INDIA                          1                    NA                 0.0172125   -0.0587357    0.0931607
Birth       MAL-ED       NEPAL                          1                    NA                 0.2238667   -0.2877278    0.7354611
Birth       MAL-ED       PERU                           1                    NA                 0.1739881   -0.1404803    0.4884566
Birth       MAL-ED       SOUTH AFRICA                   1                    NA                -0.0060740   -0.0759449    0.0637969
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7357983   -0.7524434    2.2240401
Birth       NIH-Birth    BANGLADESH                     1                    NA                -0.0385781   -0.0695755   -0.0075808
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.0067090   -0.0543657    0.0409477
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.0217875   -0.0438944    0.0003195
6 months    CONTENT      PERU                           1                    NA                 0.0039694   -0.0259147    0.0338535
6 months    GMS-Nepal    NEPAL                          1                    NA                -0.3666427   -0.6799507   -0.0533348
6 months    JiVitA-3     BANGLADESH                     1                    NA                -0.1315157   -0.1914418   -0.0715897
6 months    JiVitA-4     BANGLADESH                     1                    NA                -0.1516710   -0.3186421    0.0153001
6 months    MAL-ED       BANGLADESH                     1                    NA                 0.0041596   -0.0411421    0.0494613
6 months    MAL-ED       INDIA                          1                    NA                 0.0017272   -0.0348432    0.0382976
6 months    MAL-ED       NEPAL                          1                    NA                -0.0669707   -0.1959835    0.0620420
6 months    MAL-ED       PERU                           1                    NA                 0.0492065   -0.1845104    0.2829234
6 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0007983   -0.0340022    0.0355989
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0310279   -0.5473281    0.4852723
6 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0328813   -0.0640946   -0.0016681
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0259857   -0.0702450    0.0182736
6 months    PROVIDE      BANGLADESH                     1                    NA                -0.0435854   -0.0719325   -0.0152383
24 months   CONTENT      PERU                           1                    NA                -0.0346547   -0.0761072    0.0067977
24 months   GMS-Nepal    NEPAL                          1                    NA                -0.2386741   -0.4896279    0.0122797
24 months   JiVitA-3     BANGLADESH                     1                    NA                -0.1689950   -0.2594592   -0.0785308
24 months   JiVitA-4     BANGLADESH                     1                    NA                -0.2138088   -0.3963895   -0.0312282
24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0159845   -0.0170189    0.0489878
24 months   MAL-ED       INDIA                          1                    NA                -0.0071409   -0.0430852    0.0288035
24 months   MAL-ED       NEPAL                          1                    NA                -0.1636948   -0.3133792   -0.0140104
24 months   MAL-ED       PERU                           1                    NA                -0.1333442   -0.3480529    0.0813644
24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0036180   -0.0335609    0.0407969
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3557807   -0.9367063    0.2251449
24 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0647671   -0.1044030   -0.0251312
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0291445   -0.0886127    0.0303236
24 months   PROVIDE      BANGLADESH                     1                    NA                -0.0459505   -0.0745142   -0.0173868

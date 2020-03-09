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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        vagbrth    ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     0       20     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     1        5     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     0      293     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     1       50     368
0-24 months (no birth wast)   IRC              INDIA                          0                     0       55     409
0-24 months (no birth wast)   IRC              INDIA                          0                     1       15     409
0-24 months (no birth wast)   IRC              INDIA                          1                     0      277     409
0-24 months (no birth wast)   IRC              INDIA                          1                     1       62     409
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                     0     1454   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                     1       36   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                     0    24005   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                     1      909   26404
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                     0      358    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                     1       12    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                     0     3933    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                     1      196    4499
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     0      198     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     1        4     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     0      284     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     1       10     496
0-24 months (no birth wast)   PROBIT           BELARUS                        0                     0     1926   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        0                     1       26   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                     0    14749   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                     1      178   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     0      158     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     1        1     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     0      510     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     1       18     687
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      195    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       17    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2039    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      104    2355
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                     0     1110   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                     1       32   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                     0    11940   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                     1      440   13522
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     0       20     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     1        3     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     0      300     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     1       27     350
0-6 months (no birth wast)    IRC              INDIA                          0                     0       55     390
0-6 months (no birth wast)    IRC              INDIA                          0                     1       12     390
0-6 months (no birth wast)    IRC              INDIA                          1                     0      278     390
0-6 months (no birth wast)    IRC              INDIA                          1                     1       45     390
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                     0     1445   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                     1       13   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                     0    24274   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                     1      422   26154
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                     0      356    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                     1        2    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                     0     4003    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                     1       19    4380
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     0      202     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     1        0     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     0      291     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     1        0     493
0-6 months (no birth wast)    PROBIT           BELARUS                        0                     0     1914   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        0                     1       22   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                     0    14587   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                     1      170   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     0      157     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     1        1     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     0      520     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     1        5     683
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      205    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        6    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2100    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    2347
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                     0     1125   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                     1        4   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                     0    12008   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                     1      127   13264
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     0       23     373
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     1        2     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     0      320     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     1       28     373
6-24 months                   IRC              INDIA                          0                     0       66     410
6-24 months                   IRC              INDIA                          0                     1        4     410
6-24 months                   IRC              INDIA                          1                     0      318     410
6-24 months                   IRC              INDIA                          1                     1       22     410
6-24 months                   JiVitA-3         BANGLADESH                     0                     0     1090   17212
6-24 months                   JiVitA-3         BANGLADESH                     0                     1       23   17212
6-24 months                   JiVitA-3         BANGLADESH                     1                     0    15572   17212
6-24 months                   JiVitA-3         BANGLADESH                     1                     1      527   17212
6-24 months                   JiVitA-4         BANGLADESH                     0                     0      359    4510
6-24 months                   JiVitA-4         BANGLADESH                     0                     1       10    4510
6-24 months                   JiVitA-4         BANGLADESH                     1                     0     3952    4510
6-24 months                   JiVitA-4         BANGLADESH                     1                     1      189    4510
6-24 months                   NIH-Crypto       BANGLADESH                     0                     0      190     472
6-24 months                   NIH-Crypto       BANGLADESH                     0                     1        4     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                     0      267     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                     1       11     472
6-24 months                   PROBIT           BELARUS                        0                     0     1915   16598
6-24 months                   PROBIT           BELARUS                        0                     1        4   16598
6-24 months                   PROBIT           BELARUS                        1                     0    14671   16598
6-24 months                   PROBIT           BELARUS                        1                     1        8   16598
6-24 months                   PROVIDE          BANGLADESH                     0                     0      143     615
6-24 months                   PROVIDE          BANGLADESH                     0                     1        0     615
6-24 months                   PROVIDE          BANGLADESH                     1                     0      459     615
6-24 months                   PROVIDE          BANGLADESH                     1                     1       13     615
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      175    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       11    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1738    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       72    1996
6-24 months                   ZVITAMBO         ZIMBABWE                       0                     0      882   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       0                     1       28   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                     0     9490   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                     1      323   10723


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/209921b0-1297-47ee-8bba-da94ec73e773/7ddfa319-ccd1-4341-be5a-3c49da9277b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/209921b0-1297-47ee-8bba-da94ec73e773/7ddfa319-ccd1-4341-be5a-3c49da9277b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/209921b0-1297-47ee-8bba-da94ec73e773/7ddfa319-ccd1-4341-be5a-3c49da9277b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/209921b0-1297-47ee-8bba-da94ec73e773/7ddfa319-ccd1-4341-be5a-3c49da9277b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000   0.0429894   0.3570106
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.1457726   0.1083773   0.1831679
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                0.1863439   0.0907586   0.2819292
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.1810549   0.1398051   0.2223047
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                0.0237413   0.0150422   0.0324404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    NA                0.0364791   0.0337939   0.0391644
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                0.0325549   0.0109208   0.0541891
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    NA                0.0474913   0.0405090   0.0544735
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                0.0133220   0.0069738   0.0196702
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                0.0119228   0.0079875   0.0158580
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0812251   0.0439851   0.1184651
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0484541   0.0393590   0.0575492
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                0.0254298   0.0162257   0.0346339
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.0356689   0.0323977   0.0389400
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                0.1849692   0.0914605   0.2784779
0-6 months (no birth wast)    IRC              INDIA                          1                    NA                0.1396978   0.1017980   0.1775976
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                0.0087718   0.0037349   0.0138087
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    NA                0.0170885   0.0151719   0.0190051
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                0.0114342   0.0057683   0.0171001
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                0.0115123   0.0074952   0.0155295
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0284360   0.0060039   0.0508681
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0168539   0.0113938   0.0223140
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                0.0204855   0.0106376   0.0303334
6-24 months                   JiVitA-3         BANGLADESH                     1                    NA                0.0327367   0.0297211   0.0357523
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                0.0266574   0.0069695   0.0463453
6-24 months                   JiVitA-4         BANGLADESH                     1                    NA                0.0456937   0.0386688   0.0527186
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0561393   0.0236075   0.0886711
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397876   0.0307839   0.0487913
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                0.0293995   0.0185029   0.0402961
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.0329757   0.0294406   0.0365108


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.0357900   0.0332085   0.0383715
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.0462325   0.0396215   0.0528435
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0120860   0.0083142   0.0158578
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0513800   0.0424616   0.0602985
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0349061   0.0318124   0.0379998
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.1461538   0.1110489   0.1812588
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0166323   0.0148114   0.0184531
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0115018   0.0077384   0.0152653
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0178952   0.0125307   0.0232597
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.0319545   0.0290590   0.0348499
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.0441242   0.0374527   0.0507956
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0415832   0.0328230   0.0503433
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0327334   0.0293653   0.0361014


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0                 0.7288630   0.3191248   1.6646817
0-24 months (no birth wast)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA                          1                    0                 0.9716172   0.5544675   1.7026068
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0                 1.5365279   1.0583242   2.2308080
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0                 1.4588043   0.7358134   2.8921872
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0                 0.8949668   0.5505879   1.4547459
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5965412   0.3635529   0.9788434
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0                 1.4026390   0.9656209   2.0374417
0-6 months (no birth wast)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA                          1                    0                 0.7552488   0.4253429   1.3410376
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0                 1.9481132   1.0819525   3.5076817
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0                 1.0068343   0.5927255   1.7102610
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5926966   0.2526208   1.3905792
6-24 months                   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-3         BANGLADESH                     1                    0                 1.5980426   0.9800614   2.6056939
6-24 months                   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-4         BANGLADESH                     1                    0                 1.7141086   0.8073018   3.6394920
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7087299   0.3803918   1.3204755
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0                 1.1216418   0.7626062   1.6497117


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0505435   -0.2009875   0.0999006
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0019202   -0.0844900   0.0883304
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0120488    0.0034877   0.0206098
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.0136776   -0.0073462   0.0347013
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.0012360   -0.0068162   0.0043442
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0298451   -0.0648018   0.0051117
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0094763    0.0005357   0.0184169
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0388154   -0.1227253   0.0450945
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                 0.0078604    0.0027282   0.0129926
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0000676   -0.0053067   0.0054420
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105408   -0.0315527   0.0104710
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.0114690    0.0018536   0.0210844
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.0174668   -0.0016371   0.0365706
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0145561   -0.0451020   0.0159897
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0033339   -0.0071256   0.0137934


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                -0.3381818   -1.8354235    0.3684433
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0101994   -0.5738731    0.3775196
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.3366512    0.0502411    0.5366912
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.2958433   -0.3418034    0.6304700
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.1022659   -0.6832016    0.2781672
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5808688   -1.4213498   -0.0321294
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.2714789   -0.0340981    0.4867576
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.2655790   -0.9896205    0.1949770
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                 0.4726010    0.0668249    0.7019319
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0058807   -0.5897941    0.3783640
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5890318   -2.3006805    0.2349995
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.3589164   -0.0242972    0.5987609
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.3958545   -0.2349822    0.7044559
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3500489   -1.3210800    0.2147483
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1018494   -0.2817323    0.3706373

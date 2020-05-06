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

**Outcome Variable:** dead6plus

## Predictor Variables

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      295     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                         1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         0       39     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         1        0     336  dead6plus        
EE                PAKISTAN                       0                         0       91     374  dead6plus        
EE                PAKISTAN                       0                         1        0     374  dead6plus        
EE                PAKISTAN                       1                         0      279     374  dead6plus        
EE                PAKISTAN                       1                         1        4     374  dead6plus        
GMS-Nepal         NEPAL                          0                         0      398     592  dead6plus        
GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                         0      192     592  dead6plus        
GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                         0     1156    1756  dead6plus        
iLiNS-DOSE        MALAWI                         0                         1       73    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                         0      487    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                         1       40    1756  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         0      810    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         1       15    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         0      310    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         1       13    1148  dead6plus        
JiVitA-3          BANGLADESH                     0                         0    11895   21009  dead6plus        
JiVitA-3          BANGLADESH                     0                         1      121   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                         0     8804   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                         1      189   21009  dead6plus        
JiVitA-4          BANGLADESH                     0                         0     3210    5260  dead6plus        
JiVitA-4          BANGLADESH                     0                         1       20    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                         0     2002    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                         1       28    5260  dead6plus        
Keneba            GAMBIA                         0                         0     1535    2312  dead6plus        
Keneba            GAMBIA                         0                         1       35    2312  dead6plus        
Keneba            GAMBIA                         1                         0      709    2312  dead6plus        
Keneba            GAMBIA                         1                         1       33    2312  dead6plus        
MAL-ED            BANGLADESH                     0                         0      155     240  dead6plus        
MAL-ED            BANGLADESH                     0                         1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                         0       85     240  dead6plus        
MAL-ED            BANGLADESH                     1                         1        0     240  dead6plus        
MAL-ED            INDIA                          0                         0      149     235  dead6plus        
MAL-ED            INDIA                          0                         1        0     235  dead6plus        
MAL-ED            INDIA                          1                         0       86     235  dead6plus        
MAL-ED            INDIA                          1                         1        0     235  dead6plus        
MAL-ED            PERU                           0                         0      149     273  dead6plus        
MAL-ED            PERU                           0                         1        0     273  dead6plus        
MAL-ED            PERU                           1                         0      123     273  dead6plus        
MAL-ED            PERU                           1                         1        1     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         0      155     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         0      106     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      140     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      105     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                         0      455     617  dead6plus        
PROVIDE           BANGLADESH                     0                         1        2     617  dead6plus        
PROVIDE           BANGLADESH                     1                         0      159     617  dead6plus        
PROVIDE           BANGLADESH                     1                         1        1     617  dead6plus        
SAS-CompFeed      INDIA                          0                         0      796    1388  dead6plus        
SAS-CompFeed      INDIA                          0                         1        2    1388  dead6plus        
SAS-CompFeed      INDIA                          1                         0      580    1388  dead6plus        
SAS-CompFeed      INDIA                          1                         1       10    1388  dead6plus        
SAS-FoodSuppl     INDIA                          0                         0      214     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                         1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         0      184     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1651    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      445    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                         0     2094    3605  dead6plus        
VITAMIN-A         INDIA                          0                         1       11    3605  dead6plus        
VITAMIN-A         INDIA                          1                         0     1480    3605  dead6plus        
VITAMIN-A         INDIA                          1                         1       20    3605  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         0     8019   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         1      199   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         0     3260   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         1      216   11694  dead6plus        


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/1f80fc63-23be-4e1c-8a72-e117d30ce3c5/e62b7875-e3ee-4995-8a57-3eaf92131f47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f80fc63-23be-4e1c-8a72-e117d30ce3c5/e62b7875-e3ee-4995-8a57-3eaf92131f47/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f80fc63-23be-4e1c-8a72-e117d30ce3c5/e62b7875-e3ee-4995-8a57-3eaf92131f47/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f80fc63-23be-4e1c-8a72-e117d30ce3c5/e62b7875-e3ee-4995-8a57-3eaf92131f47/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0593979   0.0461793   0.0726164
iLiNS-DOSE     MALAWI       1                    NA                0.0759013   0.0532835   0.0985191
iLiNS-DYAD-M   MALAWI       0                    NA                0.0181818   0.0090608   0.0273029
iLiNS-DYAD-M   MALAWI       1                    NA                0.0402477   0.0188047   0.0616907
JiVitA-3       BANGLADESH   0                    NA                0.0100699   0.0082493   0.0118905
JiVitA-3       BANGLADESH   1                    NA                0.0210163   0.0179890   0.0240437
JiVitA-4       BANGLADESH   0                    NA                0.0061920   0.0030235   0.0093604
JiVitA-4       BANGLADESH   1                    NA                0.0137931   0.0088094   0.0187768
Keneba         GAMBIA       0                    NA                0.0222930   0.0149887   0.0295973
Keneba         GAMBIA       1                    NA                0.0444744   0.0296384   0.0593104
VITAMIN-A      INDIA        0                    NA                0.0052257   0.0021452   0.0083061
VITAMIN-A      INDIA        1                    NA                0.0133333   0.0075281   0.0191385
ZVITAMBO       ZIMBABWE     0                    NA                0.0242151   0.0208916   0.0275387
ZVITAMBO       ZIMBABWE     1                    NA                0.0621404   0.0541147   0.0701661


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0243902   0.0154631   0.0333174
JiVitA-3       BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
JiVitA-4       BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.277846   0.8809606   1.853533
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.213622   1.0648606   4.601657
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.087045   1.6524009   2.636016
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.227586   1.1918037   4.163555
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.994994   1.2498925   3.184275
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.551515   1.2261067   5.309676
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.566180   2.1253870   3.098390


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0049529   -0.0029172   0.0128230
iLiNS-DYAD-M   MALAWI       0                    NA                0.0062084   -0.0003730   0.0127898
JiVitA-3       BANGLADESH   0                    NA                0.0046857    0.0031523   0.0062190
JiVitA-4       BANGLADESH   0                    NA                0.0029335    0.0006494   0.0052176
Keneba         GAMBIA       0                    NA                0.0071188    0.0017948   0.0124427
VITAMIN-A      INDIA        0                    NA                0.0033735    0.0006359   0.0061111
ZVITAMBO       ZIMBABWE     0                    NA                0.0112731    0.0086720   0.0138743


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0769674   -0.0530350   0.1909203
iLiNS-DYAD-M   MALAWI       0                    NA                0.2545455   -0.0479245   0.4697113
JiVitA-3       BANGLADESH   0                    NA                0.3175527    0.2127576   0.4083978
JiVitA-4       BANGLADESH   0                    NA                0.3214654    0.0220677   0.5292014
Keneba         GAMBIA       0                    NA                0.2420382    0.0485358   0.3961874
VITAMIN-A      INDIA        0                    NA                0.3923071    0.0247291   0.6213456
ZVITAMBO       ZIMBABWE     0                    NA                0.3176583    0.2470329   0.3816593

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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
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

agecat                       studyid          country                        vagbrth    ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                     0        3     296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                     1       17     296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                     0       25     296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                     1      251     296
0-24 months (no birth st.)   IRC              INDIA                          0                     0       24     360
0-24 months (no birth st.)   IRC              INDIA                          0                     1       35     360
0-24 months (no birth st.)   IRC              INDIA                          1                     0      123     360
0-24 months (no birth st.)   IRC              INDIA                          1                     1      178     360
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                     0      974   18291
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                     1      196   18291
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                     0    12703   18291
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                     1     4418   18291
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                     0      197    3208
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                     1       90    3208
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                     0     1641    3208
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                     1     1280    3208
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                     0      117     432
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                     1       58     432
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                     0      136     432
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                     1      121     432
0-24 months (no birth st.)   PROBIT           BELARUS                        0                     0     1696   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        0                     1      239   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        1                     0    13048   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        1                     1     1782   16765
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                     0       97     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                     1       46     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                     0      298     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                     1      192     633
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      145    2207
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       47    2207
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1402    2207
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      613    2207
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                     0      707   12502
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                     1      380   12502
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                     0     7435   12502
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                     1     3980   12502
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                     0       12     292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                     1        8     292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                     0      168     292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                     1      104     292
0-6 months (no birth st.)    IRC              INDIA                          0                     0       35     360
0-6 months (no birth st.)    IRC              INDIA                          0                     1       24     360
0-6 months (no birth st.)    IRC              INDIA                          1                     0      201     360
0-6 months (no birth st.)    IRC              INDIA                          1                     1      100     360
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                     0     1091   18284
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                     1       78   18284
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                     0    14814   18284
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                     1     2301   18284
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                     0      260    3200
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                     1       26    3200
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                     0     2627    3200
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                     1      287    3200
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                     0      146     432
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                     1       29     432
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                     0      202     432
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                     1       55     432
0-6 months (no birth st.)    PROBIT           BELARUS                        0                     0     1810   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        0                     1      125   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        1                     0    13923   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        1                     1      905   16763
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                     0      126     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                     1       17     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                     0      406     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                     1       84     633
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      169    2207
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       23    2207
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1733    2207
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      282    2207
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                     0      903   12492
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                     1      183   12492
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                     0     9438   12492
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                     1     1968   12492
6-24 months                  CMC-V-BCS-2002   INDIA                          0                     0        3     185
6-24 months                  CMC-V-BCS-2002   INDIA                          0                     1        9     185
6-24 months                  CMC-V-BCS-2002   INDIA                          1                     0       25     185
6-24 months                  CMC-V-BCS-2002   INDIA                          1                     1      148     185
6-24 months                  IRC              INDIA                          0                     0       24     236
6-24 months                  IRC              INDIA                          0                     1       11     236
6-24 months                  IRC              INDIA                          1                     0      123     236
6-24 months                  IRC              INDIA                          1                     1       78     236
6-24 months                  JiVitA-3         BANGLADESH                     0                     0      690   10428
6-24 months                  JiVitA-3         BANGLADESH                     0                     1      118   10428
6-24 months                  JiVitA-3         BANGLADESH                     1                     0     7489   10428
6-24 months                  JiVitA-3         BANGLADESH                     1                     1     2131   10428
6-24 months                  JiVitA-4         BANGLADESH                     0                     0      195    2893
6-24 months                  JiVitA-4         BANGLADESH                     0                     1       64    2893
6-24 months                  JiVitA-4         BANGLADESH                     1                     0     1635    2893
6-24 months                  JiVitA-4         BANGLADESH                     1                     1      999    2893
6-24 months                  NIH-Crypto       BANGLADESH                     0                     0      108     325
6-24 months                  NIH-Crypto       BANGLADESH                     0                     1       29     325
6-24 months                  NIH-Crypto       BANGLADESH                     1                     0      122     325
6-24 months                  NIH-Crypto       BANGLADESH                     1                     1       66     325
6-24 months                  PROBIT           BELARUS                        0                     0     1666   15467
6-24 months                  PROBIT           BELARUS                        0                     1      114   15467
6-24 months                  PROBIT           BELARUS                        1                     0    12807   15467
6-24 months                  PROBIT           BELARUS                        1                     1      880   15467
6-24 months                  PROVIDE          BANGLADESH                     0                     0       81     456
6-24 months                  PROVIDE          BANGLADESH                     0                     1       29     456
6-24 months                  PROVIDE          BANGLADESH                     1                     0      238     456
6-24 months                  PROVIDE          BANGLADESH                     1                     1      108     456
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      122    1582
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       24    1582
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1105    1582
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      331    1582
6-24 months                  ZVITAMBO         ZIMBABWE                       0                     0      542    8430
6-24 months                  ZVITAMBO         ZIMBABWE                       0                     1      197    8430
6-24 months                  ZVITAMBO         ZIMBABWE                       1                     0     5673    8430
6-24 months                  ZVITAMBO         ZIMBABWE                       1                     1     2018    8430


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/bbc608c7-9de6-42e3-b3f3-4e975dd071f0/c85bd0ae-bd26-43a8-92e8-58206e439bce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bbc608c7-9de6-42e3-b3f3-4e975dd071f0/c85bd0ae-bd26-43a8-92e8-58206e439bce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bbc608c7-9de6-42e3-b3f3-4e975dd071f0/c85bd0ae-bd26-43a8-92e8-58206e439bce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bbc608c7-9de6-42e3-b3f3-4e975dd071f0/c85bd0ae-bd26-43a8-92e8-58206e439bce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                0.6085378   0.4798857   0.7371898
0-24 months (no birth st.)   IRC              INDIA                          1                    NA                0.5883263   0.5327626   0.6438900
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                0.1916635   0.1622989   0.2210280
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    NA                0.2554469   0.2475083   0.2633855
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                0.3593903   0.2714270   0.4473536
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    NA                0.4351794   0.4135376   0.4568213
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                0.3473632   0.2763325   0.4183939
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    NA                0.4594220   0.3996081   0.5192359
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    NA                0.1236143   0.1045578   0.1426708
0-24 months (no birth st.)   PROBIT           BELARUS                        1                    NA                0.1202025   0.1038762   0.1365287
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                0.3469650   0.2682160   0.4257140
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    NA                0.3798986   0.3374529   0.4223443
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2103784   0.1527828   0.2679739
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3061265   0.2860223   0.3262306
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    NA                0.3434185   0.3150670   0.3717699
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                    NA                0.3501993   0.3414681   0.3589305
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                0.4000000   0.1849281   0.6150719
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    NA                0.3823529   0.3245019   0.4402040
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                0.4248167   0.2973525   0.5522809
0-6 months (no birth st.)    IRC              INDIA                          1                    NA                0.3316412   0.2783238   0.3849587
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    NA                0.0816961   0.0606595   0.1027328
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    NA                0.1332103   0.1274321   0.1389886
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                0.1053322   0.0502626   0.1604018
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    NA                0.0980989   0.0851713   0.1110265
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                0.1692348   0.1139435   0.2245261
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    NA                0.2101509   0.1602618   0.2600400
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    NA                0.0629051   0.0487008   0.0771094
0-6 months (no birth st.)    PROBIT           BELARUS                        1                    NA                0.0609529   0.0498872   0.0720186
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                0.1229034   0.0700035   0.1758033
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    NA                0.1725436   0.1392183   0.2058688
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1089572   0.0637970   0.1541173
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1410363   0.1258697   0.1562029
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    NA                0.1586031   0.1364885   0.1807178
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                    NA                0.1739289   0.1669793   0.1808785
6-24 months                  IRC              INDIA                          0                    NA                0.2924035   0.1290169   0.4557900
6-24 months                  IRC              INDIA                          1                    NA                0.3881564   0.3205096   0.4558033
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                0.1567129   0.1224477   0.1909782
6-24 months                  JiVitA-3         BANGLADESH                     1                    NA                0.2192136   0.2094912   0.2289360
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                0.2927421   0.1933668   0.3921173
6-24 months                  JiVitA-4         BANGLADESH                     1                    NA                0.3756528   0.3535036   0.3978021
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                0.2042819   0.1352335   0.2733303
6-24 months                  NIH-Crypto       BANGLADESH                     1                    NA                0.3521135   0.2843243   0.4199028
6-24 months                  PROBIT           BELARUS                        0                    NA                0.0672780   0.0528228   0.0817331
6-24 months                  PROBIT           BELARUS                        1                    NA                0.0643746   0.0520908   0.0766584
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                0.2748062   0.1932665   0.3563459
6-24 months                  PROVIDE          BANGLADESH                     1                    NA                0.3106679   0.2619047   0.3594310
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1510268   0.0911079   0.2109456
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2317993   0.2099901   0.2536084
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    NA                0.2650470   0.2318958   0.2981982
6-24 months                  ZVITAMBO         ZIMBABWE                       1                    NA                0.2634625   0.2536195   0.2733055


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     NA                   NA                0.2522552   0.2445070   0.2600034
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     NA                   NA                0.4270574   0.4065290   0.4475857
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     NA                   NA                0.4143519   0.3678455   0.4608582
0-24 months (no birth st.)   PROBIT           BELARUS                        NA                   NA                0.1205488   0.1047261   0.1363714
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2990485   0.2799429   0.3181541
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3487442   0.3403900   0.3570984
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     NA                   NA                0.1301138   0.1245115   0.1357160
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     NA                   NA                0.0978125   0.0850264   0.1105986
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     NA                   NA                0.1944444   0.1570803   0.2318086
0-6 months (no birth st.)    PROBIT           BELARUS                        NA                   NA                0.0614448   0.0507274   0.0721623
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1381966   0.1237955   0.1525978
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1721902   0.1655693   0.1788111
6-24 months                  IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  JiVitA-3         BANGLADESH                     NA                   NA                0.2156694   0.2063399   0.2249988
6-24 months                  JiVitA-4         BANGLADESH                     NA                   NA                0.3674386   0.3465522   0.3883251
6-24 months                  NIH-Crypto       BANGLADESH                     NA                   NA                0.2923077   0.2427834   0.3418319
6-24 months                  PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months                  PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2243995   0.2038353   0.2449637
6-24 months                  ZVITAMBO         ZIMBABWE                       NA                   NA                0.2627521   0.2533561   0.2721480


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA                          1                    0                 0.9667868   0.7670556   1.218525
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    0                 1.3327887   1.1413083   1.556394
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    0                 1.2108825   0.9434684   1.554092
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    0                 1.3225985   1.0423402   1.678211
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROBIT           BELARUS                        1                    0                 0.9723990   0.8514709   1.110502
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0                 1.0949191   0.8521604   1.406834
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4551234   1.0987303   1.927119
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                    0                 1.0197453   0.9358909   1.111113
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    0                 0.9558824   0.5467942   1.671033
0-6 months (no birth st.)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA                          1                    0                 0.7806690   0.5552231   1.097656
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    0                 1.6305585   1.2585578   2.112514
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    0                 0.9313288   0.5448111   1.592062
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    0                 1.2417709   0.8317581   1.853898
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROBIT           BELARUS                        1                    0                 0.9689661   0.7934196   1.183353
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0                 1.4038960   0.8755359   2.251106
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2944198   0.8441641   1.984831
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                    0                 1.0966293   0.9489348   1.267311
6-24 months                  IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA                          1                    0                 1.3274685   0.7392367   2.383773
6-24 months                  JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3         BANGLADESH                     1                    0                 1.3988226   1.1193056   1.748142
6-24 months                  JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4         BANGLADESH                     1                    0                 1.2832213   0.9088299   1.811843
6-24 months                  NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH                     1                    0                 1.7236649   1.1697301   2.539920
6-24 months                  PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  PROBIT           BELARUS                        1                    0                 0.9568448   0.7628430   1.200184
6-24 months                  PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE          BANGLADESH                     1                    0                 1.1304980   0.8098649   1.578073
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5348222   1.0216364   2.305790
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ZVITAMBO         ZIMBABWE                       1                    0                 0.9940219   0.8726087   1.132328


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.0168711   -0.1347876   0.1010454
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                 0.0605918    0.0316339   0.0895496
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                 0.0676671   -0.0171061   0.1524403
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0669887    0.0115491   0.1224282
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    NA                -0.0030656   -0.0176741   0.0115430
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0290224   -0.0406775   0.0987222
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0886701    0.0331119   0.1442284
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0053257   -0.0217828   0.0324343
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0164384   -0.2239010   0.1910243
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.0803722   -0.1964829   0.0357384
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    NA                 0.0484176    0.0277325   0.0691027
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                -0.0075197   -0.0594981   0.0444587
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                 0.0252096   -0.0191000   0.0695192
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    NA                -0.0014602   -0.0126652   0.0097448
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0366543   -0.0119082   0.0852167
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0292395   -0.0141958   0.0726747
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0135871   -0.0076093   0.0347834
6-24 months                  IRC              INDIA                          0                    NA                 0.0847152   -0.0674583   0.2368886
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                 0.0589564    0.0248710   0.0930419
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                 0.0746966   -0.0220406   0.1714338
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                 0.0880258    0.0315561   0.1444956
6-24 months                  PROBIT           BELARUS                        0                    NA                -0.0030121   -0.0164088   0.0103846
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0256324   -0.0460091   0.0972739
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0733727    0.0154238   0.1313216
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    NA                -0.0022949   -0.0340340   0.0294442


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.0285145   -0.2484318   0.1526632
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                 0.2402002    0.1166978   0.3464346
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                 0.1584496   -0.0659660   0.3356195
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.1616710    0.0159504   0.2858129
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    NA                -0.0254301   -0.1549318   0.0895506
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0771898   -0.1281694   0.2451677
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2965075    0.0841879   0.4596035
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0152712   -0.0656113   0.0900145
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0428571   -0.7517776   0.3791729
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.2333388   -0.6218239   0.0620902
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    NA                 0.3721175    0.1916514   0.5122941
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                -0.0768784   -0.7619998   0.3418460
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                 0.1296494   -0.1296560   0.3294329
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    NA                -0.0237649   -0.2242258   0.1438716
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.2297244   -0.1393868   0.4792597
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2115788   -0.1743127   0.4706623
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0789072   -0.0527884   0.1941287
6-24 months                  IRC              INDIA                          0                    NA                 0.2246379   -0.3065789   0.5398775
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                 0.2733649    0.0979958   0.4146385
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                 0.2032900   -0.1093745   0.4278336
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                 0.3011409    0.0802433   0.4689856
6-24 months                  PROBIT           BELARUS                        0                    NA                -0.0468695   -0.2811965   0.1445997
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0853166   -0.1868342   0.2950610
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3269736    0.0131643   0.5409930
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    NA                -0.0087341   -0.1370574   0.1051072

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
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        vagbrth    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        3     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       17     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       25     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      251     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                     0       24     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                     1       35     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                     0      123     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                     1      178     360
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     0       97     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       46     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      299     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      192     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      117     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       58     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      136     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      121     432
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      145    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       47    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1402    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      613    2207
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                     0     1640   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                     1      294   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                     0    12427   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                     1     2381   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      731   12495
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      356   12495
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     7696   12495
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     3712   12495
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0      979   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      198   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12744   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4463   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      197    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       90    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1641    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1280    3208
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       12     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        8     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      168     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      104     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                     0       35     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                     1       24     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                     0      201     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                     1      100     360
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      126     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     1       17     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      407     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     1       84     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      146     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       29     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      202     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       55     432
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      169    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       23    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1733    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      282    2207
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                     0     1758   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                     1      176   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                     0    13454   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                     1     1352   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      904   12480
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      182   12480
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9442   12480
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1952   12480
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1096   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1       80   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14874   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2327   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      260    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       26    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2627    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      287    3200
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        3     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        9     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       25     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      148     185
6-24 months                  ki1000108-IRC              INDIA                          0                     0       24     236
6-24 months                  ki1000108-IRC              INDIA                          0                     1       11     236
6-24 months                  ki1000108-IRC              INDIA                          1                     0      123     236
6-24 months                  ki1000108-IRC              INDIA                          1                     1       78     236
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     0       81     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     1       29     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     0      239     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     1      108     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      108     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       29     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      122     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       66     325
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      122    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       24    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1105    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      331    1582
6-24 months                  ki1119695-PROBIT           BELARUS                        0                     0     1613   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        0                     1      118   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                     0    12189   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                     1     1031   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      516    7892
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      174    7892
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     5436    7892
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1766    7892
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0      692   10461
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1      118   10461
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0     7501   10461
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2150   10461
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0      195    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1       64    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1635    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1      999    2893


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/960e4bef-c4c8-473c-a044-d1e8cacb1c1c/76728e5a-6901-4c2a-a9e8-8c77b41f3822/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/960e4bef-c4c8-473c-a044-d1e8cacb1c1c/76728e5a-6901-4c2a-a9e8-8c77b41f3822/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/960e4bef-c4c8-473c-a044-d1e8cacb1c1c/76728e5a-6901-4c2a-a9e8-8c77b41f3822/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/960e4bef-c4c8-473c-a044-d1e8cacb1c1c/76728e5a-6901-4c2a-a9e8-8c77b41f3822/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6015471   0.4732293   0.7298650
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5897339   0.5340615   0.6454062
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3670485   0.2862676   0.4478295
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3765597   0.3338126   0.4193068
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3287458   0.2586335   0.3988580
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4726544   0.4121500   0.5331588
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2203224   0.1610354   0.2796094
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3059657   0.2858368   0.3260946
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1500996   0.1277446   0.1724546
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1610792   0.1415375   0.1806209
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3216717   0.2936492   0.3496943
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3270701   0.3184788   0.3356613
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1769307   0.1497121   0.2041494
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2580828   0.2500814   0.2660841
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3133986   0.2363960   0.3904013
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4382890   0.4168453   0.4597327
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4000000   0.1849281   0.6150719
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3823529   0.3245019   0.4402040
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.4097132   0.2806524   0.5387740
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3312309   0.2779904   0.3844714
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1246151   0.0702100   0.1790202
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1683600   0.1351117   0.2016083
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1628640   0.1081057   0.2176224
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2199006   0.1698385   0.2699628
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1113157   0.0655471   0.1570843
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1410232   0.1258354   0.1562109
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0869972   0.0712713   0.1027231
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0913038   0.0775758   0.1050318
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1644702   0.1418317   0.1871088
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1721903   0.1652654   0.1791152
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0701018   0.0517339   0.0884696
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1351734   0.1292816   0.1410651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0893737   0.0335095   0.1452379
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0985726   0.0856003   0.1115449
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.2805454   0.1153147   0.4457761
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3860301   0.3183958   0.4536643
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2752010   0.1933816   0.3570203
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3079126   0.2593085   0.3565167
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2006519   0.1319729   0.2693310
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3529153   0.2853471   0.4204835
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1512972   0.0917333   0.2108612
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2317127   0.2099034   0.2535221
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0703182   0.0548725   0.0857639
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0782128   0.0635814   0.0928443
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2489681   0.2154645   0.2824718
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2461898   0.2362286   0.2561511
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1441475   0.1155935   0.1727015
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2214366   0.2117464   0.2311268
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2476133   0.1730438   0.3221827
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3792600   0.3572343   0.4012858


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4143519   0.3678455   0.4608582
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2990485   0.2799429   0.3181541
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3255702   0.3173537   0.3337868
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2535357   0.2457345   0.2613369
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4270574   0.4065290   0.4475857
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1944444   0.1570803   0.2318086
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1381966   0.1237955   0.1525978
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1709936   0.1643878   0.1775994
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1309789   0.1253283   0.1366296
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0978125   0.0850264   0.1105986
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2923077   0.2427834   0.3418319
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2243995   0.2038353   0.2449637
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2458186   0.2363185   0.2553186
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2168053   0.2074791   0.2261314
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3674386   0.3465522   0.3883251


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.9803619   0.7764447   1.237834
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0259125   0.8027011   1.311194
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4377506   1.1238276   1.839363
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3887183   1.0537689   1.830134
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 1.0731488   0.9513088   1.210594
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0167820   0.9287455   1.113164
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4586656   1.2490080   1.703516
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3985032   1.0890356   1.795911
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9558824   0.5467942   1.671033
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.8084457   0.5674587   1.151774
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3510400   0.8372280   2.180182
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3502098   0.9015408   2.022168
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2668757   0.8289807   1.936081
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 1.0495024   0.8802237   1.251336
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0469393   0.9073573   1.207994
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9282453   1.4808588   2.510793
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1029265   0.5831430   2.086018
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.3759987   0.7444333   2.543374
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1188646   0.8013150   1.562255
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7588433   1.1901204   2.599342
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5315066   1.0221614   2.294659
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.1122706   0.9099600   1.359561
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9888409   0.8593620   1.137828
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5361801   1.2549895   1.880374
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5316628   1.1270531   2.081526


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0098805   -0.1274966   0.1077357
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0083458   -0.0635414   0.0802330
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0856061    0.0304514   0.1407608
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0787261    0.0215218   0.1359304
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0096782   -0.0068029   0.0261593
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0038985   -0.0229060   0.0307029
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0766049    0.0499113   0.1032985
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1136587    0.0403399   0.1869775
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0164384   -0.2239010   0.1910243
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0652688   -0.1829894   0.0524519
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0346909   -0.0148897   0.0842715
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0315804   -0.0123531   0.0755139
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0268809   -0.0171812   0.0709431
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0042812   -0.0094084   0.0179707
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0065234   -0.0151700   0.0282168
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0608772    0.0427042   0.0790502
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0084388   -0.0438654   0.0607430
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0965733   -0.0571800   0.2503266
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0245802   -0.0472581   0.0964185
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0916558    0.0352015   0.1481101
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0731023    0.0155262   0.1306783
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0065329   -0.0066295   0.0196953
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0031496   -0.0352341   0.0289349
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0726577    0.0442743   0.1010411
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1198254    0.0482183   0.1914324


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0166994   -0.2362515   0.1638614
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0222321   -0.1892882   0.1961325
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2066024    0.0608326   0.3297470
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2632553    0.0451010   0.4315706
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0605730   -0.0470403   0.1571259
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0119743   -0.0738841   0.0909682
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3021466    0.1888721   0.3996022
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2661439    0.0714056   0.4200431
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0428571   -0.7517776   0.3791729
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.1894900   -0.5856548   0.1076958
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2177627   -0.1617211   0.4732856
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1624136   -0.0956811   0.3597124
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1945123   -0.1963197   0.4576613
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0469022   -0.1132166   0.1839904
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0381499   -0.0974636   0.1570056
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4647861    0.3076591   0.5862530
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0862754   -0.6440708   0.4921796
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.2560819   -0.2899588   0.5709831
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0819939   -0.1916063   0.2927737
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3135593    0.0924611   0.4807926
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3257684    0.0145046   0.5387210
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0850070   -0.0975440   0.2371949
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0128126   -0.1521154   0.1096471
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3351290    0.1920359   0.4528799
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3261099    0.0989759   0.4959870

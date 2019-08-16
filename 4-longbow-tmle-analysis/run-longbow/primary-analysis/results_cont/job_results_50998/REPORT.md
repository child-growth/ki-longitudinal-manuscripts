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

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              216     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               18     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1              172     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2     174
Birth       ki0047075b-MAL-ED          INDIA                          1              181     191
Birth       ki0047075b-MAL-ED          INDIA                          0               10     191
Birth       ki0047075b-MAL-ED          NEPAL                          1               66     164
Birth       ki0047075b-MAL-ED          NEPAL                          0               98     164
Birth       ki0047075b-MAL-ED          PERU                           1               56     259
Birth       ki0047075b-MAL-ED          PERU                           0              203     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              197     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               21     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                8     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              109     117
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      71
Birth       ki1000108-IRC              INDIA                          1              287     287
Birth       ki1000108-IRC              INDIA                          0                0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                6      27
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1076   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            18487   19563
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               71     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              751     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              221     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               19     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                2     209
6 months    ki0047075b-MAL-ED          INDIA                          1              220     235
6 months    ki0047075b-MAL-ED          INDIA                          0               15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              103     229
6 months    ki0047075b-MAL-ED          NEPAL                          0              126     229
6 months    ki0047075b-MAL-ED          PERU                           1               58     270
6 months    ki0047075b-MAL-ED          PERU                           0              212     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              229     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              231     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              257     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0     257
6 months    ki1000108-IRC              INDIA                          1              303     303
6 months    ki1000108-IRC              INDIA                          0                0     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               44     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1465   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15308   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4234    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               17     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              167     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                2     169
24 months   ki0047075b-MAL-ED          INDIA                          1              212     227
24 months   ki0047075b-MAL-ED          INDIA                          0               15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               98     221
24 months   ki0047075b-MAL-ED          NEPAL                          0              123     221
24 months   ki0047075b-MAL-ED          PERU                           1               49     201
24 months   ki0047075b-MAL-ED          PERU                           0              152     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              200     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              260     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0     260
24 months   ki1000108-IRC              INDIA                          1              305     305
24 months   ki1000108-IRC              INDIA                          0                0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              377     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               45     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0              313     385
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              674    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7935    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              566    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4180    4746


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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
![](/tmp/bb4e2f96-54d0-4b1d-bf9d-cd6650116431/2c58aca4-1a79-42b8-b0ca-471f8c476226/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bb4e2f96-54d0-4b1d-bf9d-cd6650116431/2c58aca4-1a79-42b8-b0ca-471f8c476226/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bb4e2f96-54d0-4b1d-bf9d-cd6650116431/2c58aca4-1a79-42b8-b0ca-471f8c476226/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.0363610   -1.1695847   -0.9031373
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.8745301   -1.3532242   -0.3958360
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -1.0023961   -1.1538050   -0.8509871
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.4340348   -1.7854219   -1.0826476
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.6801693   -0.9770805   -0.3832580
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.7211169   -0.9133981   -0.5288357
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -1.1084469   -1.4248725   -0.7920213
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.8909300   -1.0119694   -0.7698906
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.6899052   -0.8313300   -0.5484804
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -0.7062968   -1.1331052   -0.2794884
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2525000   -2.6166240    0.1116240
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.8502752   -1.0483341   -0.6522163
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.0457143   -1.4785067   -0.6129219
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3350000   -2.2736100   -0.3963900
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.4259716   -1.4971170   -1.3548263
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.5773516   -1.5975331   -1.5571701
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.3084019   -1.5970111   -1.0197928
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.5032087   -1.5914632   -1.4149542
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.2054768   -1.3246994   -1.0862543
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.3019493   -1.8616559   -0.7422427
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -1.2193536   -1.3408113   -1.0978959
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -1.1180578   -1.6500616   -0.5860541
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.4846164   -0.6632615   -0.3059712
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.5906914   -0.7397672   -0.4416155
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -1.4337856   -1.7054911   -1.1620801
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                -1.3078800   -1.4281952   -1.1875647
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.0540645   -1.1906790   -0.9174500
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.0905922   -1.5102819   -0.6709025
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1888924   -1.8500990   -0.5276857
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3746011   -1.5011466   -1.2480556
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -1.3613377   -1.4549276   -1.2677479
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.7746944   -2.0293078   -1.5200810
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.0408763   -1.1176624   -0.9640902
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.5235701   -1.8628757   -1.1842644
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.1970433   -1.2783468   -1.1157398
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.2439500   -1.4044750   -1.0834249
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1284174   -1.3425904   -0.9142444
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.3308591   -1.4328315   -1.2288866
6 months    ki1114097-CONTENT       PERU                           1                    NA                -0.3143684   -0.4957288   -0.1330079
6 months    ki1114097-CONTENT       PERU                           0                    NA                -0.2609390   -0.8773699    0.3554919
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.0515086   -1.1234886   -0.9795286
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3313329   -1.3550795   -1.3075862
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.0924319   -1.2481467   -0.9367172
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.3810315   -1.4206852   -1.3413777
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.9516456   -2.0845181   -1.8187731
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.7719623   -2.1869252   -1.3569994
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -1.8396210   -1.9685578   -1.7106842
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.9829268   -2.4368766   -1.5289770
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.0655323   -1.2661344   -0.8649303
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -1.3975804   -1.5513038   -1.2438570
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -1.6344852   -1.8785898   -1.3903807
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                -1.7851966   -1.9186549   -1.6517384
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -1.6273496   -1.7687286   -1.4859706
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                -1.5962531   -2.0995703   -1.0929359
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3397018   -2.9012142   -1.7781893
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6225965   -2.7627312   -2.4824618
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -2.1145979   -2.2224915   -2.0067043
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -2.7151330   -2.9908480   -2.4394181
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.5424962   -1.6275958   -1.4573967
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -2.0765069   -2.3871416   -1.7658722
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.4209884   -1.5230194   -1.3189574
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.4683186   -1.6202232   -1.3164139
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.7281516   -1.9349997   -1.5213035
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.8538280   -1.9614953   -1.7461606
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.6712639   -0.8487685   -0.4937593
24 months   ki1114097-CONTENT       PERU                           0                    NA                -1.4304698   -2.0558434   -0.8050962
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.7436861   -1.8568716   -1.6305006
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -2.0337983   -2.0624832   -2.0051134
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.5182618   -1.6732278   -1.3632958
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.7868490   -1.8242966   -1.7494014


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.0069634   -1.1525107   -0.8614160
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.6988415   -0.8600838   -0.5375991
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.9447876   -1.0604945   -0.8290808
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.6917890   -0.8248091   -0.5587689
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.8777778   -1.0853531   -0.6702024
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.5749762   -1.5947643   -1.5551882
Birth       kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.2159433   -1.3345235   -1.0973630
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.5534934   -0.6683107   -0.4386762
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -1.3280247   -1.4371552   -1.2188942
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.0548494   -1.1845497   -0.9251491
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3613469   -1.4843950   -1.2382988
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.4060639   -1.4948910   -1.3172368
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.3005896   -1.3898487   -1.2113304
6 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.3134597   -1.3365976   -1.2903219
6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.3440174   -1.3812821   -1.3067527
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -1.2618778   -1.3846215   -1.1391341
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6031840   -2.7387629   -2.4676050
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -2.1856460   -2.2886758   -2.0826161
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.8384978   -1.9325778   -1.7444179
24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -2.0124544   -2.0401076   -1.9848012
24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.7579225   -1.7933649   -1.7224800


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1618309   -0.3353540    0.6590158
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                 -0.4316387   -0.8169967   -0.0462807
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0409476   -0.3954819    0.3135867
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.2175169   -0.1208714    0.5559051
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0163916   -0.4664916    0.4337083
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.4022248   -0.9762024    1.7806520
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.2892857   -1.3228707    0.7442993
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1513800   -0.2242830   -0.0784770
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1948068   -0.4969705    0.1073570
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0964724   -0.6687817    0.4758368
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.1012958   -0.4442930    0.6468845
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1060750   -0.3398101    0.1276601
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.1259057   -0.1718699    0.4236813
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0365277   -0.4784129    0.4053574
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1857087   -0.8591431    0.4877257
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.4133567   -0.6837435   -0.1429699
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.4826937   -0.8309667   -0.1344207
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0469066   -0.2259393    0.1321260
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.2024417   -0.4414142    0.0365309
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.0534294   -0.5904727    0.6973314
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.2798243   -0.3542561   -0.2053925
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2885996   -0.4462132   -0.1309860
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1796833   -0.2565273    0.6158940
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.1433058   -0.6162606    0.3296490
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.3320481   -0.5863620   -0.0777342
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1507114   -0.4280318    0.1266090
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0310965   -0.4929276    0.5551206
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2828947   -0.8621612    0.2963717
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.6005351   -0.8952471   -0.3058231
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5340106   -0.8553723   -0.2126489
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0473302   -0.2299900    0.1353297
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.1256764   -0.3586866    0.1073339
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                 -0.7592058   -1.4097348   -0.1086768
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.2901122   -0.4066463   -0.1735781
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.2685872   -0.4262125   -0.1109620


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0134123   -0.0237762    0.0506008
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0045673   -0.0305451    0.0214106
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0186722   -0.2366302    0.1992858
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.1636592   -0.1093315    0.4366500
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0018838   -0.0414443    0.0376767
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3747222   -0.9095864    1.6590309
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0642857   -0.2985773    0.1700058
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1490046   -0.2191125   -0.0788967
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.1892623   -0.4686008    0.0900762
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0021088   -0.0420800    0.0462975
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0034104   -0.0326667    0.0394875
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0688771   -0.1996406    0.0618864
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.1057609   -0.1319544    0.3434763
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0007849   -0.0355177    0.0339479
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1724546   -0.8171566    0.4722474
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0447261   -0.0751850   -0.0142673
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0462277   -0.0753728   -0.0170826
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0016350   -0.0444458    0.0411759
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1721722   -0.3726637    0.0283194
6 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0004467   -0.0363064    0.0371997
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2619511   -0.3330276   -0.1908746
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2515855   -0.3986567   -0.1045142
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0085324   -0.0245590    0.0416238
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0061940   -0.0427368    0.0303489
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.1963455   -0.3457295   -0.0469615
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.1156143   -0.3241645    0.0929359
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0045135   -0.0337679    0.0427948
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2634822   -0.8155864    0.2886220
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0710481   -0.1101999   -0.0318963
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0436216   -0.0712573   -0.0159860
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0085447   -0.0667186    0.0496292
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.1103462   -0.3068710    0.0861786
24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0249556   -0.0654897    0.0155785
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.2687683   -0.3809487   -0.1565879
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2396607   -0.3874950   -0.0918263

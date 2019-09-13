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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              205     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               17     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1              165     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2     167
Birth       ki0047075b-MAL-ED          INDIA                          1              178     188
Birth       ki0047075b-MAL-ED          INDIA                          0               10     188
Birth       ki0047075b-MAL-ED          NEPAL                          1               64     159
Birth       ki0047075b-MAL-ED          NEPAL                          0               95     159
Birth       ki0047075b-MAL-ED          PERU                           1               54     252
Birth       ki0047075b-MAL-ED          PERU                           0              198     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              196     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               20     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               71      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      71
Birth       ki1000108-IRC              INDIA                          1              253     253
Birth       ki1000108-IRC              INDIA                          0                0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                5      23
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              925   15666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            14741   15666
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               58     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              625     683
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
6 months    ki1000108-IRC              INDIA                          1              304     304
6 months    ki1000108-IRC              INDIA                          0                0     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              476     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              539     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               43     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1463   16746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15283   16746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              590    4826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             4236    4826
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              376     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               50     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              532     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0              312     384
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              672    8580
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7908    8580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              565    4729
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             4164    4729


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
![](/tmp/ac51c969-face-447b-a609-238c7e757633/4278e8ce-7ac2-4d12-b628-328efda08a42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ac51c969-face-447b-a609-238c7e757633/4278e8ce-7ac2-4d12-b628-328efda08a42/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ac51c969-face-447b-a609-238c7e757633/4278e8ce-7ac2-4d12-b628-328efda08a42/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -1.0052101   -1.1556887   -0.8547316
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.8022203   -1.0483869   -0.5560537
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -1.0427833   -1.1834230   -0.9021436
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.7534751   -2.6323286   -0.8746215
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.0644147   -1.3305291   -0.7983003
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.8343519   -1.0158285   -0.6528753
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.2488225   -0.5312838    0.0336388
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                 0.0027841   -0.1233701    0.1289383
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0282662   -0.1941834    0.1376510
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.2968161   -0.1455650    0.7391972
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5485714   -0.4383071    1.5354500
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.8251887    0.6170513    1.0333260
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.8305556   -1.3428871   -0.3182240
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.4640000   -1.6852927    0.7572927
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.6345912   -0.7189101   -0.5502722
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.7285314   -0.7492189   -0.7078438
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.3931088   -0.6953852   -0.0908323
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.3704378   -0.4557107   -0.2851649
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.1200126   -0.2544233    0.0143981
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.3293290   -0.8332010    0.1745431
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.7061161   -0.8388752   -0.5733570
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.6706825   -1.2526334   -0.0887315
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1158359   -0.0908305    0.3225022
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.1414758   -0.0424955    0.3254472
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0891588    0.8029321    1.3753856
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 1.0507570    0.9143936    1.1871204
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.5380548    0.3748275    0.7012820
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.5540232    0.1398571    0.9681892
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2288732   -0.4312215    0.8889680
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5342831    0.4008700    0.6676962
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.4011684   -0.4961828   -0.3061539
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.7054610   -0.9643267   -0.4465953
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1843889   -0.2725146   -0.0962632
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.4835794   -0.7817414   -0.1854175
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0533574   -0.0381477    0.1448626
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.0238182   -0.1832222    0.1355858
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.5509449   -0.8035601   -0.2983298
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.6410934   -0.7488878   -0.5332990
6 months    ki1114097-CONTENT       PERU                           1                    NA                 1.0476666    0.9267715    1.1685618
6 months    ki1114097-CONTENT       PERU                           0                    NA                 1.3631310    0.8750611    1.8512008
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.5337952   -0.6213599   -0.4462305
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.5947191   -0.6158922   -0.5735461
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2331751   -0.3748547   -0.0914956
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.4061430   -0.4520850   -0.3602010
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.8116877   -0.9382269   -0.6851486
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.7980482   -1.3030642   -0.2930321
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.9377035   -1.0579854   -0.8174217
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.2092032   -1.7357269   -0.6826794
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2423081   -0.4248281   -0.0597882
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.3930064   -0.5445475   -0.2414653
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.1983621   -0.0613104    0.4580345
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0916462   -0.0430551    0.2263474
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.4238497    0.2966803    0.5510191
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.4849800    0.1655403    0.8044198
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0106779   -0.4579764    0.4366206
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0477289   -0.0814747    0.1769324
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8898951   -0.9952009   -0.7845893
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.0743439   -1.3311885   -0.8174994
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8662349   -0.9522095   -0.7802603
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2418182   -1.5524199   -0.9312165
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.6289423   -0.7447944   -0.5130902
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.5682191   -0.7335338   -0.4029044
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1968638   -1.4620252   -0.9317023
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1672637   -1.2815087   -1.0530187
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.5477007    0.4059083    0.6894931
24 months   ki1114097-CONTENT       PERU                           0                    NA                 0.7683859    0.1689413    1.3678305
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.1924014   -1.3008177   -1.0839852
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3018817   -1.3255873   -1.2781762
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1544882   -1.2772725   -1.0317038
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.2333602   -1.2701035   -1.1966169


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.9364780   -1.0810831   -0.7918728
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0384921   -0.1542085    0.0772244
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0073148   -0.1632037    0.1485740
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.8080531    0.6030895    1.0130167
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.7235197   -0.7433637   -0.7036757
Birth       kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7056667   -0.8312524   -0.5800810
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1286317   -0.0051407    0.2624042
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0527407    0.9299728    1.1755087
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5403280    0.3866002    0.6940558
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5162517    0.3853881    0.6471153
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4362094   -0.5254855   -0.3469333
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.6267309   -0.7246812   -0.5287807
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.5926720   -0.6122891   -0.5730549
6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.3901347   -0.4273932   -0.3528762
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3487330   -0.4631704   -0.2342957
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0429953   -0.0825155    0.1685060
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.1914974   -1.2943015   -1.0886933
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.2970420   -1.3203145   -1.2737694
24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.2232311   -1.2550891   -1.1913732


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.2029898   -0.0858625    0.4918422
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                 -0.7106918   -1.6015785    0.1801950
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.2300628   -0.0921863    0.5523119
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.2516066   -0.0583109    0.5615241
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.3250823   -0.1474858    0.7976505
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2766173   -0.7319711    1.2852056
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.3665556   -0.9578460    1.6909571
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0939402   -0.1793301   -0.0085503
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                  0.0226710   -0.2936449    0.3389868
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.2093164   -0.7323691    0.3137364
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.0354336   -0.5618156    0.6326828
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0256400   -0.2516141    0.3028940
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.0384018   -0.3555066    0.2787030
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0159684   -0.4297216    0.4616584
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.3054099   -0.3683466    0.9791664
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.3042926   -0.5802593   -0.0283260
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.2991905   -0.6098038    0.0114227
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0771757   -0.2611041    0.1067528
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0901484   -0.3647240    0.1844272
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.3154643   -0.1881605    0.8190891
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0609239   -0.1513838    0.0295360
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1729679   -0.3240059   -0.0219298
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0136396   -0.5075067    0.5347859
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.2714996   -0.8121537    0.2691544
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1506982   -0.3888098    0.0874134
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.1067159   -0.3990772    0.1856455
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0611303   -0.2829470    0.4052077
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0584068   -0.4074706    0.5242842
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1844488   -0.4621540    0.0932563
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3755832   -0.6978453   -0.0533212
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0607232   -0.1405343    0.2619808
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0296001   -0.2594435    0.3186436
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                  0.2206852   -0.3951921    0.8365625
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.1094803   -0.2187302   -0.0002303
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0788720   -0.2060117    0.0482677


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0149849   -0.0091401    0.0391100
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0108869   -0.0634702    0.0416963
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1279367   -0.0768735    0.3327470
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.2103304   -0.0394469    0.4601078
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0209514   -0.0231763    0.0650791
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2594817   -0.6867083    1.2056717
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0796860   -0.2150777    0.3744497
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0889286   -0.1707718   -0.0070854
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                 0.0247925   -0.2682036    0.3177886
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0154492   -0.0561328    0.0252344
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0004494   -0.0289405    0.0298393
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0127959   -0.1464508    0.1720426
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0364181   -0.2869163    0.2140802
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0022732   -0.0332083    0.0377548
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2873785   -0.3523998    0.9271568
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0350411   -0.0649465   -0.0051356
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0239817   -0.0470021   -0.0009612
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0235952   -0.0688356    0.0216451
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0757860   -0.3055486    0.1539767
6 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0207651   -0.0111842    0.0527145
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0588768   -0.1453875    0.0276340
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.1569596   -0.2946493   -0.0192698
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0091377   -0.0475574    0.0292819
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0145872   -0.0463436    0.0171691
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.1064249   -0.2461332    0.0332834
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0784616   -0.3018066    0.1448835
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0028520   -0.0199894    0.0256934
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0536732   -0.3904804    0.4978268
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0207759   -0.0552649    0.0137131
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0217063   -0.0466741    0.0032616
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0185921   -0.0478044    0.0849886
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0053664   -0.2390997    0.2498324
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0191286   -0.0131949    0.0514520
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.1046405   -0.2093865    0.0001055
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0687430   -0.1868954    0.0494095

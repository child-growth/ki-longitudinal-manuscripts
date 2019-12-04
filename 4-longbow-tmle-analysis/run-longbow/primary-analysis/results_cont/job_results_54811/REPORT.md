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

agecat      studyid                    country                        predexfd6    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                72     205  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               133     205  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 6      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                54      60  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      39  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                35      39  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      24  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      24  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                73     213  haz              
Birth       ki0047075b-MAL-ED          PERU                           0               140     213  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      91  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      91  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7  haz              
Birth       ki1000108-IRC              INDIA                          1                 0      14  haz              
Birth       ki1000108-IRC              INDIA                          0                14      14  haz              
Birth       ki1000109-EE               PAKISTAN                       1                38      42  haz              
Birth       ki1000109-EE               PAKISTAN                       0                 4      42  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               159     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               380     539  haz              
Birth       ki1101329-Keneba           GAMBIA                         1               485    1403  haz              
Birth       ki1101329-Keneba           GAMBIA                         0               918    1403  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10466   13423  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2957   13423  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2103    2632  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               529    2632  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                92     271  haz              
6 months    ki0047075b-MAL-ED          PERU                           0               179     271  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
6 months    ki1000108-IRC              INDIA                          1                 0      14  haz              
6 months    ki1000108-IRC              INDIA                          0                14      14  haz              
6 months    ki1000109-EE               PAKISTAN                       1                43      48  haz              
6 months    ki1000109-EE               PAKISTAN                       0                 5      48  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               463     604  haz              
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908  haz              
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7644    9901  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9901  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3328    4272  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               944    4272  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                68     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           0               133     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
24 months   ki1000108-IRC              INDIA                          1                 0      14  haz              
24 months   ki1000108-IRC              INDIA                          0                14      14  haz              
24 months   ki1000109-EE               PAKISTAN                       1                20      23  haz              
24 months   ki1000109-EE               PAKISTAN                       0                 3      23  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               441     578  haz              
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513  haz              
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3926    5088  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1162    5088  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3292    4199  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               907    4199  haz              


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0d4d6462-89b3-4fe2-aef0-6d8267b06530/ec7c0a64-b778-4359-a9b8-549daaee367a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0d4d6462-89b3-4fe2-aef0-6d8267b06530/ec7c0a64-b778-4359-a9b8-549daaee367a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0d4d6462-89b3-4fe2-aef0-6d8267b06530/ec7c0a64-b778-4359-a9b8-549daaee367a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.0254522   -1.2511631   -0.7997413
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0561803   -1.2353379   -0.8770228
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.8806956   -1.0426517   -0.7187396
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.9179541   -1.0644606   -0.7714476
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.9167975   -1.0384144   -0.7951806
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.8721206   -0.9588060   -0.7854353
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0053732   -0.1116550    0.1009085
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0263032   -0.0524682    0.1050747
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0514698   -1.1486555   -0.9542841
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.0890930   -1.2634383   -0.9147477
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5948124   -1.6196041   -1.5700208
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.5984238   -1.6377068   -1.5591409
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.5090609   -1.5613717   -1.4567501
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.5942252   -1.7217593   -1.4666911
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1122668   -1.2983591   -0.9261744
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.2358719   -1.3925244   -1.0792193
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2008100   -0.2495739    0.6511938
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0344076   -0.1160045    0.1848196
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -1.9289400   -2.7117216   -1.1461585
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -1.1927246   -1.3137337   -1.0717155
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.5196406   -1.0918487    0.0525675
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5571452   -0.6754578   -0.4388326
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.2241524   -1.3998407   -1.0484642
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.3545675   -1.4923557   -1.2167792
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.1029500   -1.2387002   -0.9671997
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0930412   -1.1810108   -1.0050716
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8965261   -0.9863740   -0.8066783
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9480114   -1.0071358   -0.8888870
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.3078298   -1.3966509   -1.2190086
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.4819035   -1.6497187   -1.3140883
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.7149942   -1.9966387   -1.4333497
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6229426   -1.7548544   -1.4910308
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3084363   -1.3388725   -1.2780002
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.3332539   -1.3825594   -1.2839484
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3083159   -1.3492760   -1.2673557
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.4872775   -1.5763267   -1.3982282
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -2.0007550   -2.2370832   -1.7644267
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9170991   -2.0646194   -1.7695789
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0562551   -0.5091302    0.3966200
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0161764   -0.1677058    0.2000587
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -2.5688710   -3.1315736   -2.0061684
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -1.8494960   -1.9811780   -1.7178141
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -1.7062757   -2.3735552   -1.0389961
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.3038073   -1.4294132   -1.1782014
24 months   ki0047075b-MAL-ED         PERU         1                    NA                -1.7946625   -1.9979017   -1.5914233
24 months   ki0047075b-MAL-ED         PERU         0                    NA                -1.7347966   -1.8862066   -1.5833867
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.7027143   -1.8593148   -1.5461138
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5709840   -1.6667845   -1.4751835
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5037165   -1.5857116   -1.4217213
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6231135   -1.6880452   -1.5581818
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.9095076   -2.0047541   -1.8142611
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8957536   -2.0870660   -1.7044413
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.0549737   -2.3819106   -1.7280367
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9485124   -2.1064428   -1.7905820
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0030680   -2.0429858   -1.9631502
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0455385   -2.1156530   -1.9754240
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7764441   -1.8183804   -1.7345077
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8448316   -1.9238621   -1.7658012


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0307281   -0.3192984    0.2578421
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.0372585   -0.2250161    0.1504990
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0446769   -0.0887547    0.1781084
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.0316765   -0.0902262    0.1535791
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0376232   -0.2293694    0.1541231
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0036114   -0.0444056    0.0371828
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0851643   -0.2222279    0.0518992
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.1236051   -0.3671365    0.1199263
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1664024   -0.6414840    0.3086792
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.7362154   -0.0545920    1.5270228
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0375046   -0.6220508    0.5470416
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.1304150   -0.3546503    0.0938203
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0099088   -0.1518892    0.1717068
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0514852   -0.1587108    0.0557404
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1740738   -0.3629536    0.0148061
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0920517   -0.2145926    0.3986959
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0248176   -0.0772125    0.0275774
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1789616   -0.2755499   -0.0823733
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0836558   -0.1958600    0.3631716
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0724315   -0.4170364    0.5618994
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.7193749    0.1410921    1.2976578
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                  0.4024684   -0.2765431    1.0814798
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.0598659   -0.1917886    0.3115204
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1317303   -0.0487549    0.3122155
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1193970   -0.2201180   -0.0186760
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0137539   -0.1979634    0.2254712
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1064613   -0.2565052    0.4694277
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0424705   -0.1195412    0.0346002
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0683876   -0.1534223    0.0166472


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0275722   -0.2182700    0.1631256
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.0258772   -0.1505720    0.0988176
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0316955   -0.0666585    0.1300495
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0180176   -0.0615368    0.0975719
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0126510   -0.0618778    0.0365758
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0007213   -0.0097124    0.0082697
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0182530   -0.0467623    0.0102564
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0778126   -0.2332977    0.0776725
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1532342   -0.5604662    0.2539978
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.7101098   -0.0414141    1.4616337
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0425964   -0.5993156    0.5141228
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0978802   -0.2462308    0.0504705
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0112585   -0.1129396    0.1354566
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0365847   -0.1114272    0.0382578
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0461983   -0.0951853    0.0027887
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0753987   -0.1799131    0.3307104
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0053895   -0.0173340    0.0065549
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0399145   -0.0613520   -0.0184769
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0431208   -0.1337189    0.2199605
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0623695   -0.3585703    0.4833094
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.6825313    0.1346644    1.2303981
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                 0.3875085   -0.2637444    1.0387615
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0421915   -0.1255193    0.2099023
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.1002922   -0.0375482    0.2381326
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0839129   -0.1509256   -0.0169001
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0092948   -0.0423831    0.0609727
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0898414   -0.2139067    0.3935895
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0087323   -0.0262732    0.0088086
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0150325   -0.0329883    0.0029233

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

**Outcome Variable:** swasted

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
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       10      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       75      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1      86
Birth       ki1000108-IRC              INDIA                          0                0       52     343
Birth       ki1000108-IRC              INDIA                          0                1       14     343
Birth       ki1000108-IRC              INDIA                          1                0      237     343
Birth       ki1000108-IRC              INDIA                          1                1       40     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                0      104     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                1        4     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                0      415     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                1        9     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0      179     465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        5     465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0      257     465
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1       24     465
Birth       ki1119695-PROBIT           BELARUS                        0                0     1502   13830
Birth       ki1119695-PROBIT           BELARUS                        0                1       91   13830
Birth       ki1119695-PROBIT           BELARUS                        1                0    11422   13830
Birth       ki1119695-PROBIT           BELARUS                        1                1      815   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1016   12814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       84   12814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11011   12814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      703   12814
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0      483   17985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1       17   17985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    17154   17985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      331   17985
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0       70    2395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        1    2395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     2294    2395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       30    2395
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      331     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       12     368
6 months    ki1000108-IRC              INDIA                          0                0       64     408
6 months    ki1000108-IRC              INDIA                          0                1        4     408
6 months    ki1000108-IRC              INDIA                          1                0      322     408
6 months    ki1000108-IRC              INDIA                          1                1       18     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      139     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      459     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      270     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      187    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1805    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2004
6 months    ki1119695-PROBIT           BELARUS                        0                0     1794   15758
6 months    ki1119695-PROBIT           BELARUS                        0                1        4   15758
6 months    ki1119695-PROBIT           BELARUS                        1                0    13948   15758
6 months    ki1119695-PROBIT           BELARUS                        1                1       12   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      716    8437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1        5    8437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     7643    8437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       73    8437
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1068   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        7   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    15408   16705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      222   16705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      333    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        4    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     3695    4056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       24    4056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      344     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        3     372
24 months   ki1000108-IRC              INDIA                          0                0       67     409
24 months   ki1000108-IRC              INDIA                          0                1        2     409
24 months   ki1000108-IRC              INDIA                          1                0      337     409
24 months   ki1000108-IRC              INDIA                          1                1        3     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      135     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        2     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      435     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        7     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       98     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      160     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0                0      462    3972
24 months   ki1119695-PROBIT           BELARUS                        0                1        1    3972
24 months   ki1119695-PROBIT           BELARUS                        1                0     3506    3972
24 months   ki1119695-PROBIT           BELARUS                        1                1        3    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       28     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      367     426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       31     426
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      458    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       17    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     7763    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      317    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      316    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        7    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     3581    4008
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      104    4008


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
![](/tmp/59cbc2b3-f811-413a-bb23-48fa7390dae5/900fe0f5-b1e4-4a91-bace-44e328ac9b20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59cbc2b3-f811-413a-bb23-48fa7390dae5/900fe0f5-b1e4-4a91-bace-44e328ac9b20/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59cbc2b3-f811-413a-bb23-48fa7390dae5/900fe0f5-b1e4-4a91-bace-44e328ac9b20/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59cbc2b3-f811-413a-bb23-48fa7390dae5/900fe0f5-b1e4-4a91-bace-44e328ac9b20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        0                    NA                0.2098934   0.1118041   0.3079828
Birth       ki1000108-IRC           INDIA        1                    NA                0.1444631   0.1029713   0.1859550
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0271739   0.0036559   0.0506919
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0854093   0.0526957   0.1181228
Birth       ki1119695-PROBIT        BELARUS      0                    NA                0.0599128   0.0306831   0.0891424
Birth       ki1119695-PROBIT        BELARUS      1                    NA                0.0665199   0.0322669   0.1007728
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                0.0778614   0.0614423   0.0942805
Birth       ki1126311-ZVITAMBO      ZIMBABWE     1                    NA                0.0601616   0.0558487   0.0644745
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0357377   0.0137957   0.0576797
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0189278   0.0165288   0.0213268
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                0.0069348   0.0008770   0.0129926
6 months    ki1126311-ZVITAMBO      ZIMBABWE     1                    NA                0.0094609   0.0073007   0.0116210
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0065116   0.0016099   0.0114134
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0142035   0.0120341   0.0163728
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0360577   0.0190581   0.0530573
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0392138   0.0347289   0.0436987
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0216718   0.0056736   0.0376701
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0282225   0.0220464   0.0343986


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0623656   0.0403628   0.0843684
Birth       ki1119695-PROBIT        BELARUS      NA                   NA                0.0655098   0.0324802   0.0985393
Birth       ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0614172   0.0572600   0.0655744
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0193495   0.0169634   0.0217355
6 months    ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.0092450   0.0072027   0.0112873
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0137085   0.0116390   0.0157780
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0390415   0.0347089   0.0433741
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0276946   0.0218340   0.0335552


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC           INDIA        1                    0                 0.6882690   0.3975792   1.1914962
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 3.1430605   1.2198971   8.0980841
Birth       ki1119695-PROBIT        BELARUS      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT        BELARUS      1                    0                 1.1102786   0.8261963   1.4920407
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE     1                    0                 0.7726750   0.6183981   0.9654408
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.5296319   0.2818856   0.9951195
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE     1                    0                 1.3642561   0.5530721   3.3651932
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 2.1812447   1.0194849   4.6668944
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 1.0875279   0.6690975   1.7676303
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.3022679   0.6065679   2.7958972


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        0                    NA                -0.0524590   -0.1386975    0.0337795
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0351917    0.0107070    0.0596764
Birth       ki1119695-PROBIT        BELARUS      0                    NA                 0.0055970   -0.0113179    0.0225119
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                -0.0164442   -0.0320598   -0.0008286
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0163882   -0.0379357    0.0051592
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                 0.0023102   -0.0035716    0.0081920
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0071968    0.0022767    0.0121170
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0029838   -0.0136454    0.0196129
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0060228   -0.0095887    0.0216342


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        0                    NA                -0.3332119   -1.0069823    0.1143649
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.5642804    0.0453422    0.8011313
Birth       ki1119695-PROBIT        BELARUS      0                    NA                 0.0854376   -0.1904011    0.2973592
Birth       ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                -0.2677458   -0.5486350   -0.0378039
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.8469601   -2.3629218   -0.0143744
6 months    ki1126311-ZVITAMBO      ZIMBABWE     0                    NA                 0.2498844   -0.7462542    0.6777826
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.5249924    0.0071734    0.7727375
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0764258   -0.4642831    0.4174697
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.2174713   -0.6006481    0.6174355

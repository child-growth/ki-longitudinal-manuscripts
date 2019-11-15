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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             92     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     92
Birth       ki1000108-IRC              INDIA                          0            381    388
Birth       ki1000108-IRC              INDIA                          1              7    388
Birth       ki1000109-EE               PAKISTAN                       0            161    238
Birth       ki1000109-EE               PAKISTAN                       1             77    238
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            124   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            961   1085
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            391    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            148    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            567    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            165    732
Birth       ki1113344-GMS-Nepal        NEPAL                          0            157    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1            489    646
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             30    334
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            304    334
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            554   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           2254   2808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366
6 months    ki1000108-IRC              INDIA                          0            399    407
6 months    ki1000108-IRC              INDIA                          1              8    407
6 months    ki1000109-EE               PAKISTAN                       0            250    371
6 months    ki1000109-EE               PAKISTAN                       1            121    371
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            154    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            360    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    368
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1000109-EE               PAKISTAN                       0            112    166
24 months   ki1000109-EE               PAKISTAN                       1             54    166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1            338    456
24 months   ki1135781-COHORTS          INDIA                          0           2233   3556
24 months   ki1135781-COHORTS          INDIA                          1           1323   3556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/c36a6487-2cb4-48a9-9110-26f38e911a7c/019a1e48-81dd-4566-9c9e-371b4d743d74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c36a6487-2cb4-48a9-9110-26f38e911a7c/019a1e48-81dd-4566-9c9e-371b4d743d74/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c36a6487-2cb4-48a9-9110-26f38e911a7c/019a1e48-81dd-4566-9c9e-371b4d743d74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.8670312   -2.1033940   -1.6306685
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.8818458   -2.1951170   -1.5685747
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.3355847   -1.4491182   -1.2220512
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4405559   -1.5412669   -1.3398449
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8421950   -0.9325489   -0.7518410
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0039616   -1.1379901   -0.8699330
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.8863049   -0.9660290   -0.8065808
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9955835   -1.1617523   -0.8294147
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.0722924   -1.2553677   -0.8892171
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0979637   -1.1930981   -1.0028294
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6273253   -0.6720712   -0.5825795
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7647145   -0.8242082   -0.7052208
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1313331   -1.4252420   -0.8374242
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3926246   -1.5551475   -1.2301017
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.3764878   -1.5040723   -1.2489033
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.5559975   -1.6109886   -1.5010064
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0351642   -2.1809343   -1.8893941
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.1900930   -2.3952671   -1.9849188
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2673690   -1.3591093   -1.1756287
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.4981869   -1.5697170   -1.4266567
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.7160192   -1.9577015   -1.4743369
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.9534946   -2.0842242   -1.8227650
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0289381   -1.1148395   -0.9430366
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2525553   -1.4073969   -1.0977138
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1539762   -1.2365919   -1.0713604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3556968   -1.4964808   -1.2149127
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5418467   -0.5931908   -0.4905026
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7590166   -1.0202145   -0.4978186
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.2172744   -1.3638642   -1.0706846
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3647932   -1.4591952   -1.2703911
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9431596   -0.9878420   -0.8984772
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.2728382   -1.3387423   -1.2069341
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1027833   -1.4694264   -0.7361403
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2973300   -1.4450229   -1.1496372
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2318092   -1.3117505   -1.1518678
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3850720   -1.4342191   -1.3359249
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640139   -2.6645275   -2.4635003
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.4300000   -3.0592261   -1.8007739
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7871446   -1.8820825   -1.6922068
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.3818750   -2.8405973   -1.9231527
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.7132073   -2.9009507   -2.5254638
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.6849653   -2.9194637   -2.4504669
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5669430   -1.6638722   -1.4700138
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.7179835   -1.8869869   -1.5489801
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3996990   -1.4969249   -1.3024731
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.5810348   -1.7419972   -1.4200723
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8087753   -1.9858966   -1.6316540
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8965130   -1.9954058   -1.7976202
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0520530   -2.1030472   -2.0010588
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.5983042   -2.6709182   -2.5256903
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.9498932   -2.2595722   -1.6402142
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1944823   -2.3394070   -2.0495575
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.6266649   -1.6997315   -1.5535983
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.8188676   -1.8626356   -1.7750997


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8614286   -2.0501173   -1.6727398
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4401843   -1.5334809   -1.3468878
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0909443   -1.1734385   -1.0084500
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6762420   -0.7093108   -0.6431732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3684731   -1.5219775   -1.2149687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5216453   -1.5715117   -1.4717789
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4189572   -1.5607165   -1.2771979
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0826460   -2.2022514   -1.9630406
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4699588   -1.5446559   -1.3952616
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440573   -0.5945614   -0.4935533
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3296275   -1.4093037   -1.2499514
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0458076   -1.0793244   -1.0122908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2787349   -1.4248268   -1.1326431
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5611005   -2.6603759   -2.4618252
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6770382   -2.8210532   -2.5330231
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8717982   -1.9591776   -1.7844189
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2218335   -2.2619519   -2.1817151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.1571821   -2.2993457   -2.0150186
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7725918   -1.8111207   -1.7340629


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -0.0148146   -0.4096289    0.3799997
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.1049712   -0.2421812    0.0322387
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1617666   -0.3240341    0.0005009
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1092786   -0.2938382    0.0752811
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0256713   -0.2321180    0.1807753
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.1373892   -0.2115742   -0.0632041
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2612915   -0.5969613    0.0743783
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1795097   -0.3189889   -0.0400306
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1549288   -0.4065319    0.0966744
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2308179   -0.3388002   -0.1228355
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2374754   -0.5127023    0.0377515
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2236172   -0.4010282   -0.0462063
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.2017206   -0.3650537   -0.0383875
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2171698   -0.4833994    0.0490598
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1475188   -0.3221426    0.0271051
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3296786   -0.4089145   -0.2504427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1945467   -0.5428334    0.1537400
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1532628   -0.2439421   -0.0625836
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1340139   -0.5031898    0.7712175
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.5947304   -1.0631739   -0.1262869
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0282420   -0.2751760    0.3316600
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1510405   -0.3469109    0.0448300
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1813358   -0.3689873    0.0063157
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0877376   -0.2902869    0.1148116
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.5462512   -0.6358094   -0.4566930
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2445891   -0.5515627    0.0623845
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1922027   -0.2746103   -0.1097951


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0056027   -0.1219216    0.1331269
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1045997   -0.2249930    0.0157936
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0429071   -0.0882458    0.0024317
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0231896   -0.0639152    0.0175360
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0186519   -0.1779441    0.1406404
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0489167   -0.0776350   -0.0201983
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2371400   -0.5451760    0.0708960
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1451575   -0.2581573   -0.0321577
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0474818   -0.1304983    0.0355347
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2025898   -0.2977890   -0.1073906
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1826650   -0.4082021    0.0428721
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0627534   -0.1077104   -0.0177964
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0447022   -0.0818730   -0.0075314
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022106   -0.0092261    0.0048048
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1123531   -0.2448572    0.0201510
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1026480   -0.1325532   -0.0727429
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1759516   -0.4902635    0.1383603
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1163211   -0.1825265   -0.0501157
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0029133   -0.0131417    0.0189684
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0116329   -0.0258108    0.0025451
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0361691   -0.0687272    0.1410655
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0354791   -0.0840581    0.0130998
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0415656   -0.0867541    0.0036229
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0630229   -0.2122274    0.0861816
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1697805   -0.2044075   -0.1351535
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2072890   -0.4825930    0.0680150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1459269   -0.2081181   -0.0837356

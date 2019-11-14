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

agecat      studyid                    country                        impfloor    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              185     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               16     201
Birth       ki0047075b-MAL-ED          BRAZIL                         1               55      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                2      57
Birth       ki0047075b-MAL-ED          INDIA                          1               33      39
Birth       ki0047075b-MAL-ED          INDIA                          0                6      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                8      24
Birth       ki0047075b-MAL-ED          NEPAL                          0               16      24
Birth       ki0047075b-MAL-ED          PERU                           1               37     210
Birth       ki0047075b-MAL-ED          PERU                           0              173     210
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               86      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                9      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                5     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              106     111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               68      68
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0      68
Birth       ki1000108-IRC              INDIA                          1              253     253
Birth       ki1000108-IRC              INDIA                          0                0     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              505     572
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               67     572
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              485     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               47     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              542     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              165     707
Birth       ki1113344-GMS-Nepal        NEPAL                          1               97     503
Birth       ki1113344-GMS-Nepal        NEPAL                          0              406     503
Birth       ki1114097-CONTENT          PERU                           1                2       2
Birth       ki1114097-CONTENT          PERU                           0                0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1881   22027
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0            20146   22027
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              271    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             2123    2394
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              477     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               58     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              557     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               46     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              178     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0              363     441
6 months    ki1114097-CONTENT          PERU                           1              201     215
6 months    ki1114097-CONTENT          PERU                           0               14     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1459   16689
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            15230   16689
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              533     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               46     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              168     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               72     373
24 months   ki1113344-GMS-Nepal        NEPAL                          0              301     373
24 months   ki1114097-CONTENT          PERU                           1              154     164
24 months   ki1114097-CONTENT          PERU                           0               10     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              665    8515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             7850    8515
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/ac92531f-edfe-4f3a-b254-20ff356a726a/3533eb88-7564-41be-8087-4f45cee35bb3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ac92531f-edfe-4f3a-b254-20ff356a726a/3533eb88-7564-41be-8087-4f45cee35bb3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ac92531f-edfe-4f3a-b254-20ff356a726a/3533eb88-7564-41be-8087-4f45cee35bb3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.9960723   -1.1560159   -0.8361287
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.6771753   -0.9163277   -0.4380229
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.8772727   -1.1935310   -0.5610144
Birth       ki0047075b-MAL-ED       INDIA                          0                    NA                -1.3116667   -2.0623390   -0.5609943
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.9125000   -1.6413488   -0.1836512
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.7568750   -1.1980753   -0.3156747
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.1064253   -0.4256332    0.2127826
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                -0.0179935   -0.1557384    0.1197513
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.1959302   -0.4617510    0.0698905
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.0466667   -0.4532880    0.5466213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8440000    0.2094403    1.4785597
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7655660    0.5608207    0.9703114
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -1.3516243   -1.4532286   -1.2500200
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.2831545   -1.5487744   -1.0175345
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.3009145   -1.3814024   -1.2204265
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2387059   -1.4768173   -1.0005945
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -1.1993622   -1.2929341   -1.1057903
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -1.3272596   -1.5347236   -1.1197957
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.0935378   -1.3237182   -0.8633574
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.0744715   -1.1829809   -0.9659621
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.6542094   -0.7362808   -0.5721379
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.7530082   -0.7717008   -0.7343156
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.6355795   -0.8369580   -0.4342009
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.6978694   -0.7542000   -0.6415387
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.1170057   -0.2511114    0.0170999
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -0.2400113   -0.7293840    0.2493614
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.7115403   -0.8453770   -0.5777037
6 months    ki0047075b-MAL-ED       INDIA                          0                    NA                -0.6528789   -1.1587973   -0.1469606
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1078306   -0.0906018    0.3062631
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.1712530   -0.0157937    0.3582997
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0734126    0.7773560    1.3694691
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 1.0361414    0.9005235    1.1717593
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.5399822    0.3764649    0.7034995
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.5975154    0.1815995    1.0134312
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3078449   -0.3328520    0.9485418
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5567499    0.4216396    0.6918601
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.4204179   -0.5172590   -0.3235767
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -0.5976745   -0.8617143   -0.3336347
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.1763762   -0.2628954   -0.0898571
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.5040717   -0.7990710   -0.2090725
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0488470   -0.0412478    0.1389418
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0367948   -0.1385009    0.2120906
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.5426602   -0.8067645   -0.2785560
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                -0.6414301   -0.7493537   -0.5335065
6 months    ki1114097-CONTENT       PERU                           1                    NA                 1.0469794    0.9261611    1.1677978
6 months    ki1114097-CONTENT       PERU                           0                    NA                 1.4057358    0.9394096    1.8720619
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.5596101   -0.6501363   -0.4690840
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -0.5935450   -0.6147806   -0.5723095
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.2348851   -0.3801215   -0.0896487
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -0.4047049   -0.4492555   -0.3601544
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.8133706   -0.9400121   -0.6867291
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                -1.0669048   -1.5327692   -0.6010403
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.9350909   -1.0559668   -0.8142150
24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                -1.2588545   -1.8602781   -0.6574309
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2684566   -0.4441880   -0.0927252
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.4016181   -0.5600055   -0.2432306
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.1754118   -0.0738030    0.4246266
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.0898007   -0.0426598    0.2222613
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.4092370    0.2806764    0.5377976
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                 0.3490213    0.0441546    0.6538881
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0554642   -0.5847605    0.4738321
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0521606   -0.0781477    0.1824688
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.8887470   -0.9938798   -0.7836141
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                -1.0765720   -1.3498430   -0.8033009
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.8711368   -0.9569061   -0.7853674
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -1.2819249   -1.6127961   -0.9510538
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.6444836   -0.7641163   -0.5248510
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.4850580   -0.6838173   -0.2862988
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -1.1726174   -1.4349846   -0.9102503
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                -1.1792837   -1.2975458   -1.0610217
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.5518545    0.4100343    0.6936748
24 months   ki1114097-CONTENT       PERU                           0                    NA                 1.0360943    0.5499021    1.5222865
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -1.2028122   -1.3136695   -1.0919550
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                -1.3025320   -1.3263891   -1.2786748
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -1.1697542   -1.3029950   -1.0365134
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                -1.2343909   -1.2708592   -1.1979227


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.8087500   -1.1914221   -0.4260779
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7690991    0.5714748    0.9667234
Birth       ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -1.3448514   -1.4396716   -1.2500312
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.0860636   -1.1830454   -0.9890818
Birth       kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.7496300   -0.7674582   -0.7318018
Birth       kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.7105603   -0.8374801   -0.5836404
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1286317   -0.0051407    0.2624042
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 1.0552716    0.9326038    1.1779394
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.5409906    0.3873048    0.6946765
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5355782    0.4032519    0.6679046
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.4447399   -0.5354039   -0.3540758
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -0.6273772   -0.7253868   -0.5293676
6 months    ki1114097-CONTENT       PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -0.5921149   -0.6117586   -0.5724711
6 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -0.3901347   -0.4273932   -0.3528762
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.3487330   -0.4631704   -0.2342957
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0468868   -0.0789101    0.1726837
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.9106710   -1.0090143   -0.8123277
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                -1.1990840   -1.3039914   -1.0941766
24 months   ki1114097-CONTENT       PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                -1.2986588   -1.3220045   -1.2753131
24 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                -1.2232311   -1.2550891   -1.1913732


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.3188970    0.0308481    0.6069459
Birth       ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA                          0                    1                 -0.4343939   -1.2489664    0.3801785
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1556250   -0.6963599    1.0076099
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.0884317   -0.2595108    0.4363743
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.2425969   -0.3236321    0.8088259
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0784340   -0.7452073    0.5883394
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0684699   -0.2156374    0.3525772
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0622085   -0.1885023    0.3129193
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1278974   -0.3548731    0.0990782
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0190663   -0.2356079    0.2737405
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0987988   -0.1818165   -0.0157812
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0622899   -0.2700081    0.1454283
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1230056   -0.6313208    0.3853096
6 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0                    1                  0.0586614   -0.4648255    0.5821484
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0634224   -0.2093892    0.3362340
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.0372712   -0.3642001    0.2896578
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0575332   -0.3909973    0.5060637
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2489049   -0.4060506    0.9038605
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1772567   -0.4591448    0.1046314
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.3276955   -0.6351510   -0.0202401
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0120521   -0.2088277    0.1847234
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0987699   -0.3842781    0.1867384
6 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU                           0                    1                  0.3587563   -0.1232954    0.8408081
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0339349   -0.1270848    0.0592149
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.1698198   -0.3226459   -0.0169937
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.2535342   -0.7367607    0.2296924
24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.3237635   -0.9376328    0.2901057
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1331615   -0.3697129    0.1033899
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0856110   -0.3654811    0.1942590
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0602157   -0.3918023    0.2713710
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1076248   -0.4378639    0.6531134
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1878250   -0.4805185    0.1048685
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.4107882   -0.7525961   -0.0689803
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1594256   -0.0699564    0.3888076
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0066663   -0.2947458    0.2814132
24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU                           0                    1                  0.4842398   -0.0213758    0.9898553
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0997197   -0.2106659    0.0112264
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0646367   -0.2021087    0.0728352


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0239330   -0.0028108    0.0506768
Birth       ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0668298   -0.2016929    0.0680332
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1037500   -0.4650307    0.6725307
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0596158   -0.2321630    0.3513945
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0229829   -0.0325492    0.0785150
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0749009   -0.7116467    0.5618449
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0067729   -0.0251317    0.0386775
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0024558   -0.0207297    0.0256414
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0447891   -0.0929993    0.0034210
Birth       ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0074742   -0.2041255    0.2190738
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0954206   -0.1749132   -0.0159281
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0526703   -0.2457191    0.1403785
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0170498   -0.0574851    0.0233855
6 months    ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0009801   -0.0277862    0.0297464
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0208011   -0.1330940    0.1746962
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.0181410   -0.2790998    0.2428178
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0010085   -0.0351006    0.0371176
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2277333   -0.3926259    0.8480925
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0243220   -0.0540064    0.0053624
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0227144   -0.0456876    0.0002587
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0190847   -0.0646940    0.0265245
6 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0847169   -0.3259373    0.1565034
6 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0214523   -0.0103185    0.0532232
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0325047   -0.1217631    0.0567536
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.1552496   -0.2959180   -0.0145812
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0068181   -0.0454632    0.0318270
24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0171998   -0.0500072    0.0156075
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0802764   -0.2140358    0.0534829
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0549640   -0.2689982    0.1590702
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0056159   -0.0188410    0.0300729
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1023510   -0.4205658    0.6252678
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0219240   -0.0562007    0.0123527
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0217303   -0.0466582    0.0031976
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0341335   -0.0362087    0.1044756
24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0264666   -0.2663998    0.2134666
24 months   ki1114097-CONTENT       PERU                           1                    NA                 0.0149747   -0.0170708    0.0470203
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0958466   -0.2024706    0.0107774
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0534769   -0.1822540    0.0753001

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

**Intervention Variable:** safeh20

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
* impfloor
* impsan
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
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             213     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0      41
Birth       ki0047075b-MAL-ED          BRAZIL                         0              41      41
Birth       ki0047075b-MAL-ED          INDIA                          1               0      41
Birth       ki0047075b-MAL-ED          INDIA                          0              41      41
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      26
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      26
Birth       ki0047075b-MAL-ED          PERU                           1               9     207
Birth       ki0047075b-MAL-ED          PERU                           0             198     207
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              13      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              83      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40     119
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             606     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               2     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              45      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      45
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             732     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           22392   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              40   22432
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2820    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0    2820
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             240     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0             142     142
6 months    ki0047075b-MAL-ED          INDIA                          1               0     235
6 months    ki0047075b-MAL-ED          INDIA                          0             235     235
6 months    ki0047075b-MAL-ED          NEPAL                          1               1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0             232     233
6 months    ki0047075b-MAL-ED          PERU                           1              11     259
6 months    ki0047075b-MAL-ED          PERU                           0             248     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             380     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             535     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              11      11
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      11
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16783   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4824    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0             113     113
24 months   ki0047075b-MAL-ED          INDIA                          1               0     227
24 months   ki0047075b-MAL-ED          INDIA                          0             227     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               1     226
24 months   ki0047075b-MAL-ED          NEPAL                          0             225     226
24 months   ki0047075b-MAL-ED          PERU                           1               7     193
24 months   ki0047075b-MAL-ED          PERU                           0             186     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             427     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             475     574
24 months   ki1148112-LCNI-5           MALAWI                         0              99     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8612    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4746    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/ee42356f-09e7-4772-9994-a5efcb4fa42f/97306352-3b5d-4d25-9411-d19fcb8ef107/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ee42356f-09e7-4772-9994-a5efcb4fa42f/97306352-3b5d-4d25-9411-d19fcb8ef107/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ee42356f-09e7-4772-9994-a5efcb4fa42f/97306352-3b5d-4d25-9411-d19fcb8ef107/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.6677778   -1.2689426   -0.0666129
Birth       ki0047075b-MAL-ED   PERU                           0                    NA                -0.9054040   -1.0308665   -0.7799416
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.4120568   -1.1297963    0.3056826
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.5692542   -0.7794933   -0.3590151
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0518000   -1.3012601   -0.8023398
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3309086   -1.8805714   -0.7812457
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.5889238   -1.6085903   -1.5692574
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.9862382   -2.0207610   -1.9517154
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                -1.2128849   -1.7766636   -0.6491062
6 months    ki0047075b-MAL-ED   PERU                           0                    NA                -1.3090043   -1.4220473   -1.1959614
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.1345190   -1.5433824   -0.7256555
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.0471707   -1.1832374   -0.9111039
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3354453   -1.4844762   -1.1864145
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4270563   -1.6355721   -1.2185404
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -1.6222536   -1.6986556   -1.5458515
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -1.7659360   -1.9241446   -1.6077273
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.3128323   -1.3364916   -1.2891729
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.6426503   -1.6730763   -1.6122244
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -2.1757143   -2.7976265   -1.5538020
24 months   ki0047075b-MAL-ED   PERU                           0                    NA                -1.7370699   -1.8647759   -1.6093639
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.5633084   -1.9880203   -1.1385964
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.6353151   -1.7772963   -1.4933338
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6626755   -2.8334733   -2.4918777
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5485141   -2.7684917   -2.3285365
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -1.8729285   -1.9636084   -1.7822486
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -1.9408487   -2.1272698   -1.7544275
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -2.0132889   -2.0416240   -1.9849538
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -2.2454352   -2.2801381   -2.2107324


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           NA                   NA                -0.8950725   -1.0180716   -0.7720734
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1158824   -1.3283278   -0.9034369
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.5896835   -1.6089596   -1.5704074
6 months    ki0047075b-MAL-ED   PERU                           NA                   NA                -1.3065026   -1.4164323   -1.1965728
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.0533804   -1.1834360   -0.9233247
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3658943   -1.4882808   -1.2435078
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -1.7529793   -1.8786399   -1.6273186
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6488498   -2.7844961   -2.5132034
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -2.0135591   -2.0412422   -1.9858759


### Parameter: ATE


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   PERU                           0                    1                 -0.2376263   -0.8517435    0.3764910
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.1571974   -0.9058410    0.5914463
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2791086   -0.8838761    0.3256589
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.3973144   -0.4356346   -0.3589941
6 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   PERU                           0                    1                 -0.0961194   -0.6712944    0.4790556
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0873483   -0.3428692    0.5175658
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0916109   -0.3457896    0.1625678
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 -0.1436824   -0.3177748    0.0304100
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.3298181   -0.3669542   -0.2926819
24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.4386444   -0.1962443    1.0735331
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0720067   -0.5214541    0.3774407
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1141614   -0.1667107    0.3950334
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0679202   -0.2754694    0.1396291
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2321463   -0.2759407   -0.1883519


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.2272947   -0.8147485   0.3601591
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1403390   -0.8014547   0.5207767
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0640824   -0.2287345   0.1005697
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0007597   -0.0017906   0.0002713
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0936177   -0.6489080   0.4616727
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0811386   -0.2870450   0.4493221
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0304490   -0.1126715   0.0517735
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0204425   -0.0510175   0.0101325
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0003767   -0.0012860   0.0005327
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.4227350   -0.1892366   1.0347066
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0838189   -0.4715144   0.3038766
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0138257   -0.0789651   0.1066165
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0093363   -0.0448327   0.0261601
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002702   -0.0014172   0.0008769

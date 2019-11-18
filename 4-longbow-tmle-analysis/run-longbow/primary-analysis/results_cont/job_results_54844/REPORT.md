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

agecat      studyid                    country                        safeh20    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     201  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             201     201  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0      38  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0              38      38  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1               0      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0              39      39  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0              24      25  whz              
Birth       ki0047075b-MAL-ED          PERU                           1               9     202  whz              
Birth       ki0047075b-MAL-ED          PERU                           0             193     202  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              13      95  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              82      95  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              74     111  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              37     111  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             573     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               2     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              45      45  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      45  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             707     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0     707  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           17963   17992  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              29   17992  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2394    2394  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0    2394  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             240     240  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0     142  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0             142     142  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1               0     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0             235     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1               1     233  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0             232     233  whz              
6 months    ki0047075b-MAL-ED          PERU                           1              11     259  whz              
6 months    ki0047075b-MAL-ED          PERU                           0             248     259  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     248  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     248  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             380     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     380  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             535     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              11      11  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      11  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715  whz              
6 months    ki1114097-CONTENT          PERU                           1              54      57  whz              
6 months    ki1114097-CONTENT          PERU                           0               3      57  whz              
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816  whz              
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16756   16776  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16776  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4826    4827  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4827  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     113  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0             113     113  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1               0     227  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0             227     227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1               1     226  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0             225     226  whz              
24 months   ki0047075b-MAL-ED          PERU                           1               7     193  whz              
24 months   ki0047075b-MAL-ED          PERU                           0             186     193  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     237  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     237  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             426     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514  whz              
24 months   ki1114097-CONTENT          PERU                           1              45      48  whz              
24 months   ki1114097-CONTENT          PERU                           0               3      48  whz              
24 months   ki1148112-LCNI-5           MALAWI                         1             464     558  whz              
24 months   ki1148112-LCNI-5           MALAWI                         0              94     558  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8583    8594  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8594  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4729    4730  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4730  whz              


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
![](/tmp/18986253-65a7-4ea7-9e22-50262cd815e6/9b9c828b-a591-4a1c-a716-4dccaeb5b0bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/18986253-65a7-4ea7-9e22-50262cd815e6/9b9c828b-a591-4a1c-a716-4dccaeb5b0bc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/18986253-65a7-4ea7-9e22-50262cd815e6/9b9c828b-a591-4a1c-a716-4dccaeb5b0bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                 0.1222222   -0.3522777    0.5967221
Birth       ki0047075b-MAL-ED   PERU                           0                    NA                -0.0486528   -0.1831806    0.0858749
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1581071   -1.0506389    0.7344248
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.1832210   -0.4378740    0.0714319
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7491938    0.4853007    1.0130868
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.8418825    0.5280375    1.1557275
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.7775485   -0.7970253   -0.7580717
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.9233120   -0.9442662   -0.9023578
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                 1.0193407    0.5241711    1.5145104
6 months    ki0047075b-MAL-ED   PERU                           0                    NA                 1.0497252    0.9195559    1.1798945
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.6117498    0.2745839    0.9489157
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.5500649    0.3784227    0.7217071
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6021259    0.4404684    0.7637835
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3950974    0.1624229    0.6277719
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.4318038    0.3545410    0.5090666
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.4710300    0.2836888    0.6583712
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.5930169   -0.6129913   -0.5730425
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.7808303   -0.8053795   -0.7562811
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0150000   -0.4862499    0.5162499
24 months   ki0047075b-MAL-ED   PERU                           0                    NA                 0.1005332   -0.0288801    0.2299464
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.2556154   -0.0624514    0.5736822
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.4320054    0.2990664    0.5649445
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0432371   -0.1114114    0.1978856
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0798983   -0.1376883    0.2974849
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0091267   -0.0993360    0.0810827
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.2386022   -0.4394586   -0.0377458
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.2970109   -1.3208145   -1.2732073
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.5295458   -1.5918689   -1.4672228


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0410396   -0.1713918    0.0893125
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7618919    0.5640188    0.9597650
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.7777807   -0.7967797   -0.7587816
6 months    ki0047075b-MAL-ED   PERU                           NA                   NA                 1.0487066    0.9226025    1.1748107
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.5430175    0.3887455    0.6972895
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5357995    0.4039850    0.6676139
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                 0.4417647    0.3702742    0.5132552
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                 0.0974309   -0.0286270    0.2234888
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.4054395    0.2840471    0.5268320
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0518153   -0.0737716    0.1774023
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.2973086   -1.3206115   -1.2740057


### Parameter: ATE


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   PERU                           0                    1                 -0.1708751   -0.6640768    0.3223266
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0251140   -0.9527570    0.9025291
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0926887   -0.3224884    0.5078658
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.1457635   -0.1743592   -0.1171679
6 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   PERU                           0                    1                  0.0303844   -0.4818807    0.5426496
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.0616849   -0.4443930    0.3210232
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2070285   -0.4908555    0.0767985
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                  0.0392263   -0.1635122    0.2419647
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.1878134   -0.2187201   -0.1569067
24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.0855332   -0.4321533    0.6032196
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.1763901   -0.1682547    0.5210348
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0366612   -0.2306999    0.3040223
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.2294755   -0.4495368   -0.0094143
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2325349   -0.2990786   -0.1659912


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.1632618   -0.6345144    0.3079907
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0148403   -0.8264685    0.7967879
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0126981   -0.1390328    0.1644291
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002322   -0.0009393    0.0004749
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                 0.0293658   -0.4625296    0.5212613
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0687323   -0.4003955    0.2629309
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0663265   -0.1562716    0.0236187
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0099609   -0.0255449    0.0454668
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002333   -0.0010189    0.0005523
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0824309   -0.4164844    0.5813463
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1498242   -0.1508345    0.4504829
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0085782   -0.0763812    0.0935377
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0386601   -0.0758116   -0.0015085
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002977   -0.0020696    0.0014743

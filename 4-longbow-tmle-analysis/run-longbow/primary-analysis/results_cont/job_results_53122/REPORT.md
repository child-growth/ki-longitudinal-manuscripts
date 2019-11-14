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

agecat      studyid                    country                        safeh20    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     201
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             201     201
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0      38
Birth       ki0047075b-MAL-ED          BRAZIL                         0              38      38
Birth       ki0047075b-MAL-ED          INDIA                          1               0      39
Birth       ki0047075b-MAL-ED          INDIA                          0              39      39
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      25
Birth       ki0047075b-MAL-ED          NEPAL                          0              24      25
Birth       ki0047075b-MAL-ED          PERU                           1               9     202
Birth       ki0047075b-MAL-ED          PERU                           0             193     202
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              13      95
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              82      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              74     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              37     111
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             573     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               2     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              45      45
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      45
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             707     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           22028   22059
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              31   22059
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2394    2394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0    2394
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16698   16718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16718
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4826    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4827
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             426     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             464     558
24 months   ki1148112-LCNI-5           MALAWI                         0              94     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8518    8529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8529
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4729    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4730


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
![](/tmp/a816803d-91bc-4db5-a85c-eaf7baf8a37f/4ebecce2-1829-481d-b697-5eef26f63b64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a816803d-91bc-4db5-a85c-eaf7baf8a37f/4ebecce2-1829-481d-b697-5eef26f63b64/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a816803d-91bc-4db5-a85c-eaf7baf8a37f/4ebecce2-1829-481d-b697-5eef26f63b64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                 0.1222222   -0.3522777    0.5967221
Birth       ki0047075b-MAL-ED   PERU                           0                    NA                -0.0486528   -0.1831806    0.0858749
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1532260   -0.6884881    0.9949401
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.1717609   -0.4269804    0.0834587
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7179886    0.4486993    0.9872779
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7554087    0.4953939    1.0154236
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.7498096   -0.7681047   -0.7315145
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.9646167   -0.9837676   -0.9454657
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                 0.8936682    0.3747155    1.4126209
6 months    ki0047075b-MAL-ED   PERU                           0                    NA                 1.0539370    0.9237203    1.1841536
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.4897437    0.1541278    0.8253597
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.5478706    0.3756333    0.7201079
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6055230    0.4446790    0.7663670
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4035760    0.1747105    0.6324415
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.4348975    0.3577371    0.5120580
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.4775395    0.2912364    0.6638425
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.5925303   -0.6125385   -0.5725221
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.7901363   -0.8153618   -0.7649109
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0150000   -0.4862499    0.5162499
24 months   ki0047075b-MAL-ED   PERU                           0                    NA                 0.1101882   -0.0158298    0.2362062
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.2184572   -0.0723452    0.5092596
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.4399852    0.3069721    0.5729983
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0356224   -0.1212038    0.1924487
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0782806   -0.1480547    0.3046159
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0120294   -0.1022431    0.0781843
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.2611963   -0.4592131   -0.0631795
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.2986209   -1.3224994   -1.2747424
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.6018124   -1.6665840   -1.5370408


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0410396   -0.1713918    0.0893125
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7618919    0.5640188    0.9597650
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.7501043   -0.7679514   -0.7322572
6 months    ki0047075b-MAL-ED   PERU                           NA                   NA                 1.0534106    0.9272738    1.1795473
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.5435753    0.3893523    0.6977982
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5357995    0.4039850    0.6676139
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                 0.4417647    0.3702742    0.5132552
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.5927536   -0.6123074   -0.5731998
24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                 0.1067358   -0.0160906    0.2295621
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.4112869    0.2901842    0.5323897
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0509624   -0.0746843    0.1766091
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.2989248   -1.3223008   -1.2755489


### Parameter: ATE


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   PERU                           0                    1                 -0.1708751   -0.6640768    0.3223266
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.3249869   -1.1984186    0.5484448
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0374201   -0.3367864    0.4116267
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2148071   -0.2415611   -0.1880530
6 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   PERU                           0                    1                  0.1602688   -0.3748272    0.6953648
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0581269   -0.3196094    0.4358631
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2019470   -0.4818876    0.0779936
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                  0.0426419   -0.1584432    0.2437270
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.1976060   -0.2290433   -0.1661687
24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.0951882   -0.4216599    0.6120363
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.2215280   -0.0979946    0.5410506
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0426581   -0.2319339    0.3172502
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.2491669   -0.4666361   -0.0316977
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.3031915   -0.3719423   -0.2344407


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.1632618   -0.6345144   0.3079907
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.3261734   -1.0889018   0.4365550
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0439033   -0.1110154   0.1988219
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002947   -0.0009763   0.0003869
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                 0.1597424   -0.3552387   0.6747235
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0538315   -0.2687018   0.3763649
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0697235   -0.1593290   0.0198819
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0068672   -0.0282912   0.0420256
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002233   -0.0010115   0.0005648
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0917358   -0.4063729   0.5898444
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1928297   -0.0830801   0.4687396
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0153400   -0.0701464   0.1008264
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0357573   -0.0729687   0.0014540
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0003039   -0.0020817   0.0014739

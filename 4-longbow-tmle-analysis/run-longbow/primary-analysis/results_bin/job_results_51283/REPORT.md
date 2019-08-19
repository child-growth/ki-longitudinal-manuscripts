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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
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
* delta_W_nrooms
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

agecat      studyid                    country                        nchldlt5    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       59     245
Birth       ki1000108-IRC              INDIA                          1                 1       13     245
Birth       ki1000108-IRC              INDIA                          2+                0      151     245
Birth       ki1000108-IRC              INDIA                          2+                1       22     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        1      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     9217    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      167    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0      385    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1        3    9772
6 months    ki1000108-IRC              INDIA                          1                 0       83     289
6 months    ki1000108-IRC              INDIA                          1                 1        5     289
6 months    ki1000108-IRC              INDIA                          2+                0      190     289
6 months    ki1000108-IRC              INDIA                          2+                1       11     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      422     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0        8     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1382    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       61    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        1    1452
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      390     453
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                0       63     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                1        0     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10728   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      144   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0      354   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1        8   11234
24 months   ki1000108-IRC              INDIA                          1                 0       86     290
24 months   ki1000108-IRC              INDIA                          1                 1        3     290
24 months   ki1000108-IRC              INDIA                          2+                0      200     290
24 months   ki1000108-IRC              INDIA                          2+                1        1     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      418     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0        8     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        0     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      353     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      276     321
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     321
24 months   ki1148112-LCNI-5           MALAWI                         2+                0       44     321
24 months   ki1148112-LCNI-5           MALAWI                         2+                1        0     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5202    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      232    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0      211    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1        9    5654


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/3e39aeaa-11ba-4fc4-93c8-b777fcac7548/8843c160-e756-4d1b-9fca-f36e4dad0656/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3e39aeaa-11ba-4fc4-93c8-b777fcac7548/8843c160-e756-4d1b-9fca-f36e4dad0656/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3e39aeaa-11ba-4fc4-93c8-b777fcac7548/8843c160-e756-4d1b-9fca-f36e4dad0656/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3e39aeaa-11ba-4fc4-93c8-b777fcac7548/8843c160-e756-4d1b-9fca-f36e4dad0656/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                0.1865268   0.0960218   0.2770318
Birth       ki1000108-IRC       INDIA        2+                   NA                0.1278294   0.0770841   0.1785747
6 months    ki1000108-IRC       INDIA        1                    NA                0.0568182   0.0083674   0.1052690
6 months    ki1000108-IRC       INDIA        2+                   NA                0.0547264   0.0232286   0.0862241
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0132450   0.0106483   0.0158417
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0220994   0.0043070   0.0398919
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0426941   0.0369151   0.0484732
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   NA                0.0409091   0.0126145   0.0692037


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA        NA                   NA                0.1428571   0.0989504   0.1867638
6 months    ki1000108-IRC       INDIA        NA                   NA                0.0553633   0.0289517   0.0817750
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0135304   0.0109617   0.0160990
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0426247   0.0369926   0.0482568


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA        2+                   1                 0.6853139   0.3676125   1.277582
6 months    ki1000108-IRC       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC       INDIA        2+                   1                 0.9631841   0.3442791   2.694685
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 1.6685083   0.7262239   3.833418
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   2+                   1                 0.9581897   0.4718081   1.945976


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.0436696   -0.1173127   0.0299735
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0014549   -0.0416475   0.0387378
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0002853   -0.0002985   0.0008691
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0000695   -0.0011990   0.0010601


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA        1                    NA                -0.3056875   -0.9323604   0.1177526
6 months    ki1000108-IRC       INDIA        1                    NA                -0.0262784   -1.0818073   0.4940707
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0210875   -0.0229435   0.0632232
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0016295   -0.0284763   0.0245165

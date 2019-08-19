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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        nchldlt5    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                0       50     245
Birth       ki1000108-IRC              INDIA                          1                1       22     245
Birth       ki1000108-IRC              INDIA                          2+               0      129     245
Birth       ki1000108-IRC              INDIA                          2+               1       44     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       12      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               0        1      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        0      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     8410    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      974    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               0      365    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+               1       23    9772
6 months    ki1000108-IRC              INDIA                          1                0       77     289
6 months    ki1000108-IRC              INDIA                          1                1       11     289
6 months    ki1000108-IRC              INDIA                          2+               0      174     289
6 months    ki1000108-IRC              INDIA                          2+               1       27     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      409     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       17     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               0        8     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               1        1     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      494     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       13     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1335    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       55    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       56    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        6    1452
6 months    ki1148112-LCNI-5           MALAWI                         1                0      384     453
6 months    ki1148112-LCNI-5           MALAWI                         1                1        6     453
6 months    ki1148112-LCNI-5           MALAWI                         2+               0       63     453
6 months    ki1148112-LCNI-5           MALAWI                         2+               1        0     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     9976   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      896   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               0      320   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+               1       42   11234
24 months   ki1000108-IRC              INDIA                          1                0       78     290
24 months   ki1000108-IRC              INDIA                          1                1       11     290
24 months   ki1000108-IRC              INDIA                          2+               0      184     290
24 months   ki1000108-IRC              INDIA                          2+               1       17     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      375     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       48     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               0        6     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               1        2     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      328     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       29     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               0        4     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               1        0     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                0      271     321
24 months   ki1148112-LCNI-5           MALAWI                         1                1        6     321
24 months   ki1148112-LCNI-5           MALAWI                         2+               0       42     321
24 months   ki1148112-LCNI-5           MALAWI                         2+               1        2     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4203    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1231    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               0      173    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+               1       47    5654


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/b3a9960b-628c-4fcf-b53c-31240e6f4238/f73f64e3-570c-4a47-812d-641ce79c9949/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3a9960b-628c-4fcf-b53c-31240e6f4238/f73f64e3-570c-4a47-812d-641ce79c9949/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3a9960b-628c-4fcf-b53c-31240e6f4238/f73f64e3-570c-4a47-812d-641ce79c9949/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3a9960b-628c-4fcf-b53c-31240e6f4238/f73f64e3-570c-4a47-812d-641ce79c9949/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.3125341   0.2054065   0.4196617
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.2546793   0.1895819   0.3197767
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1037440   0.0970881   0.1104000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0600854   0.0349470   0.0852238
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1322210   0.0620862   0.2023558
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1350169   0.0878253   0.1822085
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0395683   0.0293166   0.0498201
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0967742   0.0231569   0.1703915
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0821627   0.0761631   0.0881624
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1452607   0.1203331   0.1701882
24 months   ki1000108-IRC              INDIA                          1                    NA                0.1162876   0.0485466   0.1840285
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0807178   0.0432046   0.1182309
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2267800   0.2137918   0.2397682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1946374   0.1571605   0.2321143


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2693878   0.2137223   0.3250532
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1020262   0.0954832   0.1085692
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1314879   0.0924593   0.1705165
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0420110   0.0316887   0.0523333
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0834965   0.0777104   0.0892826
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0965517   0.0625006   0.1306028
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2260347   0.2136666   0.2384027


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.8148847   0.5308853   1.2508109
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.5791697   0.3813124   0.8796921
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0211455   0.5397506   1.9318889
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 2.4457478   1.0949710   5.4628681
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.7679629   1.4679801   2.1292474
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 0.6941220   0.3286470   1.4660268
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8582653   0.7008760   1.0509981


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0431464   -0.1322436    0.0459509
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0017178   -0.0027380   -0.0006977
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0007331   -0.0600254    0.0585591
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0024427   -0.0007864    0.0056718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0013338    0.0000025    0.0026650
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0197358   -0.0752661    0.0357945
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0007453   -0.0043702    0.0028796


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1601645   -0.5431189    0.1277524
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0168372   -0.0269074   -0.0068658
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0055756   -0.5746587    0.3578403
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0581436   -0.0206111    0.1308214
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0159742   -0.0001927    0.0318797
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2044069   -0.9382563    0.2515975
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0032975   -0.0194590    0.0126079

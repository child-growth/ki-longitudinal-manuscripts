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

**Intervention Variable:** impsan

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
* impfloor
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
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            186     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             36     222
Birth       ki0047075b-MAL-ED       BRAZIL                         1            163     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4     167
Birth       ki0047075b-MAL-ED       INDIA                          1             90     188
Birth       ki0047075b-MAL-ED       INDIA                          0             98     188
Birth       ki0047075b-MAL-ED       NEPAL                          1            165     166
Birth       ki0047075b-MAL-ED       NEPAL                          0              1     166
Birth       ki0047075b-MAL-ED       PERU                           1             60     243
Birth       ki0047075b-MAL-ED       PERU                           0            183     243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            209     211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            109     109
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             21      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2      23
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             43     449
Birth       ki1135781-COHORTS       GUATEMALA                      0            406     449
Birth       ki1135781-COHORTS       INDIA                          1           1685    4461
Birth       ki1135781-COHORTS       INDIA                          0           2776    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          10724   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           4965   15689
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            503     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            180     683
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            331     536
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            554     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26     580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1879    4964
6 months    ki1135781-COHORTS       INDIA                          0           3085    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12015   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4758   16773
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1093    4827
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            258     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            553     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24     577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     903
24 months   ki1135781-COHORTS       GUATEMALA                      0            826     903
24 months   ki1135781-COHORTS       INDIA                          1           1457    3724
24 months   ki1135781-COHORTS       INDIA                          0           2267    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    1            124     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0            869     993
24 months   ki1148112-LCNI-5        MALAWI                         1              2     556
24 months   ki1148112-LCNI-5        MALAWI                         0            554     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6085    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2508    8593
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3671    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1059    4730


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
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/c3965a5f-2126-4dd7-990f-a9b3494b1027/4570acce-8604-4bfb-b91b-dd1b51c67601/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c3965a5f-2126-4dd7-990f-a9b3494b1027/4570acce-8604-4bfb-b91b-dd1b51c67601/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c3965a5f-2126-4dd7-990f-a9b3494b1027/4570acce-8604-4bfb-b91b-dd1b51c67601/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.0118847   -1.1674887   -0.8562808
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.8715091   -1.2455960   -0.4974221
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.0437781   -1.2555564   -0.8319998
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -1.0648964   -1.2600617   -0.8697312
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1502807   -0.3508003    0.0502388
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0044962   -0.1367169    0.1457093
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.5622222   -2.2052846   -0.9191599
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.3584211   -1.7618042   -0.9550379
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -1.1983821   -1.8329847   -0.5637794
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.8951878   -1.0385055   -0.7518700
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.9494603   -1.0115867   -0.8873339
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.9868334   -1.0316041   -0.9420627
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8728512   -1.0489773   -0.6967252
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6473846   -0.7285516   -0.5662176
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.7119095   -0.7363527   -0.6874663
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.7593510   -0.7940368   -0.7246651
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.3462401   -0.4412547   -0.2512256
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.4181791   -0.5786290   -0.2577293
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.1273852   -0.2687234    0.0139529
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1413198   -0.5214188    0.2387792
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.6721364   -0.8526360   -0.4916367
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.7253923   -0.9082705   -0.5425142
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 1.0084856    0.7638044    1.2531668
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 1.0282623    0.8815624    1.1749623
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3437524   -0.4846638   -0.2028410
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.5070938   -0.6221175   -0.3920701
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.2097711   -0.2971742   -0.1223681
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1324983   -0.4916059    0.2266094
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0381613   -0.0456839    0.1220065
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0045517   -0.2777333    0.2686298
6 months    ki1114097-CONTENT       PERU          1                    NA                 1.0741048    0.9519103    1.1962992
6 months    ki1114097-CONTENT       PERU          0                    NA                 0.9010901    0.5319887    1.2701915
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2396553   -0.0278703    0.5071808
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                 0.1513934    0.0587781    0.2440087
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.5856481   -0.6409041   -0.5303920
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.7871077   -0.8291221   -0.7450932
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.2528557   -0.4227589   -0.0829525
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.2888207   -0.3589833   -0.2186582
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.5718193   -0.5946285   -0.5490100
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.6664489   -0.7059156   -0.6269822
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.3547099   -0.3962430   -0.3131767
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.5356175   -0.6232408   -0.4479942
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.7769540   -0.9088248   -0.6450832
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.1319782   -1.4230836   -0.8408728
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.8225199   -1.0041313   -0.6409085
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.0647216   -1.2130687   -0.9163745
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0568829   -0.2121730    0.3259388
24 months   ki0047075b-MAL-ED       PERU          0                    NA                 0.1294045   -0.0101534    0.2689624
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.8262117   -0.9703131   -0.6821103
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.9664683   -1.0977135   -0.8352230
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.8912738   -0.9761024   -0.8064452
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.8543865   -1.2919569   -0.4168160
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.6256046   -0.7305174   -0.5206918
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.5573779   -0.7989494   -0.3158064
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.5570157    0.4105999    0.7034315
24 months   ki1114097-CONTENT       PERU          0                    NA                 0.6160078    0.3384999    0.8935157
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1451358   -0.3284438    0.0381722
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.2949205   -0.3576825   -0.2321584
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.5671099   -0.6208065   -0.5134133
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.7279514   -0.7707763   -0.6851264
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5257132   -0.6824858   -0.3689405
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6811876   -0.7439806   -0.6183946
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2818850   -1.3101654   -1.2536047
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.3549910   -1.3989704   -1.3110116
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.2097362   -1.2447005   -1.1747719
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.2751774   -1.3449459   -1.2054089


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.9902252   -1.1311070   -0.8493435
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -1.0536702   -1.1965043   -0.9108361
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.0315638   -0.1495606    0.0864330
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.7238913   -0.7437437   -0.7040388
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.3683163   -0.4490504   -0.2875821
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.1354618   -0.2647919   -0.0061317
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -0.7004578   -0.8268704   -0.5740452
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                 1.0376236    0.9141918    1.1610554
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -0.2080201   -0.2927357   -0.1233045
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                 0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                 0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.5931476   -0.6127125   -0.5735828
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9496667   -1.0657716   -0.8335618
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                 0.1064286   -0.0147106    0.2275677
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -0.8896187   -0.9726240   -0.8066134
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.6115706   -0.7075788   -0.5155624
24 months   ki1114097-CONTENT       PERU          NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.2861905   -0.3461594   -0.2262216
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -0.6606874   -0.6938402   -0.6275347
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.6564149   -0.7144543   -0.5983756
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.2970418   -1.3203361   -1.2737475
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.1403757   -0.2661750    0.5469263
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                 -0.0211184   -0.3107795    0.2685427
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                  0.1547770   -0.0911472    0.4007012
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                  0.2038012   -0.5553083    0.9629106
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                  0.3031943   -0.3476945    0.9540831
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.0373731   -0.1138856    0.0391394
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                  0.2254666    0.0320443    0.4188889
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0474414   -0.0879654   -0.0069175
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0719390   -0.2596372    0.1157592
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0139346   -0.4202477    0.3923786
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0532560   -0.3106624    0.2041505
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0197767   -0.2668903    0.3064437
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1633414   -0.3456432    0.0189604
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    1                  0.0772728   -0.2916220    0.4461677
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 -0.0427130   -0.3281555    0.2427294
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.1730147   -0.5639077    0.2178783
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.0882619   -0.3718578    0.1953340
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.2014596   -0.2707725   -0.1321467
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.0359650   -0.2202516    0.1483215
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0946296   -0.1382979   -0.0509613
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1809076   -0.2768684   -0.0849469
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.3550242   -0.6759254   -0.0341229
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2422017   -0.4780440   -0.0063594
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                  0.0725216   -0.2287203    0.3737635
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1402566   -0.3353478    0.0548347
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                  0.0368873   -0.4086372    0.4824118
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0682267   -0.1954518    0.3319051
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                  0.0589921   -0.2554623    0.3734465
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1497847   -0.3437552    0.0441859
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.1608415   -0.2290412   -0.0926417
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.1554744   -0.3248952    0.0139463
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0731059   -0.1238592   -0.0223527
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0654412   -0.1419534    0.0110710


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0216595   -0.0400050    0.0833240
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -0.0098921   -0.1633019    0.1435176
Birth       ki0047075b-MAL-ED       PERU          1                    NA                 0.1187170   -0.0662368    0.3036707
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1382937   -0.3780659    0.6546532
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2689389   -0.3274445    0.8653222
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0277130   -0.0776551    0.0222291
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1887482    0.0236611    0.3538353
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0119818   -0.0241334    0.0001699
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0220761   -0.0718360    0.0276837
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0080766   -0.0646197    0.0484665
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0283214   -0.1658593    0.1092164
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0291379   -0.1933757    0.2516516
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0951577   -0.2081347    0.0178192
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0017510   -0.0142409    0.0177429
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0044823   -0.0367471    0.0277824
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0056730   -0.0327868    0.0214409
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0938042   -0.3532922    0.1656838
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1248374   -0.1706867   -0.0789881
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0301729   -0.1932876    0.1329418
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0213283   -0.0323995   -0.0102571
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0354497   -0.0549304   -0.0159689
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0438714   -0.0961357    0.0083928
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1271468   -0.2563403    0.0020467
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0495457   -0.1890908    0.2881822
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0853673   -0.2025573    0.0318226
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0016551   -0.0157284    0.0190385
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0140340   -0.0213594    0.0494274
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.0098136   -0.0234716    0.0430987
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1410547   -0.3191561    0.0370467
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0935775   -0.1361677   -0.0509874
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1307017   -0.2801389    0.0187354
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0151567   -0.0300641   -0.0002494
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0134414   -0.0295808    0.0026980

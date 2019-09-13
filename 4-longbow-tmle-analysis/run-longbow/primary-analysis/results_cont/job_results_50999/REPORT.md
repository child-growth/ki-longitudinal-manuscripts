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
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            197     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             37     234
Birth       ki0047075b-MAL-ED       BRAZIL                         1            170     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4     174
Birth       ki0047075b-MAL-ED       INDIA                          1             92     190
Birth       ki0047075b-MAL-ED       INDIA                          0             98     190
Birth       ki0047075b-MAL-ED       NEPAL                          1            170     171
Birth       ki0047075b-MAL-ED       NEPAL                          0              1     171
Birth       ki0047075b-MAL-ED       PERU                           1             62     250
Birth       ki0047075b-MAL-ED       PERU                           0            188     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            211     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            113     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             25      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2      27
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          13187   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           6405   19592
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            606     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            216     822
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
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            555     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26     581
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1881    4971
6 months    ki1135781-COHORTS       INDIA                          0           3090    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12038   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4762   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1091    4825
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
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            259     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            552     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     896
24 months   ki1135781-COHORTS       GUATEMALA                      0            819     896
24 months   ki1135781-COHORTS       INDIA                          1           1471    3754
24 months   ki1135781-COHORTS       INDIA                          0           2283    3754
24 months   ki1135781-COHORTS       PHILIPPINES                    1            126     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0            864     990
24 months   ki1148112-LCNI-5        MALAWI                         1              2     572
24 months   ki1148112-LCNI-5        MALAWI                         0            570     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6111    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2511    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3683    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1064    4747


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
![](/tmp/c241aaed-0401-4dfa-a852-e1c3a08951cb/6845fc92-e766-4cc8-be43-4b2866cf370a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c241aaed-0401-4dfa-a852-e1c3a08951cb/6845fc92-e766-4cc8-be43-4b2866cf370a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c241aaed-0401-4dfa-a852-e1c3a08951cb/6845fc92-e766-4cc8-be43-4b2866cf370a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.0299671   -1.1707562   -0.8891780
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.0038835   -1.3184283   -0.6893387
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.0164182   -1.2434553   -0.7893811
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -0.9884281   -1.1669490   -0.8099072
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.8213870   -1.0362595   -0.6065145
Birth       ki0047075b-MAL-ED       PERU          0                    NA                -0.9649936   -1.0973335   -0.8326537
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3777778   -0.9207364    0.1651808
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.6010526   -1.0492335   -0.1528718
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0807244   -0.2544303    0.4158792
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0335373   -0.1472695    0.0801950
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.5404694   -0.5971384   -0.4838003
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.7658010   -0.8088284   -0.7227735
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0558345   -0.0909834    0.2026524
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.3719253   -0.4404940   -0.3033566
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.5475208   -1.5710698   -1.5239717
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.6501731   -1.6885598   -1.6117864
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.4769784   -1.5707254   -1.3832314
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.5809246   -1.7613489   -1.4005003
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.2008632   -1.3324330   -1.0692934
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.2241085   -1.4839810   -0.9642361
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -1.1979750   -1.3649297   -1.0310202
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -1.2250705   -1.3970430   -1.0530980
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -1.3822310   -1.6292028   -1.1352592
6 months    ki0047075b-MAL-ED       PERU          0                    NA                -1.3156786   -1.4415254   -1.1898318
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.3023313   -1.4445017   -1.1601609
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.4800675   -1.5921007   -1.3680342
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                -1.0798506   -1.1577315   -1.0019697
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -1.4714317   -1.7929343   -1.1499292
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2125504   -1.2885242   -1.1365766
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.1433629   -1.3624265   -0.9242992
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.2931515   -0.4730311   -0.1132718
6 months    ki1114097-CONTENT       PERU          0                    NA                -0.7552630   -1.5039875   -0.0065385
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -1.6913289   -1.9528498   -1.4298079
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -1.8917434   -1.9798428   -1.8036440
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.8535472   -0.9080711   -0.7990232
6 months    ki1135781-COHORTS       INDIA         0                    NA                -1.1709248   -1.2126036   -1.1292460
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.6733031   -0.8486050   -0.4980011
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -1.2728231   -1.3432277   -1.2024185
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2809696   -1.3065701   -1.2553691
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.4157169   -1.4548659   -1.3765679
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.3167808   -1.3586495   -1.2749121
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.4609390   -1.5411855   -1.3806925
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.9435697   -2.0822465   -1.8048929
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.9587800   -2.2628896   -1.6546705
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -1.7141534   -1.8841020   -1.5442047
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.9444935   -2.1260318   -1.7629552
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -1.7488101   -2.0089534   -1.4886667
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -1.7378240   -1.8835679   -1.5920801
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -2.0635139   -2.2332239   -1.8938040
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -2.2873491   -2.4120801   -2.1626180
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                -1.5635960   -1.6478614   -1.4793306
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -2.0912291   -2.5895219   -1.5929364
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.4337009   -1.5253327   -1.3420691
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.4104557   -1.6425018   -1.1784096
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.6500808   -0.8295196   -0.4706419
24 months   ki1114097-CONTENT       PERU          0                    NA                -1.0640607   -1.5852929   -0.5428285
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -2.5551344   -2.8284766   -2.2817922
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -2.8825256   -2.9566238   -2.8084275
24 months   ki1135781-COHORTS       INDIA         1                    NA                -1.6907976   -1.7520760   -1.6295192
24 months   ki1135781-COHORTS       INDIA         0                    NA                -2.2128732   -2.2637649   -2.1619815
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -1.7023822   -1.8846095   -1.5201549
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -2.6858012   -2.7576166   -2.6139859
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.9608877   -1.9927130   -1.9290623
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -2.1754148   -2.2245188   -2.1263108
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.7163525   -1.7570320   -1.6756730
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.9241176   -1.9836041   -1.8646312


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9912632   -1.1342711   -0.8482552
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.9430000   -1.0581275   -0.8278725
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.5751797   -1.5949356   -1.5554237
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -1.2137196   -1.3330761   -1.0943631
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                -1.3210330   -1.4311040   -1.2109619
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -1.0925674   -1.1686395   -1.0164954
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.3134804   -1.3366079   -1.2903528
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -1.8372222   -1.9638017   -1.7106427
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                -1.7514286   -1.8732727   -1.6295845
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -1.5853993   -1.6687810   -1.5020176
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.4297217   -1.5139732   -1.3454701
24 months   ki1114097-CONTENT       PERU          NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -2.8674777   -2.9383136   -2.7966417
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -2.0003783   -2.0396528   -1.9611037
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -2.5681010   -2.6370882   -2.4991138
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -2.0126943   -2.0403978   -1.9849907
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.7578934   -1.7933205   -1.7224663


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0260836   -0.3189214    0.3710886
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                  0.0279900   -0.2603374    0.3163175
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                 -0.1436066   -0.3970226    0.1098094
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.2232749   -0.9273133    0.4807636
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1142617   -0.4683378    0.2398144
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.2253316   -0.2961997   -0.1544634
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.4277598   -0.5891982   -0.2663215
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1026523   -0.1451571   -0.0601476
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1039462   -0.3065680    0.0986757
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0232453   -0.3145152    0.2680245
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0270956   -0.2672199    0.2130287
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0665524   -0.2119890    0.3450938
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1777361   -0.3575283    0.0020560
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    1                 -0.3915812   -0.7205052   -0.0626572
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0691875   -0.1626998    0.3010749
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.4621116   -1.2352510    0.3110278
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2004145   -0.4765966    0.0757675
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.3173777   -0.3852980   -0.2494573
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.5995200   -0.7886620   -0.4103781
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1347473   -0.1752259   -0.0942688
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1441582   -0.2336054   -0.0547110
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0152103   -0.3501953    0.3197746
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2303401   -0.4763639    0.0156837
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                  0.0109861   -0.2858464    0.3078185
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.2238351   -0.4322270   -0.0154433
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 -0.5276331   -1.0330188   -0.0222474
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0232452   -0.2259344    0.2724248
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                 -0.4139799   -0.9630232    0.1350633
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.3273912   -0.6106900   -0.0440925
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.5220756   -0.6018651   -0.4422861
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.9834190   -1.1795762   -0.7872619
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.2145271   -0.2681476   -0.1609066
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.2077651   -0.2775210   -0.1380092


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0070184   -0.0469788    0.0610156
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                 0.0251550   -0.1269239    0.1772340
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1216130   -0.3144593    0.0712333
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1515079   -0.6308647    0.3278488
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1082601   -0.4307385    0.2142183
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.1372421   -0.1837353   -0.0907490
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.3695709   -0.5097825   -0.2293592
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0276589   -0.0399970   -0.0153208
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0206858   -0.0740613    0.0326896
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0025048   -0.0476744    0.0426648
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0157446   -0.1448814    0.1133921
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0611981   -0.1552467    0.2776428
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1050507   -0.2166450    0.0065435
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0127169   -0.0273575    0.0019238
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0094467   -0.0193830    0.0382764
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0207703   -0.0640084    0.0224679
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1875921   -0.4430582    0.0678740
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1878952   -0.2329336   -0.1428568
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5209905   -0.6869732   -0.3550079
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0325108   -0.0433374   -0.0216841
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0272669   -0.0462790   -0.0082548
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0004565   -0.0482557    0.0491687
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1230689   -0.2572643    0.0111266
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0026185   -0.2369955    0.2317585
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1172805   -0.2441796    0.0096185
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0218033   -0.0431510   -0.0004556
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0039793   -0.0284427    0.0364012
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.0461388   -0.0931874    0.0009098
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.3123433   -0.5784982   -0.0461883
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.3095807   -0.3596896   -0.2594717
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8657188   -1.0423864   -0.6890512
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0518066   -0.0674833   -0.0361298
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0415409   -0.0575919   -0.0254899

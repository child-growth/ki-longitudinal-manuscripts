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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            168     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             33     201
Birth       ki0047075b-MAL-ED       BRAZIL                         1             56      57
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      57
Birth       ki0047075b-MAL-ED       INDIA                          1             14      39
Birth       ki0047075b-MAL-ED       INDIA                          0             25      39
Birth       ki0047075b-MAL-ED       NEPAL                          1             24      25
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      25
Birth       ki0047075b-MAL-ED       PERU                           1             50     203
Birth       ki0047075b-MAL-ED       PERU                           0            153     203
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             94      94
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            110     110
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            222     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            353     575
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            610     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             86     696
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             43     449
Birth       ki1135781-COHORTS       GUATEMALA                      0            406     449
Birth       ki1135781-COHORTS       INDIA                          1           1685    4461
Birth       ki1135781-COHORTS       INDIA                          0           2776    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          12413   17991
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           5578   17991
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           1859    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            535    2394
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
6 months    ki1017093b-PROVIDE      BANGLADESH                     1             11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      11
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
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/17ad12f2-ef75-4de9-a150-839338c259bb/f778293e-9a93-4754-87c2-fc3f0ea247e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/17ad12f2-ef75-4de9-a150-839338c259bb/f778293e-9a93-4754-87c2-fc3f0ea247e3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/17ad12f2-ef75-4de9-a150-839338c259bb/f778293e-9a93-4754-87c2-fc3f0ea247e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.9877252   -1.1503589   -0.8250915
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.9330777   -1.3426411   -0.5235142
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.0819085   -1.6327337   -0.5310833
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -0.8530330   -1.2302531   -0.4758128
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1771680   -0.3960864    0.0417505
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0044909   -0.1625226    0.1715044
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.3498306   -1.5126234   -1.1870377
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.3468628   -1.4611941   -1.2325315
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2302406   -1.3198553   -1.1406259
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.2984362   -1.5616920   -1.0351805
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -1.1760359   -1.8359378   -0.5161341
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.8936058   -1.0375363   -0.7496752
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.9504772   -1.0118638   -0.8890907
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.9920411   -1.0365049   -0.9475774
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8613098   -1.0354381   -0.6871815
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6457746   -0.7267392   -0.5648101
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.7652837   -0.7883435   -0.7422239
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.8054421   -0.8387244   -0.7721598
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.6710603   -0.7303926   -0.6117280
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.7342969   -0.8399486   -0.6286452
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.1290300   -0.2704522    0.0123923
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1524852   -0.4884618    0.1834915
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.6772215   -0.8570802   -0.4973627
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.7368524   -0.9149721   -0.5587327
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.9823825    0.7365997    1.2281652
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 1.0240625    0.8723209    1.1758041
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3468564   -0.4863086   -0.2074041
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.5101286   -0.6261774   -0.3940797
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0361433   -0.0478042    0.1200909
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0015039   -0.2476530    0.2506607
6 months    ki1114097-CONTENT       PERU          1                    NA                 1.0736177    0.9515386    1.1956968
6 months    ki1114097-CONTENT       PERU          0                    NA                 0.9530688    0.5663747    1.3397628
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.1845052   -0.0982511    0.4672615
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                 0.1484115    0.0557029    0.2411201
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.6023457   -0.6570640   -0.5476273
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.7875023   -0.8296853   -0.7453194
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.2428823   -0.4109827   -0.0747819
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.2915570   -0.3616445   -0.2214696
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.5728239   -0.5956873   -0.5499606
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.6620394   -0.7017145   -0.6223643
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.3559369   -0.3975627   -0.3143111
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.5259649   -0.6143531   -0.4375766
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.7727987   -0.9038508   -0.6417466
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.0686263   -1.4042795   -0.7329732
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.8030856   -0.9840066   -0.6221645
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.0394638   -1.1890977   -0.8898299
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0956239   -0.2112037    0.4024515
24 months   ki0047075b-MAL-ED       PERU          0                    NA                 0.1225176   -0.0271711    0.2722062
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.8470819   -0.9907331   -0.7034306
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.9558069   -1.0864856   -0.8251282
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.6252866   -0.7302887   -0.5202844
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.5264824   -0.7587671   -0.2941976
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.5575393    0.4111468    0.7039318
24 months   ki1114097-CONTENT       PERU          0                    NA                 0.6013424    0.3288857    0.8737990
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0931203   -0.2846705    0.0984299
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.2928241   -0.3556994   -0.2299487
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.5679951   -0.6220828   -0.5139074
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.7330829   -0.7755677   -0.6905980
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5571103   -0.7162898   -0.3979308
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6816377   -0.7445839   -0.6186916
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2802835   -1.3083388   -1.2522282
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.3386839   -1.3850448   -1.2923231
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.2083561   -1.2433819   -1.1733302
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.2799884   -1.3570228   -1.2029539


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.0381281   -0.1669868    0.0907307
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2402802   -1.3249395   -1.1556208
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.7777528   -0.7967725   -0.7587330
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -0.7018062   -0.8289790   -0.5746333
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                 1.0372972    0.9141109    1.1604836
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                 0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                 0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.5931476   -0.6127125   -0.5735828
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9490222   -1.0651720   -0.8328724
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                 0.0972406   -0.0271085    0.2215898
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.9115790   -1.0095022   -0.8136559
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
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0546475   -0.3863916    0.4956866
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                  0.2288755   -0.4432713    0.9010223
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                  0.1816589   -0.0944791    0.4577968
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                  0.0029678   -0.1949949    0.2009304
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 -0.0681956   -0.3467210    0.2103297
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                  0.2824301   -0.3925169    0.9573772
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.0415639   -0.1172873    0.0341595
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                  0.2155352    0.0238787    0.4071916
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0401584   -0.0785350   -0.0017817
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0632366   -0.1828888    0.0564156
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0234552   -0.3879291    0.3410187
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0596309   -0.3138285    0.1945666
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0416800   -0.2480020    0.3313620
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1632722   -0.3440488    0.0175044
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 -0.0346395   -0.2973012    0.2280223
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.1205489   -0.5275655    0.2864676
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.0360937   -0.3339458    0.2617583
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.1851567   -0.2541506   -0.1161628
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.0486747   -0.2311771    0.1338276
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0892155   -0.1331317   -0.0452993
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1700280   -0.2667296   -0.0733264
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.2958277   -0.6567669    0.0651115
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2363783   -0.4718242   -0.0009323
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                  0.0268937   -0.3152814    0.3690688
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1087250   -0.3013036    0.0838536
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0988042   -0.1558398    0.3534482
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                  0.0438031   -0.2655787    0.3531848
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1997038   -0.4021879    0.0027803
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.1650878   -0.2334036   -0.0967720
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.1245274   -0.2962625    0.0472076
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0584004   -0.1111479   -0.0056530
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0716323   -0.1546030    0.0113384


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0148894   -0.0534513    0.0832301
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                 0.1378059   -0.3083013    0.5839132
Birth       ki0047075b-MAL-ED       PERU          1                    NA                 0.1390399   -0.0663271    0.3444069
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0000912   -0.1218299    0.1216475
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0100396   -0.0441616    0.0240825
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2465927   -0.3755863    0.8687717
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0266961   -0.0759501    0.0225579
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1772068    0.0136432    0.3407703
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0124690   -0.0237172   -0.0012209
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0171895   -0.0431202    0.0087412
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0043034   -0.0600996    0.0514929
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0245847   -0.1604460    0.1112766
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0549147   -0.1710357    0.2808652
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1005474   -0.2132167    0.0121219
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0024644   -0.0349741    0.0300454
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0051859   -0.0323739    0.0220021
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0386542   -0.3129919    0.2356836
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1081398   -0.1534707   -0.0628089
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0401463   -0.2017680    0.1214753
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0203237   -0.0313344   -0.0093130
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0342226   -0.0538524   -0.0145928
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0464938   -0.0995049    0.0065174
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1459367   -0.2737957   -0.0180776
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0016168   -0.2783299    0.2815634
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0644972   -0.1808229    0.0518286
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0137160   -0.0211066    0.0485386
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.0092900   -0.0238504    0.0424303
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1930702   -0.3794155   -0.0067249
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0926924   -0.1356123   -0.0497724
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0993046   -0.2515933    0.0529841
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0167583   -0.0314658   -0.0020508
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0148215   -0.0310798    0.0014367

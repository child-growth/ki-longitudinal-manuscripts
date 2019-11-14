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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat      studyid                   country                        earlybf    n_cell       n
----------  ------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             140     214
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              74     214
Birth       ki0047075b-MAL-ED         BRAZIL                         1              26      62
Birth       ki0047075b-MAL-ED         BRAZIL                         0              36      62
Birth       ki0047075b-MAL-ED         INDIA                          1              31      44
Birth       ki0047075b-MAL-ED         INDIA                          0              13      44
Birth       ki0047075b-MAL-ED         NEPAL                          1              14      26
Birth       ki0047075b-MAL-ED         NEPAL                          0              12      26
Birth       ki0047075b-MAL-ED         PERU                           1             172     228
Birth       ki0047075b-MAL-ED         PERU                           0              56     228
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1              69     110
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              41     110
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             103     115
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              12     115
Birth       ki1000109-EE              PAKISTAN                       1              36     170
Birth       ki1000109-EE              PAKISTAN                       0             134     170
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              79    1072
Birth       ki1000304b-SAS-CompFeed   INDIA                          0             993    1072
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1             613     707
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0              94     707
Birth       ki1113344-GMS-Nepal       NEPAL                          1             171     586
Birth       ki1113344-GMS-Nepal       NEPAL                          0             415     586
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6142   11514
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5372   11514
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             124   22000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           21876   22000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1            1624    2396
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             772    2396
6 months    ki0047075b-MAL-ED         BANGLADESH                     1             147     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0              93     240
6 months    ki0047075b-MAL-ED         BRAZIL                         1              95     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0             114     209
6 months    ki0047075b-MAL-ED         INDIA                          1             140     236
6 months    ki0047075b-MAL-ED         INDIA                          0              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          1              96     236
6 months    ki0047075b-MAL-ED         NEPAL                          0             140     236
6 months    ki0047075b-MAL-ED         PERU                           1             202     273
6 months    ki0047075b-MAL-ED         PERU                           0              71     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1             156     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0              94     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    ki1000109-EE              PAKISTAN                       1              69     364
6 months    ki1000109-EE              PAKISTAN                       0             295     364
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              97    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1237    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0             360     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            4065    7553
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3488    7553
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              36   16726
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16690   16726
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3095    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1738    4833
24 months   ki0047075b-MAL-ED         BANGLADESH                     1             128     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0              83     211
24 months   ki0047075b-MAL-ED         BRAZIL                         1              80     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0              89     169
24 months   ki0047075b-MAL-ED         INDIA                          1             134     227
24 months   ki0047075b-MAL-ED         INDIA                          0              93     227
24 months   ki0047075b-MAL-ED         NEPAL                          1              95     228
24 months   ki0047075b-MAL-ED         NEPAL                          0             133     228
24 months   ki0047075b-MAL-ED         PERU                           1             149     201
24 months   ki0047075b-MAL-ED         PERU                           0              52     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1             144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0              91     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   ki1000109-EE              PAKISTAN                       1              32     164
24 months   ki1000109-EE              PAKISTAN                       0             132     164
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1             443     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0              71     514
24 months   ki1113344-GMS-Nepal       NEPAL                          1             131     444
24 months   ki1113344-GMS-Nepal       NEPAL                          0             313     444
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             201     379
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             178     379
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8538
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8537    8538
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3031    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1704    4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/fb00ba08-72f7-4b44-9252-da14d6585cc4/9bb82054-dfc9-4bc4-9b88-3398f14fff19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fb00ba08-72f7-4b44-9252-da14d6585cc4/9bb82054-dfc9-4bc4-9b88-3398f14fff19/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fb00ba08-72f7-4b44-9252-da14d6585cc4/9bb82054-dfc9-4bc4-9b88-3398f14fff19/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8854205   -1.0642534   -0.7065877
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0499032   -1.3005199   -0.7992865
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2667149   -0.2328160    0.7662458
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5038465    0.0852037    0.9224893
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.8323592   -1.1928139   -0.4719046
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -1.1533203   -1.6224937   -0.6841469
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.7232794   -1.2144981   -0.2320607
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8162848   -1.3629708   -0.2695989
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0949199   -0.2339599    0.0441201
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                 0.0849708   -0.1571884    0.3271299
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0927270   -0.3518271    0.1663731
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1835551   -0.5682482    0.2011380
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7889575    0.5852763    0.9926387
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5344277   -0.0639874    1.1328428
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1692899   -0.4881659    0.1495861
Birth       ki1000109-EE              PAKISTAN                       0                    NA                -0.3885190   -0.6080741   -0.1689639
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.7532932   -1.1673721   -0.3392143
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6662818   -0.8340476   -0.4985160
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -1.2469515   -1.3365930   -1.1573099
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -1.2702971   -1.4779012   -1.0626931
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1784225   -1.3495772   -1.0072678
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1046364   -1.2082045   -1.0010682
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.4617588   -0.4969740   -0.4265437
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.5975215   -0.6355505   -0.5594926
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.8774797   -0.9158636   -0.8390958
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7492814   -0.7675114   -0.7310513
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.6663364   -0.7258109   -0.6068619
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.7312283   -0.8295389   -0.6329177
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1095065   -0.2728761    0.0538632
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1718708   -0.3896984    0.0459569
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.1280680    0.8934575    1.3626784
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.9186139    0.6884349    1.1487930
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.7620183   -0.9314682   -0.5925685
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.6550341   -0.8451928   -0.4648754
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0107403   -0.2219826    0.2005020
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1806233    0.0134163    0.3478303
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 1.0043705    0.8607485    1.1479925
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.1814120    0.9537256    1.4090984
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5467784    0.3453015    0.7482554
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5828455    0.3414381    0.8242529
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5049764    0.3635255    0.6464273
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7272806    0.3767234    1.0778378
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.7055706   -0.9813297   -0.4298116
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -0.7945074   -0.9209594   -0.6680554
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6213626   -1.1358836   -0.1068417
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6709391   -0.8034378   -0.5384405
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0388715   -0.0465411    0.1242841
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0203348   -0.2264447    0.1857750
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.4448661   -0.6157835   -0.2739487
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.6412593   -0.7480048   -0.5345139
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.3086371    0.2719233    0.3453510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.2994752    0.2586116    0.3403389
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.6855061   -0.7170185   -0.6539937
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.5928388   -0.6129060   -0.5727716
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.3895919   -0.4340190   -0.3451647
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.3926661   -0.4540070   -0.3313252
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.7894703   -0.9473710   -0.6315696
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.8556129   -1.0539899   -0.6572360
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.3349544    0.0257887    0.6441202
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5151491    0.2420178    0.7882804
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9768200   -1.1331465   -0.8204935
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8945198   -1.0674245   -0.7216150
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4945072   -0.6713226   -0.3176919
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.3019887   -0.4478512   -0.1561262
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0900087   -0.0548204    0.2348378
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.2186442    0.0325707    0.4047177
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.4135056    0.2529722    0.5740389
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.4119308    0.2225429    0.6013188
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0840335   -0.0510928    0.2191599
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1594009   -0.4989712    0.1801693
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.9463445   -1.2742031   -0.6184858
24 months   ki1000109-EE              PAKISTAN                       0                    NA                -1.0134267   -1.1856632   -0.8411903
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.6500522   -0.7505473   -0.5495572
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.3323703   -0.6087137   -0.0560269
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.0298304   -1.1928419   -0.8668189
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1601202   -1.2723397   -1.0479007
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -1.1491784   -1.2927168   -1.0056399
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -1.2490787   -1.4139911   -1.0841663
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.2339826   -1.2740850   -1.1938802
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.2058105   -1.2601165   -1.1515044


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9384112   -1.0842088   -0.7926136
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9122727   -1.1899971   -0.6345483
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1690000   -0.3880340    0.0500340
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000109-EE              PAKISTAN                       NA                   NA                -0.3522059   -0.5428560   -0.1615557
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6676026   -0.8422097   -0.4929956
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1260580   -1.2184297   -1.0336863
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.5262098   -0.5537283   -0.4986913
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7500405   -0.7678845   -0.7321964
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1323472   -0.2612119   -0.0034826
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5505800    0.3970988    0.7040612
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -0.7725778   -0.8877440   -0.6574117
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.5843738   -0.6761994   -0.4925481
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.3072633    0.2799882    0.3345385
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.5930207   -0.6125866   -0.5734549
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8150711   -0.9374454   -0.6926967
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4211915    0.2990776    0.5433054
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1000109-EE              PAKISTAN                       NA                   NA                -1.0044512   -1.1543739   -0.8545285
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1339602   -1.2266932   -1.0412272
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -1.1970712   -1.3045749   -1.0895676
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1644826   -0.4728030    0.1438378
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.2371315   -0.4091052    0.8833683
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                 -0.3209611   -0.9182994    0.2763772
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0930054   -0.8467933    0.6607824
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                  0.1798907   -0.0997279    0.4595092
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0908281   -0.5572761    0.3756199
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2545298   -0.8901186    0.3810589
Birth       ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE              PAKISTAN                       0                    1                 -0.2192291   -0.6059857    0.1675275
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0870114   -0.2644059    0.4384287
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0233456   -0.2448278    0.1981365
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0737861   -0.1178189    0.2653912
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.1357627   -0.1836735   -0.0878519
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.1281984    0.0865680    0.1698287
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0648919   -0.1774819    0.0476981
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0623643   -0.3351481    0.2104196
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.2094540   -0.5403117    0.1214037
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.1069842   -0.1485376    0.3625060
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1913636   -0.0778351    0.4605623
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.1770415   -0.0917317    0.4458146
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0360670   -0.2788882    0.3510223
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2223042   -0.1561129    0.6007214
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                 -0.0889368   -0.3903894    0.2125159
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0495765   -0.5438104    0.4446575
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 -0.0592063   -0.2822401    0.1638274
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1963932   -0.3954797    0.0026933
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0091619   -0.0636081    0.0452843
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0926673    0.0549211    0.1304135
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.0030742   -0.0756998    0.0695513
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0661426   -0.3186849    0.1863997
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1801947   -0.2299109    0.5903002
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0823003   -0.1514141    0.3160146
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1925186   -0.0358199    0.4208571
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1286355   -0.1010719    0.3583429
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0015748   -0.2501109    0.2469614
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2434345   -0.6087557    0.1218867
24 months   ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE              PAKISTAN                       0                    1                 -0.0670823   -0.4398222    0.3056576
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                  0.3176819    0.0238492    0.6115147
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1302898   -0.3287971    0.0682175
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 -0.0999004   -0.3185865    0.1187857
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0281722   -0.0396458    0.0959901


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0529907   -0.1609680    0.0549867
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1361883   -0.2463612    0.5187377
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0799135   -0.2526737    0.0928467
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0451821   -0.3994905    0.3091262
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0429024   -0.0260824    0.1118871
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0762730   -0.2583822    0.1058362
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0265227   -0.0911300    0.0380846
Birth       ki1000109-EE              PAKISTAN                       1                    NA                -0.1829160   -0.4904945    0.1246626
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0856906   -0.2439052    0.4152864
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0028001   -0.0268783    0.0324786
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0523645   -0.0833101    0.1880391
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0644510   -0.0879827   -0.0409193
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.1274393    0.0868458    0.1680328
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0222905   -0.0586162    0.0140352
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0228407   -0.1255213    0.0798398
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1563455   -0.3390290    0.0263380
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0537486   -0.0494973    0.1569944
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1217855   -0.0384215    0.2819925
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0525281   -0.0180293    0.1230855
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0038016   -0.1141427    0.1217458
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0312450   -0.0326652    0.0951551
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -0.0670072   -0.3164574    0.1824430
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0443458   -0.5067091    0.4180176
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0091093   -0.0389068    0.0206883
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1395077   -0.2805646    0.0015493
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0013738   -0.0267238    0.0239762
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0924854    0.0556792    0.1292915
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0002136   -0.0260921    0.0256649
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0256008   -0.1231121    0.0719105
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1242763   -0.0935012    0.3420538
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0245293   -0.0710317    0.1200903
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1180599   -0.0154388    0.2515586
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0304391   -0.0288509    0.0897291
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0076859   -0.0879980    0.1033698
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0300849   -0.0869317    0.0267618
24 months   ki1000109-EE              PAKISTAN                       1                    NA                -0.0581068   -0.3683770    0.2521635
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0397020   -0.0001950    0.0795991
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1041298   -0.2447609    0.0365012
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                -0.0478929   -0.1496224    0.0538367
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0108739   -0.0132998    0.0350475

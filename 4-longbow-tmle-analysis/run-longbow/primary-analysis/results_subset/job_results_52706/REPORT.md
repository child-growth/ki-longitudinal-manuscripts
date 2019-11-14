---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
![](/tmp/149cb69a-2473-4316-91e2-0f5204ad618c/27878a9a-36f2-497f-8b4f-23ba027a840c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.9112592   -1.0973635   -0.7251549
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.4998870    0.0852997    0.9144743
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.8296813   -1.1867255   -0.4726370
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.6719616   -1.0658598   -0.2780635
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0651609   -0.1783550    0.3086768
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1436439   -0.4878554    0.2005676
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6079854    0.2763380    0.9396329
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -0.1727056   -0.4563424    0.1109313
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.7195864   -0.9168072   -0.5223655
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.3582243   -1.5263144   -1.1901341
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1338150   -1.2373083   -1.0303218
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.4503704   -0.4859372   -0.4148036
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.2563541    0.1697125    0.3429957
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.6664628   -0.7261601   -0.6067656
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1805975   -0.3695575    0.0083625
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           1.1229175    0.8869337    1.3589014
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.6262716   -0.8064939   -0.4460493
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1760845    0.0120205    0.3401486
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           1.2260964    1.0154083    1.4367846
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.3797133    0.1565884    0.6028382
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6550794    0.3056290    1.0045298
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.8232658   -1.0350655   -0.6114661
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.8198983   -0.9782320   -0.6615646
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.0203191   -0.1088979    0.1495360
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.4504039   -0.6249341   -0.2758737
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed           0.2962331    0.2580100    0.3344561
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.7712014   -0.7973794   -0.7450233
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.3602801   -0.4141259   -0.3064343
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.8424038   -1.0091888   -0.6756188
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.7055720    0.4262831    0.9848608
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9199771   -1.0898589   -0.7500952
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2943674   -0.4372840   -0.1514507
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.1718726   -0.0240820    0.3678272
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.2215083    0.0635736    0.3794429
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1105850   -0.2821733    0.0610033
24 months   ki1000109-EE              PAKISTAN                       optimal              observed          -1.0066051   -1.2857195   -0.7274907
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.3597515   -0.6254708   -0.0940321
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.0642983   -1.2296529   -0.8989437
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -1.1573435   -1.3140637   -1.0006233
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.2264095   -1.2760291   -1.1767898


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.9384112   -1.0842088   -0.7926136
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9122727   -1.1899971   -0.6345483
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.1690000   -0.3880340    0.0500340
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1000109-EE              PAKISTAN                       observed             observed          -0.3522059   -0.5428560   -0.1615557
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6676026   -0.8422097   -0.4929956
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1260580   -1.2184297   -1.0336863
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.5262098   -0.5537283   -0.4986913
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.7500405   -0.7678845   -0.7321964
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.1323472   -0.2612119   -0.0034826
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED         PERU                           observed             observed           1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.5505800    0.3970988    0.7040612
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -0.7725778   -0.8877440   -0.6574117
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -0.5843738   -0.6761994   -0.4925481
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed           0.3072633    0.2799882    0.3345385
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.5930207   -0.6125866   -0.5734549
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.8150711   -0.9374454   -0.6926967
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED         PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.4211915    0.2990776    0.5433054
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1000109-EE              PAKISTAN                       observed             observed          -1.0044512   -1.1543739   -0.8545285
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1339602   -1.2266932   -1.0412272
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -1.1970712   -1.3045749   -1.0895676
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0271520   -0.1392458    0.0849418
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0969838   -0.3691186    0.1751509
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0825915   -0.2558962    0.0907133
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0964999   -0.4716615    0.2786617
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1171785   -0.3295311    0.0951741
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0253561   -0.2530044    0.2022922
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1544493   -0.0995007    0.4083994
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -0.1795003   -0.4188915    0.0598909
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0519837   -0.0909868    0.1949543
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.1140729   -0.0329339    0.2610797
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0077570   -0.0583575    0.0738715
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0758395   -0.0994561   -0.0522229
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.0063946   -1.0951548   -0.9176343
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0221641   -0.0670903    0.0227622
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0482503   -0.0712292    0.1677298
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1511951   -0.3201227    0.0177326
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0819982   -0.2295836    0.0655873
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0650393   -0.1749697    0.0448910
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1691978   -0.3409516    0.0025561
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.1708667    0.0054735    0.3362599
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1188581   -0.4324931    0.1947769
6 months    ki1000109-EE              PAKISTAN                       optimal              observed           0.0506880   -0.1322108    0.2335867
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.1541899   -0.0558474    0.3642272
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.0094432   -0.0905785    0.1094648
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1339698   -0.2789488    0.0110091
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed           0.0110303   -0.0157062    0.0377667
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed           0.1781806    0.1555567    0.2008046
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0295254   -0.0678297    0.0087789
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0273327   -0.0841439    0.1388093
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.2463412   -0.4508300   -0.0418524
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0323137   -0.1670923    0.1024649
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0820800   -0.1793310    0.0151710
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0514249   -0.2098036    0.1069539
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.1996832    0.0780434    0.3213231
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1645336    0.0336827    0.2953845
24 months   ki1000109-EE              PAKISTAN                       optimal              observed           0.0021539   -0.2608880    0.2651958
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.2505987   -0.4954678   -0.0057296
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0696619   -0.2113392    0.0720153
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0397277   -0.1497925    0.0703370
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.0033007   -0.0349521    0.0415535

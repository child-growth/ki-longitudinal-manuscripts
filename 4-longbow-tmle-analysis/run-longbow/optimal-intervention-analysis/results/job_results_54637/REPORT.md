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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED         BANGLADESH                     1             147     230
Birth       ki0047075b-MAL-ED         BANGLADESH                     0              83     230
Birth       ki0047075b-MAL-ED         BRAZIL                         1              28      65
Birth       ki0047075b-MAL-ED         BRAZIL                         0              37      65
Birth       ki0047075b-MAL-ED         INDIA                          1              32      46
Birth       ki0047075b-MAL-ED         INDIA                          0              14      46
Birth       ki0047075b-MAL-ED         NEPAL                          1              14      27
Birth       ki0047075b-MAL-ED         NEPAL                          0              13      27
Birth       ki0047075b-MAL-ED         PERU                           1             175     233
Birth       ki0047075b-MAL-ED         PERU                           0              58     233
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1              69     111
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0              42     111
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     125
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              14     125
Birth       ki1000109-EE              PAKISTAN                       1              44     229
Birth       ki1000109-EE              PAKISTAN                       0             185     229
Birth       ki1000304b-SAS-CompFeed   INDIA                          1              86    1207
Birth       ki1000304b-SAS-CompFeed   INDIA                          0            1121    1207
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1             634     732
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0              98     732
Birth       ki1113344-GMS-Nepal       NEPAL                          1             180     632
Birth       ki1113344-GMS-Nepal       NEPAL                          0             452     632
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1            6556   12354
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0            5798   12354
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             236   22370
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           22134   22370
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1            1912    2823
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0             911    2823
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
6 months    ki1000109-EE              PAKISTAN                       1              68     362
6 months    ki1000109-EE              PAKISTAN                       0             294     362
6 months    ki1000304b-SAS-CompFeed   INDIA                          1              98    1336
6 months    ki1000304b-SAS-CompFeed   INDIA                          0            1238    1336
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1             619     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0              96     715
6 months    ki1113344-GMS-Nepal       NEPAL                          1             151     511
6 months    ki1113344-GMS-Nepal       NEPAL                          0             360     511
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1            4146    7698
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0            3552    7698
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16776   16811
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1            3094    4831
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0            1737    4831
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
24 months   ki1113344-GMS-Nepal       NEPAL                          1             131     445
24 months   ki1113344-GMS-Nepal       NEPAL                          0             314     445
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1             717    1406
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0             689    1406
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8632
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8631    8632
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1            3042    4752
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0            1710    4752


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
![](/tmp/8324ac85-bb8c-4a0f-8ec0-53cd29cb3a2f/8015e8c3-15f1-4bee-80e0-603355e560c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.9823815   -1.1417273   -0.8230358
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.4761614   -0.9522147   -0.0001082
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.1604857   -1.5276946   -0.7932767
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.9930143   -1.5839157   -0.4021130
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.7873945   -0.9434317   -0.6313572
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.5071366   -0.7238472   -0.2904259
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1184152   -1.3335917   -0.9032387
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -1.7754743   -2.0429576   -1.5079911
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.1857407   -1.4389465   -0.9325349
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.0451765   -1.1946210   -0.8957321
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.9586495   -1.1042384   -0.8130606
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.4648890   -0.4955921   -0.4341859
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.2347807   -1.3023550   -1.1672063
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.5082150   -1.5655698   -1.4508602
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.1728875   -1.3204908   -1.0252842
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1281837   -0.0676175    0.3239848
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.1972506   -1.3491422   -1.0453589
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4739138   -0.6261049   -0.3217228
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.4437541   -1.6186611   -1.2688470
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.0530205   -1.2159089   -0.8901321
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3766588   -1.5454793   -1.2078383
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -2.0855828   -2.3748841   -1.7962816
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.4347740   -1.5647843   -1.3047638
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.0077958   -1.2038450   -0.8117466
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1622946   -1.3103495   -1.0142397
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.8450979   -0.8805589   -0.8096369
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.3013431   -1.3253799   -1.2773064
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.3590308   -1.4086985   -1.3093632
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -2.1283876   -2.2971269   -1.9596484
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1495805   -0.1171670    0.4163280
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.8215765   -2.0146232   -1.6285297
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2645825   -1.4276465   -1.1015185
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.5926675   -1.8266754   -1.3586597
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.6541273   -1.8638277   -1.4444269
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4384816   -2.6121915   -2.2647718
24 months   ki1000109-EE              PAKISTAN                       optimal              observed          -2.8132158   -3.1589389   -2.4674928
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.2164497   -1.3909783   -1.0419211
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.5846479   -1.7315944   -1.4377013
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -1.5675266   -1.6522048   -1.4828485
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7574766   -1.8107794   -1.7041739


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.1218261   -1.2566576   -0.9869945
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2221739   -1.5203945   -0.9239534
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.5709009   -0.7569265   -0.3848753
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1000109-EE              PAKISTAN                       observed             observed          -1.8713537   -2.0647180   -1.6779894
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4072245   -1.4817853   -1.3326638
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.0578481   -1.1411010   -0.9745953
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.4895257   -0.5113672   -0.4676841
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.5896710   -1.6089649   -1.5703770
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2056389   -1.3233420   -1.0879358
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0598800   -1.1885688   -0.9311912
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -2.0838858   -2.2054394   -1.9623322
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.3175310   -1.3993963   -1.2356656
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.8625370   -0.8897591   -0.8353150
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.9735782   -2.1004502   -1.8467062
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6365071   -1.7722110   -1.5008032
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1000109-EE              PAKISTAN                       observed             observed          -2.6678252   -2.8138884   -2.5217620
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8793783   -1.9705101   -1.7882464
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -1.6006366   -1.6621572   -1.5391159
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1394446   -0.2460474   -0.0328417
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1998386   -0.5943705    0.1946934
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0616882   -0.2801482    0.1567717
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1396810   -0.2234243    0.5027864
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0953952   -0.1929947    0.0022042
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0637643   -0.1995092    0.0719805
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0371848   -0.1273487    0.0529791
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -0.0958794   -0.2924956    0.1007369
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.2214838   -0.4194395   -0.0235281
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.1356820    0.0072400    0.2641239
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0991986   -0.2188474    0.0204501
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0246367   -0.0463599   -0.0029134
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.3548903   -0.4210600   -0.2887206
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0150758   -0.0501569    0.0200053
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0327514   -0.1259874    0.0604846
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0806079   -0.2174966    0.0562807
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0142749   -0.1100443    0.0814946
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0876681   -0.1801790    0.0048428
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.1200880   -0.0200853    0.2602613
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0068595   -0.1390557    0.1253367
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0079139   -0.1124589    0.1282867
6 months    ki1000109-EE              PAKISTAN                       optimal              observed           0.0016970   -0.2517549    0.2551489
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0329178   -0.0679865    0.1338221
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.1908825   -0.3733300   -0.0084351
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1552364   -0.2795863   -0.0308864
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0174391   -0.0410691    0.0061909
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0117501   -0.0161186   -0.0073815
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.0142368   -0.0178821    0.0463557
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.1548094    0.0362150    0.2734039
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1434661   -0.3166252    0.0296930
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0646130   -0.2156604    0.0864344
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0430052   -0.1431795    0.0571690
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1598034   -0.3650726    0.0454658
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0176202   -0.1365980    0.1718384
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2070791   -0.3606190   -0.0535392
24 months   ki1000109-EE              PAKISTAN                       optimal              observed           0.1453906   -0.1407279    0.4315092
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.2248149   -0.3918444   -0.0577854
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.2947304   -0.4243204   -0.1651405
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0331099   -0.0938545    0.0276346
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0232452   -0.0654477    0.0189573

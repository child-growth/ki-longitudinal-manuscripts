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
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1             261   26569
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0           26308   26569
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
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1              35   16753
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0           16718   16753
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
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1    8565
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0            8564    8565
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/73e12f4a-f32e-4981-bf65-747bc713564f/3d13c44a-edda-4a61-b5b4-277c59807229/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.9805694   -1.1397205   -0.8214183
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.2918768   -0.7539888    0.1702352
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.0819983   -1.4480896   -0.7159070
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2257758   -1.7331190   -0.7184327
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.8192908   -0.9478225   -0.6907591
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.4980268   -0.7375534   -0.2585002
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1370186   -1.3561000   -0.9179372
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -1.7536787   -2.0293659   -1.4779915
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.1469439   -1.3464953   -0.9473926
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.0244860   -1.1720382   -0.8769338
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.9882274   -1.1323597   -0.8440951
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.4702571   -0.5015159   -0.4389983
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.3936151   -0.4858288   -0.3014014
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.5101947   -1.5678071   -1.4525823
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.1798191   -1.3330143   -1.0266239
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1103426   -0.0794706    0.3001559
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.3565876   -1.5320165   -1.1811586
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4699313   -0.6222209   -0.3176418
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.4178064   -1.5892612   -1.2463516
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.1257069   -1.2960626   -0.9553511
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3268802   -1.4550132   -1.1987472
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -2.0102041   -2.2774718   -1.7429365
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.2918901   -1.5637679   -1.0200123
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.0128824   -1.2085364   -0.8172283
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1598369   -1.3096960   -1.0099778
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.8345901   -0.8701357   -0.7990445
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.3217988   -1.3455414   -1.2980561
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.3613855   -1.4120324   -1.3107386
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.9503437   -2.1290623   -1.7716251
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1210498   -0.1310624    0.3731621
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.9308369   -2.1194316   -1.7422422
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2636564   -1.4260660   -1.1012468
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.5908832   -1.8246667   -1.3570996
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.6121974   -1.8180143   -1.4063806
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5083320   -2.6836128   -2.3330511
24 months   ki1000109-EE              PAKISTAN                       optimal              observed          -2.6822651   -3.0764563   -2.2880738
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -1.2032047   -1.3841163   -1.0222932
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.5963405   -1.7440973   -1.4485836
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -1.5232968   -1.6061571   -1.4404365
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7586791   -1.8119616   -1.7053966


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
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.1723268   -1.2004766   -1.1441770
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2061389   -1.3240265   -1.0882513
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0604867   -1.1892706   -0.9317027
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000109-EE              PAKISTAN                       observed             observed          -2.0838858   -2.2054394   -1.9623322
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.3175310   -1.3993963   -1.2356656
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -0.8625370   -0.8897591   -0.8353150
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3355900   -1.3586765   -1.3125035
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.9740995   -2.1009650   -1.8472341
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6406809   -1.7768402   -1.5045215
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1000109-EE              PAKISTAN                       observed             observed          -2.6678252   -2.8138884   -2.5217620
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8793783   -1.9705101   -1.7882464
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       observed             observed          -1.6006366   -1.6621572   -1.5391159
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.1412567   -0.2474505   -0.0350628
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.3841232   -0.7588191   -0.0094272
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.1401756   -0.3429963    0.0626451
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.3724425    0.0369744    0.7079106
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0634989   -0.1166680   -0.0103298
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0728741   -0.2356831    0.0899349
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0185814   -0.1092763    0.0721135
Birth       ki1000109-EE              PAKISTAN                       optimal              observed          -0.1176750   -0.3228460    0.0874960
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.2602806   -0.4054358   -0.1151254
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed           0.1149915   -0.0143630    0.2443460
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0696207   -0.1900125    0.0507711
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0192686   -0.0414061    0.0028690
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.7787117   -0.8692495   -0.6881739
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0130961   -0.0485166    0.0223244
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0263198   -0.1236901    0.0710504
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0593219   -0.1916836    0.0730398
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed           0.1452175    0.0321251    0.2583100
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0911280   -0.1841939    0.0019380
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.0897112   -0.0496561    0.2290784
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0652202   -0.0678480    0.1982884
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0418647   -0.1072004    0.0234710
6 months    ki1000109-EE              PAKISTAN                       optimal              observed          -0.0736817   -0.3072670    0.1599036
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.1099662   -0.3446051    0.1246727
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.1857960   -0.3677432   -0.0038487
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.1576941   -0.2840698   -0.0313184
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0279469   -0.0512194   -0.0046744
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0137913   -0.0182666   -0.0093159
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.0165915   -0.0139379    0.0471208
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0237558   -0.1505648    0.1030532
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1139492   -0.2898380    0.0619396
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed           0.0459911   -0.0981210    0.1901031
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0482077   -0.1482485    0.0518332
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1635944   -0.3683278    0.0411390
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0284834   -0.1891585    0.1321916
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1368316   -0.2994886    0.0258254
24 months   ki1000109-EE              PAKISTAN                       optimal              observed           0.0144399   -0.3112242    0.3401040
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          -0.2380598   -0.4098747   -0.0662450
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.2830378   -0.4127217   -0.1533539
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          -0.0773398   -0.1382115   -0.0164681
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0220427   -0.0645055    0.0204201

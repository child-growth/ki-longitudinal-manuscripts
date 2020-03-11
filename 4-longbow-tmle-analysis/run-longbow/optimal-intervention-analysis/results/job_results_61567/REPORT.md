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

agecat      studyid        country                        earlybf    n_cell       n
----------  -------------  -----------------------------  --------  -------  ------
Birth       EE             PAKISTAN                       1              44     229
Birth       EE             PAKISTAN                       0             185     229
Birth       GMS-Nepal      NEPAL                          1             180     632
Birth       GMS-Nepal      NEPAL                          0             452     632
Birth       JiVitA-3       BANGLADESH                     1             236   22370
Birth       JiVitA-3       BANGLADESH                     0           22134   22370
Birth       JiVitA-4       BANGLADESH                     1            1912    2823
Birth       JiVitA-4       BANGLADESH                     0             911    2823
Birth       MAL-ED         BANGLADESH                     1             147     230
Birth       MAL-ED         BANGLADESH                     0              83     230
Birth       MAL-ED         BRAZIL                         1              28      65
Birth       MAL-ED         BRAZIL                         0              37      65
Birth       MAL-ED         INDIA                          1              32      46
Birth       MAL-ED         INDIA                          0              14      46
Birth       MAL-ED         NEPAL                          1              14      27
Birth       MAL-ED         NEPAL                          0              13      27
Birth       MAL-ED         PERU                           1             175     233
Birth       MAL-ED         PERU                           0              58     233
Birth       MAL-ED         SOUTH AFRICA                   1              69     111
Birth       MAL-ED         SOUTH AFRICA                   0              42     111
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              14     125
Birth       NIH-Crypto     BANGLADESH                     1             634     732
Birth       NIH-Crypto     BANGLADESH                     0              98     732
Birth       SAS-CompFeed   INDIA                          1              86    1207
Birth       SAS-CompFeed   INDIA                          0            1121    1207
Birth       ZVITAMBO       ZIMBABWE                       1            6556   12354
Birth       ZVITAMBO       ZIMBABWE                       0            5798   12354
6 months    EE             PAKISTAN                       1              68     362
6 months    EE             PAKISTAN                       0             294     362
6 months    GMS-Nepal      NEPAL                          1             151     511
6 months    GMS-Nepal      NEPAL                          0             360     511
6 months    JiVitA-3       BANGLADESH                     1              35   16811
6 months    JiVitA-3       BANGLADESH                     0           16776   16811
6 months    JiVitA-4       BANGLADESH                     1            3094    4831
6 months    JiVitA-4       BANGLADESH                     0            1737    4831
6 months    MAL-ED         BANGLADESH                     1             147     240
6 months    MAL-ED         BANGLADESH                     0              93     240
6 months    MAL-ED         BRAZIL                         1              95     209
6 months    MAL-ED         BRAZIL                         0             114     209
6 months    MAL-ED         INDIA                          1             140     236
6 months    MAL-ED         INDIA                          0              96     236
6 months    MAL-ED         NEPAL                          1              96     236
6 months    MAL-ED         NEPAL                          0             140     236
6 months    MAL-ED         PERU                           1             202     273
6 months    MAL-ED         PERU                           0              71     273
6 months    MAL-ED         SOUTH AFRICA                   1             156     250
6 months    MAL-ED         SOUTH AFRICA                   0              94     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    NIH-Crypto     BANGLADESH                     1             619     715
6 months    NIH-Crypto     BANGLADESH                     0              96     715
6 months    SAS-CompFeed   INDIA                          1              98    1336
6 months    SAS-CompFeed   INDIA                          0            1238    1336
6 months    ZVITAMBO       ZIMBABWE                       1            4146    7698
6 months    ZVITAMBO       ZIMBABWE                       0            3552    7698
24 months   EE             PAKISTAN                       1              32     164
24 months   EE             PAKISTAN                       0             132     164
24 months   GMS-Nepal      NEPAL                          1             131     445
24 months   GMS-Nepal      NEPAL                          0             314     445
24 months   JiVitA-3       BANGLADESH                     1               1    8632
24 months   JiVitA-3       BANGLADESH                     0            8631    8632
24 months   JiVitA-4       BANGLADESH                     1            3042    4752
24 months   JiVitA-4       BANGLADESH                     0            1710    4752
24 months   MAL-ED         BANGLADESH                     1             128     211
24 months   MAL-ED         BANGLADESH                     0              83     211
24 months   MAL-ED         BRAZIL                         1              80     169
24 months   MAL-ED         BRAZIL                         0              89     169
24 months   MAL-ED         INDIA                          1             134     227
24 months   MAL-ED         INDIA                          0              93     227
24 months   MAL-ED         NEPAL                          1              95     228
24 months   MAL-ED         NEPAL                          0             133     228
24 months   MAL-ED         PERU                           1             149     201
24 months   MAL-ED         PERU                           0              52     201
24 months   MAL-ED         SOUTH AFRICA                   1             144     235
24 months   MAL-ED         SOUTH AFRICA                   0              91     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   NIH-Crypto     BANGLADESH                     1             443     514
24 months   NIH-Crypto     BANGLADESH                     0              71     514
24 months   ZVITAMBO       ZIMBABWE                       1             717    1406
24 months   ZVITAMBO       ZIMBABWE                       0             689    1406


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH

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
![](/tmp/de27c42d-6af0-45d8-bc3b-7e61f6cca362/4314b317-d3dd-40b6-ad21-20d6ad67ee1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       optimal              observed          -1.8148194   -2.0954707   -1.5341680
Birth       GMS-Nepal      NEPAL                          optimal              observed          -0.9682220   -1.1092079   -0.8272362
Birth       JiVitA-3       BANGLADESH                     optimal              observed          -1.1860641   -1.2532151   -1.1189131
Birth       JiVitA-4       BANGLADESH                     optimal              observed          -1.5250501   -1.5907435   -1.4593568
Birth       MAL-ED         BANGLADESH                     optimal              observed          -0.9821915   -1.1412315   -0.8231514
Birth       MAL-ED         BRAZIL                         optimal              observed          -0.3693164   -0.8748587    0.1362259
Birth       MAL-ED         INDIA                          optimal              observed          -1.0975075   -1.4624227   -0.7325923
Birth       MAL-ED         NEPAL                          optimal              observed          -1.2801153   -1.7683997   -0.7918308
Birth       MAL-ED         PERU                           optimal              observed          -0.8180724   -0.9462670   -0.6898777
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed          -0.5211756   -0.7686038   -0.2737474
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1130107   -1.3811731   -0.8448484
Birth       NIH-Crypto     BANGLADESH                     optimal              observed          -1.0233262   -1.1769088   -0.8697437
Birth       SAS-CompFeed   INDIA                          optimal              observed          -1.1408917   -1.3386772   -0.9431062
Birth       ZVITAMBO       ZIMBABWE                       optimal              observed          -0.4717836   -0.5029787   -0.4405885
6 months    EE             PAKISTAN                       optimal              observed          -2.0191097   -2.2741673   -1.7640520
6 months    GMS-Nepal      NEPAL                          optimal              observed          -1.1573767   -1.3058695   -1.0088840
6 months    JiVitA-3       BANGLADESH                     optimal              observed          -1.3049318   -1.3287988   -1.2810648
6 months    JiVitA-4       BANGLADESH                     optimal              observed          -1.3312125   -1.3777098   -1.2847152
6 months    MAL-ED         BANGLADESH                     optimal              observed          -1.1646764   -1.3165132   -1.0128397
6 months    MAL-ED         BRAZIL                         optimal              observed           0.0973741   -0.0939491    0.2886973
6 months    MAL-ED         INDIA                          optimal              observed          -1.2540031   -1.4194803   -1.0885258
6 months    MAL-ED         NEPAL                          optimal              observed          -0.4890653   -0.6425316   -0.3355991
6 months    MAL-ED         PERU                           optimal              observed          -1.4485209   -1.6143469   -1.2826949
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed          -1.0074607   -1.1943290   -0.8205923
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3264898   -1.4550871   -1.1978925
6 months    NIH-Crypto     BANGLADESH                     optimal              observed          -1.0060209   -1.2023086   -0.8097333
6 months    SAS-CompFeed   INDIA                          optimal              observed          -1.2967082   -1.5697238   -1.0236925
6 months    ZVITAMBO       ZIMBABWE                       optimal              observed          -0.8363205   -0.8714922   -0.8011488
24 months   EE             PAKISTAN                       optimal              observed          -2.8167236   -3.0909511   -2.5424961
24 months   GMS-Nepal      NEPAL                          optimal              observed          -1.5901839   -1.7384986   -1.4418691
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -1.7638457   -1.8172203   -1.7104711
24 months   MAL-ED         BANGLADESH                     optimal              observed          -1.9705914   -2.1559913   -1.7851914
24 months   MAL-ED         BRAZIL                         optimal              observed          -0.0367485   -0.2638703    0.1903733
24 months   MAL-ED         INDIA                          optimal              observed          -1.8157906   -2.0074411   -1.6241400
24 months   MAL-ED         NEPAL                          optimal              observed          -1.3309580   -1.4948180   -1.1670981
24 months   MAL-ED         PERU                           optimal              observed          -1.5875467   -1.8133215   -1.3617719
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed          -1.6069514   -1.8230382   -1.3908646
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6943948   -2.8762534   -2.5125362
24 months   NIH-Crypto     BANGLADESH                     optimal              observed          -1.2831994   -1.4436540   -1.1227448
24 months   ZVITAMBO       ZIMBABWE                       optimal              observed          -1.5472800   -1.6306907   -1.4638693


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       observed             observed          -1.8713537   -2.0647180   -1.6779894
Birth       GMS-Nepal      NEPAL                          observed             observed          -1.0578481   -1.1411010   -0.9745953
Birth       JiVitA-3       BANGLADESH                     observed             observed          -1.5896710   -1.6089649   -1.5703770
Birth       JiVitA-4       BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
Birth       MAL-ED         BANGLADESH                     observed             observed          -1.1218261   -1.2566576   -0.9869945
Birth       MAL-ED         BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED         INDIA                          observed             observed          -1.2221739   -1.5203945   -0.9239534
Birth       MAL-ED         NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED         PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED         SOUTH AFRICA                   observed             observed          -0.5709009   -0.7569265   -0.3848753
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Crypto     BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       SAS-CompFeed   INDIA                          observed             observed          -1.4072245   -1.4817853   -1.3326638
Birth       ZVITAMBO       ZIMBABWE                       observed             observed          -0.4895257   -0.5113672   -0.4676841
6 months    EE             PAKISTAN                       observed             observed          -2.0838858   -2.2054394   -1.9623322
6 months    GMS-Nepal      NEPAL                          observed             observed          -1.3175310   -1.3993963   -1.2356656
6 months    JiVitA-3       BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4       BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
6 months    MAL-ED         BANGLADESH                     observed             observed          -1.2056389   -1.3233420   -1.0879358
6 months    MAL-ED         BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED         NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED         PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED         SOUTH AFRICA                   observed             observed          -1.0598800   -1.1885688   -0.9311912
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Crypto     BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    SAS-CompFeed   INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ZVITAMBO       ZIMBABWE                       observed             observed          -0.8625370   -0.8897591   -0.8353150
24 months   EE             PAKISTAN                       observed             observed          -2.6678252   -2.8138884   -2.5217620
24 months   GMS-Nepal      NEPAL                          observed             observed          -1.8793783   -1.9705101   -1.7882464
24 months   JiVitA-4       BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958
24 months   MAL-ED         BANGLADESH                     observed             observed          -1.9735782   -2.1004502   -1.8467062
24 months   MAL-ED         BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED         NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED         PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED         SOUTH AFRICA                   observed             observed          -1.6365071   -1.7722110   -1.5008032
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Crypto     BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ZVITAMBO       ZIMBABWE                       observed             observed          -1.6006366   -1.6621572   -1.5391159


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       optimal              observed          -0.0565343   -0.2677157    0.1546471
Birth       GMS-Nepal      NEPAL                          optimal              observed          -0.0896261   -0.2031877    0.0239355
Birth       JiVitA-3       BANGLADESH                     optimal              observed          -0.4036069   -0.4689800   -0.3382338
Birth       JiVitA-4       BANGLADESH                     optimal              observed           0.0017593   -0.0443360    0.0478547
Birth       MAL-ED         BANGLADESH                     optimal              observed          -0.1396346   -0.2458446   -0.0334247
Birth       MAL-ED         BRAZIL                         optimal              observed          -0.3066836   -0.7307726    0.1174054
Birth       MAL-ED         INDIA                          optimal              observed          -0.1246664   -0.3272179    0.0778850
Birth       MAL-ED         NEPAL                          optimal              observed           0.4267819    0.0549336    0.7986302
Birth       MAL-ED         PERU                           optimal              observed          -0.0647173   -0.1176549   -0.0117798
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0497253   -0.2152739    0.1158233
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0425893   -0.2243014    0.1391228
Birth       NIH-Crypto     BANGLADESH                     optimal              observed           0.1138317   -0.0129619    0.2406253
Birth       SAS-CompFeed   INDIA                          optimal              observed          -0.2663328   -0.4099516   -0.1227140
Birth       ZVITAMBO       ZIMBABWE                       optimal              observed          -0.0177420   -0.0399316    0.0044476
6 months    EE             PAKISTAN                       optimal              observed          -0.0647762   -0.2892478    0.1596955
6 months    GMS-Nepal      NEPAL                          optimal              observed          -0.1601543   -0.2850685   -0.0352400
6 months    JiVitA-3       BANGLADESH                     optimal              observed          -0.0081614   -0.0111726   -0.0051502
6 months    JiVitA-4       BANGLADESH                     optimal              observed          -0.0135815   -0.0402297    0.0130666
6 months    MAL-ED         BANGLADESH                     optimal              observed          -0.0409624   -0.1366168    0.0546920
6 months    MAL-ED         BRAZIL                         optimal              observed          -0.0497983   -0.1833680    0.0837714
6 months    MAL-ED         INDIA                          optimal              observed           0.0424776   -0.0629914    0.1479467
6 months    MAL-ED         NEPAL                          optimal              observed          -0.0725166   -0.1653469    0.0203137
6 months    MAL-ED         PERU                           optimal              observed           0.1248548   -0.0043748    0.2540845
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0524193   -0.1925870    0.0877483
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0422551   -0.1077309    0.0232207
6 months    NIH-Crypto     BANGLADESH                     optimal              observed          -0.1926574   -0.3753804   -0.0099345
6 months    SAS-CompFeed   INDIA                          optimal              observed          -0.1051481   -0.3404644    0.1301682
6 months    ZVITAMBO       ZIMBABWE                       optimal              observed          -0.0262166   -0.0490808   -0.0033523
24 months   EE             PAKISTAN                       optimal              observed           0.1488984   -0.0699040    0.3677008
24 months   GMS-Nepal      NEPAL                          optimal              observed          -0.2891944   -0.4190731   -0.1593157
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -0.0168761   -0.0593438    0.0255916
24 months   MAL-ED         BANGLADESH                     optimal              observed          -0.0029868   -0.1357298    0.1297562
24 months   MAL-ED         BRAZIL                         optimal              observed           0.0428629   -0.1229169    0.2086427
24 months   MAL-ED         INDIA                          optimal              observed          -0.0703989   -0.2207734    0.0799756
24 months   MAL-ED         NEPAL                          optimal              observed           0.0233703   -0.0803774    0.1271181
24 months   MAL-ED         PERU                           optimal              observed          -0.1649243   -0.3614949    0.0316463
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed          -0.0295557   -0.2000597    0.1409483
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0488340   -0.0850682    0.1827363
24 months   NIH-Crypto     BANGLADESH                     optimal              observed          -0.1580652   -0.3129340   -0.0031964
24 months   ZVITAMBO       ZIMBABWE                       optimal              observed          -0.0533565   -0.1157675    0.0090544

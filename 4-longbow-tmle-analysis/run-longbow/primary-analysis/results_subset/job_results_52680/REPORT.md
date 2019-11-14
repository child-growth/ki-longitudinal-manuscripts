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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            215     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0             54      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1              8      62
Birth       ki0047075b-MAL-ED          INDIA                          0             45      45
Birth       ki0047075b-MAL-ED          INDIA                          1              0      45
Birth       ki0047075b-MAL-ED          NEPAL                          0             26      26
Birth       ki0047075b-MAL-ED          NEPAL                          1              0      26
Birth       ki0047075b-MAL-ED          PERU                           0            205     228
Birth       ki0047075b-MAL-ED          PERU                           1             23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             63     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             57     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            112     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     115
Birth       ki1119695-PROBIT           BELARUS                        0          13291   13830
Birth       ki1119695-PROBIT           BELARUS                        1            539   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12065   12864
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            799   12864
Birth       ki1135781-COHORTS          GUATEMALA                      0            654     691
Birth       ki1135781-COHORTS          GUATEMALA                      1             37     691
Birth       ki1135781-COHORTS          INDIA                          0           4456    4463
Birth       ki1135781-COHORTS          INDIA                          1              7    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2789    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1             71    2860
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2388    2393
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              5    2393
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            241     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0            179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1             30     209
6 months    ki0047075b-MAL-ED          INDIA                          0            234     234
6 months    ki0047075b-MAL-ED          INDIA                          1              0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0            236     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0     236
6 months    ki0047075b-MAL-ED          PERU                           0            240     273
6 months    ki0047075b-MAL-ED          PERU                           1             33     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            140     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            114     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15115   15758
6 months    ki1119695-PROBIT           BELARUS                        1            643   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7971    8474
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            503    8474
6 months    ki1135781-COHORTS          GUATEMALA                      0            827     894
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     894
6 months    ki1135781-COHORTS          INDIA                          0           4955    4964
6 months    ki1135781-COHORTS          INDIA                          1              9    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2606    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2674
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4816    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              8    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0            148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     169
24 months   ki0047075b-MAL-ED          INDIA                          0            225     225
24 months   ki0047075b-MAL-ED          INDIA                          1              0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0            228     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              0     228
24 months   ki0047075b-MAL-ED          PERU                           0            176     201
24 months   ki0047075b-MAL-ED          PERU                           1             25     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            107     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ki1119695-PROBIT           BELARUS                        0           3830    3972
24 months   ki1119695-PROBIT           BELARUS                        1            142    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            388     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             44     432
24 months   ki1135781-COHORTS          GUATEMALA                      0            932    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1             89    1021
24 months   ki1135781-COHORTS          INDIA                          0           3717    3726
24 months   ki1135781-COHORTS          INDIA                          1              9    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2361    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2420
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           4721    4727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              6    4727


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ff60f4b5-a292-401e-a430-16ae86b76c77/1241093a-6405-4fe6-ac80-dbca4d83ef8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7608997   -0.1354539    1.6572533
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3036080   -0.3920113   -0.2152048
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0266180   -0.3035300    0.3567660
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2843309   -1.4432122   -1.1254496
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5455019   -0.5901570   -0.5008469
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.8924448   -1.3045141   -0.4803755
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.0878311   -1.1233304   -1.0523318
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5428596   -0.6235855   -0.4621337
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9991265   -1.0372069   -0.9610460
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0017066    0.8256576    1.1777556
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0166547    0.8093069    1.2240024
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2708217   -0.0049304    0.5465739
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0553460   -0.7856203    0.6749283
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0237904   -0.1136299    0.1612108
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0335960   -0.1548594    0.0876675
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5697734    0.5086158    0.6309309
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3212834    0.2873054    0.3552613
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2877042   -0.1907436    0.7661520
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7098950   -0.7430288   -0.6767612
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2802237   -0.3322040   -0.2282433
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4186286   -0.4559370   -0.3813202
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1784685   -0.3118315    0.6687686
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0019153   -0.2155444    0.2193751
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4456029    0.2190942    0.6721115
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0755823   -0.0492837    0.2004483
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6969949    0.5798579    0.8141319
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9729838   -1.1798615   -0.7661060
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2728278   -0.3995124   -0.1461432
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.9973469   -1.0415788   -0.9531150
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6075423   -0.6526746   -0.5624100
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7683011   -0.7843685   -0.7522338


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5148609   -0.5407634   -0.4889583
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0552243   -1.1617873   -0.9486614
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9765068   -1.0113301   -0.9416835
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7377902   -0.7844819   -0.6910986
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6888174   -0.7412201   -0.6364147
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5427231    0.3906363    0.6948099
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3108992    0.2851818    0.3366167
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2936948   -0.3352840   -0.2521057
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3904664   -0.4277855   -0.3531473
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1797222   -1.2787189   -1.0807256
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2796964   -0.3351582   -0.2242346
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6100579   -0.6471813   -0.5729344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2239898   -1.2559235   -1.1920562


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3579965   -1.2039041    0.4879112
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2515905    0.1265809    0.3766000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2192014   -0.4489004    0.0104976
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.1394675    0.0138662    0.2650688
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0306411   -0.0048038    0.0660860
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1627795   -0.5578490    0.2322901
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.1113243    0.0957704    0.1268782
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1949306   -0.2724395   -0.1174217
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.3103091    0.2484889    0.3721292
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0299841   -0.1027880    0.0428198
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0402440   -0.1347996    0.2152876
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2719014    0.0449746    0.4988282
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5915673   -0.1296150    1.3127497
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0559673   -0.0693020    0.1812365
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0232873   -0.0648198    0.0182452
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0094705   -0.0011086    0.0200497
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0103842   -0.0328930    0.0121247
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0956908   -0.5613141    0.3699325
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0005844   -0.0019010    0.0007321
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0134712   -0.0435933    0.0166510
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0281622    0.0144014    0.0419230
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2807622   -0.1579644    0.7194888
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1185324   -0.0575273    0.2945921
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0307499   -0.2180756    0.1565758
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0216337   -0.0527976    0.0095302
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0095654   -0.0236062    0.0044754
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2067385   -0.4165439    0.0030670
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0068686   -0.1202320    0.1064948
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.3379347    0.2857731    0.3900963
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0025156   -0.0272517    0.0222205
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4556887   -0.4919797   -0.4193977

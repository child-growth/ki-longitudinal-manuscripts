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
![](/tmp/9b3f6516-5c03-4028-9b7a-31bff8ac4a38/9e8302fe-98b3-412d-8094-171503406df3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7555842   -0.1178823    1.6290507
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1013451   -0.2054629    0.0027728
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0279005   -0.2909662    0.3467673
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2140689   -1.3707623   -1.0573755
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5369910   -0.5751231   -0.4988589
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.7827224   -1.1425359   -0.4229089
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.1143067   -1.1497493   -1.0788640
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4364724   -0.5072117   -0.3657330
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1321907   -1.1725967   -1.0917847
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0007928    0.8256037    1.1759819
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.8227228    0.6560360    0.9894095
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4368895    0.2059906    0.6677883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0309238   -0.7608535    0.6990059
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0022775   -0.1475592    0.1430041
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0323927   -0.1536228    0.0888373
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5631664    0.5036699    0.6226628
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3239332    0.2889038    0.3589626
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2445536   -0.2791834    0.7682906
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7098994   -0.7430332   -0.6767657
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2509116   -0.3018928   -0.1999303
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4152420   -0.4528513   -0.3776326
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7912395    0.2598273    1.3226516
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0843173   -0.0938244    0.2624590
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2291662    0.0000376    0.4582948
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0766771   -0.0481415    0.2014956
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6933392    0.5766236    0.8100548
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9856648   -1.1929734   -0.7783561
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2569957   -0.3652972   -0.1486941
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.1682295   -1.1929082   -1.1435508
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6077837   -0.6516542   -0.5639131
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.7762658   -0.7916821   -0.7608495


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
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3108992    0.2851818    0.3366167
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2936948   -0.3352840   -0.2521057
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3904664   -0.4277855   -0.3531473
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1797222   -1.2787189   -1.0807256
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2796964   -0.3351582   -0.2242346
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6100579   -0.6471813   -0.5729344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2239898   -1.2559235   -1.1920562


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3526810   -1.1759724    0.4706104
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0493275   -0.0793958    0.1780508
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2204839   -0.4420561    0.0010883
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0692056   -0.0807408    0.2191520
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0221302   -0.0054546    0.0497149
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2725019   -0.6173350    0.0723312
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.1377998    0.1167798    0.1588198
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3013178   -0.3691451   -0.2334905
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.4433733    0.3852966    0.5014501
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0287155   -0.1003591    0.0429282
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2301588    0.1077889    0.3525288
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1052890   -0.0962910    0.3068690
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5671451   -0.1523650    1.2866553
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0820352   -0.0510761    0.2151466
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0244905   -0.0658362    0.0168551
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0160775    0.0052970    0.0268581
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0130340   -0.0371891    0.0111211
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0525402   -0.5631234    0.4580431
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0005800   -0.0018913    0.0007313
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0427833   -0.0755156   -0.0100510
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0247756    0.0068592    0.0426920
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3286162   -0.8190590    0.1618267
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0268809   -0.0957968    0.1495585
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1798639   -0.0059975    0.3657253
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0218796   -0.0532151    0.0094560
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0059097   -0.0193759    0.0075564
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1940574   -0.4028905    0.0147756
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0227007   -0.1152317    0.0698303
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.5088173    0.4767180    0.5409166
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0022742   -0.0243430    0.0197946
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4477240   -0.4833560   -0.4120921

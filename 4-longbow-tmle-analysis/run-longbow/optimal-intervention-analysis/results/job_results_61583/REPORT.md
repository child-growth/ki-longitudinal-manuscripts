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

agecat      studyid          country                        single    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      0            654     691
Birth       COHORTS          GUATEMALA                      1             37     691
Birth       COHORTS          INDIA                          0           4456    4463
Birth       COHORTS          INDIA                          1              7    4463
Birth       COHORTS          PHILIPPINES                    0           2789    2860
Birth       COHORTS          PHILIPPINES                    1             71    2860
Birth       JiVitA-4         BANGLADESH                     0           2388    2393
Birth       JiVitA-4         BANGLADESH                     1              5    2393
Birth       MAL-ED           BANGLADESH                     0            215     215
Birth       MAL-ED           BANGLADESH                     1              0     215
Birth       MAL-ED           BRAZIL                         0             54      62
Birth       MAL-ED           BRAZIL                         1              8      62
Birth       MAL-ED           INDIA                          0             45      45
Birth       MAL-ED           INDIA                          1              0      45
Birth       MAL-ED           NEPAL                          0             26      26
Birth       MAL-ED           NEPAL                          1              0      26
Birth       MAL-ED           PERU                           0            205     228
Birth       MAL-ED           PERU                           1             23     228
Birth       MAL-ED           SOUTH AFRICA                   0             63     120
Birth       MAL-ED           SOUTH AFRICA                   1             57     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            112     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     115
Birth       PROBIT           BELARUS                        0          13277   13817
Birth       PROBIT           BELARUS                        1            540   13817
Birth       ZVITAMBO         ZIMBABWE                       0          12065   12864
Birth       ZVITAMBO         ZIMBABWE                       1            799   12864
6 months    COHORTS          GUATEMALA                      0            827     894
6 months    COHORTS          GUATEMALA                      1             67     894
6 months    COHORTS          INDIA                          0           4955    4964
6 months    COHORTS          INDIA                          1              9    4964
6 months    COHORTS          PHILIPPINES                    0           2606    2674
6 months    COHORTS          PHILIPPINES                    1             68    2674
6 months    Guatemala BSC    GUATEMALA                      0            248     277
6 months    Guatemala BSC    GUATEMALA                      1             29     277
6 months    JiVitA-4         BANGLADESH                     0           4816    4824
6 months    JiVitA-4         BANGLADESH                     1              8    4824
6 months    MAL-ED           BANGLADESH                     0            241     241
6 months    MAL-ED           BANGLADESH                     1              0     241
6 months    MAL-ED           BRAZIL                         0            179     209
6 months    MAL-ED           BRAZIL                         1             30     209
6 months    MAL-ED           INDIA                          0            234     234
6 months    MAL-ED           INDIA                          1              0     234
6 months    MAL-ED           NEPAL                          0            236     236
6 months    MAL-ED           NEPAL                          1              0     236
6 months    MAL-ED           PERU                           0            240     273
6 months    MAL-ED           PERU                           1             33     273
6 months    MAL-ED           SOUTH AFRICA                   0            140     254
6 months    MAL-ED           SOUTH AFRICA                   1            114     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    PROBIT           BELARUS                        0          15114   15757
6 months    PROBIT           BELARUS                        1            643   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012
6 months    ZVITAMBO         ZIMBABWE                       0           7971    8474
6 months    ZVITAMBO         ZIMBABWE                       1            503    8474
24 months   COHORTS          GUATEMALA                      0            932    1021
24 months   COHORTS          GUATEMALA                      1             89    1021
24 months   COHORTS          INDIA                          0           3717    3726
24 months   COHORTS          INDIA                          1              9    3726
24 months   COHORTS          PHILIPPINES                    0           2361    2420
24 months   COHORTS          PHILIPPINES                    1             59    2420
24 months   JiVitA-4         BANGLADESH                     0           4721    4727
24 months   JiVitA-4         BANGLADESH                     1              6    4727
24 months   MAL-ED           BANGLADESH                     0            212     212
24 months   MAL-ED           BANGLADESH                     1              0     212
24 months   MAL-ED           BRAZIL                         0            148     169
24 months   MAL-ED           BRAZIL                         1             21     169
24 months   MAL-ED           INDIA                          0            225     225
24 months   MAL-ED           INDIA                          1              0     225
24 months   MAL-ED           NEPAL                          0            228     228
24 months   MAL-ED           NEPAL                          1              0     228
24 months   MAL-ED           PERU                           0            176     201
24 months   MAL-ED           PERU                           1             25     201
24 months   MAL-ED           SOUTH AFRICA                   0            131     238
24 months   MAL-ED           SOUTH AFRICA                   1            107     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   PROBIT           BELARUS                        0           3828    3970
24 months   PROBIT           BELARUS                        1            142    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ZVITAMBO         ZIMBABWE                       0            388     432
24 months   ZVITAMBO         ZIMBABWE                       1             44     432


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d42d35c4-11ee-479e-82fc-989c5f7e347b/d6902df2-e2de-43c7-aeb6-c426f46764e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.8735631   -1.3338489   -0.4132773
Birth       COHORTS          INDIA                          optimal              observed          -1.2176978   -1.2623529   -1.1730427
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.3758064   -0.4441070   -0.3075059
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.3524839   -1.3940592   -1.3109086
Birth       MAL-ED           BRAZIL                         optimal              observed           0.7093774   -0.2579964    1.6767513
Birth       MAL-ED           PERU                           optimal              observed          -0.0032966   -0.1402867    0.1336935
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0140239   -0.3431390    0.3150912
Birth       PROBIT           BELARUS                        optimal              observed          -1.1218814   -1.3112757   -0.9324870
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5547653   -0.6030249   -0.5065057
6 months    COHORTS          GUATEMALA                      optimal              observed           0.5325349    0.1363007    0.9287692
6 months    COHORTS          INDIA                          optimal              observed          -0.7098951   -0.7430288   -0.6767613
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.3136906   -0.3632077   -0.2641734
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0333381   -0.1547097    0.0880336
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.4157186   -0.4534584   -0.3779789
6 months    MAL-ED           BRAZIL                         optimal              observed           1.0019002    0.8261765    1.1776240
6 months    MAL-ED           PERU                           optimal              observed           1.0600133    0.9163756    1.2036510
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.2769398    0.0175300    0.5363496
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1532421   -0.6210085    0.3145242
6 months    PROBIT           BELARUS                        optimal              observed           0.5517936    0.4948171    0.6087700
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1263932   -0.2007336   -0.0520529
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3132411    0.2607601    0.3657221
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.3839156   -0.6136964   -0.1541348
24 months   COHORTS          INDIA                          optimal              observed          -0.9379445   -0.9726916   -0.9031975
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.6103989   -0.6551912   -0.5656067
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.8055798   -0.8211824   -0.7899772
24 months   MAL-ED           BRAZIL                         optimal              observed           0.6377376    0.1267158    1.1487593
24 months   MAL-ED           PERU                           optimal              observed           0.3133268   -0.0343523    0.6610059
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.5196630    0.3316145    0.7077114
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0761158   -0.0487554    0.2009869
24 months   PROBIT           BELARUS                        optimal              observed           0.7039101    0.5837211    0.8240991
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0015745   -1.2128904   -0.7902587


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0552243   -1.1617873   -0.9486614
Birth       COHORTS          INDIA                          observed             observed          -0.9765068   -1.0113301   -0.9416835
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7377902   -0.7844819   -0.6910986
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6888174   -0.7412201   -0.6364147
Birth       MAL-ED           BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       MAL-ED           PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5148609   -0.5407634   -0.4889583
6 months    COHORTS          GUATEMALA                      observed             observed           0.1920134    0.1173734    0.2666534
6 months    COHORTS          INDIA                          observed             observed          -0.7104795   -0.7428008   -0.6781581
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2936948   -0.3352840   -0.2521057
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3904664   -0.4277855   -0.3531473
6 months    MAL-ED           BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED           PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797577    0.0268998    0.1326156
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3108992    0.2851818    0.3366167
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2796964   -0.3351582   -0.2242346
24 months   COHORTS          INDIA                          observed             observed          -0.6594122   -0.6925753   -0.6262491
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6100579   -0.6471813   -0.5729344
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2239898   -1.2559235   -1.1920562
24 months   MAL-ED           BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1797222   -1.2787189   -1.0807256


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1816612   -0.6314089    0.2680866
Birth       COHORTS          INDIA                          optimal              observed           0.2411910    0.2026735    0.2797085
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.3619838   -0.4259366   -0.2980309
Birth       JiVitA-4         BANGLADESH                     optimal              observed           0.6636665    0.6057635    0.7215695
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.3064742   -1.2192159    0.6062674
Birth       MAL-ED           PERU                           optimal              observed          -0.0487209   -0.1640377    0.0665958
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1785594   -0.3974696    0.0403507
Birth       PROBIT           BELARUS                        optimal              observed          -0.0272968   -0.1227867    0.0681931
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.0399045   -0.0008567    0.0806657
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.3405215   -0.7291619    0.0481189
6 months    COHORTS          INDIA                          optimal              observed          -0.0005844   -0.0018993    0.0007306
6 months    COHORTS          PHILIPPINES                    optimal              observed           0.0199958   -0.0110102    0.0510017
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0235452   -0.0652594    0.0181690
6 months    JiVitA-4         BANGLADESH                     optimal              observed           0.0252522    0.0118176    0.0386868
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0298229   -0.1024611    0.0428154
6 months    MAL-ED           PERU                           optimal              observed          -0.0071317   -0.1100900    0.0958265
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.2652387    0.0503697    0.4801077
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6894635    0.2296951    1.1492318
6 months    PROBIT           BELARUS                        optimal              observed           0.0223164    0.0082755    0.0363572
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2061509    0.1499516    0.2623503
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0023419   -0.0472872    0.0426034
24 months   COHORTS          GUATEMALA                      optimal              observed           0.1042193   -0.1142137    0.3226522
24 months   COHORTS          INDIA                          optimal              observed           0.2785323    0.2362758    0.3207888
24 months   COHORTS          PHILIPPINES                    optimal              observed           0.0003411   -0.0234009    0.0240830
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.4184101   -0.4543883   -0.3824318
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.1751143   -0.6633657    0.3131371
24 months   MAL-ED           PERU                           optimal              observed          -0.2021286   -0.5292794    0.1250222
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1106329   -0.2754367    0.0541710
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0213182   -0.0522292    0.0095927
24 months   PROBIT           BELARUS                        optimal              observed          -0.0057695   -0.0223216    0.0107826
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1781477   -0.3920579    0.0357625

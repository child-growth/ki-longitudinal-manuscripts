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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              75      92
Birth       CMC-V-BCS-2002   INDIA                          1              17      92
Birth       CMIN             BANGLADESH                     0              17      26
Birth       CMIN             BANGLADESH                     1               9      26
Birth       COHORTS          GUATEMALA                      0             802     852
Birth       COHORTS          GUATEMALA                      1              50     852
Birth       COHORTS          INDIA                          0            5848    6640
Birth       COHORTS          INDIA                          1             792    6640
Birth       COHORTS          PHILIPPINES                    0            2863    3050
Birth       COHORTS          PHILIPPINES                    1             187    3050
Birth       CONTENT          PERU                           0               2       2
Birth       CONTENT          PERU                           1               0       2
Birth       EE               PAKISTAN                       0             140     240
Birth       EE               PAKISTAN                       1             100     240
Birth       GMS-Nepal        NEPAL                          0             574     696
Birth       GMS-Nepal        NEPAL                          1             122     696
Birth       IRC              INDIA                          0             343     388
Birth       IRC              INDIA                          1              45     388
Birth       JiVitA-3         BANGLADESH                     0           15068   22455
Birth       JiVitA-3         BANGLADESH                     1            7387   22455
Birth       JiVitA-4         BANGLADESH                     0            1966    2823
Birth       JiVitA-4         BANGLADESH                     1             857    2823
Birth       Keneba           GAMBIA                         0            1460    1543
Birth       Keneba           GAMBIA                         1              83    1543
Birth       MAL-ED           BANGLADESH                     0             187     231
Birth       MAL-ED           BANGLADESH                     1              44     231
Birth       MAL-ED           BRAZIL                         0              56      65
Birth       MAL-ED           BRAZIL                         1               9      65
Birth       MAL-ED           INDIA                          0              37      47
Birth       MAL-ED           INDIA                          1              10      47
Birth       MAL-ED           NEPAL                          0              25      27
Birth       MAL-ED           NEPAL                          1               2      27
Birth       MAL-ED           PERU                           0             207     233
Birth       MAL-ED           PERU                           1              26     233
Birth       MAL-ED           SOUTH AFRICA                   0             113     123
Birth       MAL-ED           SOUTH AFRICA                   1              10     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              23     125
Birth       NIH-Birth        BANGLADESH                     0             511     608
Birth       NIH-Birth        BANGLADESH                     1              97     608
Birth       NIH-Crypto       BANGLADESH                     0             631     732
Birth       NIH-Crypto       BANGLADESH                     1             101     732
Birth       PROBIT           BELARUS                        0           13859   13893
Birth       PROBIT           BELARUS                        1              34   13893
Birth       PROVIDE          BANGLADESH                     0             491     539
Birth       PROVIDE          BANGLADESH                     1              48     539
Birth       ResPak           PAKISTAN                       0              28      42
Birth       ResPak           PAKISTAN                       1              14      42
Birth       SAS-CompFeed     INDIA                          0             903    1252
Birth       SAS-CompFeed     INDIA                          1             349    1252
Birth       ZVITAMBO         ZIMBABWE                       0           12441   13875
Birth       ZVITAMBO         ZIMBABWE                       1            1434   13875
6 months    CMC-V-BCS-2002   INDIA                          0             294     369
6 months    CMC-V-BCS-2002   INDIA                          1              75     369
6 months    CMIN             BANGLADESH                     0             151     243
6 months    CMIN             BANGLADESH                     1              92     243
6 months    COHORTS          GUATEMALA                      0             809     961
6 months    COHORTS          GUATEMALA                      1             152     961
6 months    COHORTS          INDIA                          0            6048    6860
6 months    COHORTS          INDIA                          1             812    6860
6 months    COHORTS          PHILIPPINES                    0            2552    2708
6 months    COHORTS          PHILIPPINES                    1             156    2708
6 months    CONTENT          PERU                           0             195     215
6 months    CONTENT          PERU                           1              20     215
6 months    EE               PAKISTAN                       0             209     373
6 months    EE               PAKISTAN                       1             164     373
6 months    GMS-Nepal        NEPAL                          0             473     564
6 months    GMS-Nepal        NEPAL                          1              91     564
6 months    Guatemala BSC    GUATEMALA                      0             228     299
6 months    Guatemala BSC    GUATEMALA                      1              71     299
6 months    IRC              INDIA                          0             358     407
6 months    IRC              INDIA                          1              49     407
6 months    JiVitA-3         BANGLADESH                     0           11707   16811
6 months    JiVitA-3         BANGLADESH                     1            5104   16811
6 months    JiVitA-4         BANGLADESH                     0            3475    4831
6 months    JiVitA-4         BANGLADESH                     1            1356    4831
6 months    Keneba           GAMBIA                         0            1892    2089
6 months    Keneba           GAMBIA                         1             197    2089
6 months    LCNI-5           MALAWI                         0             530     839
6 months    LCNI-5           MALAWI                         1             309     839
6 months    MAL-ED           BANGLADESH                     0             202     241
6 months    MAL-ED           BANGLADESH                     1              39     241
6 months    MAL-ED           BRAZIL                         0             184     209
6 months    MAL-ED           BRAZIL                         1              25     209
6 months    MAL-ED           INDIA                          0             198     236
6 months    MAL-ED           INDIA                          1              38     236
6 months    MAL-ED           NEPAL                          0             208     236
6 months    MAL-ED           NEPAL                          1              28     236
6 months    MAL-ED           PERU                           0             239     273
6 months    MAL-ED           PERU                           1              34     273
6 months    MAL-ED           SOUTH AFRICA                   0             227     254
6 months    MAL-ED           SOUTH AFRICA                   1              27     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    NIH-Birth        BANGLADESH                     0             452     537
6 months    NIH-Birth        BANGLADESH                     1              85     537
6 months    NIH-Crypto       BANGLADESH                     0             613     715
6 months    NIH-Crypto       BANGLADESH                     1             102     715
6 months    PROBIT           BELARUS                        0           15644   15760
6 months    PROBIT           BELARUS                        1             116   15760
6 months    PROVIDE          BANGLADESH                     0             543     604
6 months    PROVIDE          BANGLADESH                     1              61     604
6 months    ResPak           PAKISTAN                       0             173     239
6 months    ResPak           PAKISTAN                       1              66     239
6 months    SAS-CompFeed     INDIA                          0             972    1336
6 months    SAS-CompFeed     INDIA                          1             364    1336
6 months    SAS-FoodSuppl    INDIA                          0             232     380
6 months    SAS-FoodSuppl    INDIA                          1             148     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029
6 months    ZVITAMBO         ZIMBABWE                       0            7795    8669
6 months    ZVITAMBO         ZIMBABWE                       1             874    8669
24 months   CMC-V-BCS-2002   INDIA                          0             294     371
24 months   CMC-V-BCS-2002   INDIA                          1              77     371
24 months   CMIN             BANGLADESH                     0             153     242
24 months   CMIN             BANGLADESH                     1              89     242
24 months   COHORTS          GUATEMALA                      0             740    1070
24 months   COHORTS          GUATEMALA                      1             330    1070
24 months   COHORTS          INDIA                          0            4696    5337
24 months   COHORTS          INDIA                          1             641    5337
24 months   COHORTS          PHILIPPINES                    0            2310    2445
24 months   COHORTS          PHILIPPINES                    1             135    2445
24 months   CONTENT          PERU                           0             147     164
24 months   CONTENT          PERU                           1              17     164
24 months   EE               PAKISTAN                       0             100     167
24 months   EE               PAKISTAN                       1              67     167
24 months   GMS-Nepal        NEPAL                          0             406     488
24 months   GMS-Nepal        NEPAL                          1              82     488
24 months   IRC              INDIA                          0             358     409
24 months   IRC              INDIA                          1              51     409
24 months   JiVitA-3         BANGLADESH                     0            5942    8632
24 months   JiVitA-3         BANGLADESH                     1            2690    8632
24 months   JiVitA-4         BANGLADESH                     0            3396    4752
24 months   JiVitA-4         BANGLADESH                     1            1356    4752
24 months   Keneba           GAMBIA                         0            1549    1725
24 months   Keneba           GAMBIA                         1             176    1725
24 months   LCNI-5           MALAWI                         0             377     579
24 months   LCNI-5           MALAWI                         1             202     579
24 months   MAL-ED           BANGLADESH                     0             179     212
24 months   MAL-ED           BANGLADESH                     1              33     212
24 months   MAL-ED           BRAZIL                         0             150     169
24 months   MAL-ED           BRAZIL                         1              19     169
24 months   MAL-ED           INDIA                          0             191     227
24 months   MAL-ED           INDIA                          1              36     227
24 months   MAL-ED           NEPAL                          0             201     228
24 months   MAL-ED           NEPAL                          1              27     228
24 months   MAL-ED           PERU                           0             174     201
24 months   MAL-ED           PERU                           1              27     201
24 months   MAL-ED           SOUTH AFRICA                   0             214     238
24 months   MAL-ED           SOUTH AFRICA                   1              24     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   NIH-Birth        BANGLADESH                     0             355     429
24 months   NIH-Birth        BANGLADESH                     1              74     429
24 months   NIH-Crypto       BANGLADESH                     0             444     514
24 months   NIH-Crypto       BANGLADESH                     1              70     514
24 months   PROBIT           BELARUS                        0            4022    4035
24 months   PROBIT           BELARUS                        1              13    4035
24 months   PROVIDE          BANGLADESH                     0             518     578
24 months   PROVIDE          BANGLADESH                     1              60     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ZVITAMBO         ZIMBABWE                       0            1406    1640
24 months   ZVITAMBO         ZIMBABWE                       1             234    1640


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/945683ef-8ddd-4fc7-879d-d8fc0a69323c/e26e6029-860f-4bf1-9b28-ae821e1680e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5914068   -0.7546589   -0.4281547
Birth       CMIN             BANGLADESH                     optimal              observed          -0.9840945   -1.5034064   -0.4647827
Birth       COHORTS          GUATEMALA                      optimal              observed           0.3070811    0.2353258    0.3788363
Birth       COHORTS          INDIA                          optimal              observed          -0.3940401   -0.4176392   -0.3704409
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0884466   -0.1218513   -0.0550419
Birth       EE               PAKISTAN                       optimal              observed          -0.9193188   -1.0862144   -0.7524231
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.7476110   -0.8137096   -0.6815123
Birth       IRC              INDIA                          optimal              observed           0.0464962   -0.0918120    0.1848044
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.9722014   -0.9856950   -0.9587077
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.9839004   -1.0225442   -0.9452565
Birth       Keneba           GAMBIA                         optimal              observed           0.2041938    0.1506367    0.2577509
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7467821   -0.8536486   -0.6399156
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.3624493   -0.5832581   -0.1416405
Birth       MAL-ED           INDIA                          optimal              observed          -0.8447784   -1.0645124   -0.6250444
Birth       MAL-ED           PERU                           optimal              observed          -0.6826273   -0.7838438   -0.5814109
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.4313157   -0.5862368   -0.2763946
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7289268   -0.8677495   -0.5901040
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.6120432   -0.6886900   -0.5353965
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.6577503   -0.7195625   -0.5959380
Birth       PROBIT           BELARUS                        optimal              observed           1.3205764    1.1598125    1.4813403
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.7360081   -0.8048743   -0.6671419
Birth       ResPak           PAKISTAN                       optimal              observed          -0.3311226   -0.7547362    0.0924910
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.9063356   -0.9447124   -0.8679589
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2370018   -0.2541111   -0.2198925
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2232736   -1.3742475   -1.0722998
6 months    CMIN             BANGLADESH                     optimal              observed          -1.3245540   -1.4700517   -1.1790564
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.5942586   -1.6602538   -1.5282633
6 months    COHORTS          INDIA                          optimal              observed          -0.8330799   -0.8601037   -0.8060561
6 months    COHORTS          PHILIPPINES                    optimal              observed          -1.0674349   -1.1091973   -1.0256724
6 months    CONTENT          PERU                           optimal              observed          -0.1321445   -0.2571628   -0.0071261
6 months    EE               PAKISTAN                       optimal              observed          -1.5244583   -1.6475267   -1.4013900
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.1818031   -1.2610452   -1.1025611
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.1778884   -1.2691532   -1.0866235
6 months    IRC              INDIA                          optimal              observed          -1.1058896   -1.2396300   -0.9721492
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.9679060   -0.9916593   -0.9441526
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.0087142   -1.0455428   -0.9718857
6 months    Keneba           GAMBIA                         optimal              observed          -0.8054350   -0.8527485   -0.7581214
6 months    LCNI-5           MALAWI                         optimal              observed          -1.0571533   -1.1142583   -1.0000483
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.0106049   -1.1184468   -0.9027629
6 months    MAL-ED           BRAZIL                         optimal              observed           0.1034926   -0.0473204    0.2543056
6 months    MAL-ED           INDIA                          optimal              observed          -1.0457381   -1.1625765   -0.9288997
6 months    MAL-ED           NEPAL                          optimal              observed          -0.4278721   -0.5347409   -0.3210034
6 months    MAL-ED           PERU                           optimal              observed          -1.1663876   -1.2690605   -1.0637146
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.9856975   -1.1149061   -0.8564888
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1955658   -1.3161092   -1.0750223
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.2255432   -1.3144852   -1.1366012
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.0454699   -1.1173852   -0.9735547
6 months    PROBIT           BELARUS                        optimal              observed           0.1081581    0.0140956    0.2022206
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.9918516   -1.0672027   -0.9165006
6 months    ResPak           PAKISTAN                       optimal              observed          -1.0971177   -1.3401323   -0.8541032
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.0603753   -1.1389049   -0.9818458
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.2526827   -1.3452745   -1.1600908
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4618132   -0.5105795   -0.4130469
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7803000   -0.8065174   -0.7540826
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4758012   -2.5869293   -2.3646731
24 months   CMIN             BANGLADESH                     optimal              observed          -2.2666452   -2.4092096   -2.1240808
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.7543888   -2.8295911   -2.6791865
24 months   COHORTS          INDIA                          optimal              observed          -2.0064330   -2.0399733   -1.9728927
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.3651061   -2.4108075   -2.3194047
24 months   CONTENT          PERU                           optimal              observed          -0.5973836   -0.7503407   -0.4444264
24 months   EE               PAKISTAN                       optimal              observed          -2.4125240   -2.5768688   -2.2481791
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7920914   -1.8821881   -1.7019946
24 months   IRC              INDIA                          optimal              observed          -1.7243614   -1.8241787   -1.6245441
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.7746519   -1.8042674   -1.7450364
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.5592803   -1.5963129   -1.5222478
24 months   Keneba           GAMBIA                         optimal              observed          -1.4959859   -1.5467631   -1.4452087
24 months   LCNI-5           MALAWI                         optimal              observed          -1.5051985   -1.5903570   -1.4200399
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.8583209   -1.9906768   -1.7259649
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0584932   -0.1188716    0.2358580
24 months   MAL-ED           INDIA                          optimal              observed          -1.7765629   -1.9041976   -1.6489281
24 months   MAL-ED           NEPAL                          optimal              observed          -1.2059038   -1.3243527   -1.0874548
24 months   MAL-ED           PERU                           optimal              observed          -1.6509466   -1.7712753   -1.5306179
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.6096482   -1.7516037   -1.4676928
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5507156   -2.6977548   -2.4036763
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -2.0501717   -2.1551195   -1.9452239
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.3360102   -1.4215781   -1.2504422
24 months   PROBIT           BELARUS                        optimal              observed          -0.3015346   -0.5955346   -0.0075346
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.5277172   -1.6123895   -1.4430449
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5230193   -1.5828651   -1.4631735


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     observed             observed          -1.8811538   -2.5124807   -1.2498270
Birth       COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          observed             observed          -0.9968455   -1.0246180   -0.9690730
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    CONTENT          PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
6 months    Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       observed             observed          -1.4314086   -1.6374838   -1.2253335
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679450   -0.8935071   -0.8423828
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9923738   -3.0565851   -2.9281626
24 months   COHORTS          INDIA                          observed             observed          -2.1198201   -2.1524299   -2.0872104
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   CONTENT          PERU                           observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958
24 months   Keneba           GAMBIA                         observed             observed          -1.5774356   -1.6272400   -1.5276311
24 months   LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6055701   -1.6625562   -1.5485840


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3697888   -0.5434915   -0.1960861
Birth       CMIN             BANGLADESH                     optimal              observed          -0.8970593   -1.4696533   -0.3244654
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1773510   -0.2276260   -0.1270760
Birth       COHORTS          INDIA                          optimal              observed          -0.2758560   -0.2950190   -0.2566931
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1606026   -0.1839728   -0.1372323
Birth       EE               PAKISTAN                       optimal              observed          -0.9415562   -1.1221075   -0.7610050
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.3375471   -0.3974407   -0.2776534
Birth       IRC              INDIA                          optimal              observed          -0.3545375   -0.4598719   -0.2492030
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.6172135   -0.6331296   -0.6012974
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.5393904   -0.5788459   -0.4999350
Birth       Keneba           GAMBIA                         optimal              observed          -0.1733902   -0.2120560   -0.1347244
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.3713131   -0.4768878   -0.2657385
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.3135507   -0.5141719   -0.1129295
Birth       MAL-ED           INDIA                          optimal              observed          -0.3588386   -0.6262843   -0.0913928
Birth       MAL-ED           PERU                           optimal              observed          -0.2001624   -0.2768306   -0.1234942
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2003916   -0.3336694   -0.0671138
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4266732   -0.6058332   -0.2475133
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.3189765   -0.3811332   -0.2568197
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.2517443   -0.3001167   -0.2033718
Birth       PROBIT           BELARUS                        optimal              observed          -0.0091347   -0.0149456   -0.0033238
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.1490940   -0.1906687   -0.1075192
Birth       ResPak           PAKISTAN                       optimal              observed          -0.6488774   -1.0661574   -0.2315974
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.5250861   -0.5956354   -0.4545367
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2632706   -0.2771211   -0.2494201
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2001771   -0.2811116   -0.1192427
6 months    CMIN             BANGLADESH                     optimal              observed          -0.4598835   -0.5815926   -0.3381744
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.2214750   -0.2624932   -0.1804569
6 months    COHORTS          INDIA                          optimal              observed          -0.1637656   -0.1784494   -0.1490817
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0731375   -0.0874483   -0.0588267
6 months    CONTENT          PERU                           optimal              observed          -0.1463811   -0.2138871   -0.0788751
6 months    EE               PAKISTAN                       optimal              observed          -0.5590984   -0.6705644   -0.4476324
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.1690361   -0.2161345   -0.1219378
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.3840124   -0.4730168   -0.2950080
6 months    IRC              INDIA                          optimal              observed          -0.1285166   -0.1867068   -0.0703265
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.3451872   -0.3590976   -0.3312769
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3360798   -0.3606959   -0.3114637
6 months    Keneba           GAMBIA                         optimal              observed          -0.0987020   -0.1194925   -0.0779115
6 months    LCNI-5           MALAWI                         optimal              observed          -0.6030374   -0.6670869   -0.5389879
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1943882   -0.2714813   -0.1172952
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0559169   -0.1152924    0.0034586
6 months    MAL-ED           INDIA                          optimal              observed          -0.1657873   -0.2385688   -0.0930059
6 months    MAL-ED           NEPAL                          optimal              observed          -0.1337098   -0.1963192   -0.0711003
6 months    MAL-ED           PERU                           optimal              observed          -0.1572785   -0.2187172   -0.0958398
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0776228   -0.1333876   -0.0218579
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1731792   -0.2436824   -0.1026760
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.1818388   -0.2311231   -0.1325546
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.1532084   -0.1906559   -0.1157610
6 months    PROBIT           BELARUS                        optimal              observed          -0.0101507   -0.0160550   -0.0042463
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0998399   -0.1334879   -0.0661918
6 months    ResPak           PAKISTAN                       optimal              observed          -0.3342909   -0.5020151   -0.1665667
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.3414810   -0.3825482   -0.3004137
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.6460016   -0.7507487   -0.5412544
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0816257   -0.0999928   -0.0632585
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0876450   -0.0978027   -0.0774873
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0830667   -0.1365422   -0.0295912
24 months   CMIN             BANGLADESH                     optimal              observed          -0.2443052   -0.3461763   -0.1424341
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.2379851   -0.2822269   -0.1937432
24 months   COHORTS          INDIA                          optimal              observed          -0.1133871   -0.1276276   -0.0991467
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0490084   -0.0618730   -0.0361438
24 months   CONTENT          PERU                           optimal              observed          -0.0894762   -0.1582328   -0.0207196
24 months   EE               PAKISTAN                       optimal              observed          -0.2574660   -0.3823993   -0.1325328
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0953267   -0.1388282   -0.0518251
24 months   IRC              INDIA                          optimal              observed          -0.0744161   -0.1104263   -0.0384060
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.2389962   -0.2555044   -0.2224880
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.2214415   -0.2428676   -0.2000153
24 months   Keneba           GAMBIA                         optimal              observed          -0.0814497   -0.1020840   -0.0608154
24 months   LCNI-5           MALAWI                         optimal              observed          -0.3809501   -0.4489344   -0.3129657
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.1200754   -0.1828337   -0.0573170
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0523788   -0.1147494    0.0099918
24 months   MAL-ED           INDIA                          optimal              observed          -0.1096266   -0.1762502   -0.0430029
24 months   MAL-ED           NEPAL                          optimal              observed          -0.1016840   -0.1602249   -0.0431430
24 months   MAL-ED           PERU                           optimal              observed          -0.1015244   -0.1656533   -0.0373955
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0354113   -0.0811475    0.0103249
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0948452   -0.1528342   -0.0368562
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.1688862   -0.2265072   -0.1112651
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1052544   -0.1457670   -0.0647418
24 months   PROBIT           BELARUS                        optimal              observed           0.1572455    0.0899166    0.2245743
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0747049   -0.1095472   -0.0398627
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0825508   -0.1089130   -0.0561887

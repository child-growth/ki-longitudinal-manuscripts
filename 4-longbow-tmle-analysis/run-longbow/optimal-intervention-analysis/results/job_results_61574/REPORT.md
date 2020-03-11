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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              74      86
Birth       CMC-V-BCS-2002   INDIA                          1              12      86
Birth       CMIN             BANGLADESH                     0              17      19
Birth       CMIN             BANGLADESH                     1               2      19
Birth       COHORTS          GUATEMALA                      0             732     756
Birth       COHORTS          GUATEMALA                      1              24     756
Birth       COHORTS          INDIA                          0            5813    6193
Birth       COHORTS          INDIA                          1             380    6193
Birth       COHORTS          PHILIPPINES                    0            2813    2899
Birth       COHORTS          PHILIPPINES                    1              86    2899
Birth       CONTENT          PERU                           0               2       2
Birth       CONTENT          PERU                           1               0       2
Birth       EE               PAKISTAN                       0             137     177
Birth       EE               PAKISTAN                       1              40     177
Birth       GMS-Nepal        NEPAL                          0             570     641
Birth       GMS-Nepal        NEPAL                          1              71     641
Birth       IRC              INDIA                          0             318     343
Birth       IRC              INDIA                          1              25     343
Birth       JiVitA-3         BANGLADESH                     0           15027   18014
Birth       JiVitA-3         BANGLADESH                     1            2987   18014
Birth       JiVitA-4         BANGLADESH                     0            1963    2396
Birth       JiVitA-4         BANGLADESH                     1             433    2396
Birth       Keneba           GAMBIA                         0            1425    1466
Birth       Keneba           GAMBIA                         1              41    1466
Birth       MAL-ED           BANGLADESH                     0             187     215
Birth       MAL-ED           BANGLADESH                     1              28     215
Birth       MAL-ED           BRAZIL                         0              56      62
Birth       MAL-ED           BRAZIL                         1               6      62
Birth       MAL-ED           INDIA                          0              37      45
Birth       MAL-ED           INDIA                          1               8      45
Birth       MAL-ED           NEPAL                          0              25      26
Birth       MAL-ED           NEPAL                          1               1      26
Birth       MAL-ED           PERU                           0             207     228
Birth       MAL-ED           PERU                           1              21     228
Birth       MAL-ED           SOUTH AFRICA                   0             112     120
Birth       MAL-ED           SOUTH AFRICA                   1               8     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              13     115
Birth       NIH-Birth        BANGLADESH                     0             506     575
Birth       NIH-Birth        BANGLADESH                     1              69     575
Birth       NIH-Crypto       BANGLADESH                     0             625     707
Birth       NIH-Crypto       BANGLADESH                     1              82     707
Birth       PROBIT           BELARUS                        0           13790   13817
Birth       PROBIT           BELARUS                        1              27   13817
Birth       PROVIDE          BANGLADESH                     0             491     532
Birth       PROVIDE          BANGLADESH                     1              41     532
Birth       ResPak           PAKISTAN                       0              28      38
Birth       ResPak           PAKISTAN                       1              10      38
Birth       SAS-CompFeed     INDIA                          0             901    1103
Birth       SAS-CompFeed     INDIA                          1             202    1103
Birth       ZVITAMBO         ZIMBABWE                       0           12227   12917
Birth       ZVITAMBO         ZIMBABWE                       1             690   12917
6 months    CMC-V-BCS-2002   INDIA                          0             292     368
6 months    CMC-V-BCS-2002   INDIA                          1              76     368
6 months    CMIN             BANGLADESH                     0             151     243
6 months    CMIN             BANGLADESH                     1              92     243
6 months    COHORTS          GUATEMALA                      0             809     963
6 months    COHORTS          GUATEMALA                      1             154     963
6 months    COHORTS          INDIA                          0            6034    6850
6 months    COHORTS          INDIA                          1             816    6850
6 months    COHORTS          PHILIPPINES                    0            2549    2706
6 months    COHORTS          PHILIPPINES                    1             157    2706
6 months    CONTENT          PERU                           0             195     215
6 months    CONTENT          PERU                           1              20     215
6 months    EE               PAKISTAN                       0             209     375
6 months    EE               PAKISTAN                       1             166     375
6 months    GMS-Nepal        NEPAL                          0             473     564
6 months    GMS-Nepal        NEPAL                          1              91     564
6 months    Guatemala BSC    GUATEMALA                      0             228     299
6 months    Guatemala BSC    GUATEMALA                      1              71     299
6 months    IRC              INDIA                          0             356     408
6 months    IRC              INDIA                          1              52     408
6 months    JiVitA-3         BANGLADESH                     0           11673   16784
6 months    JiVitA-3         BANGLADESH                     1            5111   16784
6 months    JiVitA-4         BANGLADESH                     0            3473    4833
6 months    JiVitA-4         BANGLADESH                     1            1360    4833
6 months    Keneba           GAMBIA                         0            1893    2089
6 months    Keneba           GAMBIA                         1             196    2089
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
6 months    PROBIT           BELARUS                        0           15641   15757
6 months    PROBIT           BELARUS                        1             116   15757
6 months    PROVIDE          BANGLADESH                     0             542     603
6 months    PROVIDE          BANGLADESH                     1              61     603
6 months    ResPak           PAKISTAN                       0             173     239
6 months    ResPak           PAKISTAN                       1              66     239
6 months    SAS-CompFeed     INDIA                          0             969    1334
6 months    SAS-CompFeed     INDIA                          1             365    1334
6 months    SAS-FoodSuppl    INDIA                          0             232     380
6 months    SAS-FoodSuppl    INDIA                          1             148     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028
6 months    ZVITAMBO         ZIMBABWE                       0            7632    8505
6 months    ZVITAMBO         ZIMBABWE                       1             873    8505
24 months   CMC-V-BCS-2002   INDIA                          0             295     372
24 months   CMC-V-BCS-2002   INDIA                          1              77     372
24 months   CMIN             BANGLADESH                     0             153     243
24 months   CMIN             BANGLADESH                     1              90     243
24 months   COHORTS          GUATEMALA                      0             743    1082
24 months   COHORTS          GUATEMALA                      1             339    1082
24 months   COHORTS          INDIA                          0            4654    5291
24 months   COHORTS          INDIA                          1             637    5291
24 months   COHORTS          PHILIPPINES                    0            2311    2449
24 months   COHORTS          PHILIPPINES                    1             138    2449
24 months   CONTENT          PERU                           0             147     164
24 months   CONTENT          PERU                           1              17     164
24 months   EE               PAKISTAN                       0             100     168
24 months   EE               PAKISTAN                       1              68     168
24 months   GMS-Nepal        NEPAL                          0             405     487
24 months   GMS-Nepal        NEPAL                          1              82     487
24 months   IRC              INDIA                          0             358     409
24 months   IRC              INDIA                          1              51     409
24 months   JiVitA-3         BANGLADESH                     0            5914    8603
24 months   JiVitA-3         BANGLADESH                     1            2689    8603
24 months   JiVitA-4         BANGLADESH                     0            3380    4735
24 months   JiVitA-4         BANGLADESH                     1            1355    4735
24 months   Keneba           GAMBIA                         0            1550    1726
24 months   Keneba           GAMBIA                         1             176    1726
24 months   LCNI-5           MALAWI                         0             365     563
24 months   LCNI-5           MALAWI                         1             198     563
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
24 months   NIH-Birth        BANGLADESH                     0             354     428
24 months   NIH-Birth        BANGLADESH                     1              74     428
24 months   NIH-Crypto       BANGLADESH                     0             444     514
24 months   NIH-Crypto       BANGLADESH                     1              70     514
24 months   PROBIT           BELARUS                        0            3957    3970
24 months   PROBIT           BELARUS                        1              13    3970
24 months   PROVIDE          BANGLADESH                     0             519     579
24 months   PROVIDE          BANGLADESH                     1              60     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ZVITAMBO         ZIMBABWE                       0             331     433
24 months   ZVITAMBO         ZIMBABWE                       1             102     433


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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
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
![](/tmp/68e49c46-4f04-4687-842a-57fcac83e147/2a8fda8b-85de-449c-bc01-1cf1625ebed0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3990791   -1.0040673    0.2059092
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.2884656   -0.8815779    0.3046467
Birth       COHORTS          INDIA                          optimal              observed          -0.6987453   -0.8345718   -0.5629188
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.2429378   -0.5356682    0.0497926
Birth       EE               PAKISTAN                       optimal              observed          -0.0477417   -0.4586278    0.3631444
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.9808520   -1.2679898   -0.6937141
Birth       IRC              INDIA                          optimal              observed           0.2334676   -0.4153441    0.8822794
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.6965419   -0.7353466   -0.6577372
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6839336   -0.7415979   -0.6262693
Birth       Keneba           GAMBIA                         optimal              observed          -0.0521757   -0.5179491    0.4135978
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.5355262   -0.9850926   -0.0859599
Birth       MAL-ED           BRAZIL                         optimal              observed           0.9919549   -0.0412601    2.0251698
Birth       MAL-ED           INDIA                          optimal              observed          -1.2719836   -1.6670033   -0.8769638
Birth       MAL-ED           PERU                           optimal              observed          -0.0061808   -0.1315720    0.1192104
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.4850494   -0.5682397    1.5383386
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6844119   -0.3473215    1.7161454
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.3002605   -1.5243025   -1.0762184
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8727800   -1.0954275   -0.6501324
Birth       PROBIT           BELARUS                        optimal              observed           0.6274675    0.5998581    0.6550769
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2762926   -1.3569141   -1.1956711
Birth       ResPak           PAKISTAN                       optimal              observed          -0.6329877   -1.4674777    0.2015023
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.5871121   -0.9461850   -0.2280393
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.1923741    0.0526106    0.3321375
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4039809   -0.6385532   -0.1694085
6 months    CMIN             BANGLADESH                     optimal              observed          -0.8528766   -1.0413615   -0.6643917
6 months    COHORTS          GUATEMALA                      optimal              observed           0.2240848    0.1069488    0.3412208
6 months    COHORTS          INDIA                          optimal              observed          -0.6493557   -0.6782270   -0.6204844
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2327506   -0.3483105   -0.1171907
6 months    CONTENT          PERU                           optimal              observed           1.0807714    0.9533390    1.2082038
6 months    EE               PAKISTAN                       optimal              observed          -0.8161433   -0.9719205   -0.6603662
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.5051274   -0.6619261   -0.3483287
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0411632   -0.1659620    0.0836356
6 months    IRC              INDIA                          optimal              observed          -0.2922496   -0.7862447    0.2017455
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5558538   -0.5783111   -0.5333966
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3522588   -0.3957703   -0.3087474
6 months    Keneba           GAMBIA                         optimal              observed          -0.1707906   -0.2484833   -0.0930978
6 months    LCNI-5           MALAWI                         optimal              observed           0.5586064    0.4656580    0.6515548
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1207426   -0.2651232    0.0236380
6 months    MAL-ED           BRAZIL                         optimal              observed           1.0522739    0.8783809    1.2261668
6 months    MAL-ED           INDIA                          optimal              observed          -0.6547842   -0.8531295   -0.4564389
6 months    MAL-ED           NEPAL                          optimal              observed           0.1417706    0.0018018    0.2817394
6 months    MAL-ED           PERU                           optimal              observed           1.2742199    1.0783032    1.4701367
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           1.0226055    0.5013119    1.5438990
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5438716    0.2388851    0.8488582
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.4238882   -0.5884104   -0.2593660
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0563415   -0.0282486    0.1409316
6 months    PROBIT           BELARUS                        optimal              observed           0.4625428    0.4029154    0.5221703
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1857179   -0.2848647   -0.0865711
6 months    ResPak           PAKISTAN                       optimal              observed           0.1100013   -0.1126186    0.3326211
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.6064089   -0.7432699   -0.4695479
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.9617002   -1.1202567   -0.8031438
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0362828   -0.0727463    0.1453119
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.2844551    0.2299309    0.3389793
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4410924   -0.5540462   -0.3281386
24 months   CMIN             BANGLADESH                     optimal              observed          -0.7444600   -0.8783529   -0.6105671
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1889603   -0.2522679   -0.1256527
24 months   COHORTS          INDIA                          optimal              observed          -0.5578370   -0.5875718   -0.5281023
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.5925006   -0.6299968   -0.5550043
24 months   CONTENT          PERU                           optimal              observed           0.7344754    0.5870972    0.8818536
24 months   EE               PAKISTAN                       optimal              observed          -0.8667968   -1.0487339   -0.6848598
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.1318555   -1.2730883   -0.9906227
24 months   IRC              INDIA                          optimal              observed          -0.6906178   -0.7882632   -0.5929724
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.1984418   -1.2251194   -1.1717642
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.1356815   -1.1725356   -1.0988273
24 months   Keneba           GAMBIA                         optimal              observed          -0.7877409   -0.8372493   -0.7382325
24 months   LCNI-5           MALAWI                         optimal              observed           0.0832147   -0.0187335    0.1851630
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.7588104   -0.8961318   -0.6214891
24 months   MAL-ED           BRAZIL                         optimal              observed           0.5848587   -0.0781201    1.2478376
24 months   MAL-ED           INDIA                          optimal              observed          -0.9217683   -1.0494320   -0.7941047
24 months   MAL-ED           NEPAL                          optimal              observed          -0.3576013   -0.4915264   -0.2236762
24 months   MAL-ED           PERU                           optimal              observed           0.1817816    0.0582292    0.3053340
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.3098239   -0.0902580    0.7099058
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1771184    0.0035646    0.3506722
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.8737224   -0.9792937   -0.7681510
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.5459891   -0.6457820   -0.4461962
24 months   PROBIT           BELARUS                        optimal              observed           1.1011261    0.8413293    1.3609229
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8530703   -0.9426869   -0.7634537
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2410006   -1.3973369   -1.0846643


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         observed             observed          -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       MAL-ED           INDIA                          observed             observed          -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        observed             observed          -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ResPak           PAKISTAN                       observed             observed          -0.3663158   -0.7677415    0.0351099
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    CONTENT          PERU                           observed             observed           1.0644279    0.9468682    1.1819876
6 months    EE               PAKISTAN                       observed             observed          -0.7747022   -0.8887874   -0.6606170
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
6 months    Keneba           GAMBIA                         observed             observed          -0.1846038   -0.2354782   -0.1337293
6 months    LCNI-5           MALAWI                         observed             observed           0.4499404    0.3788501    0.5210308
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    MAL-ED           NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       observed             observed          -0.1641841   -0.3464247    0.0180565
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3105514    0.2848767    0.3362262
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2815804   -0.3354498   -0.2277110
24 months   COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   CONTENT          PERU                           observed             observed           0.5902439    0.4560143    0.7244735
24 months   EE               PAKISTAN                       observed             observed          -1.0120238   -1.1588493   -0.8651984
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543
24 months   Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   LCNI-5           MALAWI                         observed             observed          -0.0477709   -0.1296526    0.0341109
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1825404   -1.2814625   -1.0836183


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0657465   -0.6568470    0.5253540
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.7736773   -1.3584542   -0.1889003
Birth       COHORTS          INDIA                          optimal              observed          -0.2860004   -0.4168469   -0.1551538
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.4997873   -0.7874935   -0.2120811
Birth       EE               PAKISTAN                       optimal              observed          -0.2855634   -0.6340555    0.0629287
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.1355911   -0.4022704    0.1310882
Birth       IRC              INDIA                          optimal              observed          -1.2440507   -1.8737606   -0.6143408
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0812853   -0.1148012   -0.0477695
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0046932   -0.0288486    0.0194621
Birth       Keneba           GAMBIA                         optimal              observed          -1.1827698   -1.6402044   -0.7253352
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.4063343   -0.8221147    0.0094462
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.5890516   -1.5861140    0.4080107
Birth       MAL-ED           INDIA                          optimal              observed           0.3395391   -0.0403611    0.7194394
Birth       MAL-ED           PERU                           optimal              observed          -0.0458367   -0.0903131   -0.0013604
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.6776328   -1.6902356    0.3349700
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0780228   -0.8713415    1.0273872
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.0496613   -0.2460166    0.1466940
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.3713714   -0.5825590   -0.1601838
Birth       PROBIT           BELARUS                        optimal              observed          -1.7766457   -1.9900362   -1.5632552
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0221660   -0.0418628   -0.0024693
Birth       ResPak           PAKISTAN                       optimal              observed           0.2666719   -0.4292251    0.9625688
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0829332   -0.2898587    0.1239923
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7078637   -0.8431453   -0.5725822
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0986958   -0.2702141    0.0728225
6 months    CMIN             BANGLADESH                     optimal              observed           0.2748313    0.1308326    0.4188301
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.0300038   -0.1174700    0.0574623
6 months    COHORTS          INDIA                          optimal              observed          -0.0415246   -0.0526934   -0.0303558
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0610927   -0.1669495    0.0447641
6 months    CONTENT          PERU                           optimal              observed          -0.0163434   -0.0418425    0.0091556
6 months    EE               PAKISTAN                       optimal              observed           0.0414411   -0.0653115    0.1481937
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0987142   -0.2374151    0.0399867
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0428502   -0.1071028    0.0214025
6 months    IRC              INDIA                          optimal              observed          -0.3066801   -0.7568827    0.1435224
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0376623   -0.0490024   -0.0263222
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0375467   -0.0606878   -0.0144056
6 months    Keneba           GAMBIA                         optimal              observed          -0.0138132   -0.0717776    0.0441512
6 months    LCNI-5           MALAWI                         optimal              observed          -0.1086660   -0.1733610   -0.0439710
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0169337   -0.0674573    0.0335898
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0801965   -0.1422923   -0.0181007
6 months    MAL-ED           INDIA                          optimal              observed          -0.0532137   -0.2221268    0.1156994
6 months    MAL-ED           NEPAL                          optimal              observed          -0.0313398   -0.0796805    0.0170009
6 months    MAL-ED           PERU                           optimal              observed          -0.2213384   -0.3934319   -0.0492448
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.4804270   -0.9740140    0.0131600
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0076503   -0.2687172    0.2534166
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0235156   -0.1595962    0.1125650
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0265793   -0.0617949    0.0086363
6 months    PROBIT           BELARUS                        optimal              observed           0.1115671    0.0724049    0.1507292
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0133728   -0.0684030    0.0416575
6 months    ResPak           PAKISTAN                       optimal              observed          -0.2741854   -0.4282683   -0.1201025
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0592995   -0.1043710   -0.0142280
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.0504576   -0.1553360    0.0544207
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0446504   -0.0472345    0.1365352
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.0260963   -0.0209601    0.0731528
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1160581   -0.1689654   -0.0631508
24 months   CMIN             BANGLADESH                     optimal              observed          -0.1090791   -0.1970970   -0.0210612
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0926201   -0.1302808   -0.0549594
24 months   COHORTS          INDIA                          optimal              observed          -0.0494867   -0.0600892   -0.0388842
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0174586   -0.0277028   -0.0072145
24 months   CONTENT          PERU                           optimal              observed          -0.1442315   -0.2131454   -0.0753175
24 months   EE               PAKISTAN                       optimal              observed          -0.1452270   -0.2707746   -0.0196793
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0044553   -0.1148730    0.1059625
24 months   IRC              INDIA                          optimal              observed          -0.0551972   -0.0908210   -0.0195733
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0993613   -0.1143852   -0.0843375
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0874273   -0.1077969   -0.0670577
24 months   Keneba           GAMBIA                         optimal              observed          -0.0221881   -0.0385106   -0.0058655
24 months   LCNI-5           MALAWI                         optimal              observed          -0.1309856   -0.1956681   -0.0663031
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.0604820   -0.1083962   -0.0125678
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.1222355   -0.7215957    0.4771248
24 months   MAL-ED           INDIA                          optimal              observed          -0.0298837   -0.0801703    0.0204030
24 months   MAL-ED           NEPAL                          optimal              observed          -0.0173110   -0.1389216    0.1042997
24 months   MAL-ED           PERU                           optimal              observed          -0.0705834   -0.1354825   -0.0056844
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.0992062   -0.2778530    0.4762654
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1223209   -0.2435981   -0.0010437
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.0378567   -0.0857000    0.0099866
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0643611   -0.1059894   -0.0227328
24 months   PROBIT           BELARUS                        optimal              observed          -0.4029855   -0.6619601   -0.1440108
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0397967   -0.0767112   -0.0028821
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed           0.0584602   -0.0590695    0.1759899

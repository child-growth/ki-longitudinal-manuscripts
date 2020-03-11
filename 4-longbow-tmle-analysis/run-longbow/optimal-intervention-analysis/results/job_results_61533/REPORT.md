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

**Intervention Variable:** enwast

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

agecat      studyid          country                        enwast    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0             75      87
Birth       CMC-V-BCS-2002   INDIA                          1             12      87
Birth       CMIN             BANGLADESH                     0             15      19
Birth       CMIN             BANGLADESH                     1              4      19
Birth       COHORTS          GUATEMALA                      0            564     762
Birth       COHORTS          GUATEMALA                      1            198     762
Birth       COHORTS          INDIA                          0           5097    6231
Birth       COHORTS          INDIA                          1           1134    6231
Birth       COHORTS          PHILIPPINES                    0           2448    2910
Birth       COHORTS          PHILIPPINES                    1            462    2910
Birth       CONTENT          PERU                           0              2       2
Birth       CONTENT          PERU                           1              0       2
Birth       EE               PAKISTAN                       0            155     180
Birth       EE               PAKISTAN                       1             25     180
Birth       GMS-Nepal        NEPAL                          0            509     645
Birth       GMS-Nepal        NEPAL                          1            136     645
Birth       IRC              INDIA                          0            251     364
Birth       IRC              INDIA                          1            113     364
Birth       JiVitA-3         BANGLADESH                     0          16041   18062
Birth       JiVitA-3         BANGLADESH                     1           2021   18062
Birth       JiVitA-4         BANGLADESH                     0           2157    2399
Birth       JiVitA-4         BANGLADESH                     1            242    2399
Birth       Keneba           GAMBIA                         0           1102    1488
Birth       Keneba           GAMBIA                         1            386    1488
Birth       MAL-ED           BANGLADESH                     0            179     215
Birth       MAL-ED           BANGLADESH                     1             36     215
Birth       MAL-ED           BRAZIL                         0             60      62
Birth       MAL-ED           BRAZIL                         1              2      62
Birth       MAL-ED           INDIA                          0             40      45
Birth       MAL-ED           INDIA                          1              5      45
Birth       MAL-ED           NEPAL                          0             24      26
Birth       MAL-ED           NEPAL                          1              2      26
Birth       MAL-ED           PERU                           0            223     228
Birth       MAL-ED           PERU                           1              5     228
Birth       MAL-ED           SOUTH AFRICA                   0            108     121
Birth       MAL-ED           SOUTH AFRICA                   1             13     121
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            114     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1     115
Birth       NIH-Birth        BANGLADESH                     0            407     580
Birth       NIH-Birth        BANGLADESH                     1            173     580
Birth       NIH-Crypto       BANGLADESH                     0            535     713
Birth       NIH-Crypto       BANGLADESH                     1            178     713
Birth       PROBIT           BELARUS                        0          10909   13886
Birth       PROBIT           BELARUS                        1           2977   13886
Birth       PROVIDE          BANGLADESH                     0            415     532
Birth       PROVIDE          BANGLADESH                     1            117     532
Birth       ResPak           PAKISTAN                       0             34      38
Birth       ResPak           PAKISTAN                       1              4      38
Birth       SAS-CompFeed     INDIA                          0            985    1105
Birth       SAS-CompFeed     INDIA                          1            120    1105
Birth       ZVITAMBO         ZIMBABWE                       0          10856   13092
Birth       ZVITAMBO         ZIMBABWE                       1           2236   13092
6 months    CMC-V-BCS-2002   INDIA                          0            272     363
6 months    CMC-V-BCS-2002   INDIA                          1             91     363
6 months    CMIN             BANGLADESH                     0            218     232
6 months    CMIN             BANGLADESH                     1             14     232
6 months    COHORTS          GUATEMALA                      0            725     901
6 months    COHORTS          GUATEMALA                      1            176     901
6 months    COHORTS          INDIA                          0           5364    6508
6 months    COHORTS          INDIA                          1           1144    6508
6 months    COHORTS          PHILIPPINES                    0           2191    2593
6 months    COHORTS          PHILIPPINES                    1            402    2593
6 months    CONTENT          PERU                           0            214     215
6 months    CONTENT          PERU                           1              1     215
6 months    EE               PAKISTAN                       0            255     292
6 months    EE               PAKISTAN                       1             37     292
6 months    GMS-Nepal        NEPAL                          0            421     528
6 months    GMS-Nepal        NEPAL                          1            107     528
6 months    Guatemala BSC    GUATEMALA                      0            293     299
6 months    Guatemala BSC    GUATEMALA                      1              6     299
6 months    IRC              INDIA                          0            268     382
6 months    IRC              INDIA                          1            114     382
6 months    JiVitA-3         BANGLADESH                     0          12724   14244
6 months    JiVitA-3         BANGLADESH                     1           1520   14244
6 months    JiVitA-4         BANGLADESH                     0           4010    4410
6 months    JiVitA-4         BANGLADESH                     1            400    4410
6 months    Keneba           GAMBIA                         0           1641    2029
6 months    Keneba           GAMBIA                         1            388    2029
6 months    LCNI-5           MALAWI                         0            825     839
6 months    LCNI-5           MALAWI                         1             14     839
6 months    MAL-ED           BANGLADESH                     0            188     229
6 months    MAL-ED           BANGLADESH                     1             41     229
6 months    MAL-ED           BRAZIL                         0            192     199
6 months    MAL-ED           BRAZIL                         1              7     199
6 months    MAL-ED           INDIA                          0            189     232
6 months    MAL-ED           INDIA                          1             43     232
6 months    MAL-ED           NEPAL                          0            201     232
6 months    MAL-ED           NEPAL                          1             31     232
6 months    MAL-ED           PERU                           0            261     266
6 months    MAL-ED           PERU                           1              5     266
6 months    MAL-ED           SOUTH AFRICA                   0            235     253
6 months    MAL-ED           SOUTH AFRICA                   1             18     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            235     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     238
6 months    NIH-Birth        BANGLADESH                     0            368     514
6 months    NIH-Birth        BANGLADESH                     1            146     514
6 months    NIH-Crypto       BANGLADESH                     0            517     694
6 months    NIH-Crypto       BANGLADESH                     1            177     694
6 months    PROBIT           BELARUS                        0          12689   15753
6 months    PROBIT           BELARUS                        1           3064   15753
6 months    PROVIDE          BANGLADESH                     0            472     597
6 months    PROVIDE          BANGLADESH                     1            125     597
6 months    ResPak           PAKISTAN                       0            185     228
6 months    ResPak           PAKISTAN                       1             43     228
6 months    SAS-CompFeed     INDIA                          0           1074    1213
6 months    SAS-CompFeed     INDIA                          1            139    1213
6 months    SAS-FoodSuppl    INDIA                          0            311     380
6 months    SAS-FoodSuppl    INDIA                          1             69     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020
6 months    ZVITAMBO         ZIMBABWE                       0           6904    8174
6 months    ZVITAMBO         ZIMBABWE                       1           1270    8174
24 months   CMC-V-BCS-2002   INDIA                          0            272     364
24 months   CMC-V-BCS-2002   INDIA                          1             92     364
24 months   CMIN             BANGLADESH                     0            217     232
24 months   CMIN             BANGLADESH                     1             15     232
24 months   COHORTS          GUATEMALA                      0            874    1027
24 months   COHORTS          GUATEMALA                      1            153    1027
24 months   COHORTS          INDIA                          0           4252    5070
24 months   COHORTS          INDIA                          1            818    5070
24 months   COHORTS          PHILIPPINES                    0           1989    2347
24 months   COHORTS          PHILIPPINES                    1            358    2347
24 months   CONTENT          PERU                           0            163     164
24 months   CONTENT          PERU                           1              1     164
24 months   EE               PAKISTAN                       0            115     137
24 months   EE               PAKISTAN                       1             22     137
24 months   GMS-Nepal        NEPAL                          0            365     455
24 months   GMS-Nepal        NEPAL                          1             90     455
24 months   IRC              INDIA                          0            269     383
24 months   IRC              INDIA                          1            114     383
24 months   JiVitA-3         BANGLADESH                     0           6422    7242
24 months   JiVitA-3         BANGLADESH                     1            820    7242
24 months   JiVitA-4         BANGLADESH                     0           3943    4315
24 months   JiVitA-4         BANGLADESH                     1            372    4315
24 months   Keneba           GAMBIA                         0           1354    1677
24 months   Keneba           GAMBIA                         1            323    1677
24 months   LCNI-5           MALAWI                         0            569     579
24 months   LCNI-5           MALAWI                         1             10     579
24 months   MAL-ED           BANGLADESH                     0            164     201
24 months   MAL-ED           BANGLADESH                     1             37     201
24 months   MAL-ED           BRAZIL                         0            154     160
24 months   MAL-ED           BRAZIL                         1              6     160
24 months   MAL-ED           INDIA                          0            180     223
24 months   MAL-ED           INDIA                          1             43     223
24 months   MAL-ED           NEPAL                          0            195     225
24 months   MAL-ED           NEPAL                          1             30     225
24 months   MAL-ED           PERU                           0            193     197
24 months   MAL-ED           PERU                           1              4     197
24 months   MAL-ED           SOUTH AFRICA                   0            221     237
24 months   MAL-ED           SOUTH AFRICA                   1             16     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            202     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     205
24 months   NIH-Birth        BANGLADESH                     0            293     409
24 months   NIH-Birth        BANGLADESH                     1            116     409
24 months   NIH-Crypto       BANGLADESH                     0            364     500
24 months   NIH-Crypto       BANGLADESH                     1            136     500
24 months   PROBIT           BELARUS                        0           3118    4032
24 months   PROBIT           BELARUS                        1            914    4032
24 months   PROVIDE          BANGLADESH                     0            452     570
24 months   PROVIDE          BANGLADESH                     1            118     570
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ZVITAMBO         ZIMBABWE                       0           1346    1505
24 months   ZVITAMBO         ZIMBABWE                       1            159    1505


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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/c1a35cec-1d24-4c5c-b02f-f29ccb1ade5a/ba9a4609-8dd5-4511-9b83-a8135d611d3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6804219   -1.1554880   -0.2053557
Birth       COHORTS          GUATEMALA                      optimal              observed           0.7277443    0.5819819    0.8735067
Birth       COHORTS          INDIA                          optimal              observed          -0.2938858   -0.3593114   -0.2284602
Birth       COHORTS          PHILIPPINES                    optimal              observed           0.2287052    0.1243311    0.3330794
Birth       EE               PAKISTAN                       optimal              observed          -0.6354206   -1.3502146    0.0793734
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.7827080   -0.9428282   -0.6225877
Birth       IRC              INDIA                          optimal              observed           0.9402506    0.6525550    1.2279461
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.0890134   -1.1373445   -1.0406824
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.1300578   -1.2892788   -0.9708367
Birth       Keneba           GAMBIA                         optimal              observed           0.6821705    0.5558910    0.8084500
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.9293385   -1.2634731   -0.5952039
Birth       MAL-ED           INDIA                          optimal              observed          -1.5160651   -2.3325048   -0.6996253
Birth       MAL-ED           PERU                           optimal              observed          -1.1715922   -1.5625774   -0.7806070
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.1636945   -0.4264503    0.7538394
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.6767005   -0.8622348   -0.4911661
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.7249796   -0.8595385   -0.5904208
Birth       PROBIT           BELARUS                        optimal              observed           2.1702587    1.9841885    2.3563289
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.7927034   -0.9347439   -0.6506629
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.1391246   -1.2721832   -1.0060660
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.2316491    0.1750934    0.2882048
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3769856   -1.5799590   -1.1740123
6 months    CMIN             BANGLADESH                     optimal              observed          -1.7833280   -2.1190703   -1.4475856
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.6567305   -1.7976499   -1.5158112
6 months    COHORTS          INDIA                          optimal              observed          -0.9736993   -1.0286981   -0.9187005
6 months    COHORTS          PHILIPPINES                    optimal              observed          -1.0639565   -1.1680329   -0.9598801
6 months    EE               PAKISTAN                       optimal              observed          -2.0267020   -2.2538483   -1.7995556
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.2289164   -1.3646138   -1.0932191
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.5321966   -1.6426128   -1.4217804
6 months    IRC              INDIA                          optimal              observed          -1.0567404   -1.2459881   -0.8674927
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.0760800   -1.1284287   -1.0237313
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2411451   -1.2793817   -1.2029084
6 months    Keneba           GAMBIA                         optimal              observed          -0.9269092   -0.9853140   -0.8685044
6 months    LCNI-5           MALAWI                         optimal              observed          -2.0514480   -2.3520694   -1.7508265
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.1304352   -1.2600946   -1.0007758
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0899073   -0.0622088    0.2420233
6 months    MAL-ED           INDIA                          optimal              observed          -1.3898717   -1.6540713   -1.1256722
6 months    MAL-ED           NEPAL                          optimal              observed          -0.4719629   -0.5912773   -0.3526485
6 months    MAL-ED           PERU                           optimal              observed          -0.8766675   -1.4642421   -0.2890929
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -1.2445048   -1.6260683   -0.8629413
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.4815299   -1.6179626   -1.3450971
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1143596   -1.2243186   -1.0044006
6 months    PROBIT           BELARUS                        optimal              observed           0.1150774    0.0114566    0.2186982
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0586192   -1.1591553   -0.9580831
6 months    ResPak           PAKISTAN                       optimal              observed          -1.2404240   -1.6591124   -0.8217356
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.2516551   -1.3456994   -1.1576108
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.8135952   -1.9540480   -1.6731424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6258080   -0.7830308   -0.4685852
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7458194   -0.7734361   -0.7182026
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4871530   -2.6679174   -2.3063885
24 months   CMIN             BANGLADESH                     optimal              observed          -2.4765108   -2.6092993   -2.3437222
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.7880092   -2.9569481   -2.6190704
24 months   COHORTS          INDIA                          optimal              observed          -2.0435525   -2.1169315   -1.9701736
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.2508045   -2.3583014   -2.1433077
24 months   EE               PAKISTAN                       optimal              observed          -2.6152335   -2.9315722   -2.2988948
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7178641   -1.8753888   -1.5603394
24 months   IRC              INDIA                          optimal              observed          -1.6779725   -1.8059812   -1.5499638
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.8700848   -1.9375073   -1.8026624
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.7130745   -1.7515552   -1.6745937
24 months   Keneba           GAMBIA                         optimal              observed          -1.5398595   -1.6125284   -1.4671905
24 months   LCNI-5           MALAWI                         optimal              observed          -2.0772522   -2.3359274   -1.8185771
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.9959207   -2.2730919   -1.7187495
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0341467   -0.1418976    0.2101909
24 months   MAL-ED           INDIA                          optimal              observed          -1.7489241   -2.0800692   -1.4177791
24 months   MAL-ED           NEPAL                          optimal              observed          -1.3369911   -1.7488731   -0.9251090
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.3824295   -2.1156527   -0.6492063
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -2.0890330   -2.2849620   -1.8931040
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.3627723   -1.5044727   -1.2210719
24 months   PROBIT           BELARUS                        optimal              observed          -0.0906985   -0.3987201    0.2173231
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.7679628   -1.8939513   -1.6419742
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5234762   -1.5842374   -1.4627150


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.8194253   -1.0062738   -0.6325768
Birth       COHORTS          GUATEMALA                      observed             observed           0.2220341    0.1435838    0.3004845
Birth       COHORTS          INDIA                          observed             observed          -0.5071369   -0.5319444   -0.4823294
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.1490962   -0.1843045   -0.1138879
Birth       EE               PAKISTAN                       observed             observed          -1.2383333   -1.3946042   -1.0820625
Birth       GMS-Nepal        NEPAL                          observed             observed          -0.9117209   -0.9811840   -0.8422578
Birth       IRC              INDIA                          observed             observed          -0.1131044   -0.2551572    0.0289484
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.1782283   -1.1929469   -1.1635098
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.2196123   -1.2608853   -1.1783394
Birth       Keneba           GAMBIA                         observed             observed           0.1338508    0.0777935    0.1899081
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9625581   -1.0817638   -0.8433525
Birth       MAL-ED           INDIA                          observed             observed          -1.0862222   -1.3432542   -0.8291902
Birth       MAL-ED           PERU                           observed             observed          -0.8352193   -0.9473216   -0.7231170
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.5594215   -0.7261377   -0.3927053
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.8156034   -0.8972149   -0.7339920
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.8487377   -0.9161997   -0.7812758
Birth       PROBIT           BELARUS                        observed             observed           1.3137865    1.1546333    1.4729398
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8579887   -0.9311892   -0.7847883
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.1641176   -1.2153187   -1.1129166
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.3412145   -0.3591726   -0.3232564
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4223508   -1.5654032   -1.2792984
6 months    CMIN             BANGLADESH                     observed             observed          -1.7090230   -1.8439050   -1.5741410
6 months    COHORTS          GUATEMALA                      observed             observed          -1.7950277   -1.8646284   -1.7254271
6 months    COHORTS          INDIA                          observed             observed          -0.9241887   -0.9514678   -0.8969095
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.0928731   -1.1347142   -1.0510321
6 months    EE               PAKISTAN                       observed             observed          -1.7873630   -1.9021295   -1.6725965
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.2753093   -1.3514861   -1.1991326
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          observed             observed          -1.1707373   -1.3023712   -1.0391035
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.1254416   -1.1482406   -1.1026426
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.2464966   -1.2832103   -1.2097829
6 months    Keneba           GAMBIA                         observed             observed          -0.8918017   -0.9392551   -0.8443483
6 months    LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.1545706   -1.2720635   -1.0370777
6 months    MAL-ED           BRAZIL                         observed             observed           0.0820017   -0.0652646    0.2292679
6 months    MAL-ED           INDIA                          observed             observed          -1.1907471   -1.3084496   -1.0730447
6 months    MAL-ED           NEPAL                          observed             observed          -0.5356897   -0.6466309   -0.4247484
6 months    MAL-ED           PERU                           observed             observed          -1.3000971   -1.4087542   -1.1914400
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0492424   -1.1743146   -0.9241702
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.3447001   -1.4316348   -1.2577653
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1560014   -1.2261266   -1.0858763
6 months    PROBIT           BELARUS                        observed             observed           0.0987124    0.0071839    0.1902410
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0728671   -1.1465641   -0.9991701
6 months    ResPak           PAKISTAN                       observed             observed          -1.4274196   -1.6382670   -1.2165722
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.2781121   -1.3694457   -1.1867786
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424220   -0.5912180   -0.4936261
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8157359   -0.8414876   -0.7899842
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5559249   -2.6552739   -2.4565759
24 months   CMIN             BANGLADESH                     observed             observed          -2.4877155   -2.6168325   -2.3585986
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9946835   -3.0601854   -2.9291817
24 months   COHORTS          INDIA                          observed             observed          -2.0741479   -2.1071054   -2.0411904
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.3841755   -2.4295300   -2.3388211
24 months   EE               PAKISTAN                       observed             observed          -2.5941727   -2.7436756   -2.4446699
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8435238   -1.9304004   -1.7566473
24 months   IRC              INDIA                          observed             observed          -1.7639600   -1.8601530   -1.6677669
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.8772038   -1.9062064   -1.8482013
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7182341   -1.7544244   -1.6820437
24 months   Keneba           GAMBIA                         observed             observed          -1.5730887   -1.6234321   -1.5227452
24 months   LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9287562   -2.0568859   -1.8006265
24 months   MAL-ED           BRAZIL                         observed             observed           0.0113750   -0.1608859    0.1836359
24 months   MAL-ED           INDIA                          observed             observed          -1.8697758   -1.9956076   -1.7439440
24 months   MAL-ED           NEPAL                          observed             observed          -1.2990889   -1.4193577   -1.1788201
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6435830   -1.7787856   -1.5083803
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.1580827   -2.2606216   -2.0555438
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4121200   -1.4955578   -1.3286822
24 months   PROBIT           BELARUS                        observed             observed          -0.1437293   -0.4231910    0.1357324
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.5877105   -1.6705437   -1.5048773
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.5460133   -1.6038691   -1.4881575


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1390034   -0.5846845    0.3066777
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.5057102   -0.6344796   -0.3769408
Birth       COHORTS          INDIA                          optimal              observed          -0.2132511   -0.2711118   -0.1553904
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.3778014   -0.4710415   -0.2845614
Birth       EE               PAKISTAN                       optimal              observed          -0.6029127   -1.2389321    0.0331066
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.1290129   -0.2677505    0.0097247
Birth       IRC              INDIA                          optimal              observed          -1.0533550   -1.2808073   -0.8259026
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0892149   -0.1331153   -0.0453146
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0895546   -0.2360277    0.0569185
Birth       Keneba           GAMBIA                         optimal              observed          -0.5483197   -0.6528867   -0.4437527
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.0332197   -0.3264999    0.2600606
Birth       MAL-ED           INDIA                          optimal              observed           0.4298428   -0.3612571    1.2209428
Birth       MAL-ED           PERU                           optimal              observed           0.3363729   -0.0570787    0.7298245
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.7231160   -1.2775815   -0.1686505
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.1389030   -0.2835564    0.0057504
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.1237581   -0.2358326   -0.0116835
Birth       PROBIT           BELARUS                        optimal              observed          -0.8564722   -0.9958651   -0.7170792
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0652853   -0.1746467    0.0440761
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0249931   -0.1412335    0.0912473
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5728636   -0.6225212   -0.5232060
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0453651   -0.1777757    0.0870454
6 months    CMIN             BANGLADESH                     optimal              observed           0.0743050   -0.2252915    0.3739015
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1382972   -0.2673565   -0.0092379
6 months    COHORTS          INDIA                          optimal              observed           0.0495106    0.0035231    0.0954981
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0289166   -0.1217788    0.0639456
6 months    EE               PAKISTAN                       optimal              observed           0.2393390    0.0312739    0.4474040
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0463929   -0.1579700    0.0651841
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0297042   -0.0562853   -0.0031230
6 months    IRC              INDIA                          optimal              observed          -0.1139969   -0.2569289    0.0289351
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0493615   -0.0946386   -0.0040845
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0053515   -0.0164936    0.0057906
6 months    Keneba           GAMBIA                         optimal              observed           0.0351075   -0.0024034    0.0726185
6 months    LCNI-5           MALAWI                         optimal              observed           0.3912573    0.1030502    0.6794643
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0241354   -0.0813113    0.0330406
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0079056   -0.0225874    0.0067761
6 months    MAL-ED           INDIA                          optimal              observed           0.1991246   -0.0203889    0.4186381
6 months    MAL-ED           NEPAL                          optimal              observed          -0.0637267   -0.1164935   -0.0109600
6 months    MAL-ED           PERU                           optimal              observed          -0.4234296   -1.0080685    0.1612092
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.1952624   -0.1578615    0.5483862
6 months    NIH-Birth        BANGLADESH                     optimal              observed           0.1368298    0.0369484    0.2367112
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0416418   -0.1239742    0.0406906
6 months    PROBIT           BELARUS                        optimal              observed          -0.0163650   -0.0839802    0.0512503
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0142479   -0.0946515    0.0661557
6 months    ResPak           PAKISTAN                       optimal              observed          -0.1869956   -0.5179150    0.1439239
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0264570   -0.0585259    0.0056118
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.0850890   -0.1721049    0.0019269
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0833860   -0.0685576    0.2353296
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0699165   -0.0816538   -0.0581792
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0687719   -0.2110881    0.0735442
24 months   CMIN             BANGLADESH                     optimal              observed          -0.0112048   -0.0499193    0.0275098
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.2066743   -0.3637126   -0.0496360
24 months   COHORTS          INDIA                          optimal              observed          -0.0305954   -0.0950335    0.0338426
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.1333710   -0.2309259   -0.0358161
24 months   EE               PAKISTAN                       optimal              observed           0.0210607   -0.2389922    0.2811137
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.1256597   -0.2595212    0.0082019
24 months   IRC              INDIA                          optimal              observed          -0.0859875   -0.1652115   -0.0067634
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0071190   -0.0689036    0.0546656
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0051596   -0.0172896    0.0069704
24 months   Keneba           GAMBIA                         optimal              observed          -0.0332292   -0.0851679    0.0187095
24 months   LCNI-5           MALAWI                         optimal              observed           0.1911037   -0.0514048    0.4336122
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.0671645   -0.1650164    0.2993454
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0227717   -0.0545302    0.0089869
24 months   MAL-ED           INDIA                          optimal              observed          -0.1208516   -0.4116585    0.1699553
24 months   MAL-ED           NEPAL                          optimal              observed           0.0379022   -0.3395518    0.4153561
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2611534   -0.9620740    0.4397671
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.0690497   -0.2343011    0.0962017
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.0493477   -0.1609482    0.0622528
24 months   PROBIT           BELARUS                        optimal              observed          -0.0530308   -0.1217803    0.0157187
24 months   PROVIDE          BANGLADESH                     optimal              observed           0.1802522    0.0802181    0.2802864
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0225370   -0.0431956   -0.0018785

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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        parity    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      1             94     756
Birth       COHORTS          GUATEMALA                      2            118     756
Birth       COHORTS          GUATEMALA                      3+           544     756
Birth       COHORTS          INDIA                          1            641    3855
Birth       COHORTS          INDIA                          2            982    3855
Birth       COHORTS          INDIA                          3+          2232    3855
Birth       COHORTS          PHILIPPINES                    1            640    2899
Birth       COHORTS          PHILIPPINES                    2            657    2899
Birth       COHORTS          PHILIPPINES                    3+          1602    2899
Birth       GMS-Nepal        NEPAL                          1            185     641
Birth       GMS-Nepal        NEPAL                          2            169     641
Birth       GMS-Nepal        NEPAL                          3+           287     641
Birth       JiVitA-3         BANGLADESH                     1           5520   18014
Birth       JiVitA-3         BANGLADESH                     2           6303   18014
Birth       JiVitA-3         BANGLADESH                     3+          6191   18014
Birth       Keneba           GAMBIA                         1            146    1338
Birth       Keneba           GAMBIA                         2            142    1338
Birth       Keneba           GAMBIA                         3+          1050    1338
Birth       PROVIDE          BANGLADESH                     1            202     532
Birth       PROVIDE          BANGLADESH                     2            182     532
Birth       PROVIDE          BANGLADESH                     3+           148     532
Birth       SAS-CompFeed     INDIA                          1            304    1103
Birth       SAS-CompFeed     INDIA                          2            258    1103
Birth       SAS-CompFeed     INDIA                          3+           541    1103
Birth       ZVITAMBO         ZIMBABWE                       1           5561   12916
Birth       ZVITAMBO         ZIMBABWE                       2           3882   12916
Birth       ZVITAMBO         ZIMBABWE                       3+          3473   12916
6 months    COHORTS          GUATEMALA                      1            132     963
6 months    COHORTS          GUATEMALA                      2            139     963
6 months    COHORTS          GUATEMALA                      3+           692     963
6 months    COHORTS          INDIA                          1            741    4285
6 months    COHORTS          INDIA                          2           1093    4285
6 months    COHORTS          INDIA                          3+          2451    4285
6 months    COHORTS          PHILIPPINES                    1            574    2706
6 months    COHORTS          PHILIPPINES                    2            607    2706
6 months    COHORTS          PHILIPPINES                    3+          1525    2706
6 months    GMS-Nepal        NEPAL                          1            153     564
6 months    GMS-Nepal        NEPAL                          2            149     564
6 months    GMS-Nepal        NEPAL                          3+           262     564
6 months    JiVitA-3         BANGLADESH                     1           6398   16784
6 months    JiVitA-3         BANGLADESH                     2           5685   16784
6 months    JiVitA-3         BANGLADESH                     3+          4701   16784
6 months    Keneba           GAMBIA                         1            195    1623
6 months    Keneba           GAMBIA                         2            164    1623
6 months    Keneba           GAMBIA                         3+          1264    1623
6 months    PROVIDE          BANGLADESH                     1            218     603
6 months    PROVIDE          BANGLADESH                     2            222     603
6 months    PROVIDE          BANGLADESH                     3+           163     603
6 months    SAS-CompFeed     INDIA                          1            392    1334
6 months    SAS-CompFeed     INDIA                          2            302    1334
6 months    SAS-CompFeed     INDIA                          3+           640    1334
6 months    SAS-FoodSuppl    INDIA                          1              7     380
6 months    SAS-FoodSuppl    INDIA                          2             72     380
6 months    SAS-FoodSuppl    INDIA                          3+           301     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ZVITAMBO         ZIMBABWE                       1           3392    8504
6 months    ZVITAMBO         ZIMBABWE                       2           2587    8504
6 months    ZVITAMBO         ZIMBABWE                       3+          2525    8504
24 months   COHORTS          GUATEMALA                      1            167    1076
24 months   COHORTS          GUATEMALA                      2            151    1076
24 months   COHORTS          GUATEMALA                      3+           758    1076
24 months   COHORTS          INDIA                          1            561    3354
24 months   COHORTS          INDIA                          2            837    3354
24 months   COHORTS          INDIA                          3+          1956    3354
24 months   COHORTS          PHILIPPINES                    1            523    2449
24 months   COHORTS          PHILIPPINES                    2            544    2449
24 months   COHORTS          PHILIPPINES                    3+          1382    2449
24 months   GMS-Nepal        NEPAL                          1            130     487
24 months   GMS-Nepal        NEPAL                          2            130     487
24 months   GMS-Nepal        NEPAL                          3+           227     487
24 months   JiVitA-3         BANGLADESH                     1           3166    8603
24 months   JiVitA-3         BANGLADESH                     2           2909    8603
24 months   JiVitA-3         BANGLADESH                     3+          2528    8603
24 months   Keneba           GAMBIA                         1            137    1376
24 months   Keneba           GAMBIA                         2            139    1376
24 months   Keneba           GAMBIA                         3+          1100    1376
24 months   PROVIDE          BANGLADESH                     1            211     579
24 months   PROVIDE          BANGLADESH                     2            213     579
24 months   PROVIDE          BANGLADESH                     3+           155     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ZVITAMBO         ZIMBABWE                       1            161     432
24 months   ZVITAMBO         ZIMBABWE                       2            123     432
24 months   ZVITAMBO         ZIMBABWE                       3+           148     432


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/31c876ad-b9ec-4352-a06e-658c1bc3b8ed/d6653d9e-94b5-4137-9a24-0384ce41af59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -1.1649154   -1.4794820   -0.8503487
Birth       COHORTS          INDIA                          optimal              observed          -0.9279561   -1.0008102   -0.8551021
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.6116055   -0.6863782   -0.5368328
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0585465   -1.2211386   -0.8959543
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.6816904   -0.7270967   -0.6362841
Birth       Keneba           GAMBIA                         optimal              observed          -1.2300758   -1.3217757   -1.1383759
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.3518100   -1.5382191   -1.1654008
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.6007295   -0.8312924   -0.3701666
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2817576   -0.3543853   -0.2091298
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1972251   -0.4578409    0.0633906
6 months    COHORTS          INDIA                          optimal              observed          -0.6600502   -0.7642246   -0.5558758
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2264287   -0.3398438   -0.1130136
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.3258797   -0.5283981   -0.1233614
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.6142716   -0.6607322   -0.5678110
6 months    Keneba           GAMBIA                         optimal              observed          -0.2253934   -0.4514726    0.0006858
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.2634261   -0.4459994   -0.0808527
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5887602   -0.7304473   -0.4470732
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.7148138   -0.9142421   -0.5153855
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0245502   -0.0812607    0.1303612
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3682633    0.2961964    0.4403302
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.5426107   -0.7439453   -0.3412761
24 months   COHORTS          INDIA                          optimal              observed          -0.5997208   -0.7141128   -0.4853287
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.4690694   -0.5723681   -0.3657707
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.2166758   -1.3643815   -1.0689701
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.3112686   -1.3736975   -1.2488397
24 months   Keneba           GAMBIA                         optimal              observed          -0.8523822   -1.0758236   -0.6289408
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.9669110   -1.1797289   -0.7540932
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2314224   -1.4206260   -1.0422188


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          observed             observed          -0.9498080   -0.9874148   -0.9122013
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
Birth       Keneba           GAMBIA                         observed             observed          -1.2037220   -1.2694226   -1.1380213
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5156349   -0.5414936   -0.4897762
6 months    COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          observed             observed          -0.7068611   -0.7417800   -0.6719423
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    Keneba           GAMBIA                         observed             observed          -0.1873900   -0.2456638   -0.1291162
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797179    0.0266621    0.1327737
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3106432    0.2849661    0.3363203
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   COHORTS          INDIA                          observed             observed          -0.6564729   -0.6914450   -0.6215007
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   Keneba           GAMBIA                         observed             observed          -0.7834078   -0.8357743   -0.7310414
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1817824   -1.2809226   -1.0826422


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.1027725   -0.1888298    0.3943749
Birth       COHORTS          INDIA                          optimal              observed          -0.0218519   -0.0844312    0.0407274
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1311196   -0.1923305   -0.0699087
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0578966   -0.2045362    0.0887430
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0961369   -0.1398201   -0.0524536
Birth       Keneba           GAMBIA                         optimal              observed           0.0263538   -0.0380317    0.0907393
Birth       PROVIDE          BANGLADESH                     optimal              observed           0.0533513   -0.1122880    0.2189906
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0693158   -0.1643119    0.0256802
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2338773   -0.3034785   -0.1642762
6 months    COHORTS          GUATEMALA                      optimal              observed           0.3913061    0.1394968    0.6431155
6 months    COHORTS          INDIA                          optimal              observed          -0.0468109   -0.1452714    0.0516495
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0674146   -0.1764218    0.0415926
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.2779619   -0.4731308   -0.0827930
6 months    JiVitA-3         BANGLADESH                     optimal              observed           0.0207554   -0.0219779    0.0634888
6 months    Keneba           GAMBIA                         optimal              observed           0.0380034   -0.1829698    0.2589766
6 months    PROVIDE          BANGLADESH                     optimal              observed           0.0643354   -0.0990357    0.2277065
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0769481   -0.2067814    0.0528851
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.2973441   -0.4938890   -0.1007991
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0551677   -0.0386198    0.1489551
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0576201   -0.1259860    0.0107458
24 months   COHORTS          GUATEMALA                      optimal              observed           0.2612352    0.0658173    0.4566532
24 months   COHORTS          INDIA                          optimal              observed          -0.0567521   -0.1662548    0.0527506
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.1408898   -0.2381971   -0.0435825
24 months   GMS-Nepal        NEPAL                          optimal              observed           0.0803650   -0.0561078    0.2168379
24 months   JiVitA-3         BANGLADESH                     optimal              observed           0.0134655   -0.0454149    0.0723459
24 months   Keneba           GAMBIA                         optimal              observed           0.0689744   -0.1485244    0.2864732
24 months   PROVIDE          BANGLADESH                     optimal              observed           0.0740440   -0.1157587    0.2638467
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed           0.0496400   -0.1120682    0.2113481

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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        fage       n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38          222     735
Birth       COHORTS         GUATEMALA                      <32           337     735
Birth       COHORTS         GUATEMALA                      [32-38)       176     735
Birth       COHORTS         PHILIPPINES                    >=38          303    2797
Birth       COHORTS         PHILIPPINES                    <32          1981    2797
Birth       COHORTS         PHILIPPINES                    [32-38)       513    2797
Birth       MAL-ED          BANGLADESH                     >=38           61     128
Birth       MAL-ED          BANGLADESH                     <32            23     128
Birth       MAL-ED          BANGLADESH                     [32-38)        44     128
Birth       MAL-ED          BRAZIL                         >=38            5      16
Birth       MAL-ED          BRAZIL                         <32             1      16
Birth       MAL-ED          BRAZIL                         [32-38)        10      16
Birth       MAL-ED          INDIA                          >=38            7      25
Birth       MAL-ED          INDIA                          <32             8      25
Birth       MAL-ED          INDIA                          [32-38)        10      25
Birth       MAL-ED          NEPAL                          >=38            2       9
Birth       MAL-ED          NEPAL                          <32             2       9
Birth       MAL-ED          NEPAL                          [32-38)         5       9
Birth       MAL-ED          PERU                           >=38           23      67
Birth       MAL-ED          PERU                           <32            21      67
Birth       MAL-ED          PERU                           [32-38)        23      67
Birth       MAL-ED          SOUTH AFRICA                   >=38           16      30
Birth       MAL-ED          SOUTH AFRICA                   <32             5      30
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      30
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       PROBIT          BELARUS                        >=38          604   13325
Birth       PROBIT          BELARUS                        <32         10671   13325
Birth       PROBIT          BELARUS                        [32-38)      2050   13325
Birth       SAS-CompFeed    INDIA                          >=38           34    1101
Birth       SAS-CompFeed    INDIA                          <32           923    1101
Birth       SAS-CompFeed    INDIA                          [32-38)       144    1101
6 months    COHORTS         GUATEMALA                      >=38          276     930
6 months    COHORTS         GUATEMALA                      <32           421     930
6 months    COHORTS         GUATEMALA                      [32-38)       233     930
6 months    COHORTS         PHILIPPINES                    >=38          299    2622
6 months    COHORTS         PHILIPPINES                    <32          1828    2622
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2622
6 months    LCNI-5          MALAWI                         >=38           26     106
6 months    LCNI-5          MALAWI                         <32            56     106
6 months    LCNI-5          MALAWI                         [32-38)        24     106
6 months    MAL-ED          BANGLADESH                     >=38           69     150
6 months    MAL-ED          BANGLADESH                     <32            30     150
6 months    MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    MAL-ED          BRAZIL                         >=38           30      79
6 months    MAL-ED          BRAZIL                         <32            18      79
6 months    MAL-ED          BRAZIL                         [32-38)        31      79
6 months    MAL-ED          INDIA                          >=38           36     161
6 months    MAL-ED          INDIA                          <32            53     161
6 months    MAL-ED          INDIA                          [32-38)        72     161
6 months    MAL-ED          NEPAL                          >=38           17      79
6 months    MAL-ED          NEPAL                          <32            15      79
6 months    MAL-ED          NEPAL                          [32-38)        47      79
6 months    MAL-ED          PERU                           >=38           27      83
6 months    MAL-ED          PERU                           <32            28      83
6 months    MAL-ED          PERU                           [32-38)        28      83
6 months    MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    PROBIT          BELARUS                        >=38          701   15179
6 months    PROBIT          BELARUS                        <32         12174   15179
6 months    PROBIT          BELARUS                        [32-38)      2304   15179
6 months    SAS-CompFeed    INDIA                          >=38           44    1331
6 months    SAS-CompFeed    INDIA                          <32          1122    1331
6 months    SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    SAS-FoodSuppl   INDIA                          <32           264     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)        76     380
24 months   COHORTS         GUATEMALA                      >=38          287    1032
24 months   COHORTS         GUATEMALA                      <32           495    1032
24 months   COHORTS         GUATEMALA                      [32-38)       250    1032
24 months   COHORTS         PHILIPPINES                    >=38          271    2376
24 months   COHORTS         PHILIPPINES                    <32          1670    2376
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2376
24 months   LCNI-5          MALAWI                         >=38           21      74
24 months   LCNI-5          MALAWI                         <32            37      74
24 months   LCNI-5          MALAWI                         [32-38)        16      74
24 months   MAL-ED          BANGLADESH                     >=38           69     151
24 months   MAL-ED          BANGLADESH                     <32            30     151
24 months   MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   MAL-ED          BRAZIL                         >=38           30      79
24 months   MAL-ED          BRAZIL                         <32            18      79
24 months   MAL-ED          BRAZIL                         [32-38)        31      79
24 months   MAL-ED          INDIA                          >=38           36     161
24 months   MAL-ED          INDIA                          <32            53     161
24 months   MAL-ED          INDIA                          [32-38)        72     161
24 months   MAL-ED          NEPAL                          >=38           17      79
24 months   MAL-ED          NEPAL                          <32            15      79
24 months   MAL-ED          NEPAL                          [32-38)        47      79
24 months   MAL-ED          PERU                           >=38           26      79
24 months   MAL-ED          PERU                           <32            27      79
24 months   MAL-ED          PERU                           [32-38)        26      79
24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   PROBIT          BELARUS                        >=38          176    3847
24 months   PROBIT          BELARUS                        <32          3093    3847
24 months   PROBIT          BELARUS                        [32-38)       578    3847


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL

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
![](/tmp/c3ecdee5-1b08-481e-8312-e96774f918f7/995eb0b0-a874-4e9f-9c78-eb9f4d0d654d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      optimal              observed          -1.0241843   -1.2979158   -0.7504528
Birth       COHORTS         PHILIPPINES                    optimal              observed          -0.6413211   -0.8624691   -0.4201731
Birth       MAL-ED          BANGLADESH                     optimal              observed          -1.0828867   -1.3681550   -0.7976185
Birth       MAL-ED          INDIA                          optimal              observed          -0.5595227   -1.2981438    0.1790984
Birth       MAL-ED          PERU                           optimal              observed           0.3047189   -0.0260506    0.6354885
Birth       MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2137998   -1.4055986    0.9779990
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0745555   -0.5036170    0.6527280
Birth       PROBIT          BELARUS                        optimal              observed          -0.9757622   -1.1496604   -0.8018640
Birth       SAS-CompFeed    INDIA                          optimal              observed          -0.6106352   -1.0042511   -0.2170194
6 months    COHORTS         GUATEMALA                      optimal              observed           0.4282875    0.2648106    0.5917644
6 months    COHORTS         PHILIPPINES                    optimal              observed          -0.2204318   -0.3810856   -0.0597781
6 months    LCNI-5          MALAWI                         optimal              observed           0.7114895    0.3277916    1.0951874
6 months    MAL-ED          BANGLADESH                     optimal              observed           0.1502472   -0.1553137    0.4558080
6 months    MAL-ED          BRAZIL                         optimal              observed           0.9096936    0.4556395    1.3637476
6 months    MAL-ED          INDIA                          optimal              observed          -0.5894165   -0.9779238   -0.2009092
6 months    MAL-ED          NEPAL                          optimal              observed          -0.1781490   -0.5642597    0.2079617
6 months    MAL-ED          PERU                           optimal              observed           1.4501962    1.0048034    1.8955890
6 months    MAL-ED          SOUTH AFRICA                   optimal              observed           0.1279971   -0.5907595    0.8467536
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0338608    0.5287696    1.5389521
6 months    PROBIT          BELARUS                        optimal              observed           0.5792854    0.5004550    0.6581157
6 months    SAS-CompFeed    INDIA                          optimal              observed          -0.7994590   -1.1245551   -0.4743629
6 months    SAS-FoodSuppl   INDIA                          optimal              observed          -1.1204216   -1.3900710   -0.8507722
24 months   COHORTS         GUATEMALA                      optimal              observed          -0.1842895   -0.3018073   -0.0667717
24 months   COHORTS         PHILIPPINES                    optimal              observed          -0.6494532   -0.7648830   -0.5340234
24 months   LCNI-5          MALAWI                         optimal              observed           0.0513464   -0.4448409    0.5475337
24 months   MAL-ED          BANGLADESH                     optimal              observed          -1.1335389   -1.3941222   -0.8729557
24 months   MAL-ED          BRAZIL                         optimal              observed          -0.0417747   -0.5139432    0.4303938
24 months   MAL-ED          INDIA                          optimal              observed          -0.6752214   -1.0417741   -0.3086687
24 months   MAL-ED          NEPAL                          optimal              observed          -0.6692001   -0.9675220   -0.3708782
24 months   MAL-ED          PERU                           optimal              observed           0.0746816   -0.2642773    0.4136405
24 months   MAL-ED          SOUTH AFRICA                   optimal              observed           0.1114050   -0.3638221    0.5866321
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3308962    0.0610614    0.6007310
24 months   PROBIT          BELARUS                        optimal              observed           0.8629891    0.7256854    1.0002929


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      observed             observed          -1.0580408   -1.1607065   -0.9553751
Birth       COHORTS         PHILIPPINES                    observed             observed          -0.7309760   -0.7780724   -0.6838797
Birth       MAL-ED          BANGLADESH                     observed             observed          -1.0375000   -1.2165024   -0.8584976
Birth       MAL-ED          INDIA                          observed             observed          -0.9464000   -1.3554144   -0.5373856
Birth       MAL-ED          PERU                           observed             observed           0.0529851   -0.1628445    0.2688147
Birth       MAL-ED          SOUTH AFRICA                   observed             observed          -0.0073333   -0.5181900    0.5035233
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7115909    0.4034609    1.0197209
Birth       PROBIT          BELARUS                        observed             observed          -1.1436672   -1.3543559   -0.9329784
Birth       SAS-CompFeed    INDIA                          observed             observed          -0.6685468   -0.8459689   -0.4911247
6 months    COHORTS         GUATEMALA                      observed             observed           0.1925914    0.1205037    0.2646791
6 months    COHORTS         PHILIPPINES                    observed             observed          -0.2878032   -0.3296319   -0.2459745
6 months    LCNI-5          MALAWI                         observed             observed           0.5060377    0.3131397    0.6989358
6 months    MAL-ED          BANGLADESH                     observed             observed          -0.1950111   -0.3575506   -0.0324716
6 months    MAL-ED          BRAZIL                         observed             observed           0.9365401    0.6541549    1.2189253
6 months    MAL-ED          INDIA                          observed             observed          -0.7292288   -0.8803893   -0.5780683
6 months    MAL-ED          NEPAL                          observed             observed           0.1749789   -0.0644624    0.4144202
6 months    MAL-ED          PERU                           observed             observed           1.0182129    0.7827641    1.2536616
6 months    MAL-ED          SOUTH AFRICA                   observed             observed           0.5158052    0.2517895    0.7798210
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5271500    0.3177522    0.7365478
6 months    PROBIT          BELARUS                        observed             observed           0.5731698    0.5135069    0.6328327
6 months    SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
24 months   COHORTS         GUATEMALA                      observed             observed          -0.2760853   -0.3311930   -0.2209775
24 months   COHORTS         PHILIPPINES                    observed             observed          -0.6087584   -0.6459824   -0.5715345
24 months   LCNI-5          MALAWI                         observed             observed          -0.1979730   -0.4244675    0.0285215
24 months   MAL-ED          BANGLADESH                     observed             observed          -0.8844702   -1.0263143   -0.7426261
24 months   MAL-ED          BRAZIL                         observed             observed           0.5448101    0.2082313    0.8813890
24 months   MAL-ED          INDIA                          observed             observed          -0.8968012   -1.0287307   -0.7648718
24 months   MAL-ED          NEPAL                          observed             observed          -0.2794304   -0.4767398   -0.0821210
24 months   MAL-ED          PERU                           observed             observed           0.1198207   -0.0845120    0.3241534
24 months   MAL-ED          SOUTH AFRICA                   observed             observed           0.4414045    0.2336389    0.6491701
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0766500   -0.1115307    0.2648307
24 months   PROBIT          BELARUS                        observed             observed           0.6963019    0.5831245    0.8094793


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      optimal              observed          -0.0338565   -0.2813058    0.2135927
Birth       COHORTS         PHILIPPINES                    optimal              observed          -0.0896550   -0.3058741    0.1265641
Birth       MAL-ED          BANGLADESH                     optimal              observed           0.0453867   -0.1884719    0.2792454
Birth       MAL-ED          INDIA                          optimal              observed          -0.3868773   -1.0704347    0.2966801
Birth       MAL-ED          PERU                           optimal              observed          -0.2517339   -0.5482405    0.0447728
Birth       MAL-ED          SOUTH AFRICA                   optimal              observed           0.2064664   -0.7367785    1.1497114
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6370354    0.1914650    1.0826059
Birth       PROBIT          BELARUS                        optimal              observed          -0.1679049   -0.2918682   -0.0439416
Birth       SAS-CompFeed    INDIA                          optimal              observed          -0.0579115   -0.3358555    0.2200324
6 months    COHORTS         GUATEMALA                      optimal              observed          -0.2356961   -0.3869257   -0.0844665
6 months    COHORTS         PHILIPPINES                    optimal              observed          -0.0673714   -0.2237369    0.0889941
6 months    LCNI-5          MALAWI                         optimal              observed          -0.2054518   -0.5033880    0.0924844
6 months    MAL-ED          BANGLADESH                     optimal              observed          -0.3452583   -0.6374087   -0.0531078
6 months    MAL-ED          BRAZIL                         optimal              observed           0.0268465   -0.3402687    0.3939618
6 months    MAL-ED          INDIA                          optimal              observed          -0.1398122   -0.5060259    0.2264014
6 months    MAL-ED          NEPAL                          optimal              observed           0.3531279   -0.0068904    0.7131462
6 months    MAL-ED          PERU                           optimal              observed          -0.4319833   -0.7742747   -0.0896920
6 months    MAL-ED          SOUTH AFRICA                   optimal              observed           0.3878082   -0.2372241    1.0128404
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5067108   -0.9499672   -0.0634545
6 months    PROBIT          BELARUS                        optimal              observed          -0.0061172   -0.0717619    0.0595275
6 months    SAS-CompFeed    INDIA                          optimal              observed           0.1353530   -0.1090793    0.3797854
6 months    SAS-FoodSuppl   INDIA                          optimal              observed           0.1082637   -0.1405249    0.3570523
24 months   COHORTS         GUATEMALA                      optimal              observed          -0.0917958   -0.1996753    0.0160837
24 months   COHORTS         PHILIPPINES                    optimal              observed           0.0406948   -0.0693391    0.1507286
24 months   LCNI-5          MALAWI                         optimal              observed          -0.2493194   -0.6687984    0.1701597
24 months   MAL-ED          BANGLADESH                     optimal              observed           0.2490687    0.0317158    0.4664217
24 months   MAL-ED          BRAZIL                         optimal              observed           0.5865848    0.0917076    1.0814621
24 months   MAL-ED          INDIA                          optimal              observed          -0.2215798   -0.5706679    0.1275082
24 months   MAL-ED          NEPAL                          optimal              observed           0.3897697    0.1148703    0.6646692
24 months   MAL-ED          PERU                           optimal              observed           0.0451391   -0.2469908    0.3372689
24 months   MAL-ED          SOUTH AFRICA                   optimal              observed           0.3299995   -0.1487512    0.8087502
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2542462   -0.4551386   -0.0533537
24 months   PROBIT          BELARUS                        optimal              observed          -0.1666873   -0.2916575   -0.0417170

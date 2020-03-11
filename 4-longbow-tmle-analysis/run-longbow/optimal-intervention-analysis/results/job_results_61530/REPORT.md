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

**Intervention Variable:** birthwt

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

agecat      studyid          country                        birthwt                       n_cell       n
----------  ---------------  -----------------------------  ---------------------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight        81      92
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                   11      92
Birth       CMIN             BANGLADESH                     Normal or high birthweight        14      26
Birth       CMIN             BANGLADESH                     Low birthweight                   12      26
Birth       COHORTS          GUATEMALA                      Normal or high birthweight       717     784
Birth       COHORTS          GUATEMALA                      Low birthweight                   67     784
Birth       COHORTS          INDIA                          Normal or high birthweight      5268    6638
Birth       COHORTS          INDIA                          Low birthweight                 1370    6638
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004
Birth       COHORTS          PHILIPPINES                    Low birthweight                  295    3004
Birth       CONTENT          PERU                           Normal or high birthweight         2       2
Birth       CONTENT          PERU                           Low birthweight                    0       2
Birth       EE               PAKISTAN                       Normal or high birthweight       160     240
Birth       EE               PAKISTAN                       Low birthweight                   80     240
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       476     696
Birth       GMS-Nepal        NEPAL                          Low birthweight                  220     696
Birth       IRC              INDIA                          Normal or high birthweight       317     383
Birth       IRC              INDIA                          Low birthweight                   66     383
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12858   22454
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 9596   22454
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight      1799    2823
Birth       JiVitA-4         BANGLADESH                     Low birthweight                 1024    2823
Birth       Keneba           GAMBIA                         Normal or high birthweight      1308    1529
Birth       Keneba           GAMBIA                         Low birthweight                  221    1529
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight       177     231
Birth       MAL-ED           BANGLADESH                     Low birthweight                   54     231
Birth       MAL-ED           BRAZIL                         Normal or high birthweight        61      65
Birth       MAL-ED           BRAZIL                         Low birthweight                    4      65
Birth       MAL-ED           INDIA                          Normal or high birthweight        39      47
Birth       MAL-ED           INDIA                          Low birthweight                    8      47
Birth       MAL-ED           NEPAL                          Normal or high birthweight        24      27
Birth       MAL-ED           NEPAL                          Low birthweight                    3      27
Birth       MAL-ED           PERU                           Normal or high birthweight       221     233
Birth       MAL-ED           PERU                           Low birthweight                   12     233
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight       115     123
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    8     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       118     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    7     125
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       423     608
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  185     608
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       560     732
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  172     732
Birth       PROBIT           BELARUS                        Normal or high birthweight     13893   13893
Birth       PROBIT           BELARUS                        Low birthweight                    0   13893
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       402     539
Birth       PROVIDE          BANGLADESH                     Low birthweight                  137     539
Birth       ResPak           PAKISTAN                       Normal or high birthweight        35      42
Birth       ResPak           PAKISTAN                       Low birthweight                    7      42
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       914    1252
Birth       SAS-CompFeed     INDIA                          Low birthweight                  338    1252
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1901   13830
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       319     361
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   42     361
6 months    CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight       703     771
6 months    COHORTS          GUATEMALA                      Low birthweight                   68     771
6 months    COHORTS          INDIA                          Normal or high birthweight      5005    6261
6 months    COHORTS          INDIA                          Low birthweight                 1256    6261
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666
6 months    COHORTS          PHILIPPINES                    Low birthweight                  248    2666
6 months    CONTENT          PERU                           Normal or high birthweight         2       2
6 months    CONTENT          PERU                           Low birthweight                    0       2
6 months    EE               PAKISTAN                       Normal or high birthweight       242     372
6 months    EE               PAKISTAN                       Low birthweight                  130     372
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    IRC              INDIA                          Normal or high birthweight       335     401
6 months    IRC              INDIA                          Low birthweight                   66     401
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8359   14130
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5771   14130
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      3004    4041
6 months    JiVitA-4         BANGLADESH                     Low birthweight                 1037    4041
6 months    Keneba           GAMBIA                         Normal or high birthweight      1146    1334
6 months    Keneba           GAMBIA                         Low birthweight                  188    1334
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight       188     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                   50     238
6 months    MAL-ED           BRAZIL                         Normal or high birthweight       199     209
6 months    MAL-ED           BRAZIL                         Low birthweight                   10     209
6 months    MAL-ED           INDIA                          Normal or high birthweight       193     227
6 months    MAL-ED           INDIA                          Low birthweight                   34     227
6 months    MAL-ED           NEPAL                          Normal or high birthweight       210     229
6 months    MAL-ED           NEPAL                          Low birthweight                   19     229
6 months    MAL-ED           PERU                           Normal or high birthweight       254     270
6 months    MAL-ED           PERU                           Low birthweight                   16     270
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight       238     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                   15     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                  151     518
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight       545     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                  170     715
6 months    PROBIT           BELARUS                        Normal or high birthweight     15760   15760
6 months    PROBIT           BELARUS                        Low birthweight                    0   15760
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight       461     604
6 months    PROVIDE          BANGLADESH                     Low birthweight                  143     604
6 months    ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight      1003    1326
6 months    SAS-CompFeed     INDIA                          Low birthweight                  323    1326
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2011
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7566    8636
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                 1070    8636
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       320     363
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   43     363
24 months   CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight       589     650
24 months   COHORTS          GUATEMALA                      Low birthweight                   61     650
24 months   COHORTS          INDIA                          Normal or high birthweight      3949    4858
24 months   COHORTS          INDIA                          Low birthweight                  909    4858
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406
24 months   COHORTS          PHILIPPINES                    Low birthweight                  212    2406
24 months   CONTENT          PERU                           Normal or high birthweight         2       2
24 months   CONTENT          PERU                           Low birthweight                    0       2
24 months   EE               PAKISTAN                       Normal or high birthweight       100     167
24 months   EE               PAKISTAN                       Low birthweight                   67     167
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       355     487
24 months   GMS-Nepal        NEPAL                          Low birthweight                  132     487
24 months   IRC              INDIA                          Normal or high birthweight       335     403
24 months   IRC              INDIA                          Low birthweight                   68     403
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4241    7307
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3066    7307
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2955    4010
24 months   JiVitA-4         BANGLADESH                     Low birthweight                 1055    4010
24 months   Keneba           GAMBIA                         Normal or high birthweight       905    1056
24 months   Keneba           GAMBIA                         Low birthweight                  151    1056
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight       165     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                   45     210
24 months   MAL-ED           BRAZIL                         Normal or high birthweight       161     169
24 months   MAL-ED           BRAZIL                         Low birthweight                    8     169
24 months   MAL-ED           INDIA                          Normal or high birthweight       185     218
24 months   MAL-ED           INDIA                          Low birthweight                   33     218
24 months   MAL-ED           NEPAL                          Normal or high birthweight       203     221
24 months   MAL-ED           NEPAL                          Low birthweight                   18     221
24 months   MAL-ED           PERU                           Normal or high birthweight       187     199
24 months   MAL-ED           PERU                           Low birthweight                   12     199
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       224     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   13     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       287     414
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  127     414
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       388     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  126     514
24 months   PROBIT           BELARUS                        Normal or high birthweight      4035    4035
24 months   PROBIT           BELARUS                        Low birthweight                    0    4035
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       439     578
24 months   PROVIDE          BANGLADESH                     Low birthweight                  139     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1442    1635
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  193    1635


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
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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
![](/tmp/26011855-f2c5-47f8-bcbf-3c4a76b19d42/e65f06c1-7efa-4a2d-82a7-302312018eee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8110622   -1.0338856   -0.5882389
Birth       CMIN             BANGLADESH                     optimal              observed          -1.0369461   -1.7207612   -0.3531310
Birth       COHORTS          GUATEMALA                      optimal              observed           0.2773517    0.1950584    0.3596450
Birth       COHORTS          INDIA                          optimal              observed          -0.3622295   -0.3891146   -0.3353443
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0787307   -0.1145160   -0.0429455
Birth       EE               PAKISTAN                       optimal              observed          -1.4525858   -1.6502612   -1.2549104
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.6727606   -0.7512693   -0.5942518
Birth       IRC              INDIA                          optimal              observed          -0.1787064   -0.3466679   -0.0107450
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.9624848   -0.9802166   -0.9447530
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.0187015   -1.0667976   -0.9706054
Birth       Keneba           GAMBIA                         optimal              observed           0.2203282    0.1558746    0.2847817
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7841388   -0.9093572   -0.6589204
Birth       MAL-ED           INDIA                          optimal              observed          -1.0111244   -1.3060108   -0.7162380
Birth       MAL-ED           PERU                           optimal              observed          -0.7933617   -0.9047629   -0.6819605
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.5184714   -0.6827835   -0.3541593
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0259560   -1.2214617   -0.8304502
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.5040132   -0.5923047   -0.4157216
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.6600460   -0.7342992   -0.5857929
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.5789183   -0.6553742   -0.5024624
Birth       ResPak           PAKISTAN                       optimal              observed          -0.6366680   -1.0721230   -0.2012130
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.0312364   -1.1000078   -0.9624651
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3139632   -0.3338314   -0.2940949
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3030866   -1.4546397   -1.1515334
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.6884709   -1.7617426   -1.6151993
6 months    COHORTS          INDIA                          optimal              observed          -0.7993473   -0.8294585   -0.7692361
6 months    COHORTS          PHILIPPINES                    optimal              observed          -1.0419405   -1.0847876   -0.9990935
6 months    EE               PAKISTAN                       optimal              observed          -1.7418983   -1.8746072   -1.6091894
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.1263446   -1.2113187   -1.0413705
6 months    IRC              INDIA                          optimal              observed          -1.0705410   -1.2075023   -0.9335797
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.9631842   -0.9897797   -0.9365887
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.1407259   -1.1859381   -1.0955137
6 months    Keneba           GAMBIA                         optimal              observed          -0.7788363   -0.8377096   -0.7199631
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.0457969   -1.1705253   -0.9210685
6 months    MAL-ED           BRAZIL                         optimal              observed           0.0818770   -0.0645604    0.2283143
6 months    MAL-ED           INDIA                          optimal              observed          -1.0184051   -1.1418975   -0.8949128
6 months    MAL-ED           NEPAL                          optimal              observed          -0.4815791   -0.5952885   -0.3678697
6 months    MAL-ED           PERU                           optimal              observed          -1.2296694   -1.3338027   -1.1255360
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -1.0044852   -1.1319415   -0.8770289
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2506395   -1.3903661   -1.1109130
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.1504146   -1.2486555   -1.0521737
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.0031096   -1.0800371   -0.9261821
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.9022064   -0.9824925   -0.8219202
6 months    ResPak           PAKISTAN                       optimal              observed          -1.4303775   -2.0467199   -0.8140350
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.1617404   -1.2617918   -1.0616890
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5103462   -0.5598486   -0.4608438
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7369016   -0.7630247   -0.7107784
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4881908   -2.5955593   -2.3808224
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.8414829   -2.9440551   -2.7389106
24 months   COHORTS          INDIA                          optimal              observed          -1.9737512   -2.0105617   -1.9369407
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.3455668   -2.3921687   -2.2989649
24 months   EE               PAKISTAN                       optimal              observed          -2.4680303   -2.6328042   -2.3032563
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7632588   -1.8586171   -1.6679005
24 months   IRC              INDIA                          optimal              observed          -1.6750188   -1.7747279   -1.5753097
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.7798417   -1.8154610   -1.7442225
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.6467339   -1.6898094   -1.6036584
24 months   Keneba           GAMBIA                         optimal              observed          -1.4673383   -1.5327658   -1.4019107
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.7270277   -1.8553434   -1.5987120
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0798999   -0.6655735    0.5057738
24 months   MAL-ED           INDIA                          optimal              observed          -1.7736874   -2.0302042   -1.5171705
24 months   MAL-ED           NEPAL                          optimal              observed          -1.2514469   -1.3752812   -1.1276126
24 months   MAL-ED           PERU                           optimal              observed          -1.5392167   -1.6762368   -1.4021965
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.6230902   -1.7609689   -1.4852114
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5162238   -2.6722128   -2.3602348
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -1.9946516   -2.1144666   -1.8748365
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.2671845   -1.3559755   -1.1783936
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.4593396   -1.5520394   -1.3666399
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5175569   -1.5767305   -1.4583832


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     observed             observed          -1.8811538   -2.5124807   -1.2498270
Birth       COHORTS          GUATEMALA                      observed             observed           0.1221939    0.0348987    0.2094890
Birth       COHORTS          INDIA                          observed             observed          -0.6698147   -0.6979800   -0.6416494
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2435386   -0.2827491   -0.2043282
Birth       EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          observed             observed          -0.3096345   -0.4709405   -0.1483285
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5893720   -1.6085904   -1.5701537
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         observed             observed           0.0272662   -0.0366578    0.0911901
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4167959   -1.5608725   -1.2727194
6 months    COHORTS          GUATEMALA                      observed             observed          -1.7858495   -1.8598889   -1.7118102
6 months    COHORTS          INDIA                          observed             observed          -0.9939850   -1.0230017   -0.9649683
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1372543   -1.1796249   -1.0948837
6 months    EE               PAKISTAN                       observed             observed          -2.0800314   -2.1993502   -1.9607126
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3510539   -1.4294158   -1.2726919
6 months    IRC              INDIA                          observed             observed          -1.2148213   -1.3469493   -1.0826933
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3327473   -1.3568007   -1.3086940
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3509354   -1.3927945   -1.3090764
6 months    Keneba           GAMBIA                         observed             observed          -0.9022065   -0.9593933   -0.8450196
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2094328   -1.3276892   -1.0911764
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.1727166   -1.2902312   -1.0552020
6 months    MAL-ED           NEPAL                          observed             observed          -0.5397525   -0.6522623   -0.4272428
6 months    MAL-ED           PERU                           observed             observed          -1.3083549   -1.4159952   -1.2007147
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0619697   -1.1900452   -0.9338942
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3098656   -1.4501587   -1.1695725
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4092745   -1.5003907   -1.3181582
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       observed             observed          -1.7077451   -2.2839081   -1.1315821
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4032504   -1.4822018   -1.3242989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5394360   -0.5886359   -0.4902361
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8663392   -0.8919231   -0.8407552
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5467080   -2.6470149   -2.4464010
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9641538   -3.0462906   -2.8820170
24 months   COHORTS          INDIA                          observed             observed          -2.1129333   -2.1469655   -2.0789011
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4107897   -2.4561358   -2.3654436
24 months   EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8864887   -1.9720856   -1.8008918
24 months   IRC              INDIA                          observed             observed          -1.7814309   -1.8749526   -1.6879093
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0396606   -2.0692906   -2.0100306
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7744364   -1.8128124   -1.7360604
24 months   Keneba           GAMBIA                         observed             observed          -1.5547363   -1.6172161   -1.4922564
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9799762   -2.1065965   -1.8533558
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8550459   -1.9795611   -1.7305306
24 months   MAL-ED           NEPAL                          observed             observed          -1.2841403   -1.4044291   -1.1638514
24 months   MAL-ED           PERU                           observed             observed          -1.7484757   -1.8697456   -1.6272058
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6471273   -1.7822999   -1.5119547
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5512346   -2.7029497   -2.3995194
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2268619   -2.3322626   -2.1214612
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6024251   -1.6594303   -1.5454198


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1501334   -0.2462672   -0.0539997
Birth       CMIN             BANGLADESH                     optimal              observed          -0.8442078   -1.4754572   -0.2129584
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1551579   -0.2000670   -0.1102488
Birth       COHORTS          INDIA                          optimal              observed          -0.3075852   -0.3270885   -0.2880820
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1648079   -0.1873167   -0.1422990
Birth       EE               PAKISTAN                       optimal              observed          -0.4082892   -0.5529120   -0.2636664
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.4123975   -0.4784440   -0.3463510
Birth       IRC              INDIA                          optimal              observed          -0.1309280   -0.2180338   -0.0438223
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.6268873   -0.6441755   -0.6095990
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.5045893   -0.5438234   -0.4653553
Birth       Keneba           GAMBIA                         optimal              observed          -0.1930620   -0.2271768   -0.1589472
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.3339565   -0.4327412   -0.2351717
Birth       MAL-ED           INDIA                          optimal              observed          -0.1924926   -0.3688815   -0.0161037
Birth       MAL-ED           PERU                           optimal              observed          -0.0894280   -0.1435299   -0.0353261
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1132359   -0.2304957    0.0040238
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1296440   -0.2303395   -0.0289486
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.4270066   -0.4966729   -0.3573402
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.2494485   -0.2977873   -0.2011097
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.3061838   -0.3615938   -0.2507737
Birth       ResPak           PAKISTAN                       optimal              observed          -0.3433320   -0.5905748   -0.0960893
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.4001853   -0.4544686   -0.3459019
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1870028   -0.1986380   -0.1753677
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1137094   -0.1684479   -0.0589709
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.0973786   -0.1314845   -0.0632727
6 months    COHORTS          INDIA                          optimal              observed          -0.1946377   -0.2120441   -0.1772312
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0953138   -0.1133697   -0.0772578
6 months    EE               PAKISTAN                       optimal              observed          -0.3381330   -0.4326661   -0.2435999
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.2247093   -0.2808092   -0.1686093
6 months    IRC              INDIA                          optimal              observed          -0.1442803   -0.2132674   -0.0752932
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.3695631   -0.3867451   -0.3523811
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.2102095   -0.2352086   -0.1852104
6 months    Keneba           GAMBIA                         optimal              observed          -0.1233701   -0.1516696   -0.0950706
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1636359   -0.2335458   -0.0937260
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0343012   -0.0704716    0.0018691
6 months    MAL-ED           INDIA                          optimal              observed          -0.1543114   -0.2373307   -0.0712921
6 months    MAL-ED           NEPAL                          optimal              observed          -0.0581734   -0.1014593   -0.0148876
6 months    MAL-ED           PERU                           optimal              observed          -0.0786856   -0.1238422   -0.0335290
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0574845   -0.1051484   -0.0098206
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0592261   -0.1047766   -0.0136756
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.2588598   -0.3234650   -0.1942547
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.1955687   -0.2411268   -0.1500106
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1894851   -0.2357098   -0.1432604
6 months    ResPak           PAKISTAN                       optimal              observed          -0.2773676   -0.5512259   -0.0035094
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.2415099   -0.2920608   -0.1909591
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0290898   -0.0406748   -0.0175049
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1294376   -0.1412182   -0.1176569
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0585172   -0.0936780   -0.0233563
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.1226710   -0.1897603   -0.0555817
24 months   COHORTS          INDIA                          optimal              observed          -0.1391821   -0.1566726   -0.1216915
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0652229   -0.0816468   -0.0487990
24 months   EE               PAKISTAN                       optimal              observed          -0.2019597   -0.3324936   -0.0714259
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.1232299   -0.1790079   -0.0674520
24 months   IRC              INDIA                          optimal              observed          -0.1064121   -0.1533314   -0.0594928
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.2598189   -0.2808952   -0.2387425
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.1277025   -0.1494293   -0.1059757
24 months   Keneba           GAMBIA                         optimal              observed          -0.0873980   -0.1155080   -0.0592880
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.2529485   -0.3539090   -0.1519880
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0860143   -0.4618361    0.6338647
24 months   MAL-ED           INDIA                          optimal              observed          -0.0813585   -0.2965426    0.1338255
24 months   MAL-ED           NEPAL                          optimal              observed          -0.0326934   -0.0731935    0.0078068
24 months   MAL-ED           PERU                           optimal              observed          -0.2092590   -0.3056221   -0.1128960
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0240371   -0.0609511    0.0128769
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0350108   -0.0681405   -0.0018811
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.2322104   -0.3063071   -0.1581136
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1740801   -0.2279191   -0.1202411
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1430825   -0.1923271   -0.0938379
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0848682   -0.1090642   -0.0606722

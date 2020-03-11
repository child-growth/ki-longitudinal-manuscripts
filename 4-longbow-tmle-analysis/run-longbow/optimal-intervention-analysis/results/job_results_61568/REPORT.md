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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        sex       n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Female        43      86
Birth       CMC-V-BCS-2002   INDIA                          Male          43      86
Birth       CMIN             BANGLADESH                     Female         9      19
Birth       CMIN             BANGLADESH                     Male          10      19
Birth       COHORTS          GUATEMALA                      Female       360     756
Birth       COHORTS          GUATEMALA                      Male         396     756
Birth       COHORTS          INDIA                          Female      2952    6193
Birth       COHORTS          INDIA                          Male        3241    6193
Birth       COHORTS          PHILIPPINES                    Female      1360    2899
Birth       COHORTS          PHILIPPINES                    Male        1539    2899
Birth       CONTENT          PERU                           Female         0       2
Birth       CONTENT          PERU                           Male           2       2
Birth       EE               PAKISTAN                       Female        88     177
Birth       EE               PAKISTAN                       Male          89     177
Birth       GMS-Nepal        NEPAL                          Female       297     641
Birth       GMS-Nepal        NEPAL                          Male         344     641
Birth       IRC              INDIA                          Female       148     343
Birth       IRC              INDIA                          Male         195     343
Birth       JiVitA-3         BANGLADESH                     Female      8524   18014
Birth       JiVitA-3         BANGLADESH                     Male        9490   18014
Birth       JiVitA-4         BANGLADESH                     Female      1142    2396
Birth       JiVitA-4         BANGLADESH                     Male        1254    2396
Birth       Keneba           GAMBIA                         Female       703    1466
Birth       Keneba           GAMBIA                         Male         763    1466
Birth       MAL-ED           BANGLADESH                     Female       106     215
Birth       MAL-ED           BANGLADESH                     Male         109     215
Birth       MAL-ED           BRAZIL                         Female        31      62
Birth       MAL-ED           BRAZIL                         Male          31      62
Birth       MAL-ED           INDIA                          Female        22      45
Birth       MAL-ED           INDIA                          Male          23      45
Birth       MAL-ED           NEPAL                          Female        16      26
Birth       MAL-ED           NEPAL                          Male          10      26
Birth       MAL-ED           PERU                           Female       112     228
Birth       MAL-ED           PERU                           Male         116     228
Birth       MAL-ED           SOUTH AFRICA                   Female        56     120
Birth       MAL-ED           SOUTH AFRICA                   Male          64     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female        63     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male          52     115
Birth       NIH-Birth        BANGLADESH                     Female       269     575
Birth       NIH-Birth        BANGLADESH                     Male         306     575
Birth       NIH-Crypto       BANGLADESH                     Female       350     707
Birth       NIH-Crypto       BANGLADESH                     Male         357     707
Birth       PROBIT           BELARUS                        Female      6690   13817
Birth       PROBIT           BELARUS                        Male        7127   13817
Birth       PROVIDE          BANGLADESH                     Female       251     532
Birth       PROVIDE          BANGLADESH                     Male         281     532
Birth       ResPak           PAKISTAN                       Female        16      38
Birth       ResPak           PAKISTAN                       Male          22      38
Birth       SAS-CompFeed     INDIA                          Female       497    1103
Birth       SAS-CompFeed     INDIA                          Male         606    1103
Birth       ZVITAMBO         ZIMBABWE                       Female      6222   12917
Birth       ZVITAMBO         ZIMBABWE                       Male        6695   12917
6 months    CMC-V-BCS-2002   INDIA                          Female       186     368
6 months    CMC-V-BCS-2002   INDIA                          Male         182     368
6 months    CMIN             BANGLADESH                     Female       105     243
6 months    CMIN             BANGLADESH                     Male         138     243
6 months    COHORTS          GUATEMALA                      Female       456     963
6 months    COHORTS          GUATEMALA                      Male         507     963
6 months    COHORTS          INDIA                          Female      3284    6850
6 months    COHORTS          INDIA                          Male        3566    6850
6 months    COHORTS          PHILIPPINES                    Female      1275    2706
6 months    COHORTS          PHILIPPINES                    Male        1431    2706
6 months    CONTENT          PERU                           Female       109     215
6 months    CONTENT          PERU                           Male         106     215
6 months    EE               PAKISTAN                       Female       182     375
6 months    EE               PAKISTAN                       Male         193     375
6 months    GMS-Nepal        NEPAL                          Female       273     564
6 months    GMS-Nepal        NEPAL                          Male         291     564
6 months    Guatemala BSC    GUATEMALA                      Female       153     299
6 months    Guatemala BSC    GUATEMALA                      Male         146     299
6 months    IRC              INDIA                          Female       184     408
6 months    IRC              INDIA                          Male         224     408
6 months    JiVitA-3         BANGLADESH                     Female      8234   16784
6 months    JiVitA-3         BANGLADESH                     Male        8550   16784
6 months    JiVitA-4         BANGLADESH                     Female      2408    4833
6 months    JiVitA-4         BANGLADESH                     Male        2425    4833
6 months    Keneba           GAMBIA                         Female      1011    2089
6 months    Keneba           GAMBIA                         Male        1078    2089
6 months    LCNI-5           MALAWI                         Female       420     839
6 months    LCNI-5           MALAWI                         Male         419     839
6 months    MAL-ED           BANGLADESH                     Female       123     241
6 months    MAL-ED           BANGLADESH                     Male         118     241
6 months    MAL-ED           BRAZIL                         Female       103     209
6 months    MAL-ED           BRAZIL                         Male         106     209
6 months    MAL-ED           INDIA                          Female       130     236
6 months    MAL-ED           INDIA                          Male         106     236
6 months    MAL-ED           NEPAL                          Female       110     236
6 months    MAL-ED           NEPAL                          Male         126     236
6 months    MAL-ED           PERU                           Female       126     273
6 months    MAL-ED           PERU                           Male         147     273
6 months    MAL-ED           SOUTH AFRICA                   Female       126     254
6 months    MAL-ED           SOUTH AFRICA                   Male         128     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       126     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         121     247
6 months    NIH-Birth        BANGLADESH                     Female       245     537
6 months    NIH-Birth        BANGLADESH                     Male         292     537
6 months    NIH-Crypto       BANGLADESH                     Female       362     715
6 months    NIH-Crypto       BANGLADESH                     Male         353     715
6 months    PROBIT           BELARUS                        Female      7620   15757
6 months    PROBIT           BELARUS                        Male        8137   15757
6 months    PROVIDE          BANGLADESH                     Female       288     603
6 months    PROVIDE          BANGLADESH                     Male         315     603
6 months    ResPak           PAKISTAN                       Female       115     239
6 months    ResPak           PAKISTAN                       Male         124     239
6 months    SAS-CompFeed     INDIA                          Female       610    1334
6 months    SAS-CompFeed     INDIA                          Male         724    1334
6 months    SAS-FoodSuppl    INDIA                          Female       202     380
6 months    SAS-FoodSuppl    INDIA                          Male         178     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1025    2028
6 months    ZVITAMBO         ZIMBABWE                       Female      4144    8505
6 months    ZVITAMBO         ZIMBABWE                       Male        4361    8505
24 months   CMC-V-BCS-2002   INDIA                          Female       186     372
24 months   CMC-V-BCS-2002   INDIA                          Male         186     372
24 months   CMIN             BANGLADESH                     Female       104     243
24 months   CMIN             BANGLADESH                     Male         139     243
24 months   COHORTS          GUATEMALA                      Female       516    1082
24 months   COHORTS          GUATEMALA                      Male         566    1082
24 months   COHORTS          INDIA                          Female      2521    5291
24 months   COHORTS          INDIA                          Male        2770    5291
24 months   COHORTS          PHILIPPINES                    Female      1158    2449
24 months   COHORTS          PHILIPPINES                    Male        1291    2449
24 months   CONTENT          PERU                           Female        81     164
24 months   CONTENT          PERU                           Male          83     164
24 months   EE               PAKISTAN                       Female        80     168
24 months   EE               PAKISTAN                       Male          88     168
24 months   GMS-Nepal        NEPAL                          Female       227     487
24 months   GMS-Nepal        NEPAL                          Male         260     487
24 months   IRC              INDIA                          Female       185     409
24 months   IRC              INDIA                          Male         224     409
24 months   JiVitA-3         BANGLADESH                     Female      4152    8603
24 months   JiVitA-3         BANGLADESH                     Male        4451    8603
24 months   JiVitA-4         BANGLADESH                     Female      2367    4735
24 months   JiVitA-4         BANGLADESH                     Male        2368    4735
24 months   Keneba           GAMBIA                         Female       823    1726
24 months   Keneba           GAMBIA                         Male         903    1726
24 months   LCNI-5           MALAWI                         Female       286     563
24 months   LCNI-5           MALAWI                         Male         277     563
24 months   MAL-ED           BANGLADESH                     Female       104     212
24 months   MAL-ED           BANGLADESH                     Male         108     212
24 months   MAL-ED           BRAZIL                         Female        79     169
24 months   MAL-ED           BRAZIL                         Male          90     169
24 months   MAL-ED           INDIA                          Female       122     227
24 months   MAL-ED           INDIA                          Male         105     227
24 months   MAL-ED           NEPAL                          Female       106     228
24 months   MAL-ED           NEPAL                          Male         122     228
24 months   MAL-ED           PERU                           Female        91     201
24 months   MAL-ED           PERU                           Male         110     201
24 months   MAL-ED           SOUTH AFRICA                   Female       118     238
24 months   MAL-ED           SOUTH AFRICA                   Male         120     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       106     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         108     214
24 months   NIH-Birth        BANGLADESH                     Female       195     428
24 months   NIH-Birth        BANGLADESH                     Male         233     428
24 months   NIH-Crypto       BANGLADESH                     Female       260     514
24 months   NIH-Crypto       BANGLADESH                     Male         254     514
24 months   PROBIT           BELARUS                        Female      1925    3970
24 months   PROBIT           BELARUS                        Male        2045    3970
24 months   PROVIDE          BANGLADESH                     Female       279     579
24 months   PROVIDE          BANGLADESH                     Male         300     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ZVITAMBO         ZIMBABWE                       Female       263     433
24 months   ZVITAMBO         ZIMBABWE                       Male         170     433


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
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
## Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
## 
## Error in self$compute_step() : Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 10 does not match with column 1 of item 1.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/596c436e-d738-4f12-8f09-bccb8e6ddf88/e713bf17-c933-4bc4-9797-e2769524e2f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3004022   -0.7831196    0.1823153
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.9516448   -1.0961519   -0.8071376
Birth       COHORTS          INDIA                          optimal              observed          -0.9788596   -1.0198554   -0.9378637
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.7166523   -0.7843343   -0.6489703
Birth       EE               PAKISTAN                       optimal              observed          -0.3870979   -0.6506785   -0.1235173
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0831913   -1.2201866   -0.9461961
Birth       IRC              INDIA                          optimal              observed          -0.9210254   -1.1776955   -0.6643553
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7592378   -0.7844977   -0.7339780
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.6670684   -0.7404073   -0.5937296
Birth       Keneba           GAMBIA                         optimal              observed          -1.2576447   -1.3436748   -1.1716146
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.8409195   -1.0630112   -0.6188278
Birth       MAL-ED           BRAZIL                         optimal              observed           0.5395792    0.0833773    0.9957810
Birth       MAL-ED           INDIA                          optimal              observed          -1.0635244   -1.4829436   -0.6441053
Birth       MAL-ED           NEPAL                          optimal              observed          -0.5150021   -1.0247050   -0.0052992
Birth       MAL-ED           PERU                           optimal              observed          -0.1438522   -0.3230732    0.0353688
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.3841898   -0.7245749   -0.0438046
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8399849    0.5505561    1.1294137
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -1.3756562   -1.5192632   -1.2320493
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.2587596   -1.3820791   -1.1354402
Birth       PROBIT           BELARUS                        optimal              observed          -1.1398492   -1.3547586   -0.9249397
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2576535   -1.3609985   -1.1543084
Birth       ResPak           PAKISTAN                       optimal              observed          -0.2177449   -0.8188757    0.3833860
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.5860150   -0.7620049   -0.4100251
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4223986   -0.4585105   -0.3862868
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3784021   -0.6024660   -0.1543383
6 months    CMIN             BANGLADESH                     optimal              observed          -0.5308007   -0.7359805   -0.3256209
6 months    COHORTS          GUATEMALA                      optimal              observed           0.2829901    0.1890720    0.3769081
6 months    COHORTS          INDIA                          optimal              observed          -0.6595624   -0.6982276   -0.6208971
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.3140955   -0.3728185   -0.2553725
6 months    CONTENT          PERU                           optimal              observed           1.1249353    0.9812164    1.2686541
6 months    EE               PAKISTAN                       optimal              observed          -0.7014883   -0.8602656   -0.5427109
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.5730239   -0.6862321   -0.4598156
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0152442   -0.1596977    0.1292094
6 months    IRC              INDIA                          optimal              observed          -0.7022722   -0.8976810   -0.5068633
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5878253   -0.6149073   -0.5607433
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3979285   -0.4516702   -0.3441867
6 months    Keneba           GAMBIA                         optimal              observed          -0.2543467   -0.3226047   -0.1860888
6 months    LCNI-5           MALAWI                         optimal              observed           0.4298818    0.3269323    0.5328312
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.0311914   -0.1564571    0.2188399
6 months    MAL-ED           BRAZIL                         optimal              observed           1.0558524    0.8270140    1.2846908
6 months    MAL-ED           INDIA                          optimal              observed          -0.8364414   -1.0207431   -0.6521397
6 months    MAL-ED           NEPAL                          optimal              observed           0.2199435    0.0303181    0.4095689
6 months    MAL-ED           PERU                           optimal              observed           1.1429959    0.9646029    1.3213889
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.6052953    0.3967560    0.8138347
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4345334    0.2601240    0.6089428
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.4721041   -0.6001862   -0.3440221
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0764942   -0.1834628    0.0304745
6 months    PROBIT           BELARUS                        optimal              observed           0.5898878    0.5336582    0.6461173
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1697678   -0.2904160   -0.0491196
6 months    ResPak           PAKISTAN                       optimal              observed          -0.0773338   -0.3359752    0.1813076
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.6502378   -0.8110814   -0.4893942
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.8756201   -1.0309522   -0.7202881
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1100273    0.0395560    0.1804986
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.2890277    0.2533699    0.3246855
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6500559   -0.7722505   -0.5278613
24 months   CMIN             BANGLADESH                     optimal              observed          -0.7932374   -0.9420650   -0.6444097
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.2556225   -0.3344000   -0.1768450
24 months   COHORTS          INDIA                          optimal              observed          -0.5530215   -0.5921094   -0.5139337
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.5956800   -0.6466652   -0.5446948
24 months   CONTENT          PERU                           optimal              observed           0.5110012    0.3453656    0.6766367
24 months   EE               PAKISTAN                       optimal              observed          -0.8727454   -1.0715620   -0.6739288
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.0582430   -1.1816803   -0.9348056
24 months   IRC              INDIA                          optimal              observed          -0.7831010   -0.9162985   -0.6499034
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2639738   -1.2952675   -1.2326800
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.1855805   -1.2279440   -1.1432170
24 months   Keneba           GAMBIA                         optimal              observed          -0.7844578   -0.8511046   -0.7178111
24 months   LCNI-5           MALAWI                         optimal              observed          -0.1473881   -0.2539280   -0.0408482
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.8640423   -1.0369534   -0.6911313
24 months   MAL-ED           BRAZIL                         optimal              observed           0.5476966    0.2597896    0.8356036
24 months   MAL-ED           INDIA                          optimal              observed          -0.9066712   -1.0634817   -0.7498607
24 months   MAL-ED           NEPAL                          optimal              observed          -0.3493955   -0.5101678   -0.1886232
24 months   MAL-ED           PERU                           optimal              observed          -0.1024090   -0.2685884    0.0637704
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.3151995    0.1497888    0.4806101
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0477694   -0.2157332    0.1201945
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.8650457   -1.0090759   -0.7210155
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.6796385   -0.8048162   -0.5544607
24 months   PROBIT           BELARUS                        optimal              observed           0.7049918    0.5636247    0.8463589
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8453122   -0.9636663   -0.7269581
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0145582   -1.1331176   -0.8959988


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
Birth       MAL-ED           NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
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
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1644234   -0.4736573    0.1448106
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1104981   -0.2165987   -0.0043975
Birth       COHORTS          INDIA                          optimal              observed          -0.0058861   -0.0343424    0.0225702
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0260728   -0.0754242    0.0232787
Birth       EE               PAKISTAN                       optimal              observed           0.0537928   -0.1363161    0.2439018
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0332517   -0.1284993    0.0619958
Birth       IRC              INDIA                          optimal              observed          -0.0895577   -0.2508539    0.0717385
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0185894   -0.0335224   -0.0036564
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0215585   -0.0736219    0.0305050
Birth       Keneba           GAMBIA                         optimal              observed           0.0226993   -0.0376582    0.0830568
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.1009410   -0.2457544    0.0438724
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.1366759   -0.4588824    0.1855305
Birth       MAL-ED           INDIA                          optimal              observed           0.1310800   -0.1638869    0.4260468
Birth       MAL-ED           NEPAL                          optimal              observed          -0.2534594   -0.7199165    0.2129976
Birth       MAL-ED           PERU                           optimal              observed           0.0918346   -0.0295996    0.2132688
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.1916064   -0.0331969    0.4164097
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0775501   -0.2513345    0.0962343
Birth       NIH-Birth        BANGLADESH                     optimal              observed           0.0257345   -0.0753024    0.1267713
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.0146083   -0.0703196    0.0995362
Birth       PROBIT           BELARUS                        optimal              observed          -0.0093290   -0.0297376    0.0110795
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0408052   -0.1137485    0.0321381
Birth       ResPak           PAKISTAN                       optimal              observed          -0.1485709   -0.5069872    0.2098453
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0840303   -0.1273884   -0.0406722
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0930911   -0.1180127   -0.0681694
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1242745   -0.2775404    0.0289914
6 months    CMIN             BANGLADESH                     optimal              observed          -0.0472446   -0.1725056    0.0780164
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.0889091   -0.1636307   -0.0141875
6 months    COHORTS          INDIA                          optimal              observed          -0.0313179   -0.0577627   -0.0048731
6 months    COHORTS          PHILIPPINES                    optimal              observed           0.0202522   -0.0189703    0.0594747
6 months    CONTENT          PERU                           optimal              observed          -0.0605073   -0.1779337    0.0569190
6 months    EE               PAKISTAN                       optimal              observed          -0.0732139   -0.1912436    0.0448157
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0308177   -0.1195764    0.0579409
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0687692   -0.1781847    0.0406463
6 months    IRC              INDIA                          optimal              observed           0.1033424   -0.0303460    0.2370309
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0056908   -0.0226346    0.0112529
6 months    JiVitA-4         BANGLADESH                     optimal              observed           0.0081230   -0.0257935    0.0420394
6 months    Keneba           GAMBIA                         optimal              observed           0.0697430    0.0183147    0.1211712
6 months    LCNI-5           MALAWI                         optimal              observed           0.0200586   -0.0513388    0.0914560
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1688677   -0.3014530   -0.0362825
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0837750   -0.2482862    0.0807361
6 months    MAL-ED           INDIA                          optimal              observed           0.1284435   -0.0015750    0.2584621
6 months    MAL-ED           NEPAL                          optimal              observed          -0.1095127   -0.2322583    0.0132329
6 months    MAL-ED           PERU                           optimal              observed          -0.0901144   -0.2018073    0.0215786
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0631168   -0.2176353    0.0914016
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1016879   -0.0320421    0.2354180
6 months    NIH-Birth        BANGLADESH                     optimal              observed           0.0247003   -0.0590037    0.1084044
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.1062564    0.0267751    0.1857377
6 months    PROBIT           BELARUS                        optimal              observed          -0.0157779   -0.0348594    0.0033037
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0293229   -0.1084300    0.0497843
6 months    ResPak           PAKISTAN                       optimal              observed          -0.0868503   -0.2762956    0.1025950
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0154706   -0.0591125    0.0281713
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.1365378   -0.2462129   -0.0268627
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0290941   -0.0823237    0.0241355
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.0215238   -0.0044901    0.0475376
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed           0.0929054   -0.0081078    0.1939185
24 months   CMIN             BANGLADESH                     optimal              observed          -0.0603017   -0.1857880    0.0651846
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0259579   -0.0825734    0.0306576
24 months   COHORTS          INDIA                          optimal              observed          -0.0543022   -0.0837320   -0.0248725
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0142792   -0.0529829    0.0244246
24 months   CONTENT          PERU                           optimal              observed           0.0792427   -0.0566522    0.2151377
24 months   EE               PAKISTAN                       optimal              observed          -0.1392784   -0.2927634    0.0142066
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0780678   -0.1733034    0.0171678
24 months   IRC              INDIA                          optimal              observed           0.0372860   -0.0604435    0.1350154
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0338293   -0.0554826   -0.0121760
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0375282   -0.0694004   -0.0056561
24 months   Keneba           GAMBIA                         optimal              observed          -0.0254712   -0.0748001    0.0238578
24 months   LCNI-5           MALAWI                         optimal              observed           0.0996172    0.0178507    0.1813838
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.0447499   -0.0760460    0.1655457
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0850733   -0.2787604    0.1086137
24 months   MAL-ED           INDIA                          optimal              observed          -0.0449808   -0.1529979    0.0630363
24 months   MAL-ED           NEPAL                          optimal              observed          -0.0255168   -0.1336188    0.0825852
24 months   MAL-ED           PERU                           optimal              observed           0.2136072    0.0956510    0.3315634
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.0938306   -0.0277833    0.2154446
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1025669   -0.0233168    0.2284506
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.0465334   -0.1538213    0.0607545
24 months   NIH-Crypto       BANGLADESH                     optimal              observed           0.0692883   -0.0253937    0.1639702
24 months   PROBIT           BELARUS                        optimal              observed          -0.0068512   -0.0633659    0.0496635
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0475548   -0.1273595    0.0322499
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1679822   -0.2506800   -0.0852845

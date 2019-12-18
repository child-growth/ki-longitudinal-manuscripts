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

**Intervention Variable:** rain_quartile

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country
* agecat

## Data Summary

studyid          country        agecat       rain_quartile   n_cell       n
---------------  -------------  ----------  --------------  -------  ------
CMC-V-BCS-2002   India          Birth                    1       18      92
CMC-V-BCS-2002   India          Birth                    2       25      92
CMC-V-BCS-2002   India          Birth                    3       30      92
CMC-V-BCS-2002   India          Birth                    4       19      92
CMC-V-BCS-2002   India          6 months                 1      101     369
CMC-V-BCS-2002   India          6 months                 2      111     369
CMC-V-BCS-2002   India          6 months                 3       97     369
CMC-V-BCS-2002   India          6 months                 4       60     369
CMC-V-BCS-2002   India          24 months                1       87     333
CMC-V-BCS-2002   India          24 months                2       90     333
CMC-V-BCS-2002   India          24 months                3       94     333
CMC-V-BCS-2002   India          24 months                4       62     333
CMIN             Bangladesh     Birth                    1        7      26
CMIN             Bangladesh     Birth                    2        6      26
CMIN             Bangladesh     Birth                    3        6      26
CMIN             Bangladesh     Birth                    4        7      26
CMIN             Bangladesh     6 months                 1       50     243
CMIN             Bangladesh     6 months                 2       62     243
CMIN             Bangladesh     6 months                 3       71     243
CMIN             Bangladesh     6 months                 4       60     243
CMIN             Bangladesh     24 months                1       72     224
CMIN             Bangladesh     24 months                2       64     224
CMIN             Bangladesh     24 months                3       52     224
CMIN             Bangladesh     24 months                4       36     224
CONTENT          Peru           Birth                    1        0       2
CONTENT          Peru           Birth                    2        2       2
CONTENT          Peru           Birth                    3        0       2
CONTENT          Peru           Birth                    4        0       2
CONTENT          Peru           6 months                 1       62     215
CONTENT          Peru           6 months                 2       32     215
CONTENT          Peru           6 months                 3       44     215
CONTENT          Peru           6 months                 4       77     215
CONTENT          Peru           24 months                1       55     164
CONTENT          Peru           24 months                2       35     164
CONTENT          Peru           24 months                3       20     164
CONTENT          Peru           24 months                4       54     164
EE               Pakistan       Birth                    1      136     240
EE               Pakistan       Birth                    2       93     240
EE               Pakistan       Birth                    3       11     240
EE               Pakistan       Birth                    4        0     240
EE               Pakistan       6 months                 1        0     373
EE               Pakistan       6 months                 2       34     373
EE               Pakistan       6 months                 3      168     373
EE               Pakistan       6 months                 4      171     373
EE               Pakistan       24 months                1        7     158
EE               Pakistan       24 months                2      151     158
EE               Pakistan       24 months                3        0     158
EE               Pakistan       24 months                4        0     158
GMS-Nepal        Nepal          Birth                    1        0     696
GMS-Nepal        Nepal          Birth                    2        0     696
GMS-Nepal        Nepal          Birth                    3      161     696
GMS-Nepal        Nepal          Birth                    4      535     696
GMS-Nepal        Nepal          6 months                 1      502     564
GMS-Nepal        Nepal          6 months                 2       62     564
GMS-Nepal        Nepal          6 months                 3        0     564
GMS-Nepal        Nepal          6 months                 4        0     564
GMS-Nepal        Nepal          24 months                1        0     323
GMS-Nepal        Nepal          24 months                2        0     323
GMS-Nepal        Nepal          24 months                3       34     323
GMS-Nepal        Nepal          24 months                4      289     323
Guatemala BSC    Guatemala      6 months                 1       60     299
Guatemala BSC    Guatemala      6 months                 2       80     299
Guatemala BSC    Guatemala      6 months                 3       87     299
Guatemala BSC    Guatemala      6 months                 4       72     299
IRC              India          Birth                    1       86     388
IRC              India          Birth                    2      126     388
IRC              India          Birth                    3       77     388
IRC              India          Birth                    4       99     388
IRC              India          6 months                 1      119     407
IRC              India          6 months                 2       76     407
IRC              India          6 months                 3      127     407
IRC              India          6 months                 4       85     407
IRC              India          24 months                1       87     347
IRC              India          24 months                2      108     347
IRC              India          24 months                3       81     347
IRC              India          24 months                4       71     347
JiVitA-3         Bangladesh     Birth                    1     6556   22455
JiVitA-3         Bangladesh     Birth                    2     7177   22455
JiVitA-3         Bangladesh     Birth                    3     4636   22455
JiVitA-3         Bangladesh     Birth                    4     4086   22455
JiVitA-3         Bangladesh     6 months                 1     3724   16811
JiVitA-3         Bangladesh     6 months                 2     3587   16811
JiVitA-3         Bangladesh     6 months                 3     5224   16811
JiVitA-3         Bangladesh     6 months                 4     4276   16811
JiVitA-3         Bangladesh     24 months                1        0       3
JiVitA-3         Bangladesh     24 months                2        0       3
JiVitA-3         Bangladesh     24 months                3        0       3
JiVitA-3         Bangladesh     24 months                4        3       3
JiVitA-4         Bangladesh     Birth                    1      333    2823
JiVitA-4         Bangladesh     Birth                    2      216    2823
JiVitA-4         Bangladesh     Birth                    3     1312    2823
JiVitA-4         Bangladesh     Birth                    4      962    2823
JiVitA-4         Bangladesh     6 months                 1     1469    4831
JiVitA-4         Bangladesh     6 months                 2     2613    4831
JiVitA-4         Bangladesh     6 months                 3      628    4831
JiVitA-4         Bangladesh     6 months                 4      121    4831
JiVitA-4         Bangladesh     24 months                1      205    1274
JiVitA-4         Bangladesh     24 months                2      130    1274
JiVitA-4         Bangladesh     24 months                3      520    1274
JiVitA-4         Bangladesh     24 months                4      419    1274
Keneba           Gambia         Birth                    1      448    1543
Keneba           Gambia         Birth                    2      427    1543
Keneba           Gambia         Birth                    3      378    1543
Keneba           Gambia         Birth                    4      290    1543
Keneba           Gambia         6 months                 1      464    2089
Keneba           Gambia         6 months                 2      459    2089
Keneba           Gambia         6 months                 3      606    2089
Keneba           Gambia         6 months                 4      560    2089
Keneba           Gambia         24 months                1      178     706
Keneba           Gambia         24 months                2      216     706
Keneba           Gambia         24 months                3      130     706
Keneba           Gambia         24 months                4      182     706
LCNI-5           Malawi         6 months                 1      204     839
LCNI-5           Malawi         6 months                 2      319     839
LCNI-5           Malawi         6 months                 3      113     839
LCNI-5           Malawi         6 months                 4      203     839
LCNI-5           Malawi         24 months                1       51     214
LCNI-5           Malawi         24 months                2       14     214
LCNI-5           Malawi         24 months                3      103     214
LCNI-5           Malawi         24 months                4       46     214
MAL-ED           Bangladesh     Birth                    1       68     231
MAL-ED           Bangladesh     Birth                    2       51     231
MAL-ED           Bangladesh     Birth                    3       64     231
MAL-ED           Bangladesh     Birth                    4       48     231
MAL-ED           Bangladesh     6 months                 1       55     241
MAL-ED           Bangladesh     6 months                 2       71     241
MAL-ED           Bangladesh     6 months                 3       60     241
MAL-ED           Bangladesh     6 months                 4       55     241
MAL-ED           Bangladesh     24 months                1       49     187
MAL-ED           Bangladesh     24 months                2       51     187
MAL-ED           Bangladesh     24 months                3       43     187
MAL-ED           Bangladesh     24 months                4       44     187
MAL-ED           Brazil         Birth                    1       19      65
MAL-ED           Brazil         Birth                    2       12      65
MAL-ED           Brazil         Birth                    3       12      65
MAL-ED           Brazil         Birth                    4       22      65
MAL-ED           Brazil         6 months                 1       64     209
MAL-ED           Brazil         6 months                 2       51     209
MAL-ED           Brazil         6 months                 3       44     209
MAL-ED           Brazil         6 months                 4       50     209
MAL-ED           Brazil         24 months                1       54     167
MAL-ED           Brazil         24 months                2       32     167
MAL-ED           Brazil         24 months                3       43     167
MAL-ED           Brazil         24 months                4       38     167
MAL-ED           India          Birth                    1       10      47
MAL-ED           India          Birth                    2       11      47
MAL-ED           India          Birth                    3       12      47
MAL-ED           India          Birth                    4       14      47
MAL-ED           India          6 months                 1       66     236
MAL-ED           India          6 months                 2       42     236
MAL-ED           India          6 months                 3       73     236
MAL-ED           India          6 months                 4       55     236
MAL-ED           India          24 months                1       51     202
MAL-ED           India          24 months                2       55     202
MAL-ED           India          24 months                3       48     202
MAL-ED           India          24 months                4       48     202
MAL-ED           Nepal          Birth                    1        5      27
MAL-ED           Nepal          Birth                    2       10      27
MAL-ED           Nepal          Birth                    3        7      27
MAL-ED           Nepal          Birth                    4        5      27
MAL-ED           Nepal          6 months                 1       60     236
MAL-ED           Nepal          6 months                 2       59     236
MAL-ED           Nepal          6 months                 3       59     236
MAL-ED           Nepal          6 months                 4       58     236
MAL-ED           Nepal          24 months                1       51     200
MAL-ED           Nepal          24 months                2       56     200
MAL-ED           Nepal          24 months                3       55     200
MAL-ED           Nepal          24 months                4       38     200
MAL-ED           Peru           Birth                    1       49     233
MAL-ED           Peru           Birth                    2       54     233
MAL-ED           Peru           Birth                    3       69     233
MAL-ED           Peru           Birth                    4       61     233
MAL-ED           Peru           6 months                 1       96     273
MAL-ED           Peru           6 months                 2       77     273
MAL-ED           Peru           6 months                 3       60     273
MAL-ED           Peru           6 months                 4       40     273
MAL-ED           Peru           24 months                1       46     199
MAL-ED           Peru           24 months                2       42     199
MAL-ED           Peru           24 months                3       51     199
MAL-ED           Peru           24 months                4       60     199
MAL-ED           South Africa   Birth                    1       25     123
MAL-ED           South Africa   Birth                    2       23     123
MAL-ED           South Africa   Birth                    3       35     123
MAL-ED           South Africa   Birth                    4       40     123
MAL-ED           South Africa   6 months                 1      106     254
MAL-ED           South Africa   6 months                 2       67     254
MAL-ED           South Africa   6 months                 3       45     254
MAL-ED           South Africa   6 months                 4       36     254
MAL-ED           South Africa   24 months                1       45     203
MAL-ED           South Africa   24 months                2       31     203
MAL-ED           South Africa   24 months                3       72     203
MAL-ED           South Africa   24 months                4       55     203
MAL-ED           Tanzania       Birth                    1       18     125
MAL-ED           Tanzania       Birth                    2       35     125
MAL-ED           Tanzania       Birth                    3       34     125
MAL-ED           Tanzania       Birth                    4       38     125
MAL-ED           Tanzania       6 months                 1       71     247
MAL-ED           Tanzania       6 months                 2       80     247
MAL-ED           Tanzania       6 months                 3       53     247
MAL-ED           Tanzania       6 months                 4       43     247
MAL-ED           Tanzania       24 months                1       47     183
MAL-ED           Tanzania       24 months                2       50     183
MAL-ED           Tanzania       24 months                3       48     183
MAL-ED           Tanzania       24 months                4       38     183
PROBIT           Belarus        Birth                    1     3780   13890
PROBIT           Belarus        Birth                    2     4150   13890
PROBIT           Belarus        Birth                    3     2715   13890
PROBIT           Belarus        Birth                    4     3245   13890
PROBIT           Belarus        6 months                 1     3612   15761
PROBIT           Belarus        6 months                 2     3117   15761
PROBIT           Belarus        6 months                 3     4512   15761
PROBIT           Belarus        6 months                 4     4520   15761
PROBIT           Belarus        24 months                1      309    1168
PROBIT           Belarus        24 months                2      363    1168
PROBIT           Belarus        24 months                3      214    1168
PROBIT           Belarus        24 months                4      282    1168
PROVIDE          Bangladesh     Birth                    1       78     539
PROVIDE          Bangladesh     Birth                    2      163     539
PROVIDE          Bangladesh     Birth                    3       97     539
PROVIDE          Bangladesh     Birth                    4      201     539
PROVIDE          Bangladesh     6 months                 1      211     604
PROVIDE          Bangladesh     6 months                 2      122     604
PROVIDE          Bangladesh     6 months                 3      175     604
PROVIDE          Bangladesh     6 months                 4       96     604
PROVIDE          Bangladesh     24 months                1        4      40
PROVIDE          Bangladesh     24 months                2       13      40
PROVIDE          Bangladesh     24 months                3        4      40
PROVIDE          Bangladesh     24 months                4       19      40
ResPak           Pakistan       Birth                    1        3      42
ResPak           Pakistan       Birth                    2        2      42
ResPak           Pakistan       Birth                    3       16      42
ResPak           Pakistan       Birth                    4       21      42
ResPak           Pakistan       6 months                 1      107     239
ResPak           Pakistan       6 months                 2       98     239
ResPak           Pakistan       6 months                 3        8     239
ResPak           Pakistan       6 months                 4       26     239
SAS-CompFeed     India          Birth                    1      273    1252
SAS-CompFeed     India          Birth                    2      408    1252
SAS-CompFeed     India          Birth                    3      223    1252
SAS-CompFeed     India          Birth                    4      348    1252
SAS-CompFeed     India          6 months                 1      375    1336
SAS-CompFeed     India          6 months                 2      230    1336
SAS-CompFeed     India          6 months                 3      434    1336
SAS-CompFeed     India          6 months                 4      297    1336
SAS-FoodSuppl    India          6 months                 1      160     380
SAS-FoodSuppl    India          6 months                 2       37     380
SAS-FoodSuppl    India          6 months                 3      106     380
SAS-FoodSuppl    India          6 months                 4       77     380
TanzaniaChild2   Tanzania       6 months                 1      516    2029
TanzaniaChild2   Tanzania       6 months                 2      564    2029
TanzaniaChild2   Tanzania       6 months                 3      467    2029
TanzaniaChild2   Tanzania       6 months                 4      482    2029
TanzaniaChild2   Tanzania       24 months                1        0       4
TanzaniaChild2   Tanzania       24 months                2        2       4
TanzaniaChild2   Tanzania       24 months                3        0       4
TanzaniaChild2   Tanzania       24 months                4        2       4
ZVITAMBO         Zimbabwe       Birth                    1     3733   13875
ZVITAMBO         Zimbabwe       Birth                    2     3153   13875
ZVITAMBO         Zimbabwe       Birth                    3     3455   13875
ZVITAMBO         Zimbabwe       Birth                    4     3534   13875
ZVITAMBO         Zimbabwe       6 months                 1     2162    8669
ZVITAMBO         Zimbabwe       6 months                 2     2252    8669
ZVITAMBO         Zimbabwe       6 months                 3     2013    8669
ZVITAMBO         Zimbabwe       6 months                 4     2242    8669
ZVITAMBO         Zimbabwe       24 months                1       38     316
ZVITAMBO         Zimbabwe       24 months                2       78     316
ZVITAMBO         Zimbabwe       24 months                3       84     316
ZVITAMBO         Zimbabwe       24 months                4      116     316


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: India, agecat: 24 months
* studyid: CMC-V-BCS-2002, country: India, agecat: 6 months
* studyid: CMC-V-BCS-2002, country: India, agecat: Birth
* studyid: CMIN, country: Bangladesh, agecat: 24 months
* studyid: CMIN, country: Bangladesh, agecat: 6 months
* studyid: CMIN, country: Bangladesh, agecat: Birth
* studyid: CONTENT, country: Peru, agecat: 24 months
* studyid: CONTENT, country: Peru, agecat: 6 months
* studyid: CONTENT, country: Peru, agecat: Birth
* studyid: EE, country: Pakistan, agecat: 24 months
* studyid: EE, country: Pakistan, agecat: 6 months
* studyid: EE, country: Pakistan, agecat: Birth
* studyid: GMS-Nepal, country: Nepal, agecat: 24 months
* studyid: GMS-Nepal, country: Nepal, agecat: 6 months
* studyid: GMS-Nepal, country: Nepal, agecat: Birth
* studyid: Guatemala BSC, country: Guatemala, agecat: 6 months
* studyid: IRC, country: India, agecat: 24 months
* studyid: IRC, country: India, agecat: 6 months
* studyid: IRC, country: India, agecat: Birth
* studyid: JiVitA-3, country: Bangladesh, agecat: 24 months
* studyid: JiVitA-3, country: Bangladesh, agecat: 6 months
* studyid: JiVitA-3, country: Bangladesh, agecat: Birth
* studyid: JiVitA-4, country: Bangladesh, agecat: 24 months
* studyid: JiVitA-4, country: Bangladesh, agecat: 6 months
* studyid: JiVitA-4, country: Bangladesh, agecat: Birth
* studyid: Keneba, country: Gambia, agecat: 24 months
* studyid: Keneba, country: Gambia, agecat: 6 months
* studyid: Keneba, country: Gambia, agecat: Birth
* studyid: LCNI-5, country: Malawi, agecat: 24 months
* studyid: LCNI-5, country: Malawi, agecat: 6 months
* studyid: MAL-ED, country: Bangladesh, agecat: 24 months
* studyid: MAL-ED, country: Bangladesh, agecat: 6 months
* studyid: MAL-ED, country: Bangladesh, agecat: Birth
* studyid: MAL-ED, country: Brazil, agecat: 24 months
* studyid: MAL-ED, country: Brazil, agecat: 6 months
* studyid: MAL-ED, country: Brazil, agecat: Birth
* studyid: MAL-ED, country: India, agecat: 24 months
* studyid: MAL-ED, country: India, agecat: 6 months
* studyid: MAL-ED, country: India, agecat: Birth
* studyid: MAL-ED, country: Nepal, agecat: 24 months
* studyid: MAL-ED, country: Nepal, agecat: 6 months
* studyid: MAL-ED, country: Nepal, agecat: Birth
* studyid: MAL-ED, country: Peru, agecat: 24 months
* studyid: MAL-ED, country: Peru, agecat: 6 months
* studyid: MAL-ED, country: Peru, agecat: Birth
* studyid: MAL-ED, country: South Africa, agecat: 24 months
* studyid: MAL-ED, country: South Africa, agecat: 6 months
* studyid: MAL-ED, country: South Africa, agecat: Birth
* studyid: MAL-ED, country: Tanzania, agecat: 24 months
* studyid: MAL-ED, country: Tanzania, agecat: 6 months
* studyid: MAL-ED, country: Tanzania, agecat: Birth
* studyid: PROBIT, country: Belarus, agecat: 24 months
* studyid: PROBIT, country: Belarus, agecat: 6 months
* studyid: PROBIT, country: Belarus, agecat: Birth
* studyid: PROVIDE, country: Bangladesh, agecat: 24 months
* studyid: PROVIDE, country: Bangladesh, agecat: 6 months
* studyid: PROVIDE, country: Bangladesh, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: 6 months
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: SAS-CompFeed, country: India, agecat: 6 months
* studyid: SAS-CompFeed, country: India, agecat: Birth
* studyid: SAS-FoodSuppl, country: India, agecat: 6 months
* studyid: TanzaniaChild2, country: Tanzania, agecat: 24 months
* studyid: TanzaniaChild2, country: Tanzania, agecat: 6 months
* studyid: ZVITAMBO, country: Zimbabwe, agecat: 24 months
* studyid: ZVITAMBO, country: Zimbabwe, agecat: 6 months
* studyid: ZVITAMBO, country: Zimbabwe, agecat: Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CONTENT, country: Peru, agecat: Birth
* studyid: EE, country: Pakistan, agecat: Birth
* studyid: EE, country: Pakistan, agecat: 6 months
* studyid: EE, country: Pakistan, agecat: 24 months
* studyid: GMS-Nepal, country: Nepal, agecat: Birth
* studyid: GMS-Nepal, country: Nepal, agecat: 6 months
* studyid: GMS-Nepal, country: Nepal, agecat: 24 months
* studyid: JiVitA-3, country: Bangladesh, agecat: 24 months
* studyid: PROVIDE, country: Bangladesh, agecat: 24 months
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: TanzaniaChild2, country: Tanzania, agecat: 24 months

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
![](/tmp/b7d3923d-f453-45ea-ab9d-1f8b2a8ff522/9a4b405d-fd79-4939-87ed-47edc3bceabb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.9812204   -1.4155386   -0.5469022
CMC-V-BCS-2002   India          6 months    optimal              observed          -1.2878412   -1.5536129   -1.0220696
CMC-V-BCS-2002   India          24 months   optimal              observed          -2.7372632   -2.9776186   -2.4969077
CMIN             Bangladesh     Birth       optimal              observed          -2.1713313   -2.9404847   -1.4021780
CMIN             Bangladesh     6 months    optimal              observed          -1.3883786   -1.6081686   -1.1685885
CMIN             Bangladesh     24 months   optimal              observed          -2.2947643   -2.5727930   -2.0167355
CONTENT          Peru           6 months    optimal              observed          -0.5179023   -0.8806737   -0.1551308
CONTENT          Peru           24 months   optimal              observed          -0.5964713   -0.9927549   -0.2001876
Guatemala BSC    Guatemala      6 months    optimal              observed          -1.8175642   -2.0289987   -1.6061297
IRC              India          Birth       optimal              observed           0.1424409   -0.2891676    0.5740495
IRC              India          6 months    optimal              observed          -0.9220705   -1.1836911   -0.6604499
IRC              India          24 months   optimal              observed          -1.7978577   -2.0043718   -1.5913437
JiVitA-3         Bangladesh     Birth       optimal              observed          -1.4499254   -1.4875228   -1.4123279
JiVitA-3         Bangladesh     6 months    optimal              observed          -1.2693124   -1.3123336   -1.2262912
JiVitA-4         Bangladesh     Birth       optimal              observed          -1.2903169   -1.4244208   -1.1562131
JiVitA-4         Bangladesh     6 months    optimal              observed          -1.2385113   -1.3201886   -1.1568341
JiVitA-4         Bangladesh     24 months   optimal              observed          -1.7038069   -1.9043966   -1.5032172
Keneba           Gambia         Birth       optimal              observed           0.1395870    0.0190801    0.2600939
Keneba           Gambia         6 months    optimal              observed          -0.8250953   -0.9158829   -0.7343077
Keneba           Gambia         24 months   optimal              observed          -1.5611552   -1.7218450   -1.4004655
LCNI-5           Malawi         6 months    optimal              observed          -1.7714208   -1.9158932   -1.6269485
LCNI-5           Malawi         24 months   optimal              observed          -1.7921696   -2.0285338   -1.5558055
MAL-ED           Bangladesh     Birth       optimal              observed          -1.3026465   -1.5835474   -1.0217456
MAL-ED           Bangladesh     6 months    optimal              observed          -1.2898130   -1.5043563   -1.0752698
MAL-ED           Bangladesh     24 months   optimal              observed          -2.0227749   -2.2858786   -1.7596712
MAL-ED           Brazil         Birth       optimal              observed          -0.7932093   -1.3419701   -0.2444486
MAL-ED           Brazil         6 months    optimal              observed           0.0959358   -0.1987859    0.3906575
MAL-ED           Brazil         24 months   optimal              observed          -0.2603678   -0.7433516    0.2226160
MAL-ED           India          Birth       optimal              observed          -0.7201532   -1.2257430   -0.2145634
MAL-ED           India          6 months    optimal              observed          -1.2817170   -1.5128578   -1.0505762
MAL-ED           India          24 months   optimal              observed          -2.0014125   -2.2950711   -1.7077539
MAL-ED           Nepal          Birth       optimal              observed          -1.4143808   -2.1430082   -0.6857535
MAL-ED           Nepal          6 months    optimal              observed          -0.3917389   -0.6130218   -0.1704560
MAL-ED           Nepal          24 months   optimal              observed          -1.0761758   -1.3749352   -0.7774164
MAL-ED           Peru           Birth       optimal              observed          -0.6615383   -0.9177849   -0.4052918
MAL-ED           Peru           6 months    optimal              observed          -1.1324567   -1.3732150   -0.8916985
MAL-ED           Peru           24 months   optimal              observed          -1.6743144   -1.8847592   -1.4638696
MAL-ED           South Africa   Birth       optimal              observed          -0.6089993   -1.0491554   -0.1688433
MAL-ED           South Africa   6 months    optimal              observed          -0.7013379   -0.9993165   -0.4033593
MAL-ED           South Africa   24 months   optimal              observed          -1.2365057   -1.5929419   -0.8800696
MAL-ED           Tanzania       Birth       optimal              observed          -1.1332631   -1.5851992   -0.6813271
MAL-ED           Tanzania       6 months    optimal              observed          -1.1493421   -1.4085300   -0.8901542
MAL-ED           Tanzania       24 months   optimal              observed          -2.8206439   -3.1145800   -2.5267078
PROBIT           Belarus        Birth       optimal              observed           1.3747662    1.2052538    1.5442786
PROBIT           Belarus        6 months    optimal              observed           0.1888661    0.0808729    0.2968593
PROBIT           Belarus        24 months   optimal              observed           0.0573202   -0.1312241    0.2458645
PROVIDE          Bangladesh     Birth       optimal              observed          -0.8301474   -0.9766558   -0.6836389
PROVIDE          Bangladesh     6 months    optimal              observed          -0.8677412   -1.0412703   -0.6942121
ResPak           Pakistan       6 months    optimal              observed          -1.4880383   -2.3520624   -0.6240143
SAS-CompFeed     India          Birth       optimal              observed          -1.3137866   -1.4624821   -1.1650912
SAS-CompFeed     India          6 months    optimal              observed          -1.3085853   -1.4410899   -1.1760808
SAS-FoodSuppl    India          6 months    optimal              observed          -1.8062575   -1.9754360   -1.6370790
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.3499844   -0.4542793   -0.2456894
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3650153   -0.4031278   -0.3269028
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.7952009   -0.8462123   -0.7441895
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -1.8361470   -2.3269840   -1.3453100


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       observed             observed          -0.9611957   -1.1776967   -0.7446946
CMC-V-BCS-2002   India          6 months    observed             observed          -1.4234508   -1.5645974   -1.2823042
CMC-V-BCS-2002   India          24 months   observed             observed          -2.6927477   -2.7980658   -2.5874297
CMIN             Bangladesh     Birth       observed             observed          -1.8811538   -2.5124807   -1.2498270
CMIN             Bangladesh     6 months    observed             observed          -1.7844376   -1.9222926   -1.6465825
CMIN             Bangladesh     24 months   observed             observed          -2.5563616   -2.6853113   -2.4274119
CONTENT          Peru           6 months    observed             observed          -0.3139217   -0.4868486   -0.1409948
CONTENT          Peru           24 months   observed             observed          -0.6962195   -0.8674103   -0.5250287
Guatemala BSC    Guatemala      6 months    observed             observed          -1.5619008   -1.6727702   -1.4510313
IRC              India          Birth       observed             observed          -0.3080412   -0.4687931   -0.1472894
IRC              India          6 months    observed             observed          -1.2344062   -1.3658524   -1.1029600
IRC              India          24 months   observed             observed          -1.8787176   -1.9805661   -1.7768691
JiVitA-3         Bangladesh     Birth       observed             observed          -1.5894148   -1.6086362   -1.5701935
JiVitA-3         Bangladesh     6 months    observed             observed          -1.3130932   -1.3362359   -1.2899505
JiVitA-4         Bangladesh     Birth       observed             observed          -1.5232908   -1.5723277   -1.4742539
JiVitA-4         Bangladesh     6 months    observed             observed          -1.3447940   -1.3820261   -1.3075620
JiVitA-4         Bangladesh     24 months   observed             observed          -1.9327943   -1.9977741   -1.8678145
Keneba           Gambia         Birth       observed             observed           0.0308036   -0.0328378    0.0944451
Keneba           Gambia         6 months    observed             observed          -0.9036375   -0.9508087   -0.8564663
Keneba           Gambia         24 months   observed             observed          -1.6554946   -1.7360989   -1.5748903
LCNI-5           Malawi         6 months    observed             observed          -1.6601907   -1.7297701   -1.5906113
LCNI-5           Malawi         24 months   observed             observed          -2.0459112   -2.1718307   -1.9199918
MAL-ED           Bangladesh     Birth       observed             observed          -1.1180952   -1.2525408   -0.9836496
MAL-ED           Bangladesh     6 months    observed             observed          -1.2049931   -1.3222136   -1.0877726
MAL-ED           Bangladesh     24 months   observed             observed          -2.0203209   -2.1567304   -1.8839113
MAL-ED           Brazil         Birth       observed             observed          -0.6760000   -0.9521457   -0.3998543
MAL-ED           Brazil         6 months    observed             observed           0.0475758   -0.0963508    0.1915023
MAL-ED           Brazil         24 months   observed             observed          -0.0663473   -0.2413659    0.1086713
MAL-ED           India          Birth       observed             observed          -1.2036170   -1.4976814   -0.9095527
MAL-ED           India          6 months    observed             observed          -1.2115254   -1.3298727   -1.0931782
MAL-ED           India          24 months   observed             observed          -1.9337871   -2.0691373   -1.7984370
MAL-ED           Nepal          Birth       observed             observed          -0.8533333   -1.2104864   -0.4961803
MAL-ED           Nepal          6 months    observed             observed          -0.5615819   -0.6741832   -0.4489807
MAL-ED           Nepal          24 months   observed             observed          -1.3339250   -1.4668700   -1.2009800
MAL-ED           Peru           Birth       observed             observed          -0.8827897   -1.0001058   -0.7654736
MAL-ED           Peru           6 months    observed             observed          -1.3236661   -1.4316775   -1.2156546
MAL-ED           Peru           24 months   observed             observed          -1.8184925   -1.9407024   -1.6962825
MAL-ED           South Africa   Birth       observed             observed          -0.6317073   -0.8249555   -0.4384591
MAL-ED           South Africa   6 months    observed             observed          -1.0633202   -1.1909180   -0.9357224
MAL-ED           South Africa   24 months   observed             observed          -1.7086453   -1.8487775   -1.5685131
MAL-ED           Tanzania       Birth       observed             observed          -1.1556000   -1.3655361   -0.9456639
MAL-ED           Tanzania       6 months    observed             observed          -1.3687449   -1.4907629   -1.2467270
MAL-ED           Tanzania       24 months   observed             observed          -2.6979508   -2.8450645   -2.5508372
PROBIT           Belarus        Birth       observed             observed           1.3269446    1.1683850    1.4855041
PROBIT           Belarus        6 months    observed             observed           0.1068536    0.0120998    0.2016074
PROBIT           Belarus        24 months   observed             observed          -0.2282149   -0.4620519    0.0056221
PROVIDE          Bangladesh     Birth       observed             observed          -0.8851020   -0.9601332   -0.8100709
PROVIDE          Bangladesh     6 months    observed             observed          -1.0916915   -1.1661176   -1.0172654
ResPak           Pakistan       6 months    observed             observed          -1.4314086   -1.6374838   -1.2253335
SAS-CompFeed     India          Birth       observed             observed          -1.4314217   -1.5099245   -1.3529189
SAS-CompFeed     India          6 months    observed             observed          -1.4018563   -1.4810585   -1.3226541
SAS-FoodSuppl    India          6 months    observed             observed          -1.8986842   -2.0118892   -1.7854792
TanzaniaChild2   Tanzania       6 months    observed             observed          -0.5434389   -0.5924056   -0.4944722
ZVITAMBO         Zimbabwe       Birth       observed             observed          -0.5002724   -0.5208163   -0.4797285
ZVITAMBO         Zimbabwe       6 months    observed             observed          -0.8679450   -0.8935071   -0.8423828
ZVITAMBO         Zimbabwe       24 months   observed             observed          -1.8369146   -1.9746779   -1.6991513


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed           0.0200247   -0.3340003    0.3740497
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.1356095   -0.3674814    0.0962623
CMC-V-BCS-2002   India          24 months   optimal              observed           0.0445154   -0.1698458    0.2588766
CMIN             Bangladesh     Birth       optimal              observed           0.2901775   -0.5855162    1.1658712
CMIN             Bangladesh     6 months    optimal              observed          -0.3960590   -0.6046719   -0.1874461
CMIN             Bangladesh     24 months   optimal              observed          -0.2615974   -0.5040203   -0.0191744
CONTENT          Peru           6 months    optimal              observed           0.2039806   -0.1402382    0.5481994
CONTENT          Peru           24 months   optimal              observed          -0.0997482   -0.4511696    0.2516731
Guatemala BSC    Guatemala      6 months    optimal              observed           0.2556634    0.0696137    0.4417131
IRC              India          Birth       optimal              observed          -0.4504822   -0.8234279   -0.0775364
IRC              India          6 months    optimal              observed          -0.3123357   -0.5272834   -0.0973881
IRC              India          24 months   optimal              observed          -0.0808599   -0.2504848    0.0887651
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.1394895   -0.1723206   -0.1066584
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0437808   -0.0786000   -0.0089617
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2329739   -0.3651075   -0.1008403
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.1062827   -0.1839189   -0.0286465
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.2289874   -0.4178556   -0.0401193
Keneba           Gambia         Birth       optimal              observed          -0.1087834   -0.2159021   -0.0016648
Keneba           Gambia         6 months    optimal              observed          -0.0785422   -0.1563808   -0.0007036
Keneba           Gambia         24 months   optimal              observed          -0.0943393   -0.2336155    0.0449368
LCNI-5           Malawi         6 months    optimal              observed           0.1112301   -0.0138222    0.2362824
LCNI-5           Malawi         24 months   optimal              observed          -0.2537416   -0.4682311   -0.0392520
MAL-ED           Bangladesh     Birth       optimal              observed           0.1845513   -0.0586776    0.4277801
MAL-ED           Bangladesh     6 months    optimal              observed           0.0848199   -0.1012170    0.2708569
MAL-ED           Bangladesh     24 months   optimal              observed           0.0024540   -0.2254033    0.2303114
MAL-ED           Brazil         Birth       optimal              observed           0.1172093   -0.3983034    0.6327220
MAL-ED           Brazil         6 months    optimal              observed          -0.0483600   -0.2905414    0.1938214
MAL-ED           Brazil         24 months   optimal              observed           0.1940205   -0.2223491    0.6103901
MAL-ED           India          Birth       optimal              observed          -0.4834638   -0.9835812    0.0166535
MAL-ED           India          6 months    optimal              observed           0.0701916   -0.1420202    0.2824034
MAL-ED           India          24 months   optimal              observed           0.0676254   -0.1837670    0.3190178
MAL-ED           Nepal          Birth       optimal              observed           0.5610475   -0.1349854    1.2570804
MAL-ED           Nepal          6 months    optimal              observed          -0.1698431   -0.3632288    0.0235427
MAL-ED           Nepal          24 months   optimal              observed          -0.2577492   -0.5317647    0.0162663
MAL-ED           Peru           Birth       optimal              observed          -0.2212514   -0.4500943    0.0075916
MAL-ED           Peru           6 months    optimal              observed          -0.1912093   -0.4032810    0.0208623
MAL-ED           Peru           24 months   optimal              observed          -0.1441781   -0.3430483    0.0546922
MAL-ED           South Africa   Birth       optimal              observed          -0.0227080   -0.3677747    0.3223587
MAL-ED           South Africa   6 months    optimal              observed          -0.3619823   -0.6362010   -0.0877636
MAL-ED           South Africa   24 months   optimal              observed          -0.4721396   -0.8028153   -0.1414639
MAL-ED           Tanzania       Birth       optimal              observed          -0.0223369   -0.3935071    0.3488333
MAL-ED           Tanzania       6 months    optimal              observed          -0.2194028   -0.4516894    0.0128838
MAL-ED           Tanzania       24 months   optimal              observed           0.1226931   -0.1285640    0.3739502
PROBIT           Belarus        Birth       optimal              observed          -0.0478216   -0.0921015   -0.0035417
PROBIT           Belarus        6 months    optimal              observed          -0.0820125   -0.1364169   -0.0276080
PROBIT           Belarus        24 months   optimal              observed          -0.2855351   -0.5775511    0.0064809
PROVIDE          Bangladesh     Birth       optimal              observed          -0.0549547   -0.1809057    0.0709963
PROVIDE          Bangladesh     6 months    optimal              observed          -0.2239503   -0.3777325   -0.0701680
ResPak           Pakistan       6 months    optimal              observed           0.0566297   -0.8047490    0.9180084
SAS-CompFeed     India          Birth       optimal              observed          -0.1176351   -0.2284260   -0.0068443
SAS-CompFeed     India          6 months    optimal              observed          -0.0932710   -0.2112977    0.0247558
SAS-FoodSuppl    India          6 months    optimal              observed          -0.0924267   -0.2240698    0.0392164
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1934545   -0.2815142   -0.1053948
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1352571   -0.1683242   -0.1021900
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0727441   -0.1163853   -0.0291028
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.0007676   -0.4532835    0.4517483

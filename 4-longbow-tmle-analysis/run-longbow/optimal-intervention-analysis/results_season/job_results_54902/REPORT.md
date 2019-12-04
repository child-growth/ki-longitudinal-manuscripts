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
PROVIDE          Bangladesh     Birth                    1      139     539
PROVIDE          Bangladesh     Birth                    2      201     539
PROVIDE          Bangladesh     Birth                    3      102     539
PROVIDE          Bangladesh     Birth                    4       97     539
PROVIDE          Bangladesh     6 months                 1      122     604
PROVIDE          Bangladesh     6 months                 2      100     604
PROVIDE          Bangladesh     6 months                 3      211     604
PROVIDE          Bangladesh     6 months                 4      171     604
PROVIDE          Bangladesh     24 months                1       13      40
PROVIDE          Bangladesh     24 months                2       19      40
PROVIDE          Bangladesh     24 months                3        4      40
PROVIDE          Bangladesh     24 months                4        4      40
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
![](/tmp/b002adb6-6b6f-41fa-918a-81bf53643ccd/cb4ce14b-79fe-4df7-ae2e-83cdb388e99f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -1.0916300   -1.5195698   -0.6636901
CMC-V-BCS-2002   India          6 months    optimal              observed          -1.4141077   -1.6871387   -1.1410767
CMC-V-BCS-2002   India          24 months   optimal              observed          -2.6856936   -2.9285760   -2.4428112
CMIN             Bangladesh     Birth       optimal              observed          -2.3965174   -3.4563683   -1.3366664
CMIN             Bangladesh     6 months    optimal              observed          -1.3857082   -1.6013262   -1.1700903
CMIN             Bangladesh     24 months   optimal              observed          -2.2966451   -2.5852398   -2.0080505
CONTENT          Peru           6 months    optimal              observed          -0.2309975   -0.7005123    0.2385174
CONTENT          Peru           24 months   optimal              observed          -0.5748075   -0.9623697   -0.1872454
Guatemala BSC    Guatemala      6 months    optimal              observed          -1.8025272   -1.9788140   -1.6262404
IRC              India          Birth       optimal              observed           0.1291667   -0.3092709    0.5676044
IRC              India          6 months    optimal              observed          -0.9233461   -1.1824977   -0.6641946
IRC              India          24 months   optimal              observed          -1.7363212   -1.9249528   -1.5476897
JiVitA-3         Bangladesh     Birth       optimal              observed          -1.4500283   -1.4876148   -1.4124418
JiVitA-3         Bangladesh     6 months    optimal              observed          -1.2694846   -1.3124730   -1.2264962
JiVitA-4         Bangladesh     Birth       optimal              observed          -1.2891525   -1.4228953   -1.1554097
JiVitA-4         Bangladesh     6 months    optimal              observed          -1.2383888   -1.3201665   -1.1566110
JiVitA-4         Bangladesh     24 months   optimal              observed          -1.7123938   -1.9162783   -1.5085092
Keneba           Gambia         Birth       optimal              observed           0.1372922    0.0158699    0.2587144
Keneba           Gambia         6 months    optimal              observed          -0.8714149   -0.9620403   -0.7807894
Keneba           Gambia         24 months   optimal              observed          -1.5616236   -1.7218712   -1.4013761
LCNI-5           Malawi         6 months    optimal              observed          -1.8078422   -1.9629329   -1.6527515
LCNI-5           Malawi         24 months   optimal              observed          -1.8030623   -2.0393221   -1.5668025
MAL-ED           Bangladesh     Birth       optimal              observed          -1.3451259   -1.6254043   -1.0648475
MAL-ED           Bangladesh     6 months    optimal              observed          -1.3825117   -1.6284596   -1.1365637
MAL-ED           Bangladesh     24 months   optimal              observed          -1.8516770   -2.1033590   -1.5999951
MAL-ED           Brazil         Birth       optimal              observed          -0.8909925   -1.5155466   -0.2664383
MAL-ED           Brazil         6 months    optimal              observed           0.2944034    0.0209790    0.5678278
MAL-ED           Brazil         24 months   optimal              observed          -0.2027103   -0.6227876    0.2173670
MAL-ED           India          Birth       optimal              observed          -0.7386748   -1.2472378   -0.2301118
MAL-ED           India          6 months    optimal              observed          -1.2152574   -1.4111099   -1.0194049
MAL-ED           India          24 months   optimal              observed          -2.0291608   -2.2758615   -1.7824602
MAL-ED           Nepal          Birth       optimal              observed          -0.8864650   -1.5981312   -0.1747989
MAL-ED           Nepal          6 months    optimal              observed          -0.5348087   -0.7621742   -0.3074433
MAL-ED           Nepal          24 months   optimal              observed          -1.0773505   -1.3663937   -0.7883073
MAL-ED           Peru           Birth       optimal              observed          -0.6617961   -0.9216245   -0.4019678
MAL-ED           Peru           6 months    optimal              observed          -1.1495373   -1.3875049   -0.9115696
MAL-ED           Peru           24 months   optimal              observed          -1.6943741   -1.9010998   -1.4876483
MAL-ED           South Africa   Birth       optimal              observed          -0.3728911   -0.7919314    0.0461493
MAL-ED           South Africa   6 months    optimal              observed          -0.7297567   -1.0147052   -0.4448081
MAL-ED           South Africa   24 months   optimal              observed          -1.2689513   -1.6312564   -0.9066462
MAL-ED           Tanzania       Birth       optimal              observed          -0.8484674   -1.2354549   -0.4614799
MAL-ED           Tanzania       6 months    optimal              observed          -1.1662089   -1.4251271   -0.9072907
MAL-ED           Tanzania       24 months   optimal              observed          -2.7402262   -3.0531217   -2.4273307
PROBIT           Belarus        Birth       optimal              observed           1.3768311    1.2078710    1.5457912
PROBIT           Belarus        6 months    optimal              observed           0.1889879    0.0811306    0.2968452
PROBIT           Belarus        24 months   optimal              observed           0.0530883   -0.1360938    0.2422704
PROVIDE          Bangladesh     Birth       optimal              observed          -0.8643516   -1.0085157   -0.7201876
PROVIDE          Bangladesh     6 months    optimal              observed          -0.8704277   -1.0451022   -0.6957533
ResPak           Pakistan       6 months    optimal              observed          -1.4644412   -2.2396330   -0.6892494
SAS-CompFeed     India          Birth       optimal              observed          -1.3137866   -1.4624821   -1.1650912
SAS-CompFeed     India          6 months    optimal              observed          -1.3085853   -1.4410899   -1.1760808
SAS-FoodSuppl    India          6 months    optimal              observed          -1.8068822   -1.9773983   -1.6363661
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.3493113   -0.4536332   -0.2449894
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3649692   -0.4030818   -0.3268565
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.7947033   -0.8457095   -0.7436972
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -1.8901130   -2.3220909   -1.4581352


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
CMC-V-BCS-2002   India          Birth       optimal              observed           0.1304343   -0.2159533    0.4768219
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.0093431   -0.2425512    0.2238651
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.0070542   -0.2249845    0.2108762
CMIN             Bangladesh     Birth       optimal              observed           0.5153635   -0.5349139    1.5656409
CMIN             Bangladesh     6 months    optimal              observed          -0.3987293   -0.6047092   -0.1927495
CMIN             Bangladesh     24 months   optimal              observed          -0.2597165   -0.5114211   -0.0080119
CONTENT          Peru           6 months    optimal              observed          -0.0829242   -0.5141977    0.3483493
CONTENT          Peru           24 months   optimal              observed          -0.1214120   -0.4647598    0.2219358
Guatemala BSC    Guatemala      6 months    optimal              observed           0.2406264    0.0742805    0.4069724
IRC              India          Birth       optimal              observed          -0.4372080   -0.8165435   -0.0578724
IRC              India          6 months    optimal              observed          -0.3110601   -0.5238619   -0.0982583
IRC              India          24 months   optimal              observed          -0.1423963   -0.2968111    0.0120184
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.1393865   -0.1722067   -0.1065664
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0436086   -0.0783932   -0.0088240
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2341383   -0.3660203   -0.1022563
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.1064053   -0.1841073   -0.0287032
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.2204006   -0.4122646   -0.0285365
Keneba           Gambia         Birth       optimal              observed          -0.1064885   -0.2143882    0.0014111
Keneba           Gambia         6 months    optimal              observed          -0.0322226   -0.1098736    0.0454284
Keneba           Gambia         24 months   optimal              observed          -0.0938709   -0.2326956    0.0449537
LCNI-5           Malawi         6 months    optimal              observed           0.1476515    0.0081495    0.2871535
LCNI-5           Malawi         24 months   optimal              observed          -0.2428489   -0.4569066   -0.0287912
MAL-ED           Bangladesh     Birth       optimal              observed           0.2270307   -0.0145921    0.4686535
MAL-ED           Bangladesh     6 months    optimal              observed           0.1775186   -0.0284218    0.3834589
MAL-ED           Bangladesh     24 months   optimal              observed          -0.1686438   -0.3890202    0.0517326
MAL-ED           Brazil         Birth       optimal              observed           0.2149925   -0.3502644    0.7802494
MAL-ED           Brazil         6 months    optimal              observed          -0.2468277   -0.4729480   -0.0207073
MAL-ED           Brazil         24 months   optimal              observed           0.1363630   -0.2329537    0.5056796
MAL-ED           India          Birth       optimal              observed          -0.4649423   -0.9688352    0.0389507
MAL-ED           India          6 months    optimal              observed           0.0037320   -0.1843187    0.1917827
MAL-ED           India          24 months   optimal              observed           0.0953737   -0.1278077    0.3185551
MAL-ED           Nepal          Birth       optimal              observed           0.0331317   -0.6512251    0.7174885
MAL-ED           Nepal          6 months    optimal              observed          -0.0267732   -0.2255504    0.1720040
MAL-ED           Nepal          24 months   optimal              observed          -0.2565745   -0.5224336    0.0092846
MAL-ED           Peru           Birth       optimal              observed          -0.2209936   -0.4528262    0.0108391
MAL-ED           Peru           6 months    optimal              observed          -0.1741288   -0.3835392    0.0352817
MAL-ED           Peru           24 months   optimal              observed          -0.1241184   -0.3198972    0.0716604
MAL-ED           South Africa   Birth       optimal              observed          -0.2588163   -0.5743380    0.0567055
MAL-ED           South Africa   6 months    optimal              observed          -0.3335636   -0.5957536   -0.0713735
MAL-ED           South Africa   24 months   optimal              observed          -0.4396940   -0.7758682   -0.1035198
MAL-ED           Tanzania       Birth       optimal              observed          -0.3071326   -0.6457191    0.0314538
MAL-ED           Tanzania       6 months    optimal              observed          -0.2025360   -0.4346319    0.0295599
MAL-ED           Tanzania       24 months   optimal              observed           0.0422754   -0.2220874    0.3066382
PROBIT           Belarus        Birth       optimal              observed          -0.0498865   -0.0940788   -0.0056943
PROBIT           Belarus        6 months    optimal              observed          -0.0821342   -0.1366614   -0.0276071
PROBIT           Belarus        24 months   optimal              observed          -0.2813032   -0.5724586    0.0098522
PROVIDE          Bangladesh     Birth       optimal              observed          -0.0207504   -0.1493628    0.1078620
PROVIDE          Bangladesh     6 months    optimal              observed          -0.2212638   -0.3760842   -0.0664434
ResPak           Pakistan       6 months    optimal              observed           0.0330325   -0.7414362    0.8075013
SAS-CompFeed     India          Birth       optimal              observed          -0.1176351   -0.2284260   -0.0068443
SAS-CompFeed     India          6 months    optimal              observed          -0.0932710   -0.2112977    0.0247558
SAS-FoodSuppl    India          6 months    optimal              observed          -0.0918020   -0.2247277    0.0411237
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1941276   -0.2822183   -0.1060369
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1353033   -0.1683715   -0.1022350
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0732416   -0.1168793   -0.0296040
ZVITAMBO         Zimbabwe       24 months   optimal              observed           0.0531985   -0.3468369    0.4532339

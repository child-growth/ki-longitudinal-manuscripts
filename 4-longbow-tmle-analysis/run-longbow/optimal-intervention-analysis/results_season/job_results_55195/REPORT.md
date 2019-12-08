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
![](/tmp/961f377c-5296-46d1-9891-487acbef2f05/7cbfda4d-52af-4cb1-9690-23e871de2dc7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -1.1807429   -1.6854642   -0.6760216
CMC-V-BCS-2002   India          6 months    optimal              observed          -1.4438955   -1.7190389   -1.1687521
CMC-V-BCS-2002   India          24 months   optimal              observed          -2.9454587   -3.1702222   -2.7206953
CMIN             Bangladesh     Birth       optimal              observed          -2.3878922   -3.4056039   -1.3701805
CMIN             Bangladesh     6 months    optimal              observed          -1.3754640   -1.5913481   -1.1595799
CMIN             Bangladesh     24 months   optimal              observed          -2.2907038   -2.5708532   -2.0105543
CONTENT          Peru           6 months    optimal              observed          -0.5199504   -0.8467181   -0.1931828
CONTENT          Peru           24 months   optimal              observed          -0.8058410   -1.1051974   -0.5064846
Guatemala BSC    Guatemala      6 months    optimal              observed          -1.6866321   -1.9019833   -1.4712809
IRC              India          Birth       optimal              observed           0.1282878   -0.3057295    0.5623050
IRC              India          6 months    optimal              observed          -0.9133034   -1.1751040   -0.6515028
IRC              India          24 months   optimal              observed          -1.8164047   -2.0154583   -1.6173511
JiVitA-3         Bangladesh     Birth       optimal              observed          -1.4497757   -1.4873645   -1.4121869
JiVitA-3         Bangladesh     6 months    optimal              observed          -1.2692358   -1.3122316   -1.2262400
JiVitA-4         Bangladesh     Birth       optimal              observed          -1.2851657   -1.4183105   -1.1520209
JiVitA-4         Bangladesh     6 months    optimal              observed          -1.2372172   -1.3188347   -1.1555997
JiVitA-4         Bangladesh     24 months   optimal              observed          -1.7093704   -1.9109332   -1.5078076
Keneba           Gambia         Birth       optimal              observed           0.1395677    0.0187142    0.2604211
Keneba           Gambia         6 months    optimal              observed          -0.8238216   -0.9144918   -0.7331514
Keneba           Gambia         24 months   optimal              observed          -1.6579279   -1.8237155   -1.4921403
LCNI-5           Malawi         6 months    optimal              observed          -1.7956327   -1.9660979   -1.6251675
LCNI-5           Malawi         24 months   optimal              observed          -1.7995081   -2.0378797   -1.5611364
MAL-ED           Bangladesh     Birth       optimal              observed          -1.2589098   -1.5521675   -0.9656522
MAL-ED           Bangladesh     6 months    optimal              observed          -1.3159152   -1.5606595   -1.0711709
MAL-ED           Bangladesh     24 months   optimal              observed          -1.8446110   -2.0985106   -1.5907113
MAL-ED           Brazil         Birth       optimal              observed          -1.0613051   -1.6565532   -0.4660570
MAL-ED           Brazil         6 months    optimal              observed           0.1877668   -0.0920255    0.4675590
MAL-ED           Brazil         24 months   optimal              observed          -0.1668607   -0.6069229    0.2732015
MAL-ED           India          Birth       optimal              observed          -0.6722138   -1.1236813   -0.2207464
MAL-ED           India          6 months    optimal              observed          -1.3915468   -1.6212977   -1.1617960
MAL-ED           India          24 months   optimal              observed          -2.1940758   -2.4151622   -1.9729895
MAL-ED           Nepal          Birth       optimal              observed          -0.7437303   -1.7280501    0.2405894
MAL-ED           Nepal          6 months    optimal              observed          -0.3857899   -0.6085216   -0.1630582
MAL-ED           Nepal          24 months   optimal              observed          -1.0584643   -1.3436485   -0.7732801
MAL-ED           Peru           Birth       optimal              observed          -0.6832721   -0.9451379   -0.4214063
MAL-ED           Peru           6 months    optimal              observed          -1.1432211   -1.3815970   -0.9048453
MAL-ED           Peru           24 months   optimal              observed          -1.6797054   -1.8887671   -1.4706438
MAL-ED           South Africa   Birth       optimal              observed          -0.6708642   -1.1377053   -0.2040232
MAL-ED           South Africa   6 months    optimal              observed          -0.7118328   -1.0010885   -0.4225770
MAL-ED           South Africa   24 months   optimal              observed          -1.2146690   -1.5733933   -0.8559447
MAL-ED           Tanzania       Birth       optimal              observed          -0.8971601   -1.2846673   -0.5096528
MAL-ED           Tanzania       6 months    optimal              observed          -1.1778880   -1.4367299   -0.9190460
MAL-ED           Tanzania       24 months   optimal              observed          -2.8004932   -3.0642000   -2.5367864
PROBIT           Belarus        Birth       optimal              observed           1.3781617    1.2091645    1.5471589
PROBIT           Belarus        6 months    optimal              observed           0.1895176    0.0816672    0.2973679
PROBIT           Belarus        24 months   optimal              observed           0.0515435   -0.1370432    0.2401303
PROVIDE          Bangladesh     Birth       optimal              observed          -0.8165691   -0.9660311   -0.6671071
PROVIDE          Bangladesh     6 months    optimal              observed          -0.8740587   -1.0486478   -0.6994696
ResPak           Pakistan       6 months    optimal              observed          -1.4893054   -2.2265008   -0.7521100
SAS-CompFeed     India          Birth       optimal              observed          -1.3137866   -1.4624821   -1.1650912
SAS-CompFeed     India          6 months    optimal              observed          -1.3085853   -1.4410899   -1.1760808
SAS-FoodSuppl    India          6 months    optimal              observed          -1.9176571   -2.1333220   -1.7019921
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.3489986   -0.4531859   -0.2448114
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3650091   -0.4031096   -0.3269086
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.7951043   -0.8461189   -0.7440897
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -1.8379748   -2.2675195   -1.4084301


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
CMC-V-BCS-2002   India          Birth       optimal              observed           0.2195473   -0.1953526    0.6344471
CMC-V-BCS-2002   India          6 months    optimal              observed           0.0204447   -0.2151106    0.2560000
CMC-V-BCS-2002   India          24 months   optimal              observed           0.2527110    0.0504136    0.4550084
CMIN             Bangladesh     Birth       optimal              observed           0.5067384   -0.5090294    1.5225062
CMIN             Bangladesh     6 months    optimal              observed          -0.4089736   -0.6146592   -0.2032880
CMIN             Bangladesh     24 months   optimal              observed          -0.2656578   -0.5097185   -0.0215972
CONTENT          Peru           6 months    optimal              observed           0.2060287   -0.1097841    0.5218416
CONTENT          Peru           24 months   optimal              observed           0.1096215   -0.1783637    0.3976067
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1247313   -0.0647417    0.3142043
IRC              India          Birth       optimal              observed          -0.4363290   -0.8115711   -0.0610869
IRC              India          6 months    optimal              observed          -0.3211028   -0.5363324   -0.1058732
IRC              India          24 months   optimal              observed          -0.0623129   -0.2275452    0.1029194
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.1396391   -0.1724610   -0.1068173
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0438574   -0.0786506   -0.0090642
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2381251   -0.3694055   -0.1068447
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.1075768   -0.1851578   -0.0299959
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.2234240   -0.4131048   -0.0337431
Keneba           Gambia         Birth       optimal              observed          -0.1087640   -0.2161797   -0.0013484
Keneba           Gambia         6 months    optimal              observed          -0.0798159   -0.1575491   -0.0020827
Keneba           Gambia         24 months   optimal              observed           0.0024334   -0.1396732    0.1445399
LCNI-5           Malawi         6 months    optimal              observed           0.1354420   -0.0142488    0.2851328
LCNI-5           Malawi         24 months   optimal              observed          -0.2464032   -0.4620736   -0.0307327
MAL-ED           Bangladesh     Birth       optimal              observed           0.1408146   -0.1097340    0.3913631
MAL-ED           Bangladesh     6 months    optimal              observed           0.1109221   -0.0952779    0.3171222
MAL-ED           Bangladesh     24 months   optimal              observed          -0.1757099   -0.3980488    0.0466290
MAL-ED           Brazil         Birth       optimal              observed           0.3853051   -0.1701224    0.9407325
MAL-ED           Brazil         6 months    optimal              observed          -0.1401910   -0.3713281    0.0909460
MAL-ED           Brazil         24 months   optimal              observed           0.1005134   -0.2844944    0.4855213
MAL-ED           India          Birth       optimal              observed          -0.5314032   -0.9910850   -0.0717214
MAL-ED           India          6 months    optimal              observed           0.1800214   -0.0272527    0.3872956
MAL-ED           India          24 months   optimal              observed           0.2602887    0.0525516    0.4680258
MAL-ED           Nepal          Birth       optimal              observed          -0.1096030   -1.0238672    0.8046612
MAL-ED           Nepal          6 months    optimal              observed          -0.1757921   -0.3703841    0.0187999
MAL-ED           Nepal          24 months   optimal              observed          -0.2754607   -0.5375641   -0.0133574
MAL-ED           Peru           Birth       optimal              observed          -0.1995176   -0.4333708    0.0343356
MAL-ED           Peru           6 months    optimal              observed          -0.1804449   -0.3903847    0.0294949
MAL-ED           Peru           24 months   optimal              observed          -0.1387870   -0.3366595    0.0590855
MAL-ED           South Africa   Birth       optimal              observed           0.0391569   -0.3248245    0.4031383
MAL-ED           South Africa   6 months    optimal              observed          -0.3514874   -0.6175962   -0.0853787
MAL-ED           South Africa   24 months   optimal              observed          -0.4939763   -0.8268519   -0.1611008
MAL-ED           Tanzania       Birth       optimal              observed          -0.2584399   -0.5973778    0.0804979
MAL-ED           Tanzania       6 months    optimal              observed          -0.1908570   -0.4229779    0.0412639
MAL-ED           Tanzania       24 months   optimal              observed           0.1025424   -0.1346426    0.3397274
PROBIT           Belarus        Birth       optimal              observed          -0.0512172   -0.0956701   -0.0067643
PROBIT           Belarus        6 months    optimal              observed          -0.0826639   -0.1371323   -0.0281956
PROBIT           Belarus        24 months   optimal              observed          -0.2797584   -0.5694159    0.0098991
PROVIDE          Bangladesh     Birth       optimal              observed          -0.0685329   -0.1993417    0.0622758
PROVIDE          Bangladesh     6 months    optimal              observed          -0.2176328   -0.3723540   -0.0629116
ResPak           Pakistan       6 months    optimal              observed           0.0578968   -0.6835914    0.7993850
SAS-CompFeed     India          Birth       optimal              observed          -0.1176351   -0.2284260   -0.0068443
SAS-CompFeed     India          6 months    optimal              observed          -0.0932710   -0.2112977    0.0247558
SAS-FoodSuppl    India          6 months    optimal              observed           0.0189729   -0.1529007    0.1908464
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1944402   -0.2824029   -0.1064776
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1352633   -0.1683213   -0.1022054
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0728407   -0.1164847   -0.0291966
ZVITAMBO         Zimbabwe       24 months   optimal              observed           0.0010603   -0.3971309    0.3992514

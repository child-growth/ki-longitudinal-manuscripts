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
CMC-V-BCS-2002   India          Birth                    1       17      86
CMC-V-BCS-2002   India          Birth                    2       22      86
CMC-V-BCS-2002   India          Birth                    3       28      86
CMC-V-BCS-2002   India          Birth                    4       19      86
CMC-V-BCS-2002   India          6 months                 1      102     368
CMC-V-BCS-2002   India          6 months                 2      109     368
CMC-V-BCS-2002   India          6 months                 3       97     368
CMC-V-BCS-2002   India          6 months                 4       60     368
CMC-V-BCS-2002   India          24 months                1       87     334
CMC-V-BCS-2002   India          24 months                2       90     334
CMC-V-BCS-2002   India          24 months                3       95     334
CMC-V-BCS-2002   India          24 months                4       62     334
CMIN             Bangladesh     Birth                    1        4      19
CMIN             Bangladesh     Birth                    2        5      19
CMIN             Bangladesh     Birth                    3        5      19
CMIN             Bangladesh     Birth                    4        5      19
CMIN             Bangladesh     6 months                 1       50     243
CMIN             Bangladesh     6 months                 2       62     243
CMIN             Bangladesh     6 months                 3       70     243
CMIN             Bangladesh     6 months                 4       61     243
CMIN             Bangladesh     24 months                1       73     225
CMIN             Bangladesh     24 months                2       64     225
CMIN             Bangladesh     24 months                3       52     225
CMIN             Bangladesh     24 months                4       36     225
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
EE               Pakistan       Birth                    1       92     177
EE               Pakistan       Birth                    2       77     177
EE               Pakistan       Birth                    3        8     177
EE               Pakistan       Birth                    4        0     177
EE               Pakistan       6 months                 1        0     375
EE               Pakistan       6 months                 2       34     375
EE               Pakistan       6 months                 3      168     375
EE               Pakistan       6 months                 4      173     375
EE               Pakistan       24 months                1        7     159
EE               Pakistan       24 months                2      152     159
EE               Pakistan       24 months                3        0     159
EE               Pakistan       24 months                4        0     159
GMS-Nepal        Nepal          Birth                    1        0     641
GMS-Nepal        Nepal          Birth                    2        0     641
GMS-Nepal        Nepal          Birth                    3      152     641
GMS-Nepal        Nepal          Birth                    4      489     641
GMS-Nepal        Nepal          6 months                 1      502     564
GMS-Nepal        Nepal          6 months                 2       62     564
GMS-Nepal        Nepal          6 months                 3        0     564
GMS-Nepal        Nepal          6 months                 4        0     564
GMS-Nepal        Nepal          24 months                1        0     322
GMS-Nepal        Nepal          24 months                2        0     322
GMS-Nepal        Nepal          24 months                3       34     322
GMS-Nepal        Nepal          24 months                4      288     322
Guatemala BSC    Guatemala      6 months                 1       60     299
Guatemala BSC    Guatemala      6 months                 2       80     299
Guatemala BSC    Guatemala      6 months                 3       87     299
Guatemala BSC    Guatemala      6 months                 4       72     299
IRC              India          Birth                    1       78     343
IRC              India          Birth                    2      114     343
IRC              India          Birth                    3       59     343
IRC              India          Birth                    4       92     343
IRC              India          6 months                 1      117     408
IRC              India          6 months                 2       77     408
IRC              India          6 months                 3      129     408
IRC              India          6 months                 4       85     408
IRC              India          24 months                1       87     347
IRC              India          24 months                2      108     347
IRC              India          24 months                3       81     347
IRC              India          24 months                4       71     347
JiVitA-3         Bangladesh     Birth                    1     5117   18013
JiVitA-3         Bangladesh     Birth                    2     5680   18013
JiVitA-3         Bangladesh     Birth                    3     3864   18013
JiVitA-3         Bangladesh     Birth                    4     3352   18013
JiVitA-3         Bangladesh     6 months                 1     3710   16784
JiVitA-3         Bangladesh     6 months                 2     3580   16784
JiVitA-3         Bangladesh     6 months                 3     5224   16784
JiVitA-3         Bangladesh     6 months                 4     4270   16784
JiVitA-3         Bangladesh     24 months                1        0       3
JiVitA-3         Bangladesh     24 months                2        0       3
JiVitA-3         Bangladesh     24 months                3        0       3
JiVitA-3         Bangladesh     24 months                4        3       3
JiVitA-4         Bangladesh     Birth                    1      277    2396
JiVitA-4         Bangladesh     Birth                    2      195    2396
JiVitA-4         Bangladesh     Birth                    3     1088    2396
JiVitA-4         Bangladesh     Birth                    4      836    2396
JiVitA-4         Bangladesh     6 months                 1     1470    4833
JiVitA-4         Bangladesh     6 months                 2     2616    4833
JiVitA-4         Bangladesh     6 months                 3      628    4833
JiVitA-4         Bangladesh     6 months                 4      119    4833
JiVitA-4         Bangladesh     24 months                1      201    1268
JiVitA-4         Bangladesh     24 months                2      130    1268
JiVitA-4         Bangladesh     24 months                3      518    1268
JiVitA-4         Bangladesh     24 months                4      419    1268
Keneba           Gambia         Birth                    1      426    1466
Keneba           Gambia         Birth                    2      401    1466
Keneba           Gambia         Birth                    3      364    1466
Keneba           Gambia         Birth                    4      275    1466
Keneba           Gambia         6 months                 1      464    2089
Keneba           Gambia         6 months                 2      459    2089
Keneba           Gambia         6 months                 3      607    2089
Keneba           Gambia         6 months                 4      559    2089
Keneba           Gambia         24 months                1      178     707
Keneba           Gambia         24 months                2      215     707
Keneba           Gambia         24 months                3      130     707
Keneba           Gambia         24 months                4      184     707
LCNI-5           Malawi         6 months                 1      204     839
LCNI-5           Malawi         6 months                 2      319     839
LCNI-5           Malawi         6 months                 3      113     839
LCNI-5           Malawi         6 months                 4      203     839
LCNI-5           Malawi         24 months                1       50     208
LCNI-5           Malawi         24 months                2       14     208
LCNI-5           Malawi         24 months                3      100     208
LCNI-5           Malawi         24 months                4       44     208
MAL-ED           Bangladesh     Birth                    1       64     215
MAL-ED           Bangladesh     Birth                    2       48     215
MAL-ED           Bangladesh     Birth                    3       61     215
MAL-ED           Bangladesh     Birth                    4       42     215
MAL-ED           Bangladesh     6 months                 1       55     241
MAL-ED           Bangladesh     6 months                 2       72     241
MAL-ED           Bangladesh     6 months                 3       60     241
MAL-ED           Bangladesh     6 months                 4       54     241
MAL-ED           Bangladesh     24 months                1       49     187
MAL-ED           Bangladesh     24 months                2       51     187
MAL-ED           Bangladesh     24 months                3       43     187
MAL-ED           Bangladesh     24 months                4       44     187
MAL-ED           Brazil         Birth                    1       17      62
MAL-ED           Brazil         Birth                    2       11      62
MAL-ED           Brazil         Birth                    3       12      62
MAL-ED           Brazil         Birth                    4       22      62
MAL-ED           Brazil         6 months                 1       64     209
MAL-ED           Brazil         6 months                 2       51     209
MAL-ED           Brazil         6 months                 3       44     209
MAL-ED           Brazil         6 months                 4       50     209
MAL-ED           Brazil         24 months                1       54     167
MAL-ED           Brazil         24 months                2       32     167
MAL-ED           Brazil         24 months                3       43     167
MAL-ED           Brazil         24 months                4       38     167
MAL-ED           India          Birth                    1       10      45
MAL-ED           India          Birth                    2       10      45
MAL-ED           India          Birth                    3       11      45
MAL-ED           India          Birth                    4       14      45
MAL-ED           India          6 months                 1       66     236
MAL-ED           India          6 months                 2       42     236
MAL-ED           India          6 months                 3       73     236
MAL-ED           India          6 months                 4       55     236
MAL-ED           India          24 months                1       51     202
MAL-ED           India          24 months                2       55     202
MAL-ED           India          24 months                3       48     202
MAL-ED           India          24 months                4       48     202
MAL-ED           Nepal          Birth                    1        5      26
MAL-ED           Nepal          Birth                    2        9      26
MAL-ED           Nepal          Birth                    3        7      26
MAL-ED           Nepal          Birth                    4        5      26
MAL-ED           Nepal          6 months                 1       60     236
MAL-ED           Nepal          6 months                 2       59     236
MAL-ED           Nepal          6 months                 3       59     236
MAL-ED           Nepal          6 months                 4       58     236
MAL-ED           Nepal          24 months                1       51     200
MAL-ED           Nepal          24 months                2       56     200
MAL-ED           Nepal          24 months                3       55     200
MAL-ED           Nepal          24 months                4       38     200
MAL-ED           Peru           Birth                    1       49     228
MAL-ED           Peru           Birth                    2       52     228
MAL-ED           Peru           Birth                    3       69     228
MAL-ED           Peru           Birth                    4       58     228
MAL-ED           Peru           6 months                 1       96     273
MAL-ED           Peru           6 months                 2       77     273
MAL-ED           Peru           6 months                 3       60     273
MAL-ED           Peru           6 months                 4       40     273
MAL-ED           Peru           24 months                1       46     199
MAL-ED           Peru           24 months                2       42     199
MAL-ED           Peru           24 months                3       51     199
MAL-ED           Peru           24 months                4       60     199
MAL-ED           South Africa   Birth                    1       25     120
MAL-ED           South Africa   Birth                    2       22     120
MAL-ED           South Africa   Birth                    3       35     120
MAL-ED           South Africa   Birth                    4       38     120
MAL-ED           South Africa   6 months                 1      106     254
MAL-ED           South Africa   6 months                 2       67     254
MAL-ED           South Africa   6 months                 3       45     254
MAL-ED           South Africa   6 months                 4       36     254
MAL-ED           South Africa   24 months                1       45     202
MAL-ED           South Africa   24 months                2       31     202
MAL-ED           South Africa   24 months                3       72     202
MAL-ED           South Africa   24 months                4       54     202
MAL-ED           Tanzania       Birth                    1       14     115
MAL-ED           Tanzania       Birth                    2       33     115
MAL-ED           Tanzania       Birth                    3       32     115
MAL-ED           Tanzania       Birth                    4       36     115
MAL-ED           Tanzania       6 months                 1       71     247
MAL-ED           Tanzania       6 months                 2       80     247
MAL-ED           Tanzania       6 months                 3       53     247
MAL-ED           Tanzania       6 months                 4       43     247
MAL-ED           Tanzania       24 months                1       47     183
MAL-ED           Tanzania       24 months                2       50     183
MAL-ED           Tanzania       24 months                3       48     183
MAL-ED           Tanzania       24 months                4       38     183
PROBIT           Belarus        Birth                    1     3764   13830
PROBIT           Belarus        Birth                    2     4131   13830
PROBIT           Belarus        Birth                    3     2702   13830
PROBIT           Belarus        Birth                    4     3233   13830
PROBIT           Belarus        6 months                 1     3618   15757
PROBIT           Belarus        6 months                 2     3118   15757
PROBIT           Belarus        6 months                 3     4510   15757
PROBIT           Belarus        6 months                 4     4511   15757
PROBIT           Belarus        24 months                1      306    1148
PROBIT           Belarus        24 months                2      358    1148
PROBIT           Belarus        24 months                3      208    1148
PROBIT           Belarus        24 months                4      276    1148
PROVIDE          Bangladesh     Birth                    1      138     532
PROVIDE          Bangladesh     Birth                    2      195     532
PROVIDE          Bangladesh     Birth                    3      102     532
PROVIDE          Bangladesh     Birth                    4       97     532
PROVIDE          Bangladesh     6 months                 1      122     603
PROVIDE          Bangladesh     6 months                 2      100     603
PROVIDE          Bangladesh     6 months                 3      211     603
PROVIDE          Bangladesh     6 months                 4      170     603
PROVIDE          Bangladesh     24 months                1       14      41
PROVIDE          Bangladesh     24 months                2       19      41
PROVIDE          Bangladesh     24 months                3        4      41
PROVIDE          Bangladesh     24 months                4        4      41
ResPak           Pakistan       Birth                    1        3      38
ResPak           Pakistan       Birth                    2        2      38
ResPak           Pakistan       Birth                    3       14      38
ResPak           Pakistan       Birth                    4       19      38
ResPak           Pakistan       6 months                 1      107     239
ResPak           Pakistan       6 months                 2       98     239
ResPak           Pakistan       6 months                 3        8     239
ResPak           Pakistan       6 months                 4       26     239
SAS-CompFeed     India          Birth                    1      231    1103
SAS-CompFeed     India          Birth                    2      371    1103
SAS-CompFeed     India          Birth                    3      192    1103
SAS-CompFeed     India          Birth                    4      309    1103
SAS-CompFeed     India          6 months                 1      375    1334
SAS-CompFeed     India          6 months                 2      228    1334
SAS-CompFeed     India          6 months                 3      434    1334
SAS-CompFeed     India          6 months                 4      297    1334
SAS-FoodSuppl    India          6 months                 1      160     380
SAS-FoodSuppl    India          6 months                 2       37     380
SAS-FoodSuppl    India          6 months                 3      107     380
SAS-FoodSuppl    India          6 months                 4       76     380
TanzaniaChild2   Tanzania       6 months                 1      516    2028
TanzaniaChild2   Tanzania       6 months                 2      564    2028
TanzaniaChild2   Tanzania       6 months                 3      467    2028
TanzaniaChild2   Tanzania       6 months                 4      481    2028
TanzaniaChild2   Tanzania       24 months                1        0       4
TanzaniaChild2   Tanzania       24 months                2        2       4
TanzaniaChild2   Tanzania       24 months                3        0       4
TanzaniaChild2   Tanzania       24 months                4        2       4
ZVITAMBO         Zimbabwe       Birth                    1     3531   12916
ZVITAMBO         Zimbabwe       Birth                    2     2902   12916
ZVITAMBO         Zimbabwe       Birth                    3     3237   12916
ZVITAMBO         Zimbabwe       Birth                    4     3246   12916
ZVITAMBO         Zimbabwe       6 months                 1     2124    8505
ZVITAMBO         Zimbabwe       6 months                 2     2199    8505
ZVITAMBO         Zimbabwe       6 months                 3     1972    8505
ZVITAMBO         Zimbabwe       6 months                 4     2210    8505
ZVITAMBO         Zimbabwe       24 months                1        8      90
ZVITAMBO         Zimbabwe       24 months                2       22      90
ZVITAMBO         Zimbabwe       24 months                3       21      90
ZVITAMBO         Zimbabwe       24 months                4       39      90


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

* studyid: CMIN, country: Bangladesh, agecat: Birth
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
![](/tmp/d146245e-46c7-4ef5-9060-efe879df8ed0/0c864f08-397a-4495-b780-762e100dd7f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.7260398   -1.4565138    0.0044343
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.1439635   -0.4375753    0.1496484
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.2752389   -0.4893752   -0.0611026
CMIN             Bangladesh     6 months    optimal              observed          -0.1480295   -0.4229528    0.1268938
CMIN             Bangladesh     24 months   optimal              observed          -0.6497795   -0.8949082   -0.4046508
CONTENT          Peru           6 months    optimal              observed           1.1962458    0.9359915    1.4565001
CONTENT          Peru           24 months   optimal              observed           0.3502930    0.0763683    0.6242176
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1270004   -0.0927201    0.3467210
IRC              India          Birth       optimal              observed          -0.5107562   -0.9138731   -0.1076393
IRC              India          6 months    optimal              observed          -0.3689967   -0.6808569   -0.0571365
IRC              India          24 months   optimal              observed          -0.4978039   -0.6887286   -0.3068792
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.6782886   -0.7118312   -0.6447460
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.5163034   -0.5558177   -0.4767892
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.4776623   -0.6110378   -0.3442869
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.3900015   -0.4604735   -0.3195295
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.9435856   -1.1001258   -0.7870454
Keneba           Gambia         Birth       optimal              observed          -1.0666245   -1.1883502   -0.9448988
Keneba           Gambia         6 months    optimal              observed          -0.0658302   -0.1594575    0.0277971
Keneba           Gambia         24 months   optimal              observed          -0.3804507   -0.5180910   -0.2428103
LCNI-5           Malawi         6 months    optimal              observed           0.6184382    0.4322100    0.8046664
LCNI-5           Malawi         24 months   optimal              observed          -0.4010783   -0.6692349   -0.1329216
MAL-ED           Bangladesh     Birth       optimal              observed          -1.0624332   -1.4245838   -0.7002826
MAL-ED           Bangladesh     6 months    optimal              observed          -0.3317601   -0.5605508   -0.1029694
MAL-ED           Bangladesh     24 months   optimal              observed          -0.8141433   -1.0793827   -0.5489040
MAL-ED           Brazil         Birth       optimal              observed           0.6599183    0.1069114    1.2129252
MAL-ED           Brazil         6 months    optimal              observed           0.7387788    0.4293037    1.0482538
MAL-ED           Brazil         24 months   optimal              observed          -0.3517734   -0.6296151   -0.0739317
MAL-ED           India          Birth       optimal              observed          -0.3104917   -0.8081717    0.1871884
MAL-ED           India          6 months    optimal              observed          -0.7043786   -0.9300333   -0.4787238
MAL-ED           India          24 months   optimal              observed          -0.6901226   -0.9216338   -0.4586113
MAL-ED           Nepal          Birth       optimal              observed          -0.2694121   -1.3200639    0.7812397
MAL-ED           Nepal          6 months    optimal              observed          -0.0423302   -0.2885689    0.2039085
MAL-ED           Nepal          24 months   optimal              observed          -0.0633415   -0.2946315    0.1679486
MAL-ED           Peru           Birth       optimal              observed           0.1294313   -0.1133932    0.3722559
MAL-ED           Peru           6 months    optimal              observed           0.8075804    0.5455148    1.0696459
MAL-ED           Peru           24 months   optimal              observed          -0.0320220   -0.2576919    0.1936478
MAL-ED           South Africa   Birth       optimal              observed          -0.2265500   -0.6067933    0.1536932
MAL-ED           South Africa   6 months    optimal              observed           0.7281158    0.3340717    1.1221599
MAL-ED           South Africa   24 months   optimal              observed           0.6549790    0.3655927    0.9443653
MAL-ED           Tanzania       Birth       optimal              observed           0.7767914    0.3851911    1.1683917
MAL-ED           Tanzania       6 months    optimal              observed           0.7824907    0.4580269    1.1069546
MAL-ED           Tanzania       24 months   optimal              observed           0.2936775    0.0632283    0.5241266
PROBIT           Belarus        Birth       optimal              observed          -1.1630897   -1.3996877   -0.9264918
PROBIT           Belarus        6 months    optimal              observed           0.5494531    0.4859876    0.6129186
PROBIT           Belarus        24 months   optimal              observed           0.8214387    0.5504947    1.0923826
PROVIDE          Bangladesh     Birth       optimal              observed          -1.3654901   -1.5414219   -1.1895582
PROVIDE          Bangladesh     6 months    optimal              observed          -0.0739469   -0.2312229    0.0833290
ResPak           Pakistan       6 months    optimal              observed          -0.1572955   -0.6420377    0.3274467
SAS-CompFeed     India          Birth       optimal              observed          -0.2940026   -0.4025280   -0.1854773
SAS-CompFeed     India          6 months    optimal              observed          -0.3218190   -0.5152154   -0.1284226
SAS-FoodSuppl    India          6 months    optimal              observed          -0.8134683   -1.2643174   -0.3626192
TanzaniaChild2   Tanzania       6 months    optimal              observed           0.2262722    0.1175690    0.3349755
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3542701   -0.4061747   -0.3023656
ZVITAMBO         Zimbabwe       6 months    optimal              observed           0.3762406    0.3234024    0.4290787
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.6279715   -1.0612740   -0.1946690


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       observed             observed          -0.4648256   -0.7643210   -0.1653302
CMC-V-BCS-2002   India          6 months    observed             observed          -0.5026766   -0.6536848   -0.3516685
CMC-V-BCS-2002   India          24 months   observed             observed          -0.4918563   -0.5993711   -0.3843415
CMIN             Bangladesh     6 months    observed             observed          -0.5780453   -0.7226627   -0.4334279
CMIN             Bangladesh     24 months   observed             observed          -0.8828667   -0.9954180   -0.7703153
CONTENT          Peru           6 months    observed             observed           1.0684318    0.9515274    1.1853362
CONTENT          Peru           24 months   observed             observed           0.5668293    0.4302437    0.7034148
Guatemala BSC    Guatemala      6 months    observed             observed          -0.0840134   -0.1945572    0.0265305
IRC              India          Birth       observed             observed          -1.0105831   -1.1973019   -0.8238643
IRC              India          6 months    observed             observed          -0.5989297   -0.7344491   -0.4634104
IRC              India          24 months   observed             observed          -0.6724063   -0.7718177   -0.5729950
JiVitA-3         Bangladesh     Birth       observed             observed          -0.7775928   -0.7966054   -0.7585803
JiVitA-3         Bangladesh     6 months    observed             observed          -0.5935161   -0.6130518   -0.5739805
JiVitA-4         Bangladesh     Birth       observed             observed          -0.6886269   -0.7410452   -0.6362086
JiVitA-4         Bangladesh     6 months    observed             observed          -0.3898055   -0.4270507   -0.3525603
JiVitA-4         Bangladesh     24 months   observed             observed          -1.1425394   -1.2092463   -1.0758325
Keneba           Gambia         Birth       observed             observed          -1.2349454   -1.2972413   -1.1726496
Keneba           Gambia         6 months    observed             observed          -0.1846038   -0.2354782   -0.1337293
Keneba           Gambia         24 months   observed             observed          -0.6709076   -0.7479171   -0.5938981
LCNI-5           Malawi         6 months    observed             observed           0.4499404    0.3788501    0.5210308
LCNI-5           Malawi         24 months   observed             observed           0.0097837   -0.1272983    0.1468656
MAL-ED           Bangladesh     Birth       observed             observed          -0.9418605   -1.0869834   -0.7967375
MAL-ED           Bangladesh     6 months    observed             observed          -0.1376763   -0.2664642   -0.0088885
MAL-ED           Bangladesh     24 months   observed             observed          -0.7678075   -0.8977960   -0.6378190
MAL-ED           Brazil         Birth       observed             observed           0.4029032    0.0896793    0.7161272
MAL-ED           Brazil         6 months    observed             observed           0.9720774    0.8078144    1.1363403
MAL-ED           Brazil         24 months   observed             observed           0.5807485    0.3680997    0.7933973
MAL-ED           India          Birth       observed             observed          -0.9324444   -1.2067907   -0.6580982
MAL-ED           India          6 months    observed             observed          -0.7047422   -0.8301590   -0.5793255
MAL-ED           India          24 months   observed             observed          -0.8847525   -1.0071803   -0.7623246
MAL-ED           Nepal          Birth       observed             observed          -0.7684615   -1.1257770   -0.4111460
MAL-ED           Nepal          6 months    observed             observed           0.1104308   -0.0208643    0.2417259
MAL-ED           Nepal          24 months   observed             observed          -0.2779250   -0.3991916   -0.1566584
MAL-ED           Peru           Birth       observed             observed          -0.0520175   -0.1725298    0.0684947
MAL-ED           Peru           6 months    observed             observed           1.0528816    0.9313005    1.1744626
MAL-ED           Peru           24 months   observed             observed           0.1542462    0.0295657    0.2789268
MAL-ED           South Africa   Birth       observed             observed          -0.1925833   -0.4053570    0.0201904
MAL-ED           South Africa   6 months    observed             observed           0.5421785    0.3900443    0.6943126
MAL-ED           South Africa   24 months   observed             observed           0.4185314    0.2754687    0.5615940
MAL-ED           Tanzania       Birth       observed             observed           0.7624348    0.5710709    0.9537986
MAL-ED           Tanzania       6 months    observed             observed           0.5362213    0.4049390    0.6675036
MAL-ED           Tanzania       24 months   observed             observed           0.1195993   -0.0198585    0.2590571
PROBIT           Belarus        Birth       observed             observed          -1.1448633   -1.3544229   -0.9353037
PROBIT           Belarus        6 months    observed             observed           0.5789633    0.5190130    0.6389137
PROBIT           Belarus        24 months   observed             observed           0.8158885    0.6420546    0.9897224
PROVIDE          Bangladesh     Birth       observed             observed          -1.2984586   -1.3752758   -1.2216415
PROVIDE          Bangladesh     6 months    observed             observed          -0.1990907   -0.2817968   -0.1163845
ResPak           Pakistan       6 months    observed             observed          -0.1641841   -0.3464247    0.0180565
SAS-CompFeed     India          Birth       observed             observed          -0.6700453   -0.8474950   -0.4925957
SAS-CompFeed     India          6 months    observed             observed          -0.6657084   -0.8024377   -0.5289791
SAS-FoodSuppl    India          6 months    observed             observed          -1.0121579   -1.1280429   -0.8962729
TanzaniaChild2   Tanzania       6 months    observed             observed           0.0809332    0.0282644    0.1336020
ZVITAMBO         Zimbabwe       Birth       observed             observed          -0.5151425   -0.5409938   -0.4892911
ZVITAMBO         Zimbabwe       6 months    observed             observed           0.3105514    0.2848767    0.3362262
ZVITAMBO         Zimbabwe       24 months   observed             observed          -1.0542222   -1.2909384   -0.8175060


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed           0.2612142   -0.3585511    0.8809795
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.3587132   -0.6077634   -0.1096630
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.2166174   -0.4005606   -0.0326742
CMIN             Bangladesh     6 months    optimal              observed          -0.4300157   -0.6881452   -0.1718863
CMIN             Bangladesh     24 months   optimal              observed          -0.2330872   -0.4464305   -0.0197439
CONTENT          Peru           6 months    optimal              observed          -0.1278140   -0.3618478    0.1062199
CONTENT          Peru           24 months   optimal              observed           0.2165363   -0.0221574    0.4552300
Guatemala BSC    Guatemala      6 months    optimal              observed          -0.2110138   -0.3987648   -0.0232629
IRC              India          Birth       optimal              observed          -0.4998269   -0.8535252   -0.1461287
IRC              India          6 months    optimal              observed          -0.2299331   -0.5113997    0.0515336
IRC              India          24 months   optimal              observed          -0.1746024   -0.3446642   -0.0045407
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.0993042   -0.1250658   -0.0735427
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0772127   -0.1120168   -0.0424086
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2109645   -0.3377241   -0.0842050
JiVitA-4         Bangladesh     6 months    optimal              observed           0.0001960   -0.0599409    0.0603330
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.1989538   -0.3468437   -0.0510640
Keneba           Gambia         Birth       optimal              observed          -0.1683210   -0.2749605   -0.0616814
Keneba           Gambia         6 months    optimal              observed          -0.1187736   -0.1979606   -0.0395866
Keneba           Gambia         24 months   optimal              observed          -0.2904569   -0.4145294   -0.1663844
LCNI-5           Malawi         6 months    optimal              observed          -0.1684978   -0.3432990    0.0063034
LCNI-5           Malawi         24 months   optimal              observed           0.4108619    0.1543587    0.6673652
MAL-ED           Bangladesh     Birth       optimal              observed           0.1205727   -0.1912738    0.4324193
MAL-ED           Bangladesh     6 months    optimal              observed           0.1940838   -0.0188245    0.4069920
MAL-ED           Bangladesh     24 months   optimal              observed           0.0463359   -0.1777648    0.2704365
MAL-ED           Brazil         Birth       optimal              observed          -0.2570151   -0.7564585    0.2424284
MAL-ED           Brazil         6 months    optimal              observed           0.2332986   -0.0524788    0.5190759
MAL-ED           Brazil         24 months   optimal              observed           0.9325219    0.6384547    1.2265891
MAL-ED           India          Birth       optimal              observed          -0.6219528   -1.0470324   -0.1968731
MAL-ED           India          6 months    optimal              observed          -0.0003637   -0.2000524    0.1993251
MAL-ED           India          24 months   optimal              observed          -0.1946299   -0.3996570    0.0103972
MAL-ED           Nepal          Birth       optimal              observed          -0.4990495   -1.4333613    0.4352623
MAL-ED           Nepal          6 months    optimal              observed           0.1527610   -0.0671327    0.3726546
MAL-ED           Nepal          24 months   optimal              observed          -0.2145835   -0.4182297   -0.0109374
MAL-ED           Peru           Birth       optimal              observed          -0.1814489   -0.3986863    0.0357885
MAL-ED           Peru           6 months    optimal              observed           0.2453012    0.0145197    0.4760827
MAL-ED           Peru           24 months   optimal              observed           0.1862683   -0.0142494    0.3867859
MAL-ED           South Africa   Birth       optimal              observed           0.0339667   -0.3174778    0.3854113
MAL-ED           South Africa   6 months    optimal              observed          -0.1859374   -0.5543828    0.1825081
MAL-ED           South Africa   24 months   optimal              observed          -0.2364477   -0.4966048    0.0237095
MAL-ED           Tanzania       Birth       optimal              observed          -0.0143566   -0.3982107    0.3694976
MAL-ED           Tanzania       6 months    optimal              observed          -0.2462694   -0.5403843    0.0478455
MAL-ED           Tanzania       24 months   optimal              observed          -0.1740782   -0.3859483    0.0377919
PROBIT           Belarus        Birth       optimal              observed           0.0182264   -0.0651554    0.1016081
PROBIT           Belarus        6 months    optimal              observed           0.0295102   -0.0039870    0.0630074
PROBIT           Belarus        24 months   optimal              observed          -0.0055502   -0.1927277    0.1816273
PROVIDE          Bangladesh     Birth       optimal              observed           0.0670314   -0.0907801    0.2248429
PROVIDE          Bangladesh     6 months    optimal              observed          -0.1251437   -0.2584442    0.0081567
ResPak           Pakistan       6 months    optimal              observed          -0.0068886   -0.4699703    0.4561931
SAS-CompFeed     India          Birth       optimal              observed          -0.3760427   -0.4841987   -0.2678867
SAS-CompFeed     India          6 months    optimal              observed          -0.3438894   -0.4262372   -0.2615416
SAS-FoodSuppl    India          6 months    optimal              observed          -0.1986896   -0.6201668    0.2227876
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1453390   -0.2410730   -0.0496051
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1608723   -0.2056977   -0.1160470
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0656891   -0.1110457   -0.0203326
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.4262507   -0.8322670   -0.0202344

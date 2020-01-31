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
PROVIDE          Bangladesh     Birth                    1       78     532
PROVIDE          Bangladesh     Birth                    2      162     532
PROVIDE          Bangladesh     Birth                    3       97     532
PROVIDE          Bangladesh     Birth                    4      195     532
PROVIDE          Bangladesh     6 months                 1      211     603
PROVIDE          Bangladesh     6 months                 2      122     603
PROVIDE          Bangladesh     6 months                 3      174     603
PROVIDE          Bangladesh     6 months                 4       96     603
PROVIDE          Bangladesh     24 months                1        4      41
PROVIDE          Bangladesh     24 months                2       14      41
PROVIDE          Bangladesh     24 months                3        4      41
PROVIDE          Bangladesh     24 months                4       19      41
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
![](/tmp/e9aa85f1-cbfd-460e-91f8-b4fb97e0162e/02066542-f3bc-43e2-9e7f-77118ba6c55c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.5647474   -1.1695962    0.0401015
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.1497572   -0.4394831    0.1399686
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.2656738   -0.4798052   -0.0515423
CMIN             Bangladesh     6 months    optimal              observed          -0.1319371   -0.4031163    0.1392422
CMIN             Bangladesh     24 months   optimal              observed          -0.6479734   -0.8925503   -0.4033965
CONTENT          Peru           6 months    optimal              observed           1.2039588    0.9492815    1.4586362
CONTENT          Peru           24 months   optimal              observed           0.2398807   -0.0296990    0.5094603
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1332417   -0.0848280    0.3513113
IRC              India          Birth       optimal              observed          -0.5219235   -0.9288909   -0.1149560
IRC              India          6 months    optimal              observed          -0.3727198   -0.6869804   -0.0584592
IRC              India          24 months   optimal              observed          -0.4851447   -0.6697556   -0.3005338
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.6782799   -0.7118242   -0.6447355
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.5159057   -0.5553833   -0.4764281
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.4804146   -0.6130320   -0.3477973
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.3226143   -0.3861161   -0.2591125
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.9416603   -1.0961393   -0.7871813
Keneba           Gambia         Birth       optimal              observed          -1.1398142   -1.2703498   -1.0092786
Keneba           Gambia         6 months    optimal              observed          -0.0653878   -0.1590107    0.0282351
Keneba           Gambia         24 months   optimal              observed          -0.3779874   -0.5155496   -0.2404252
LCNI-5           Malawi         6 months    optimal              observed           0.5018917    0.3223857    0.6813977
LCNI-5           Malawi         24 months   optimal              observed          -0.3293102   -0.5750361   -0.0835843
MAL-ED           Bangladesh     Birth       optimal              observed          -1.0956599   -1.4167343   -0.7745856
MAL-ED           Bangladesh     6 months    optimal              observed          -0.3565868   -0.6295721   -0.0836015
MAL-ED           Bangladesh     24 months   optimal              observed          -1.0223061   -1.3014565   -0.7431556
MAL-ED           Brazil         Birth       optimal              observed           0.6828514    0.1382496    1.2274531
MAL-ED           Brazil         6 months    optimal              observed           0.9593604    0.6598295    1.2588914
MAL-ED           Brazil         24 months   optimal              observed           0.0330649   -0.3355025    0.4016324
MAL-ED           India          Birth       optimal              observed          -0.3170469   -0.8220736    0.1879798
MAL-ED           India          6 months    optimal              observed          -0.7336720   -0.9648789   -0.5024651
MAL-ED           India          24 months   optimal              observed          -0.6927630   -0.9251047   -0.4604213
MAL-ED           Nepal          Birth       optimal              observed          -0.6480582   -1.5895022    0.2933858
MAL-ED           Nepal          6 months    optimal              observed          -0.2198186   -0.4306464   -0.0089908
MAL-ED           Nepal          24 months   optimal              observed          -0.0637053   -0.2939241    0.1665136
MAL-ED           Peru           Birth       optimal              observed           0.1224338   -0.1210980    0.3659657
MAL-ED           Peru           6 months    optimal              observed           0.8523855    0.5556114    1.1491596
MAL-ED           Peru           24 months   optimal              observed           0.0699894   -0.1432292    0.2832080
MAL-ED           South Africa   Birth       optimal              observed          -0.6538538   -1.0720236   -0.2356841
MAL-ED           South Africa   6 months    optimal              observed           0.7260455    0.3287344    1.1233565
MAL-ED           South Africa   24 months   optimal              observed           0.4710756    0.0907603    0.8513909
MAL-ED           Tanzania       Birth       optimal              observed           0.5705999    0.0840592    1.0571406
MAL-ED           Tanzania       6 months    optimal              observed           0.7744496    0.4466136    1.1022855
MAL-ED           Tanzania       24 months   optimal              observed           0.2911801    0.0653120    0.5170481
PROBIT           Belarus        Birth       optimal              observed          -1.1537414   -1.3886746   -0.9188082
PROBIT           Belarus        6 months    optimal              observed           0.5676256    0.5010854    0.6341659
PROBIT           Belarus        24 months   optimal              observed           0.8455832    0.6748793    1.0162870
PROVIDE          Bangladesh     Birth       optimal              observed          -0.9270720   -1.1200057   -0.7341384
PROVIDE          Bangladesh     6 months    optimal              observed          -0.0429862   -0.1866944    0.1007220
ResPak           Pakistan       6 months    optimal              observed          -0.2034003   -0.7070764    0.3002758
SAS-CompFeed     India          Birth       optimal              observed          -0.2940026   -0.4025280   -0.1854773
SAS-CompFeed     India          6 months    optimal              observed          -0.3218190   -0.5152154   -0.1284226
SAS-FoodSuppl    India          6 months    optimal              observed          -0.9378324   -1.4020343   -0.4736305
TanzaniaChild2   Tanzania       6 months    optimal              observed           0.2279519    0.1194055    0.3364983
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3546221   -0.4065139   -0.3027303
ZVITAMBO         Zimbabwe       6 months    optimal              observed           0.3759738    0.3231176    0.4288301
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.6330549   -1.0593654   -0.2067444


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
CMC-V-BCS-2002   India          Birth       optimal              observed           0.0999218   -0.4714852    0.6713287
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.3529194   -0.5984522   -0.1073866
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.2261825   -0.4100249   -0.0423402
CMIN             Bangladesh     6 months    optimal              observed          -0.4461082   -0.7009135   -0.1913029
CMIN             Bangladesh     24 months   optimal              observed          -0.2348933   -0.4474775   -0.0223090
CONTENT          Peru           6 months    optimal              observed          -0.1355270   -0.3644838    0.0934297
CONTENT          Peru           24 months   optimal              observed           0.3269486    0.0841664    0.5697307
Guatemala BSC    Guatemala      6 months    optimal              observed          -0.2172550   -0.4036451   -0.0308650
IRC              India          Birth       optimal              observed          -0.4886596   -0.8461379   -0.1311813
IRC              India          6 months    optimal              observed          -0.2262099   -0.5099296    0.0575097
IRC              India          24 months   optimal              observed          -0.1872616   -0.3519152   -0.0226081
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.0993130   -0.1250700   -0.0735560
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0776104   -0.1123915   -0.0428294
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2082122   -0.3342677   -0.0821568
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.0671912   -0.1190606   -0.0153219
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.2008791   -0.3468653   -0.0548930
Keneba           Gambia         Birth       optimal              observed          -0.0951312   -0.2090077    0.0187453
Keneba           Gambia         6 months    optimal              observed          -0.1192160   -0.1984107   -0.0400213
Keneba           Gambia         24 months   optimal              observed          -0.2929202   -0.4168985   -0.1689420
LCNI-5           Malawi         6 months    optimal              observed          -0.0519513   -0.2202856    0.1163830
LCNI-5           Malawi         24 months   optimal              observed           0.3390938    0.1088687    0.5693189
MAL-ED           Bangladesh     Birth       optimal              observed           0.1537995   -0.1298235    0.4374224
MAL-ED           Bangladesh     6 months    optimal              observed           0.2189104   -0.0226366    0.4604575
MAL-ED           Bangladesh     24 months   optimal              observed           0.2544986    0.0201649    0.4888323
MAL-ED           Brazil         Birth       optimal              observed          -0.2799481   -0.7684853    0.2085891
MAL-ED           Brazil         6 months    optimal              observed           0.0127169   -0.2692952    0.2947291
MAL-ED           Brazil         24 months   optimal              observed           0.5476836    0.2111927    0.8841744
MAL-ED           India          Birth       optimal              observed          -0.6153975   -1.0460243   -0.1847708
MAL-ED           India          6 months    optimal              observed           0.0289298   -0.1738947    0.2317542
MAL-ED           India          24 months   optimal              observed          -0.1919895   -0.3981609    0.0141819
MAL-ED           Nepal          Birth       optimal              observed          -0.1204033   -0.9917133    0.7509066
MAL-ED           Nepal          6 months    optimal              observed           0.3302494    0.1312289    0.5292699
MAL-ED           Nepal          24 months   optimal              observed          -0.2142197   -0.4168737   -0.0115658
MAL-ED           Peru           Birth       optimal              observed          -0.1744514   -0.3923941    0.0434913
MAL-ED           Peru           6 months    optimal              observed           0.2004960   -0.0593097    0.4603018
MAL-ED           Peru           24 months   optimal              observed           0.0842568   -0.1068408    0.2753545
MAL-ED           South Africa   Birth       optimal              observed           0.4612705    0.0868680    0.8356730
MAL-ED           South Africa   6 months    optimal              observed          -0.1838670   -0.5552880    0.1875540
MAL-ED           South Africa   24 months   optimal              observed          -0.0525443   -0.3863018    0.2812133
MAL-ED           Tanzania       Birth       optimal              observed           0.1918349   -0.2626229    0.6462927
MAL-ED           Tanzania       6 months    optimal              observed          -0.2382282   -0.5351723    0.0587158
MAL-ED           Tanzania       24 months   optimal              observed          -0.1715808   -0.3797907    0.0366292
PROBIT           Belarus        Birth       optimal              observed           0.0088781   -0.0644120    0.0821681
PROBIT           Belarus        6 months    optimal              observed           0.0113377   -0.0249651    0.0476404
PROBIT           Belarus        24 months   optimal              observed          -0.0296947   -0.1857814    0.1263921
PROVIDE          Bangladesh     Birth       optimal              observed          -0.3713866   -0.5514554   -0.1913178
PROVIDE          Bangladesh     6 months    optimal              observed          -0.1561044   -0.2810210   -0.0311879
ResPak           Pakistan       6 months    optimal              observed           0.0392162   -0.4343607    0.5127931
SAS-CompFeed     India          Birth       optimal              observed          -0.3760427   -0.4841987   -0.2678867
SAS-CompFeed     India          6 months    optimal              observed          -0.3438894   -0.4262372   -0.2615416
SAS-FoodSuppl    India          6 months    optimal              observed          -0.0743255   -0.5047916    0.3561406
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1470187   -0.2426121   -0.0514253
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1605204   -0.2053345   -0.1157062
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0654224   -0.1107935   -0.0200513
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.4211673   -0.8214641   -0.0208705

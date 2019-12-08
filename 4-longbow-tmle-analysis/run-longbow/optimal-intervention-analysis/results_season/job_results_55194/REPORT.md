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
![](/tmp/425f3b7f-578f-4faf-9b02-73b7356c5bfb/5b16598b-df2e-4b35-95a5-0cf9ca8f1cd9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.8365946   -1.2244348   -0.4487545
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.1440150   -0.4373829    0.1493528
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.2597339   -0.4752318   -0.0442360
CMIN             Bangladesh     6 months    optimal              observed          -0.1402653   -0.4128800    0.1323494
CMIN             Bangladesh     24 months   optimal              observed          -0.6542243   -0.8988992   -0.4095494
CONTENT          Peru           6 months    optimal              observed           1.2147036    0.9555826    1.4738246
CONTENT          Peru           24 months   optimal              observed           0.4206450    0.1460761    0.6952138
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1301427   -0.0871896    0.3474750
IRC              India          Birth       optimal              observed          -0.5123583   -0.9136076   -0.1111091
IRC              India          6 months    optimal              observed          -0.3869618   -0.7056987   -0.0682249
IRC              India          24 months   optimal              observed          -0.4923731   -0.6760472   -0.3086990
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.6782230   -0.7117684   -0.6446776
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.5158963   -0.5554217   -0.4763709
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.4744799   -0.6067813   -0.3421785
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.3228283   -0.3863468   -0.2593098
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.9431136   -1.0984420   -0.7877853
Keneba           Gambia         Birth       optimal              observed          -1.0647833   -1.1866986   -0.9428679
Keneba           Gambia         6 months    optimal              observed          -0.0648244   -0.1584350    0.0287861
Keneba           Gambia         24 months   optimal              observed          -0.3812121   -0.5197979   -0.2426263
LCNI-5           Malawi         6 months    optimal              observed           0.6251746    0.4400776    0.8102717
LCNI-5           Malawi         24 months   optimal              observed          -0.2757146   -0.5443506   -0.0070787
MAL-ED           Bangladesh     Birth       optimal              observed          -1.1914790   -1.5523917   -0.8305664
MAL-ED           Bangladesh     6 months    optimal              observed          -0.4365798   -0.7056010   -0.1675586
MAL-ED           Bangladesh     24 months   optimal              observed          -0.7852312   -1.0492281   -0.5212344
MAL-ED           Brazil         Birth       optimal              observed           0.6619264    0.1075315    1.2163214
MAL-ED           Brazil         6 months    optimal              observed           0.9474713    0.6151938    1.2797488
MAL-ED           Brazil         24 months   optimal              observed           0.0007329   -0.4260492    0.4275149
MAL-ED           India          Birth       optimal              observed          -0.2878025   -0.7791681    0.2035631
MAL-ED           India          6 months    optimal              observed          -0.5893528   -0.8277857   -0.3509199
MAL-ED           India          24 months   optimal              observed          -0.6962896   -0.9337893   -0.4587898
MAL-ED           Nepal          Birth       optimal              observed          -0.6182399   -1.4487844    0.2123047
MAL-ED           Nepal          6 months    optimal              observed          -0.1650896   -0.3794117    0.0492325
MAL-ED           Nepal          24 months   optimal              observed          -0.0456653   -0.2804857    0.1891550
MAL-ED           Peru           Birth       optimal              observed           0.1285124   -0.1200247    0.3770494
MAL-ED           Peru           6 months    optimal              observed           0.7595153    0.4703432    1.0486875
MAL-ED           Peru           24 months   optimal              observed           0.1933229   -0.0311616    0.4178074
MAL-ED           South Africa   Birth       optimal              observed          -0.4517024   -0.7971814   -0.1062234
MAL-ED           South Africa   6 months    optimal              observed           0.5479135    0.2155012    0.8803257
MAL-ED           South Africa   24 months   optimal              observed           0.6684355    0.3743190    0.9625520
MAL-ED           Tanzania       Birth       optimal              observed           0.8868979    0.4584735    1.3153223
MAL-ED           Tanzania       6 months    optimal              observed           0.7813219    0.4508041    1.1118397
MAL-ED           Tanzania       24 months   optimal              observed           0.2835163    0.0583030    0.5087296
PROBIT           Belarus        Birth       optimal              observed          -1.1542847   -1.3852975   -0.9232719
PROBIT           Belarus        6 months    optimal              observed           0.5717131    0.5023302    0.6410960
PROBIT           Belarus        24 months   optimal              observed           0.8233335    0.5561717    1.0904954
PROVIDE          Bangladesh     Birth       optimal              observed          -1.4020580   -1.5830350   -1.2210810
PROVIDE          Bangladesh     6 months    optimal              observed          -0.0729466   -0.2296453    0.0837521
ResPak           Pakistan       6 months    optimal              observed          -0.0309652   -0.5582166    0.4962863
SAS-CompFeed     India          Birth       optimal              observed          -0.2940026   -0.4025280   -0.1854773
SAS-CompFeed     India          6 months    optimal              observed          -0.3218190   -0.5152154   -0.1284226
SAS-FoodSuppl    India          6 months    optimal              observed          -0.9713693   -1.3844212   -0.5583175
TanzaniaChild2   Tanzania       6 months    optimal              observed           0.2279984    0.1194478    0.3365491
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3544695   -0.4063555   -0.3025835
ZVITAMBO         Zimbabwe       6 months    optimal              observed           0.3757791    0.3229236    0.4286345
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.6112217   -1.0197218   -0.2027217


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
CMC-V-BCS-2002   India          Birth       optimal              observed           0.3717690   -0.0395202    0.7830583
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.3586616   -0.6074087   -0.1099146
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.2321224   -0.4172062   -0.0470386
CMIN             Bangladesh     6 months    optimal              observed          -0.4377800   -0.6938739   -0.1816861
CMIN             Bangladesh     24 months   optimal              observed          -0.2286424   -0.4413428   -0.0159419
CONTENT          Peru           6 months    optimal              observed          -0.1462718   -0.3793777    0.0868340
CONTENT          Peru           24 months   optimal              observed           0.1461843   -0.0990038    0.3913724
Guatemala BSC    Guatemala      6 months    optimal              observed          -0.2141561   -0.3998826   -0.0284295
IRC              India          Birth       optimal              observed          -0.4982247   -0.8502410   -0.1462085
IRC              India          6 months    optimal              observed          -0.2119679   -0.4997269    0.0757910
IRC              India          24 months   optimal              observed          -0.1800332   -0.3438621   -0.0162044
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.0993699   -0.1251326   -0.0736072
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0776198   -0.1124414   -0.0427982
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2141470   -0.3398877   -0.0884063
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.0669772   -0.1188421   -0.0151123
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.1994258   -0.3462227   -0.0526289
Keneba           Gambia         Birth       optimal              observed          -0.1701622   -0.2769505   -0.0633738
Keneba           Gambia         6 months    optimal              observed          -0.1197793   -0.1989614   -0.0405972
Keneba           Gambia         24 months   optimal              observed          -0.2896955   -0.4145157   -0.1648752
LCNI-5           Malawi         6 months    optimal              observed          -0.1752342   -0.3489327   -0.0015357
LCNI-5           Malawi         24 months   optimal              observed           0.2854983    0.0198922    0.5511044
MAL-ED           Bangladesh     Birth       optimal              observed           0.2496186   -0.0622943    0.5615314
MAL-ED           Bangladesh     6 months    optimal              observed           0.2989034    0.0612146    0.5365923
MAL-ED           Bangladesh     24 months   optimal              observed           0.0174237   -0.2078871    0.2427346
MAL-ED           Brazil         Birth       optimal              observed          -0.2590232   -0.7546678    0.2366214
MAL-ED           Brazil         6 months    optimal              observed           0.0246060   -0.2747225    0.3239346
MAL-ED           Brazil         24 months   optimal              observed           0.5800156    0.2010053    0.9590259
MAL-ED           India          Birth       optimal              observed          -0.6446420   -1.0631150   -0.2261689
MAL-ED           India          6 months    optimal              observed          -0.1153894   -0.3189638    0.0881849
MAL-ED           India          24 months   optimal              observed          -0.1884629   -0.3989860    0.0220602
MAL-ED           Nepal          Birth       optimal              observed          -0.1502217   -0.9080454    0.6076021
MAL-ED           Nepal          6 months    optimal              observed           0.2755204    0.0736036    0.4774371
MAL-ED           Nepal          24 months   optimal              observed          -0.2322597   -0.4391384   -0.0253809
MAL-ED           Peru           Birth       optimal              observed          -0.1805299   -0.4026167    0.0415569
MAL-ED           Peru           6 months    optimal              observed           0.2933662    0.0339768    0.5527557
MAL-ED           Peru           24 months   optimal              observed          -0.0390767   -0.2393303    0.1611769
MAL-ED           South Africa   Birth       optimal              observed           0.2591191   -0.0765277    0.5947659
MAL-ED           South Africa   6 months    optimal              observed          -0.0057350   -0.3197374    0.3082674
MAL-ED           South Africa   24 months   optimal              observed          -0.2499042   -0.5144525    0.0146441
MAL-ED           Tanzania       Birth       optimal              observed          -0.1244631   -0.5451866    0.2962604
MAL-ED           Tanzania       6 months    optimal              observed          -0.2451006   -0.5444962    0.0542951
MAL-ED           Tanzania       24 months   optimal              observed          -0.1639170   -0.3715342    0.0437002
PROBIT           Belarus        Birth       optimal              observed           0.0094214   -0.0686822    0.0875250
PROBIT           Belarus        6 months    optimal              observed           0.0072502   -0.0346650    0.0491655
PROBIT           Belarus        24 months   optimal              observed          -0.0074450   -0.1927631    0.1778730
PROVIDE          Bangladesh     Birth       optimal              observed           0.1035994   -0.0574404    0.2646391
PROVIDE          Bangladesh     6 months    optimal              observed          -0.1261441   -0.2590486    0.0067604
ResPak           Pakistan       6 months    optimal              observed          -0.1332189   -0.6369597    0.3705219
SAS-CompFeed     India          Birth       optimal              observed          -0.3760427   -0.4841987   -0.2678867
SAS-CompFeed     India          6 months    optimal              observed          -0.3438894   -0.4262372   -0.2615416
SAS-FoodSuppl    India          6 months    optimal              observed          -0.0407886   -0.4278262    0.3462490
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1470653   -0.2426629   -0.0514676
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1606729   -0.2054821   -0.1158638
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0652277   -0.1105993   -0.0198560
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.4430005   -0.8283060   -0.0576950

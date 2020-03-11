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
CMC-V-BCS-2002   India          24 months                1      101     372
CMC-V-BCS-2002   India          24 months                2       99     372
CMC-V-BCS-2002   India          24 months                3      117     372
CMC-V-BCS-2002   India          24 months                4       55     372
CMIN             Bangladesh     Birth                    1        4      19
CMIN             Bangladesh     Birth                    2        5      19
CMIN             Bangladesh     Birth                    3        5      19
CMIN             Bangladesh     Birth                    4        5      19
CMIN             Bangladesh     6 months                 1       50     243
CMIN             Bangladesh     6 months                 2       62     243
CMIN             Bangladesh     6 months                 3       70     243
CMIN             Bangladesh     6 months                 4       61     243
CMIN             Bangladesh     24 months                1       79     243
CMIN             Bangladesh     24 months                2       69     243
CMIN             Bangladesh     24 months                3       58     243
CMIN             Bangladesh     24 months                4       37     243
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
EE               Pakistan       24 months                1        8     168
EE               Pakistan       24 months                2      160     168
EE               Pakistan       24 months                3        0     168
EE               Pakistan       24 months                4        0     168
GMS-Nepal        Nepal          Birth                    1        0     641
GMS-Nepal        Nepal          Birth                    2        0     641
GMS-Nepal        Nepal          Birth                    3      152     641
GMS-Nepal        Nepal          Birth                    4      489     641
GMS-Nepal        Nepal          6 months                 1      502     564
GMS-Nepal        Nepal          6 months                 2       62     564
GMS-Nepal        Nepal          6 months                 3        0     564
GMS-Nepal        Nepal          6 months                 4        0     564
GMS-Nepal        Nepal          24 months                1        0     487
GMS-Nepal        Nepal          24 months                2        0     487
GMS-Nepal        Nepal          24 months                3       39     487
GMS-Nepal        Nepal          24 months                4      448     487
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
IRC              India          24 months                1      114     409
IRC              India          24 months                2      119     409
IRC              India          24 months                3       85     409
IRC              India          24 months                4       91     409
JiVitA-3         Bangladesh     Birth                    1     5117   18013
JiVitA-3         Bangladesh     Birth                    2     5680   18013
JiVitA-3         Bangladesh     Birth                    3     3864   18013
JiVitA-3         Bangladesh     Birth                    4     3352   18013
JiVitA-3         Bangladesh     6 months                 1     3710   16784
JiVitA-3         Bangladesh     6 months                 2     3580   16784
JiVitA-3         Bangladesh     6 months                 3     5224   16784
JiVitA-3         Bangladesh     6 months                 4     4270   16784
JiVitA-3         Bangladesh     24 months                1     2611    8603
JiVitA-3         Bangladesh     24 months                2     2607    8603
JiVitA-3         Bangladesh     24 months                3     1637    8603
JiVitA-3         Bangladesh     24 months                4     1748    8603
JiVitA-4         Bangladesh     Birth                    1      277    2396
JiVitA-4         Bangladesh     Birth                    2      195    2396
JiVitA-4         Bangladesh     Birth                    3     1088    2396
JiVitA-4         Bangladesh     Birth                    4      836    2396
JiVitA-4         Bangladesh     6 months                 1     1470    4833
JiVitA-4         Bangladesh     6 months                 2     2616    4833
JiVitA-4         Bangladesh     6 months                 3      628    4833
JiVitA-4         Bangladesh     6 months                 4      119    4833
JiVitA-4         Bangladesh     24 months                1      686    4735
JiVitA-4         Bangladesh     24 months                2      580    4735
JiVitA-4         Bangladesh     24 months                3     2071    4735
JiVitA-4         Bangladesh     24 months                4     1398    4735
Keneba           Gambia         Birth                    1      426    1466
Keneba           Gambia         Birth                    2      401    1466
Keneba           Gambia         Birth                    3      364    1466
Keneba           Gambia         Birth                    4      275    1466
Keneba           Gambia         6 months                 1      464    2089
Keneba           Gambia         6 months                 2      459    2089
Keneba           Gambia         6 months                 3      607    2089
Keneba           Gambia         6 months                 4      559    2089
Keneba           Gambia         24 months                1      501    1726
Keneba           Gambia         24 months                2      492    1726
Keneba           Gambia         24 months                3      388    1726
Keneba           Gambia         24 months                4      345    1726
LCNI-5           Malawi         6 months                 1      204     839
LCNI-5           Malawi         6 months                 2      319     839
LCNI-5           Malawi         6 months                 3      113     839
LCNI-5           Malawi         6 months                 4      203     839
LCNI-5           Malawi         24 months                1      145     563
LCNI-5           Malawi         24 months                2       80     563
LCNI-5           Malawi         24 months                3      210     563
LCNI-5           Malawi         24 months                4      128     563
MAL-ED           Bangladesh     Birth                    1       64     215
MAL-ED           Bangladesh     Birth                    2       48     215
MAL-ED           Bangladesh     Birth                    3       61     215
MAL-ED           Bangladesh     Birth                    4       42     215
MAL-ED           Bangladesh     6 months                 1       55     241
MAL-ED           Bangladesh     6 months                 2       72     241
MAL-ED           Bangladesh     6 months                 3       60     241
MAL-ED           Bangladesh     6 months                 4       54     241
MAL-ED           Bangladesh     24 months                1       73     212
MAL-ED           Bangladesh     24 months                2       51     212
MAL-ED           Bangladesh     24 months                3       48     212
MAL-ED           Bangladesh     24 months                4       40     212
MAL-ED           Brazil         Birth                    1       17      62
MAL-ED           Brazil         Birth                    2       11      62
MAL-ED           Brazil         Birth                    3       12      62
MAL-ED           Brazil         Birth                    4       22      62
MAL-ED           Brazil         6 months                 1       64     209
MAL-ED           Brazil         6 months                 2       51     209
MAL-ED           Brazil         6 months                 3       44     209
MAL-ED           Brazil         6 months                 4       50     209
MAL-ED           Brazil         24 months                1       65     169
MAL-ED           Brazil         24 months                2       30     169
MAL-ED           Brazil         24 months                3       43     169
MAL-ED           Brazil         24 months                4       31     169
MAL-ED           India          Birth                    1       10      45
MAL-ED           India          Birth                    2       10      45
MAL-ED           India          Birth                    3       11      45
MAL-ED           India          Birth                    4       14      45
MAL-ED           India          6 months                 1       66     236
MAL-ED           India          6 months                 2       42     236
MAL-ED           India          6 months                 3       73     236
MAL-ED           India          6 months                 4       55     236
MAL-ED           India          24 months                1       65     227
MAL-ED           India          24 months                2       71     227
MAL-ED           India          24 months                3       54     227
MAL-ED           India          24 months                4       37     227
MAL-ED           Nepal          Birth                    1        5      26
MAL-ED           Nepal          Birth                    2        9      26
MAL-ED           Nepal          Birth                    3        7      26
MAL-ED           Nepal          Birth                    4        5      26
MAL-ED           Nepal          6 months                 1       60     236
MAL-ED           Nepal          6 months                 2       59     236
MAL-ED           Nepal          6 months                 3       59     236
MAL-ED           Nepal          6 months                 4       58     236
MAL-ED           Nepal          24 months                1       66     228
MAL-ED           Nepal          24 months                2       61     228
MAL-ED           Nepal          24 months                3       63     228
MAL-ED           Nepal          24 months                4       38     228
MAL-ED           Peru           Birth                    1       49     228
MAL-ED           Peru           Birth                    2       52     228
MAL-ED           Peru           Birth                    3       69     228
MAL-ED           Peru           Birth                    4       58     228
MAL-ED           Peru           6 months                 1       96     273
MAL-ED           Peru           6 months                 2       77     273
MAL-ED           Peru           6 months                 3       60     273
MAL-ED           Peru           6 months                 4       40     273
MAL-ED           Peru           24 months                1       55     201
MAL-ED           Peru           24 months                2       46     201
MAL-ED           Peru           24 months                3       54     201
MAL-ED           Peru           24 months                4       46     201
MAL-ED           South Africa   Birth                    1       25     120
MAL-ED           South Africa   Birth                    2       22     120
MAL-ED           South Africa   Birth                    3       35     120
MAL-ED           South Africa   Birth                    4       38     120
MAL-ED           South Africa   6 months                 1      106     254
MAL-ED           South Africa   6 months                 2       67     254
MAL-ED           South Africa   6 months                 3       45     254
MAL-ED           South Africa   6 months                 4       36     254
MAL-ED           South Africa   24 months                1       55     238
MAL-ED           South Africa   24 months                2       39     238
MAL-ED           South Africa   24 months                3       86     238
MAL-ED           South Africa   24 months                4       58     238
MAL-ED           Tanzania       Birth                    1       14     115
MAL-ED           Tanzania       Birth                    2       33     115
MAL-ED           Tanzania       Birth                    3       32     115
MAL-ED           Tanzania       Birth                    4       36     115
MAL-ED           Tanzania       6 months                 1       71     247
MAL-ED           Tanzania       6 months                 2       80     247
MAL-ED           Tanzania       6 months                 3       53     247
MAL-ED           Tanzania       6 months                 4       43     247
MAL-ED           Tanzania       24 months                1       56     214
MAL-ED           Tanzania       24 months                2       59     214
MAL-ED           Tanzania       24 months                3       59     214
MAL-ED           Tanzania       24 months                4       40     214
PROBIT           Belarus        Birth                    1     3763   13817
PROBIT           Belarus        Birth                    2     4124   13817
PROBIT           Belarus        Birth                    3     2700   13817
PROBIT           Belarus        Birth                    4     3230   13817
PROBIT           Belarus        6 months                 1     3619   15757
PROBIT           Belarus        6 months                 2     3117   15757
PROBIT           Belarus        6 months                 3     4510   15757
PROBIT           Belarus        6 months                 4     4511   15757
PROBIT           Belarus        24 months                1     1074    3970
PROBIT           Belarus        24 months                2     1128    3970
PROBIT           Belarus        24 months                3      835    3970
PROBIT           Belarus        24 months                4      933    3970
PROVIDE          Bangladesh     Birth                    1       78     532
PROVIDE          Bangladesh     Birth                    2      162     532
PROVIDE          Bangladesh     Birth                    3       97     532
PROVIDE          Bangladesh     Birth                    4      195     532
PROVIDE          Bangladesh     6 months                 1      211     603
PROVIDE          Bangladesh     6 months                 2      122     603
PROVIDE          Bangladesh     6 months                 3      174     603
PROVIDE          Bangladesh     6 months                 4       96     603
PROVIDE          Bangladesh     24 months                1       99     579
PROVIDE          Bangladesh     24 months                2      187     579
PROVIDE          Bangladesh     24 months                3      104     579
PROVIDE          Bangladesh     24 months                4      189     579
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
TanzaniaChild2   Tanzania       24 months                1        0       6
TanzaniaChild2   Tanzania       24 months                2        4       6
TanzaniaChild2   Tanzania       24 months                3        0       6
TanzaniaChild2   Tanzania       24 months                4        2       6
ZVITAMBO         Zimbabwe       Birth                    1     3531   12916
ZVITAMBO         Zimbabwe       Birth                    2     2902   12916
ZVITAMBO         Zimbabwe       Birth                    3     3237   12916
ZVITAMBO         Zimbabwe       Birth                    4     3246   12916
ZVITAMBO         Zimbabwe       6 months                 1     2124    8505
ZVITAMBO         Zimbabwe       6 months                 2     2199    8505
ZVITAMBO         Zimbabwe       6 months                 3     1972    8505
ZVITAMBO         Zimbabwe       6 months                 4     2210    8505
ZVITAMBO         Zimbabwe       24 months                1       66     433
ZVITAMBO         Zimbabwe       24 months                2      139     433
ZVITAMBO         Zimbabwe       24 months                3       68     433
ZVITAMBO         Zimbabwe       24 months                4      160     433


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
![](/tmp/f058552c-18e8-4243-b521-eaf85b199ee1/bf0530a8-4087-4fd0-b947-45851d116fdf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.6631403   -1.1754099   -0.1508707
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.1381156   -0.4297222    0.1534910
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.6520949   -0.8133126   -0.4908772
CMIN             Bangladesh     6 months    optimal              observed          -0.1344101   -0.4052226    0.1364023
CMIN             Bangladesh     24 months   optimal              observed          -0.8137253   -1.0727052   -0.5547454
CONTENT          Peru           6 months    optimal              observed           1.2210607    0.9724777    1.4696438
CONTENT          Peru           24 months   optimal              observed           0.4528401    0.1433627    0.7623174
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1306879   -0.0895083    0.3508841
IRC              India          Birth       optimal              observed          -0.5231196   -0.9219877   -0.1242514
IRC              India          6 months    optimal              observed          -0.5441963   -0.8246978   -0.2636947
IRC              India          24 months   optimal              observed          -0.5794110   -0.7448692   -0.4139528
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.6785039   -0.7120527   -0.6449550
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.5161114   -0.5556269   -0.4765959
JiVitA-3         Bangladesh     24 months   optimal              observed          -1.0893797   -1.1290567   -1.0497027
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.4798754   -0.6122683   -0.3474824
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.3232073   -0.3866970   -0.2597177
JiVitA-4         Bangladesh     24 months   optimal              observed          -1.0291408   -1.1139493   -0.9443323
Keneba           Gambia         Birth       optimal              observed          -1.0640525   -1.1857169   -0.9423881
Keneba           Gambia         6 months    optimal              observed          -0.0667860   -0.1603896    0.0268177
Keneba           Gambia         24 months   optimal              observed          -0.6552141   -0.7360431   -0.5743851
LCNI-5           Malawi         6 months    optimal              observed           0.6199613    0.4328783    0.8070442
LCNI-5           Malawi         24 months   optimal              observed          -0.0721722   -0.2227902    0.0784458
MAL-ED           Bangladesh     Birth       optimal              observed          -1.0286677   -1.3304338   -0.7269017
MAL-ED           Bangladesh     6 months    optimal              observed          -0.4427907   -0.7223482   -0.1632332
MAL-ED           Bangladesh     24 months   optimal              observed          -0.7116459   -0.9230836   -0.5002081
MAL-ED           Brazil         Birth       optimal              observed           0.6737087    0.1017393    1.2456782
MAL-ED           Brazil         6 months    optimal              observed           0.8629756    0.5655928    1.1603584
MAL-ED           Brazil         24 months   optimal              observed           0.6660325    0.3283324    1.0037326
MAL-ED           India          Birth       optimal              observed          -0.2580395   -0.7385313    0.2224523
MAL-ED           India          6 months    optimal              observed          -0.5701005   -0.8068486   -0.3333524
MAL-ED           India          24 months   optimal              observed          -0.8380635   -1.0503865   -0.6257405
MAL-ED           Nepal          Birth       optimal              observed          -0.9197996   -1.3427759   -0.4968233
MAL-ED           Nepal          6 months    optimal              observed          -0.0384605   -0.2351007    0.1581796
MAL-ED           Nepal          24 months   optimal              observed          -0.3138744   -0.5297938   -0.0979550
MAL-ED           Peru           Birth       optimal              observed           0.1228769   -0.1203980    0.3661518
MAL-ED           Peru           6 months    optimal              observed           0.8200931    0.5973824    1.0428039
MAL-ED           Peru           24 months   optimal              observed          -0.0412020   -0.2509812    0.1685771
MAL-ED           South Africa   Birth       optimal              observed          -0.5957275   -1.0047386   -0.1867164
MAL-ED           South Africa   6 months    optimal              observed           0.7364785    0.3350931    1.1378639
MAL-ED           South Africa   24 months   optimal              observed           0.6248572    0.3775567    0.8721576
MAL-ED           Tanzania       Birth       optimal              observed           0.8575424    0.4039576    1.3111272
MAL-ED           Tanzania       6 months    optimal              observed           0.7762874    0.4445820    1.1079927
MAL-ED           Tanzania       24 months   optimal              observed           0.0284786   -0.1472309    0.2041881
PROBIT           Belarus        Birth       optimal              observed          -1.1537305   -1.3775759   -0.9298851
PROBIT           Belarus        6 months    optimal              observed           0.5246256    0.4376500    0.6116013
PROBIT           Belarus        24 months   optimal              observed           0.5763162    0.4518994    0.7007331
PROVIDE          Bangladesh     Birth       optimal              observed          -0.9252384   -1.1165294   -0.7339474
PROVIDE          Bangladesh     6 months    optimal              observed          -0.0461769   -0.1900726    0.0977188
PROVIDE          Bangladesh     24 months   optimal              observed          -0.7470803   -0.9077730   -0.5863876
ResPak           Pakistan       6 months    optimal              observed          -0.3084933   -0.7859209    0.1689343
SAS-CompFeed     India          Birth       optimal              observed          -0.2940026   -0.4025280   -0.1854773
SAS-CompFeed     India          6 months    optimal              observed          -0.3218190   -0.5152154   -0.1284226
SAS-FoodSuppl    India          6 months    optimal              observed          -0.9322917   -1.3832215   -0.4813619
TanzaniaChild2   Tanzania       6 months    optimal              observed           0.2275267    0.1188418    0.3362116
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3544372   -0.4063308   -0.3025436
ZVITAMBO         Zimbabwe       6 months    optimal              observed           0.3757223    0.3228799    0.4285647
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.9637950   -1.1946461   -0.7329438


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       observed             observed          -0.4648256   -0.7643210   -0.1653302
CMC-V-BCS-2002   India          6 months    observed             observed          -0.5026766   -0.6536848   -0.3516685
CMC-V-BCS-2002   India          24 months   observed             observed          -0.5571505   -0.6585247   -0.4557763
CMIN             Bangladesh     6 months    observed             observed          -0.5780453   -0.7226627   -0.4334279
CMIN             Bangladesh     24 months   observed             observed          -0.8535391   -0.9644236   -0.7426546
CONTENT          Peru           6 months    observed             observed           1.0644279    0.9468682    1.1819876
CONTENT          Peru           24 months   observed             observed           0.5902439    0.4560143    0.7244735
Guatemala BSC    Guatemala      6 months    observed             observed          -0.0840134   -0.1945572    0.0265305
IRC              India          Birth       observed             observed          -1.0105831   -1.1973019   -0.8238643
IRC              India          6 months    observed             observed          -0.5989297   -0.7344491   -0.4634104
IRC              India          24 months   observed             observed          -0.7458150   -0.8368180   -0.6548120
JiVitA-3         Bangladesh     Birth       observed             observed          -0.7775928   -0.7966054   -0.7585803
JiVitA-3         Bangladesh     6 months    observed             observed          -0.5935161   -0.6130518   -0.5739805
JiVitA-3         Bangladesh     24 months   observed             observed          -1.2978031   -1.3210763   -1.2745298
JiVitA-4         Bangladesh     Birth       observed             observed          -0.6886269   -0.7410452   -0.6362086
JiVitA-4         Bangladesh     6 months    observed             observed          -0.3898055   -0.4270507   -0.3525603
JiVitA-4         Bangladesh     24 months   observed             observed          -1.2231088   -1.2549632   -1.1912543
Keneba           Gambia         Birth       observed             observed          -1.2349454   -1.2972413   -1.1726496
Keneba           Gambia         6 months    observed             observed          -0.1846038   -0.2354782   -0.1337293
Keneba           Gambia         24 months   observed             observed          -0.8099290   -0.8570608   -0.7627972
LCNI-5           Malawi         6 months    observed             observed           0.4499404    0.3788501    0.5210308
LCNI-5           Malawi         24 months   observed             observed          -0.0477709   -0.1296526    0.0341109
MAL-ED           Bangladesh     Birth       observed             observed          -0.9418605   -1.0869834   -0.7967375
MAL-ED           Bangladesh     6 months    observed             observed          -0.1376763   -0.2664642   -0.0088885
MAL-ED           Bangladesh     24 months   observed             observed          -0.8192925   -0.9412667   -0.6973182
MAL-ED           Brazil         Birth       observed             observed           0.4029032    0.0896793    0.7161272
MAL-ED           Brazil         6 months    observed             observed           0.9720774    0.8078144    1.1363403
MAL-ED           Brazil         24 months   observed             observed           0.4626233    0.2567495    0.6684971
MAL-ED           India          Birth       observed             observed          -0.9324444   -1.2067907   -0.6580982
MAL-ED           India          6 months    observed             observed          -0.7047422   -0.8301590   -0.5793255
MAL-ED           India          24 months   observed             observed          -0.9516520   -1.0670654   -0.8362385
MAL-ED           Nepal          Birth       observed             observed          -0.7684615   -1.1257770   -0.4111460
MAL-ED           Nepal          6 months    observed             observed           0.1104308   -0.0208643    0.2417259
MAL-ED           Nepal          24 months   observed             observed          -0.3749123   -0.4886073   -0.2612173
MAL-ED           Peru           Birth       observed             observed          -0.0520175   -0.1725298    0.0684947
MAL-ED           Peru           6 months    observed             observed           1.0528816    0.9313005    1.1744626
MAL-ED           Peru           24 months   observed             observed           0.1111982   -0.0118399    0.2342362
MAL-ED           South Africa   Birth       observed             observed          -0.1925833   -0.4053570    0.0201904
MAL-ED           South Africa   6 months    observed             observed           0.5421785    0.3900443    0.6943126
MAL-ED           South Africa   24 months   observed             observed           0.4090301    0.2879441    0.5301161
MAL-ED           Tanzania       Birth       observed             observed           0.7624348    0.5710709    0.9537986
MAL-ED           Tanzania       6 months    observed             observed           0.5362213    0.4049390    0.6675036
MAL-ED           Tanzania       24 months   observed             observed           0.0547975   -0.0703378    0.1799328
PROBIT           Belarus        Birth       observed             observed          -1.1491782   -1.3593933   -0.9389630
PROBIT           Belarus        6 months    observed             observed           0.5741099    0.5141290    0.6340908
PROBIT           Belarus        24 months   observed             observed           0.6981406    0.5843775    0.8119038
PROVIDE          Bangladesh     Birth       observed             observed          -1.2984586   -1.3752758   -1.2216415
PROVIDE          Bangladesh     6 months    observed             observed          -0.1990907   -0.2817968   -0.1163845
PROVIDE          Bangladesh     24 months   observed             observed          -0.8928670   -0.9755153   -0.8102187
ResPak           Pakistan       6 months    observed             observed          -0.1641841   -0.3464247    0.0180565
SAS-CompFeed     India          Birth       observed             observed          -0.6700453   -0.8474950   -0.4925957
SAS-CompFeed     India          6 months    observed             observed          -0.6657084   -0.8024377   -0.5289791
SAS-FoodSuppl    India          6 months    observed             observed          -1.0121579   -1.1280429   -0.8962729
TanzaniaChild2   Tanzania       6 months    observed             observed           0.0809332    0.0282644    0.1336020
ZVITAMBO         Zimbabwe       Birth       observed             observed          -0.5151425   -0.5409938   -0.4892911
ZVITAMBO         Zimbabwe       6 months    observed             observed           0.3105514    0.2848767    0.3362262
ZVITAMBO         Zimbabwe       24 months   observed             observed          -1.1825404   -1.2814625   -1.0836183


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed           0.1983147   -0.2645452    0.6611746
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.3645610   -0.6115723   -0.1175498
CMC-V-BCS-2002   India          24 months   optimal              observed           0.0949443   -0.0528468    0.2427355
CMIN             Bangladesh     6 months    optimal              observed          -0.4436351   -0.6979400   -0.1893303
CMIN             Bangladesh     24 months   optimal              observed          -0.0398138   -0.2656621    0.1860345
CONTENT          Peru           6 months    optimal              observed          -0.1566328   -0.3835224    0.0702568
CONTENT          Peru           24 months   optimal              observed           0.1374038   -0.1292219    0.4040296
Guatemala BSC    Guatemala      6 months    optimal              observed          -0.2147012   -0.4029064   -0.0264961
IRC              India          Birth       optimal              observed          -0.4874635   -0.8376356   -0.1372915
IRC              India          6 months    optimal              observed          -0.0547335   -0.3147952    0.2053283
IRC              India          24 months   optimal              observed          -0.1664040   -0.3102720   -0.0225359
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.0990890   -0.1248608   -0.0733172
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0774048   -0.1122153   -0.0425943
JiVitA-3         Bangladesh     24 months   optimal              observed          -0.2084234   -0.2423443   -0.1745024
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2087515   -0.3345470   -0.0829561
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.0665982   -0.1184640   -0.0147323
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.1939680   -0.2720534   -0.1158825
Keneba           Gambia         Birth       optimal              observed          -0.1708930   -0.2774673   -0.0643186
Keneba           Gambia         6 months    optimal              observed          -0.1178178   -0.1969885   -0.0386472
Keneba           Gambia         24 months   optimal              observed          -0.1547149   -0.2252374   -0.0841924
LCNI-5           Malawi         6 months    optimal              observed          -0.1700208   -0.3455900    0.0055483
LCNI-5           Malawi         24 months   optimal              observed           0.0244013   -0.1041539    0.1529566
MAL-ED           Bangladesh     Birth       optimal              observed           0.0868073   -0.1868757    0.3604902
MAL-ED           Bangladesh     6 months    optimal              observed           0.3051143    0.0600953    0.5501334
MAL-ED           Bangladesh     24 months   optimal              observed          -0.1076466   -0.2789702    0.0636770
MAL-ED           Brazil         Birth       optimal              observed          -0.2708055   -0.7796498    0.2380388
MAL-ED           Brazil         6 months    optimal              observed           0.1091018   -0.1712003    0.3894039
MAL-ED           Brazil         24 months   optimal              observed          -0.2034092   -0.4687250    0.0619066
MAL-ED           India          Birth       optimal              observed          -0.6744049   -1.0842447   -0.2645652
MAL-ED           India          6 months    optimal              observed          -0.1346417   -0.3367139    0.0674304
MAL-ED           India          24 months   optimal              observed          -0.1135885   -0.2948786    0.0677016
MAL-ED           Nepal          Birth       optimal              observed           0.1513381   -0.3600130    0.6626891
MAL-ED           Nepal          6 months    optimal              observed           0.1488913   -0.0425062    0.3402889
MAL-ED           Nepal          24 months   optimal              observed          -0.0610379   -0.2448273    0.1227515
MAL-ED           Peru           Birth       optimal              observed          -0.1748944   -0.3928964    0.0431075
MAL-ED           Peru           6 months    optimal              observed           0.2327884    0.0258017    0.4397752
MAL-ED           Peru           24 months   optimal              observed           0.1524002   -0.0468405    0.3516409
MAL-ED           South Africa   Birth       optimal              observed           0.4031442    0.0508647    0.7554236
MAL-ED           South Africa   6 months    optimal              observed          -0.1943000   -0.5696616    0.1810616
MAL-ED           South Africa   24 months   optimal              observed          -0.2158271   -0.4355268    0.0038727
MAL-ED           Tanzania       Birth       optimal              observed          -0.0951076   -0.5432507    0.3530355
MAL-ED           Tanzania       6 months    optimal              observed          -0.2400660   -0.5405680    0.0604360
MAL-ED           Tanzania       24 months   optimal              observed           0.0263189   -0.1467047    0.1993424
PROBIT           Belarus        Birth       optimal              observed           0.0045523   -0.0699563    0.0790609
PROBIT           Belarus        6 months    optimal              observed           0.0494843    0.0039043    0.0950642
PROBIT           Belarus        24 months   optimal              observed           0.1218244    0.0400623    0.2035865
PROVIDE          Bangladesh     Birth       optimal              observed          -0.3732202   -0.5518798   -0.1945607
PROVIDE          Bangladesh     6 months    optimal              observed          -0.1529138   -0.2779690   -0.0278586
PROVIDE          Bangladesh     24 months   optimal              observed          -0.1457867   -0.3005977    0.0090242
ResPak           Pakistan       6 months    optimal              observed           0.1443092   -0.3117144    0.6003328
SAS-CompFeed     India          Birth       optimal              observed          -0.3760427   -0.4841987   -0.2678867
SAS-CompFeed     India          6 months    optimal              observed          -0.3438894   -0.4262372   -0.2615416
SAS-FoodSuppl    India          6 months    optimal              observed          -0.0798662   -0.5018944    0.3421620
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1465935   -0.2423085   -0.0508785
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1607053   -0.2055212   -0.1158893
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0651709   -0.1105314   -0.0198103
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.2187455   -0.4347910   -0.0026999

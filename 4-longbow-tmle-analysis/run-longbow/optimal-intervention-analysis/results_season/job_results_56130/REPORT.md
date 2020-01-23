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
PROBIT           Belarus        Birth                    1     3764   13830
PROBIT           Belarus        Birth                    2     4131   13830
PROBIT           Belarus        Birth                    3     2702   13830
PROBIT           Belarus        Birth                    4     3233   13830
PROBIT           Belarus        6 months                 1     3618   15757
PROBIT           Belarus        6 months                 2     3118   15757
PROBIT           Belarus        6 months                 3     4510   15757
PROBIT           Belarus        6 months                 4     4511   15757
PROBIT           Belarus        24 months                1     1073    3971
PROBIT           Belarus        24 months                2     1129    3971
PROBIT           Belarus        24 months                3      835    3971
PROBIT           Belarus        24 months                4      934    3971
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
![](/tmp/49085860-fce5-4c89-aa8e-84882e4c90cb/32276b52-adcc-4f7a-af3e-28012839e1be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -1.0045081   -1.6917804   -0.3172358
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.1374430   -0.4296953    0.1548092
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.5288326   -0.7071303   -0.3505349
CMIN             Bangladesh     6 months    optimal              observed          -0.1185573   -0.3925733    0.1554586
CMIN             Bangladesh     24 months   optimal              observed          -0.6322650   -0.8580370   -0.4064930
CONTENT          Peru           6 months    optimal              observed           1.2062039    0.9446906    1.4677173
CONTENT          Peru           24 months   optimal              observed           0.3476292    0.0418370    0.6534213
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1238263   -0.0936195    0.3412721
IRC              India          Birth       optimal              observed          -0.5181091   -0.9275438   -0.1086745
IRC              India          6 months    optimal              observed          -0.3769457   -0.6958155   -0.0580758
IRC              India          24 months   optimal              observed          -0.5768471   -0.7403953   -0.4132990
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.6782502   -0.7117730   -0.6447274
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.5160109   -0.5554888   -0.4765330
JiVitA-3         Bangladesh     24 months   optimal              observed          -1.0894244   -1.1291310   -1.0497178
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.4778467   -0.6099451   -0.3457484
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.3236067   -0.3872503   -0.2599631
JiVitA-4         Bangladesh     24 months   optimal              observed          -1.0292047   -1.1135567   -0.9448528
Keneba           Gambia         Birth       optimal              observed          -1.1356739   -1.2513016   -1.0200463
Keneba           Gambia         6 months    optimal              observed          -0.0669464   -0.1605907    0.0266979
Keneba           Gambia         24 months   optimal              observed          -0.6891694   -0.7703955   -0.6079434
LCNI-5           Malawi         6 months    optimal              observed           0.6235648    0.4371331    0.8099966
LCNI-5           Malawi         24 months   optimal              observed          -0.0974775   -0.2475748    0.0526198
MAL-ED           Bangladesh     Birth       optimal              observed          -1.2889862   -1.5670531   -1.0109192
MAL-ED           Bangladesh     6 months    optimal              observed          -0.4718048   -0.7573083   -0.1863013
MAL-ED           Bangladesh     24 months   optimal              observed          -0.8561085   -1.0600919   -0.6521251
MAL-ED           Brazil         Birth       optimal              observed           0.1395007   -0.5595714    0.8385728
MAL-ED           Brazil         6 months    optimal              observed           1.0825906    0.7688798    1.3963015
MAL-ED           Brazil         24 months   optimal              observed           0.6509282    0.3113069    0.9905495
MAL-ED           India          Birth       optimal              observed          -0.2613326   -0.7490167    0.2263515
MAL-ED           India          6 months    optimal              observed          -0.7230701   -0.9774650   -0.4686751
MAL-ED           India          24 months   optimal              observed          -0.8338502   -1.0458137   -0.6218866
MAL-ED           Nepal          Birth       optimal              observed          -0.4110271   -1.6227870    0.8007328
MAL-ED           Nepal          6 months    optimal              observed          -0.1731178   -0.4386743    0.0924387
MAL-ED           Nepal          24 months   optimal              observed          -0.2716867   -0.4601570   -0.0832164
MAL-ED           Peru           Birth       optimal              observed           0.1176474   -0.1289789    0.3642737
MAL-ED           Peru           6 months    optimal              observed           0.9276762    0.6482927    1.2070596
MAL-ED           Peru           24 months   optimal              observed          -0.2439040   -0.4634226   -0.0243855
MAL-ED           South Africa   Birth       optimal              observed          -0.4934439   -0.9657706   -0.0211171
MAL-ED           South Africa   6 months    optimal              observed           0.3368075    0.0401697    0.6334454
MAL-ED           South Africa   24 months   optimal              observed           0.6295684    0.3856011    0.8735356
MAL-ED           Tanzania       Birth       optimal              observed           0.5653594    0.2292005    0.9015182
MAL-ED           Tanzania       6 months    optimal              observed           0.7743758    0.4414363    1.1073153
MAL-ED           Tanzania       24 months   optimal              observed           0.1002113   -0.0806801    0.2811026
PROBIT           Belarus        Birth       optimal              observed          -1.1781077   -1.4173321   -0.9388832
PROBIT           Belarus        6 months    optimal              observed           0.5387556    0.4612934    0.6162179
PROBIT           Belarus        24 months   optimal              observed           0.6391532    0.4537899    0.8245166
PROVIDE          Bangladesh     Birth       optimal              observed          -0.9247875   -1.1191487   -0.7304264
PROVIDE          Bangladesh     6 months    optimal              observed          -0.0376257   -0.1825901    0.1073388
PROVIDE          Bangladesh     24 months   optimal              observed          -0.8141072   -0.9825508   -0.6456635
ResPak           Pakistan       6 months    optimal              observed          -0.1936904   -0.6861553    0.2987746
SAS-CompFeed     India          Birth       optimal              observed          -0.2940026   -0.4025280   -0.1854773
SAS-CompFeed     India          6 months    optimal              observed          -0.3218190   -0.5152154   -0.1284226
SAS-FoodSuppl    India          6 months    optimal              observed          -0.8279712   -1.2856889   -0.3702536
TanzaniaChild2   Tanzania       6 months    optimal              observed           0.2290191    0.1202844    0.3377539
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3541899   -0.4060714   -0.3023084
ZVITAMBO         Zimbabwe       6 months    optimal              observed           0.3758516    0.3230094    0.4286938
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.9650332   -1.1967892   -0.7332772


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       observed             observed          -0.4648256   -0.7643210   -0.1653302
CMC-V-BCS-2002   India          6 months    observed             observed          -0.5026766   -0.6536848   -0.3516685
CMC-V-BCS-2002   India          24 months   observed             observed          -0.5571505   -0.6585247   -0.4557763
CMIN             Bangladesh     6 months    observed             observed          -0.5780453   -0.7226627   -0.4334279
CMIN             Bangladesh     24 months   observed             observed          -0.8535391   -0.9644236   -0.7426546
CONTENT          Peru           6 months    observed             observed           1.0684318    0.9515274    1.1853362
CONTENT          Peru           24 months   observed             observed           0.5668293    0.4302437    0.7034148
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
PROBIT           Belarus        Birth       observed             observed          -1.1448633   -1.3544229   -0.9353037
PROBIT           Belarus        6 months    observed             observed           0.5789633    0.5190130    0.6389137
PROBIT           Belarus        24 months   observed             observed           0.6863435    0.5745700    0.7981170
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
CMC-V-BCS-2002   India          Birth       optimal              observed           0.5396825   -0.0431252    1.1224903
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.3652336   -0.6129062   -0.1175610
CMC-V-BCS-2002   India          24 months   optimal              observed          -0.0283179   -0.1864571    0.1298213
CMIN             Bangladesh     6 months    optimal              observed          -0.4594879   -0.7169054   -0.2020704
CMIN             Bangladesh     24 months   optimal              observed          -0.2212741   -0.4202365   -0.0223116
CONTENT          Peru           6 months    optimal              observed          -0.1377721   -0.3729401    0.0973958
CONTENT          Peru           24 months   optimal              observed           0.2192001   -0.0693314    0.5077316
Guatemala BSC    Guatemala      6 months    optimal              observed          -0.2078397   -0.3935794   -0.0220999
IRC              India          Birth       optimal              observed          -0.4924740   -0.8520170   -0.1329309
IRC              India          6 months    optimal              observed          -0.2219841   -0.5097805    0.0658123
IRC              India          24 months   optimal              observed          -0.1689679   -0.3112780   -0.0266577
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.0993426   -0.1250838   -0.0736015
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0775053   -0.1122766   -0.0427339
JiVitA-3         Bangladesh     24 months   optimal              observed          -0.2083787   -0.2423202   -0.1744371
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2107801   -0.3363489   -0.0852114
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.0661988   -0.1182164   -0.0141812
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.1939040   -0.2715694   -0.1162387
Keneba           Gambia         Birth       optimal              observed          -0.0992715   -0.2027773    0.0042344
Keneba           Gambia         6 months    optimal              observed          -0.1176574   -0.1968680   -0.0384468
Keneba           Gambia         24 months   optimal              observed          -0.1207595   -0.1922233   -0.0492958
LCNI-5           Malawi         6 months    optimal              observed          -0.1736244   -0.3485970    0.0013481
LCNI-5           Malawi         24 months   optimal              observed           0.0497067   -0.0788055    0.1782188
MAL-ED           Bangladesh     Birth       optimal              observed           0.3471257    0.0955686    0.5986828
MAL-ED           Bangladesh     6 months    optimal              observed           0.3341285    0.0867397    0.5815172
MAL-ED           Bangladesh     24 months   optimal              observed           0.0368161   -0.1370445    0.2106767
MAL-ED           Brazil         Birth       optimal              observed           0.2634025   -0.3397647    0.8665698
MAL-ED           Brazil         6 months    optimal              observed          -0.1105133   -0.4019136    0.1808870
MAL-ED           Brazil         24 months   optimal              observed          -0.1883049   -0.4550389    0.0784290
MAL-ED           India          Birth       optimal              observed          -0.6711118   -1.0875192   -0.2547045
MAL-ED           India          6 months    optimal              observed           0.0183278   -0.1984995    0.2351552
MAL-ED           India          24 months   optimal              observed          -0.1178018   -0.2989494    0.0633458
MAL-ED           Nepal          Birth       optimal              observed          -0.3574344   -1.4438185    0.7289496
MAL-ED           Nepal          6 months    optimal              observed           0.2835485    0.0508734    0.5162237
MAL-ED           Nepal          24 months   optimal              observed          -0.1032256   -0.2713993    0.0649481
MAL-ED           Peru           Birth       optimal              observed          -0.1696649   -0.3901962    0.0508663
MAL-ED           Peru           6 months    optimal              observed           0.1252054   -0.1309077    0.3813186
MAL-ED           Peru           24 months   optimal              observed           0.3551022    0.1546880    0.5555164
MAL-ED           South Africa   Birth       optimal              observed           0.3008606   -0.1039919    0.7057130
MAL-ED           South Africa   6 months    optimal              observed           0.2053710   -0.0759320    0.4866740
MAL-ED           South Africa   24 months   optimal              observed          -0.2205382   -0.4373001   -0.0037764
MAL-ED           Tanzania       Birth       optimal              observed           0.1970754   -0.1459796    0.5401304
MAL-ED           Tanzania       6 months    optimal              observed          -0.2381544   -0.5400293    0.0637205
MAL-ED           Tanzania       24 months   optimal              observed          -0.0454138   -0.2226987    0.1318712
PROBIT           Belarus        Birth       optimal              observed           0.0332443   -0.0406256    0.1071143
PROBIT           Belarus        6 months    optimal              observed           0.0402077   -0.0051459    0.0855613
PROBIT           Belarus        24 months   optimal              observed           0.0471902   -0.0655303    0.1599108
PROVIDE          Bangladesh     Birth       optimal              observed          -0.3736711   -0.5550370   -0.1923053
PROVIDE          Bangladesh     6 months    optimal              observed          -0.1614650   -0.2874502   -0.0354798
PROVIDE          Bangladesh     24 months   optimal              observed          -0.0787599   -0.2387066    0.0811869
ResPak           Pakistan       6 months    optimal              observed           0.0295063   -0.4417469    0.5007594
SAS-CompFeed     India          Birth       optimal              observed          -0.3760427   -0.4841987   -0.2678867
SAS-CompFeed     India          6 months    optimal              observed          -0.3438894   -0.4262372   -0.2615416
SAS-FoodSuppl    India          6 months    optimal              observed          -0.1841867   -0.6123117    0.2439383
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1480860   -0.2438465   -0.0523255
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1609526   -0.2057584   -0.1161468
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0653001   -0.1106603   -0.0199400
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.2175072   -0.4343642   -0.0006503

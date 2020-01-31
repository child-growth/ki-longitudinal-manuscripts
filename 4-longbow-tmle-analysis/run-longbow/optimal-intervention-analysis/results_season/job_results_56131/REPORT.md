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
CMC-V-BCS-2002   India          24 months                1      101     371
CMC-V-BCS-2002   India          24 months                2       99     371
CMC-V-BCS-2002   India          24 months                3      116     371
CMC-V-BCS-2002   India          24 months                4       55     371
CMIN             Bangladesh     Birth                    1        7      26
CMIN             Bangladesh     Birth                    2        6      26
CMIN             Bangladesh     Birth                    3        6      26
CMIN             Bangladesh     Birth                    4        7      26
CMIN             Bangladesh     6 months                 1       50     243
CMIN             Bangladesh     6 months                 2       62     243
CMIN             Bangladesh     6 months                 3       71     243
CMIN             Bangladesh     6 months                 4       60     243
CMIN             Bangladesh     24 months                1       78     242
CMIN             Bangladesh     24 months                2       69     242
CMIN             Bangladesh     24 months                3       58     242
CMIN             Bangladesh     24 months                4       37     242
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
EE               Pakistan       24 months                1        8     167
EE               Pakistan       24 months                2      159     167
EE               Pakistan       24 months                3        0     167
EE               Pakistan       24 months                4        0     167
GMS-Nepal        Nepal          Birth                    1        0     696
GMS-Nepal        Nepal          Birth                    2        0     696
GMS-Nepal        Nepal          Birth                    3      161     696
GMS-Nepal        Nepal          Birth                    4      535     696
GMS-Nepal        Nepal          6 months                 1      502     564
GMS-Nepal        Nepal          6 months                 2       62     564
GMS-Nepal        Nepal          6 months                 3        0     564
GMS-Nepal        Nepal          6 months                 4        0     564
GMS-Nepal        Nepal          24 months                1        0     488
GMS-Nepal        Nepal          24 months                2        0     488
GMS-Nepal        Nepal          24 months                3       39     488
GMS-Nepal        Nepal          24 months                4      449     488
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
IRC              India          24 months                1      114     409
IRC              India          24 months                2      119     409
IRC              India          24 months                3       85     409
IRC              India          24 months                4       91     409
JiVitA-3         Bangladesh     Birth                    1     6556   22455
JiVitA-3         Bangladesh     Birth                    2     7177   22455
JiVitA-3         Bangladesh     Birth                    3     4636   22455
JiVitA-3         Bangladesh     Birth                    4     4086   22455
JiVitA-3         Bangladesh     6 months                 1     3724   16811
JiVitA-3         Bangladesh     6 months                 2     3587   16811
JiVitA-3         Bangladesh     6 months                 3     5224   16811
JiVitA-3         Bangladesh     6 months                 4     4276   16811
JiVitA-3         Bangladesh     24 months                1     2626    8631
JiVitA-3         Bangladesh     24 months                2     2609    8631
JiVitA-3         Bangladesh     24 months                3     1644    8631
JiVitA-3         Bangladesh     24 months                4     1752    8631
JiVitA-4         Bangladesh     Birth                    1      333    2823
JiVitA-4         Bangladesh     Birth                    2      216    2823
JiVitA-4         Bangladesh     Birth                    3     1312    2823
JiVitA-4         Bangladesh     Birth                    4      962    2823
JiVitA-4         Bangladesh     6 months                 1     1469    4831
JiVitA-4         Bangladesh     6 months                 2     2613    4831
JiVitA-4         Bangladesh     6 months                 3      628    4831
JiVitA-4         Bangladesh     6 months                 4      121    4831
JiVitA-4         Bangladesh     24 months                1      694    4752
JiVitA-4         Bangladesh     24 months                2      579    4752
JiVitA-4         Bangladesh     24 months                3     2080    4752
JiVitA-4         Bangladesh     24 months                4     1399    4752
Keneba           Gambia         Birth                    1      448    1543
Keneba           Gambia         Birth                    2      427    1543
Keneba           Gambia         Birth                    3      378    1543
Keneba           Gambia         Birth                    4      290    1543
Keneba           Gambia         6 months                 1      464    2089
Keneba           Gambia         6 months                 2      459    2089
Keneba           Gambia         6 months                 3      606    2089
Keneba           Gambia         6 months                 4      560    2089
Keneba           Gambia         24 months                1      501    1725
Keneba           Gambia         24 months                2      494    1725
Keneba           Gambia         24 months                3      388    1725
Keneba           Gambia         24 months                4      342    1725
LCNI-5           Malawi         6 months                 1      204     839
LCNI-5           Malawi         6 months                 2      319     839
LCNI-5           Malawi         6 months                 3      113     839
LCNI-5           Malawi         6 months                 4      203     839
LCNI-5           Malawi         24 months                1      148     579
LCNI-5           Malawi         24 months                2       81     579
LCNI-5           Malawi         24 months                3      220     579
LCNI-5           Malawi         24 months                4      130     579
MAL-ED           Bangladesh     Birth                    1       68     231
MAL-ED           Bangladesh     Birth                    2       51     231
MAL-ED           Bangladesh     Birth                    3       64     231
MAL-ED           Bangladesh     Birth                    4       48     231
MAL-ED           Bangladesh     6 months                 1       55     241
MAL-ED           Bangladesh     6 months                 2       71     241
MAL-ED           Bangladesh     6 months                 3       60     241
MAL-ED           Bangladesh     6 months                 4       55     241
MAL-ED           Bangladesh     24 months                1       73     212
MAL-ED           Bangladesh     24 months                2       51     212
MAL-ED           Bangladesh     24 months                3       48     212
MAL-ED           Bangladesh     24 months                4       40     212
MAL-ED           Brazil         Birth                    1       19      65
MAL-ED           Brazil         Birth                    2       12      65
MAL-ED           Brazil         Birth                    3       12      65
MAL-ED           Brazil         Birth                    4       22      65
MAL-ED           Brazil         6 months                 1       64     209
MAL-ED           Brazil         6 months                 2       51     209
MAL-ED           Brazil         6 months                 3       44     209
MAL-ED           Brazil         6 months                 4       50     209
MAL-ED           Brazil         24 months                1       65     169
MAL-ED           Brazil         24 months                2       30     169
MAL-ED           Brazil         24 months                3       43     169
MAL-ED           Brazil         24 months                4       31     169
MAL-ED           India          Birth                    1       10      47
MAL-ED           India          Birth                    2       11      47
MAL-ED           India          Birth                    3       12      47
MAL-ED           India          Birth                    4       14      47
MAL-ED           India          6 months                 1       66     236
MAL-ED           India          6 months                 2       42     236
MAL-ED           India          6 months                 3       73     236
MAL-ED           India          6 months                 4       55     236
MAL-ED           India          24 months                1       65     227
MAL-ED           India          24 months                2       71     227
MAL-ED           India          24 months                3       54     227
MAL-ED           India          24 months                4       37     227
MAL-ED           Nepal          Birth                    1        5      27
MAL-ED           Nepal          Birth                    2       10      27
MAL-ED           Nepal          Birth                    3        7      27
MAL-ED           Nepal          Birth                    4        5      27
MAL-ED           Nepal          6 months                 1       60     236
MAL-ED           Nepal          6 months                 2       59     236
MAL-ED           Nepal          6 months                 3       59     236
MAL-ED           Nepal          6 months                 4       58     236
MAL-ED           Nepal          24 months                1       66     228
MAL-ED           Nepal          24 months                2       61     228
MAL-ED           Nepal          24 months                3       63     228
MAL-ED           Nepal          24 months                4       38     228
MAL-ED           Peru           Birth                    1       49     233
MAL-ED           Peru           Birth                    2       54     233
MAL-ED           Peru           Birth                    3       69     233
MAL-ED           Peru           Birth                    4       61     233
MAL-ED           Peru           6 months                 1       96     273
MAL-ED           Peru           6 months                 2       77     273
MAL-ED           Peru           6 months                 3       60     273
MAL-ED           Peru           6 months                 4       40     273
MAL-ED           Peru           24 months                1       55     201
MAL-ED           Peru           24 months                2       46     201
MAL-ED           Peru           24 months                3       54     201
MAL-ED           Peru           24 months                4       46     201
MAL-ED           South Africa   Birth                    1       25     123
MAL-ED           South Africa   Birth                    2       23     123
MAL-ED           South Africa   Birth                    3       35     123
MAL-ED           South Africa   Birth                    4       40     123
MAL-ED           South Africa   6 months                 1      106     254
MAL-ED           South Africa   6 months                 2       67     254
MAL-ED           South Africa   6 months                 3       45     254
MAL-ED           South Africa   6 months                 4       36     254
MAL-ED           South Africa   24 months                1       55     238
MAL-ED           South Africa   24 months                2       39     238
MAL-ED           South Africa   24 months                3       86     238
MAL-ED           South Africa   24 months                4       58     238
MAL-ED           Tanzania       Birth                    1       18     125
MAL-ED           Tanzania       Birth                    2       35     125
MAL-ED           Tanzania       Birth                    3       34     125
MAL-ED           Tanzania       Birth                    4       38     125
MAL-ED           Tanzania       6 months                 1       71     247
MAL-ED           Tanzania       6 months                 2       80     247
MAL-ED           Tanzania       6 months                 3       53     247
MAL-ED           Tanzania       6 months                 4       43     247
MAL-ED           Tanzania       24 months                1       56     214
MAL-ED           Tanzania       24 months                2       59     214
MAL-ED           Tanzania       24 months                3       59     214
MAL-ED           Tanzania       24 months                4       40     214
PROBIT           Belarus        Birth                    1     3780   13890
PROBIT           Belarus        Birth                    2     4150   13890
PROBIT           Belarus        Birth                    3     2715   13890
PROBIT           Belarus        Birth                    4     3245   13890
PROBIT           Belarus        6 months                 1     3612   15761
PROBIT           Belarus        6 months                 2     3117   15761
PROBIT           Belarus        6 months                 3     4512   15761
PROBIT           Belarus        6 months                 4     4520   15761
PROBIT           Belarus        24 months                1     1095    4035
PROBIT           Belarus        24 months                2     1147    4035
PROBIT           Belarus        24 months                3      845    4035
PROBIT           Belarus        24 months                4      948    4035
PROVIDE          Bangladesh     Birth                    1       78     539
PROVIDE          Bangladesh     Birth                    2      163     539
PROVIDE          Bangladesh     Birth                    3       97     539
PROVIDE          Bangladesh     Birth                    4      201     539
PROVIDE          Bangladesh     6 months                 1      211     604
PROVIDE          Bangladesh     6 months                 2      122     604
PROVIDE          Bangladesh     6 months                 3      175     604
PROVIDE          Bangladesh     6 months                 4       96     604
PROVIDE          Bangladesh     24 months                1       99     578
PROVIDE          Bangladesh     24 months                2      186     578
PROVIDE          Bangladesh     24 months                3      104     578
PROVIDE          Bangladesh     24 months                4      189     578
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
TanzaniaChild2   Tanzania       24 months                1        0       6
TanzaniaChild2   Tanzania       24 months                2        4       6
TanzaniaChild2   Tanzania       24 months                3        0       6
TanzaniaChild2   Tanzania       24 months                4        2       6
ZVITAMBO         Zimbabwe       Birth                    1     3733   13875
ZVITAMBO         Zimbabwe       Birth                    2     3153   13875
ZVITAMBO         Zimbabwe       Birth                    3     3455   13875
ZVITAMBO         Zimbabwe       Birth                    4     3534   13875
ZVITAMBO         Zimbabwe       6 months                 1     2162    8669
ZVITAMBO         Zimbabwe       6 months                 2     2252    8669
ZVITAMBO         Zimbabwe       6 months                 3     2013    8669
ZVITAMBO         Zimbabwe       6 months                 4     2242    8669
ZVITAMBO         Zimbabwe       24 months                1      273    1640
ZVITAMBO         Zimbabwe       24 months                2      536    1640
ZVITAMBO         Zimbabwe       24 months                3      236    1640
ZVITAMBO         Zimbabwe       24 months                4      595    1640


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
![](/tmp/d70a9e6f-4887-4703-8668-3f54afc69d24/19d7f583-6340-4d7a-a816-c7c178872474/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.9887966   -1.3471854   -0.6304078
CMC-V-BCS-2002   India          6 months    optimal              observed          -1.2860682   -1.5516785   -1.0204578
CMC-V-BCS-2002   India          24 months   optimal              observed          -2.8714911   -3.1031001   -2.6398822
CMIN             Bangladesh     Birth       optimal              observed          -2.3388900   -3.4464366   -1.2313435
CMIN             Bangladesh     6 months    optimal              observed          -1.3845350   -1.5988461   -1.1702238
CMIN             Bangladesh     24 months   optimal              observed          -2.2947125   -2.5431889   -2.0462361
CONTENT          Peru           6 months    optimal              observed          -0.0656464   -0.5141736    0.3828808
CONTENT          Peru           24 months   optimal              observed          -0.5754530   -0.9595973   -0.1913088
Guatemala BSC    Guatemala      6 months    optimal              observed          -1.6726190   -1.8533901   -1.4918479
IRC              India          Birth       optimal              observed           0.1361907   -0.3007813    0.5731627
IRC              India          6 months    optimal              observed          -0.9300323   -1.1918403   -0.6682242
IRC              India          24 months   optimal              observed          -1.7681041   -1.9476950   -1.5885131
JiVitA-3         Bangladesh     Birth       optimal              observed          -1.4498270   -1.4874315   -1.4122226
JiVitA-3         Bangladesh     6 months    optimal              observed          -1.2694679   -1.3124446   -1.2264912
JiVitA-3         Bangladesh     24 months   optimal              observed          -1.9143672   -1.9693196   -1.8594147
JiVitA-4         Bangladesh     Birth       optimal              observed          -1.2938129   -1.4269246   -1.1607012
JiVitA-4         Bangladesh     6 months    optimal              observed          -1.2398776   -1.3215116   -1.1582436
JiVitA-4         Bangladesh     24 months   optimal              observed          -1.6204360   -1.7050003   -1.5358718
Keneba           Gambia         Birth       optimal              observed           0.1399842    0.0190897    0.2608787
Keneba           Gambia         6 months    optimal              observed          -0.8245228   -0.9152636   -0.7337820
Keneba           Gambia         24 months   optimal              observed          -1.5285659   -1.6248960   -1.4322359
LCNI-5           Malawi         6 months    optimal              observed          -1.7079257   -1.8480492   -1.5678022
LCNI-5           Malawi         24 months   optimal              observed          -2.0032816   -2.2132803   -1.7932829
MAL-ED           Bangladesh     Birth       optimal              observed          -1.3556224   -1.6261092   -1.0851357
MAL-ED           Bangladesh     6 months    optimal              observed          -1.2678206   -1.4890824   -1.0465587
MAL-ED           Bangladesh     24 months   optimal              observed          -2.3620939   -2.5908870   -2.1333007
MAL-ED           Brazil         Birth       optimal              observed          -0.8381655   -1.3622373   -0.3140937
MAL-ED           Brazil         6 months    optimal              observed           0.2878064    0.0161926    0.5594203
MAL-ED           Brazil         24 months   optimal              observed           0.4427292    0.1309214    0.7545370
MAL-ED           India          Birth       optimal              observed          -0.7123891   -1.2128319   -0.2119462
MAL-ED           India          6 months    optimal              observed          -1.3309033   -1.5536066   -1.1082000
MAL-ED           India          24 months   optimal              observed          -2.0426822   -2.2953166   -1.7900478
MAL-ED           Nepal          Birth       optimal              observed          -0.7172719   -1.6329310    0.1983871
MAL-ED           Nepal          6 months    optimal              observed          -0.4929251   -0.6954574   -0.2903927
MAL-ED           Nepal          24 months   optimal              observed          -0.9961194   -1.2743921   -0.7178466
MAL-ED           Peru           Birth       optimal              observed          -0.6718214   -0.9291147   -0.4145282
MAL-ED           Peru           6 months    optimal              observed          -1.2920577   -1.5391560   -1.0449594
MAL-ED           Peru           24 months   optimal              observed          -1.5245959   -1.7632163   -1.2859755
MAL-ED           South Africa   Birth       optimal              observed          -0.4786086   -0.9172636   -0.0399536
MAL-ED           South Africa   6 months    optimal              observed          -0.7112090   -1.0074849   -0.4149332
MAL-ED           South Africa   24 months   optimal              observed          -1.2131809   -1.5560193   -0.8703424
MAL-ED           Tanzania       Birth       optimal              observed          -0.8741094   -1.2635140   -0.4847048
MAL-ED           Tanzania       6 months    optimal              observed          -1.1609239   -1.4174716   -0.9043761
MAL-ED           Tanzania       24 months   optimal              observed          -2.7191138   -2.9732848   -2.4649427
PROBIT           Belarus        Birth       optimal              observed           1.3787738    1.2096173    1.5479303
PROBIT           Belarus        6 months    optimal              observed           0.1890923    0.0807313    0.2974532
PROBIT           Belarus        24 months   optimal              observed          -0.0365855   -0.2403660    0.1671949
PROVIDE          Bangladesh     Birth       optimal              observed          -0.8984465   -1.0442733   -0.7526197
PROVIDE          Bangladesh     6 months    optimal              observed          -0.8573604   -1.0317079   -0.6830128
PROVIDE          Bangladesh     24 months   optimal              observed          -1.6963157   -1.8662282   -1.5264031
ResPak           Pakistan       6 months    optimal              observed          -1.7259961   -2.3694615   -1.0825308
SAS-CompFeed     India          Birth       optimal              observed          -1.3137866   -1.4624821   -1.1650912
SAS-CompFeed     India          6 months    optimal              observed          -1.3085853   -1.4410899   -1.1760808
SAS-FoodSuppl    India          6 months    optimal              observed          -1.8017188   -1.9721218   -1.6313159
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.3508295   -0.4551809   -0.2464782
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3651644   -0.4032656   -0.3270632
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.7952651   -0.8462675   -0.7442627
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -1.5386066   -1.6360801   -1.4411331


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       observed             observed          -0.9611957   -1.1776967   -0.7446946
CMC-V-BCS-2002   India          6 months    observed             observed          -1.4234508   -1.5645974   -1.2823042
CMC-V-BCS-2002   India          24 months   observed             observed          -2.5588679   -2.6583730   -2.4593629
CMIN             Bangladesh     Birth       observed             observed          -1.8811538   -2.5124807   -1.2498270
CMIN             Bangladesh     6 months    observed             observed          -1.7844376   -1.9222926   -1.6465825
CMIN             Bangladesh     24 months   observed             observed          -2.5109504   -2.6361514   -2.3857494
CONTENT          Peru           6 months    observed             observed          -0.3139217   -0.4868486   -0.1409948
CONTENT          Peru           24 months   observed             observed          -0.6962195   -0.8674103   -0.5250287
Guatemala BSC    Guatemala      6 months    observed             observed          -1.5619008   -1.6727702   -1.4510313
IRC              India          Birth       observed             observed          -0.3080412   -0.4687931   -0.1472894
IRC              India          6 months    observed             observed          -1.2344062   -1.3658524   -1.1029600
IRC              India          24 months   observed             observed          -1.7987775   -1.8923914   -1.7051636
JiVitA-3         Bangladesh     Birth       observed             observed          -1.5894148   -1.6086362   -1.5701935
JiVitA-3         Bangladesh     6 months    observed             observed          -1.3130932   -1.3362359   -1.2899505
JiVitA-3         Bangladesh     24 months   observed             observed          -2.0131862   -2.0408408   -1.9855316
JiVitA-4         Bangladesh     Birth       observed             observed          -1.5232908   -1.5723277   -1.4742539
JiVitA-4         Bangladesh     6 months    observed             observed          -1.3447940   -1.3820261   -1.3075620
JiVitA-4         Bangladesh     24 months   observed             observed          -1.7807218   -1.8162478   -1.7451958
Keneba           Gambia         Birth       observed             observed           0.0308036   -0.0328378    0.0944451
Keneba           Gambia         6 months    observed             observed          -0.9036375   -0.9508087   -0.8564663
Keneba           Gambia         24 months   observed             observed          -1.5774356   -1.6272400   -1.5276311
LCNI-5           Malawi         6 months    observed             observed          -1.6601907   -1.7297701   -1.5906113
LCNI-5           Malawi         24 months   observed             observed          -1.8861485   -1.9671802   -1.8051169
MAL-ED           Bangladesh     Birth       observed             observed          -1.1180952   -1.2525408   -0.9836496
MAL-ED           Bangladesh     6 months    observed             observed          -1.2049931   -1.3222136   -1.0877726
MAL-ED           Bangladesh     24 months   observed             observed          -1.9783962   -2.1050210   -1.8517715
MAL-ED           Brazil         Birth       observed             observed          -0.6760000   -0.9521457   -0.3998543
MAL-ED           Brazil         6 months    observed             observed           0.0475758   -0.0963508    0.1915023
MAL-ED           Brazil         24 months   observed             observed           0.0061144   -0.1625850    0.1748138
MAL-ED           India          Birth       observed             observed          -1.2036170   -1.4976814   -0.9095527
MAL-ED           India          6 months    observed             observed          -1.2115254   -1.3298727   -1.0931782
MAL-ED           India          24 months   observed             observed          -1.8861894   -2.0110006   -1.7613783
MAL-ED           Nepal          Birth       observed             observed          -0.8533333   -1.2104864   -0.4961803
MAL-ED           Nepal          6 months    observed             observed          -0.5615819   -0.6741832   -0.4489807
MAL-ED           Nepal          24 months   observed             observed          -1.3075877   -1.4270718   -1.1881037
MAL-ED           Peru           Birth       observed             observed          -0.8827897   -1.0001058   -0.7654736
MAL-ED           Peru           6 months    observed             observed          -1.3236661   -1.4316775   -1.2156546
MAL-ED           Peru           24 months   observed             observed          -1.7524710   -1.8736426   -1.6312994
MAL-ED           South Africa   Birth       observed             observed          -0.6317073   -0.8249555   -0.4384591
MAL-ED           South Africa   6 months    observed             observed          -1.0633202   -1.1909180   -0.9357224
MAL-ED           South Africa   24 months   observed             observed          -1.6450595   -1.7797240   -1.5103950
MAL-ED           Tanzania       Birth       observed             observed          -1.1556000   -1.3655361   -0.9456639
MAL-ED           Tanzania       6 months    observed             observed          -1.3687449   -1.4907629   -1.2467270
MAL-ED           Tanzania       24 months   observed             observed          -2.6455607   -2.7807256   -2.5103959
PROBIT           Belarus        Birth       observed             observed           1.3269446    1.1683850    1.4855041
PROBIT           Belarus        6 months    observed             observed           0.1068536    0.0120998    0.2016074
PROBIT           Belarus        24 months   observed             observed          -0.1314048   -0.4282725    0.1654630
PROVIDE          Bangladesh     Birth       observed             observed          -0.8851020   -0.9601332   -0.8100709
PROVIDE          Bangladesh     6 months    observed             observed          -1.0916915   -1.1661176   -1.0172654
PROVIDE          Bangladesh     24 months   observed             observed          -1.6024221   -1.6857420   -1.5191023
ResPak           Pakistan       6 months    observed             observed          -1.4314086   -1.6374838   -1.2253335
SAS-CompFeed     India          Birth       observed             observed          -1.4314217   -1.5099245   -1.3529189
SAS-CompFeed     India          6 months    observed             observed          -1.4018563   -1.4810585   -1.3226541
SAS-FoodSuppl    India          6 months    observed             observed          -1.8986842   -2.0118892   -1.7854792
TanzaniaChild2   Tanzania       6 months    observed             observed          -0.5434389   -0.5924056   -0.4944722
ZVITAMBO         Zimbabwe       Birth       observed             observed          -0.5002724   -0.5208163   -0.4797285
ZVITAMBO         Zimbabwe       6 months    observed             observed          -0.8679450   -0.8935071   -0.8423828
ZVITAMBO         Zimbabwe       24 months   observed             observed          -1.6055701   -1.6625562   -1.5485840


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed           0.0276009   -0.2877205    0.3429224
CMC-V-BCS-2002   India          6 months    optimal              observed          -0.1373826   -0.3690908    0.0943256
CMC-V-BCS-2002   India          24 months   optimal              observed           0.3126232    0.1035786    0.5216679
CMIN             Bangladesh     Birth       optimal              observed           0.4577362   -0.6207411    1.5362135
CMIN             Bangladesh     6 months    optimal              observed          -0.3999026   -0.6045410   -0.1952642
CMIN             Bangladesh     24 months   optimal              observed          -0.2162379   -0.4357924    0.0033166
CONTENT          Peru           6 months    optimal              observed          -0.2482753   -0.6654585    0.1689078
CONTENT          Peru           24 months   optimal              observed          -0.1207665   -0.4607488    0.2192159
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1107182   -0.0614528    0.2828892
IRC              India          Birth       optimal              observed          -0.4442319   -0.8220494   -0.0664145
IRC              India          6 months    optimal              observed          -0.3043740   -0.5195723   -0.0891756
IRC              India          24 months   optimal              observed          -0.0306735   -0.1926401    0.1312932
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.1395878   -0.1724201   -0.1067555
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0436253   -0.0784135   -0.0088371
JiVitA-3         Bangladesh     24 months   optimal              observed          -0.0988190   -0.1452741   -0.0523639
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2294779   -0.3607751   -0.0981807
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.1049164   -0.1825333   -0.0272996
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.1602858   -0.2398101   -0.0807615
Keneba           Gambia         Birth       optimal              observed          -0.1091806   -0.2166068   -0.0017544
Keneba           Gambia         6 months    optimal              observed          -0.0791147   -0.1569124   -0.0013170
Keneba           Gambia         24 months   optimal              observed          -0.0488696   -0.1287738    0.0310345
LCNI-5           Malawi         6 months    optimal              observed           0.0477350   -0.0751910    0.1706610
LCNI-5           Malawi         24 months   optimal              observed           0.1171331   -0.0709658    0.3052320
MAL-ED           Bangladesh     Birth       optimal              observed           0.2375272    0.0019323    0.4731221
MAL-ED           Bangladesh     6 months    optimal              observed           0.0628275   -0.1256012    0.2512561
MAL-ED           Bangladesh     24 months   optimal              observed           0.3836976    0.1689820    0.5984132
MAL-ED           Brazil         Birth       optimal              observed           0.1621655   -0.3330351    0.6573661
MAL-ED           Brazil         6 months    optimal              observed          -0.2402307   -0.4644204   -0.0160409
MAL-ED           Brazil         24 months   optimal              observed          -0.4366148   -0.7416840   -0.1315455
MAL-ED           India          Birth       optimal              observed          -0.4912280   -0.9881498    0.0056939
MAL-ED           India          6 months    optimal              observed           0.1193779   -0.0845569    0.3233126
MAL-ED           India          24 months   optimal              observed           0.1564927   -0.0626395    0.3756249
MAL-ED           Nepal          Birth       optimal              observed          -0.1360614   -0.9856223    0.7134994
MAL-ED           Nepal          6 months    optimal              observed          -0.0686569   -0.2519417    0.1146280
MAL-ED           Nepal          24 months   optimal              observed          -0.3114684   -0.5689963   -0.0539404
MAL-ED           Peru           Birth       optimal              observed          -0.2109683   -0.4406817    0.0187452
MAL-ED           Peru           6 months    optimal              observed          -0.0316083   -0.2501957    0.1869790
MAL-ED           Peru           24 months   optimal              observed          -0.2278751   -0.4310935   -0.0246567
MAL-ED           South Africa   Birth       optimal              observed          -0.1530987   -0.4880950    0.1818976
MAL-ED           South Africa   6 months    optimal              observed          -0.3521112   -0.6246192   -0.0796032
MAL-ED           South Africa   24 months   optimal              observed          -0.4318787   -0.7462856   -0.1174717
MAL-ED           Tanzania       Birth       optimal              observed          -0.2814906   -0.6218602    0.0588790
MAL-ED           Tanzania       6 months    optimal              observed          -0.2078211   -0.4378416    0.0221995
MAL-ED           Tanzania       24 months   optimal              observed           0.0735530   -0.1463487    0.2934547
PROBIT           Belarus        Birth       optimal              observed          -0.0518293   -0.0964613   -0.0071972
PROBIT           Belarus        6 months    optimal              observed          -0.0822386   -0.1372815   -0.0271958
PROBIT           Belarus        24 months   optimal              observed          -0.0948193   -0.3827591    0.1931206
PROVIDE          Bangladesh     Birth       optimal              observed           0.0133445   -0.1152593    0.1419483
PROVIDE          Bangladesh     6 months    optimal              observed          -0.2343311   -0.3888778   -0.0797845
PROVIDE          Bangladesh     24 months   optimal              observed           0.0938935   -0.0479696    0.2357567
ResPak           Pakistan       6 months    optimal              observed           0.2945875   -0.3571386    0.9463136
SAS-CompFeed     India          Birth       optimal              observed          -0.1176351   -0.2284260   -0.0068443
SAS-CompFeed     India          6 months    optimal              observed          -0.0932710   -0.2112977    0.0247558
SAS-FoodSuppl    India          6 months    optimal              observed          -0.0969654   -0.2294062    0.0354755
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1926093   -0.2807116   -0.1045071
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1351080   -0.1681661   -0.1020499
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0726799   -0.1163130   -0.0290468
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.0669635   -0.1435635    0.0096364

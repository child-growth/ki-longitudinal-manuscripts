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
PROBIT           Belarus        Birth                    1     3780   13893
PROBIT           Belarus        Birth                    2     4152   13893
PROBIT           Belarus        Birth                    3     2716   13893
PROBIT           Belarus        Birth                    4     3245   13893
PROBIT           Belarus        6 months                 1     3613   15760
PROBIT           Belarus        6 months                 2     3117   15760
PROBIT           Belarus        6 months                 3     4513   15760
PROBIT           Belarus        6 months                 4     4517   15760
PROBIT           Belarus        24 months                1     1095    4035
PROBIT           Belarus        24 months                2     1148    4035
PROBIT           Belarus        24 months                3      845    4035
PROBIT           Belarus        24 months                4      947    4035
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
![](/tmp/cff628af-a142-4151-a4af-755a8cdbc4ee/09507a8c-4aac-4188-9e7b-a368aaa6b196/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.7939622   -1.1797176   -0.4082068
CMC-V-BCS-2002   India          6 months    optimal              observed          -1.4253756   -1.6940800   -1.1566713
CMC-V-BCS-2002   India          24 months   optimal              observed          -2.6904422   -2.9100075   -2.4708768
CMIN             Bangladesh     Birth       optimal              observed          -1.9341071   -3.0883810   -0.7798332
CMIN             Bangladesh     6 months    optimal              observed          -1.3941698   -1.6151054   -1.1732341
CMIN             Bangladesh     24 months   optimal              observed          -2.2910745   -2.5396666   -2.0424824
CONTENT          Peru           6 months    optimal              observed          -0.3547829   -0.6943013   -0.0152645
CONTENT          Peru           24 months   optimal              observed          -0.8983114   -1.1728616   -0.6237612
Guatemala BSC    Guatemala      6 months    optimal              observed          -1.7582219   -1.9503301   -1.5661138
IRC              India          Birth       optimal              observed           0.1508730   -0.2796446    0.5813906
IRC              India          6 months    optimal              observed          -0.9061557   -1.1718118   -0.6404997
IRC              India          24 months   optimal              observed          -1.6207441   -1.8105618   -1.4309264
JiVitA-3         Bangladesh     Birth       optimal              observed          -1.4500748   -1.4876711   -1.4124785
JiVitA-3         Bangladesh     6 months    optimal              observed          -1.2695682   -1.3126002   -1.2265361
JiVitA-3         Bangladesh     24 months   optimal              observed          -1.9141221   -1.9690533   -1.8591909
JiVitA-4         Bangladesh     Birth       optimal              observed          -1.2912980   -1.4247187   -1.1578773
JiVitA-4         Bangladesh     6 months    optimal              observed          -1.2378486   -1.3197814   -1.1559158
JiVitA-4         Bangladesh     24 months   optimal              observed          -1.6217810   -1.7065198   -1.5370422
Keneba           Gambia         Birth       optimal              observed           0.1387642    0.0180944    0.2594339
Keneba           Gambia         6 months    optimal              observed          -0.8244995   -0.9152144   -0.7337846
Keneba           Gambia         24 months   optimal              observed          -1.5870727   -1.6887536   -1.4853917
LCNI-5           Malawi         6 months    optimal              observed          -1.8634429   -2.0105038   -1.7163821
LCNI-5           Malawi         24 months   optimal              observed          -1.9825767   -2.1926140   -1.7725394
MAL-ED           Bangladesh     Birth       optimal              observed          -1.4142895   -1.6834056   -1.1451734
MAL-ED           Bangladesh     6 months    optimal              observed          -1.3200632   -1.5747226   -1.0654037
MAL-ED           Bangladesh     24 months   optimal              observed          -2.2339661   -2.4936791   -1.9742530
MAL-ED           Brazil         Birth       optimal              observed          -1.2636871   -1.7187237   -0.8086505
MAL-ED           Brazil         6 months    optimal              observed           0.2857168    0.0080564    0.5633773
MAL-ED           Brazil         24 months   optimal              observed           0.4706112    0.1666681    0.7745543
MAL-ED           India          Birth       optimal              observed          -0.6892502   -1.1643998   -0.2141005
MAL-ED           India          6 months    optimal              observed          -1.2833826   -1.5239176   -1.0428475
MAL-ED           India          24 months   optimal              observed          -2.0294955   -2.2785649   -1.7804261
MAL-ED           Nepal          Birth       optimal              observed          -1.0018533   -1.7964920   -0.2072147
MAL-ED           Nepal          6 months    optimal              observed          -0.6670337   -0.8854161   -0.4486514
MAL-ED           Nepal          24 months   optimal              observed          -1.0167228   -1.3045838   -0.7288619
MAL-ED           Peru           Birth       optimal              observed          -0.6660182   -0.9216095   -0.4104269
MAL-ED           Peru           6 months    optimal              observed          -1.1395851   -1.3778654   -0.9013047
MAL-ED           Peru           24 months   optimal              observed          -1.5352526   -1.7712338   -1.2992713
MAL-ED           South Africa   Birth       optimal              observed          -0.5370925   -0.9833251   -0.0908598
MAL-ED           South Africa   6 months    optimal              observed          -0.7110282   -1.0125308   -0.4095256
MAL-ED           South Africa   24 months   optimal              observed          -1.2303087   -1.5680795   -0.8925380
MAL-ED           Tanzania       Birth       optimal              observed          -0.8730653   -1.2558588   -0.4902717
MAL-ED           Tanzania       6 months    optimal              observed          -1.1655799   -1.4262628   -0.9048969
MAL-ED           Tanzania       24 months   optimal              observed          -2.6095746   -2.8751343   -2.3440150
PROBIT           Belarus        Birth       optimal              observed           1.3693295    1.1975836    1.5410755
PROBIT           Belarus        6 months    optimal              observed           0.1887242    0.0861479    0.2913006
PROBIT           Belarus        24 months   optimal              observed          -0.1149096   -0.8891548    0.6593356
PROVIDE          Bangladesh     Birth       optimal              observed          -0.9485451   -1.0771307   -0.8199595
PROVIDE          Bangladesh     6 months    optimal              observed          -0.8732332   -1.0465877   -0.6998786
PROVIDE          Bangladesh     24 months   optimal              observed          -1.7370337   -1.9316642   -1.5424033
ResPak           Pakistan       6 months    optimal              observed          -1.3650755   -2.1997778   -0.5303733
SAS-CompFeed     India          Birth       optimal              observed          -1.3137866   -1.4624821   -1.1650912
SAS-CompFeed     India          6 months    optimal              observed          -1.3085853   -1.4410899   -1.1760808
SAS-FoodSuppl    India          6 months    optimal              observed          -1.8072379   -1.9769658   -1.6375100
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.3492602   -0.4535022   -0.2450181
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.3648940   -0.4030012   -0.3267868
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.7951845   -0.8461911   -0.7441779
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -1.5385313   -1.6359540   -1.4411085


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       observed             observed          -0.9611957   -1.1776967   -0.7446946
CMC-V-BCS-2002   India          6 months    observed             observed          -1.4234508   -1.5645974   -1.2823042
CMC-V-BCS-2002   India          24 months   observed             observed          -2.5588679   -2.6583730   -2.4593629
CMIN             Bangladesh     Birth       observed             observed          -1.8811538   -2.5124807   -1.2498270
CMIN             Bangladesh     6 months    observed             observed          -1.7844376   -1.9222926   -1.6465825
CMIN             Bangladesh     24 months   observed             observed          -2.5109504   -2.6361514   -2.3857494
CONTENT          Peru           6 months    observed             observed          -0.2785256   -0.4098735   -0.1471776
CONTENT          Peru           24 months   observed             observed          -0.6868598   -0.8388476   -0.5348719
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
PROBIT           Belarus        Birth       observed             observed           1.3114417    1.1524752    1.4704082
PROBIT           Belarus        6 months    observed             observed           0.0980074    0.0062724    0.1897424
PROBIT           Belarus        24 months   observed             observed          -0.1442891   -0.4253755    0.1367972
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
CMC-V-BCS-2002   India          Birth       optimal              observed          -0.1672335   -0.4883800    0.1539131
CMC-V-BCS-2002   India          6 months    optimal              observed           0.0019249   -0.2316589    0.2355087
CMC-V-BCS-2002   India          24 months   optimal              observed           0.1315742   -0.0701750    0.3333234
CMIN             Bangladesh     Birth       optimal              observed           0.0529533   -1.0818324    1.1877389
CMIN             Bangladesh     6 months    optimal              observed          -0.3902678   -0.5998365   -0.1806991
CMIN             Bangladesh     24 months   optimal              observed          -0.2198760   -0.4394559   -0.0002960
CONTENT          Peru           6 months    optimal              observed           0.0762573   -0.2271072    0.3796218
CONTENT          Peru           24 months   optimal              observed           0.2114517   -0.0254568    0.4483601
Guatemala BSC    Guatemala      6 months    optimal              observed           0.1963212    0.0158273    0.3768150
IRC              India          Birth       optimal              observed          -0.4589142   -0.8310610   -0.0867675
IRC              India          6 months    optimal              observed          -0.3282505   -0.5466640   -0.1098370
IRC              India          24 months   optimal              observed          -0.1780334   -0.3479317   -0.0081352
JiVitA-3         Bangladesh     Birth       optimal              observed          -0.1393400   -0.1721664   -0.1065137
JiVitA-3         Bangladesh     6 months    optimal              observed          -0.0435250   -0.0783569   -0.0086932
JiVitA-3         Bangladesh     24 months   optimal              observed          -0.0990641   -0.1455076   -0.0526206
JiVitA-4         Bangladesh     Birth       optimal              observed          -0.2319928   -0.3635605   -0.1004251
JiVitA-4         Bangladesh     6 months    optimal              observed          -0.1069455   -0.1848226   -0.0290683
JiVitA-4         Bangladesh     24 months   optimal              observed          -0.1589408   -0.2386211   -0.0792605
Keneba           Gambia         Birth       optimal              observed          -0.1079605   -0.2152180   -0.0007031
Keneba           Gambia         6 months    optimal              observed          -0.0791380   -0.1569113   -0.0013647
Keneba           Gambia         24 months   optimal              observed           0.0096371   -0.0750711    0.0943452
LCNI-5           Malawi         6 months    optimal              observed           0.2032522    0.0728237    0.3336808
LCNI-5           Malawi         24 months   optimal              observed           0.0964282   -0.0905250    0.2833814
MAL-ED           Bangladesh     Birth       optimal              observed           0.2961942    0.0603928    0.5319957
MAL-ED           Bangladesh     6 months    optimal              observed           0.1150701   -0.0966025    0.3267426
MAL-ED           Bangladesh     24 months   optimal              observed           0.2555698    0.0204125    0.4907272
MAL-ED           Brazil         Birth       optimal              observed           0.5876871    0.1253475    1.0500267
MAL-ED           Brazil         6 months    optimal              observed          -0.2381411   -0.4674684   -0.0088138
MAL-ED           Brazil         24 months   optimal              observed          -0.4644968   -0.7626298   -0.1663637
MAL-ED           India          Birth       optimal              observed          -0.5143669   -0.9909194   -0.0378144
MAL-ED           India          6 months    optimal              observed           0.0718571   -0.1462728    0.2899871
MAL-ED           India          24 months   optimal              observed           0.1433061   -0.0745493    0.3611615
MAL-ED           Nepal          Birth       optimal              observed           0.1485200   -0.5956220    0.8926620
MAL-ED           Nepal          6 months    optimal              observed           0.1054518   -0.0867040    0.2976076
MAL-ED           Nepal          24 months   optimal              observed          -0.2908649   -0.5570814   -0.0246484
MAL-ED           Peru           Birth       optimal              observed          -0.2167715   -0.4449418    0.0113988
MAL-ED           Peru           6 months    optimal              observed          -0.1840810   -0.3937384    0.0255764
MAL-ED           Peru           24 months   optimal              observed          -0.2172184   -0.4182236   -0.0162132
MAL-ED           South Africa   Birth       optimal              observed          -0.0946148   -0.4360688    0.2468392
MAL-ED           South Africa   6 months    optimal              observed          -0.3522920   -0.6297422   -0.0748418
MAL-ED           South Africa   24 months   optimal              observed          -0.4147508   -0.7245988   -0.1049027
MAL-ED           Tanzania       Birth       optimal              observed          -0.2825347   -0.6173564    0.0522869
MAL-ED           Tanzania       6 months    optimal              observed          -0.2031651   -0.4368185    0.0304884
MAL-ED           Tanzania       24 months   optimal              observed          -0.0359861   -0.2631430    0.1911708
PROBIT           Belarus        Birth       optimal              observed          -0.0578878   -0.1005415   -0.0152341
PROBIT           Belarus        6 months    optimal              observed          -0.0907168   -0.1395741   -0.0418595
PROBIT           Belarus        24 months   optimal              observed          -0.0293795   -0.6437396    0.5849806
PROVIDE          Bangladesh     Birth       optimal              observed           0.0634431   -0.0543049    0.1811911
PROVIDE          Bangladesh     6 months    optimal              observed          -0.2184583   -0.3720827   -0.0648340
PROVIDE          Bangladesh     24 months   optimal              observed           0.1346116   -0.0330707    0.3022939
ResPak           Pakistan       6 months    optimal              observed          -0.0663331   -0.9006563    0.7679901
SAS-CompFeed     India          Birth       optimal              observed          -0.1176351   -0.2284260   -0.0068443
SAS-CompFeed     India          6 months    optimal              observed          -0.0932710   -0.2112977    0.0247558
SAS-FoodSuppl    India          6 months    optimal              observed          -0.0914463   -0.2235146    0.0406220
TanzaniaChild2   Tanzania       6 months    optimal              observed          -0.1941787   -0.2821924   -0.1061650
ZVITAMBO         Zimbabwe       Birth       optimal              observed          -0.1353785   -0.1684421   -0.1023149
ZVITAMBO         Zimbabwe       6 months    optimal              observed          -0.0727605   -0.1163974   -0.0291236
ZVITAMBO         Zimbabwe       24 months   optimal              observed          -0.0670389   -0.1435972    0.0095195

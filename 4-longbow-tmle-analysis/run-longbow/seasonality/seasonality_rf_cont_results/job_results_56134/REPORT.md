---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
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

studyid          country        agecat       rain_quartile   n_cell       n  outcome_variable 
---------------  -------------  ----------  --------------  -------  ------  -----------------
CMC-V-BCS-2002   India          Birth                    1       18      92  haz              
CMC-V-BCS-2002   India          Birth                    2       25      92  haz              
CMC-V-BCS-2002   India          Birth                    3       30      92  haz              
CMC-V-BCS-2002   India          Birth                    4       19      92  haz              
CMC-V-BCS-2002   India          6 months                 1      101     369  haz              
CMC-V-BCS-2002   India          6 months                 2      111     369  haz              
CMC-V-BCS-2002   India          6 months                 3       97     369  haz              
CMC-V-BCS-2002   India          6 months                 4       60     369  haz              
CMC-V-BCS-2002   India          24 months                1      101     371  haz              
CMC-V-BCS-2002   India          24 months                2       99     371  haz              
CMC-V-BCS-2002   India          24 months                3      116     371  haz              
CMC-V-BCS-2002   India          24 months                4       55     371  haz              
CMIN             Bangladesh     Birth                    1        7      26  haz              
CMIN             Bangladesh     Birth                    2        6      26  haz              
CMIN             Bangladesh     Birth                    3        6      26  haz              
CMIN             Bangladesh     Birth                    4        7      26  haz              
CMIN             Bangladesh     6 months                 1       50     243  haz              
CMIN             Bangladesh     6 months                 2       62     243  haz              
CMIN             Bangladesh     6 months                 3       71     243  haz              
CMIN             Bangladesh     6 months                 4       60     243  haz              
CMIN             Bangladesh     24 months                1       78     242  haz              
CMIN             Bangladesh     24 months                2       69     242  haz              
CMIN             Bangladesh     24 months                3       58     242  haz              
CMIN             Bangladesh     24 months                4       37     242  haz              
CONTENT          Peru           Birth                    1        0       2  haz              
CONTENT          Peru           Birth                    2        2       2  haz              
CONTENT          Peru           Birth                    3        0       2  haz              
CONTENT          Peru           Birth                    4        0       2  haz              
CONTENT          Peru           6 months                 1       62     215  haz              
CONTENT          Peru           6 months                 2       32     215  haz              
CONTENT          Peru           6 months                 3       44     215  haz              
CONTENT          Peru           6 months                 4       77     215  haz              
CONTENT          Peru           24 months                1       55     164  haz              
CONTENT          Peru           24 months                2       35     164  haz              
CONTENT          Peru           24 months                3       20     164  haz              
CONTENT          Peru           24 months                4       54     164  haz              
EE               Pakistan       Birth                    1      136     240  haz              
EE               Pakistan       Birth                    2       93     240  haz              
EE               Pakistan       Birth                    3       11     240  haz              
EE               Pakistan       Birth                    4        0     240  haz              
EE               Pakistan       6 months                 1        0     373  haz              
EE               Pakistan       6 months                 2       34     373  haz              
EE               Pakistan       6 months                 3      168     373  haz              
EE               Pakistan       6 months                 4      171     373  haz              
EE               Pakistan       24 months                1        8     167  haz              
EE               Pakistan       24 months                2      159     167  haz              
EE               Pakistan       24 months                3        0     167  haz              
EE               Pakistan       24 months                4        0     167  haz              
GMS-Nepal        Nepal          Birth                    1        0     696  haz              
GMS-Nepal        Nepal          Birth                    2        0     696  haz              
GMS-Nepal        Nepal          Birth                    3      161     696  haz              
GMS-Nepal        Nepal          Birth                    4      535     696  haz              
GMS-Nepal        Nepal          6 months                 1      502     564  haz              
GMS-Nepal        Nepal          6 months                 2       62     564  haz              
GMS-Nepal        Nepal          6 months                 3        0     564  haz              
GMS-Nepal        Nepal          6 months                 4        0     564  haz              
GMS-Nepal        Nepal          24 months                1        0     488  haz              
GMS-Nepal        Nepal          24 months                2        0     488  haz              
GMS-Nepal        Nepal          24 months                3       39     488  haz              
GMS-Nepal        Nepal          24 months                4      449     488  haz              
Guatemala BSC    Guatemala      6 months                 1       60     299  haz              
Guatemala BSC    Guatemala      6 months                 2       80     299  haz              
Guatemala BSC    Guatemala      6 months                 3       87     299  haz              
Guatemala BSC    Guatemala      6 months                 4       72     299  haz              
IRC              India          Birth                    1       86     388  haz              
IRC              India          Birth                    2      126     388  haz              
IRC              India          Birth                    3       77     388  haz              
IRC              India          Birth                    4       99     388  haz              
IRC              India          6 months                 1      119     407  haz              
IRC              India          6 months                 2       76     407  haz              
IRC              India          6 months                 3      127     407  haz              
IRC              India          6 months                 4       85     407  haz              
IRC              India          24 months                1      114     409  haz              
IRC              India          24 months                2      119     409  haz              
IRC              India          24 months                3       85     409  haz              
IRC              India          24 months                4       91     409  haz              
JiVitA-3         Bangladesh     Birth                    1     6556   22455  haz              
JiVitA-3         Bangladesh     Birth                    2     7177   22455  haz              
JiVitA-3         Bangladesh     Birth                    3     4636   22455  haz              
JiVitA-3         Bangladesh     Birth                    4     4086   22455  haz              
JiVitA-3         Bangladesh     6 months                 1     3724   16811  haz              
JiVitA-3         Bangladesh     6 months                 2     3587   16811  haz              
JiVitA-3         Bangladesh     6 months                 3     5224   16811  haz              
JiVitA-3         Bangladesh     6 months                 4     4276   16811  haz              
JiVitA-3         Bangladesh     24 months                1     2626    8631  haz              
JiVitA-3         Bangladesh     24 months                2     2609    8631  haz              
JiVitA-3         Bangladesh     24 months                3     1644    8631  haz              
JiVitA-3         Bangladesh     24 months                4     1752    8631  haz              
JiVitA-4         Bangladesh     Birth                    1      333    2823  haz              
JiVitA-4         Bangladesh     Birth                    2      216    2823  haz              
JiVitA-4         Bangladesh     Birth                    3     1312    2823  haz              
JiVitA-4         Bangladesh     Birth                    4      962    2823  haz              
JiVitA-4         Bangladesh     6 months                 1     1469    4831  haz              
JiVitA-4         Bangladesh     6 months                 2     2613    4831  haz              
JiVitA-4         Bangladesh     6 months                 3      628    4831  haz              
JiVitA-4         Bangladesh     6 months                 4      121    4831  haz              
JiVitA-4         Bangladesh     24 months                1      694    4752  haz              
JiVitA-4         Bangladesh     24 months                2      579    4752  haz              
JiVitA-4         Bangladesh     24 months                3     2080    4752  haz              
JiVitA-4         Bangladesh     24 months                4     1399    4752  haz              
Keneba           Gambia         Birth                    1      448    1543  haz              
Keneba           Gambia         Birth                    2      427    1543  haz              
Keneba           Gambia         Birth                    3      378    1543  haz              
Keneba           Gambia         Birth                    4      290    1543  haz              
Keneba           Gambia         6 months                 1      464    2089  haz              
Keneba           Gambia         6 months                 2      459    2089  haz              
Keneba           Gambia         6 months                 3      606    2089  haz              
Keneba           Gambia         6 months                 4      560    2089  haz              
Keneba           Gambia         24 months                1      501    1725  haz              
Keneba           Gambia         24 months                2      494    1725  haz              
Keneba           Gambia         24 months                3      388    1725  haz              
Keneba           Gambia         24 months                4      342    1725  haz              
LCNI-5           Malawi         6 months                 1      204     839  haz              
LCNI-5           Malawi         6 months                 2      319     839  haz              
LCNI-5           Malawi         6 months                 3      113     839  haz              
LCNI-5           Malawi         6 months                 4      203     839  haz              
LCNI-5           Malawi         24 months                1      148     579  haz              
LCNI-5           Malawi         24 months                2       81     579  haz              
LCNI-5           Malawi         24 months                3      220     579  haz              
LCNI-5           Malawi         24 months                4      130     579  haz              
MAL-ED           Bangladesh     Birth                    1       68     231  haz              
MAL-ED           Bangladesh     Birth                    2       51     231  haz              
MAL-ED           Bangladesh     Birth                    3       64     231  haz              
MAL-ED           Bangladesh     Birth                    4       48     231  haz              
MAL-ED           Bangladesh     6 months                 1       55     241  haz              
MAL-ED           Bangladesh     6 months                 2       71     241  haz              
MAL-ED           Bangladesh     6 months                 3       60     241  haz              
MAL-ED           Bangladesh     6 months                 4       55     241  haz              
MAL-ED           Bangladesh     24 months                1       73     212  haz              
MAL-ED           Bangladesh     24 months                2       51     212  haz              
MAL-ED           Bangladesh     24 months                3       48     212  haz              
MAL-ED           Bangladesh     24 months                4       40     212  haz              
MAL-ED           Brazil         Birth                    1       19      65  haz              
MAL-ED           Brazil         Birth                    2       12      65  haz              
MAL-ED           Brazil         Birth                    3       12      65  haz              
MAL-ED           Brazil         Birth                    4       22      65  haz              
MAL-ED           Brazil         6 months                 1       64     209  haz              
MAL-ED           Brazil         6 months                 2       51     209  haz              
MAL-ED           Brazil         6 months                 3       44     209  haz              
MAL-ED           Brazil         6 months                 4       50     209  haz              
MAL-ED           Brazil         24 months                1       65     169  haz              
MAL-ED           Brazil         24 months                2       30     169  haz              
MAL-ED           Brazil         24 months                3       43     169  haz              
MAL-ED           Brazil         24 months                4       31     169  haz              
MAL-ED           India          Birth                    1       10      47  haz              
MAL-ED           India          Birth                    2       11      47  haz              
MAL-ED           India          Birth                    3       12      47  haz              
MAL-ED           India          Birth                    4       14      47  haz              
MAL-ED           India          6 months                 1       66     236  haz              
MAL-ED           India          6 months                 2       42     236  haz              
MAL-ED           India          6 months                 3       73     236  haz              
MAL-ED           India          6 months                 4       55     236  haz              
MAL-ED           India          24 months                1       65     227  haz              
MAL-ED           India          24 months                2       71     227  haz              
MAL-ED           India          24 months                3       54     227  haz              
MAL-ED           India          24 months                4       37     227  haz              
MAL-ED           Nepal          Birth                    1        5      27  haz              
MAL-ED           Nepal          Birth                    2       10      27  haz              
MAL-ED           Nepal          Birth                    3        7      27  haz              
MAL-ED           Nepal          Birth                    4        5      27  haz              
MAL-ED           Nepal          6 months                 1       60     236  haz              
MAL-ED           Nepal          6 months                 2       59     236  haz              
MAL-ED           Nepal          6 months                 3       59     236  haz              
MAL-ED           Nepal          6 months                 4       58     236  haz              
MAL-ED           Nepal          24 months                1       66     228  haz              
MAL-ED           Nepal          24 months                2       61     228  haz              
MAL-ED           Nepal          24 months                3       63     228  haz              
MAL-ED           Nepal          24 months                4       38     228  haz              
MAL-ED           Peru           Birth                    1       49     233  haz              
MAL-ED           Peru           Birth                    2       54     233  haz              
MAL-ED           Peru           Birth                    3       69     233  haz              
MAL-ED           Peru           Birth                    4       61     233  haz              
MAL-ED           Peru           6 months                 1       96     273  haz              
MAL-ED           Peru           6 months                 2       77     273  haz              
MAL-ED           Peru           6 months                 3       60     273  haz              
MAL-ED           Peru           6 months                 4       40     273  haz              
MAL-ED           Peru           24 months                1       55     201  haz              
MAL-ED           Peru           24 months                2       46     201  haz              
MAL-ED           Peru           24 months                3       54     201  haz              
MAL-ED           Peru           24 months                4       46     201  haz              
MAL-ED           South Africa   Birth                    1       25     123  haz              
MAL-ED           South Africa   Birth                    2       23     123  haz              
MAL-ED           South Africa   Birth                    3       35     123  haz              
MAL-ED           South Africa   Birth                    4       40     123  haz              
MAL-ED           South Africa   6 months                 1      106     254  haz              
MAL-ED           South Africa   6 months                 2       67     254  haz              
MAL-ED           South Africa   6 months                 3       45     254  haz              
MAL-ED           South Africa   6 months                 4       36     254  haz              
MAL-ED           South Africa   24 months                1       55     238  haz              
MAL-ED           South Africa   24 months                2       39     238  haz              
MAL-ED           South Africa   24 months                3       86     238  haz              
MAL-ED           South Africa   24 months                4       58     238  haz              
MAL-ED           Tanzania       Birth                    1       18     125  haz              
MAL-ED           Tanzania       Birth                    2       35     125  haz              
MAL-ED           Tanzania       Birth                    3       34     125  haz              
MAL-ED           Tanzania       Birth                    4       38     125  haz              
MAL-ED           Tanzania       6 months                 1       71     247  haz              
MAL-ED           Tanzania       6 months                 2       80     247  haz              
MAL-ED           Tanzania       6 months                 3       53     247  haz              
MAL-ED           Tanzania       6 months                 4       43     247  haz              
MAL-ED           Tanzania       24 months                1       56     214  haz              
MAL-ED           Tanzania       24 months                2       59     214  haz              
MAL-ED           Tanzania       24 months                3       59     214  haz              
MAL-ED           Tanzania       24 months                4       40     214  haz              
PROBIT           Belarus        Birth                    1     3780   13890  haz              
PROBIT           Belarus        Birth                    2     4150   13890  haz              
PROBIT           Belarus        Birth                    3     2715   13890  haz              
PROBIT           Belarus        Birth                    4     3245   13890  haz              
PROBIT           Belarus        6 months                 1     3612   15761  haz              
PROBIT           Belarus        6 months                 2     3117   15761  haz              
PROBIT           Belarus        6 months                 3     4512   15761  haz              
PROBIT           Belarus        6 months                 4     4520   15761  haz              
PROBIT           Belarus        24 months                1     1095    4035  haz              
PROBIT           Belarus        24 months                2     1147    4035  haz              
PROBIT           Belarus        24 months                3      845    4035  haz              
PROBIT           Belarus        24 months                4      948    4035  haz              
PROVIDE          Bangladesh     Birth                    1       78     539  haz              
PROVIDE          Bangladesh     Birth                    2      163     539  haz              
PROVIDE          Bangladesh     Birth                    3       97     539  haz              
PROVIDE          Bangladesh     Birth                    4      201     539  haz              
PROVIDE          Bangladesh     6 months                 1      211     604  haz              
PROVIDE          Bangladesh     6 months                 2      122     604  haz              
PROVIDE          Bangladesh     6 months                 3      175     604  haz              
PROVIDE          Bangladesh     6 months                 4       96     604  haz              
PROVIDE          Bangladesh     24 months                1       99     578  haz              
PROVIDE          Bangladesh     24 months                2      186     578  haz              
PROVIDE          Bangladesh     24 months                3      104     578  haz              
PROVIDE          Bangladesh     24 months                4      189     578  haz              
ResPak           Pakistan       Birth                    1        3      42  haz              
ResPak           Pakistan       Birth                    2        2      42  haz              
ResPak           Pakistan       Birth                    3       16      42  haz              
ResPak           Pakistan       Birth                    4       21      42  haz              
ResPak           Pakistan       6 months                 1      107     239  haz              
ResPak           Pakistan       6 months                 2       98     239  haz              
ResPak           Pakistan       6 months                 3        8     239  haz              
ResPak           Pakistan       6 months                 4       26     239  haz              
SAS-CompFeed     India          Birth                    1      273    1252  haz              
SAS-CompFeed     India          Birth                    2      408    1252  haz              
SAS-CompFeed     India          Birth                    3      223    1252  haz              
SAS-CompFeed     India          Birth                    4      348    1252  haz              
SAS-CompFeed     India          6 months                 1      375    1336  haz              
SAS-CompFeed     India          6 months                 2      230    1336  haz              
SAS-CompFeed     India          6 months                 3      434    1336  haz              
SAS-CompFeed     India          6 months                 4      297    1336  haz              
SAS-FoodSuppl    India          6 months                 1      160     380  haz              
SAS-FoodSuppl    India          6 months                 2       37     380  haz              
SAS-FoodSuppl    India          6 months                 3      106     380  haz              
SAS-FoodSuppl    India          6 months                 4       77     380  haz              
TanzaniaChild2   Tanzania       6 months                 1      516    2029  haz              
TanzaniaChild2   Tanzania       6 months                 2      564    2029  haz              
TanzaniaChild2   Tanzania       6 months                 3      467    2029  haz              
TanzaniaChild2   Tanzania       6 months                 4      482    2029  haz              
TanzaniaChild2   Tanzania       24 months                1        0       6  haz              
TanzaniaChild2   Tanzania       24 months                2        4       6  haz              
TanzaniaChild2   Tanzania       24 months                3        0       6  haz              
TanzaniaChild2   Tanzania       24 months                4        2       6  haz              
ZVITAMBO         Zimbabwe       Birth                    1     3733   13875  haz              
ZVITAMBO         Zimbabwe       Birth                    2     3153   13875  haz              
ZVITAMBO         Zimbabwe       Birth                    3     3455   13875  haz              
ZVITAMBO         Zimbabwe       Birth                    4     3534   13875  haz              
ZVITAMBO         Zimbabwe       6 months                 1     2162    8669  haz              
ZVITAMBO         Zimbabwe       6 months                 2     2252    8669  haz              
ZVITAMBO         Zimbabwe       6 months                 3     2013    8669  haz              
ZVITAMBO         Zimbabwe       6 months                 4     2242    8669  haz              
ZVITAMBO         Zimbabwe       24 months                1      273    1640  haz              
ZVITAMBO         Zimbabwe       24 months                2      536    1640  haz              
ZVITAMBO         Zimbabwe       24 months                3      236    1640  haz              
ZVITAMBO         Zimbabwe       24 months                4      595    1640  haz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1bde7238-4590-4bab-aa25-bb56fde540f1/c8b88611-eeb0-4755-bfe0-f3c7c9b460f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1bde7238-4590-4bab-aa25-bb56fde540f1/c8b88611-eeb0-4755-bfe0-f3c7c9b460f6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1bde7238-4590-4bab-aa25-bb56fde540f1/c8b88611-eeb0-4755-bfe0-f3c7c9b460f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       1                    NA                -1.1586111   -1.5695857   -0.7476366
CMC-V-BCS-2002   India          Birth       2                    NA                -0.9960000   -1.4894453   -0.5025547
CMC-V-BCS-2002   India          Birth       3                    NA                -0.7980000   -1.1673928   -0.4286072
CMC-V-BCS-2002   India          Birth       4                    NA                -0.9860526   -1.3972198   -0.5748855
CMC-V-BCS-2002   India          6 months    1                    NA                -1.5773762   -1.8337127   -1.3210398
CMC-V-BCS-2002   India          6 months    2                    NA                -1.3823423   -1.6684306   -1.0962540
CMC-V-BCS-2002   India          6 months    3                    NA                -1.2860309   -1.5498132   -1.0222486
CMC-V-BCS-2002   India          6 months    4                    NA                -1.4625556   -1.7796120   -1.1454992
CMC-V-BCS-2002   India          24 months   1                    NA                -2.6233498   -2.8167882   -2.4299115
CMC-V-BCS-2002   India          24 months   2                    NA                -2.5318519   -2.7254248   -2.3382789
CMC-V-BCS-2002   India          24 months   3                    NA                -2.5493534   -2.7270384   -2.3716685
CMC-V-BCS-2002   India          24 months   4                    NA                -2.5091515   -2.7575004   -2.2608026
CMIN             Bangladesh     Birth       1                    NA                -2.4142857   -3.3615713   -1.4670002
CMIN             Bangladesh     Birth       2                    NA                -1.3566667   -2.8032226    0.0898892
CMIN             Bangladesh     Birth       3                    NA                -1.2983333   -2.6238587    0.0271920
CMIN             Bangladesh     Birth       4                    NA                -2.2971429   -3.3977700   -1.1965157
CMIN             Bangladesh     6 months    1                    NA                -1.9272333   -2.2628041   -1.5916625
CMIN             Bangladesh     6 months    2                    NA                -1.3762903   -1.5882531   -1.1643276
CMIN             Bangladesh     6 months    3                    NA                -1.8977700   -2.1727001   -1.6228398
CMIN             Bangladesh     6 months    4                    NA                -1.9530833   -2.2075111   -1.6986556
CMIN             Bangladesh     24 months   1                    NA                -2.6017949   -2.7950097   -2.4085801
CMIN             Bangladesh     24 months   2                    NA                -2.4821739   -2.7426440   -2.2217038
CMIN             Bangladesh     24 months   3                    NA                -2.2843103   -2.5301305   -2.0384902
CMIN             Bangladesh     24 months   4                    NA                -2.7283784   -3.0523089   -2.4044479
CONTENT          Peru           6 months    1                    NA                -0.2164516   -0.5554492    0.1225460
CONTENT          Peru           6 months    2                    NA                -0.0920469   -0.5202554    0.3361617
CONTENT          Peru           6 months    3                    NA                -0.5241553   -0.9278955   -0.1204151
CONTENT          Peru           6 months    4                    NA                -0.3644784   -0.6308191   -0.0981376
CONTENT          Peru           24 months   1                    NA                -0.7114545   -1.0009618   -0.4219473
CONTENT          Peru           24 months   2                    NA                -0.5611429   -0.9357337   -0.1865520
CONTENT          Peru           24 months   3                    NA                -0.7530000   -1.0884952   -0.4175048
CONTENT          Peru           24 months   4                    NA                -0.7472222   -1.0756119   -0.4188326
Guatemala BSC    Guatemala      6 months    1                    NA                -1.4962500   -1.6889901   -1.3035099
Guatemala BSC    Guatemala      6 months    2                    NA                -1.7357708   -1.9751298   -1.4964118
Guatemala BSC    Guatemala      6 months    3                    NA                -1.4865326   -1.6869137   -1.2861515
Guatemala BSC    Guatemala      6 months    4                    NA                -1.5144907   -1.7476211   -1.2813604
IRC              India          Birth       1                    NA                -0.4666279   -0.7893732   -0.1438826
IRC              India          Birth       2                    NA                -0.5571429   -0.8110787   -0.3032070
IRC              India          Birth       3                    NA                 0.1407792   -0.2860107    0.5675691
IRC              India          Birth       4                    NA                -0.2023232   -0.5076488    0.1030023
IRC              India          6 months    1                    NA                -0.9175910   -1.1760795   -0.6591026
IRC              India          6 months    2                    NA                -1.3487939   -1.6733437   -1.0242440
IRC              India          6 months    3                    NA                -1.3325984   -1.5432395   -1.1219573
IRC              India          6 months    4                    NA                -1.4289608   -1.6985097   -1.1594119
IRC              India          24 months   1                    NA                -1.9938012   -2.1668126   -1.8207898
IRC              India          24 months   2                    NA                -1.6728011   -1.8416564   -1.5039459
IRC              India          24 months   3                    NA                -1.9062157   -2.1227727   -1.6896587
IRC              India          24 months   4                    NA                -1.6188462   -1.8076796   -1.4300127
JiVitA-3         Bangladesh     Birth       1                    NA                -1.6844616   -1.7140495   -1.6548736
JiVitA-3         Bangladesh     Birth       2                    NA                -1.6324676   -1.6658149   -1.5991203
JiVitA-3         Bangladesh     Birth       3                    NA                -1.4498727   -1.4874599   -1.4122856
JiVitA-3         Bangladesh     Birth       4                    NA                -1.5196158   -1.5609255   -1.4783060
JiVitA-3         Bangladesh     6 months    1                    NA                -1.2984721   -1.3374265   -1.2595177
JiVitA-3         Bangladesh     6 months    2                    NA                -1.2692445   -1.3122170   -1.2262720
JiVitA-3         Bangladesh     6 months    3                    NA                -1.3423009   -1.3784985   -1.3061033
JiVitA-3         Bangladesh     6 months    4                    NA                -1.3269270   -1.3646862   -1.2891679
JiVitA-3         Bangladesh     24 months   1                    NA                -2.1296458   -2.1732251   -2.0860666
JiVitA-3         Bangladesh     24 months   2                    NA                -1.9922921   -2.0381757   -1.9464084
JiVitA-3         Bangladesh     24 months   3                    NA                -1.9657725   -2.0194832   -1.9120618
JiVitA-3         Bangladesh     24 months   4                    NA                -1.9142352   -1.9691086   -1.8593617
JiVitA-4         Bangladesh     Birth       1                    NA                -1.6706306   -1.8111999   -1.5300614
JiVitA-4         Bangladesh     Birth       2                    NA                -1.2906019   -1.4232388   -1.1579649
JiVitA-4         Bangladesh     Birth       3                    NA                -1.5864405   -1.6563064   -1.5165747
JiVitA-4         Bangladesh     Birth       4                    NA                -1.4384096   -1.5257501   -1.3510690
JiVitA-4         Bangladesh     6 months    1                    NA                -1.3920218   -1.4533017   -1.3307418
JiVitA-4         Bangladesh     6 months    2                    NA                -1.3433984   -1.3958757   -1.2909211
JiVitA-4         Bangladesh     6 months    3                    NA                -1.2377707   -1.3192549   -1.1562865
JiVitA-4         Bangladesh     6 months    4                    NA                -1.3570248   -1.5761255   -1.1379241
JiVitA-4         Bangladesh     24 months   1                    NA                -1.9503026   -2.0328099   -1.8677953
JiVitA-4         Bangladesh     24 months   2                    NA                -1.6207427   -1.7050846   -1.5364007
JiVitA-4         Bangladesh     24 months   3                    NA                -1.8050481   -1.8568337   -1.7532625
JiVitA-4         Bangladesh     24 months   4                    NA                -1.7266405   -1.7869213   -1.6663597
Keneba           Gambia         Birth       1                    NA                -0.0160491   -0.1381423    0.1060441
Keneba           Gambia         Birth       2                    NA                -0.0331148   -0.1582233    0.0919938
Keneba           Gambia         Birth       3                    NA                 0.1386508    0.0183645    0.2589371
Keneba           Gambia         Birth       4                    NA                 0.0567241   -0.0855275    0.1989758
Keneba           Gambia         6 months    1                    NA                -1.0379522   -1.1382484   -0.9376560
Keneba           Gambia         6 months    2                    NA                -0.9111164   -1.0099722   -0.8122607
Keneba           Gambia         6 months    3                    NA                -0.8681870   -0.9564848   -0.7798893
Keneba           Gambia         6 months    4                    NA                -0.8245806   -0.9151756   -0.7339855
Keneba           Gambia         24 months   1                    NA                -1.5291437   -1.6252462   -1.4330412
Keneba           Gambia         24 months   2                    NA                -1.6030254   -1.6967617   -1.5092890
Keneba           Gambia         24 months   3                    NA                -1.6316602   -1.7282544   -1.5350661
Keneba           Gambia         24 months   4                    NA                -1.5496979   -1.6630494   -1.4363463
LCNI-5           Malawi         6 months    1                    NA                -1.6369118   -1.7720869   -1.5017366
LCNI-5           Malawi         6 months    2                    NA                -1.7060188   -1.8223090   -1.5897286
LCNI-5           Malawi         6 months    3                    NA                -1.6620354   -1.8631471   -1.4609237
LCNI-5           Malawi         6 months    4                    NA                -1.6105419   -1.7454428   -1.4756409
LCNI-5           Malawi         24 months   1                    NA                -1.8422297   -2.0056412   -1.6788182
LCNI-5           Malawi         24 months   2                    NA                -1.8376543   -2.0543703   -1.6209384
LCNI-5           Malawi         24 months   3                    NA                -1.9061136   -2.0380338   -1.7741935
LCNI-5           Malawi         24 months   4                    NA                -1.9325769   -2.0980305   -1.7671233
MAL-ED           Bangladesh     Birth       1                    NA                -1.1408824   -1.3834645   -0.8983002
MAL-ED           Bangladesh     Birth       2                    NA                -1.0513725   -1.3293437   -0.7734014
MAL-ED           Bangladesh     Birth       3                    NA                -1.0589063   -1.3044215   -0.8133910
MAL-ED           Bangladesh     Birth       4                    NA                -1.2356250   -1.5584555   -0.9127945
MAL-ED           Bangladesh     6 months    1                    NA                -1.2273939   -1.4743921   -0.9803958
MAL-ED           Bangladesh     6 months    2                    NA                -1.1351643   -1.3316335   -0.9386952
MAL-ED           Bangladesh     6 months    3                    NA                -1.1724722   -1.4168860   -0.9280584
MAL-ED           Bangladesh     6 months    4                    NA                -1.3082121   -1.5652991   -1.0511252
MAL-ED           Bangladesh     24 months   1                    NA                -2.0490411   -2.2570233   -1.8410589
MAL-ED           Bangladesh     24 months   2                    NA                -1.9259804   -2.1644871   -1.6874737
MAL-ED           Bangladesh     24 months   3                    NA                -1.9139583   -2.1742784   -1.6536383
MAL-ED           Bangladesh     24 months   4                    NA                -1.9936250   -2.3320635   -1.6551865
MAL-ED           Brazil         Birth       1                    NA                -1.2247368   -1.7714619   -0.6780118
MAL-ED           Brazil         Birth       2                    NA                -0.4625000   -1.1522845    0.2272845
MAL-ED           Brazil         Birth       3                    NA                -0.4008333   -0.9596373    0.1579707
MAL-ED           Brazil         Birth       4                    NA                -0.4686364   -0.8464990   -0.0907737
MAL-ED           Brazil         6 months    1                    NA                 0.2955469    0.0289768    0.5621170
MAL-ED           Brazil         6 months    2                    NA                 0.1888562   -0.0475864    0.4252988
MAL-ED           Brazil         6 months    3                    NA                -0.2299242   -0.5480803    0.0882318
MAL-ED           Brazil         6 months    4                    NA                -0.1697333   -0.4737700    0.1343033
MAL-ED           Brazil         24 months   1                    NA                -0.1268462   -0.3917918    0.1380995
MAL-ED           Brazil         24 months   2                    NA                 0.4552778    0.1583622    0.7521933
MAL-ED           Brazil         24 months   3                    NA                -0.1062403   -0.4708207    0.2583401
MAL-ED           Brazil         24 months   4                    NA                 0.0060753   -0.4035074    0.4156579
MAL-ED           India          Birth       1                    NA                -0.6600000   -1.0887172   -0.2312828
MAL-ED           India          Birth       2                    NA                -1.4309091   -2.1091489   -0.7526692
MAL-ED           India          Birth       3                    NA                -1.3266667   -1.9160082   -0.7373252
MAL-ED           India          Birth       4                    NA                -1.3078571   -1.8220706   -0.7936437
MAL-ED           India          6 months    1                    NA                -1.2939646   -1.5500468   -1.0378825
MAL-ED           India          6 months    2                    NA                -1.1828968   -1.4312407   -0.9345529
MAL-ED           India          6 months    3                    NA                -1.2131963   -1.4297959   -0.9965968
MAL-ED           India          6 months    4                    NA                -1.1322424   -1.3414679   -0.9230170
MAL-ED           India          24 months   1                    NA                -1.9093846   -2.1378960   -1.6808732
MAL-ED           India          24 months   2                    NA                -1.8821831   -2.1041485   -1.6602177
MAL-ED           India          24 months   3                    NA                -1.8169444   -2.0633380   -1.5705509
MAL-ED           India          24 months   4                    NA                -1.9541892   -2.2905637   -1.6178147
MAL-ED           Nepal          Birth       1                    NA                -0.5040000   -1.0342626    0.0262626
MAL-ED           Nepal          Birth       2                    NA                -1.0110000   -1.5313221   -0.4906779
MAL-ED           Nepal          Birth       3                    NA                -0.9328571   -1.7563622   -0.1093521
MAL-ED           Nepal          Birth       4                    NA                -0.7760000   -1.7127077    0.1607077
MAL-ED           Nepal          6 months    1                    NA                -0.5178333   -0.7284271   -0.3072395
MAL-ED           Nepal          6 months    2                    NA                -0.4534463   -0.6639814   -0.2429113
MAL-ED           Nepal          6 months    3                    NA                -0.3889831   -0.6083886   -0.1695775
MAL-ED           Nepal          6 months    4                    NA                -0.8924138   -1.1302395   -0.6545881
MAL-ED           Nepal          24 months   1                    NA                -1.6375758   -1.8480221   -1.4271294
MAL-ED           Nepal          24 months   2                    NA                -1.1804918   -1.4155897   -0.9453939
MAL-ED           Nepal          24 months   3                    NA                -1.2606349   -1.4793239   -1.0419460
MAL-ED           Nepal          24 months   4                    NA                -1.0163158   -1.2913661   -0.7412654
MAL-ED           Peru           Birth       1                    NA                -0.6720408   -0.9240405   -0.4200412
MAL-ED           Peru           Birth       2                    NA                -0.9288889   -1.1919533   -0.6658245
MAL-ED           Peru           Birth       3                    NA                -0.8711594   -1.0586810   -0.6836378
MAL-ED           Peru           Birth       4                    NA                -1.0244262   -1.2630627   -0.7857897
MAL-ED           Peru           6 months    1                    NA                -1.3425174   -1.5198885   -1.1651463
MAL-ED           Peru           6 months    2                    NA                -1.4898268   -1.6981296   -1.2815241
MAL-ED           Peru           6 months    3                    NA                -1.1353333   -1.3693498   -0.9013169
MAL-ED           Peru           6 months    4                    NA                -1.2410625   -1.5003360   -0.9817890
MAL-ED           Peru           24 months   1                    NA                -1.5386364   -1.7717168   -1.3055560
MAL-ED           Peru           24 months   2                    NA                -1.7941667   -2.0670121   -1.5213212
MAL-ED           Peru           24 months   3                    NA                -1.7975000   -1.9971305   -1.5978695
MAL-ED           Peru           24 months   4                    NA                -1.9135870   -2.1708700   -1.6563039
MAL-ED           South Africa   Birth       1                    NA                -0.8708000   -1.2639785   -0.4776215
MAL-ED           South Africa   Birth       2                    NA                -0.4717391   -0.8848859   -0.0585924
MAL-ED           South Africa   Birth       3                    NA                -0.8471429   -1.0949733   -0.5993124
MAL-ED           South Africa   Birth       4                    NA                -0.3857500   -0.8036018    0.0321018
MAL-ED           South Africa   6 months    1                    NA                -1.2029088   -1.3937648   -1.0120528
MAL-ED           South Africa   6 months    2                    NA                -1.1371642   -1.3990071   -0.8753213
MAL-ED           South Africa   6 months    3                    NA                -0.7153333   -1.0001643   -0.4305024
MAL-ED           South Africa   6 months    4                    NA                -0.9498611   -1.2748468   -0.6248754
MAL-ED           South Africa   24 months   1                    NA                -1.5092727   -1.7725472   -1.2459983
MAL-ED           South Africa   24 months   2                    NA                -1.2153846   -1.5435722   -0.8871970
MAL-ED           South Africa   24 months   3                    NA                -1.7934399   -2.0057415   -1.5811384
MAL-ED           South Africa   24 months   4                    NA                -1.8427299   -2.1274108   -1.5580490
MAL-ED           Tanzania       Birth       1                    NA                -1.7755556   -2.5008237   -1.0502874
MAL-ED           Tanzania       Birth       2                    NA                -0.8580000   -1.2262069   -0.4897931
MAL-ED           Tanzania       Birth       3                    NA                -1.1011765   -1.4874032   -0.7149497
MAL-ED           Tanzania       Birth       4                    NA                -1.1847368   -1.4965347   -0.8729390
MAL-ED           Tanzania       6 months    1                    NA                -1.4766197   -1.6970186   -1.2562208
MAL-ED           Tanzania       6 months    2                    NA                -1.4019583   -1.6326963   -1.1712204
MAL-ED           Tanzania       6 months    3                    NA                -1.1613208   -1.4142442   -0.9083973
MAL-ED           Tanzania       6 months    4                    NA                -1.3844961   -1.6503290   -1.1186633
MAL-ED           Tanzania       24 months   1                    NA                -2.5979464   -2.8341910   -2.3617018
MAL-ED           Tanzania       24 months   2                    NA                -2.5074576   -2.7578396   -2.2570757
MAL-ED           Tanzania       24 months   3                    NA                -2.6410169   -2.9094955   -2.3725384
MAL-ED           Tanzania       24 months   4                    NA                -2.9226250   -3.2541153   -2.5911347
PROBIT           Belarus        Birth       1                    NA                 1.3018730    1.1547126    1.4490335
PROBIT           Belarus        Birth       2                    NA                 1.3153349    1.1397689    1.4909010
PROBIT           Belarus        Birth       3                    NA                 1.3201050    1.1337149    1.5064950
PROBIT           Belarus        Birth       4                    NA                 1.3767196    1.2073287    1.5461104
PROBIT           Belarus        6 months    1                    NA                 0.1894518    0.0816541    0.2972496
PROBIT           Belarus        6 months    2                    NA                 0.0929628   -0.0099733    0.1958988
PROBIT           Belarus        6 months    3                    NA                 0.1440259    0.0307449    0.2573069
PROBIT           Belarus        6 months    4                    NA                 0.0133208   -0.0944668    0.1211084
PROBIT           Belarus        24 months   1                    NA                -0.2455997   -0.9113038    0.4201044
PROBIT           Belarus        24 months   2                    NA                -0.1931052   -0.3957196    0.0095092
PROBIT           Belarus        24 months   3                    NA                -0.0047811   -0.2019284    0.1923663
PROBIT           Belarus        24 months   4                    NA                -0.0377162   -0.8759944    0.8005619
PROVIDE          Bangladesh     Birth       1                    NA                -1.0088462   -1.1827462   -0.8349461
PROVIDE          Bangladesh     Birth       2                    NA                -0.7811656   -0.9110409   -0.6512904
PROVIDE          Bangladesh     Birth       3                    NA                -0.7998969   -0.9595988   -0.6401950
PROVIDE          Bangladesh     Birth       4                    NA                -0.9624876   -1.0982552   -0.8267200
PROVIDE          Bangladesh     6 months    1                    NA                -1.1982227   -1.3304184   -1.0660271
PROVIDE          Bangladesh     6 months    2                    NA                -0.8678279   -1.0392466   -0.6964091
PROVIDE          Bangladesh     6 months    3                    NA                -1.1636286   -1.2877673   -1.0394898
PROVIDE          Bangladesh     6 months    4                    NA                -1.0109028   -1.1897644   -0.8320412
PROVIDE          Bangladesh     24 months   1                    NA                -1.7664646   -1.9438732   -1.5890561
PROVIDE          Bangladesh     24 months   2                    NA                -1.5412903   -1.6784237   -1.4041569
PROVIDE          Bangladesh     24 months   3                    NA                -1.5500000   -1.7765825   -1.3234175
PROVIDE          Bangladesh     24 months   4                    NA                -1.6055026   -1.7542998   -1.4567055
ResPak           Pakistan       6 months    1                    NA                -1.2467134   -1.5367530   -0.9566737
ResPak           Pakistan       6 months    2                    NA                -1.5500000   -1.8986217   -1.2013783
ResPak           Pakistan       6 months    3                    NA                -0.9904167   -2.0775272    0.0966939
ResPak           Pakistan       6 months    4                    NA                -1.8801923   -2.3877592   -1.3726254
SAS-CompFeed     India          Birth       1                    NA                -1.5270696   -1.6175357   -1.4366035
SAS-CompFeed     India          Birth       2                    NA                -1.3094608   -1.4562186   -1.1627029
SAS-CompFeed     India          Birth       3                    NA                -1.5043049   -1.7173832   -1.2912267
SAS-CompFeed     India          Birth       4                    NA                -1.4526724   -1.6375602   -1.2677847
SAS-CompFeed     India          6 months    1                    NA                -1.4588800   -1.6316081   -1.2861519
SAS-CompFeed     India          6 months    2                    NA                -1.3123913   -1.4459203   -1.1788623
SAS-CompFeed     India          6 months    3                    NA                -1.3709677   -1.4715865   -1.2703490
SAS-CompFeed     India          6 months    4                    NA                -1.4442761   -1.6001407   -1.2884115
SAS-FoodSuppl    India          6 months    1                    NA                -1.8080625   -1.9773870   -1.6387380
SAS-FoodSuppl    India          6 months    2                    NA                -2.1064865   -2.4943665   -1.7186065
SAS-FoodSuppl    India          6 months    3                    NA                -1.9499057   -2.1666644   -1.7331469
SAS-FoodSuppl    India          6 months    4                    NA                -1.9166234   -2.1665360   -1.6667107
TanzaniaChild2   Tanzania       6 months    1                    NA                -0.3496447   -0.4537376   -0.2455518
TanzaniaChild2   Tanzania       6 months    2                    NA                -0.5425148   -0.6308232   -0.4542063
TanzaniaChild2   Tanzania       6 months    3                    NA                -0.6616613   -0.7644462   -0.5588765
TanzaniaChild2   Tanzania       6 months    4                    NA                -0.6374412   -0.7321871   -0.5426953
ZVITAMBO         Zimbabwe       Birth       1                    NA                -0.3650737   -0.4031650   -0.3269824
ZVITAMBO         Zimbabwe       Birth       2                    NA                -0.5312908   -0.5771352   -0.4854464
ZVITAMBO         Zimbabwe       Birth       3                    NA                -0.4085586   -0.4482368   -0.3688804
ZVITAMBO         Zimbabwe       Birth       4                    NA                -0.7050736   -0.7454795   -0.6646677
ZVITAMBO         Zimbabwe       6 months    1                    NA                -0.9153955   -0.9680354   -0.8627555
ZVITAMBO         Zimbabwe       6 months    2                    NA                -0.7951310   -0.8461100   -0.7441520
ZVITAMBO         Zimbabwe       6 months    3                    NA                -0.9145653   -0.9673261   -0.8618046
ZVITAMBO         Zimbabwe       6 months    4                    NA                -0.8534679   -0.9015281   -0.8054076
ZVITAMBO         Zimbabwe       24 months   1                    NA                -1.7274725   -1.8666115   -1.5883336
ZVITAMBO         Zimbabwe       24 months   2                    NA                -1.5895056   -1.6876776   -1.4913336
ZVITAMBO         Zimbabwe       24 months   3                    NA                -1.6695975   -1.8126049   -1.5265900
ZVITAMBO         Zimbabwe       24 months   4                    NA                -1.5387143   -1.6360396   -1.4413890


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       NA                   NA                -0.9611957   -1.1776967   -0.7446946
CMC-V-BCS-2002   India          6 months    NA                   NA                -1.4234508   -1.5645974   -1.2823042
CMC-V-BCS-2002   India          24 months   NA                   NA                -2.5588679   -2.6583730   -2.4593629
CMIN             Bangladesh     Birth       NA                   NA                -1.8811538   -2.5124807   -1.2498270
CMIN             Bangladesh     6 months    NA                   NA                -1.7844376   -1.9222926   -1.6465825
CMIN             Bangladesh     24 months   NA                   NA                -2.5109504   -2.6361514   -2.3857494
CONTENT          Peru           6 months    NA                   NA                -0.3139217   -0.4868486   -0.1409948
CONTENT          Peru           24 months   NA                   NA                -0.6962195   -0.8674103   -0.5250287
Guatemala BSC    Guatemala      6 months    NA                   NA                -1.5619008   -1.6727702   -1.4510313
IRC              India          Birth       NA                   NA                -0.3080412   -0.4687931   -0.1472894
IRC              India          6 months    NA                   NA                -1.2344062   -1.3658524   -1.1029600
IRC              India          24 months   NA                   NA                -1.7987775   -1.8923914   -1.7051636
JiVitA-3         Bangladesh     Birth       NA                   NA                -1.5894148   -1.6086362   -1.5701935
JiVitA-3         Bangladesh     6 months    NA                   NA                -1.3130932   -1.3362359   -1.2899505
JiVitA-3         Bangladesh     24 months   NA                   NA                -2.0131862   -2.0408408   -1.9855316
JiVitA-4         Bangladesh     Birth       NA                   NA                -1.5232908   -1.5723277   -1.4742539
JiVitA-4         Bangladesh     6 months    NA                   NA                -1.3447940   -1.3820261   -1.3075620
JiVitA-4         Bangladesh     24 months   NA                   NA                -1.7807218   -1.8162478   -1.7451958
Keneba           Gambia         Birth       NA                   NA                 0.0308036   -0.0328378    0.0944451
Keneba           Gambia         6 months    NA                   NA                -0.9036375   -0.9508087   -0.8564663
Keneba           Gambia         24 months   NA                   NA                -1.5774356   -1.6272400   -1.5276311
LCNI-5           Malawi         6 months    NA                   NA                -1.6601907   -1.7297701   -1.5906113
LCNI-5           Malawi         24 months   NA                   NA                -1.8861485   -1.9671802   -1.8051169
MAL-ED           Bangladesh     Birth       NA                   NA                -1.1180952   -1.2525408   -0.9836496
MAL-ED           Bangladesh     6 months    NA                   NA                -1.2049931   -1.3222136   -1.0877726
MAL-ED           Bangladesh     24 months   NA                   NA                -1.9783962   -2.1050210   -1.8517715
MAL-ED           Brazil         Birth       NA                   NA                -0.6760000   -0.9521457   -0.3998543
MAL-ED           Brazil         6 months    NA                   NA                 0.0475758   -0.0963508    0.1915023
MAL-ED           Brazil         24 months   NA                   NA                 0.0061144   -0.1625850    0.1748138
MAL-ED           India          Birth       NA                   NA                -1.2036170   -1.4976814   -0.9095527
MAL-ED           India          6 months    NA                   NA                -1.2115254   -1.3298727   -1.0931782
MAL-ED           India          24 months   NA                   NA                -1.8861894   -2.0110006   -1.7613783
MAL-ED           Nepal          Birth       NA                   NA                -0.8533333   -1.2104864   -0.4961803
MAL-ED           Nepal          6 months    NA                   NA                -0.5615819   -0.6741832   -0.4489807
MAL-ED           Nepal          24 months   NA                   NA                -1.3075877   -1.4270718   -1.1881037
MAL-ED           Peru           Birth       NA                   NA                -0.8827897   -1.0001058   -0.7654736
MAL-ED           Peru           6 months    NA                   NA                -1.3236661   -1.4316775   -1.2156546
MAL-ED           Peru           24 months   NA                   NA                -1.7524710   -1.8736426   -1.6312994
MAL-ED           South Africa   Birth       NA                   NA                -0.6317073   -0.8249555   -0.4384591
MAL-ED           South Africa   6 months    NA                   NA                -1.0633202   -1.1909180   -0.9357224
MAL-ED           South Africa   24 months   NA                   NA                -1.6450595   -1.7797240   -1.5103950
MAL-ED           Tanzania       Birth       NA                   NA                -1.1556000   -1.3655361   -0.9456639
MAL-ED           Tanzania       6 months    NA                   NA                -1.3687449   -1.4907629   -1.2467270
MAL-ED           Tanzania       24 months   NA                   NA                -2.6455607   -2.7807256   -2.5103959
PROBIT           Belarus        Birth       NA                   NA                 1.3269446    1.1683850    1.4855041
PROBIT           Belarus        6 months    NA                   NA                 0.1068536    0.0120998    0.2016074
PROBIT           Belarus        24 months   NA                   NA                -0.1314048   -0.4282725    0.1654630
PROVIDE          Bangladesh     Birth       NA                   NA                -0.8851020   -0.9601332   -0.8100709
PROVIDE          Bangladesh     6 months    NA                   NA                -1.0916915   -1.1661176   -1.0172654
PROVIDE          Bangladesh     24 months   NA                   NA                -1.6024221   -1.6857420   -1.5191023
ResPak           Pakistan       6 months    NA                   NA                -1.4314086   -1.6374838   -1.2253335
SAS-CompFeed     India          Birth       NA                   NA                -1.4314217   -1.5099245   -1.3529189
SAS-CompFeed     India          6 months    NA                   NA                -1.4018563   -1.4810585   -1.3226541
SAS-FoodSuppl    India          6 months    NA                   NA                -1.8986842   -2.0118892   -1.7854792
TanzaniaChild2   Tanzania       6 months    NA                   NA                -0.5434389   -0.5924056   -0.4944722
ZVITAMBO         Zimbabwe       Birth       NA                   NA                -0.5002724   -0.5208163   -0.4797285
ZVITAMBO         Zimbabwe       6 months    NA                   NA                -0.8679450   -0.8935071   -0.8423828
ZVITAMBO         Zimbabwe       24 months   NA                   NA                -1.6055701   -1.6625562   -1.5485840


### Parameter: ATE


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          Birth       2                    1                  0.1626111   -0.4795636    0.8047858
CMC-V-BCS-2002   India          Birth       3                    1                  0.3606111   -0.1919747    0.9131970
CMC-V-BCS-2002   India          Birth       4                    1                  0.1725585   -0.4087835    0.7539005
CMC-V-BCS-2002   India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          6 months    2                    1                  0.1950339   -0.1890949    0.5791627
CMC-V-BCS-2002   India          6 months    3                    1                  0.2913453   -0.0764719    0.6591625
CMC-V-BCS-2002   India          6 months    4                    1                  0.1148207   -0.2928963    0.5225377
CMC-V-BCS-2002   India          24 months   1                    1                  0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          24 months   2                    1                  0.0914980   -0.1821603    0.3651563
CMC-V-BCS-2002   India          24 months   3                    1                  0.0739964   -0.1886637    0.3366565
CMC-V-BCS-2002   India          24 months   4                    1                  0.1141983   -0.2005962    0.4289928
CMIN             Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     Birth       2                    1                  1.0576190   -0.6715061    2.7867442
CMIN             Bangladesh     Birth       3                    1                  1.1159524   -0.5132705    2.7451753
CMIN             Bangladesh     Birth       4                    1                  0.1171429   -1.3350038    1.5692895
CMIN             Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     6 months    2                    1                  0.5509430    0.1540350    0.9478510
CMIN             Bangladesh     6 months    3                    1                  0.0294634   -0.4043504    0.4632771
CMIN             Bangladesh     6 months    4                    1                 -0.0258500   -0.4469690    0.3952690
CMIN             Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     24 months   2                    1                  0.1196210   -0.2046885    0.4439304
CMIN             Bangladesh     24 months   3                    1                  0.3174845    0.0048194    0.6301497
CMIN             Bangladesh     24 months   4                    1                 -0.1265835   -0.5037611    0.2505941
CONTENT          Peru           6 months    1                    1                  0.0000000    0.0000000    0.0000000
CONTENT          Peru           6 months    2                    1                  0.1244047   -0.4217472    0.6705567
CONTENT          Peru           6 months    3                    1                 -0.3077037   -0.8348902    0.2194828
CONTENT          Peru           6 months    4                    1                 -0.1480267   -0.5791379    0.2830844
CONTENT          Peru           24 months   1                    1                  0.0000000    0.0000000    0.0000000
CONTENT          Peru           24 months   2                    1                  0.1503117   -0.3231149    0.6237383
CONTENT          Peru           24 months   3                    1                 -0.0415455   -0.4846836    0.4015927
CONTENT          Peru           24 months   4                    1                 -0.0357677   -0.4735510    0.4020156
Guatemala BSC    Guatemala      6 months    1                    1                  0.0000000    0.0000000    0.0000000
Guatemala BSC    Guatemala      6 months    2                    1                 -0.2395208   -0.5468342    0.0677925
Guatemala BSC    Guatemala      6 months    3                    1                  0.0097174   -0.2683137    0.2877486
Guatemala BSC    Guatemala      6 months    4                    1                 -0.0182407   -0.3207279    0.2842464
IRC              India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
IRC              India          Birth       2                    1                 -0.0905150   -0.5011826    0.3201527
IRC              India          Birth       3                    1                  0.6074071    0.0723238    1.1424904
IRC              India          Birth       4                    1                  0.2643047   -0.1799793    0.7085886
IRC              India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
IRC              India          6 months    2                    1                 -0.4312028   -0.8461111   -0.0162946
IRC              India          6 months    3                    1                 -0.4150074   -0.7484530   -0.0815618
IRC              India          6 months    4                    1                 -0.5113697   -0.8848304   -0.1379091
IRC              India          24 months   1                    1                  0.0000000    0.0000000    0.0000000
IRC              India          24 months   2                    1                  0.3210000    0.0792459    0.5627542
IRC              India          24 months   3                    1                  0.0875855   -0.1895965    0.3647675
IRC              India          24 months   4                    1                  0.3749550    0.1188475    0.6310625
JiVitA-3         Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     Birth       2                    1                  0.0519940    0.0104871    0.0935008
JiVitA-3         Bangladesh     Birth       3                    1                  0.2345888    0.1888883    0.2802894
JiVitA-3         Bangladesh     Birth       4                    1                  0.1648458    0.1154596    0.2142320
JiVitA-3         Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     6 months    2                    1                  0.0292276   -0.0247928    0.0832480
JiVitA-3         Bangladesh     6 months    3                    1                 -0.0438288   -0.0925680    0.0049103
JiVitA-3         Bangladesh     6 months    4                    1                 -0.0284550   -0.0804048    0.0234949
JiVitA-3         Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     24 months   2                    1                  0.1373538    0.0784114    0.1962962
JiVitA-3         Bangladesh     24 months   3                    1                  0.1638733    0.0971332    0.2306135
JiVitA-3         Bangladesh     24 months   4                    1                  0.2154107    0.1481422    0.2826792
JiVitA-4         Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     Birth       2                    1                  0.3800288    0.1899747    0.5700828
JiVitA-4         Bangladesh     Birth       3                    1                  0.0841901   -0.0701743    0.2385545
JiVitA-4         Bangladesh     Birth       4                    1                  0.2322211    0.0681483    0.3962938
JiVitA-4         Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     6 months    2                    1                  0.0486234   -0.0299368    0.1271836
JiVitA-4         Bangladesh     6 months    3                    1                  0.1542511    0.0530690    0.2554331
JiVitA-4         Bangladesh     6 months    4                    1                  0.0349970   -0.1920286    0.2620226
JiVitA-4         Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     24 months   2                    1                  0.3295599    0.2149469    0.4441730
JiVitA-4         Bangladesh     24 months   3                    1                  0.1452545    0.0503380    0.2401710
JiVitA-4         Bangladesh     24 months   4                    1                  0.2236621    0.1241450    0.3231793
Keneba           Gambia         Birth       1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         Birth       2                    1                 -0.0170656   -0.1918767    0.1577454
Keneba           Gambia         Birth       3                    1                  0.1546999   -0.0166931    0.3260929
Keneba           Gambia         Birth       4                    1                  0.0727732   -0.1146895    0.2602360
Keneba           Gambia         6 months    1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         6 months    2                    1                  0.1268358   -0.0139896    0.2676612
Keneba           Gambia         6 months    3                    1                  0.1697652    0.0361395    0.3033909
Keneba           Gambia         6 months    4                    1                  0.2133717    0.0782170    0.3485263
Keneba           Gambia         24 months   1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         24 months   2                    1                 -0.0738816   -0.2081284    0.0603651
Keneba           Gambia         24 months   3                    1                 -0.1025165   -0.2387741    0.0337410
Keneba           Gambia         24 months   4                    1                 -0.0205541   -0.1691619    0.1280536
LCNI-5           Malawi         6 months    1                    1                  0.0000000    0.0000000    0.0000000
LCNI-5           Malawi         6 months    2                    1                 -0.0691070   -0.2474206    0.1092065
LCNI-5           Malawi         6 months    3                    1                 -0.0251236   -0.2674421    0.2171948
LCNI-5           Malawi         6 months    4                    1                  0.0263699   -0.1646029    0.2173426
LCNI-5           Malawi         24 months   1                    1                  0.0000000    0.0000000    0.0000000
LCNI-5           Malawi         24 months   2                    1                  0.0045754   -0.2668451    0.2759960
LCNI-5           Malawi         24 months   3                    1                 -0.0638839   -0.2738988    0.1461310
LCNI-5           Malawi         24 months   4                    1                 -0.0903472   -0.3228944    0.1422000
MAL-ED           Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     Birth       2                    1                  0.0895098   -0.2794265    0.4584462
MAL-ED           Bangladesh     Birth       3                    1                  0.0819761   -0.2631671    0.4271193
MAL-ED           Bangladesh     Birth       4                    1                 -0.0947426   -0.4985565    0.3090712
MAL-ED           Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     6 months    2                    1                  0.0922296   -0.2233780    0.4078373
MAL-ED           Bangladesh     6 months    3                    1                  0.0549217   -0.2925638    0.4024072
MAL-ED           Bangladesh     6 months    4                    1                 -0.0808182   -0.4373315    0.2756952
MAL-ED           Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     24 months   2                    1                  0.1230607   -0.1933916    0.4395130
MAL-ED           Bangladesh     24 months   3                    1                  0.1350828   -0.1981185    0.4682841
MAL-ED           Bangladesh     24 months   4                    1                  0.0554161   -0.3418209    0.4526531
MAL-ED           Brazil         Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         Birth       2                    1                  0.7622368   -0.1179398    1.6424135
MAL-ED           Brazil         Birth       3                    1                  0.8239035    0.0421297    1.6056773
MAL-ED           Brazil         Birth       4                    1                  0.7561005    0.0915040    1.4206970
MAL-ED           Brazil         6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         6 months    2                    1                 -0.1066907   -0.4630118    0.2496304
MAL-ED           Brazil         6 months    3                    1                 -0.5254711   -0.9405409   -0.1104013
MAL-ED           Brazil         6 months    4                    1                 -0.4652802   -0.8696289   -0.0609315
MAL-ED           Brazil         24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         24 months   2                    1                  0.5821239    0.1841854    0.9800624
MAL-ED           Brazil         24 months   3                    1                  0.0206058   -0.4300771    0.4712888
MAL-ED           Brazil         24 months   4                    1                  0.1329214   -0.3548840    0.6207269
MAL-ED           India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          Birth       2                    1                 -0.7709091   -1.5732854    0.0314672
MAL-ED           India          Birth       3                    1                 -0.6666667   -1.3954477    0.0621144
MAL-ED           India          Birth       4                    1                 -0.6478571   -1.3173449    0.0216306
MAL-ED           India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          6 months    2                    1                  0.1110678   -0.2456572    0.4677929
MAL-ED           India          6 months    3                    1                  0.0807683   -0.2546321    0.4161687
MAL-ED           India          6 months    4                    1                  0.1617222   -0.1689640    0.4924084
MAL-ED           India          24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          24 months   2                    1                  0.0272015   -0.2913673    0.3457703
MAL-ED           India          24 months   3                    1                  0.0924402   -0.2436063    0.4284866
MAL-ED           India          24 months   4                    1                 -0.0448046   -0.4514559    0.3618467
MAL-ED           Nepal          Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          Birth       2                    1                 -0.5070000   -1.2499089    0.2359089
MAL-ED           Nepal          Birth       3                    1                 -0.4288571   -1.4083157    0.5506014
MAL-ED           Nepal          Birth       4                    1                 -0.2720000   -1.3483827    0.8043827
MAL-ED           Nepal          6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          6 months    2                    1                  0.0643870   -0.2333961    0.3621701
MAL-ED           Nepal          6 months    3                    1                  0.1288503   -0.1752690    0.4329695
MAL-ED           Nepal          6 months    4                    1                 -0.3745805   -0.6922451   -0.0569158
MAL-ED           Nepal          24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          24 months   2                    1                  0.4570840    0.1415548    0.7726131
MAL-ED           Nepal          24 months   3                    1                  0.3769408    0.0734404    0.6804413
MAL-ED           Nepal          24 months   4                    1                  0.6212600    0.2749359    0.9675840
MAL-ED           Peru           Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           Birth       2                    1                 -0.2568481   -0.6211374    0.1074412
MAL-ED           Peru           Birth       3                    1                 -0.1991186   -0.5132335    0.1149963
MAL-ED           Peru           Birth       4                    1                 -0.3523854   -0.6994462   -0.0053246
MAL-ED           Peru           6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           6 months    2                    1                 -0.1473095   -0.4208978    0.1262788
MAL-ED           Peru           6 months    3                    1                  0.2071840   -0.0864556    0.5008236
MAL-ED           Peru           6 months    4                    1                  0.1014549   -0.2126841    0.4155938
MAL-ED           Peru           24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           24 months   2                    1                 -0.2555303   -0.6143773    0.1033166
MAL-ED           Peru           24 months   3                    1                 -0.2588636   -0.5657493    0.0480220
MAL-ED           Peru           24 months   4                    1                 -0.3749506   -0.7221120   -0.0277892
MAL-ED           South Africa   Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   Birth       2                    1                  0.3990609   -0.1712720    0.9693937
MAL-ED           South Africa   Birth       3                    1                  0.0236571   -0.4411108    0.4884251
MAL-ED           South Africa   Birth       4                    1                  0.4850500   -0.0887003    1.0588003
MAL-ED           South Africa   6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   6 months    2                    1                  0.0657446   -0.2582735    0.3897627
MAL-ED           South Africa   6 months    3                    1                  0.4875755    0.1447130    0.8304379
MAL-ED           South Africa   6 months    4                    1                  0.2530477   -0.1238365    0.6299319
MAL-ED           South Africa   24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   24 months   2                    1                  0.2938881   -0.1268500    0.7146262
MAL-ED           South Africa   24 months   3                    1                 -0.2841672   -0.6223763    0.0540419
MAL-ED           South Africa   24 months   4                    1                 -0.3334572   -0.7212157    0.0543013
MAL-ED           Tanzania       Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       Birth       2                    1                  0.9175556    0.1041736    1.7309375
MAL-ED           Tanzania       Birth       3                    1                  0.6743791   -0.1473174    1.4960755
MAL-ED           Tanzania       Birth       4                    1                  0.5908187   -0.1986316    1.3802690
MAL-ED           Tanzania       6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       6 months    2                    1                  0.0746614   -0.2444243    0.3937471
MAL-ED           Tanzania       6 months    3                    1                  0.3152990   -0.0201797    0.6507776
MAL-ED           Tanzania       6 months    4                    1                  0.0921236   -0.2531919    0.4374391
MAL-ED           Tanzania       24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       24 months   2                    1                  0.0904888   -0.2537533    0.4347309
MAL-ED           Tanzania       24 months   3                    1                 -0.0430705   -0.4006908    0.3145497
MAL-ED           Tanzania       24 months   4                    1                 -0.3246786   -0.7317379    0.0823808
PROBIT           Belarus        Birth       1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        Birth       2                    1                  0.0134619   -0.0933216    0.1202454
PROBIT           Belarus        Birth       3                    1                  0.0182320   -0.0632806    0.0997445
PROBIT           Belarus        Birth       4                    1                  0.0748466   -0.0129766    0.1626697
PROBIT           Belarus        6 months    1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        6 months    2                    1                 -0.0964890   -0.1938124    0.0008343
PROBIT           Belarus        6 months    3                    1                 -0.0454259   -0.1263378    0.0354860
PROBIT           Belarus        6 months    4                    1                 -0.1761310   -0.2593159   -0.0929461
PROBIT           Belarus        24 months   1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        24 months   2                    1                  0.0524945   -0.6214239    0.7264129
PROBIT           Belarus        24 months   3                    1                  0.2408186   -0.4334639    0.9151011
PROBIT           Belarus        24 months   4                    1                  0.2078835   -0.8604569    1.2762238
PROVIDE          Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     Birth       2                    1                  0.2276805    0.0106348    0.4447262
PROVIDE          Bangladesh     Birth       3                    1                  0.2089492   -0.0271565    0.4450550
PROVIDE          Bangladesh     Birth       4                    1                  0.0463586   -0.1742634    0.2669806
PROVIDE          Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     6 months    2                    1                  0.3303949    0.1139230    0.5468668
PROVIDE          Bangladesh     6 months    3                    1                  0.0345942   -0.1467512    0.2159395
PROVIDE          Bangladesh     6 months    4                    1                  0.1873200   -0.0350922    0.4097321
PROVIDE          Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     24 months   2                    1                  0.2251743    0.0009437    0.4494049
PROVIDE          Bangladesh     24 months   3                    1                  0.2164646   -0.0713086    0.5042379
PROVIDE          Bangladesh     24 months   4                    1                  0.1609620   -0.0705858    0.3925098
ResPak           Pakistan       6 months    1                    1                  0.0000000    0.0000000    0.0000000
ResPak           Pakistan       6 months    2                    1                 -0.3032866   -0.7567842    0.1502110
ResPak           Pakistan       6 months    3                    1                  0.2562967   -0.8688398    1.3814333
ResPak           Pakistan       6 months    4                    1                 -0.6334789   -1.2180703   -0.0488875
SAS-CompFeed     India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
SAS-CompFeed     India          Birth       2                    1                  0.2176088    0.0805390    0.3546786
SAS-CompFeed     India          Birth       3                    1                  0.0227647   -0.1963223    0.2418517
SAS-CompFeed     India          Birth       4                    1                  0.0743972   -0.1260578    0.2748522
SAS-CompFeed     India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
SAS-CompFeed     India          6 months    2                    1                  0.1464887   -0.0867376    0.3797150
SAS-CompFeed     India          6 months    3                    1                  0.0879123   -0.0833584    0.2591829
SAS-CompFeed     India          6 months    4                    1                  0.0146039   -0.2445937    0.2738015
SAS-FoodSuppl    India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
SAS-FoodSuppl    India          6 months    2                    1                 -0.2984240   -0.7216517    0.1248037
SAS-FoodSuppl    India          6 months    3                    1                 -0.1418432   -0.4168979    0.1332116
SAS-FoodSuppl    India          6 months    4                    1                 -0.1085609   -0.4104335    0.1933118
TanzaniaChild2   Tanzania       6 months    1                    1                  0.0000000    0.0000000    0.0000000
TanzaniaChild2   Tanzania       6 months    2                    1                 -0.1928701   -0.3293754   -0.0563647
TanzaniaChild2   Tanzania       6 months    3                    1                 -0.3120166   -0.4583042   -0.1657291
TanzaniaChild2   Tanzania       6 months    4                    1                 -0.2877965   -0.4285520   -0.1470410
ZVITAMBO         Zimbabwe       Birth       1                    1                  0.0000000    0.0000000    0.0000000
ZVITAMBO         Zimbabwe       Birth       2                    1                 -0.1662172   -0.2258213   -0.1066130
ZVITAMBO         Zimbabwe       Birth       3                    1                 -0.0434849   -0.0984877    0.0115178
ZVITAMBO         Zimbabwe       Birth       4                    1                 -0.3399999   -0.3955299   -0.2844699
ZVITAMBO         Zimbabwe       6 months    1                    1                  0.0000000    0.0000000    0.0000000
ZVITAMBO         Zimbabwe       6 months    2                    1                  0.1202645    0.0469854    0.1935435
ZVITAMBO         Zimbabwe       6 months    3                    1                  0.0008301   -0.0736994    0.0753597
ZVITAMBO         Zimbabwe       6 months    4                    1                  0.0619276   -0.0093518    0.1332070
ZVITAMBO         Zimbabwe       24 months   1                    1                  0.0000000    0.0000000    0.0000000
ZVITAMBO         Zimbabwe       24 months   2                    1                  0.1379669   -0.0323192    0.3082531
ZVITAMBO         Zimbabwe       24 months   3                    1                  0.0578751   -0.1416513    0.2574015
ZVITAMBO         Zimbabwe       24 months   4                    1                  0.1887582    0.0189588    0.3585577


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       1                    NA                 0.1974155   -0.1894714    0.5843023
CMC-V-BCS-2002   India          6 months    1                    NA                 0.1539255   -0.0689205    0.3767714
CMC-V-BCS-2002   India          24 months   1                    NA                 0.0644819   -0.0996713    0.2286352
CMIN             Bangladesh     Birth       1                    NA                 0.5331319   -0.3683864    1.4346501
CMIN             Bangladesh     6 months    1                    NA                 0.1427957   -0.1492165    0.4348080
CMIN             Bangladesh     24 months   1                    NA                 0.0908445   -0.0792791    0.2609680
CONTENT          Peru           6 months    1                    NA                -0.0974701   -0.3777271    0.1827870
CONTENT          Peru           24 months   1                    NA                 0.0152350   -0.2233100    0.2537800
Guatemala BSC    Guatemala      6 months    1                    NA                -0.0656508   -0.2514775    0.1201760
IRC              India          Birth       1                    NA                 0.1585867   -0.1309468    0.4481202
IRC              India          6 months    1                    NA                -0.3168152   -0.5290001   -0.1046303
IRC              India          24 months   1                    NA                 0.1950237    0.0466654    0.3433819
JiVitA-3         Bangladesh     Birth       1                    NA                 0.0950467    0.0708742    0.1192192
JiVitA-3         Bangladesh     6 months    1                    NA                -0.0146211   -0.0475466    0.0183043
JiVitA-3         Bangladesh     24 months   1                    NA                 0.1164597    0.0817513    0.1511680
JiVitA-4         Bangladesh     Birth       1                    NA                 0.1473398    0.0167722    0.2779074
JiVitA-4         Bangladesh     6 months    1                    NA                 0.0472277   -0.0043977    0.0988532
JiVitA-4         Bangladesh     24 months   1                    NA                 0.1695808    0.0942802    0.2448814
Keneba           Gambia         Birth       1                    NA                 0.0468527   -0.0546403    0.1483457
Keneba           Gambia         6 months    1                    NA                 0.1343147    0.0459078    0.2227216
Keneba           Gambia         24 months   1                    NA                -0.0482919   -0.1279878    0.0314041
LCNI-5           Malawi         6 months    1                    NA                -0.0232789   -0.1425598    0.0960019
LCNI-5           Malawi         24 months   1                    NA                -0.0439188   -0.1839831    0.0961455
MAL-ED           Bangladesh     Birth       1                    NA                 0.0227871   -0.1828251    0.2283993
MAL-ED           Bangladesh     6 months    1                    NA                 0.0224009   -0.1941695    0.2389712
MAL-ED           Bangladesh     24 months   1                    NA                 0.0706449   -0.1011122    0.2424020
MAL-ED           Brazil         Birth       1                    NA                 0.5487368    0.1010558    0.9964179
MAL-ED           Brazil         6 months    1                    NA                -0.2479711   -0.4676406   -0.0283016
MAL-ED           Brazil         24 months   1                    NA                 0.1329606   -0.0783652    0.3442864
MAL-ED           India          Birth       1                    NA                -0.5436170   -0.9818637   -0.1053703
MAL-ED           India          6 months    1                    NA                 0.0824392   -0.1246957    0.2895742
MAL-ED           India          24 months   1                    NA                 0.0231952   -0.1714609    0.2178513
MAL-ED           Nepal          Birth       1                    NA                -0.3493333   -0.9012361    0.2025694
MAL-ED           Nepal          6 months    1                    NA                -0.0437486   -0.2294313    0.1419341
MAL-ED           Nepal          24 months   1                    NA                 0.3299880    0.1485387    0.5114374
MAL-ED           Peru           Birth       1                    NA                -0.2107489   -0.4355980    0.0141002
MAL-ED           Peru           6 months    1                    NA                 0.0188513   -0.1260656    0.1637682
MAL-ED           Peru           24 months   1                    NA                -0.2138346   -0.4120217   -0.0156475
MAL-ED           South Africa   Birth       1                    NA                 0.2390927   -0.1202025    0.5983878
MAL-ED           South Africa   6 months    1                    NA                 0.1395886   -0.0097579    0.2889351
MAL-ED           South Africa   24 months   1                    NA                -0.1357868   -0.3711851    0.0996115
MAL-ED           Tanzania       Birth       1                    NA                 0.6199556   -0.0270337    1.2669448
MAL-ED           Tanzania       6 months    1                    NA                 0.1078748   -0.0806404    0.2963899
MAL-ED           Tanzania       24 months   1                    NA                -0.0476143   -0.2594428    0.1642141
PROBIT           Belarus        Birth       1                    NA                 0.0250715   -0.0302074    0.0803505
PROBIT           Belarus        6 months    1                    NA                -0.0825982   -0.1367876   -0.0284088
PROBIT           Belarus        24 months   1                    NA                 0.1141949   -0.4203188    0.6487086
PROVIDE          Bangladesh     Birth       1                    NA                 0.1237441   -0.0409324    0.2884206
PROVIDE          Bangladesh     6 months    1                    NA                 0.1065312    0.0025836    0.2104788
PROVIDE          Bangladesh     24 months   1                    NA                 0.1640425   -0.0021932    0.3302782
ResPak           Pakistan       6 months    1                    NA                -0.1846953   -0.4111162    0.0417257
SAS-CompFeed     India          Birth       1                    NA                 0.0956479    0.0192806    0.1720151
SAS-CompFeed     India          6 months    1                    NA                 0.0570237   -0.0845663    0.1986138
SAS-FoodSuppl    India          6 months    1                    NA                -0.0906217   -0.2223120    0.0410686
TanzaniaChild2   Tanzania       6 months    1                    NA                -0.1937942   -0.2816688   -0.1059196
ZVITAMBO         Zimbabwe       Birth       1                    NA                -0.1351988   -0.1682481   -0.1021494
ZVITAMBO         Zimbabwe       6 months    1                    NA                 0.0474505    0.0022591    0.0926419
ZVITAMBO         Zimbabwe       24 months   1                    NA                 0.1219024   -0.0052263    0.2490311

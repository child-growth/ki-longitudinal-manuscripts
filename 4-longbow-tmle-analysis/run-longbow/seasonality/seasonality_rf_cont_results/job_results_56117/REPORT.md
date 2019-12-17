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
CMC-V-BCS-2002   India          24 months                1       87     333  haz              
CMC-V-BCS-2002   India          24 months                2       90     333  haz              
CMC-V-BCS-2002   India          24 months                3       94     333  haz              
CMC-V-BCS-2002   India          24 months                4       62     333  haz              
CMIN             Bangladesh     Birth                    1        7      26  haz              
CMIN             Bangladesh     Birth                    2        6      26  haz              
CMIN             Bangladesh     Birth                    3        6      26  haz              
CMIN             Bangladesh     Birth                    4        7      26  haz              
CMIN             Bangladesh     6 months                 1       50     243  haz              
CMIN             Bangladesh     6 months                 2       62     243  haz              
CMIN             Bangladesh     6 months                 3       71     243  haz              
CMIN             Bangladesh     6 months                 4       60     243  haz              
CMIN             Bangladesh     24 months                1       72     224  haz              
CMIN             Bangladesh     24 months                2       64     224  haz              
CMIN             Bangladesh     24 months                3       52     224  haz              
CMIN             Bangladesh     24 months                4       36     224  haz              
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
EE               Pakistan       24 months                1        7     158  haz              
EE               Pakistan       24 months                2      151     158  haz              
EE               Pakistan       24 months                3        0     158  haz              
EE               Pakistan       24 months                4        0     158  haz              
GMS-Nepal        Nepal          Birth                    1        0     696  haz              
GMS-Nepal        Nepal          Birth                    2        0     696  haz              
GMS-Nepal        Nepal          Birth                    3      161     696  haz              
GMS-Nepal        Nepal          Birth                    4      535     696  haz              
GMS-Nepal        Nepal          6 months                 1      502     564  haz              
GMS-Nepal        Nepal          6 months                 2       62     564  haz              
GMS-Nepal        Nepal          6 months                 3        0     564  haz              
GMS-Nepal        Nepal          6 months                 4        0     564  haz              
GMS-Nepal        Nepal          24 months                1        0     323  haz              
GMS-Nepal        Nepal          24 months                2        0     323  haz              
GMS-Nepal        Nepal          24 months                3       34     323  haz              
GMS-Nepal        Nepal          24 months                4      289     323  haz              
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
IRC              India          24 months                1       87     347  haz              
IRC              India          24 months                2      108     347  haz              
IRC              India          24 months                3       81     347  haz              
IRC              India          24 months                4       71     347  haz              
JiVitA-3         Bangladesh     Birth                    1     6556   22455  haz              
JiVitA-3         Bangladesh     Birth                    2     7177   22455  haz              
JiVitA-3         Bangladesh     Birth                    3     4636   22455  haz              
JiVitA-3         Bangladesh     Birth                    4     4086   22455  haz              
JiVitA-3         Bangladesh     6 months                 1     3724   16811  haz              
JiVitA-3         Bangladesh     6 months                 2     3587   16811  haz              
JiVitA-3         Bangladesh     6 months                 3     5224   16811  haz              
JiVitA-3         Bangladesh     6 months                 4     4276   16811  haz              
JiVitA-3         Bangladesh     24 months                1        0       3  haz              
JiVitA-3         Bangladesh     24 months                2        0       3  haz              
JiVitA-3         Bangladesh     24 months                3        0       3  haz              
JiVitA-3         Bangladesh     24 months                4        3       3  haz              
JiVitA-4         Bangladesh     Birth                    1      333    2823  haz              
JiVitA-4         Bangladesh     Birth                    2      216    2823  haz              
JiVitA-4         Bangladesh     Birth                    3     1312    2823  haz              
JiVitA-4         Bangladesh     Birth                    4      962    2823  haz              
JiVitA-4         Bangladesh     6 months                 1     1469    4831  haz              
JiVitA-4         Bangladesh     6 months                 2     2613    4831  haz              
JiVitA-4         Bangladesh     6 months                 3      628    4831  haz              
JiVitA-4         Bangladesh     6 months                 4      121    4831  haz              
JiVitA-4         Bangladesh     24 months                1      205    1274  haz              
JiVitA-4         Bangladesh     24 months                2      130    1274  haz              
JiVitA-4         Bangladesh     24 months                3      520    1274  haz              
JiVitA-4         Bangladesh     24 months                4      419    1274  haz              
Keneba           Gambia         Birth                    1      448    1543  haz              
Keneba           Gambia         Birth                    2      427    1543  haz              
Keneba           Gambia         Birth                    3      378    1543  haz              
Keneba           Gambia         Birth                    4      290    1543  haz              
Keneba           Gambia         6 months                 1      464    2089  haz              
Keneba           Gambia         6 months                 2      459    2089  haz              
Keneba           Gambia         6 months                 3      606    2089  haz              
Keneba           Gambia         6 months                 4      560    2089  haz              
Keneba           Gambia         24 months                1      178     706  haz              
Keneba           Gambia         24 months                2      216     706  haz              
Keneba           Gambia         24 months                3      130     706  haz              
Keneba           Gambia         24 months                4      182     706  haz              
LCNI-5           Malawi         6 months                 1      204     839  haz              
LCNI-5           Malawi         6 months                 2      319     839  haz              
LCNI-5           Malawi         6 months                 3      113     839  haz              
LCNI-5           Malawi         6 months                 4      203     839  haz              
LCNI-5           Malawi         24 months                1       51     214  haz              
LCNI-5           Malawi         24 months                2       14     214  haz              
LCNI-5           Malawi         24 months                3      103     214  haz              
LCNI-5           Malawi         24 months                4       46     214  haz              
MAL-ED           Bangladesh     Birth                    1       68     231  haz              
MAL-ED           Bangladesh     Birth                    2       51     231  haz              
MAL-ED           Bangladesh     Birth                    3       64     231  haz              
MAL-ED           Bangladesh     Birth                    4       48     231  haz              
MAL-ED           Bangladesh     6 months                 1       55     241  haz              
MAL-ED           Bangladesh     6 months                 2       71     241  haz              
MAL-ED           Bangladesh     6 months                 3       60     241  haz              
MAL-ED           Bangladesh     6 months                 4       55     241  haz              
MAL-ED           Bangladesh     24 months                1       49     187  haz              
MAL-ED           Bangladesh     24 months                2       51     187  haz              
MAL-ED           Bangladesh     24 months                3       43     187  haz              
MAL-ED           Bangladesh     24 months                4       44     187  haz              
MAL-ED           Brazil         Birth                    1       19      65  haz              
MAL-ED           Brazil         Birth                    2       12      65  haz              
MAL-ED           Brazil         Birth                    3       12      65  haz              
MAL-ED           Brazil         Birth                    4       22      65  haz              
MAL-ED           Brazil         6 months                 1       64     209  haz              
MAL-ED           Brazil         6 months                 2       51     209  haz              
MAL-ED           Brazil         6 months                 3       44     209  haz              
MAL-ED           Brazil         6 months                 4       50     209  haz              
MAL-ED           Brazil         24 months                1       54     167  haz              
MAL-ED           Brazil         24 months                2       32     167  haz              
MAL-ED           Brazil         24 months                3       43     167  haz              
MAL-ED           Brazil         24 months                4       38     167  haz              
MAL-ED           India          Birth                    1       10      47  haz              
MAL-ED           India          Birth                    2       11      47  haz              
MAL-ED           India          Birth                    3       12      47  haz              
MAL-ED           India          Birth                    4       14      47  haz              
MAL-ED           India          6 months                 1       66     236  haz              
MAL-ED           India          6 months                 2       42     236  haz              
MAL-ED           India          6 months                 3       73     236  haz              
MAL-ED           India          6 months                 4       55     236  haz              
MAL-ED           India          24 months                1       51     202  haz              
MAL-ED           India          24 months                2       55     202  haz              
MAL-ED           India          24 months                3       48     202  haz              
MAL-ED           India          24 months                4       48     202  haz              
MAL-ED           Nepal          Birth                    1        5      27  haz              
MAL-ED           Nepal          Birth                    2       10      27  haz              
MAL-ED           Nepal          Birth                    3        7      27  haz              
MAL-ED           Nepal          Birth                    4        5      27  haz              
MAL-ED           Nepal          6 months                 1       60     236  haz              
MAL-ED           Nepal          6 months                 2       59     236  haz              
MAL-ED           Nepal          6 months                 3       59     236  haz              
MAL-ED           Nepal          6 months                 4       58     236  haz              
MAL-ED           Nepal          24 months                1       51     200  haz              
MAL-ED           Nepal          24 months                2       56     200  haz              
MAL-ED           Nepal          24 months                3       55     200  haz              
MAL-ED           Nepal          24 months                4       38     200  haz              
MAL-ED           Peru           Birth                    1       49     233  haz              
MAL-ED           Peru           Birth                    2       54     233  haz              
MAL-ED           Peru           Birth                    3       69     233  haz              
MAL-ED           Peru           Birth                    4       61     233  haz              
MAL-ED           Peru           6 months                 1       96     273  haz              
MAL-ED           Peru           6 months                 2       77     273  haz              
MAL-ED           Peru           6 months                 3       60     273  haz              
MAL-ED           Peru           6 months                 4       40     273  haz              
MAL-ED           Peru           24 months                1       46     199  haz              
MAL-ED           Peru           24 months                2       42     199  haz              
MAL-ED           Peru           24 months                3       51     199  haz              
MAL-ED           Peru           24 months                4       60     199  haz              
MAL-ED           South Africa   Birth                    1       25     123  haz              
MAL-ED           South Africa   Birth                    2       23     123  haz              
MAL-ED           South Africa   Birth                    3       35     123  haz              
MAL-ED           South Africa   Birth                    4       40     123  haz              
MAL-ED           South Africa   6 months                 1      106     254  haz              
MAL-ED           South Africa   6 months                 2       67     254  haz              
MAL-ED           South Africa   6 months                 3       45     254  haz              
MAL-ED           South Africa   6 months                 4       36     254  haz              
MAL-ED           South Africa   24 months                1       45     203  haz              
MAL-ED           South Africa   24 months                2       31     203  haz              
MAL-ED           South Africa   24 months                3       72     203  haz              
MAL-ED           South Africa   24 months                4       55     203  haz              
MAL-ED           Tanzania       Birth                    1       18     125  haz              
MAL-ED           Tanzania       Birth                    2       35     125  haz              
MAL-ED           Tanzania       Birth                    3       34     125  haz              
MAL-ED           Tanzania       Birth                    4       38     125  haz              
MAL-ED           Tanzania       6 months                 1       71     247  haz              
MAL-ED           Tanzania       6 months                 2       80     247  haz              
MAL-ED           Tanzania       6 months                 3       53     247  haz              
MAL-ED           Tanzania       6 months                 4       43     247  haz              
MAL-ED           Tanzania       24 months                1       47     183  haz              
MAL-ED           Tanzania       24 months                2       50     183  haz              
MAL-ED           Tanzania       24 months                3       48     183  haz              
MAL-ED           Tanzania       24 months                4       38     183  haz              
PROBIT           Belarus        Birth                    1     3780   13890  haz              
PROBIT           Belarus        Birth                    2     4150   13890  haz              
PROBIT           Belarus        Birth                    3     2715   13890  haz              
PROBIT           Belarus        Birth                    4     3245   13890  haz              
PROBIT           Belarus        6 months                 1     3612   15761  haz              
PROBIT           Belarus        6 months                 2     3117   15761  haz              
PROBIT           Belarus        6 months                 3     4512   15761  haz              
PROBIT           Belarus        6 months                 4     4520   15761  haz              
PROBIT           Belarus        24 months                1      309    1168  haz              
PROBIT           Belarus        24 months                2      363    1168  haz              
PROBIT           Belarus        24 months                3      214    1168  haz              
PROBIT           Belarus        24 months                4      282    1168  haz              
PROVIDE          Bangladesh     Birth                    1       78     539  haz              
PROVIDE          Bangladesh     Birth                    2      163     539  haz              
PROVIDE          Bangladesh     Birth                    3       97     539  haz              
PROVIDE          Bangladesh     Birth                    4      201     539  haz              
PROVIDE          Bangladesh     6 months                 1      211     604  haz              
PROVIDE          Bangladesh     6 months                 2      122     604  haz              
PROVIDE          Bangladesh     6 months                 3      175     604  haz              
PROVIDE          Bangladesh     6 months                 4       96     604  haz              
PROVIDE          Bangladesh     24 months                1        4      40  haz              
PROVIDE          Bangladesh     24 months                2       13      40  haz              
PROVIDE          Bangladesh     24 months                3        4      40  haz              
PROVIDE          Bangladesh     24 months                4       19      40  haz              
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
TanzaniaChild2   Tanzania       24 months                1        0       4  haz              
TanzaniaChild2   Tanzania       24 months                2        2       4  haz              
TanzaniaChild2   Tanzania       24 months                3        0       4  haz              
TanzaniaChild2   Tanzania       24 months                4        2       4  haz              
ZVITAMBO         Zimbabwe       Birth                    1     3733   13875  haz              
ZVITAMBO         Zimbabwe       Birth                    2     3153   13875  haz              
ZVITAMBO         Zimbabwe       Birth                    3     3455   13875  haz              
ZVITAMBO         Zimbabwe       Birth                    4     3534   13875  haz              
ZVITAMBO         Zimbabwe       6 months                 1     2162    8669  haz              
ZVITAMBO         Zimbabwe       6 months                 2     2252    8669  haz              
ZVITAMBO         Zimbabwe       6 months                 3     2013    8669  haz              
ZVITAMBO         Zimbabwe       6 months                 4     2242    8669  haz              
ZVITAMBO         Zimbabwe       24 months                1       38     316  haz              
ZVITAMBO         Zimbabwe       24 months                2       78     316  haz              
ZVITAMBO         Zimbabwe       24 months                3       84     316  haz              
ZVITAMBO         Zimbabwe       24 months                4      116     316  haz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/238f068c-bdaa-40a2-b688-ba0f01889ab0/c3a7153e-466b-45b2-9da5-af483abf0bf4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/238f068c-bdaa-40a2-b688-ba0f01889ab0/c3a7153e-466b-45b2-9da5-af483abf0bf4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/238f068c-bdaa-40a2-b688-ba0f01889ab0/c3a7153e-466b-45b2-9da5-af483abf0bf4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
CMC-V-BCS-2002   India          24 months   1                    NA                -2.7185057   -2.9225781   -2.5144334
CMC-V-BCS-2002   India          24 months   2                    NA                -2.7580556   -2.9716638   -2.5444473
CMC-V-BCS-2002   India          24 months   3                    NA                -2.6550000   -2.8483400   -2.4616600
CMC-V-BCS-2002   India          24 months   4                    NA                -2.6190323   -2.8535167   -2.3845478
CMIN             Bangladesh     Birth       1                    NA                -2.4142857   -3.3615713   -1.4670002
CMIN             Bangladesh     Birth       2                    NA                -1.3566667   -2.8032226    0.0898892
CMIN             Bangladesh     Birth       3                    NA                -1.2983333   -2.6238587    0.0271920
CMIN             Bangladesh     Birth       4                    NA                -2.2971429   -3.3977700   -1.1965157
CMIN             Bangladesh     6 months    1                    NA                -1.9272333   -2.2628041   -1.5916625
CMIN             Bangladesh     6 months    2                    NA                -1.3762903   -1.5882531   -1.1643276
CMIN             Bangladesh     6 months    3                    NA                -1.8977700   -2.1727001   -1.6228398
CMIN             Bangladesh     6 months    4                    NA                -1.9530833   -2.2075111   -1.6986556
CMIN             Bangladesh     24 months   1                    NA                -2.6269444   -2.8317317   -2.4221572
CMIN             Bangladesh     24 months   2                    NA                -2.5953125   -2.8554854   -2.3351396
CMIN             Bangladesh     24 months   3                    NA                -2.2843269   -2.5576953   -2.0109585
CMIN             Bangladesh     24 months   4                    NA                -2.7388889   -3.0385266   -2.4392511
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
IRC              India          24 months   1                    NA                -2.1023563   -2.2939498   -1.9107628
IRC              India          24 months   2                    NA                -1.7338889   -1.9223515   -1.5454263
IRC              India          24 months   3                    NA                -1.9023457   -2.1179548   -1.6867366
IRC              India          24 months   4                    NA                -1.7980282   -2.0090327   -1.5870236
JiVitA-3         Bangladesh     Birth       1                    NA                -1.6844616   -1.7140495   -1.6548736
JiVitA-3         Bangladesh     Birth       2                    NA                -1.6324676   -1.6658149   -1.5991203
JiVitA-3         Bangladesh     Birth       3                    NA                -1.4498727   -1.4874599   -1.4122856
JiVitA-3         Bangladesh     Birth       4                    NA                -1.5196158   -1.5609255   -1.4783060
JiVitA-3         Bangladesh     6 months    1                    NA                -1.2984721   -1.3374265   -1.2595177
JiVitA-3         Bangladesh     6 months    2                    NA                -1.2692445   -1.3122170   -1.2262720
JiVitA-3         Bangladesh     6 months    3                    NA                -1.3423009   -1.3784985   -1.3061033
JiVitA-3         Bangladesh     6 months    4                    NA                -1.3269270   -1.3646862   -1.2891679
JiVitA-4         Bangladesh     Birth       1                    NA                -1.6706306   -1.8111999   -1.5300614
JiVitA-4         Bangladesh     Birth       2                    NA                -1.2906019   -1.4232388   -1.1579649
JiVitA-4         Bangladesh     Birth       3                    NA                -1.5864405   -1.6563064   -1.5165747
JiVitA-4         Bangladesh     Birth       4                    NA                -1.4384096   -1.5257501   -1.3510690
JiVitA-4         Bangladesh     6 months    1                    NA                -1.3920218   -1.4533017   -1.3307418
JiVitA-4         Bangladesh     6 months    2                    NA                -1.3433984   -1.3958757   -1.2909211
JiVitA-4         Bangladesh     6 months    3                    NA                -1.2377707   -1.3192549   -1.1562865
JiVitA-4         Bangladesh     6 months    4                    NA                -1.3570248   -1.5761255   -1.1379241
JiVitA-4         Bangladesh     24 months   1                    NA                -2.1633659   -2.2961386   -2.0305931
JiVitA-4         Bangladesh     24 months   2                    NA                -1.7014615   -1.8985175   -1.5044055
JiVitA-4         Bangladesh     24 months   3                    NA                -1.9664423   -2.0652420   -1.8676426
JiVitA-4         Bangladesh     24 months   4                    NA                -1.8500000   -1.9704606   -1.7295394
Keneba           Gambia         Birth       1                    NA                -0.0160491   -0.1381423    0.1060441
Keneba           Gambia         Birth       2                    NA                -0.0331148   -0.1582233    0.0919938
Keneba           Gambia         Birth       3                    NA                 0.1386508    0.0183645    0.2589371
Keneba           Gambia         Birth       4                    NA                 0.0567241   -0.0855275    0.1989758
Keneba           Gambia         6 months    1                    NA                -1.0379522   -1.1382484   -0.9376560
Keneba           Gambia         6 months    2                    NA                -0.9111164   -1.0099722   -0.8122607
Keneba           Gambia         6 months    3                    NA                -0.8681870   -0.9564848   -0.7798893
Keneba           Gambia         6 months    4                    NA                -0.8245806   -0.9151756   -0.7339855
Keneba           Gambia         24 months   1                    NA                -1.5596067   -1.7193166   -1.3998968
Keneba           Gambia         24 months   2                    NA                -1.6549228   -1.8055277   -1.5043180
Keneba           Gambia         24 months   3                    NA                -1.8249744   -2.0007329   -1.6492158
Keneba           Gambia         24 months   4                    NA                -1.6288965   -1.7870709   -1.4707221
LCNI-5           Malawi         6 months    1                    NA                -1.6369118   -1.7720869   -1.5017366
LCNI-5           Malawi         6 months    2                    NA                -1.7060188   -1.8223090   -1.5897286
LCNI-5           Malawi         6 months    3                    NA                -1.6620354   -1.8631471   -1.4609237
LCNI-5           Malawi         6 months    4                    NA                -1.6105419   -1.7454428   -1.4756409
LCNI-5           Malawi         24 months   1                    NA                -1.7970588   -2.0275008   -1.5666168
LCNI-5           Malawi         24 months   2                    NA                -2.3707143   -2.7130886   -2.0283400
LCNI-5           Malawi         24 months   3                    NA                -2.0918932   -2.2734577   -1.9103287
LCNI-5           Malawi         24 months   4                    NA                -2.1200000   -2.4240316   -1.8159684
MAL-ED           Bangladesh     Birth       1                    NA                -1.1408824   -1.3834645   -0.8983002
MAL-ED           Bangladesh     Birth       2                    NA                -1.0513725   -1.3293437   -0.7734014
MAL-ED           Bangladesh     Birth       3                    NA                -1.0589063   -1.3044215   -0.8133910
MAL-ED           Bangladesh     Birth       4                    NA                -1.2356250   -1.5584555   -0.9127945
MAL-ED           Bangladesh     6 months    1                    NA                -1.2273939   -1.4743921   -0.9803958
MAL-ED           Bangladesh     6 months    2                    NA                -1.1351643   -1.3316335   -0.9386952
MAL-ED           Bangladesh     6 months    3                    NA                -1.1724722   -1.4168860   -0.9280584
MAL-ED           Bangladesh     6 months    4                    NA                -1.3082121   -1.5652991   -1.0511252
MAL-ED           Bangladesh     24 months   1                    NA                -2.2053061   -2.4643648   -1.9462474
MAL-ED           Bangladesh     24 months   2                    NA                -1.8487255   -2.0929276   -1.6045234
MAL-ED           Bangladesh     24 months   3                    NA                -2.0568605   -2.3285854   -1.7851355
MAL-ED           Bangladesh     24 months   4                    NA                -1.9775000   -2.2867201   -1.6682799
MAL-ED           Brazil         Birth       1                    NA                -1.2247368   -1.7714619   -0.6780118
MAL-ED           Brazil         Birth       2                    NA                -0.4625000   -1.1522845    0.2272845
MAL-ED           Brazil         Birth       3                    NA                -0.4008333   -0.9596373    0.1579707
MAL-ED           Brazil         Birth       4                    NA                -0.4686364   -0.8464990   -0.0907737
MAL-ED           Brazil         6 months    1                    NA                 0.2955469    0.0289768    0.5621170
MAL-ED           Brazil         6 months    2                    NA                 0.1888562   -0.0475864    0.4252988
MAL-ED           Brazil         6 months    3                    NA                -0.2299242   -0.5480803    0.0882318
MAL-ED           Brazil         6 months    4                    NA                -0.1697333   -0.4737700    0.1343033
MAL-ED           Brazil         24 months   1                    NA                -0.1312963   -0.3877803    0.1251877
MAL-ED           Brazil         24 months   2                    NA                 0.0353125   -0.4280884    0.4987134
MAL-ED           Brazil         24 months   3                    NA                -0.1726744   -0.5358655    0.1905167
MAL-ED           Brazil         24 months   4                    NA                 0.0606579   -0.3042297    0.4255455
MAL-ED           India          Birth       1                    NA                -0.6600000   -1.0887172   -0.2312828
MAL-ED           India          Birth       2                    NA                -1.4309091   -2.1091489   -0.7526692
MAL-ED           India          Birth       3                    NA                -1.3266667   -1.9160082   -0.7373252
MAL-ED           India          Birth       4                    NA                -1.3078571   -1.8220706   -0.7936437
MAL-ED           India          6 months    1                    NA                -1.2939646   -1.5500468   -1.0378825
MAL-ED           India          6 months    2                    NA                -1.1828968   -1.4312407   -0.9345529
MAL-ED           India          6 months    3                    NA                -1.2131963   -1.4297959   -0.9965968
MAL-ED           India          6 months    4                    NA                -1.1322424   -1.3414679   -0.9230170
MAL-ED           India          24 months   1                    NA                -1.8491176   -2.0926615   -1.6055738
MAL-ED           India          24 months   2                    NA                -1.9866364   -2.2632717   -1.7100010
MAL-ED           India          24 months   3                    NA                -1.8859375   -2.1455907   -1.6262843
MAL-ED           India          24 months   4                    NA                -2.0110417   -2.3077808   -1.7143026
MAL-ED           Nepal          Birth       1                    NA                -0.5040000   -1.0342626    0.0262626
MAL-ED           Nepal          Birth       2                    NA                -1.0110000   -1.5313221   -0.4906779
MAL-ED           Nepal          Birth       3                    NA                -0.9328571   -1.7563622   -0.1093521
MAL-ED           Nepal          Birth       4                    NA                -0.7760000   -1.7127077    0.1607077
MAL-ED           Nepal          6 months    1                    NA                -0.5178333   -0.7284271   -0.3072395
MAL-ED           Nepal          6 months    2                    NA                -0.4534463   -0.6639814   -0.2429113
MAL-ED           Nepal          6 months    3                    NA                -0.3889831   -0.6083886   -0.1695775
MAL-ED           Nepal          6 months    4                    NA                -0.8924138   -1.1302395   -0.6545881
MAL-ED           Nepal          24 months   1                    NA                -1.6538235   -1.9158564   -1.3917907
MAL-ED           Nepal          24 months   2                    NA                -1.2729464   -1.5263243   -1.0195685
MAL-ED           Nepal          24 months   3                    NA                -1.2909091   -1.5351690   -1.0466492
MAL-ED           Nepal          24 months   4                    NA                -1.0567105   -1.3376290   -0.7757920
MAL-ED           Peru           Birth       1                    NA                -0.6720408   -0.9240405   -0.4200412
MAL-ED           Peru           Birth       2                    NA                -0.9288889   -1.1919533   -0.6658245
MAL-ED           Peru           Birth       3                    NA                -0.8711594   -1.0586810   -0.6836378
MAL-ED           Peru           Birth       4                    NA                -1.0244262   -1.2630627   -0.7857897
MAL-ED           Peru           6 months    1                    NA                -1.3425174   -1.5198885   -1.1651463
MAL-ED           Peru           6 months    2                    NA                -1.4898268   -1.6981296   -1.2815241
MAL-ED           Peru           6 months    3                    NA                -1.1353333   -1.3693498   -0.9013169
MAL-ED           Peru           6 months    4                    NA                -1.2410625   -1.5003360   -0.9817890
MAL-ED           Peru           24 months   1                    NA                -1.6825000   -1.8856139   -1.4793861
MAL-ED           Peru           24 months   2                    NA                -1.8516667   -2.1953103   -1.5080230
MAL-ED           Peru           24 months   3                    NA                -1.8609804   -2.0682039   -1.6537569
MAL-ED           Peru           24 months   4                    NA                -1.8634167   -2.0869402   -1.6398931
MAL-ED           South Africa   Birth       1                    NA                -0.8708000   -1.2639785   -0.4776215
MAL-ED           South Africa   Birth       2                    NA                -0.4717391   -0.8848859   -0.0585924
MAL-ED           South Africa   Birth       3                    NA                -0.8471429   -1.0949733   -0.5993124
MAL-ED           South Africa   Birth       4                    NA                -0.3857500   -0.8036018    0.0321018
MAL-ED           South Africa   6 months    1                    NA                -1.2029088   -1.3937648   -1.0120528
MAL-ED           South Africa   6 months    2                    NA                -1.1371642   -1.3990071   -0.8753213
MAL-ED           South Africa   6 months    3                    NA                -0.7153333   -1.0001643   -0.4305024
MAL-ED           South Africa   6 months    4                    NA                -0.9498611   -1.2748468   -0.6248754
MAL-ED           South Africa   24 months   1                    NA                -1.6018889   -1.8946941   -1.3090837
MAL-ED           South Africa   24 months   2                    NA                -1.2466129   -1.5901056   -0.9031202
MAL-ED           South Africa   24 months   3                    NA                -1.8621528   -2.0845336   -1.6397719
MAL-ED           South Africa   24 months   4                    NA                -1.8554545   -2.1295145   -1.5813946
MAL-ED           Tanzania       Birth       1                    NA                -1.7755556   -2.5008237   -1.0502874
MAL-ED           Tanzania       Birth       2                    NA                -0.8580000   -1.2262069   -0.4897931
MAL-ED           Tanzania       Birth       3                    NA                -1.1011765   -1.4874032   -0.7149497
MAL-ED           Tanzania       Birth       4                    NA                -1.1847368   -1.4965347   -0.8729390
MAL-ED           Tanzania       6 months    1                    NA                -1.4766197   -1.6970186   -1.2562208
MAL-ED           Tanzania       6 months    2                    NA                -1.4019583   -1.6326963   -1.1712204
MAL-ED           Tanzania       6 months    3                    NA                -1.1613208   -1.4142442   -0.9083973
MAL-ED           Tanzania       6 months    4                    NA                -1.3844961   -1.6503290   -1.1186633
MAL-ED           Tanzania       24 months   1                    NA                -2.6561702   -2.9212741   -2.3910663
MAL-ED           Tanzania       24 months   2                    NA                -2.6117000   -2.8911333   -2.3322667
MAL-ED           Tanzania       24 months   3                    NA                -2.5606250   -2.8436302   -2.2776198
MAL-ED           Tanzania       24 months   4                    NA                -3.0365789   -3.3773805   -2.6957774
PROBIT           Belarus        Birth       1                    NA                 1.3018730    1.1547126    1.4490335
PROBIT           Belarus        Birth       2                    NA                 1.3153349    1.1397689    1.4909010
PROBIT           Belarus        Birth       3                    NA                 1.3201050    1.1337149    1.5064950
PROBIT           Belarus        Birth       4                    NA                 1.3767196    1.2073287    1.5461104
PROBIT           Belarus        6 months    1                    NA                 0.1894518    0.0816541    0.2972496
PROBIT           Belarus        6 months    2                    NA                 0.0929628   -0.0099733    0.1958988
PROBIT           Belarus        6 months    3                    NA                 0.1440259    0.0307449    0.2573069
PROBIT           Belarus        6 months    4                    NA                 0.0133208   -0.0944668    0.1211084
PROBIT           Belarus        24 months   1                    NA                -0.4317476   -1.0774275    0.2139323
PROBIT           Belarus        24 months   2                    NA                -0.3082094   -0.6013062   -0.0151126
PROBIT           Belarus        24 months   3                    NA                 0.0460981   -0.1428871    0.2350834
PROBIT           Belarus        24 months   4                    NA                -0.1103901   -0.4956021    0.2748219
PROVIDE          Bangladesh     Birth       1                    NA                -1.0088462   -1.1827462   -0.8349461
PROVIDE          Bangladesh     Birth       2                    NA                -0.7811656   -0.9110409   -0.6512904
PROVIDE          Bangladesh     Birth       3                    NA                -0.7998969   -0.9595988   -0.6401950
PROVIDE          Bangladesh     Birth       4                    NA                -0.9624876   -1.0982552   -0.8267200
PROVIDE          Bangladesh     6 months    1                    NA                -1.1982227   -1.3304184   -1.0660271
PROVIDE          Bangladesh     6 months    2                    NA                -0.8678279   -1.0392466   -0.6964091
PROVIDE          Bangladesh     6 months    3                    NA                -1.1636286   -1.2877673   -1.0394898
PROVIDE          Bangladesh     6 months    4                    NA                -1.0109028   -1.1897644   -0.8320412
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
ZVITAMBO         Zimbabwe       24 months   1                    NA                -1.7007895   -2.1629039   -1.2386750
ZVITAMBO         Zimbabwe       24 months   2                    NA                -1.8082051   -2.0354315   -1.5809787
ZVITAMBO         Zimbabwe       24 months   3                    NA                -1.8715476   -2.1374150   -1.6056803
ZVITAMBO         Zimbabwe       24 months   4                    NA                -1.8757328   -2.1149264   -1.6365391


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       NA                   NA                -0.9611957   -1.1776967   -0.7446946
CMC-V-BCS-2002   India          6 months    NA                   NA                -1.4234508   -1.5645974   -1.2823042
CMC-V-BCS-2002   India          24 months   NA                   NA                -2.6927477   -2.7980658   -2.5874297
CMIN             Bangladesh     Birth       NA                   NA                -1.8811538   -2.5124807   -1.2498270
CMIN             Bangladesh     6 months    NA                   NA                -1.7844376   -1.9222926   -1.6465825
CMIN             Bangladesh     24 months   NA                   NA                -2.5563616   -2.6853113   -2.4274119
CONTENT          Peru           6 months    NA                   NA                -0.3139217   -0.4868486   -0.1409948
CONTENT          Peru           24 months   NA                   NA                -0.6962195   -0.8674103   -0.5250287
Guatemala BSC    Guatemala      6 months    NA                   NA                -1.5619008   -1.6727702   -1.4510313
IRC              India          Birth       NA                   NA                -0.3080412   -0.4687931   -0.1472894
IRC              India          6 months    NA                   NA                -1.2344062   -1.3658524   -1.1029600
IRC              India          24 months   NA                   NA                -1.8787176   -1.9805661   -1.7768691
JiVitA-3         Bangladesh     Birth       NA                   NA                -1.5894148   -1.6086362   -1.5701935
JiVitA-3         Bangladesh     6 months    NA                   NA                -1.3130932   -1.3362359   -1.2899505
JiVitA-4         Bangladesh     Birth       NA                   NA                -1.5232908   -1.5723277   -1.4742539
JiVitA-4         Bangladesh     6 months    NA                   NA                -1.3447940   -1.3820261   -1.3075620
JiVitA-4         Bangladesh     24 months   NA                   NA                -1.9327943   -1.9977741   -1.8678145
Keneba           Gambia         Birth       NA                   NA                 0.0308036   -0.0328378    0.0944451
Keneba           Gambia         6 months    NA                   NA                -0.9036375   -0.9508087   -0.8564663
Keneba           Gambia         24 months   NA                   NA                -1.6554946   -1.7360989   -1.5748903
LCNI-5           Malawi         6 months    NA                   NA                -1.6601907   -1.7297701   -1.5906113
LCNI-5           Malawi         24 months   NA                   NA                -2.0459112   -2.1718307   -1.9199918
MAL-ED           Bangladesh     Birth       NA                   NA                -1.1180952   -1.2525408   -0.9836496
MAL-ED           Bangladesh     6 months    NA                   NA                -1.2049931   -1.3222136   -1.0877726
MAL-ED           Bangladesh     24 months   NA                   NA                -2.0203209   -2.1567304   -1.8839113
MAL-ED           Brazil         Birth       NA                   NA                -0.6760000   -0.9521457   -0.3998543
MAL-ED           Brazil         6 months    NA                   NA                 0.0475758   -0.0963508    0.1915023
MAL-ED           Brazil         24 months   NA                   NA                -0.0663473   -0.2413659    0.1086713
MAL-ED           India          Birth       NA                   NA                -1.2036170   -1.4976814   -0.9095527
MAL-ED           India          6 months    NA                   NA                -1.2115254   -1.3298727   -1.0931782
MAL-ED           India          24 months   NA                   NA                -1.9337871   -2.0691373   -1.7984370
MAL-ED           Nepal          Birth       NA                   NA                -0.8533333   -1.2104864   -0.4961803
MAL-ED           Nepal          6 months    NA                   NA                -0.5615819   -0.6741832   -0.4489807
MAL-ED           Nepal          24 months   NA                   NA                -1.3339250   -1.4668700   -1.2009800
MAL-ED           Peru           Birth       NA                   NA                -0.8827897   -1.0001058   -0.7654736
MAL-ED           Peru           6 months    NA                   NA                -1.3236661   -1.4316775   -1.2156546
MAL-ED           Peru           24 months   NA                   NA                -1.8184925   -1.9407024   -1.6962825
MAL-ED           South Africa   Birth       NA                   NA                -0.6317073   -0.8249555   -0.4384591
MAL-ED           South Africa   6 months    NA                   NA                -1.0633202   -1.1909180   -0.9357224
MAL-ED           South Africa   24 months   NA                   NA                -1.7086453   -1.8487775   -1.5685131
MAL-ED           Tanzania       Birth       NA                   NA                -1.1556000   -1.3655361   -0.9456639
MAL-ED           Tanzania       6 months    NA                   NA                -1.3687449   -1.4907629   -1.2467270
MAL-ED           Tanzania       24 months   NA                   NA                -2.6979508   -2.8450645   -2.5508372
PROBIT           Belarus        Birth       NA                   NA                 1.3269446    1.1683850    1.4855041
PROBIT           Belarus        6 months    NA                   NA                 0.1068536    0.0120998    0.2016074
PROBIT           Belarus        24 months   NA                   NA                -0.2282149   -0.4620519    0.0056221
PROVIDE          Bangladesh     Birth       NA                   NA                -0.8851020   -0.9601332   -0.8100709
PROVIDE          Bangladesh     6 months    NA                   NA                -1.0916915   -1.1661176   -1.0172654
ResPak           Pakistan       6 months    NA                   NA                -1.4314086   -1.6374838   -1.2253335
SAS-CompFeed     India          Birth       NA                   NA                -1.4314217   -1.5099245   -1.3529189
SAS-CompFeed     India          6 months    NA                   NA                -1.4018563   -1.4810585   -1.3226541
SAS-FoodSuppl    India          6 months    NA                   NA                -1.8986842   -2.0118892   -1.7854792
TanzaniaChild2   Tanzania       6 months    NA                   NA                -0.5434389   -0.5924056   -0.4944722
ZVITAMBO         Zimbabwe       Birth       NA                   NA                -0.5002724   -0.5208163   -0.4797285
ZVITAMBO         Zimbabwe       6 months    NA                   NA                -0.8679450   -0.8935071   -0.8423828
ZVITAMBO         Zimbabwe       24 months   NA                   NA                -1.8369146   -1.9746779   -1.6991513


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
CMC-V-BCS-2002   India          24 months   2                    1                 -0.0395498   -0.3349715    0.2558719
CMC-V-BCS-2002   India          24 months   3                    1                  0.0635057   -0.2176097    0.3446211
CMC-V-BCS-2002   India          24 months   4                    1                  0.0994735   -0.2113777    0.4103247
CMIN             Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     Birth       2                    1                  1.0576190   -0.6715061    2.7867442
CMIN             Bangladesh     Birth       3                    1                  1.1159524   -0.5132705    2.7451753
CMIN             Bangladesh     Birth       4                    1                  0.1171429   -1.3350038    1.5692895
CMIN             Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     6 months    2                    1                  0.5509430    0.1540350    0.9478510
CMIN             Bangladesh     6 months    3                    1                  0.0294634   -0.4043504    0.4632771
CMIN             Bangladesh     6 months    4                    1                 -0.0258500   -0.4469690    0.3952690
CMIN             Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     24 months   2                    1                  0.0316319   -0.2994688    0.3627327
CMIN             Bangladesh     24 months   3                    1                  0.3426175    0.0010504    0.6841846
CMIN             Bangladesh     24 months   4                    1                 -0.1119444   -0.4748777    0.2509889
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
IRC              India          24 months   2                    1                  0.3684674    0.0997181    0.6372168
IRC              India          24 months   3                    1                  0.2000106   -0.0884254    0.4884467
IRC              India          24 months   4                    1                  0.3043282    0.0193176    0.5893387
JiVitA-3         Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     Birth       2                    1                  0.0519940    0.0104871    0.0935008
JiVitA-3         Bangladesh     Birth       3                    1                  0.2345888    0.1888883    0.2802894
JiVitA-3         Bangladesh     Birth       4                    1                  0.1648458    0.1154596    0.2142320
JiVitA-3         Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     6 months    2                    1                  0.0292276   -0.0247928    0.0832480
JiVitA-3         Bangladesh     6 months    3                    1                 -0.0438288   -0.0925680    0.0049103
JiVitA-3         Bangladesh     6 months    4                    1                 -0.0284550   -0.0804048    0.0234949
JiVitA-4         Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     Birth       2                    1                  0.3800288    0.1899747    0.5700828
JiVitA-4         Bangladesh     Birth       3                    1                  0.0841901   -0.0701743    0.2385545
JiVitA-4         Bangladesh     Birth       4                    1                  0.2322211    0.0681483    0.3962938
JiVitA-4         Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     6 months    2                    1                  0.0486234   -0.0299368    0.1271836
JiVitA-4         Bangladesh     6 months    3                    1                  0.1542511    0.0530690    0.2554331
JiVitA-4         Bangladesh     6 months    4                    1                  0.0349970   -0.1920286    0.2620226
JiVitA-4         Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     24 months   2                    1                  0.4619043    0.2260134    0.6977953
JiVitA-4         Bangladesh     24 months   3                    1                  0.1969235    0.0304969    0.3633502
JiVitA-4         Bangladesh     24 months   4                    1                  0.3133659    0.1361904    0.4905413
Keneba           Gambia         Birth       1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         Birth       2                    1                 -0.0170656   -0.1918767    0.1577454
Keneba           Gambia         Birth       3                    1                  0.1546999   -0.0166931    0.3260929
Keneba           Gambia         Birth       4                    1                  0.0727732   -0.1146895    0.2602360
Keneba           Gambia         6 months    1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         6 months    2                    1                  0.1268358   -0.0139896    0.2676612
Keneba           Gambia         6 months    3                    1                  0.1697652    0.0361395    0.3033909
Keneba           Gambia         6 months    4                    1                  0.2133717    0.0782170    0.3485263
Keneba           Gambia         24 months   1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         24 months   2                    1                 -0.0953161   -0.3148362    0.1242040
Keneba           Gambia         24 months   3                    1                 -0.2653676   -0.5028509   -0.0278843
Keneba           Gambia         24 months   4                    1                 -0.0692898   -0.2940705    0.1554910
LCNI-5           Malawi         6 months    1                    1                  0.0000000    0.0000000    0.0000000
LCNI-5           Malawi         6 months    2                    1                 -0.0691070   -0.2474206    0.1092065
LCNI-5           Malawi         6 months    3                    1                 -0.0251236   -0.2674421    0.2171948
LCNI-5           Malawi         6 months    4                    1                  0.0263699   -0.1646029    0.2173426
LCNI-5           Malawi         24 months   1                    1                  0.0000000    0.0000000    0.0000000
LCNI-5           Malawi         24 months   2                    1                 -0.5736555   -0.9863584   -0.1609526
LCNI-5           Malawi         24 months   3                    1                 -0.2948344   -0.5882099   -0.0014589
LCNI-5           Malawi         24 months   4                    1                 -0.3229412   -0.7044366    0.0585542
MAL-ED           Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     Birth       2                    1                  0.0895098   -0.2794265    0.4584462
MAL-ED           Bangladesh     Birth       3                    1                  0.0819761   -0.2631671    0.4271193
MAL-ED           Bangladesh     Birth       4                    1                 -0.0947426   -0.4985565    0.3090712
MAL-ED           Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     6 months    2                    1                  0.0922296   -0.2233780    0.4078373
MAL-ED           Bangladesh     6 months    3                    1                  0.0549217   -0.2925638    0.4024072
MAL-ED           Bangladesh     6 months    4                    1                 -0.0808182   -0.4373315    0.2756952
MAL-ED           Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     24 months   2                    1                  0.3565806    0.0005665    0.7125948
MAL-ED           Bangladesh     24 months   3                    1                  0.1484457   -0.2269819    0.5238732
MAL-ED           Bangladesh     24 months   4                    1                  0.2278061   -0.1755900    0.6312023
MAL-ED           Brazil         Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         Birth       2                    1                  0.7622368   -0.1179398    1.6424135
MAL-ED           Brazil         Birth       3                    1                  0.8239035    0.0421297    1.6056773
MAL-ED           Brazil         Birth       4                    1                  0.7561005    0.0915040    1.4206970
MAL-ED           Brazil         6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         6 months    2                    1                 -0.1066907   -0.4630118    0.2496304
MAL-ED           Brazil         6 months    3                    1                 -0.5254711   -0.9405409   -0.1104013
MAL-ED           Brazil         6 months    4                    1                 -0.4652802   -0.8696289   -0.0609315
MAL-ED           Brazil         24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         24 months   2                    1                  0.1666088   -0.3630368    0.6962544
MAL-ED           Brazil         24 months   3                    1                 -0.0413781   -0.4860036    0.4032474
MAL-ED           Brazil         24 months   4                    1                  0.1919542   -0.2540582    0.6379665
MAL-ED           India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          Birth       2                    1                 -0.7709091   -1.5732854    0.0314672
MAL-ED           India          Birth       3                    1                 -0.6666667   -1.3954477    0.0621144
MAL-ED           India          Birth       4                    1                 -0.6478571   -1.3173449    0.0216306
MAL-ED           India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          6 months    2                    1                  0.1110678   -0.2456572    0.4677929
MAL-ED           India          6 months    3                    1                  0.0807683   -0.2546321    0.4161687
MAL-ED           India          6 months    4                    1                  0.1617222   -0.1689640    0.4924084
MAL-ED           India          24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          24 months   2                    1                 -0.1375187   -0.5060845    0.2310470
MAL-ED           India          24 months   3                    1                 -0.0368199   -0.3928162    0.3191765
MAL-ED           India          24 months   4                    1                 -0.1619240   -0.5458090    0.2219610
MAL-ED           Nepal          Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          Birth       2                    1                 -0.5070000   -1.2499089    0.2359089
MAL-ED           Nepal          Birth       3                    1                 -0.4288571   -1.4083157    0.5506014
MAL-ED           Nepal          Birth       4                    1                 -0.2720000   -1.3483827    0.8043827
MAL-ED           Nepal          6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          6 months    2                    1                  0.0643870   -0.2333961    0.3621701
MAL-ED           Nepal          6 months    3                    1                  0.1288503   -0.1752690    0.4329695
MAL-ED           Nepal          6 months    4                    1                 -0.3745805   -0.6922451   -0.0569158
MAL-ED           Nepal          24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          24 months   2                    1                  0.3808771    0.0163753    0.7453789
MAL-ED           Nepal          24 months   3                    1                  0.3629144    0.0046909    0.7211380
MAL-ED           Nepal          24 months   4                    1                  0.5971130    0.2129563    0.9812698
MAL-ED           Peru           Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           Birth       2                    1                 -0.2568481   -0.6211374    0.1074412
MAL-ED           Peru           Birth       3                    1                 -0.1991186   -0.5132335    0.1149963
MAL-ED           Peru           Birth       4                    1                 -0.3523854   -0.6994462   -0.0053246
MAL-ED           Peru           6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           6 months    2                    1                 -0.1473095   -0.4208978    0.1262788
MAL-ED           Peru           6 months    3                    1                  0.2071840   -0.0864556    0.5008236
MAL-ED           Peru           6 months    4                    1                  0.1014549   -0.2126841    0.4155938
MAL-ED           Peru           24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           24 months   2                    1                 -0.1691667   -0.5683486    0.2300153
MAL-ED           Peru           24 months   3                    1                 -0.1784804   -0.4686473    0.1116865
MAL-ED           Peru           24 months   4                    1                 -0.1809167   -0.4829399    0.1211066
MAL-ED           South Africa   Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   Birth       2                    1                  0.3990609   -0.1712720    0.9693937
MAL-ED           South Africa   Birth       3                    1                  0.0236571   -0.4411108    0.4884251
MAL-ED           South Africa   Birth       4                    1                  0.4850500   -0.0887003    1.0588003
MAL-ED           South Africa   6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   6 months    2                    1                  0.0657446   -0.2582735    0.3897627
MAL-ED           South Africa   6 months    3                    1                  0.4875755    0.1447130    0.8304379
MAL-ED           South Africa   6 months    4                    1                  0.2530477   -0.1238365    0.6299319
MAL-ED           South Africa   24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   24 months   2                    1                  0.3552760   -0.0960799    0.8066319
MAL-ED           South Africa   24 months   3                    1                 -0.2602639   -0.6279433    0.1074155
MAL-ED           South Africa   24 months   4                    1                 -0.2535657   -0.6546190    0.1474877
MAL-ED           Tanzania       Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       Birth       2                    1                  0.9175556    0.1041736    1.7309375
MAL-ED           Tanzania       Birth       3                    1                  0.6743791   -0.1473174    1.4960755
MAL-ED           Tanzania       Birth       4                    1                  0.5908187   -0.1986316    1.3802690
MAL-ED           Tanzania       6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       6 months    2                    1                  0.0746614   -0.2444243    0.3937471
MAL-ED           Tanzania       6 months    3                    1                  0.3152990   -0.0201797    0.6507776
MAL-ED           Tanzania       6 months    4                    1                  0.0921236   -0.2531919    0.4374391
MAL-ED           Tanzania       24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       24 months   2                    1                  0.0444702   -0.3407091    0.4296495
MAL-ED           Tanzania       24 months   3                    1                  0.0955452   -0.2922331    0.4833236
MAL-ED           Tanzania       24 months   4                    1                 -0.3804087   -0.8121792    0.0513618
PROBIT           Belarus        Birth       1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        Birth       2                    1                  0.0134619   -0.0933216    0.1202454
PROBIT           Belarus        Birth       3                    1                  0.0182320   -0.0632806    0.0997445
PROBIT           Belarus        Birth       4                    1                  0.0748466   -0.0129766    0.1626697
PROBIT           Belarus        6 months    1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        6 months    2                    1                 -0.0964890   -0.1938124    0.0008343
PROBIT           Belarus        6 months    3                    1                 -0.0454259   -0.1263378    0.0354860
PROBIT           Belarus        6 months    4                    1                 -0.1761310   -0.2593159   -0.0929461
PROBIT           Belarus        24 months   1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        24 months   2                    1                  0.1235382   -0.5492286    0.7963051
PROBIT           Belarus        24 months   3                    1                  0.4778457   -0.2119000    1.1675914
PROBIT           Belarus        24 months   4                    1                  0.3213575   -0.4166712    1.0593862
PROVIDE          Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     Birth       2                    1                  0.2276805    0.0106348    0.4447262
PROVIDE          Bangladesh     Birth       3                    1                  0.2089492   -0.0271565    0.4450550
PROVIDE          Bangladesh     Birth       4                    1                  0.0463586   -0.1742634    0.2669806
PROVIDE          Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     6 months    2                    1                  0.3303949    0.1139230    0.5468668
PROVIDE          Bangladesh     6 months    3                    1                  0.0345942   -0.1467512    0.2159395
PROVIDE          Bangladesh     6 months    4                    1                  0.1873200   -0.0350922    0.4097321
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
ZVITAMBO         Zimbabwe       24 months   2                    1                 -0.1074157   -0.6223735    0.4075422
ZVITAMBO         Zimbabwe       24 months   3                    1                 -0.1707581   -0.7038953    0.3623790
ZVITAMBO         Zimbabwe       24 months   4                    1                 -0.1749433   -0.6952925    0.3454060


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       1                    NA                 0.1974155   -0.1894714    0.5843023
CMC-V-BCS-2002   India          6 months    1                    NA                 0.1539255   -0.0689205    0.3767714
CMC-V-BCS-2002   India          24 months   1                    NA                 0.0257580   -0.1502440    0.2017600
CMIN             Bangladesh     Birth       1                    NA                 0.5331319   -0.3683864    1.4346501
CMIN             Bangladesh     6 months    1                    NA                 0.1427957   -0.1492165    0.4348080
CMIN             Bangladesh     24 months   1                    NA                 0.0705828   -0.1071974    0.2483631
CONTENT          Peru           6 months    1                    NA                -0.0974701   -0.3777271    0.1827870
CONTENT          Peru           24 months   1                    NA                 0.0152350   -0.2233100    0.2537800
Guatemala BSC    Guatemala      6 months    1                    NA                -0.0656508   -0.2514775    0.1201760
IRC              India          Birth       1                    NA                 0.1585867   -0.1309468    0.4481202
IRC              India          6 months    1                    NA                -0.3168152   -0.5290001   -0.1046303
IRC              India          24 months   1                    NA                 0.2236387    0.0543040    0.3929735
JiVitA-3         Bangladesh     Birth       1                    NA                 0.0950467    0.0708742    0.1192192
JiVitA-3         Bangladesh     6 months    1                    NA                -0.0146211   -0.0475466    0.0183043
JiVitA-4         Bangladesh     Birth       1                    NA                 0.1473398    0.0167722    0.2779074
JiVitA-4         Bangladesh     6 months    1                    NA                 0.0472277   -0.0043977    0.0988532
JiVitA-4         Bangladesh     24 months   1                    NA                 0.2305715    0.1028980    0.3582450
Keneba           Gambia         Birth       1                    NA                 0.0468527   -0.0546403    0.1483457
Keneba           Gambia         6 months    1                    NA                 0.1343147    0.0459078    0.2227216
Keneba           Gambia         24 months   1                    NA                -0.0958878   -0.2342435    0.0424678
LCNI-5           Malawi         6 months    1                    NA                -0.0232789   -0.1425598    0.0960019
LCNI-5           Malawi         24 months   1                    NA                -0.2488524   -0.4577739   -0.0399309
MAL-ED           Bangladesh     Birth       1                    NA                 0.0227871   -0.1828251    0.2283993
MAL-ED           Bangladesh     6 months    1                    NA                 0.0224009   -0.1941695    0.2389712
MAL-ED           Bangladesh     24 months   1                    NA                 0.1849853   -0.0398442    0.4098147
MAL-ED           Brazil         Birth       1                    NA                 0.5487368    0.1010558    0.9964179
MAL-ED           Brazil         6 months    1                    NA                -0.2479711   -0.4676406   -0.0283016
MAL-ED           Brazil         24 months   1                    NA                 0.0649490   -0.1671557    0.2970537
MAL-ED           India          Birth       1                    NA                -0.5436170   -0.9818637   -0.1053703
MAL-ED           India          6 months    1                    NA                 0.0824392   -0.1246957    0.2895742
MAL-ED           India          24 months   1                    NA                -0.0846695   -0.3030335    0.1336945
MAL-ED           Nepal          Birth       1                    NA                -0.3493333   -0.9012361    0.2025694
MAL-ED           Nepal          6 months    1                    NA                -0.0437486   -0.2294313    0.1419341
MAL-ED           Nepal          24 months   1                    NA                 0.3198985    0.0933630    0.5464341
MAL-ED           Peru           Birth       1                    NA                -0.2107489   -0.4355980    0.0141002
MAL-ED           Peru           6 months    1                    NA                 0.0188513   -0.1260656    0.1637682
MAL-ED           Peru           24 months   1                    NA                -0.1359925   -0.3286521    0.0566672
MAL-ED           South Africa   Birth       1                    NA                 0.2390927   -0.1202025    0.5983878
MAL-ED           South Africa   6 months    1                    NA                 0.1395886   -0.0097579    0.2889351
MAL-ED           South Africa   24 months   1                    NA                -0.1067564   -0.3662971    0.1527843
MAL-ED           Tanzania       Birth       1                    NA                 0.6199556   -0.0270337    1.2669448
MAL-ED           Tanzania       6 months    1                    NA                 0.1078748   -0.0806404    0.2963899
MAL-ED           Tanzania       24 months   1                    NA                -0.0417806   -0.2780482    0.1944870
PROBIT           Belarus        Birth       1                    NA                 0.0250715   -0.0302074    0.0803505
PROBIT           Belarus        6 months    1                    NA                -0.0825982   -0.1367876   -0.0284088
PROBIT           Belarus        24 months   1                    NA                 0.2035327   -0.2975316    0.7045970
PROVIDE          Bangladesh     Birth       1                    NA                 0.1237441   -0.0409324    0.2884206
PROVIDE          Bangladesh     6 months    1                    NA                 0.1065312    0.0025836    0.2104788
ResPak           Pakistan       6 months    1                    NA                -0.1846953   -0.4111162    0.0417257
SAS-CompFeed     India          Birth       1                    NA                 0.0956479    0.0192806    0.1720151
SAS-CompFeed     India          6 months    1                    NA                 0.0570237   -0.0845663    0.1986138
SAS-FoodSuppl    India          6 months    1                    NA                -0.0906217   -0.2223120    0.0410686
TanzaniaChild2   Tanzania       6 months    1                    NA                -0.1937942   -0.2816688   -0.1059196
ZVITAMBO         Zimbabwe       Birth       1                    NA                -0.1351988   -0.1682481   -0.1021494
ZVITAMBO         Zimbabwe       6 months    1                    NA                 0.0474505    0.0022591    0.0926419
ZVITAMBO         Zimbabwe       24 months   1                    NA                -0.1361251   -0.5617639    0.2895137

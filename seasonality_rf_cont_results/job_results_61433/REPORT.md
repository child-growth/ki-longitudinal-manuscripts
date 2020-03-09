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

studyid          country        agecat       rain_quartile   n_cell       n  outcome_variable 
---------------  -------------  ----------  --------------  -------  ------  -----------------
CMC-V-BCS-2002   India          Birth                    1       17      86  whz              
CMC-V-BCS-2002   India          Birth                    2       22      86  whz              
CMC-V-BCS-2002   India          Birth                    3       28      86  whz              
CMC-V-BCS-2002   India          Birth                    4       19      86  whz              
CMC-V-BCS-2002   India          6 months                 1      102     368  whz              
CMC-V-BCS-2002   India          6 months                 2      109     368  whz              
CMC-V-BCS-2002   India          6 months                 3       97     368  whz              
CMC-V-BCS-2002   India          6 months                 4       60     368  whz              
CMC-V-BCS-2002   India          24 months                1      101     372  whz              
CMC-V-BCS-2002   India          24 months                2       99     372  whz              
CMC-V-BCS-2002   India          24 months                3      117     372  whz              
CMC-V-BCS-2002   India          24 months                4       55     372  whz              
CMIN             Bangladesh     Birth                    1        4      19  whz              
CMIN             Bangladesh     Birth                    2        5      19  whz              
CMIN             Bangladesh     Birth                    3        5      19  whz              
CMIN             Bangladesh     Birth                    4        5      19  whz              
CMIN             Bangladesh     6 months                 1       50     243  whz              
CMIN             Bangladesh     6 months                 2       62     243  whz              
CMIN             Bangladesh     6 months                 3       70     243  whz              
CMIN             Bangladesh     6 months                 4       61     243  whz              
CMIN             Bangladesh     24 months                1       79     243  whz              
CMIN             Bangladesh     24 months                2       69     243  whz              
CMIN             Bangladesh     24 months                3       58     243  whz              
CMIN             Bangladesh     24 months                4       37     243  whz              
CONTENT          Peru           Birth                    1        0       2  whz              
CONTENT          Peru           Birth                    2        2       2  whz              
CONTENT          Peru           Birth                    3        0       2  whz              
CONTENT          Peru           Birth                    4        0       2  whz              
CONTENT          Peru           6 months                 1       62     215  whz              
CONTENT          Peru           6 months                 2       32     215  whz              
CONTENT          Peru           6 months                 3       44     215  whz              
CONTENT          Peru           6 months                 4       77     215  whz              
CONTENT          Peru           24 months                1       55     164  whz              
CONTENT          Peru           24 months                2       35     164  whz              
CONTENT          Peru           24 months                3       20     164  whz              
CONTENT          Peru           24 months                4       54     164  whz              
EE               Pakistan       Birth                    1       92     177  whz              
EE               Pakistan       Birth                    2       77     177  whz              
EE               Pakistan       Birth                    3        8     177  whz              
EE               Pakistan       Birth                    4        0     177  whz              
EE               Pakistan       6 months                 1        0     375  whz              
EE               Pakistan       6 months                 2       34     375  whz              
EE               Pakistan       6 months                 3      168     375  whz              
EE               Pakistan       6 months                 4      173     375  whz              
EE               Pakistan       24 months                1        8     168  whz              
EE               Pakistan       24 months                2      160     168  whz              
EE               Pakistan       24 months                3        0     168  whz              
EE               Pakistan       24 months                4        0     168  whz              
GMS-Nepal        Nepal          Birth                    1        0     641  whz              
GMS-Nepal        Nepal          Birth                    2        0     641  whz              
GMS-Nepal        Nepal          Birth                    3      152     641  whz              
GMS-Nepal        Nepal          Birth                    4      489     641  whz              
GMS-Nepal        Nepal          6 months                 1      502     564  whz              
GMS-Nepal        Nepal          6 months                 2       62     564  whz              
GMS-Nepal        Nepal          6 months                 3        0     564  whz              
GMS-Nepal        Nepal          6 months                 4        0     564  whz              
GMS-Nepal        Nepal          24 months                1        0     487  whz              
GMS-Nepal        Nepal          24 months                2        0     487  whz              
GMS-Nepal        Nepal          24 months                3       39     487  whz              
GMS-Nepal        Nepal          24 months                4      448     487  whz              
Guatemala BSC    Guatemala      6 months                 1       60     299  whz              
Guatemala BSC    Guatemala      6 months                 2       80     299  whz              
Guatemala BSC    Guatemala      6 months                 3       87     299  whz              
Guatemala BSC    Guatemala      6 months                 4       72     299  whz              
IRC              India          Birth                    1       78     343  whz              
IRC              India          Birth                    2      114     343  whz              
IRC              India          Birth                    3       59     343  whz              
IRC              India          Birth                    4       92     343  whz              
IRC              India          6 months                 1      117     408  whz              
IRC              India          6 months                 2       77     408  whz              
IRC              India          6 months                 3      129     408  whz              
IRC              India          6 months                 4       85     408  whz              
IRC              India          24 months                1      114     409  whz              
IRC              India          24 months                2      119     409  whz              
IRC              India          24 months                3       85     409  whz              
IRC              India          24 months                4       91     409  whz              
JiVitA-3         Bangladesh     Birth                    1     5117   18013  whz              
JiVitA-3         Bangladesh     Birth                    2     5680   18013  whz              
JiVitA-3         Bangladesh     Birth                    3     3864   18013  whz              
JiVitA-3         Bangladesh     Birth                    4     3352   18013  whz              
JiVitA-3         Bangladesh     6 months                 1     3710   16784  whz              
JiVitA-3         Bangladesh     6 months                 2     3580   16784  whz              
JiVitA-3         Bangladesh     6 months                 3     5224   16784  whz              
JiVitA-3         Bangladesh     6 months                 4     4270   16784  whz              
JiVitA-3         Bangladesh     24 months                1     2611    8603  whz              
JiVitA-3         Bangladesh     24 months                2     2607    8603  whz              
JiVitA-3         Bangladesh     24 months                3     1637    8603  whz              
JiVitA-3         Bangladesh     24 months                4     1748    8603  whz              
JiVitA-4         Bangladesh     Birth                    1      277    2396  whz              
JiVitA-4         Bangladesh     Birth                    2      195    2396  whz              
JiVitA-4         Bangladesh     Birth                    3     1088    2396  whz              
JiVitA-4         Bangladesh     Birth                    4      836    2396  whz              
JiVitA-4         Bangladesh     6 months                 1     1470    4833  whz              
JiVitA-4         Bangladesh     6 months                 2     2616    4833  whz              
JiVitA-4         Bangladesh     6 months                 3      628    4833  whz              
JiVitA-4         Bangladesh     6 months                 4      119    4833  whz              
JiVitA-4         Bangladesh     24 months                1      686    4735  whz              
JiVitA-4         Bangladesh     24 months                2      580    4735  whz              
JiVitA-4         Bangladesh     24 months                3     2071    4735  whz              
JiVitA-4         Bangladesh     24 months                4     1398    4735  whz              
Keneba           Gambia         Birth                    1      426    1466  whz              
Keneba           Gambia         Birth                    2      401    1466  whz              
Keneba           Gambia         Birth                    3      364    1466  whz              
Keneba           Gambia         Birth                    4      275    1466  whz              
Keneba           Gambia         6 months                 1      464    2089  whz              
Keneba           Gambia         6 months                 2      459    2089  whz              
Keneba           Gambia         6 months                 3      607    2089  whz              
Keneba           Gambia         6 months                 4      559    2089  whz              
Keneba           Gambia         24 months                1      501    1726  whz              
Keneba           Gambia         24 months                2      492    1726  whz              
Keneba           Gambia         24 months                3      388    1726  whz              
Keneba           Gambia         24 months                4      345    1726  whz              
LCNI-5           Malawi         6 months                 1      204     839  whz              
LCNI-5           Malawi         6 months                 2      319     839  whz              
LCNI-5           Malawi         6 months                 3      113     839  whz              
LCNI-5           Malawi         6 months                 4      203     839  whz              
LCNI-5           Malawi         24 months                1      145     563  whz              
LCNI-5           Malawi         24 months                2       80     563  whz              
LCNI-5           Malawi         24 months                3      210     563  whz              
LCNI-5           Malawi         24 months                4      128     563  whz              
MAL-ED           Bangladesh     Birth                    1       64     215  whz              
MAL-ED           Bangladesh     Birth                    2       48     215  whz              
MAL-ED           Bangladesh     Birth                    3       61     215  whz              
MAL-ED           Bangladesh     Birth                    4       42     215  whz              
MAL-ED           Bangladesh     6 months                 1       55     241  whz              
MAL-ED           Bangladesh     6 months                 2       72     241  whz              
MAL-ED           Bangladesh     6 months                 3       60     241  whz              
MAL-ED           Bangladesh     6 months                 4       54     241  whz              
MAL-ED           Bangladesh     24 months                1       73     212  whz              
MAL-ED           Bangladesh     24 months                2       51     212  whz              
MAL-ED           Bangladesh     24 months                3       48     212  whz              
MAL-ED           Bangladesh     24 months                4       40     212  whz              
MAL-ED           Brazil         Birth                    1       17      62  whz              
MAL-ED           Brazil         Birth                    2       11      62  whz              
MAL-ED           Brazil         Birth                    3       12      62  whz              
MAL-ED           Brazil         Birth                    4       22      62  whz              
MAL-ED           Brazil         6 months                 1       64     209  whz              
MAL-ED           Brazil         6 months                 2       51     209  whz              
MAL-ED           Brazil         6 months                 3       44     209  whz              
MAL-ED           Brazil         6 months                 4       50     209  whz              
MAL-ED           Brazil         24 months                1       65     169  whz              
MAL-ED           Brazil         24 months                2       30     169  whz              
MAL-ED           Brazil         24 months                3       43     169  whz              
MAL-ED           Brazil         24 months                4       31     169  whz              
MAL-ED           India          Birth                    1       10      45  whz              
MAL-ED           India          Birth                    2       10      45  whz              
MAL-ED           India          Birth                    3       11      45  whz              
MAL-ED           India          Birth                    4       14      45  whz              
MAL-ED           India          6 months                 1       66     236  whz              
MAL-ED           India          6 months                 2       42     236  whz              
MAL-ED           India          6 months                 3       73     236  whz              
MAL-ED           India          6 months                 4       55     236  whz              
MAL-ED           India          24 months                1       65     227  whz              
MAL-ED           India          24 months                2       71     227  whz              
MAL-ED           India          24 months                3       54     227  whz              
MAL-ED           India          24 months                4       37     227  whz              
MAL-ED           Nepal          Birth                    1        5      26  whz              
MAL-ED           Nepal          Birth                    2        9      26  whz              
MAL-ED           Nepal          Birth                    3        7      26  whz              
MAL-ED           Nepal          Birth                    4        5      26  whz              
MAL-ED           Nepal          6 months                 1       60     236  whz              
MAL-ED           Nepal          6 months                 2       59     236  whz              
MAL-ED           Nepal          6 months                 3       59     236  whz              
MAL-ED           Nepal          6 months                 4       58     236  whz              
MAL-ED           Nepal          24 months                1       66     228  whz              
MAL-ED           Nepal          24 months                2       61     228  whz              
MAL-ED           Nepal          24 months                3       63     228  whz              
MAL-ED           Nepal          24 months                4       38     228  whz              
MAL-ED           Peru           Birth                    1       49     228  whz              
MAL-ED           Peru           Birth                    2       52     228  whz              
MAL-ED           Peru           Birth                    3       69     228  whz              
MAL-ED           Peru           Birth                    4       58     228  whz              
MAL-ED           Peru           6 months                 1       96     273  whz              
MAL-ED           Peru           6 months                 2       77     273  whz              
MAL-ED           Peru           6 months                 3       60     273  whz              
MAL-ED           Peru           6 months                 4       40     273  whz              
MAL-ED           Peru           24 months                1       55     201  whz              
MAL-ED           Peru           24 months                2       46     201  whz              
MAL-ED           Peru           24 months                3       54     201  whz              
MAL-ED           Peru           24 months                4       46     201  whz              
MAL-ED           South Africa   Birth                    1       25     120  whz              
MAL-ED           South Africa   Birth                    2       22     120  whz              
MAL-ED           South Africa   Birth                    3       35     120  whz              
MAL-ED           South Africa   Birth                    4       38     120  whz              
MAL-ED           South Africa   6 months                 1      106     254  whz              
MAL-ED           South Africa   6 months                 2       67     254  whz              
MAL-ED           South Africa   6 months                 3       45     254  whz              
MAL-ED           South Africa   6 months                 4       36     254  whz              
MAL-ED           South Africa   24 months                1       55     238  whz              
MAL-ED           South Africa   24 months                2       39     238  whz              
MAL-ED           South Africa   24 months                3       86     238  whz              
MAL-ED           South Africa   24 months                4       58     238  whz              
MAL-ED           Tanzania       Birth                    1       14     115  whz              
MAL-ED           Tanzania       Birth                    2       33     115  whz              
MAL-ED           Tanzania       Birth                    3       32     115  whz              
MAL-ED           Tanzania       Birth                    4       36     115  whz              
MAL-ED           Tanzania       6 months                 1       71     247  whz              
MAL-ED           Tanzania       6 months                 2       80     247  whz              
MAL-ED           Tanzania       6 months                 3       53     247  whz              
MAL-ED           Tanzania       6 months                 4       43     247  whz              
MAL-ED           Tanzania       24 months                1       56     214  whz              
MAL-ED           Tanzania       24 months                2       59     214  whz              
MAL-ED           Tanzania       24 months                3       59     214  whz              
MAL-ED           Tanzania       24 months                4       40     214  whz              
PROBIT           Belarus        Birth                    1     3763   13817  whz              
PROBIT           Belarus        Birth                    2     4124   13817  whz              
PROBIT           Belarus        Birth                    3     2700   13817  whz              
PROBIT           Belarus        Birth                    4     3230   13817  whz              
PROBIT           Belarus        6 months                 1     3619   15757  whz              
PROBIT           Belarus        6 months                 2     3117   15757  whz              
PROBIT           Belarus        6 months                 3     4510   15757  whz              
PROBIT           Belarus        6 months                 4     4511   15757  whz              
PROBIT           Belarus        24 months                1     1074    3970  whz              
PROBIT           Belarus        24 months                2     1128    3970  whz              
PROBIT           Belarus        24 months                3      835    3970  whz              
PROBIT           Belarus        24 months                4      933    3970  whz              
PROVIDE          Bangladesh     Birth                    1       78     532  whz              
PROVIDE          Bangladesh     Birth                    2      162     532  whz              
PROVIDE          Bangladesh     Birth                    3       97     532  whz              
PROVIDE          Bangladesh     Birth                    4      195     532  whz              
PROVIDE          Bangladesh     6 months                 1      211     603  whz              
PROVIDE          Bangladesh     6 months                 2      122     603  whz              
PROVIDE          Bangladesh     6 months                 3      174     603  whz              
PROVIDE          Bangladesh     6 months                 4       96     603  whz              
PROVIDE          Bangladesh     24 months                1       99     579  whz              
PROVIDE          Bangladesh     24 months                2      187     579  whz              
PROVIDE          Bangladesh     24 months                3      104     579  whz              
PROVIDE          Bangladesh     24 months                4      189     579  whz              
ResPak           Pakistan       Birth                    1        3      38  whz              
ResPak           Pakistan       Birth                    2        2      38  whz              
ResPak           Pakistan       Birth                    3       14      38  whz              
ResPak           Pakistan       Birth                    4       19      38  whz              
ResPak           Pakistan       6 months                 1      107     239  whz              
ResPak           Pakistan       6 months                 2       98     239  whz              
ResPak           Pakistan       6 months                 3        8     239  whz              
ResPak           Pakistan       6 months                 4       26     239  whz              
SAS-CompFeed     India          Birth                    1      231    1103  whz              
SAS-CompFeed     India          Birth                    2      371    1103  whz              
SAS-CompFeed     India          Birth                    3      192    1103  whz              
SAS-CompFeed     India          Birth                    4      309    1103  whz              
SAS-CompFeed     India          6 months                 1      375    1334  whz              
SAS-CompFeed     India          6 months                 2      228    1334  whz              
SAS-CompFeed     India          6 months                 3      434    1334  whz              
SAS-CompFeed     India          6 months                 4      297    1334  whz              
SAS-FoodSuppl    India          6 months                 1      160     380  whz              
SAS-FoodSuppl    India          6 months                 2       37     380  whz              
SAS-FoodSuppl    India          6 months                 3      107     380  whz              
SAS-FoodSuppl    India          6 months                 4       76     380  whz              
TanzaniaChild2   Tanzania       6 months                 1      516    2028  whz              
TanzaniaChild2   Tanzania       6 months                 2      564    2028  whz              
TanzaniaChild2   Tanzania       6 months                 3      467    2028  whz              
TanzaniaChild2   Tanzania       6 months                 4      481    2028  whz              
TanzaniaChild2   Tanzania       24 months                1        0       6  whz              
TanzaniaChild2   Tanzania       24 months                2        4       6  whz              
TanzaniaChild2   Tanzania       24 months                3        0       6  whz              
TanzaniaChild2   Tanzania       24 months                4        2       6  whz              
ZVITAMBO         Zimbabwe       Birth                    1     3531   12916  whz              
ZVITAMBO         Zimbabwe       Birth                    2     2902   12916  whz              
ZVITAMBO         Zimbabwe       Birth                    3     3237   12916  whz              
ZVITAMBO         Zimbabwe       Birth                    4     3246   12916  whz              
ZVITAMBO         Zimbabwe       6 months                 1     2124    8505  whz              
ZVITAMBO         Zimbabwe       6 months                 2     2199    8505  whz              
ZVITAMBO         Zimbabwe       6 months                 3     1972    8505  whz              
ZVITAMBO         Zimbabwe       6 months                 4     2210    8505  whz              
ZVITAMBO         Zimbabwe       24 months                1       66     433  whz              
ZVITAMBO         Zimbabwe       24 months                2      139     433  whz              
ZVITAMBO         Zimbabwe       24 months                3       68     433  whz              
ZVITAMBO         Zimbabwe       24 months                4      160     433  whz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/0f2c9ff0-df04-4192-8b25-8d6ef5f4750a/290cc5c8-c1bd-41a5-b9a4-d92b69fee2d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0f2c9ff0-df04-4192-8b25-8d6ef5f4750a/290cc5c8-c1bd-41a5-b9a4-d92b69fee2d2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0f2c9ff0-df04-4192-8b25-8d6ef5f4750a/290cc5c8-c1bd-41a5-b9a4-d92b69fee2d2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       1                    NA                -0.1441176   -0.9030320    0.6147967
CMC-V-BCS-2002   India          Birth       2                    NA                -1.2631818   -1.6787939   -0.8475697
CMC-V-BCS-2002   India          Birth       3                    NA                -0.1192857   -0.6215639    0.3829924
CMC-V-BCS-2002   India          Birth       4                    NA                -0.3365789   -0.9594494    0.2862915
CMC-V-BCS-2002   India          6 months    1                    NA                -0.1346078   -0.4241091    0.1548934
CMC-V-BCS-2002   India          6 months    2                    NA                -0.3524465   -0.6228689   -0.0820240
CMC-V-BCS-2002   India          6 months    3                    NA                -0.9886598   -1.2587741   -0.7185454
CMC-V-BCS-2002   India          6 months    4                    NA                -0.6156389   -0.9908921   -0.2403856
CMC-V-BCS-2002   India          24 months   1                    NA                -0.4441089   -0.6265287   -0.2616891
CMC-V-BCS-2002   India          24 months   2                    NA                -0.7511616   -0.9235867   -0.5787365
CMC-V-BCS-2002   India          24 months   3                    NA                -0.4676353   -0.6615054   -0.2737652
CMC-V-BCS-2002   India          24 months   4                    NA                -0.6059394   -0.8953325   -0.3165463
CMIN             Bangladesh     6 months    1                    NA                -0.1356667   -0.4008821    0.1295487
CMIN             Bangladesh     6 months    2                    NA                -0.7236022   -1.0053974   -0.4418069
CMIN             Bangladesh     6 months    3                    NA                -0.5592619   -0.7980646   -0.3204592
CMIN             Bangladesh     6 months    4                    NA                -0.8142623   -1.1495879   -0.4789367
CMIN             Bangladesh     24 months   1                    NA                -0.8462025   -1.0110322   -0.6813728
CMIN             Bangladesh     24 months   2                    NA                -1.0795652   -1.3177148   -0.8414157
CMIN             Bangladesh     24 months   3                    NA                -0.6369828   -0.8582589   -0.4157066
CMIN             Bangladesh     24 months   4                    NA                -0.7871622   -1.0533497   -0.5209746
CONTENT          Peru           6 months    1                    NA                 0.9944624    0.7512143    1.2377104
CONTENT          Peru           6 months    2                    NA                 0.8994844    0.5792936    1.2196751
CONTENT          Peru           6 months    3                    NA                 1.2257652    0.9877325    1.4637978
CONTENT          Peru           6 months    4                    NA                 1.0971190    0.9193110    1.2749271
CONTENT          Peru           24 months   1                    NA                 0.6738182    0.4748657    0.8727706
CONTENT          Peru           24 months   2                    NA                 0.4274286    0.1646019    0.6902552
CONTENT          Peru           24 months   3                    NA                 0.5505000    0.1447225    0.9562775
CONTENT          Peru           24 months   4                    NA                 0.6253704    0.3576946    0.8930461
Guatemala BSC    Guatemala      6 months    1                    NA                -0.1863611   -0.3779725    0.0052503
Guatemala BSC    Guatemala      6 months    2                    NA                 0.1297500   -0.0854696    0.3449696
Guatemala BSC    Guatemala      6 months    3                    NA                -0.2554981   -0.4510832   -0.0599130
Guatemala BSC    Guatemala      6 months    4                    NA                -0.0290278   -0.2877877    0.2297322
IRC              India          Birth       1                    NA                -0.5151282   -0.9096140   -0.1206424
IRC              India          Birth       2                    NA                -0.9443860   -1.2521094   -0.6366625
IRC              India          Birth       3                    NA                -1.5179661   -1.9441199   -1.0918123
IRC              India          Birth       4                    NA                -1.1872826   -1.5553787   -0.8191865
IRC              India          6 months    1                    NA                -0.6804986   -0.9320077   -0.4289894
IRC              India          6 months    2                    NA                -0.3718831   -0.6816824   -0.0620839
IRC              India          6 months    3                    NA                -0.7207881   -0.9623932   -0.4791830
IRC              India          6 months    4                    NA                -0.5073922   -0.8009075   -0.2138768
IRC              India          24 months   1                    NA                -0.5826901   -0.7450391   -0.4203410
IRC              India          24 months   2                    NA                -0.7685574   -0.9357436   -0.6013712
IRC              India          24 months   3                    NA                -0.8553529   -1.0550461   -0.6556598
IRC              India          24 months   4                    NA                -0.8181136   -1.0210974   -0.6151298
JiVitA-3         Bangladesh     Birth       1                    NA                -0.6782959   -0.7118361   -0.6447556
JiVitA-3         Bangladesh     Birth       2                    NA                -0.8555053   -0.8870729   -0.8239376
JiVitA-3         Bangladesh     Birth       3                    NA                -0.7790813   -0.8138938   -0.7442687
JiVitA-3         Bangladesh     Birth       4                    NA                -0.7954356   -0.8334494   -0.7574217
JiVitA-3         Bangladesh     6 months    1                    NA                -0.5160795   -0.5555606   -0.4765985
JiVitA-3         Bangladesh     6 months    2                    NA                -0.5618436   -0.6014335   -0.5222537
JiVitA-3         Bangladesh     6 months    3                    NA                -0.6289261   -0.6620364   -0.5958158
JiVitA-3         Bangladesh     6 months    4                    NA                -0.6440304   -0.6794715   -0.6085894
JiVitA-3         Bangladesh     24 months   1                    NA                -1.0891957   -1.1288370   -1.0495545
JiVitA-3         Bangladesh     24 months   2                    NA                -1.3964519   -1.4357580   -1.3571458
JiVitA-3         Bangladesh     24 months   3                    NA                -1.2933965   -1.3449186   -1.2418743
JiVitA-3         Bangladesh     24 months   4                    NA                -1.4664016   -1.5178866   -1.4149166
JiVitA-4         Bangladesh     Birth       1                    NA                -0.4784477   -0.6103633   -0.3465320
JiVitA-4         Bangladesh     Birth       2                    NA                -0.9010769   -1.0577204   -0.7444335
JiVitA-4         Bangladesh     Birth       3                    NA                -0.6690349   -0.7429994   -0.5950704
JiVitA-4         Bangladesh     Birth       4                    NA                -0.7342105   -0.8304533   -0.6379677
JiVitA-4         Bangladesh     6 months    1                    NA                -0.3231361   -0.3866499   -0.2596222
JiVitA-4         Bangladesh     6 months    2                    NA                -0.4285570   -0.4796578   -0.3774561
JiVitA-4         Bangladesh     6 months    3                    NA                -0.3458678   -0.4298584   -0.2618772
JiVitA-4         Bangladesh     6 months    4                    NA                -0.5933613   -0.7993357   -0.3873869
JiVitA-4         Bangladesh     24 months   1                    NA                -1.0290671   -1.1133843   -0.9447498
JiVitA-4         Bangladesh     24 months   2                    NA                -1.2622759   -1.3501042   -1.1744475
JiVitA-4         Bangladesh     24 months   3                    NA                -1.2012265   -1.2490702   -1.1533828
JiVitA-4         Bangladesh     24 months   4                    NA                -1.3344921   -1.3886992   -1.2802850
Keneba           Gambia         Birth       1                    NA                -1.3635681   -1.4774314   -1.2497048
Keneba           Gambia         Birth       2                    NA                -1.3246633   -1.4476922   -1.2016345
Keneba           Gambia         Birth       3                    NA                -1.0655220   -1.1867992   -0.9442447
Keneba           Gambia         Birth       4                    NA                -1.1291273   -1.2705910   -0.9876636
Keneba           Gambia         6 months    1                    NA                -0.1761855   -0.2908455   -0.0615255
Keneba           Gambia         6 months    2                    NA                -0.3121964   -0.4210636   -0.2033292
Keneba           Gambia         6 months    3                    NA                -0.0662117   -0.1596493    0.0272259
Keneba           Gambia         6 months    4                    NA                -0.2153820   -0.3081107   -0.1226534
Keneba           Gambia         24 months   1                    NA                -0.6551261   -0.7357450   -0.5745072
Keneba           Gambia         24 months   2                    NA                -0.9296350   -1.0224384   -0.8368316
Keneba           Gambia         24 months   3                    NA                -0.6872573   -0.7843820   -0.5901326
Keneba           Gambia         24 months   4                    NA                -1.0019797   -1.1079615   -0.8959979
LCNI-5           Malawi         6 months    1                    NA                 0.5209804    0.3765954    0.6653654
LCNI-5           Malawi         6 months    2                    NA                 0.3891850    0.2723043    0.5060656
LCNI-5           Malawi         6 months    3                    NA                 0.6239823    0.4404450    0.8075196
LCNI-5           Malawi         6 months    4                    NA                 0.3771429    0.2340446    0.5202411
LCNI-5           Malawi         24 months   1                    NA                 0.0435172   -0.1130291    0.2000636
LCNI-5           Malawi         24 months   2                    NA                -0.1140000   -0.3443682    0.1163682
LCNI-5           Malawi         24 months   3                    NA                 0.0245952   -0.1135428    0.1627333
LCNI-5           Malawi         24 months   4                    NA                -0.2285156   -0.3852361   -0.0717952
MAL-ED           Bangladesh     Birth       1                    NA                -0.8785156   -1.1343175   -0.6227138
MAL-ED           Bangladesh     Birth       2                    NA                -1.1000000   -1.4015621   -0.7984379
MAL-ED           Bangladesh     Birth       3                    NA                -0.9584426   -1.2538078   -0.6630775
MAL-ED           Bangladesh     Birth       4                    NA                -0.8335714   -1.1382711   -0.5288717
MAL-ED           Bangladesh     6 months    1                    NA                -0.1093939   -0.3729405    0.1541526
MAL-ED           Bangladesh     6 months    2                    NA                -0.1954398   -0.4572166    0.0663369
MAL-ED           Bangladesh     6 months    3                    NA                -0.1237222   -0.3837228    0.1362784
MAL-ED           Bangladesh     6 months    4                    NA                -0.1049691   -0.3342343    0.1242960
MAL-ED           Bangladesh     24 months   1                    NA                -0.7099315   -0.9182565   -0.5016065
MAL-ED           Bangladesh     24 months   2                    NA                -0.8579412   -1.1102770   -0.6056054
MAL-ED           Bangladesh     24 months   3                    NA                -0.8911458   -1.1601482   -0.6221434
MAL-ED           Bangladesh     24 months   4                    NA                -0.8833750   -1.1331220   -0.6336280
MAL-ED           Brazil         Birth       1                    NA                 0.6905882    0.1627425    1.2184340
MAL-ED           Brazil         Birth       2                    NA                 0.2336364   -0.5416891    1.0089619
MAL-ED           Brazil         Birth       3                    NA                 0.2775000   -0.3399256    0.8949256
MAL-ED           Brazil         Birth       4                    NA                 0.3336364   -0.2433069    0.9105796
MAL-ED           Brazil         6 months    1                    NA                 0.9732552    0.6402275    1.3062829
MAL-ED           Brazil         6 months    2                    NA                 0.9365523    0.5895414    1.2835632
MAL-ED           Brazil         6 months    3                    NA                 1.0781439    0.7702371    1.3860508
MAL-ED           Brazil         6 months    4                    NA                 0.9134667    0.6136231    1.2133102
MAL-ED           Brazil         24 months   1                    NA                 0.6560000    0.3234873    0.9885127
MAL-ED           Brazil         24 months   2                    NA                 0.3021111   -0.1885019    0.7927242
MAL-ED           Brazil         24 months   3                    NA                 0.4235271    0.0510644    0.7959898
MAL-ED           Brazil         24 months   4                    NA                 0.2667204   -0.2463992    0.7798400
MAL-ED           India          Birth       1                    NA                -1.1900000   -1.6611841   -0.7188159
MAL-ED           India          Birth       2                    NA                -1.2910000   -1.5946508   -0.9873492
MAL-ED           India          Birth       3                    NA                -1.2136364   -1.8164276   -0.6108451
MAL-ED           India          Birth       4                    NA                -0.2714286   -0.7338878    0.1910307
MAL-ED           India          6 months    1                    NA                -0.5805429   -0.8142352   -0.3468507
MAL-ED           India          6 months    2                    NA                -0.6919444   -0.9845828   -0.3993061
MAL-ED           India          6 months    3                    NA                -0.8397032   -1.0684685   -0.6109379
MAL-ED           India          6 months    4                    NA                -0.6844242   -0.9409435   -0.4279050
MAL-ED           India          24 months   1                    NA                -0.8351538   -1.0451975   -0.6251102
MAL-ED           India          24 months   2                    NA                -0.9656338   -1.1573687   -0.7738989
MAL-ED           India          24 months   3                    NA                -1.0836111   -1.3575193   -0.8097029
MAL-ED           India          24 months   4                    NA                -0.9368919   -1.1915347   -0.6822491
MAL-ED           Nepal          Birth       1                    NA                -1.5400000   -2.4018979   -0.6781021
MAL-ED           Nepal          Birth       2                    NA                -0.5566667   -0.9538230   -0.1595103
MAL-ED           Nepal          Birth       3                    NA                -0.8914286   -1.4372569   -0.3456002
MAL-ED           Nepal          Birth       4                    NA                -0.2060000   -1.1029971    0.6909971
MAL-ED           Nepal          6 months    1                    NA                 0.1167778   -0.1449483    0.3785039
MAL-ED           Nepal          6 months    2                    NA                -0.0088136   -0.2794862    0.2618590
MAL-ED           Nepal          6 months    3                    NA                 0.1783051   -0.0574366    0.4140468
MAL-ED           Nepal          6 months    4                    NA                 0.1561207   -0.1220286    0.4342700
MAL-ED           Nepal          24 months   1                    NA                -0.1973485   -0.3924215   -0.0022755
MAL-ED           Nepal          24 months   2                    NA                -0.2451639   -0.4783988   -0.0119290
MAL-ED           Nepal          24 months   3                    NA                -0.5846032   -0.7888270   -0.3803793
MAL-ED           Nepal          24 months   4                    NA                -0.5439474   -0.8216887   -0.2662060
MAL-ED           Peru           Birth       1                    NA                -0.0785714   -0.3445722    0.1874293
MAL-ED           Peru           Birth       2                    NA                 0.1263462   -0.1113557    0.3640480
MAL-ED           Peru           Birth       3                    NA                -0.1249275   -0.3753141    0.1254590
MAL-ED           Peru           Birth       4                    NA                -0.1027586   -0.2957656    0.0902483
MAL-ED           Peru           6 months    1                    NA                 1.1233160    0.9160717    1.3305603
MAL-ED           Peru           6 months    2                    NA                 1.0887121    0.8710102    1.3064140
MAL-ED           Peru           6 months    3                    NA                 0.8499167    0.5902125    1.1096208
MAL-ED           Peru           6 months    4                    NA                 1.1193125    0.7937162    1.4449088
MAL-ED           Peru           24 months   1                    NA                 0.0191212   -0.2317586    0.2700010
MAL-ED           Peru           24 months   2                    NA                 0.1844746   -0.0601559    0.4291052
MAL-ED           Peru           24 months   3                    NA                 0.1185185   -0.1132872    0.3503242
MAL-ED           Peru           24 months   4                    NA                 0.1394203   -0.1131512    0.3919918
MAL-ED           South Africa   Birth       1                    NA                -0.0716000   -0.4952079    0.3520079
MAL-ED           South Africa   Birth       2                    NA                -0.5004545   -1.0619939    0.0610848
MAL-ED           South Africa   Birth       3                    NA                -0.0708571   -0.4040757    0.2623614
MAL-ED           South Africa   Birth       4                    NA                -0.2060526   -0.6134016    0.2012963
MAL-ED           South Africa   6 months    1                    NA                 0.6137421    0.3832154    0.8442688
MAL-ED           South Africa   6 months    2                    NA                 0.3932836    0.0607733    0.7257938
MAL-ED           South Africa   6 months    3                    NA                 0.4426667    0.1318407    0.7534926
MAL-ED           South Africa   6 months    4                    NA                 0.7329630    0.3505289    1.1153970
MAL-ED           South Africa   24 months   1                    NA                 0.6310000    0.3892218    0.8727782
MAL-ED           South Africa   24 months   2                    NA                 0.4535897    0.1721026    0.7350768
MAL-ED           South Africa   24 months   3                    NA                 0.3489826    0.1531749    0.5447902
MAL-ED           South Africa   24 months   4                    NA                 0.2576149   -0.0052867    0.5205166
MAL-ED           Tanzania       Birth       1                    NA                 0.9735714    0.5719253    1.3752175
MAL-ED           Tanzania       Birth       2                    NA                 0.8578788    0.4986594    1.2170982
MAL-ED           Tanzania       Birth       3                    NA                 0.6175000    0.1866066    1.0483934
MAL-ED           Tanzania       Birth       4                    NA                 0.7216667    0.4229889    1.0203445
MAL-ED           Tanzania       6 months    1                    NA                 0.5333803    0.3135704    0.7531901
MAL-ED           Tanzania       6 months    2                    NA                 0.3939375    0.1616921    0.6261829
MAL-ED           Tanzania       6 months    3                    NA                 0.5567925    0.2542868    0.8592981
MAL-ED           Tanzania       6 months    4                    NA                 0.7802713    0.4601655    1.1003771
MAL-ED           Tanzania       24 months   1                    NA                 0.1311607   -0.1125023    0.3748237
MAL-ED           Tanzania       24 months   2                    NA                 0.1782203   -0.0124558    0.3688965
MAL-ED           Tanzania       24 months   3                    NA                -0.0521751   -0.3250622    0.2207119
MAL-ED           Tanzania       24 months   4                    NA                -0.0763750   -0.3670111    0.2142611
PROBIT           Belarus        Birth       1                    NA                -1.1196838   -1.3247660   -0.9146015
PROBIT           Belarus        Birth       2                    NA                -1.1447272   -1.3749096   -0.9145448
PROBIT           Belarus        Birth       3                    NA                -1.1147815   -1.3527301   -0.8768329
PROBIT           Belarus        Birth       4                    NA                -1.2179752   -1.4405019   -0.9954485
PROBIT           Belarus        6 months    1                    NA                 0.5862421    0.5221607    0.6503234
PROBIT           Belarus        6 months    2                    NA                 0.5686108    0.4820118    0.6552099
PROBIT           Belarus        6 months    3                    NA                 0.5600067    0.4967599    0.6232534
PROBIT           Belarus        6 months    4                    NA                 0.5822767    0.5085090    0.6560443
PROBIT           Belarus        24 months   1                    NA                 0.6929423    0.5830353    0.8028492
PROBIT           Belarus        24 months   2                    NA                 0.7093381    0.5609118    0.8577643
PROBIT           Belarus        24 months   3                    NA                 0.7112455    0.5551744    0.8673166
PROBIT           Belarus        24 months   4                    NA                 0.6788585    0.4576402    0.9000768
PROVIDE          Bangladesh     Birth       1                    NA                -0.9235897   -1.1127309   -0.7344486
PROVIDE          Bangladesh     Birth       2                    NA                -1.3227778   -1.4705547   -1.1750009
PROVIDE          Bangladesh     Birth       3                    NA                -1.1868041   -1.3538721   -1.0197361
PROVIDE          Bangladesh     Birth       4                    NA                -1.4837436   -1.6033226   -1.3641646
PROVIDE          Bangladesh     6 months    1                    NA                -0.1961611   -0.3405527   -0.0517696
PROVIDE          Bangladesh     6 months    2                    NA                -0.2987295   -0.4831862   -0.1142728
PROVIDE          Bangladesh     6 months    3                    NA                -0.0449425   -0.1883953    0.0985102
PROVIDE          Bangladesh     6 months    4                    NA                -0.3582986   -0.5665239   -0.1500734
PROVIDE          Bangladesh     24 months   1                    NA                -0.7457576   -0.9041814   -0.5873338
PROVIDE          Bangladesh     24 months   2                    NA                -0.8297059   -0.9765653   -0.6828464
PROVIDE          Bangladesh     24 months   3                    NA                -0.8180769   -1.0232087   -0.6129451
PROVIDE          Bangladesh     24 months   4                    NA                -1.0735714   -1.2229921   -0.9241508
ResPak           Pakistan       6 months    1                    NA                -0.1545016   -0.4141291    0.1051260
ResPak           Pakistan       6 months    2                    NA                -0.1716497   -0.4794946    0.1361952
ResPak           Pakistan       6 months    3                    NA                -0.6539583   -1.3955693    0.0876526
ResPak           Pakistan       6 months    4                    NA                -0.0251923   -0.5275387    0.4771541
SAS-CompFeed     India          Birth       1                    NA                -0.2880952   -0.3997314   -0.1764591
SAS-CompFeed     India          Birth       2                    NA                -0.7700539   -1.0379994   -0.5021084
SAS-CompFeed     India          Birth       3                    NA                -0.6484896   -0.8995953   -0.3973839
SAS-CompFeed     India          Birth       4                    NA                -0.8488997   -1.0677249   -0.6300745
SAS-CompFeed     India          6 months    1                    NA                -0.3230800   -0.5157936   -0.1303664
SAS-CompFeed     India          6 months    2                    NA                -0.6431140   -0.8257380   -0.4604900
SAS-CompFeed     India          6 months    3                    NA                -0.7943779   -0.9260851   -0.6626707
SAS-CompFeed     India          6 months    4                    NA                -0.9276431   -1.1265050   -0.7287812
SAS-FoodSuppl    India          6 months    1                    NA                -0.9313125   -1.1008839   -0.7617411
SAS-FoodSuppl    India          6 months    2                    NA                -0.8267568   -1.2720764   -0.3814371
SAS-FoodSuppl    India          6 months    3                    NA                -1.1171028   -1.3356213   -0.8985843
SAS-FoodSuppl    India          6 months    4                    NA                -1.1248684   -1.3771845   -0.8725523
TanzaniaChild2   Tanzania       6 months    1                    NA                 0.0574935   -0.0464624    0.1614494
TanzaniaChild2   Tanzania       6 months    2                    NA                -0.0251389   -0.1253734    0.0750957
TanzaniaChild2   Tanzania       6 months    3                    NA                 0.2278533    0.1194502    0.3362564
TanzaniaChild2   Tanzania       6 months    4                    NA                 0.0878101   -0.0203872    0.1960074
ZVITAMBO         Zimbabwe       Birth       1                    NA                -0.6017389   -0.6508933   -0.5525845
ZVITAMBO         Zimbabwe       Birth       2                    NA                -0.4880324   -0.5433842   -0.4326806
ZVITAMBO         Zimbabwe       Birth       3                    NA                -0.6061816   -0.6566420   -0.5557213
ZVITAMBO         Zimbabwe       Birth       4                    NA                -0.3543931   -0.4062593   -0.3025269
ZVITAMBO         Zimbabwe       6 months    1                    NA                 0.3757250    0.3229043    0.4285458
ZVITAMBO         Zimbabwe       6 months    2                    NA                 0.2821874    0.2333651    0.3310096
ZVITAMBO         Zimbabwe       6 months    3                    NA                 0.2700355    0.2166298    0.3234412
ZVITAMBO         Zimbabwe       6 months    4                    NA                 0.3122896    0.2618535    0.3627257
ZVITAMBO         Zimbabwe       24 months   1                    NA                -1.1069697   -1.3750790   -0.8388604
ZVITAMBO         Zimbabwe       24 months   2                    NA                -1.3369784   -1.5112872   -1.1626697
ZVITAMBO         Zimbabwe       24 months   3                    NA                -0.9666176   -1.1936768   -0.7395585
ZVITAMBO         Zimbabwe       24 months   4                    NA                -1.1713125   -1.3330454   -1.0095796


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       NA                   NA                -0.4648256   -0.7643210   -0.1653302
CMC-V-BCS-2002   India          6 months    NA                   NA                -0.5026766   -0.6536848   -0.3516685
CMC-V-BCS-2002   India          24 months   NA                   NA                -0.5571505   -0.6585247   -0.4557763
CMIN             Bangladesh     6 months    NA                   NA                -0.5780453   -0.7226627   -0.4334279
CMIN             Bangladesh     24 months   NA                   NA                -0.8535391   -0.9644236   -0.7426546
CONTENT          Peru           6 months    NA                   NA                 1.0644279    0.9468682    1.1819876
CONTENT          Peru           24 months   NA                   NA                 0.5902439    0.4560143    0.7244735
Guatemala BSC    Guatemala      6 months    NA                   NA                -0.0840134   -0.1945572    0.0265305
IRC              India          Birth       NA                   NA                -1.0105831   -1.1973019   -0.8238643
IRC              India          6 months    NA                   NA                -0.5989297   -0.7344491   -0.4634104
IRC              India          24 months   NA                   NA                -0.7458150   -0.8368180   -0.6548120
JiVitA-3         Bangladesh     Birth       NA                   NA                -0.7775928   -0.7966054   -0.7585803
JiVitA-3         Bangladesh     6 months    NA                   NA                -0.5935161   -0.6130518   -0.5739805
JiVitA-3         Bangladesh     24 months   NA                   NA                -1.2978031   -1.3210763   -1.2745298
JiVitA-4         Bangladesh     Birth       NA                   NA                -0.6886269   -0.7410452   -0.6362086
JiVitA-4         Bangladesh     6 months    NA                   NA                -0.3898055   -0.4270507   -0.3525603
JiVitA-4         Bangladesh     24 months   NA                   NA                -1.2231088   -1.2549632   -1.1912543
Keneba           Gambia         Birth       NA                   NA                -1.2349454   -1.2972413   -1.1726496
Keneba           Gambia         6 months    NA                   NA                -0.1846038   -0.2354782   -0.1337293
Keneba           Gambia         24 months   NA                   NA                -0.8099290   -0.8570608   -0.7627972
LCNI-5           Malawi         6 months    NA                   NA                 0.4499404    0.3788501    0.5210308
LCNI-5           Malawi         24 months   NA                   NA                -0.0477709   -0.1296526    0.0341109
MAL-ED           Bangladesh     Birth       NA                   NA                -0.9418605   -1.0869834   -0.7967375
MAL-ED           Bangladesh     6 months    NA                   NA                -0.1376763   -0.2664642   -0.0088885
MAL-ED           Bangladesh     24 months   NA                   NA                -0.8192925   -0.9412667   -0.6973182
MAL-ED           Brazil         Birth       NA                   NA                 0.4029032    0.0896793    0.7161272
MAL-ED           Brazil         6 months    NA                   NA                 0.9720774    0.8078144    1.1363403
MAL-ED           Brazil         24 months   NA                   NA                 0.4626233    0.2567495    0.6684971
MAL-ED           India          Birth       NA                   NA                -0.9324444   -1.2067907   -0.6580982
MAL-ED           India          6 months    NA                   NA                -0.7047422   -0.8301590   -0.5793255
MAL-ED           India          24 months   NA                   NA                -0.9516520   -1.0670654   -0.8362385
MAL-ED           Nepal          Birth       NA                   NA                -0.7684615   -1.1257770   -0.4111460
MAL-ED           Nepal          6 months    NA                   NA                 0.1104308   -0.0208643    0.2417259
MAL-ED           Nepal          24 months   NA                   NA                -0.3749123   -0.4886073   -0.2612173
MAL-ED           Peru           Birth       NA                   NA                -0.0520175   -0.1725298    0.0684947
MAL-ED           Peru           6 months    NA                   NA                 1.0528816    0.9313005    1.1744626
MAL-ED           Peru           24 months   NA                   NA                 0.1111982   -0.0118399    0.2342362
MAL-ED           South Africa   Birth       NA                   NA                -0.1925833   -0.4053570    0.0201904
MAL-ED           South Africa   6 months    NA                   NA                 0.5421785    0.3900443    0.6943126
MAL-ED           South Africa   24 months   NA                   NA                 0.4090301    0.2879441    0.5301161
MAL-ED           Tanzania       Birth       NA                   NA                 0.7624348    0.5710709    0.9537986
MAL-ED           Tanzania       6 months    NA                   NA                 0.5362213    0.4049390    0.6675036
MAL-ED           Tanzania       24 months   NA                   NA                 0.0547975   -0.0703378    0.1799328
PROBIT           Belarus        Birth       NA                   NA                -1.1491782   -1.3593933   -0.9389630
PROBIT           Belarus        6 months    NA                   NA                 0.5741099    0.5141290    0.6340908
PROBIT           Belarus        24 months   NA                   NA                 0.6981406    0.5843775    0.8119038
PROVIDE          Bangladesh     Birth       NA                   NA                -1.2984586   -1.3752758   -1.2216415
PROVIDE          Bangladesh     6 months    NA                   NA                -0.1990907   -0.2817968   -0.1163845
PROVIDE          Bangladesh     24 months   NA                   NA                -0.8928670   -0.9755153   -0.8102187
ResPak           Pakistan       6 months    NA                   NA                -0.1641841   -0.3464247    0.0180565
SAS-CompFeed     India          Birth       NA                   NA                -0.6700453   -0.8474950   -0.4925957
SAS-CompFeed     India          6 months    NA                   NA                -0.6657084   -0.8024377   -0.5289791
SAS-FoodSuppl    India          6 months    NA                   NA                -1.0121579   -1.1280429   -0.8962729
TanzaniaChild2   Tanzania       6 months    NA                   NA                 0.0809332    0.0282644    0.1336020
ZVITAMBO         Zimbabwe       Birth       NA                   NA                -0.5151425   -0.5409938   -0.4892911
ZVITAMBO         Zimbabwe       6 months    NA                   NA                 0.3105514    0.2848767    0.3362262
ZVITAMBO         Zimbabwe       24 months   NA                   NA                -1.1825404   -1.2814625   -1.0836183


### Parameter: ATE


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          Birth       2                    1                 -1.1190642   -1.9843297   -0.2537987
CMC-V-BCS-2002   India          Birth       3                    1                  0.0248319   -0.8852418    0.9349057
CMC-V-BCS-2002   India          Birth       4                    1                 -0.1924613   -1.1742548    0.7893322
CMC-V-BCS-2002   India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          6 months    2                    1                 -0.2178386   -0.6139943    0.1783170
CMC-V-BCS-2002   India          6 months    3                    1                 -0.8540520   -1.2499973   -0.4581066
CMC-V-BCS-2002   India          6 months    4                    1                 -0.4810310   -0.9549783   -0.0070838
CMC-V-BCS-2002   India          24 months   1                    1                  0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          24 months   2                    1                 -0.3070527   -0.5580654   -0.0560400
CMC-V-BCS-2002   India          24 months   3                    1                 -0.0235264   -0.2897267    0.2426739
CMC-V-BCS-2002   India          24 months   4                    1                 -0.1618305   -0.5039202    0.1802592
CMIN             Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     6 months    2                    1                 -0.5879355   -0.9749081   -0.2009629
CMIN             Bangladesh     6 months    3                    1                 -0.4235952   -0.7804789   -0.0667116
CMIN             Bangladesh     6 months    4                    1                 -0.6785956   -1.1061263   -0.2510650
CMIN             Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     24 months   2                    1                 -0.2333627   -0.5229901    0.0562647
CMIN             Bangladesh     24 months   3                    1                  0.2092198   -0.0667004    0.4851400
CMIN             Bangladesh     24 months   4                    1                  0.0590404   -0.2540485    0.3721292
CONTENT          Peru           6 months    1                    1                  0.0000000    0.0000000    0.0000000
CONTENT          Peru           6 months    2                    1                 -0.0949780   -0.4970871    0.3071311
CONTENT          Peru           6 months    3                    1                  0.2313028   -0.1090340    0.5716396
CONTENT          Peru           6 months    4                    1                  0.1026567   -0.1986494    0.4039627
CONTENT          Peru           24 months   1                    1                  0.0000000    0.0000000    0.0000000
CONTENT          Peru           24 months   2                    1                 -0.2463896   -0.5760257    0.0832465
CONTENT          Peru           24 months   3                    1                 -0.1233182   -0.5752446    0.3286082
CONTENT          Peru           24 months   4                    1                 -0.0484478   -0.3819630    0.2850674
Guatemala BSC    Guatemala      6 months    1                    1                  0.0000000    0.0000000    0.0000000
Guatemala BSC    Guatemala      6 months    2                    1                  0.3161111    0.0279542    0.6042681
Guatemala BSC    Guatemala      6 months    3                    1                 -0.0691370   -0.3429407    0.2046667
Guatemala BSC    Guatemala      6 months    4                    1                  0.1573333   -0.1646475    0.4793142
IRC              India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
IRC              India          Birth       2                    1                 -0.4292578   -0.9295704    0.0710549
IRC              India          Birth       3                    1                 -1.0028379   -1.5835496   -0.4221262
IRC              India          Birth       4                    1                 -0.6721544   -1.2117040   -0.1326048
IRC              India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
IRC              India          6 months    2                    1                  0.3086155   -0.0904239    0.7076548
IRC              India          6 months    3                    1                 -0.0402895   -0.3890443    0.3084652
IRC              India          6 months    4                    1                  0.1731064   -0.2134270    0.5596399
IRC              India          24 months   1                    1                  0.0000000    0.0000000    0.0000000
IRC              India          24 months   2                    1                 -0.1858674   -0.4189091    0.0471744
IRC              India          24 months   3                    1                 -0.2726629   -0.5300237   -0.0153021
IRC              India          24 months   4                    1                 -0.2354235   -0.4953459    0.0244989
JiVitA-3         Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     Birth       2                    1                 -0.1772094   -0.2203794   -0.1340395
JiVitA-3         Bangladesh     Birth       3                    1                 -0.1007854   -0.1477480   -0.0538228
JiVitA-3         Bangladesh     Birth       4                    1                 -0.1171397   -0.1637150   -0.0705643
JiVitA-3         Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     6 months    2                    1                 -0.0457641   -0.1021041    0.0105760
JiVitA-3         Bangladesh     6 months    3                    1                 -0.1128466   -0.1629977   -0.0626955
JiVitA-3         Bangladesh     6 months    4                    1                 -0.1279509   -0.1806757   -0.0752262
JiVitA-3         Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     24 months   2                    1                 -0.3072561   -0.3628333   -0.2516790
JiVitA-3         Bangladesh     24 months   3                    1                 -0.2042007   -0.2676782   -0.1407233
JiVitA-3         Bangladesh     24 months   4                    1                 -0.3772059   -0.4429590   -0.3114528
JiVitA-4         Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     Birth       2                    1                 -0.4226293   -0.6278519   -0.2174066
JiVitA-4         Bangladesh     Birth       3                    1                 -0.1905873   -0.3402442   -0.0409303
JiVitA-4         Bangladesh     Birth       4                    1                 -0.2557629   -0.4164295   -0.0950962
JiVitA-4         Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     6 months    2                    1                 -0.1054209   -0.1847970   -0.0260448
JiVitA-4         Bangladesh     6 months    3                    1                 -0.0227318   -0.1248630    0.0793995
JiVitA-4         Bangladesh     6 months    4                    1                 -0.2702253   -0.4858485   -0.0546020
JiVitA-4         Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     24 months   2                    1                 -0.2332088   -0.3554858   -0.1109318
JiVitA-4         Bangladesh     24 months   3                    1                 -0.1721594   -0.2677722   -0.0765467
JiVitA-4         Bangladesh     24 months   4                    1                 -0.3054251   -0.4055466   -0.2053035
Keneba           Gambia         Birth       1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         Birth       2                    1                  0.0389047   -0.1287286    0.2065381
Keneba           Gambia         Birth       3                    1                  0.2980461    0.1316940    0.4643982
Keneba           Gambia         Birth       4                    1                  0.2344408    0.0528456    0.4160360
Keneba           Gambia         6 months    1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         6 months    2                    1                 -0.1360109   -0.2941216    0.0220998
Keneba           Gambia         6 months    3                    1                  0.1099738   -0.0379366    0.2578843
Keneba           Gambia         6 months    4                    1                 -0.0391965   -0.1866601    0.1082671
Keneba           Gambia         24 months   1                    1                  0.0000000    0.0000000    0.0000000
Keneba           Gambia         24 months   2                    1                 -0.2745089   -0.3974393   -0.1515786
Keneba           Gambia         24 months   3                    1                 -0.0321312   -0.1583557    0.0940932
Keneba           Gambia         24 months   4                    1                 -0.3468536   -0.4800135   -0.2136937
LCNI-5           Malawi         6 months    1                    1                  0.0000000    0.0000000    0.0000000
LCNI-5           Malawi         6 months    2                    1                 -0.1317954   -0.3175591    0.0539682
LCNI-5           Malawi         6 months    3                    1                  0.1030019   -0.1305211    0.3365249
LCNI-5           Malawi         6 months    4                    1                 -0.1438375   -0.3471209    0.0594459
LCNI-5           Malawi         24 months   1                    1                  0.0000000    0.0000000    0.0000000
LCNI-5           Malawi         24 months   2                    1                 -0.1575172   -0.4360424    0.1210079
LCNI-5           Malawi         24 months   3                    1                 -0.0189220   -0.2277015    0.1898575
LCNI-5           Malawi         24 months   4                    1                 -0.2720329   -0.4935460   -0.0505197
MAL-ED           Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     Birth       2                    1                 -0.2214844   -0.6169263    0.1739575
MAL-ED           Bangladesh     Birth       3                    1                 -0.0799270   -0.4706637    0.3108097
MAL-ED           Bangladesh     Birth       4                    1                  0.0449442   -0.3528956    0.4427840
MAL-ED           Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     6 months    2                    1                 -0.0860459   -0.4575076    0.2854159
MAL-ED           Bangladesh     6 months    3                    1                 -0.0143283   -0.3845405    0.3558839
MAL-ED           Bangladesh     6 months    4                    1                  0.0044248   -0.3448878    0.3537374
MAL-ED           Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     24 months   2                    1                 -0.1480097   -0.4752293    0.1792099
MAL-ED           Bangladesh     24 months   3                    1                 -0.1812143   -0.5214519    0.1590232
MAL-ED           Bangladesh     24 months   4                    1                 -0.1734435   -0.4986709    0.1517839
MAL-ED           Brazil         Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         Birth       2                    1                 -0.4569519   -1.3949022    0.4809984
MAL-ED           Brazil         Birth       3                    1                 -0.4130882   -1.2253908    0.3992144
MAL-ED           Brazil         Birth       4                    1                 -0.3569519   -1.1389267    0.4250230
MAL-ED           Brazil         6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         6 months    2                    1                 -0.0367029   -0.5176645    0.4442586
MAL-ED           Brazil         6 months    3                    1                  0.1048887   -0.3486684    0.5584459
MAL-ED           Brazil         6 months    4                    1                 -0.0597885   -0.5079109    0.3883338
MAL-ED           Brazil         24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         24 months   2                    1                 -0.3538889   -0.9465658    0.2387880
MAL-ED           Brazil         24 months   3                    1                 -0.2324729   -0.7317655    0.2668198
MAL-ED           Brazil         24 months   4                    1                 -0.3892796   -1.0007176    0.2221584
MAL-ED           India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          Birth       2                    1                 -0.1010000   -0.6615518    0.4595518
MAL-ED           India          Birth       3                    1                 -0.0236364   -0.7887323    0.7414596
MAL-ED           India          Birth       4                    1                  0.9185714    0.2583570    1.5787858
MAL-ED           India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          6 months    2                    1                 -0.1114015   -0.4859002    0.2630972
MAL-ED           India          6 months    3                    1                 -0.2591603   -0.5861857    0.0678651
MAL-ED           India          6 months    4                    1                 -0.1038813   -0.4508888    0.2431262
MAL-ED           India          24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           India          24 months   2                    1                 -0.1304800   -0.4148751    0.1539152
MAL-ED           India          24 months   3                    1                 -0.2484573   -0.5936297    0.0967152
MAL-ED           India          24 months   4                    1                 -0.1017380   -0.4318309    0.2283548
MAL-ED           Nepal          Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          Birth       2                    1                  0.9833333    0.0343332    1.9323334
MAL-ED           Nepal          Birth       3                    1                  0.6485714   -0.3716230    1.6687658
MAL-ED           Nepal          Birth       4                    1                  1.3340000    0.0900258    2.5779742
MAL-ED           Nepal          6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          6 months    2                    1                 -0.1255913   -0.5021072    0.2509245
MAL-ED           Nepal          6 months    3                    1                  0.0615273   -0.2907151    0.4137697
MAL-ED           Nepal          6 months    4                    1                  0.0393429   -0.3425833    0.4212691
MAL-ED           Nepal          24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          24 months   2                    1                 -0.0478154   -0.3518746    0.2562437
MAL-ED           Nepal          24 months   3                    1                 -0.3872547   -0.6696743   -0.1048350
MAL-ED           Nepal          24 months   4                    1                 -0.3465989   -0.6860009   -0.0071969
MAL-ED           Peru           Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           Birth       2                    1                  0.2049176   -0.1518156    0.5616508
MAL-ED           Peru           Birth       3                    1                 -0.0463561   -0.4116639    0.3189517
MAL-ED           Peru           Birth       4                    1                 -0.0241872   -0.3528330    0.3044586
MAL-ED           Peru           6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           6 months    2                    1                 -0.0346039   -0.3351772    0.2659694
MAL-ED           Peru           6 months    3                    1                 -0.2733993   -0.6056589    0.0588603
MAL-ED           Peru           6 months    4                    1                 -0.0040035   -0.3899609    0.3819540
MAL-ED           Peru           24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Peru           24 months   2                    1                  0.1653534   -0.1850532    0.5157600
MAL-ED           Peru           24 months   3                    1                  0.0993973   -0.2421793    0.4409739
MAL-ED           Peru           24 months   4                    1                  0.1202991   -0.2356968    0.4762949
MAL-ED           South Africa   Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   Birth       2                    1                 -0.4288545   -1.1322535    0.2745444
MAL-ED           South Africa   Birth       3                    1                  0.0007429   -0.5382175    0.5397032
MAL-ED           South Africa   Birth       4                    1                 -0.1344526   -0.7221403    0.4532351
MAL-ED           South Africa   6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   6 months    2                    1                 -0.2204586   -0.6250641    0.1841470
MAL-ED           South Africa   6 months    3                    1                 -0.1710755   -0.5580578    0.2159069
MAL-ED           South Africa   6 months    4                    1                  0.1192208   -0.3273196    0.5657613
MAL-ED           South Africa   24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   24 months   2                    1                 -0.1774103   -0.5484786    0.1936580
MAL-ED           South Africa   24 months   3                    1                 -0.2820174   -0.5931401    0.0291052
MAL-ED           South Africa   24 months   4                    1                 -0.3733851   -0.7305600   -0.0162101
MAL-ED           Tanzania       Birth       1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       Birth       2                    1                 -0.1156926   -0.6545416    0.4231563
MAL-ED           Tanzania       Birth       3                    1                 -0.3560714   -0.9451289    0.2329861
MAL-ED           Tanzania       Birth       4                    1                 -0.2519048   -0.7524325    0.2486230
MAL-ED           Tanzania       6 months    1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       6 months    2                    1                 -0.1394428   -0.4592150    0.1803294
MAL-ED           Tanzania       6 months    3                    1                  0.0234122   -0.3505211    0.3973454
MAL-ED           Tanzania       6 months    4                    1                  0.2468910   -0.1414182    0.6352003
MAL-ED           Tanzania       24 months   1                    1                  0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       24 months   2                    1                  0.0470596   -0.2623415    0.3564607
MAL-ED           Tanzania       24 months   3                    1                 -0.1833359   -0.5491760    0.1825042
MAL-ED           Tanzania       24 months   4                    1                 -0.2075357   -0.5867995    0.1717281
PROBIT           Belarus        Birth       1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        Birth       2                    1                 -0.0250434   -0.1624680    0.1123811
PROBIT           Belarus        Birth       3                    1                  0.0049023   -0.0724737    0.0822783
PROBIT           Belarus        Birth       4                    1                 -0.0982915   -0.2221467    0.0255637
PROBIT           Belarus        6 months    1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        6 months    2                    1                 -0.0176312   -0.0815908    0.0463284
PROBIT           Belarus        6 months    3                    1                 -0.0262354   -0.0851019    0.0326311
PROBIT           Belarus        6 months    4                    1                 -0.0039654   -0.0657879    0.0578571
PROBIT           Belarus        24 months   1                    1                  0.0000000    0.0000000    0.0000000
PROBIT           Belarus        24 months   2                    1                  0.0163958   -0.1195004    0.1522920
PROBIT           Belarus        24 months   3                    1                  0.0183032   -0.1333468    0.1699532
PROBIT           Belarus        24 months   4                    1                 -0.0140838   -0.2333527    0.2051852
PROVIDE          Bangladesh     Birth       1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     Birth       2                    1                 -0.3991880   -0.6392138   -0.1591622
PROVIDE          Bangladesh     Birth       3                    1                 -0.2632144   -0.5155754   -0.0108533
PROVIDE          Bangladesh     Birth       4                    1                 -0.5601538   -0.7839250   -0.3363827
PROVIDE          Bangladesh     6 months    1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     6 months    2                    1                 -0.1025684   -0.3368187    0.1316819
PROVIDE          Bangladesh     6 months    3                    1                  0.1512186   -0.0523191    0.3547563
PROVIDE          Bangladesh     6 months    4                    1                 -0.1621375   -0.4155278    0.0912529
PROVIDE          Bangladesh     24 months   1                    1                  0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     24 months   2                    1                 -0.0839483   -0.2999710    0.1320744
PROVIDE          Bangladesh     24 months   3                    1                 -0.0723193   -0.3315049    0.1868662
PROVIDE          Bangladesh     24 months   4                    1                 -0.3278139   -0.5455858   -0.1100419
ResPak           Pakistan       6 months    1                    1                  0.0000000    0.0000000    0.0000000
ResPak           Pakistan       6 months    2                    1                 -0.0171481   -0.4198576    0.3855614
ResPak           Pakistan       6 months    3                    1                 -0.4994568   -1.2852006    0.2862870
ResPak           Pakistan       6 months    4                    1                  0.1293092   -0.4361626    0.6947811
SAS-CompFeed     India          Birth       1                    1                  0.0000000    0.0000000    0.0000000
SAS-CompFeed     India          Birth       2                    1                 -0.4819587   -0.6686132   -0.2953042
SAS-CompFeed     India          Birth       3                    1                 -0.3603943   -0.5530520   -0.1677367
SAS-CompFeed     India          Birth       4                    1                 -0.5608044   -0.7580663   -0.3635426
SAS-CompFeed     India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
SAS-CompFeed     India          6 months    2                    1                 -0.3200340   -0.4815245   -0.1585436
SAS-CompFeed     India          6 months    3                    1                 -0.4712979   -0.6254969   -0.3170989
SAS-CompFeed     India          6 months    4                    1                 -0.6045631   -0.7695617   -0.4395645
SAS-FoodSuppl    India          6 months    1                    1                  0.0000000    0.0000000    0.0000000
SAS-FoodSuppl    India          6 months    2                    1                  0.1045557   -0.3719566    0.5810681
SAS-FoodSuppl    India          6 months    3                    1                 -0.1857903   -0.4623853    0.0908047
SAS-FoodSuppl    India          6 months    4                    1                 -0.1935559   -0.4975590    0.1104471
TanzaniaChild2   Tanzania       6 months    1                    1                  0.0000000    0.0000000    0.0000000
TanzaniaChild2   Tanzania       6 months    2                    1                 -0.0826324   -0.2270409    0.0617760
TanzaniaChild2   Tanzania       6 months    3                    1                  0.1703598    0.0201664    0.3205532
TanzaniaChild2   Tanzania       6 months    4                    1                  0.0303166   -0.1197284    0.1803615
ZVITAMBO         Zimbabwe       Birth       1                    1                  0.0000000    0.0000000    0.0000000
ZVITAMBO         Zimbabwe       Birth       2                    1                  0.1137065    0.0396797    0.1877333
ZVITAMBO         Zimbabwe       Birth       3                    1                 -0.0044428   -0.0748871    0.0660016
ZVITAMBO         Zimbabwe       Birth       4                    1                  0.2473458    0.1758877    0.3188039
ZVITAMBO         Zimbabwe       6 months    1                    1                  0.0000000    0.0000000    0.0000000
ZVITAMBO         Zimbabwe       6 months    2                    1                 -0.0935377   -0.1654657   -0.0216097
ZVITAMBO         Zimbabwe       6 months    3                    1                 -0.1056896   -0.1808041   -0.0305750
ZVITAMBO         Zimbabwe       6 months    4                    1                 -0.0634355   -0.1364685    0.0095976
ZVITAMBO         Zimbabwe       24 months   1                    1                  0.0000000    0.0000000    0.0000000
ZVITAMBO         Zimbabwe       24 months   2                    1                 -0.2300087   -0.5497995    0.0897820
ZVITAMBO         Zimbabwe       24 months   3                    1                  0.1403520   -0.2109860    0.4916901
ZVITAMBO         Zimbabwe       24 months   4                    1                 -0.0643428   -0.3774564    0.2487708


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Birth       1                    NA                -0.3207079   -0.9824835    0.3410676
CMC-V-BCS-2002   India          6 months    1                    NA                -0.3680688   -0.6133319   -0.1228057
CMC-V-BCS-2002   India          24 months   1                    NA                -0.1130416   -0.2726785    0.0465953
CMIN             Bangladesh     6 months    1                    NA                -0.4423786   -0.6919928   -0.1927644
CMIN             Bangladesh     24 months   1                    NA                -0.0073366   -0.1549810    0.1403079
CONTENT          Peru           6 months    1                    NA                 0.0699655   -0.1271744    0.2671055
CONTENT          Peru           24 months   1                    NA                -0.0835743   -0.2597864    0.0926378
Guatemala BSC    Guatemala      6 months    1                    NA                 0.1023477   -0.0825841    0.2872796
IRC              India          Birth       1                    NA                -0.4954549   -0.8414401   -0.1494696
IRC              India          6 months    1                    NA                 0.0815688   -0.1313694    0.2945070
IRC              India          24 months   1                    NA                -0.1631249   -0.3043543   -0.0218955
JiVitA-3         Bangladesh     Birth       1                    NA                -0.0992970   -0.1250552   -0.0735388
JiVitA-3         Bangladesh     6 months    1                    NA                -0.0774366   -0.1122151   -0.0426582
JiVitA-3         Bangladesh     24 months   1                    NA                -0.2086074   -0.2424918   -0.1747230
JiVitA-4         Bangladesh     Birth       1                    NA                -0.2101792   -0.3355538   -0.0848047
JiVitA-4         Bangladesh     6 months    1                    NA                -0.0666694   -0.1185512   -0.0147877
JiVitA-4         Bangladesh     24 months   1                    NA                -0.1940417   -0.2716666   -0.1164168
Keneba           Gambia         Birth       1                    NA                 0.1286226    0.0321301    0.2251151
Keneba           Gambia         6 months    1                    NA                -0.0084183   -0.1078911    0.0910546
Keneba           Gambia         24 months   1                    NA                -0.1548029   -0.2251428   -0.0844631
LCNI-5           Malawi         6 months    1                    NA                -0.0710400   -0.1965912    0.0545112
LCNI-5           Malawi         24 months   1                    NA                -0.0912881   -0.2276260    0.0450497
MAL-ED           Bangladesh     Birth       1                    NA                -0.0633448   -0.2813789    0.1546893
MAL-ED           Bangladesh     6 months    1                    NA                -0.0282824   -0.2613936    0.2048287
MAL-ED           Bangladesh     24 months   1                    NA                -0.1093609   -0.2778508    0.0591289
MAL-ED           Brazil         Birth       1                    NA                -0.2876850   -0.7609060    0.1855360
MAL-ED           Brazil         6 months    1                    NA                -0.0011779   -0.2656879    0.2633322
MAL-ED           Brazil         24 months   1                    NA                -0.1933767   -0.4539510    0.0671976
MAL-ED           India          Birth       1                    NA                 0.2575556   -0.1880982    0.7032093
MAL-ED           India          6 months    1                    NA                -0.1241993   -0.3236879    0.0752893
MAL-ED           India          24 months   1                    NA                -0.1164981   -0.2958653    0.0628691
MAL-ED           Nepal          Birth       1                    NA                 0.7715385    0.0068006    1.5362763
MAL-ED           Nepal          6 months    1                    NA                -0.0063470   -0.2319754    0.2192814
MAL-ED           Nepal          24 months   1                    NA                -0.1775638   -0.3477080   -0.0074196
MAL-ED           Peru           Birth       1                    NA                 0.0265539   -0.2076826    0.2607904
MAL-ED           Peru           6 months    1                    NA                -0.0704344   -0.2363423    0.0954734
MAL-ED           Peru           24 months   1                    NA                 0.0920770   -0.1168103    0.3009642
MAL-ED           South Africa   Birth       1                    NA                -0.1209833   -0.5082147    0.2662480
MAL-ED           South Africa   6 months    1                    NA                -0.0715637   -0.2502594    0.1071320
MAL-ED           South Africa   24 months   1                    NA                -0.2219699   -0.4366807   -0.0072591
MAL-ED           Tanzania       Birth       1                    NA                -0.2111366   -0.6094605    0.1871872
MAL-ED           Tanzania       6 months    1                    NA                 0.0028410   -0.1915153    0.1971974
MAL-ED           Tanzania       24 months   1                    NA                -0.0763632   -0.2860236    0.1332972
PROBIT           Belarus        Birth       1                    NA                -0.0294944   -0.0978185    0.0388297
PROBIT           Belarus        6 months    1                    NA                -0.0121321   -0.0491531    0.0248888
PROBIT           Belarus        24 months   1                    NA                 0.0051984   -0.0852253    0.0956220
PROVIDE          Bangladesh     Birth       1                    NA                -0.3748689   -0.5514617   -0.1982761
PROVIDE          Bangladesh     6 months    1                    NA                -0.0029295   -0.1173779    0.1115189
PROVIDE          Bangladesh     24 months   1                    NA                -0.1471094   -0.2999036    0.0056848
ResPak           Pakistan       6 months    1                    NA                -0.0096825   -0.2103378    0.1909727
SAS-CompFeed     India          Birth       1                    NA                -0.3819501   -0.4867343   -0.2771658
SAS-CompFeed     India          6 months    1                    NA                -0.3426284   -0.4240909   -0.2611659
SAS-FoodSuppl    India          6 months    1                    NA                -0.0808454   -0.2148958    0.0532050
TanzaniaChild2   Tanzania       6 months    1                    NA                 0.0234396   -0.0664575    0.1133368
ZVITAMBO         Zimbabwe       Birth       1                    NA                 0.0865964    0.0446038    0.1285890
ZVITAMBO         Zimbabwe       6 months    1                    NA                -0.0651736   -0.1105132   -0.0198340
ZVITAMBO         Zimbabwe       24 months   1                    NA                -0.0755707   -0.3200186    0.1688772

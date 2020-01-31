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

**Outcome Variable:** sstunted

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

studyid          country        agecat       rain_quartile   sstunted   n_cell       n  outcome_variable 
---------------  -------------  ----------  --------------  ---------  -------  ------  -----------------
CMC-V-BCS-2002   India          Birth                    1          0       17      92  sstunted         
CMC-V-BCS-2002   India          Birth                    1          1        1      92  sstunted         
CMC-V-BCS-2002   India          Birth                    2          0       23      92  sstunted         
CMC-V-BCS-2002   India          Birth                    2          1        2      92  sstunted         
CMC-V-BCS-2002   India          Birth                    3          0       30      92  sstunted         
CMC-V-BCS-2002   India          Birth                    3          1        0      92  sstunted         
CMC-V-BCS-2002   India          Birth                    4          0       18      92  sstunted         
CMC-V-BCS-2002   India          Birth                    4          1        1      92  sstunted         
CMC-V-BCS-2002   India          6 months                 1          0       86     369  sstunted         
CMC-V-BCS-2002   India          6 months                 1          1       15     369  sstunted         
CMC-V-BCS-2002   India          6 months                 2          0       97     369  sstunted         
CMC-V-BCS-2002   India          6 months                 2          1       14     369  sstunted         
CMC-V-BCS-2002   India          6 months                 3          0       88     369  sstunted         
CMC-V-BCS-2002   India          6 months                 3          1        9     369  sstunted         
CMC-V-BCS-2002   India          6 months                 4          0       56     369  sstunted         
CMC-V-BCS-2002   India          6 months                 4          1        4     369  sstunted         
CMC-V-BCS-2002   India          24 months                1          0       63     371  sstunted         
CMC-V-BCS-2002   India          24 months                1          1       38     371  sstunted         
CMC-V-BCS-2002   India          24 months                2          0       63     371  sstunted         
CMC-V-BCS-2002   India          24 months                2          1       36     371  sstunted         
CMC-V-BCS-2002   India          24 months                3          0       79     371  sstunted         
CMC-V-BCS-2002   India          24 months                3          1       37     371  sstunted         
CMC-V-BCS-2002   India          24 months                4          0       41     371  sstunted         
CMC-V-BCS-2002   India          24 months                4          1       14     371  sstunted         
CMIN             Bangladesh     Birth                    1          0        5      26  sstunted         
CMIN             Bangladesh     Birth                    1          1        2      26  sstunted         
CMIN             Bangladesh     Birth                    2          0        5      26  sstunted         
CMIN             Bangladesh     Birth                    2          1        1      26  sstunted         
CMIN             Bangladesh     Birth                    3          0        5      26  sstunted         
CMIN             Bangladesh     Birth                    3          1        1      26  sstunted         
CMIN             Bangladesh     Birth                    4          0        5      26  sstunted         
CMIN             Bangladesh     Birth                    4          1        2      26  sstunted         
CMIN             Bangladesh     6 months                 1          0       40     243  sstunted         
CMIN             Bangladesh     6 months                 1          1       10     243  sstunted         
CMIN             Bangladesh     6 months                 2          0       60     243  sstunted         
CMIN             Bangladesh     6 months                 2          1        2     243  sstunted         
CMIN             Bangladesh     6 months                 3          0       62     243  sstunted         
CMIN             Bangladesh     6 months                 3          1        9     243  sstunted         
CMIN             Bangladesh     6 months                 4          0       53     243  sstunted         
CMIN             Bangladesh     6 months                 4          1        7     243  sstunted         
CMIN             Bangladesh     24 months                1          0       55     242  sstunted         
CMIN             Bangladesh     24 months                1          1       23     242  sstunted         
CMIN             Bangladesh     24 months                2          0       48     242  sstunted         
CMIN             Bangladesh     24 months                2          1       21     242  sstunted         
CMIN             Bangladesh     24 months                3          0       48     242  sstunted         
CMIN             Bangladesh     24 months                3          1       10     242  sstunted         
CMIN             Bangladesh     24 months                4          0       23     242  sstunted         
CMIN             Bangladesh     24 months                4          1       14     242  sstunted         
CONTENT          Peru           Birth                    1          0        0       2  sstunted         
CONTENT          Peru           Birth                    1          1        0       2  sstunted         
CONTENT          Peru           Birth                    2          0        2       2  sstunted         
CONTENT          Peru           Birth                    2          1        0       2  sstunted         
CONTENT          Peru           Birth                    3          0        0       2  sstunted         
CONTENT          Peru           Birth                    3          1        0       2  sstunted         
CONTENT          Peru           Birth                    4          0        0       2  sstunted         
CONTENT          Peru           Birth                    4          1        0       2  sstunted         
CONTENT          Peru           6 months                 1          0       62     215  sstunted         
CONTENT          Peru           6 months                 1          1        0     215  sstunted         
CONTENT          Peru           6 months                 2          0       32     215  sstunted         
CONTENT          Peru           6 months                 2          1        0     215  sstunted         
CONTENT          Peru           6 months                 3          0       42     215  sstunted         
CONTENT          Peru           6 months                 3          1        2     215  sstunted         
CONTENT          Peru           6 months                 4          0       75     215  sstunted         
CONTENT          Peru           6 months                 4          1        2     215  sstunted         
CONTENT          Peru           24 months                1          0       54     164  sstunted         
CONTENT          Peru           24 months                1          1        1     164  sstunted         
CONTENT          Peru           24 months                2          0       35     164  sstunted         
CONTENT          Peru           24 months                2          1        0     164  sstunted         
CONTENT          Peru           24 months                3          0       20     164  sstunted         
CONTENT          Peru           24 months                3          1        0     164  sstunted         
CONTENT          Peru           24 months                4          0       52     164  sstunted         
CONTENT          Peru           24 months                4          1        2     164  sstunted         
EE               Pakistan       Birth                    1          0      106     240  sstunted         
EE               Pakistan       Birth                    1          1       30     240  sstunted         
EE               Pakistan       Birth                    2          0       78     240  sstunted         
EE               Pakistan       Birth                    2          1       15     240  sstunted         
EE               Pakistan       Birth                    3          0        8     240  sstunted         
EE               Pakistan       Birth                    3          1        3     240  sstunted         
EE               Pakistan       Birth                    4          0        0     240  sstunted         
EE               Pakistan       Birth                    4          1        0     240  sstunted         
EE               Pakistan       6 months                 1          0        0     373  sstunted         
EE               Pakistan       6 months                 1          1        0     373  sstunted         
EE               Pakistan       6 months                 2          0       27     373  sstunted         
EE               Pakistan       6 months                 2          1        7     373  sstunted         
EE               Pakistan       6 months                 3          0      138     373  sstunted         
EE               Pakistan       6 months                 3          1       30     373  sstunted         
EE               Pakistan       6 months                 4          0      127     373  sstunted         
EE               Pakistan       6 months                 4          1       44     373  sstunted         
EE               Pakistan       24 months                1          0        4     167  sstunted         
EE               Pakistan       24 months                1          1        4     167  sstunted         
EE               Pakistan       24 months                2          0      104     167  sstunted         
EE               Pakistan       24 months                2          1       55     167  sstunted         
EE               Pakistan       24 months                3          0        0     167  sstunted         
EE               Pakistan       24 months                3          1        0     167  sstunted         
EE               Pakistan       24 months                4          0        0     167  sstunted         
EE               Pakistan       24 months                4          1        0     167  sstunted         
GMS-Nepal        Nepal          Birth                    1          0        0     696  sstunted         
GMS-Nepal        Nepal          Birth                    1          1        0     696  sstunted         
GMS-Nepal        Nepal          Birth                    2          0        0     696  sstunted         
GMS-Nepal        Nepal          Birth                    2          1        0     696  sstunted         
GMS-Nepal        Nepal          Birth                    3          0      156     696  sstunted         
GMS-Nepal        Nepal          Birth                    3          1        5     696  sstunted         
GMS-Nepal        Nepal          Birth                    4          0      509     696  sstunted         
GMS-Nepal        Nepal          Birth                    4          1       26     696  sstunted         
GMS-Nepal        Nepal          6 months                 1          0      483     564  sstunted         
GMS-Nepal        Nepal          6 months                 1          1       19     564  sstunted         
GMS-Nepal        Nepal          6 months                 2          0       60     564  sstunted         
GMS-Nepal        Nepal          6 months                 2          1        2     564  sstunted         
GMS-Nepal        Nepal          6 months                 3          0        0     564  sstunted         
GMS-Nepal        Nepal          6 months                 3          1        0     564  sstunted         
GMS-Nepal        Nepal          6 months                 4          0        0     564  sstunted         
GMS-Nepal        Nepal          6 months                 4          1        0     564  sstunted         
GMS-Nepal        Nepal          24 months                1          0        0     488  sstunted         
GMS-Nepal        Nepal          24 months                1          1        0     488  sstunted         
GMS-Nepal        Nepal          24 months                2          0        0     488  sstunted         
GMS-Nepal        Nepal          24 months                2          1        0     488  sstunted         
GMS-Nepal        Nepal          24 months                3          0       35     488  sstunted         
GMS-Nepal        Nepal          24 months                3          1        4     488  sstunted         
GMS-Nepal        Nepal          24 months                4          0      400     488  sstunted         
GMS-Nepal        Nepal          24 months                4          1       49     488  sstunted         
Guatemala BSC    Guatemala      6 months                 1          0       57     299  sstunted         
Guatemala BSC    Guatemala      6 months                 1          1        3     299  sstunted         
Guatemala BSC    Guatemala      6 months                 2          0       69     299  sstunted         
Guatemala BSC    Guatemala      6 months                 2          1       11     299  sstunted         
Guatemala BSC    Guatemala      6 months                 3          0       83     299  sstunted         
Guatemala BSC    Guatemala      6 months                 3          1        4     299  sstunted         
Guatemala BSC    Guatemala      6 months                 4          0       63     299  sstunted         
Guatemala BSC    Guatemala      6 months                 4          1        9     299  sstunted         
IRC              India          Birth                    1          0       82     388  sstunted         
IRC              India          Birth                    1          1        4     388  sstunted         
IRC              India          Birth                    2          0      120     388  sstunted         
IRC              India          Birth                    2          1        6     388  sstunted         
IRC              India          Birth                    3          0       73     388  sstunted         
IRC              India          Birth                    3          1        4     388  sstunted         
IRC              India          Birth                    4          0       97     388  sstunted         
IRC              India          Birth                    4          1        2     388  sstunted         
IRC              India          6 months                 1          0      115     407  sstunted         
IRC              India          6 months                 1          1        4     407  sstunted         
IRC              India          6 months                 2          0       69     407  sstunted         
IRC              India          6 months                 2          1        7     407  sstunted         
IRC              India          6 months                 3          0      116     407  sstunted         
IRC              India          6 months                 3          1       11     407  sstunted         
IRC              India          6 months                 4          0       78     407  sstunted         
IRC              India          6 months                 4          1        7     407  sstunted         
IRC              India          24 months                1          0       99     409  sstunted         
IRC              India          24 months                1          1       15     409  sstunted         
IRC              India          24 months                2          0      109     409  sstunted         
IRC              India          24 months                2          1       10     409  sstunted         
IRC              India          24 months                3          0       75     409  sstunted         
IRC              India          24 months                3          1       10     409  sstunted         
IRC              India          24 months                4          0       85     409  sstunted         
IRC              India          24 months                4          1        6     409  sstunted         
JiVitA-3         Bangladesh     Birth                    1          0     5745   22455  sstunted         
JiVitA-3         Bangladesh     Birth                    1          1      811   22455  sstunted         
JiVitA-3         Bangladesh     Birth                    2          0     6340   22455  sstunted         
JiVitA-3         Bangladesh     Birth                    2          1      837   22455  sstunted         
JiVitA-3         Bangladesh     Birth                    3          0     4250   22455  sstunted         
JiVitA-3         Bangladesh     Birth                    3          1      386   22455  sstunted         
JiVitA-3         Bangladesh     Birth                    4          0     3672   22455  sstunted         
JiVitA-3         Bangladesh     Birth                    4          1      414   22455  sstunted         
JiVitA-3         Bangladesh     6 months                 1          0     3521   16811  sstunted         
JiVitA-3         Bangladesh     6 months                 1          1      203   16811  sstunted         
JiVitA-3         Bangladesh     6 months                 2          0     3369   16811  sstunted         
JiVitA-3         Bangladesh     6 months                 2          1      218   16811  sstunted         
JiVitA-3         Bangladesh     6 months                 3          0     4883   16811  sstunted         
JiVitA-3         Bangladesh     6 months                 3          1      341   16811  sstunted         
JiVitA-3         Bangladesh     6 months                 4          0     4018   16811  sstunted         
JiVitA-3         Bangladesh     6 months                 4          1      258   16811  sstunted         
JiVitA-3         Bangladesh     24 months                1          0     2140    8631  sstunted         
JiVitA-3         Bangladesh     24 months                1          1      486    8631  sstunted         
JiVitA-3         Bangladesh     24 months                2          0     2218    8631  sstunted         
JiVitA-3         Bangladesh     24 months                2          1      391    8631  sstunted         
JiVitA-3         Bangladesh     24 months                3          0     1411    8631  sstunted         
JiVitA-3         Bangladesh     24 months                3          1      233    8631  sstunted         
JiVitA-3         Bangladesh     24 months                4          0     1516    8631  sstunted         
JiVitA-3         Bangladesh     24 months                4          1      236    8631  sstunted         
JiVitA-4         Bangladesh     Birth                    1          0      309    2823  sstunted         
JiVitA-4         Bangladesh     Birth                    1          1       24    2823  sstunted         
JiVitA-4         Bangladesh     Birth                    2          0      206    2823  sstunted         
JiVitA-4         Bangladesh     Birth                    2          1       10    2823  sstunted         
JiVitA-4         Bangladesh     Birth                    3          0     1182    2823  sstunted         
JiVitA-4         Bangladesh     Birth                    3          1      130    2823  sstunted         
JiVitA-4         Bangladesh     Birth                    4          0      893    2823  sstunted         
JiVitA-4         Bangladesh     Birth                    4          1       69    2823  sstunted         
JiVitA-4         Bangladesh     6 months                 1          0     1389    4831  sstunted         
JiVitA-4         Bangladesh     6 months                 1          1       80    4831  sstunted         
JiVitA-4         Bangladesh     6 months                 2          0     2456    4831  sstunted         
JiVitA-4         Bangladesh     6 months                 2          1      157    4831  sstunted         
JiVitA-4         Bangladesh     6 months                 3          0      602    4831  sstunted         
JiVitA-4         Bangladesh     6 months                 3          1       26    4831  sstunted         
JiVitA-4         Bangladesh     6 months                 4          0      113    4831  sstunted         
JiVitA-4         Bangladesh     6 months                 4          1        8    4831  sstunted         
JiVitA-4         Bangladesh     24 months                1          0      602    4752  sstunted         
JiVitA-4         Bangladesh     24 months                1          1       92    4752  sstunted         
JiVitA-4         Bangladesh     24 months                2          0      541    4752  sstunted         
JiVitA-4         Bangladesh     24 months                2          1       38    4752  sstunted         
JiVitA-4         Bangladesh     24 months                3          0     1854    4752  sstunted         
JiVitA-4         Bangladesh     24 months                3          1      226    4752  sstunted         
JiVitA-4         Bangladesh     24 months                4          0     1302    4752  sstunted         
JiVitA-4         Bangladesh     24 months                4          1       97    4752  sstunted         
Keneba           Gambia         Birth                    1          0      435    1543  sstunted         
Keneba           Gambia         Birth                    1          1       13    1543  sstunted         
Keneba           Gambia         Birth                    2          0      419    1543  sstunted         
Keneba           Gambia         Birth                    2          1        8    1543  sstunted         
Keneba           Gambia         Birth                    3          0      373    1543  sstunted         
Keneba           Gambia         Birth                    3          1        5    1543  sstunted         
Keneba           Gambia         Birth                    4          0      287    1543  sstunted         
Keneba           Gambia         Birth                    4          1        3    1543  sstunted         
Keneba           Gambia         6 months                 1          0      444    2089  sstunted         
Keneba           Gambia         6 months                 1          1       20    2089  sstunted         
Keneba           Gambia         6 months                 2          0      444    2089  sstunted         
Keneba           Gambia         6 months                 2          1       15    2089  sstunted         
Keneba           Gambia         6 months                 3          0      590    2089  sstunted         
Keneba           Gambia         6 months                 3          1       16    2089  sstunted         
Keneba           Gambia         6 months                 4          0      541    2089  sstunted         
Keneba           Gambia         6 months                 4          1       19    2089  sstunted         
Keneba           Gambia         24 months                1          0      454    1725  sstunted         
Keneba           Gambia         24 months                1          1       47    1725  sstunted         
Keneba           Gambia         24 months                2          0      453    1725  sstunted         
Keneba           Gambia         24 months                2          1       41    1725  sstunted         
Keneba           Gambia         24 months                3          0      362    1725  sstunted         
Keneba           Gambia         24 months                3          1       26    1725  sstunted         
Keneba           Gambia         24 months                4          0      316    1725  sstunted         
Keneba           Gambia         24 months                4          1       26    1725  sstunted         
LCNI-5           Malawi         6 months                 1          0      189     839  sstunted         
LCNI-5           Malawi         6 months                 1          1       15     839  sstunted         
LCNI-5           Malawi         6 months                 2          0      286     839  sstunted         
LCNI-5           Malawi         6 months                 2          1       33     839  sstunted         
LCNI-5           Malawi         6 months                 3          0      103     839  sstunted         
LCNI-5           Malawi         6 months                 3          1       10     839  sstunted         
LCNI-5           Malawi         6 months                 4          0      190     839  sstunted         
LCNI-5           Malawi         6 months                 4          1       13     839  sstunted         
LCNI-5           Malawi         24 months                1          0      134     579  sstunted         
LCNI-5           Malawi         24 months                1          1       14     579  sstunted         
LCNI-5           Malawi         24 months                2          0       73     579  sstunted         
LCNI-5           Malawi         24 months                2          1        8     579  sstunted         
LCNI-5           Malawi         24 months                3          0      190     579  sstunted         
LCNI-5           Malawi         24 months                3          1       30     579  sstunted         
LCNI-5           Malawi         24 months                4          0      112     579  sstunted         
LCNI-5           Malawi         24 months                4          1       18     579  sstunted         
MAL-ED           Bangladesh     Birth                    1          0       66     231  sstunted         
MAL-ED           Bangladesh     Birth                    1          1        2     231  sstunted         
MAL-ED           Bangladesh     Birth                    2          0       50     231  sstunted         
MAL-ED           Bangladesh     Birth                    2          1        1     231  sstunted         
MAL-ED           Bangladesh     Birth                    3          0       63     231  sstunted         
MAL-ED           Bangladesh     Birth                    3          1        1     231  sstunted         
MAL-ED           Bangladesh     Birth                    4          0       43     231  sstunted         
MAL-ED           Bangladesh     Birth                    4          1        5     231  sstunted         
MAL-ED           Bangladesh     6 months                 1          0       53     241  sstunted         
MAL-ED           Bangladesh     6 months                 1          1        2     241  sstunted         
MAL-ED           Bangladesh     6 months                 2          0       70     241  sstunted         
MAL-ED           Bangladesh     6 months                 2          1        1     241  sstunted         
MAL-ED           Bangladesh     6 months                 3          0       57     241  sstunted         
MAL-ED           Bangladesh     6 months                 3          1        3     241  sstunted         
MAL-ED           Bangladesh     6 months                 4          0       53     241  sstunted         
MAL-ED           Bangladesh     6 months                 4          1        2     241  sstunted         
MAL-ED           Bangladesh     24 months                1          0       66     212  sstunted         
MAL-ED           Bangladesh     24 months                1          1        7     212  sstunted         
MAL-ED           Bangladesh     24 months                2          0       45     212  sstunted         
MAL-ED           Bangladesh     24 months                2          1        6     212  sstunted         
MAL-ED           Bangladesh     24 months                3          0       42     212  sstunted         
MAL-ED           Bangladesh     24 months                3          1        6     212  sstunted         
MAL-ED           Bangladesh     24 months                4          0       31     212  sstunted         
MAL-ED           Bangladesh     24 months                4          1        9     212  sstunted         
MAL-ED           Brazil         Birth                    1          0       17      65  sstunted         
MAL-ED           Brazil         Birth                    1          1        2      65  sstunted         
MAL-ED           Brazil         Birth                    2          0       11      65  sstunted         
MAL-ED           Brazil         Birth                    2          1        1      65  sstunted         
MAL-ED           Brazil         Birth                    3          0       12      65  sstunted         
MAL-ED           Brazil         Birth                    3          1        0      65  sstunted         
MAL-ED           Brazil         Birth                    4          0       22      65  sstunted         
MAL-ED           Brazil         Birth                    4          1        0      65  sstunted         
MAL-ED           Brazil         6 months                 1          0       64     209  sstunted         
MAL-ED           Brazil         6 months                 1          1        0     209  sstunted         
MAL-ED           Brazil         6 months                 2          0       51     209  sstunted         
MAL-ED           Brazil         6 months                 2          1        0     209  sstunted         
MAL-ED           Brazil         6 months                 3          0       44     209  sstunted         
MAL-ED           Brazil         6 months                 3          1        0     209  sstunted         
MAL-ED           Brazil         6 months                 4          0       50     209  sstunted         
MAL-ED           Brazil         6 months                 4          1        0     209  sstunted         
MAL-ED           Brazil         24 months                1          0       64     169  sstunted         
MAL-ED           Brazil         24 months                1          1        1     169  sstunted         
MAL-ED           Brazil         24 months                2          0       30     169  sstunted         
MAL-ED           Brazil         24 months                2          1        0     169  sstunted         
MAL-ED           Brazil         24 months                3          0       43     169  sstunted         
MAL-ED           Brazil         24 months                3          1        0     169  sstunted         
MAL-ED           Brazil         24 months                4          0       31     169  sstunted         
MAL-ED           Brazil         24 months                4          1        0     169  sstunted         
MAL-ED           India          Birth                    1          0       10      47  sstunted         
MAL-ED           India          Birth                    1          1        0      47  sstunted         
MAL-ED           India          Birth                    2          0       10      47  sstunted         
MAL-ED           India          Birth                    2          1        1      47  sstunted         
MAL-ED           India          Birth                    3          0       11      47  sstunted         
MAL-ED           India          Birth                    3          1        1      47  sstunted         
MAL-ED           India          Birth                    4          0       14      47  sstunted         
MAL-ED           India          Birth                    4          1        0      47  sstunted         
MAL-ED           India          6 months                 1          0       60     236  sstunted         
MAL-ED           India          6 months                 1          1        6     236  sstunted         
MAL-ED           India          6 months                 2          0       42     236  sstunted         
MAL-ED           India          6 months                 2          1        0     236  sstunted         
MAL-ED           India          6 months                 3          0       71     236  sstunted         
MAL-ED           India          6 months                 3          1        2     236  sstunted         
MAL-ED           India          6 months                 4          0       54     236  sstunted         
MAL-ED           India          6 months                 4          1        1     236  sstunted         
MAL-ED           India          24 months                1          0       57     227  sstunted         
MAL-ED           India          24 months                1          1        8     227  sstunted         
MAL-ED           India          24 months                2          0       61     227  sstunted         
MAL-ED           India          24 months                2          1       10     227  sstunted         
MAL-ED           India          24 months                3          0       48     227  sstunted         
MAL-ED           India          24 months                3          1        6     227  sstunted         
MAL-ED           India          24 months                4          0       31     227  sstunted         
MAL-ED           India          24 months                4          1        6     227  sstunted         
MAL-ED           Nepal          Birth                    1          0        5      27  sstunted         
MAL-ED           Nepal          Birth                    1          1        0      27  sstunted         
MAL-ED           Nepal          Birth                    2          0        9      27  sstunted         
MAL-ED           Nepal          Birth                    2          1        1      27  sstunted         
MAL-ED           Nepal          Birth                    3          0        7      27  sstunted         
MAL-ED           Nepal          Birth                    3          1        0      27  sstunted         
MAL-ED           Nepal          Birth                    4          0        5      27  sstunted         
MAL-ED           Nepal          Birth                    4          1        0      27  sstunted         
MAL-ED           Nepal          6 months                 1          0       60     236  sstunted         
MAL-ED           Nepal          6 months                 1          1        0     236  sstunted         
MAL-ED           Nepal          6 months                 2          0       59     236  sstunted         
MAL-ED           Nepal          6 months                 2          1        0     236  sstunted         
MAL-ED           Nepal          6 months                 3          0       59     236  sstunted         
MAL-ED           Nepal          6 months                 3          1        0     236  sstunted         
MAL-ED           Nepal          6 months                 4          0       57     236  sstunted         
MAL-ED           Nepal          6 months                 4          1        1     236  sstunted         
MAL-ED           Nepal          24 months                1          0       61     228  sstunted         
MAL-ED           Nepal          24 months                1          1        5     228  sstunted         
MAL-ED           Nepal          24 months                2          0       61     228  sstunted         
MAL-ED           Nepal          24 months                2          1        0     228  sstunted         
MAL-ED           Nepal          24 months                3          0       62     228  sstunted         
MAL-ED           Nepal          24 months                3          1        1     228  sstunted         
MAL-ED           Nepal          24 months                4          0       37     228  sstunted         
MAL-ED           Nepal          24 months                4          1        1     228  sstunted         
MAL-ED           Peru           Birth                    1          0       49     233  sstunted         
MAL-ED           Peru           Birth                    1          1        0     233  sstunted         
MAL-ED           Peru           Birth                    2          0       53     233  sstunted         
MAL-ED           Peru           Birth                    2          1        1     233  sstunted         
MAL-ED           Peru           Birth                    3          0       68     233  sstunted         
MAL-ED           Peru           Birth                    3          1        1     233  sstunted         
MAL-ED           Peru           Birth                    4          0       59     233  sstunted         
MAL-ED           Peru           Birth                    4          1        2     233  sstunted         
MAL-ED           Peru           6 months                 1          0       92     273  sstunted         
MAL-ED           Peru           6 months                 1          1        4     273  sstunted         
MAL-ED           Peru           6 months                 2          0       73     273  sstunted         
MAL-ED           Peru           6 months                 2          1        4     273  sstunted         
MAL-ED           Peru           6 months                 3          0       59     273  sstunted         
MAL-ED           Peru           6 months                 3          1        1     273  sstunted         
MAL-ED           Peru           6 months                 4          0       39     273  sstunted         
MAL-ED           Peru           6 months                 4          1        1     273  sstunted         
MAL-ED           Peru           24 months                1          0       53     201  sstunted         
MAL-ED           Peru           24 months                1          1        2     201  sstunted         
MAL-ED           Peru           24 months                2          0       42     201  sstunted         
MAL-ED           Peru           24 months                2          1        4     201  sstunted         
MAL-ED           Peru           24 months                3          0       50     201  sstunted         
MAL-ED           Peru           24 months                3          1        4     201  sstunted         
MAL-ED           Peru           24 months                4          0       41     201  sstunted         
MAL-ED           Peru           24 months                4          1        5     201  sstunted         
MAL-ED           South Africa   Birth                    1          0       25     123  sstunted         
MAL-ED           South Africa   Birth                    1          1        0     123  sstunted         
MAL-ED           South Africa   Birth                    2          0       23     123  sstunted         
MAL-ED           South Africa   Birth                    2          1        0     123  sstunted         
MAL-ED           South Africa   Birth                    3          0       35     123  sstunted         
MAL-ED           South Africa   Birth                    3          1        0     123  sstunted         
MAL-ED           South Africa   Birth                    4          0       38     123  sstunted         
MAL-ED           South Africa   Birth                    4          1        2     123  sstunted         
MAL-ED           South Africa   6 months                 1          0      103     254  sstunted         
MAL-ED           South Africa   6 months                 1          1        3     254  sstunted         
MAL-ED           South Africa   6 months                 2          0       65     254  sstunted         
MAL-ED           South Africa   6 months                 2          1        2     254  sstunted         
MAL-ED           South Africa   6 months                 3          0       44     254  sstunted         
MAL-ED           South Africa   6 months                 3          1        1     254  sstunted         
MAL-ED           South Africa   6 months                 4          0       36     254  sstunted         
MAL-ED           South Africa   6 months                 4          1        0     254  sstunted         
MAL-ED           South Africa   24 months                1          0       52     238  sstunted         
MAL-ED           South Africa   24 months                1          1        3     238  sstunted         
MAL-ED           South Africa   24 months                2          0       36     238  sstunted         
MAL-ED           South Africa   24 months                2          1        3     238  sstunted         
MAL-ED           South Africa   24 months                3          0       76     238  sstunted         
MAL-ED           South Africa   24 months                3          1       10     238  sstunted         
MAL-ED           South Africa   24 months                4          0       47     238  sstunted         
MAL-ED           South Africa   24 months                4          1       11     238  sstunted         
MAL-ED           Tanzania       Birth                    1          0       14     125  sstunted         
MAL-ED           Tanzania       Birth                    1          1        4     125  sstunted         
MAL-ED           Tanzania       Birth                    2          0       33     125  sstunted         
MAL-ED           Tanzania       Birth                    2          1        2     125  sstunted         
MAL-ED           Tanzania       Birth                    3          0       32     125  sstunted         
MAL-ED           Tanzania       Birth                    3          1        2     125  sstunted         
MAL-ED           Tanzania       Birth                    4          0       36     125  sstunted         
MAL-ED           Tanzania       Birth                    4          1        2     125  sstunted         
MAL-ED           Tanzania       6 months                 1          0       67     247  sstunted         
MAL-ED           Tanzania       6 months                 1          1        4     247  sstunted         
MAL-ED           Tanzania       6 months                 2          0       75     247  sstunted         
MAL-ED           Tanzania       6 months                 2          1        5     247  sstunted         
MAL-ED           Tanzania       6 months                 3          0       50     247  sstunted         
MAL-ED           Tanzania       6 months                 3          1        3     247  sstunted         
MAL-ED           Tanzania       6 months                 4          0       41     247  sstunted         
MAL-ED           Tanzania       6 months                 4          1        2     247  sstunted         
MAL-ED           Tanzania       24 months                1          0       37     214  sstunted         
MAL-ED           Tanzania       24 months                1          1       19     214  sstunted         
MAL-ED           Tanzania       24 months                2          0       45     214  sstunted         
MAL-ED           Tanzania       24 months                2          1       14     214  sstunted         
MAL-ED           Tanzania       24 months                3          0       40     214  sstunted         
MAL-ED           Tanzania       24 months                3          1       19     214  sstunted         
MAL-ED           Tanzania       24 months                4          0       22     214  sstunted         
MAL-ED           Tanzania       24 months                4          1       18     214  sstunted         
PROBIT           Belarus        Birth                    1          0     3779   13890  sstunted         
PROBIT           Belarus        Birth                    1          1        1   13890  sstunted         
PROBIT           Belarus        Birth                    2          0     4147   13890  sstunted         
PROBIT           Belarus        Birth                    2          1        3   13890  sstunted         
PROBIT           Belarus        Birth                    3          0     2714   13890  sstunted         
PROBIT           Belarus        Birth                    3          1        1   13890  sstunted         
PROBIT           Belarus        Birth                    4          0     3245   13890  sstunted         
PROBIT           Belarus        Birth                    4          1        0   13890  sstunted         
PROBIT           Belarus        6 months                 1          0     3563   15761  sstunted         
PROBIT           Belarus        6 months                 1          1       49   15761  sstunted         
PROBIT           Belarus        6 months                 2          0     3073   15761  sstunted         
PROBIT           Belarus        6 months                 2          1       44   15761  sstunted         
PROBIT           Belarus        6 months                 3          0     4447   15761  sstunted         
PROBIT           Belarus        6 months                 3          1       65   15761  sstunted         
PROBIT           Belarus        6 months                 4          0     4435   15761  sstunted         
PROBIT           Belarus        6 months                 4          1       85   15761  sstunted         
PROBIT           Belarus        24 months                1          0     1066    4035  sstunted         
PROBIT           Belarus        24 months                1          1       29    4035  sstunted         
PROBIT           Belarus        24 months                2          0     1131    4035  sstunted         
PROBIT           Belarus        24 months                2          1       16    4035  sstunted         
PROBIT           Belarus        24 months                3          0      838    4035  sstunted         
PROBIT           Belarus        24 months                3          1        7    4035  sstunted         
PROBIT           Belarus        24 months                4          0      935    4035  sstunted         
PROBIT           Belarus        24 months                4          1       13    4035  sstunted         
PROVIDE          Bangladesh     Birth                    1          0       78     539  sstunted         
PROVIDE          Bangladesh     Birth                    1          1        0     539  sstunted         
PROVIDE          Bangladesh     Birth                    2          0      163     539  sstunted         
PROVIDE          Bangladesh     Birth                    2          1        0     539  sstunted         
PROVIDE          Bangladesh     Birth                    3          0       97     539  sstunted         
PROVIDE          Bangladesh     Birth                    3          1        0     539  sstunted         
PROVIDE          Bangladesh     Birth                    4          0      197     539  sstunted         
PROVIDE          Bangladesh     Birth                    4          1        4     539  sstunted         
PROVIDE          Bangladesh     6 months                 1          0      203     604  sstunted         
PROVIDE          Bangladesh     6 months                 1          1        8     604  sstunted         
PROVIDE          Bangladesh     6 months                 2          0      120     604  sstunted         
PROVIDE          Bangladesh     6 months                 2          1        2     604  sstunted         
PROVIDE          Bangladesh     6 months                 3          0      171     604  sstunted         
PROVIDE          Bangladesh     6 months                 3          1        4     604  sstunted         
PROVIDE          Bangladesh     6 months                 4          0       96     604  sstunted         
PROVIDE          Bangladesh     6 months                 4          1        0     604  sstunted         
PROVIDE          Bangladesh     24 months                1          0       89     578  sstunted         
PROVIDE          Bangladesh     24 months                1          1       10     578  sstunted         
PROVIDE          Bangladesh     24 months                2          0      172     578  sstunted         
PROVIDE          Bangladesh     24 months                2          1       14     578  sstunted         
PROVIDE          Bangladesh     24 months                3          0       94     578  sstunted         
PROVIDE          Bangladesh     24 months                3          1       10     578  sstunted         
PROVIDE          Bangladesh     24 months                4          0      171     578  sstunted         
PROVIDE          Bangladesh     24 months                4          1       18     578  sstunted         
ResPak           Pakistan       Birth                    1          0        3      42  sstunted         
ResPak           Pakistan       Birth                    1          1        0      42  sstunted         
ResPak           Pakistan       Birth                    2          0        2      42  sstunted         
ResPak           Pakistan       Birth                    2          1        0      42  sstunted         
ResPak           Pakistan       Birth                    3          0       16      42  sstunted         
ResPak           Pakistan       Birth                    3          1        0      42  sstunted         
ResPak           Pakistan       Birth                    4          0       19      42  sstunted         
ResPak           Pakistan       Birth                    4          1        2      42  sstunted         
ResPak           Pakistan       6 months                 1          0       92     239  sstunted         
ResPak           Pakistan       6 months                 1          1       15     239  sstunted         
ResPak           Pakistan       6 months                 2          0       72     239  sstunted         
ResPak           Pakistan       6 months                 2          1       26     239  sstunted         
ResPak           Pakistan       6 months                 3          0        7     239  sstunted         
ResPak           Pakistan       6 months                 3          1        1     239  sstunted         
ResPak           Pakistan       6 months                 4          0       21     239  sstunted         
ResPak           Pakistan       6 months                 4          1        5     239  sstunted         
SAS-CompFeed     India          Birth                    1          0      253    1252  sstunted         
SAS-CompFeed     India          Birth                    1          1       20    1252  sstunted         
SAS-CompFeed     India          Birth                    2          0      384    1252  sstunted         
SAS-CompFeed     India          Birth                    2          1       24    1252  sstunted         
SAS-CompFeed     India          Birth                    3          0      199    1252  sstunted         
SAS-CompFeed     India          Birth                    3          1       24    1252  sstunted         
SAS-CompFeed     India          Birth                    4          0      325    1252  sstunted         
SAS-CompFeed     India          Birth                    4          1       23    1252  sstunted         
SAS-CompFeed     India          6 months                 1          0      331    1336  sstunted         
SAS-CompFeed     India          6 months                 1          1       44    1336  sstunted         
SAS-CompFeed     India          6 months                 2          0      213    1336  sstunted         
SAS-CompFeed     India          6 months                 2          1       17    1336  sstunted         
SAS-CompFeed     India          6 months                 3          0      401    1336  sstunted         
SAS-CompFeed     India          6 months                 3          1       33    1336  sstunted         
SAS-CompFeed     India          6 months                 4          0      263    1336  sstunted         
SAS-CompFeed     India          6 months                 4          1       34    1336  sstunted         
SAS-FoodSuppl    India          6 months                 1          0      140     380  sstunted         
SAS-FoodSuppl    India          6 months                 1          1       20     380  sstunted         
SAS-FoodSuppl    India          6 months                 2          0       31     380  sstunted         
SAS-FoodSuppl    India          6 months                 2          1        6     380  sstunted         
SAS-FoodSuppl    India          6 months                 3          0       90     380  sstunted         
SAS-FoodSuppl    India          6 months                 3          1       16     380  sstunted         
SAS-FoodSuppl    India          6 months                 4          0       65     380  sstunted         
SAS-FoodSuppl    India          6 months                 4          1       12     380  sstunted         
TanzaniaChild2   Tanzania       6 months                 1          0      511    2029  sstunted         
TanzaniaChild2   Tanzania       6 months                 1          1        5    2029  sstunted         
TanzaniaChild2   Tanzania       6 months                 2          0      558    2029  sstunted         
TanzaniaChild2   Tanzania       6 months                 2          1        6    2029  sstunted         
TanzaniaChild2   Tanzania       6 months                 3          0      464    2029  sstunted         
TanzaniaChild2   Tanzania       6 months                 3          1        3    2029  sstunted         
TanzaniaChild2   Tanzania       6 months                 4          0      477    2029  sstunted         
TanzaniaChild2   Tanzania       6 months                 4          1        5    2029  sstunted         
TanzaniaChild2   Tanzania       24 months                1          0        0       6  sstunted         
TanzaniaChild2   Tanzania       24 months                1          1        0       6  sstunted         
TanzaniaChild2   Tanzania       24 months                2          0        3       6  sstunted         
TanzaniaChild2   Tanzania       24 months                2          1        1       6  sstunted         
TanzaniaChild2   Tanzania       24 months                3          0        0       6  sstunted         
TanzaniaChild2   Tanzania       24 months                3          1        0       6  sstunted         
TanzaniaChild2   Tanzania       24 months                4          0        2       6  sstunted         
TanzaniaChild2   Tanzania       24 months                4          1        0       6  sstunted         
ZVITAMBO         Zimbabwe       Birth                    1          0     3643   13875  sstunted         
ZVITAMBO         Zimbabwe       Birth                    1          1       90   13875  sstunted         
ZVITAMBO         Zimbabwe       Birth                    2          0     3038   13875  sstunted         
ZVITAMBO         Zimbabwe       Birth                    2          1      115   13875  sstunted         
ZVITAMBO         Zimbabwe       Birth                    3          0     3360   13875  sstunted         
ZVITAMBO         Zimbabwe       Birth                    3          1       95   13875  sstunted         
ZVITAMBO         Zimbabwe       Birth                    4          0     3392   13875  sstunted         
ZVITAMBO         Zimbabwe       Birth                    4          1      142   13875  sstunted         
ZVITAMBO         Zimbabwe       6 months                 1          0     2070    8669  sstunted         
ZVITAMBO         Zimbabwe       6 months                 1          1       92    8669  sstunted         
ZVITAMBO         Zimbabwe       6 months                 2          0     2163    8669  sstunted         
ZVITAMBO         Zimbabwe       6 months                 2          1       89    8669  sstunted         
ZVITAMBO         Zimbabwe       6 months                 3          0     1929    8669  sstunted         
ZVITAMBO         Zimbabwe       6 months                 3          1       84    8669  sstunted         
ZVITAMBO         Zimbabwe       6 months                 4          0     2156    8669  sstunted         
ZVITAMBO         Zimbabwe       6 months                 4          1       86    8669  sstunted         
ZVITAMBO         Zimbabwe       24 months                1          0      238    1640  sstunted         
ZVITAMBO         Zimbabwe       24 months                1          1       35    1640  sstunted         
ZVITAMBO         Zimbabwe       24 months                2          0      482    1640  sstunted         
ZVITAMBO         Zimbabwe       24 months                2          1       54    1640  sstunted         
ZVITAMBO         Zimbabwe       24 months                3          0      212    1640  sstunted         
ZVITAMBO         Zimbabwe       24 months                3          1       24    1640  sstunted         
ZVITAMBO         Zimbabwe       24 months                4          0      530    1640  sstunted         
ZVITAMBO         Zimbabwe       24 months                4          1       65    1640  sstunted         


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

* studyid: CMC-V-BCS-2002, country: India, agecat: Birth
* studyid: CMC-V-BCS-2002, country: India, agecat: 6 months
* studyid: CMIN, country: Bangladesh, agecat: Birth
* studyid: CMIN, country: Bangladesh, agecat: 6 months
* studyid: CONTENT, country: Peru, agecat: Birth
* studyid: CONTENT, country: Peru, agecat: 6 months
* studyid: CONTENT, country: Peru, agecat: 24 months
* studyid: EE, country: Pakistan, agecat: Birth
* studyid: EE, country: Pakistan, agecat: 6 months
* studyid: EE, country: Pakistan, agecat: 24 months
* studyid: GMS-Nepal, country: Nepal, agecat: Birth
* studyid: GMS-Nepal, country: Nepal, agecat: 6 months
* studyid: GMS-Nepal, country: Nepal, agecat: 24 months
* studyid: Guatemala BSC, country: Guatemala, agecat: 6 months
* studyid: IRC, country: India, agecat: Birth
* studyid: IRC, country: India, agecat: 6 months
* studyid: Keneba, country: Gambia, agecat: Birth
* studyid: MAL-ED, country: Bangladesh, agecat: Birth
* studyid: MAL-ED, country: Bangladesh, agecat: 6 months
* studyid: MAL-ED, country: Brazil, agecat: Birth
* studyid: MAL-ED, country: Brazil, agecat: 6 months
* studyid: MAL-ED, country: Brazil, agecat: 24 months
* studyid: MAL-ED, country: India, agecat: Birth
* studyid: MAL-ED, country: India, agecat: 6 months
* studyid: MAL-ED, country: Nepal, agecat: Birth
* studyid: MAL-ED, country: Nepal, agecat: 6 months
* studyid: MAL-ED, country: Nepal, agecat: 24 months
* studyid: MAL-ED, country: Peru, agecat: Birth
* studyid: MAL-ED, country: Peru, agecat: 6 months
* studyid: MAL-ED, country: Peru, agecat: 24 months
* studyid: MAL-ED, country: South Africa, agecat: Birth
* studyid: MAL-ED, country: South Africa, agecat: 6 months
* studyid: MAL-ED, country: South Africa, agecat: 24 months
* studyid: MAL-ED, country: Tanzania, agecat: Birth
* studyid: MAL-ED, country: Tanzania, agecat: 6 months
* studyid: PROBIT, country: Belarus, agecat: Birth
* studyid: PROVIDE, country: Bangladesh, agecat: Birth
* studyid: PROVIDE, country: Bangladesh, agecat: 6 months
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: 6 months
* studyid: TanzaniaChild2, country: Tanzania, agecat: 6 months
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




# Results Detail

## Results Plots
![](/tmp/9e852971-6362-4094-949f-d34aee7e96e6/fdfd7f11-435a-47f1-9a58-75411bd0ce0d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9e852971-6362-4094-949f-d34aee7e96e6/fdfd7f11-435a-47f1-9a58-75411bd0ce0d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9e852971-6362-4094-949f-d34aee7e96e6/fdfd7f11-435a-47f1-9a58-75411bd0ce0d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9e852971-6362-4094-949f-d34aee7e96e6/fdfd7f11-435a-47f1-9a58-75411bd0ce0d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country      agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   India        24 months   1                    NA                0.3762376    0.2816326   0.4708426
CMC-V-BCS-2002   India        24 months   2                    NA                0.3636364    0.2687502   0.4585225
CMC-V-BCS-2002   India        24 months   3                    NA                0.3189655    0.2340354   0.4038956
CMC-V-BCS-2002   India        24 months   4                    NA                0.2545455    0.1392675   0.3698234
CMIN             Bangladesh   24 months   1                    NA                0.2948718    0.1934688   0.3962747
CMIN             Bangladesh   24 months   2                    NA                0.3043478    0.1955541   0.4131416
CMIN             Bangladesh   24 months   3                    NA                0.1724138    0.0749988   0.2698288
CMIN             Bangladesh   24 months   4                    NA                0.3783784    0.2217853   0.5349715
IRC              India        24 months   1                    NA                0.1315789    0.0694512   0.1937067
IRC              India        24 months   2                    NA                0.0840336    0.0341253   0.1339419
IRC              India        24 months   3                    NA                0.1176471    0.0490695   0.1862246
IRC              India        24 months   4                    NA                0.0659341    0.0148833   0.1169849
JiVitA-3         Bangladesh   Birth       1                    NA                0.1237035    0.1152388   0.1321682
JiVitA-3         Bangladesh   Birth       2                    NA                0.1166225    0.1085493   0.1246958
JiVitA-3         Bangladesh   Birth       3                    NA                0.0832614    0.0742528   0.0922701
JiVitA-3         Bangladesh   Birth       4                    NA                0.1013216    0.0910013   0.1116419
JiVitA-3         Bangladesh   6 months    1                    NA                0.0545113    0.0471668   0.0618558
JiVitA-3         Bangladesh   6 months    2                    NA                0.0607750    0.0526590   0.0688911
JiVitA-3         Bangladesh   6 months    3                    NA                0.0652757    0.0582298   0.0723215
JiVitA-3         Bangladesh   6 months    4                    NA                0.0603368    0.0525409   0.0681326
JiVitA-3         Bangladesh   24 months   1                    NA                0.1850724    0.1686454   0.2014993
JiVitA-3         Bangladesh   24 months   2                    NA                0.1498658    0.1353807   0.1643510
JiVitA-3         Bangladesh   24 months   3                    NA                0.1417275    0.1235174   0.1599376
JiVitA-3         Bangladesh   24 months   4                    NA                0.1347032    0.1173188   0.1520876
JiVitA-4         Bangladesh   Birth       1                    NA                0.0720721    0.0432026   0.1009416
JiVitA-4         Bangladesh   Birth       2                    NA                0.0462963    0.0217698   0.0708228
JiVitA-4         Bangladesh   Birth       3                    NA                0.0990854    0.0805090   0.1176617
JiVitA-4         Bangladesh   Birth       4                    NA                0.0717256    0.0503261   0.0931251
JiVitA-4         Bangladesh   6 months    1                    NA                0.0544588    0.0419608   0.0669568
JiVitA-4         Bangladesh   6 months    2                    NA                0.0600842    0.0505612   0.0696072
JiVitA-4         Bangladesh   6 months    3                    NA                0.0414013    0.0269950   0.0558076
JiVitA-4         Bangladesh   6 months    4                    NA                0.0661157    0.0169470   0.1152844
JiVitA-4         Bangladesh   24 months   1                    NA                0.1325648    0.1064051   0.1587245
JiVitA-4         Bangladesh   24 months   2                    NA                0.0656304    0.0467638   0.0844970
JiVitA-4         Bangladesh   24 months   3                    NA                0.1086538    0.0936853   0.1236224
JiVitA-4         Bangladesh   24 months   4                    NA                0.0693352    0.0530657   0.0856048
Keneba           Gambia       6 months    1                    NA                0.0431034    0.0246201   0.0615868
Keneba           Gambia       6 months    2                    NA                0.0326797    0.0164104   0.0489491
Keneba           Gambia       6 months    3                    NA                0.0264026    0.0136345   0.0391708
Keneba           Gambia       6 months    4                    NA                0.0339286    0.0189302   0.0489270
Keneba           Gambia       24 months   1                    NA                0.0938124    0.0682739   0.1193508
Keneba           Gambia       24 months   2                    NA                0.0829960    0.0586613   0.1073306
Keneba           Gambia       24 months   3                    NA                0.0670103    0.0421236   0.0918970
Keneba           Gambia       24 months   4                    NA                0.0760234    0.0479261   0.1041207
LCNI-5           Malawi       6 months    1                    NA                0.0735294    0.0376919   0.1093670
LCNI-5           Malawi       6 months    2                    NA                0.1034483    0.0700087   0.1368879
LCNI-5           Malawi       6 months    3                    NA                0.0884956    0.0360984   0.1408928
LCNI-5           Malawi       6 months    4                    NA                0.0640394    0.0303408   0.0977380
LCNI-5           Malawi       24 months   1                    NA                0.0945946    0.0474049   0.1417843
LCNI-5           Malawi       24 months   2                    NA                0.0987654    0.0337371   0.1637937
LCNI-5           Malawi       24 months   3                    NA                0.1363636    0.0909771   0.1817502
LCNI-5           Malawi       24 months   4                    NA                0.1384615    0.0790387   0.1978844
MAL-ED           Bangladesh   24 months   1                    NA                0.0958904    0.0281869   0.1635940
MAL-ED           Bangladesh   24 months   2                    NA                0.1176471    0.0290128   0.2062813
MAL-ED           Bangladesh   24 months   3                    NA                0.1250000    0.0312194   0.2187806
MAL-ED           Bangladesh   24 months   4                    NA                0.2250000    0.0952860   0.3547140
MAL-ED           India        24 months   1                    NA                0.1230769    0.0430347   0.2031192
MAL-ED           India        24 months   2                    NA                0.1408451    0.0597519   0.2219382
MAL-ED           India        24 months   3                    NA                0.1111111    0.0271047   0.1951175
MAL-ED           India        24 months   4                    NA                0.1621622    0.0431310   0.2811933
MAL-ED           Tanzania     24 months   1                    NA                0.3392857    0.2149887   0.4635828
MAL-ED           Tanzania     24 months   2                    NA                0.2372881    0.1284810   0.3460953
MAL-ED           Tanzania     24 months   3                    NA                0.3220339    0.2025267   0.4415411
MAL-ED           Tanzania     24 months   4                    NA                0.4500000    0.2954664   0.6045336
PROBIT           Belarus      6 months    1                    NA                0.0135659    0.0062607   0.0208711
PROBIT           Belarus      6 months    2                    NA                0.0141161    0.0079421   0.0202901
PROBIT           Belarus      6 months    3                    NA                0.0144060    0.0079183   0.0208938
PROBIT           Belarus      6 months    4                    NA                0.0188053    0.0114648   0.0261458
PROBIT           Belarus      24 months   1                    NA                0.0264840    0.0081043   0.0448637
PROBIT           Belarus      24 months   2                    NA                0.0139494    0.0020652   0.0258336
PROBIT           Belarus      24 months   3                    NA                0.0082840   -0.0088651   0.0254332
PROBIT           Belarus      24 months   4                    NA                0.0137131   -0.0097015   0.0371276
PROVIDE          Bangladesh   24 months   1                    NA                0.1010101    0.0415992   0.1604210
PROVIDE          Bangladesh   24 months   2                    NA                0.0752688    0.0373213   0.1132163
PROVIDE          Bangladesh   24 months   3                    NA                0.0961538    0.0394467   0.1528610
PROVIDE          Bangladesh   24 months   4                    NA                0.0952381    0.0533524   0.1371238
SAS-CompFeed     India        Birth       1                    NA                0.0732601    0.0360460   0.1104741
SAS-CompFeed     India        Birth       2                    NA                0.0588235    0.0256265   0.0920206
SAS-CompFeed     India        Birth       3                    NA                0.1076233    0.0353879   0.1798587
SAS-CompFeed     India        Birth       4                    NA                0.0660920    0.0357169   0.0964670
SAS-CompFeed     India        6 months    1                    NA                0.1173333    0.0766185   0.1580482
SAS-CompFeed     India        6 months    2                    NA                0.0739130    0.0496116   0.0982145
SAS-CompFeed     India        6 months    3                    NA                0.0760369    0.0467941   0.1052796
SAS-CompFeed     India        6 months    4                    NA                0.1144781    0.0885942   0.1403620
SAS-FoodSuppl    India        6 months    1                    NA                0.1250000    0.0736880   0.1763120
SAS-FoodSuppl    India        6 months    2                    NA                0.1621622    0.0432369   0.2810874
SAS-FoodSuppl    India        6 months    3                    NA                0.1509434    0.0827028   0.2191840
SAS-FoodSuppl    India        6 months    4                    NA                0.1558442    0.0747235   0.2369648
ZVITAMBO         Zimbabwe     Birth       1                    NA                0.0241093    0.0191886   0.0290300
ZVITAMBO         Zimbabwe     Birth       2                    NA                0.0364732    0.0299295   0.0430169
ZVITAMBO         Zimbabwe     Birth       3                    NA                0.0274964    0.0220435   0.0329492
ZVITAMBO         Zimbabwe     Birth       4                    NA                0.0401811    0.0337062   0.0466560
ZVITAMBO         Zimbabwe     6 months    1                    NA                0.0425532    0.0340444   0.0510620
ZVITAMBO         Zimbabwe     6 months    2                    NA                0.0395204    0.0314732   0.0475676
ZVITAMBO         Zimbabwe     6 months    3                    NA                0.0417288    0.0329928   0.0504648
ZVITAMBO         Zimbabwe     6 months    4                    NA                0.0383586    0.0304081   0.0463091
ZVITAMBO         Zimbabwe     24 months   1                    NA                0.1282051    0.0885354   0.1678748
ZVITAMBO         Zimbabwe     24 months   2                    NA                0.1007463    0.0752572   0.1262353
ZVITAMBO         Zimbabwe     24 months   3                    NA                0.1016949    0.0631217   0.1402682
ZVITAMBO         Zimbabwe     24 months   4                    NA                0.1092437    0.0841711   0.1343163


### Parameter: E(Y)


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        24 months   NA                   NA                0.3369272   0.2887662   0.3850883
CMIN             Bangladesh   24 months   NA                   NA                0.2809917   0.2242434   0.3377401
IRC              India        24 months   NA                   NA                0.1002445   0.0711031   0.1293859
JiVitA-3         Bangladesh   Birth       NA                   NA                0.1090180   0.1044666   0.1135695
JiVitA-3         Bangladesh   6 months    NA                   NA                0.0606746   0.0568229   0.0645262
JiVitA-3         Bangladesh   24 months   NA                   NA                0.1559495   0.1472011   0.1646978
JiVitA-4         Bangladesh   Birth       NA                   NA                0.0825363   0.0708486   0.0942240
JiVitA-4         Bangladesh   6 months    NA                   NA                0.0560960   0.0493335   0.0628586
JiVitA-4         Bangladesh   24 months   NA                   NA                0.0953283   0.0857752   0.1048814
Keneba           Gambia       6 months    NA                   NA                0.0335089   0.0257898   0.0412279
Keneba           Gambia       24 months   NA                   NA                0.0811594   0.0682689   0.0940499
LCNI-5           Malawi       6 months    NA                   NA                0.0846246   0.0657805   0.1034686
LCNI-5           Malawi       24 months   NA                   NA                0.1208981   0.0943206   0.1474756
MAL-ED           Bangladesh   24 months   NA                   NA                0.1320755   0.0863920   0.1777589
MAL-ED           India        24 months   NA                   NA                0.1321586   0.0880054   0.1763117
MAL-ED           Tanzania     24 months   NA                   NA                0.3271028   0.2640978   0.3901078
PROBIT           Belarus      6 months    NA                   NA                0.0154178   0.0100323   0.0208033
PROBIT           Belarus      24 months   NA                   NA                0.0161090   0.0034156   0.0288025
PROVIDE          Bangladesh   24 months   NA                   NA                0.0899654   0.0666186   0.1133122
SAS-CompFeed     India        Birth       NA                   NA                0.0726837   0.0523147   0.0930527
SAS-CompFeed     India        6 months    NA                   NA                0.0958084   0.0774939   0.1141229
SAS-FoodSuppl    India        6 months    NA                   NA                0.1421053   0.1069532   0.1772573
ZVITAMBO         Zimbabwe     Birth       NA                   NA                0.0318559   0.0289336   0.0347781
ZVITAMBO         Zimbabwe     6 months    NA                   NA                0.0404891   0.0363397   0.0446385
ZVITAMBO         Zimbabwe     24 months   NA                   NA                0.1085366   0.0934775   0.1235957


### Parameter: RR


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMC-V-BCS-2002   India        24 months   2                    1                 0.9665072   0.6727099   1.3886166
CMC-V-BCS-2002   India        24 months   3                    1                 0.8477768   0.5877995   1.2227391
CMC-V-BCS-2002   India        24 months   4                    1                 0.6765550   0.4030306   1.1357119
CMIN             Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMIN             Bangladesh   24 months   2                    1                 1.0321361   0.6285158   1.6949533
CMIN             Bangladesh   24 months   3                    1                 0.5847076   0.3017745   1.1329089
CMIN             Bangladesh   24 months   4                    1                 1.2831962   0.7492150   2.1977570
IRC              India        24 months   1                    1                 1.0000000   1.0000000   1.0000000
IRC              India        24 months   2                    1                 0.6386555   0.2990570   1.3638897
IRC              India        24 months   3                    1                 0.8941176   0.4222870   1.8931352
IRC              India        24 months   4                    1                 0.5010989   0.2023337   1.2410195
JiVitA-3         Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   Birth       2                    1                 0.9427588   0.8586242   1.0351376
JiVitA-3         Bangladesh   Birth       3                    1                 0.6730727   0.5937963   0.7629331
JiVitA-3         Bangladesh   Birth       4                    1                 0.8190682   0.7236642   0.9270498
JiVitA-3         Bangladesh   6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   6 months    2                    1                 1.1149073   0.9243825   1.3447012
JiVitA-3         Bangladesh   6 months    3                    1                 1.1974706   1.0080955   1.4224205
JiVitA-3         Bangladesh   6 months    4                    1                 1.1068675   0.9186408   1.3336613
JiVitA-3         Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   24 months   2                    1                 0.8097690   0.7142614   0.9180473
JiVitA-3         Bangladesh   24 months   3                    1                 0.7657951   0.6574082   0.8920517
JiVitA-3         Bangladesh   24 months   4                    1                 0.7278407   0.6234524   0.8497075
JiVitA-4         Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   Birth       2                    1                 0.6423611   0.3406403   1.2113299
JiVitA-4         Bangladesh   Birth       3                    1                 1.3748095   0.8804568   2.1467278
JiVitA-4         Bangladesh   Birth       4                    1                 0.9951923   0.6004630   1.6494068
JiVitA-4         Bangladesh   6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   6 months    2                    1                 1.1032960   0.8370163   1.4542873
JiVitA-4         Bangladesh   6 months    3                    1                 0.7602310   0.4961806   1.1647998
JiVitA-4         Bangladesh   6 months    4                    1                 1.2140496   0.5573983   2.6442787
JiVitA-4         Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   24 months   2                    1                 0.4950815   0.3508628   0.6985798
JiVitA-4         Bangladesh   24 months   3                    1                 0.8196279   0.6486654   1.0356494
JiVitA-4         Bangladesh   24 months   4                    1                 0.5230289   0.3854688   0.7096791
Keneba           Gambia       6 months    1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia       6 months    2                    1                 0.7581699   0.3930147   1.4625959
Keneba           Gambia       6 months    3                    1                 0.6125413   0.3209494   1.1690527
Keneba           Gambia       6 months    4                    1                 0.7871429   0.4251909   1.4572135
Keneba           Gambia       24 months   1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia       24 months   2                    1                 0.8847015   0.5929766   1.3199454
Keneba           Gambia       24 months   3                    1                 0.7143014   0.4507131   1.1320426
Keneba           Gambia       24 months   4                    1                 0.8103770   0.5120769   1.2824459
LCNI-5           Malawi       6 months    1                    1                 1.0000000   1.0000000   1.0000000
LCNI-5           Malawi       6 months    2                    1                 1.4068966   0.7839143   2.5249671
LCNI-5           Malawi       6 months    3                    1                 1.2035398   0.5589912   2.5912898
LCNI-5           Malawi       6 months    4                    1                 0.8709360   0.4250958   1.7843729
LCNI-5           Malawi       24 months   1                    1                 1.0000000   1.0000000   1.0000000
LCNI-5           Malawi       24 months   2                    1                 1.0440917   0.4570743   2.3850115
LCNI-5           Malawi       24 months   3                    1                 1.4415584   0.7913797   2.6259084
LCNI-5           Malawi       24 months   4                    1                 1.4637362   0.7580010   2.8265448
MAL-ED           Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh   24 months   2                    1                 1.2268907   0.4369043   3.4452874
MAL-ED           Bangladesh   24 months   3                    1                 1.3035714   0.4652765   3.6522335
MAL-ED           Bangladesh   24 months   4                    1                 2.3464285   0.9430598   5.8381519
MAL-ED           India        24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           India        24 months   2                    1                 1.1443662   0.4801108   2.7276495
MAL-ED           India        24 months   3                    1                 0.9027778   0.3330176   2.4473410
MAL-ED           India        24 months   4                    1                 1.3175676   0.4941600   3.5130006
MAL-ED           Tanzania     24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania     24 months   2                    1                 0.6993756   0.3888790   1.2577850
MAL-ED           Tanzania     24 months   3                    1                 0.9491525   0.5634635   1.5988446
MAL-ED           Tanzania     24 months   4                    1                 1.3263158   0.8027346   2.1914012
PROBIT           Belarus      6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      6 months    2                    1                 1.0405610   0.6636563   1.6315179
PROBIT           Belarus      6 months    3                    1                 1.0619301   0.6270341   1.7984597
PROBIT           Belarus      6 months    4                    1                 1.3862200   0.8913239   2.1559007
PROBIT           Belarus      24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      24 months   2                    1                 0.5267114   0.1862628   1.4894268
PROBIT           Belarus      24 months   3                    1                 0.3127933   0.0397192   2.4632815
PROBIT           Belarus      24 months   4                    1                 0.5177870   0.0989070   2.7106625
PROVIDE          Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh   24 months   2                    1                 0.7451613   0.3434109   1.6169126
PROVIDE          Bangladesh   24 months   3                    1                 0.9519231   0.4138759   2.1894424
PROVIDE          Bangladesh   24 months   4                    1                 0.9428571   0.4523696   1.9651620
SAS-CompFeed     India        Birth       1                    1                 1.0000000   1.0000000   1.0000000
SAS-CompFeed     India        Birth       2                    1                 0.8029412   0.3851949   1.6737360
SAS-CompFeed     India        Birth       3                    1                 1.4690583   0.7255009   2.9746789
SAS-CompFeed     India        Birth       4                    1                 0.9021552   0.4333698   1.8780359
SAS-CompFeed     India        6 months    1                    1                 1.0000000   1.0000000   1.0000000
SAS-CompFeed     India        6 months    2                    1                 0.6299407   0.4173414   0.9508410
SAS-CompFeed     India        6 months    3                    1                 0.6480415   0.4087774   1.0273506
SAS-CompFeed     India        6 months    4                    1                 0.9756657   0.6470893   1.4710855
SAS-FoodSuppl    India        6 months    1                    1                 1.0000000   1.0000000   1.0000000
SAS-FoodSuppl    India        6 months    2                    1                 1.2972973   0.5598095   3.0063448
SAS-FoodSuppl    India        6 months    3                    1                 1.2075472   0.6556940   2.2238577
SAS-FoodSuppl    India        6 months    4                    1                 1.2467532   0.6425121   2.4192440
ZVITAMBO         Zimbabwe     Birth       1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe     Birth       2                    1                 1.5128273   1.1528490   1.9852091
ZVITAMBO         Zimbabwe     Birth       3                    1                 1.1404888   0.8580265   1.5159377
ZVITAMBO         Zimbabwe     Birth       4                    1                 1.6666226   1.2849922   2.1615937
ZVITAMBO         Zimbabwe     6 months    1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe     6 months    2                    1                 0.9287300   0.6981498   1.2354647
ZVITAMBO         Zimbabwe     6 months    3                    1                 0.9806259   0.7341325   1.3098824
ZVITAMBO         Zimbabwe     6 months    4                    1                 0.9014273   0.6758574   1.2022820
ZVITAMBO         Zimbabwe     24 months   1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe     24 months   2                    1                 0.7858209   0.5269140   1.1719455
ZVITAMBO         Zimbabwe     24 months   3                    1                 0.7932203   0.4861888   1.2941444
ZVITAMBO         Zimbabwe     24 months   4                    1                 0.8521008   0.5796671   1.2525739


### Parameter: PAR


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        24 months   1                    NA                -0.0393104   -0.1192885    0.0406677
CMIN             Bangladesh   24 months   1                    NA                -0.0138801   -0.0967927    0.0690326
IRC              India        24 months   1                    NA                -0.0313344   -0.0819049    0.0192360
JiVitA-3         Bangladesh   Birth       1                    NA                -0.0146854   -0.0214927   -0.0078781
JiVitA-3         Bangladesh   6 months    1                    NA                 0.0061633   -0.0004686    0.0127952
JiVitA-3         Bangladesh   24 months   1                    NA                -0.0291229   -0.0418358   -0.0164099
JiVitA-4         Bangladesh   Birth       1                    NA                 0.0104642   -0.0175107    0.0384392
JiVitA-4         Bangladesh   6 months    1                    NA                 0.0016372   -0.0087008    0.0119753
JiVitA-4         Bangladesh   24 months   1                    NA                -0.0372366   -0.0607066   -0.0137666
Keneba           Gambia       6 months    1                    NA                -0.0095946   -0.0253887    0.0061995
Keneba           Gambia       24 months   1                    NA                -0.0126530   -0.0336178    0.0083119
LCNI-5           Malawi       6 months    1                    NA                 0.0110951   -0.0207618    0.0429521
LCNI-5           Malawi       24 months   1                    NA                 0.0263035   -0.0160615    0.0686685
MAL-ED           Bangladesh   24 months   1                    NA                 0.0361851   -0.0230940    0.0954641
MAL-ED           India        24 months   1                    NA                 0.0090817   -0.0593814    0.0775447
MAL-ED           Tanzania     24 months   1                    NA                -0.0121829   -0.1186420    0.0942761
PROBIT           Belarus      6 months    1                    NA                 0.0018519   -0.0022996    0.0060035
PROBIT           Belarus      24 months   1                    NA                -0.0103750   -0.0255691    0.0048191
PROVIDE          Bangladesh   24 months   1                    NA                -0.0110447   -0.0645761    0.0424867
SAS-CompFeed     India        Birth       1                    NA                -0.0005764   -0.0317676    0.0306149
SAS-CompFeed     India        6 months    1                    NA                -0.0215250   -0.0500183    0.0069684
SAS-FoodSuppl    India        6 months    1                    NA                 0.0171053   -0.0235321    0.0577426
ZVITAMBO         Zimbabwe     Birth       1                    NA                 0.0077466    0.0033054    0.0121877
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0020641   -0.0093788    0.0052506
ZVITAMBO         Zimbabwe     24 months   1                    NA                -0.0196685   -0.0553972    0.0160602


### Parameter: PAF


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        24 months   1                    NA                -0.1166733   -0.3812625    0.0972323
CMIN             Bangladesh   24 months   1                    NA                -0.0493967   -0.3900901    0.2077971
IRC              India        24 months   1                    NA                -0.3125802   -0.9191714    0.1022861
JiVitA-3         Bangladesh   Birth       1                    NA                -0.1347065   -0.1987251   -0.0741069
JiVitA-3         Bangladesh   6 months    1                    NA                 0.1015793   -0.0141697    0.2041177
JiVitA-3         Bangladesh   24 months   1                    NA                -0.1867455   -0.2702482   -0.1087321
JiVitA-4         Bangladesh   Birth       1                    NA                 0.1267834   -0.2845685    0.4064099
JiVitA-4         Bangladesh   6 months    1                    NA                 0.0291862   -0.1739089    0.1971444
JiVitA-4         Bangladesh   24 months   1                    NA                -0.3906140   -0.6592693   -0.1654571
Keneba           Gambia       6 months    1                    NA                -0.2863300   -0.8495341    0.1053720
Keneba           Gambia       24 months   1                    NA                -0.1559025   -0.4441769    0.0748290
LCNI-5           Malawi       6 months    1                    NA                 0.1311102   -0.3385954    0.4359987
LCNI-5           Malawi       24 months   1                    NA                 0.2175675   -0.2204569    0.4983841
MAL-ED           Bangladesh   24 months   1                    NA                 0.2739726   -0.3326887    0.6044719
MAL-ED           India        24 months   1                    NA                 0.0687179   -0.6236519    0.4658422
MAL-ED           Tanzania     24 months   1                    NA                -0.0372449   -0.4195540    0.2421021
PROBIT           Belarus      6 months    1                    NA                 0.1201152   -0.2082543    0.3592431
PROBIT           Belarus      24 months   1                    NA                -0.6440464   -2.2731660    0.1742281
PROVIDE          Bangladesh   24 months   1                    NA                -0.1227661   -0.9063009    0.3387173
SAS-CompFeed     India        Birth       1                    NA                -0.0079298   -0.5429098    0.3415542
SAS-CompFeed     India        6 months    1                    NA                -0.2246667   -0.5379087    0.0247740
SAS-FoodSuppl    India        6 months    1                    NA                 0.1203704   -0.2160319    0.3637105
ZVITAMBO         Zimbabwe     Birth       1                    NA                 0.2431754    0.0921440    0.3690811
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0509790   -0.2480123    0.1149472
ZVITAMBO         Zimbabwe     24 months   1                    NA                -0.1812158   -0.5599416    0.1055622

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
CMC-V-BCS-2002   India          24 months                1          0       52     333  sstunted         
CMC-V-BCS-2002   India          24 months                1          1       35     333  sstunted         
CMC-V-BCS-2002   India          24 months                2          0       49     333  sstunted         
CMC-V-BCS-2002   India          24 months                2          1       41     333  sstunted         
CMC-V-BCS-2002   India          24 months                3          0       63     333  sstunted         
CMC-V-BCS-2002   India          24 months                3          1       31     333  sstunted         
CMC-V-BCS-2002   India          24 months                4          0       39     333  sstunted         
CMC-V-BCS-2002   India          24 months                4          1       23     333  sstunted         
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
CMIN             Bangladesh     24 months                1          0       50     224  sstunted         
CMIN             Bangladesh     24 months                1          1       22     224  sstunted         
CMIN             Bangladesh     24 months                2          0       42     224  sstunted         
CMIN             Bangladesh     24 months                2          1       22     224  sstunted         
CMIN             Bangladesh     24 months                3          0       43     224  sstunted         
CMIN             Bangladesh     24 months                3          1        9     224  sstunted         
CMIN             Bangladesh     24 months                4          0       23     224  sstunted         
CMIN             Bangladesh     24 months                4          1       13     224  sstunted         
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
EE               Pakistan       24 months                1          0        3     158  sstunted         
EE               Pakistan       24 months                1          1        4     158  sstunted         
EE               Pakistan       24 months                2          0       97     158  sstunted         
EE               Pakistan       24 months                2          1       54     158  sstunted         
EE               Pakistan       24 months                3          0        0     158  sstunted         
EE               Pakistan       24 months                3          1        0     158  sstunted         
EE               Pakistan       24 months                4          0        0     158  sstunted         
EE               Pakistan       24 months                4          1        0     158  sstunted         
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
GMS-Nepal        Nepal          24 months                1          0        0     323  sstunted         
GMS-Nepal        Nepal          24 months                1          1        0     323  sstunted         
GMS-Nepal        Nepal          24 months                2          0        0     323  sstunted         
GMS-Nepal        Nepal          24 months                2          1        0     323  sstunted         
GMS-Nepal        Nepal          24 months                3          0       30     323  sstunted         
GMS-Nepal        Nepal          24 months                3          1        4     323  sstunted         
GMS-Nepal        Nepal          24 months                4          0      248     323  sstunted         
GMS-Nepal        Nepal          24 months                4          1       41     323  sstunted         
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
IRC              India          24 months                1          0       73     347  sstunted         
IRC              India          24 months                1          1       14     347  sstunted         
IRC              India          24 months                2          0       97     347  sstunted         
IRC              India          24 months                2          1       11     347  sstunted         
IRC              India          24 months                3          0       73     347  sstunted         
IRC              India          24 months                3          1        8     347  sstunted         
IRC              India          24 months                4          0       64     347  sstunted         
IRC              India          24 months                4          1        7     347  sstunted         
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
JiVitA-3         Bangladesh     24 months                1          0        0       3  sstunted         
JiVitA-3         Bangladesh     24 months                1          1        0       3  sstunted         
JiVitA-3         Bangladesh     24 months                2          0        0       3  sstunted         
JiVitA-3         Bangladesh     24 months                2          1        0       3  sstunted         
JiVitA-3         Bangladesh     24 months                3          0        0       3  sstunted         
JiVitA-3         Bangladesh     24 months                3          1        0       3  sstunted         
JiVitA-3         Bangladesh     24 months                4          0        3       3  sstunted         
JiVitA-3         Bangladesh     24 months                4          1        0       3  sstunted         
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
JiVitA-4         Bangladesh     24 months                1          0      172    1274  sstunted         
JiVitA-4         Bangladesh     24 months                1          1       33    1274  sstunted         
JiVitA-4         Bangladesh     24 months                2          0      118    1274  sstunted         
JiVitA-4         Bangladesh     24 months                2          1       12    1274  sstunted         
JiVitA-4         Bangladesh     24 months                3          0      449    1274  sstunted         
JiVitA-4         Bangladesh     24 months                3          1       71    1274  sstunted         
JiVitA-4         Bangladesh     24 months                4          0      387    1274  sstunted         
JiVitA-4         Bangladesh     24 months                4          1       32    1274  sstunted         
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
Keneba           Gambia         24 months                1          0      162     706  sstunted         
Keneba           Gambia         24 months                1          1       16     706  sstunted         
Keneba           Gambia         24 months                2          0      198     706  sstunted         
Keneba           Gambia         24 months                2          1       18     706  sstunted         
Keneba           Gambia         24 months                3          0      116     706  sstunted         
Keneba           Gambia         24 months                3          1       14     706  sstunted         
Keneba           Gambia         24 months                4          0      164     706  sstunted         
Keneba           Gambia         24 months                4          1       18     706  sstunted         
LCNI-5           Malawi         6 months                 1          0      189     839  sstunted         
LCNI-5           Malawi         6 months                 1          1       15     839  sstunted         
LCNI-5           Malawi         6 months                 2          0      286     839  sstunted         
LCNI-5           Malawi         6 months                 2          1       33     839  sstunted         
LCNI-5           Malawi         6 months                 3          0      103     839  sstunted         
LCNI-5           Malawi         6 months                 3          1       10     839  sstunted         
LCNI-5           Malawi         6 months                 4          0      190     839  sstunted         
LCNI-5           Malawi         6 months                 4          1       13     839  sstunted         
LCNI-5           Malawi         24 months                1          0       47     214  sstunted         
LCNI-5           Malawi         24 months                1          1        4     214  sstunted         
LCNI-5           Malawi         24 months                2          0       12     214  sstunted         
LCNI-5           Malawi         24 months                2          1        2     214  sstunted         
LCNI-5           Malawi         24 months                3          0       86     214  sstunted         
LCNI-5           Malawi         24 months                3          1       17     214  sstunted         
LCNI-5           Malawi         24 months                4          0       39     214  sstunted         
LCNI-5           Malawi         24 months                4          1        7     214  sstunted         
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
MAL-ED           Bangladesh     24 months                1          0       43     187  sstunted         
MAL-ED           Bangladesh     24 months                1          1        6     187  sstunted         
MAL-ED           Bangladesh     24 months                2          0       44     187  sstunted         
MAL-ED           Bangladesh     24 months                2          1        7     187  sstunted         
MAL-ED           Bangladesh     24 months                3          0       35     187  sstunted         
MAL-ED           Bangladesh     24 months                3          1        8     187  sstunted         
MAL-ED           Bangladesh     24 months                4          0       34     187  sstunted         
MAL-ED           Bangladesh     24 months                4          1       10     187  sstunted         
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
MAL-ED           Brazil         24 months                1          0       54     167  sstunted         
MAL-ED           Brazil         24 months                1          1        0     167  sstunted         
MAL-ED           Brazil         24 months                2          0       30     167  sstunted         
MAL-ED           Brazil         24 months                2          1        2     167  sstunted         
MAL-ED           Brazil         24 months                3          0       43     167  sstunted         
MAL-ED           Brazil         24 months                3          1        0     167  sstunted         
MAL-ED           Brazil         24 months                4          0       38     167  sstunted         
MAL-ED           Brazil         24 months                4          1        0     167  sstunted         
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
MAL-ED           India          24 months                1          0       46     202  sstunted         
MAL-ED           India          24 months                1          1        5     202  sstunted         
MAL-ED           India          24 months                2          0       45     202  sstunted         
MAL-ED           India          24 months                2          1       10     202  sstunted         
MAL-ED           India          24 months                3          0       43     202  sstunted         
MAL-ED           India          24 months                3          1        5     202  sstunted         
MAL-ED           India          24 months                4          0       41     202  sstunted         
MAL-ED           India          24 months                4          1        7     202  sstunted         
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
MAL-ED           Nepal          24 months                1          0       46     200  sstunted         
MAL-ED           Nepal          24 months                1          1        5     200  sstunted         
MAL-ED           Nepal          24 months                2          0       55     200  sstunted         
MAL-ED           Nepal          24 months                2          1        1     200  sstunted         
MAL-ED           Nepal          24 months                3          0       54     200  sstunted         
MAL-ED           Nepal          24 months                3          1        1     200  sstunted         
MAL-ED           Nepal          24 months                4          0       37     200  sstunted         
MAL-ED           Nepal          24 months                4          1        1     200  sstunted         
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
MAL-ED           Peru           24 months                1          0       45     199  sstunted         
MAL-ED           Peru           24 months                1          1        1     199  sstunted         
MAL-ED           Peru           24 months                2          0       36     199  sstunted         
MAL-ED           Peru           24 months                2          1        6     199  sstunted         
MAL-ED           Peru           24 months                3          0       46     199  sstunted         
MAL-ED           Peru           24 months                3          1        5     199  sstunted         
MAL-ED           Peru           24 months                4          0       54     199  sstunted         
MAL-ED           Peru           24 months                4          1        6     199  sstunted         
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
MAL-ED           South Africa   24 months                1          0       42     203  sstunted         
MAL-ED           South Africa   24 months                1          1        3     203  sstunted         
MAL-ED           South Africa   24 months                2          0       30     203  sstunted         
MAL-ED           South Africa   24 months                2          1        1     203  sstunted         
MAL-ED           South Africa   24 months                3          0       65     203  sstunted         
MAL-ED           South Africa   24 months                3          1        7     203  sstunted         
MAL-ED           South Africa   24 months                4          0       44     203  sstunted         
MAL-ED           South Africa   24 months                4          1       11     203  sstunted         
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
MAL-ED           Tanzania       24 months                1          0       30     183  sstunted         
MAL-ED           Tanzania       24 months                1          1       17     183  sstunted         
MAL-ED           Tanzania       24 months                2          0       37     183  sstunted         
MAL-ED           Tanzania       24 months                2          1       13     183  sstunted         
MAL-ED           Tanzania       24 months                3          0       34     183  sstunted         
MAL-ED           Tanzania       24 months                3          1       14     183  sstunted         
MAL-ED           Tanzania       24 months                4          0       19     183  sstunted         
MAL-ED           Tanzania       24 months                4          1       19     183  sstunted         
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
PROBIT           Belarus        24 months                1          0      298    1168  sstunted         
PROBIT           Belarus        24 months                1          1       11    1168  sstunted         
PROBIT           Belarus        24 months                2          0      357    1168  sstunted         
PROBIT           Belarus        24 months                2          1        6    1168  sstunted         
PROBIT           Belarus        24 months                3          0      212    1168  sstunted         
PROBIT           Belarus        24 months                3          1        2    1168  sstunted         
PROBIT           Belarus        24 months                4          0      281    1168  sstunted         
PROBIT           Belarus        24 months                4          1        1    1168  sstunted         
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
PROVIDE          Bangladesh     24 months                1          0        3      40  sstunted         
PROVIDE          Bangladesh     24 months                1          1        1      40  sstunted         
PROVIDE          Bangladesh     24 months                2          0       13      40  sstunted         
PROVIDE          Bangladesh     24 months                2          1        0      40  sstunted         
PROVIDE          Bangladesh     24 months                3          0        4      40  sstunted         
PROVIDE          Bangladesh     24 months                3          1        0      40  sstunted         
PROVIDE          Bangladesh     24 months                4          0       15      40  sstunted         
PROVIDE          Bangladesh     24 months                4          1        4      40  sstunted         
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
TanzaniaChild2   Tanzania       24 months                1          0        0       4  sstunted         
TanzaniaChild2   Tanzania       24 months                1          1        0       4  sstunted         
TanzaniaChild2   Tanzania       24 months                2          0        1       4  sstunted         
TanzaniaChild2   Tanzania       24 months                2          1        1       4  sstunted         
TanzaniaChild2   Tanzania       24 months                3          0        0       4  sstunted         
TanzaniaChild2   Tanzania       24 months                3          1        0       4  sstunted         
TanzaniaChild2   Tanzania       24 months                4          0        2       4  sstunted         
TanzaniaChild2   Tanzania       24 months                4          1        0       4  sstunted         
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
ZVITAMBO         Zimbabwe       24 months                1          0       34     316  sstunted         
ZVITAMBO         Zimbabwe       24 months                1          1        4     316  sstunted         
ZVITAMBO         Zimbabwe       24 months                2          0       68     316  sstunted         
ZVITAMBO         Zimbabwe       24 months                2          1       10     316  sstunted         
ZVITAMBO         Zimbabwe       24 months                3          0       71     316  sstunted         
ZVITAMBO         Zimbabwe       24 months                3          1       13     316  sstunted         
ZVITAMBO         Zimbabwe       24 months                4          0       91     316  sstunted         
ZVITAMBO         Zimbabwe       24 months                4          1       25     316  sstunted         


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
* studyid: JiVitA-3, country: Bangladesh, agecat: 24 months
* studyid: Keneba, country: Gambia, agecat: Birth
* studyid: LCNI-5, country: Malawi, agecat: 24 months
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
* studyid: PROBIT, country: Belarus, agecat: 24 months
* studyid: PROVIDE, country: Bangladesh, agecat: Birth
* studyid: PROVIDE, country: Bangladesh, agecat: 6 months
* studyid: PROVIDE, country: Bangladesh, agecat: 24 months
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: 6 months
* studyid: TanzaniaChild2, country: Tanzania, agecat: 6 months
* studyid: TanzaniaChild2, country: Tanzania, agecat: 24 months
* studyid: ZVITAMBO, country: Zimbabwe, agecat: 24 months

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




# Results Detail

## Results Plots
![](/tmp/4a69d313-56a1-46fc-b48f-b686e017e591/d36d60eb-4286-4a54-ac8c-74a81ae51cd2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a69d313-56a1-46fc-b48f-b686e017e591/d36d60eb-4286-4a54-ac8c-74a81ae51cd2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a69d313-56a1-46fc-b48f-b686e017e591/d36d60eb-4286-4a54-ac8c-74a81ae51cd2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a69d313-56a1-46fc-b48f-b686e017e591/d36d60eb-4286-4a54-ac8c-74a81ae51cd2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        24 months   1                    NA                0.4022989   0.2991040   0.5054937
CMC-V-BCS-2002   India        24 months   2                    NA                0.4555556   0.3525104   0.5586007
CMC-V-BCS-2002   India        24 months   3                    NA                0.3297872   0.2346040   0.4249705
CMC-V-BCS-2002   India        24 months   4                    NA                0.3709677   0.2505446   0.4913909
CMIN             Bangladesh   24 months   1                    NA                0.3055556   0.1989163   0.4121949
CMIN             Bangladesh   24 months   2                    NA                0.3437500   0.2271266   0.4603734
CMIN             Bangladesh   24 months   3                    NA                0.1730769   0.0700217   0.2761322
CMIN             Bangladesh   24 months   4                    NA                0.3611111   0.2038572   0.5183650
IRC              India        24 months   1                    NA                0.1609195   0.0835943   0.2382448
IRC              India        24 months   2                    NA                0.1018519   0.0447275   0.1589762
IRC              India        24 months   3                    NA                0.0987654   0.0336995   0.1638314
IRC              India        24 months   4                    NA                0.0985916   0.0291489   0.1680342
JiVitA-3         Bangladesh   Birth       1                    NA                0.1237035   0.1152388   0.1321682
JiVitA-3         Bangladesh   Birth       2                    NA                0.1166225   0.1085493   0.1246958
JiVitA-3         Bangladesh   Birth       3                    NA                0.0832614   0.0742528   0.0922701
JiVitA-3         Bangladesh   Birth       4                    NA                0.1013216   0.0910013   0.1116419
JiVitA-3         Bangladesh   6 months    1                    NA                0.0545113   0.0471668   0.0618558
JiVitA-3         Bangladesh   6 months    2                    NA                0.0607750   0.0526590   0.0688911
JiVitA-3         Bangladesh   6 months    3                    NA                0.0652757   0.0582298   0.0723215
JiVitA-3         Bangladesh   6 months    4                    NA                0.0603368   0.0525409   0.0681326
JiVitA-4         Bangladesh   Birth       1                    NA                0.0720721   0.0432026   0.1009416
JiVitA-4         Bangladesh   Birth       2                    NA                0.0462963   0.0217698   0.0708228
JiVitA-4         Bangladesh   Birth       3                    NA                0.0990854   0.0805090   0.1176617
JiVitA-4         Bangladesh   Birth       4                    NA                0.0717256   0.0503261   0.0931251
JiVitA-4         Bangladesh   6 months    1                    NA                0.0544588   0.0419608   0.0669568
JiVitA-4         Bangladesh   6 months    2                    NA                0.0600842   0.0505612   0.0696072
JiVitA-4         Bangladesh   6 months    3                    NA                0.0414013   0.0269950   0.0558076
JiVitA-4         Bangladesh   6 months    4                    NA                0.0661157   0.0169470   0.1152844
JiVitA-4         Bangladesh   24 months   1                    NA                0.1609756   0.1169850   0.2049662
JiVitA-4         Bangladesh   24 months   2                    NA                0.0923077   0.0498363   0.1347791
JiVitA-4         Bangladesh   24 months   3                    NA                0.1365385   0.1028609   0.1702160
JiVitA-4         Bangladesh   24 months   4                    NA                0.0763723   0.0362943   0.1164503
Keneba           Gambia       6 months    1                    NA                0.0431034   0.0246201   0.0615868
Keneba           Gambia       6 months    2                    NA                0.0326797   0.0164104   0.0489491
Keneba           Gambia       6 months    3                    NA                0.0264026   0.0136345   0.0391708
Keneba           Gambia       6 months    4                    NA                0.0339286   0.0189302   0.0489270
Keneba           Gambia       24 months   1                    NA                0.0898876   0.0478398   0.1319355
Keneba           Gambia       24 months   2                    NA                0.0833333   0.0464488   0.1202179
Keneba           Gambia       24 months   3                    NA                0.1076923   0.0543669   0.1610177
Keneba           Gambia       24 months   4                    NA                0.0989011   0.0554994   0.1423028
LCNI-5           Malawi       6 months    1                    NA                0.0735294   0.0376919   0.1093670
LCNI-5           Malawi       6 months    2                    NA                0.1034483   0.0700087   0.1368879
LCNI-5           Malawi       6 months    3                    NA                0.0884956   0.0360984   0.1408928
LCNI-5           Malawi       6 months    4                    NA                0.0640394   0.0303408   0.0977380
MAL-ED           Bangladesh   24 months   1                    NA                0.1224490   0.0304192   0.2144787
MAL-ED           Bangladesh   24 months   2                    NA                0.1372549   0.0425587   0.2319511
MAL-ED           Bangladesh   24 months   3                    NA                0.1860465   0.0694223   0.3026707
MAL-ED           Bangladesh   24 months   4                    NA                0.2272727   0.1031153   0.3514302
MAL-ED           India        24 months   1                    NA                0.0980392   0.0162239   0.1798545
MAL-ED           India        24 months   2                    NA                0.1818182   0.0796330   0.2840034
MAL-ED           India        24 months   3                    NA                0.1041667   0.0175337   0.1907996
MAL-ED           India        24 months   4                    NA                0.1458333   0.0457401   0.2459266
MAL-ED           Tanzania     24 months   1                    NA                0.3617021   0.2239570   0.4994473
MAL-ED           Tanzania     24 months   2                    NA                0.2600000   0.1380855   0.3819145
MAL-ED           Tanzania     24 months   3                    NA                0.2916667   0.1627291   0.4206043
MAL-ED           Tanzania     24 months   4                    NA                0.5000000   0.3405898   0.6594102
PROBIT           Belarus      6 months    1                    NA                0.0135659   0.0062607   0.0208711
PROBIT           Belarus      6 months    2                    NA                0.0141161   0.0079421   0.0202901
PROBIT           Belarus      6 months    3                    NA                0.0144060   0.0079183   0.0208938
PROBIT           Belarus      6 months    4                    NA                0.0188053   0.0114648   0.0261458
SAS-CompFeed     India        Birth       1                    NA                0.0732601   0.0360460   0.1104741
SAS-CompFeed     India        Birth       2                    NA                0.0588235   0.0256265   0.0920206
SAS-CompFeed     India        Birth       3                    NA                0.1076233   0.0353879   0.1798587
SAS-CompFeed     India        Birth       4                    NA                0.0660920   0.0357169   0.0964670
SAS-CompFeed     India        6 months    1                    NA                0.1173333   0.0766185   0.1580482
SAS-CompFeed     India        6 months    2                    NA                0.0739130   0.0496116   0.0982145
SAS-CompFeed     India        6 months    3                    NA                0.0760369   0.0467941   0.1052796
SAS-CompFeed     India        6 months    4                    NA                0.1144781   0.0885942   0.1403620
SAS-FoodSuppl    India        6 months    1                    NA                0.1250000   0.0736880   0.1763120
SAS-FoodSuppl    India        6 months    2                    NA                0.1621622   0.0432369   0.2810874
SAS-FoodSuppl    India        6 months    3                    NA                0.1509434   0.0827028   0.2191840
SAS-FoodSuppl    India        6 months    4                    NA                0.1558442   0.0747235   0.2369648
ZVITAMBO         Zimbabwe     Birth       1                    NA                0.0241093   0.0191886   0.0290300
ZVITAMBO         Zimbabwe     Birth       2                    NA                0.0364732   0.0299295   0.0430169
ZVITAMBO         Zimbabwe     Birth       3                    NA                0.0274964   0.0220435   0.0329492
ZVITAMBO         Zimbabwe     Birth       4                    NA                0.0401811   0.0337062   0.0466560
ZVITAMBO         Zimbabwe     6 months    1                    NA                0.0425532   0.0340444   0.0510620
ZVITAMBO         Zimbabwe     6 months    2                    NA                0.0395204   0.0314732   0.0475676
ZVITAMBO         Zimbabwe     6 months    3                    NA                0.0417288   0.0329928   0.0504648
ZVITAMBO         Zimbabwe     6 months    4                    NA                0.0383586   0.0304081   0.0463091


### Parameter: E(Y)


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        24 months   NA                   NA                0.3903904   0.3379151   0.4428656
CMIN             Bangladesh   24 months   NA                   NA                0.2946429   0.2348088   0.3544769
IRC              India        24 months   NA                   NA                0.1152738   0.0816242   0.1489234
JiVitA-3         Bangladesh   Birth       NA                   NA                0.1090180   0.1044666   0.1135695
JiVitA-3         Bangladesh   6 months    NA                   NA                0.0606746   0.0568229   0.0645262
JiVitA-4         Bangladesh   Birth       NA                   NA                0.0825363   0.0708486   0.0942240
JiVitA-4         Bangladesh   6 months    NA                   NA                0.0560960   0.0493335   0.0628586
JiVitA-4         Bangladesh   24 months   NA                   NA                0.1161695   0.0947482   0.1375909
Keneba           Gambia       6 months    NA                   NA                0.0335089   0.0257898   0.0412279
Keneba           Gambia       24 months   NA                   NA                0.0934844   0.0719957   0.1149732
LCNI-5           Malawi       6 months    NA                   NA                0.0846246   0.0657805   0.1034686
MAL-ED           Bangladesh   24 months   NA                   NA                0.1657754   0.1123321   0.2192187
MAL-ED           India        24 months   NA                   NA                0.1336634   0.0866199   0.1807069
MAL-ED           Tanzania     24 months   NA                   NA                0.3442623   0.2752348   0.4132898
PROBIT           Belarus      6 months    NA                   NA                0.0154178   0.0100323   0.0208033
SAS-CompFeed     India        Birth       NA                   NA                0.0726837   0.0523147   0.0930527
SAS-CompFeed     India        6 months    NA                   NA                0.0958084   0.0774939   0.1141229
SAS-FoodSuppl    India        6 months    NA                   NA                0.1421053   0.1069532   0.1772573
ZVITAMBO         Zimbabwe     Birth       NA                   NA                0.0318559   0.0289336   0.0347781
ZVITAMBO         Zimbabwe     6 months    NA                   NA                0.0404891   0.0363397   0.0446385


### Parameter: RR


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMC-V-BCS-2002   India        24 months   2                    1                 1.1323810   0.8043851   1.5941204
CMC-V-BCS-2002   India        24 months   3                    1                 0.8197568   0.5571712   1.2060949
CMC-V-BCS-2002   India        24 months   4                    1                 0.9221198   0.6096839   1.3946652
CMIN             Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMIN             Bangladesh   24 months   2                    1                 1.1250000   0.6914630   1.8303581
CMIN             Bangladesh   24 months   3                    1                 0.5664336   0.2840603   1.1295032
CMIN             Bangladesh   24 months   4                    1                 1.1818182   0.6763718   2.0649800
IRC              India        24 months   1                    1                 1.0000000   1.0000000   1.0000000
IRC              India        24 months   2                    1                 0.6329365   0.3024199   1.3246769
IRC              India        24 months   3                    1                 0.6137566   0.2715590   1.3871653
IRC              India        24 months   4                    1                 0.6126761   0.2611749   1.4372435
JiVitA-3         Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   Birth       2                    1                 0.9427588   0.8586242   1.0351376
JiVitA-3         Bangladesh   Birth       3                    1                 0.6730727   0.5937963   0.7629331
JiVitA-3         Bangladesh   Birth       4                    1                 0.8190682   0.7236642   0.9270498
JiVitA-3         Bangladesh   6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   6 months    2                    1                 1.1149073   0.9243825   1.3447012
JiVitA-3         Bangladesh   6 months    3                    1                 1.1974706   1.0080955   1.4224205
JiVitA-3         Bangladesh   6 months    4                    1                 1.1068675   0.9186408   1.3336613
JiVitA-4         Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   Birth       2                    1                 0.6423611   0.3406403   1.2113299
JiVitA-4         Bangladesh   Birth       3                    1                 1.3748095   0.8804568   2.1467278
JiVitA-4         Bangladesh   Birth       4                    1                 0.9951923   0.6004630   1.6494068
JiVitA-4         Bangladesh   6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   6 months    2                    1                 1.1032960   0.8370163   1.4542873
JiVitA-4         Bangladesh   6 months    3                    1                 0.7602310   0.4961806   1.1647998
JiVitA-4         Bangladesh   6 months    4                    1                 1.2140496   0.5573983   2.6442787
JiVitA-4         Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   24 months   2                    1                 0.5734266   0.3385773   0.9711756
JiVitA-4         Bangladesh   24 months   3                    1                 0.8481935   0.5907894   1.2177473
JiVitA-4         Bangladesh   24 months   4                    1                 0.4744341   0.2661091   0.8458474
Keneba           Gambia       6 months    1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia       6 months    2                    1                 0.7581699   0.3930147   1.4625959
Keneba           Gambia       6 months    3                    1                 0.6125413   0.3209494   1.1690527
Keneba           Gambia       6 months    4                    1                 0.7871429   0.4251909   1.4572135
Keneba           Gambia       24 months   1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia       24 months   2                    1                 0.9270833   0.4868959   1.7652307
Keneba           Gambia       24 months   3                    1                 1.1980769   0.6062498   2.3676517
Keneba           Gambia       24 months   4                    1                 1.1002747   0.5793521   2.0895834
LCNI-5           Malawi       6 months    1                    1                 1.0000000   1.0000000   1.0000000
LCNI-5           Malawi       6 months    2                    1                 1.4068966   0.7839143   2.5249671
LCNI-5           Malawi       6 months    3                    1                 1.2035398   0.5589912   2.5912898
LCNI-5           Malawi       6 months    4                    1                 0.8709360   0.4250958   1.7843729
MAL-ED           Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh   24 months   2                    1                 1.1209150   0.4041033   3.1092308
MAL-ED           Bangladesh   24 months   3                    1                 1.5193798   0.5709935   4.0429800
MAL-ED           Bangladesh   24 months   4                    1                 1.8560606   0.7329451   4.7001625
MAL-ED           India        24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           India        24 months   2                    1                 1.8545454   0.6780852   5.0721338
MAL-ED           India        24 months   3                    1                 1.0625000   0.3270792   3.4514764
MAL-ED           India        24 months   4                    1                 1.4875000   0.5048916   4.3824377
MAL-ED           Tanzania     24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania     24 months   2                    1                 0.7188235   0.3928977   1.3151193
MAL-ED           Tanzania     24 months   3                    1                 0.8063725   0.4499159   1.4452405
MAL-ED           Tanzania     24 months   4                    1                 1.3823529   0.8412421   2.2715216
PROBIT           Belarus      6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      6 months    2                    1                 1.0405610   0.6636563   1.6315179
PROBIT           Belarus      6 months    3                    1                 1.0619301   0.6270341   1.7984597
PROBIT           Belarus      6 months    4                    1                 1.3862200   0.8913239   2.1559007
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


### Parameter: PAR


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        24 months   1                    NA                -0.0119085   -0.1004432    0.0766262
CMIN             Bangladesh   24 months   1                    NA                -0.0109127   -0.0983285    0.0765031
IRC              India        24 months   1                    NA                -0.0456458   -0.1097806    0.0184891
JiVitA-3         Bangladesh   Birth       1                    NA                -0.0146854   -0.0214927   -0.0078781
JiVitA-3         Bangladesh   6 months    1                    NA                 0.0061633   -0.0004686    0.0127952
JiVitA-4         Bangladesh   Birth       1                    NA                 0.0104642   -0.0175107    0.0384392
JiVitA-4         Bangladesh   6 months    1                    NA                 0.0016372   -0.0087008    0.0119753
JiVitA-4         Bangladesh   24 months   1                    NA                -0.0448061   -0.0858589   -0.0037533
Keneba           Gambia       6 months    1                    NA                -0.0095946   -0.0253887    0.0061995
Keneba           Gambia       24 months   1                    NA                 0.0035968   -0.0329855    0.0401790
LCNI-5           Malawi       6 months    1                    NA                 0.0110951   -0.0207618    0.0429521
MAL-ED           Bangladesh   24 months   1                    NA                 0.0433264   -0.0396622    0.1263150
MAL-ED           India        24 months   1                    NA                 0.0356241   -0.0387185    0.1099668
MAL-ED           Tanzania     24 months   1                    NA                -0.0174398   -0.1357295    0.1008499
PROBIT           Belarus      6 months    1                    NA                 0.0018519   -0.0022996    0.0060035
SAS-CompFeed     India        Birth       1                    NA                -0.0005764   -0.0317676    0.0306149
SAS-CompFeed     India        6 months    1                    NA                -0.0215250   -0.0500183    0.0069684
SAS-FoodSuppl    India        6 months    1                    NA                 0.0171053   -0.0235321    0.0577426
ZVITAMBO         Zimbabwe     Birth       1                    NA                 0.0077466    0.0033054    0.0121877
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0020641   -0.0093788    0.0052506


### Parameter: PAF


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        24 months   1                    NA                -0.0305040   -0.2841942    0.1730702
CMIN             Bangladesh   24 months   1                    NA                -0.0370370   -0.3804967    0.2209718
IRC              India        24 months   1                    NA                -0.3959770   -1.0681121    0.0577146
JiVitA-3         Bangladesh   Birth       1                    NA                -0.1347065   -0.1987251   -0.0741069
JiVitA-3         Bangladesh   6 months    1                    NA                 0.1015793   -0.0141697    0.2041177
JiVitA-4         Bangladesh   Birth       1                    NA                 0.1267834   -0.2845685    0.4064099
JiVitA-4         Bangladesh   6 months    1                    NA                 0.0291862   -0.1739089    0.1971444
JiVitA-4         Bangladesh   24 months   1                    NA                -0.3856955   -0.8080581   -0.0619968
Keneba           Gambia       6 months    1                    NA                -0.2863300   -0.8495341    0.1053720
Keneba           Gambia       24 months   1                    NA                 0.0384746   -0.4443509    0.3598986
LCNI-5           Malawi       6 months    1                    NA                 0.1311102   -0.3385954    0.4359987
MAL-ED           Bangladesh   24 months   1                    NA                 0.2613562   -0.4448207    0.6223789
MAL-ED           India        24 months   1                    NA                 0.2665214   -0.5526260    0.6534962
MAL-ED           Tanzania     24 months   1                    NA                -0.0506586   -0.4571291    0.2424258
PROBIT           Belarus      6 months    1                    NA                 0.1201152   -0.2082543    0.3592431
SAS-CompFeed     India        Birth       1                    NA                -0.0079298   -0.5429098    0.3415542
SAS-CompFeed     India        6 months    1                    NA                -0.2246667   -0.5379087    0.0247740
SAS-FoodSuppl    India        6 months    1                    NA                 0.1203704   -0.2160319    0.3637105
ZVITAMBO         Zimbabwe     Birth       1                    NA                 0.2431754    0.0921440    0.3690811
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0509790   -0.2480123    0.1149472

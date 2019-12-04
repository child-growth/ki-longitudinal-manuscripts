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

**Outcome Variable:** stunted

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

studyid          country        agecat       rain_quartile   stunted   n_cell       n  outcome_variable 
---------------  -------------  ----------  --------------  --------  -------  ------  -----------------
CMC-V-BCS-2002   India          Birth                    1         0       14      92  stunted          
CMC-V-BCS-2002   India          Birth                    1         1        4      92  stunted          
CMC-V-BCS-2002   India          Birth                    2         0       20      92  stunted          
CMC-V-BCS-2002   India          Birth                    2         1        5      92  stunted          
CMC-V-BCS-2002   India          Birth                    3         0       26      92  stunted          
CMC-V-BCS-2002   India          Birth                    3         1        4      92  stunted          
CMC-V-BCS-2002   India          Birth                    4         0       15      92  stunted          
CMC-V-BCS-2002   India          Birth                    4         1        4      92  stunted          
CMC-V-BCS-2002   India          6 months                 1         0       60     369  stunted          
CMC-V-BCS-2002   India          6 months                 1         1       41     369  stunted          
CMC-V-BCS-2002   India          6 months                 2         0       81     369  stunted          
CMC-V-BCS-2002   India          6 months                 2         1       30     369  stunted          
CMC-V-BCS-2002   India          6 months                 3         0       75     369  stunted          
CMC-V-BCS-2002   India          6 months                 3         1       22     369  stunted          
CMC-V-BCS-2002   India          6 months                 4         0       42     369  stunted          
CMC-V-BCS-2002   India          6 months                 4         1       18     369  stunted          
CMC-V-BCS-2002   India          24 months                1         0       20     333  stunted          
CMC-V-BCS-2002   India          24 months                1         1       67     333  stunted          
CMC-V-BCS-2002   India          24 months                2         0       22     333  stunted          
CMC-V-BCS-2002   India          24 months                2         1       68     333  stunted          
CMC-V-BCS-2002   India          24 months                3         0       24     333  stunted          
CMC-V-BCS-2002   India          24 months                3         1       70     333  stunted          
CMC-V-BCS-2002   India          24 months                4         0       15     333  stunted          
CMC-V-BCS-2002   India          24 months                4         1       47     333  stunted          
CMIN             Bangladesh     Birth                    1         0        3      26  stunted          
CMIN             Bangladesh     Birth                    1         1        4      26  stunted          
CMIN             Bangladesh     Birth                    2         0        5      26  stunted          
CMIN             Bangladesh     Birth                    2         1        1      26  stunted          
CMIN             Bangladesh     Birth                    3         0        5      26  stunted          
CMIN             Bangladesh     Birth                    3         1        1      26  stunted          
CMIN             Bangladesh     Birth                    4         0        4      26  stunted          
CMIN             Bangladesh     Birth                    4         1        3      26  stunted          
CMIN             Bangladesh     6 months                 1         0       32     243  stunted          
CMIN             Bangladesh     6 months                 1         1       18     243  stunted          
CMIN             Bangladesh     6 months                 2         0       47     243  stunted          
CMIN             Bangladesh     6 months                 2         1       15     243  stunted          
CMIN             Bangladesh     6 months                 3         0       41     243  stunted          
CMIN             Bangladesh     6 months                 3         1       30     243  stunted          
CMIN             Bangladesh     6 months                 4         0       30     243  stunted          
CMIN             Bangladesh     6 months                 4         1       30     243  stunted          
CMIN             Bangladesh     24 months                1         0       20     224  stunted          
CMIN             Bangladesh     24 months                1         1       52     224  stunted          
CMIN             Bangladesh     24 months                2         0       19     224  stunted          
CMIN             Bangladesh     24 months                2         1       45     224  stunted          
CMIN             Bangladesh     24 months                3         0       20     224  stunted          
CMIN             Bangladesh     24 months                3         1       32     224  stunted          
CMIN             Bangladesh     24 months                4         0        9     224  stunted          
CMIN             Bangladesh     24 months                4         1       27     224  stunted          
CONTENT          Peru           Birth                    1         0        0       2  stunted          
CONTENT          Peru           Birth                    1         1        0       2  stunted          
CONTENT          Peru           Birth                    2         0        2       2  stunted          
CONTENT          Peru           Birth                    2         1        0       2  stunted          
CONTENT          Peru           Birth                    3         0        0       2  stunted          
CONTENT          Peru           Birth                    3         1        0       2  stunted          
CONTENT          Peru           Birth                    4         0        0       2  stunted          
CONTENT          Peru           Birth                    4         1        0       2  stunted          
CONTENT          Peru           6 months                 1         0       55     215  stunted          
CONTENT          Peru           6 months                 1         1        7     215  stunted          
CONTENT          Peru           6 months                 2         0       31     215  stunted          
CONTENT          Peru           6 months                 2         1        1     215  stunted          
CONTENT          Peru           6 months                 3         0       39     215  stunted          
CONTENT          Peru           6 months                 3         1        5     215  stunted          
CONTENT          Peru           6 months                 4         0       71     215  stunted          
CONTENT          Peru           6 months                 4         1        6     215  stunted          
CONTENT          Peru           24 months                1         0       47     164  stunted          
CONTENT          Peru           24 months                1         1        8     164  stunted          
CONTENT          Peru           24 months                2         0       32     164  stunted          
CONTENT          Peru           24 months                2         1        3     164  stunted          
CONTENT          Peru           24 months                3         0       19     164  stunted          
CONTENT          Peru           24 months                3         1        1     164  stunted          
CONTENT          Peru           24 months                4         0       45     164  stunted          
CONTENT          Peru           24 months                4         1        9     164  stunted          
EE               Pakistan       Birth                    1         0       74     240  stunted          
EE               Pakistan       Birth                    1         1       62     240  stunted          
EE               Pakistan       Birth                    2         0       61     240  stunted          
EE               Pakistan       Birth                    2         1       32     240  stunted          
EE               Pakistan       Birth                    3         0        5     240  stunted          
EE               Pakistan       Birth                    3         1        6     240  stunted          
EE               Pakistan       Birth                    4         0        0     240  stunted          
EE               Pakistan       Birth                    4         1        0     240  stunted          
EE               Pakistan       6 months                 1         0        0     373  stunted          
EE               Pakistan       6 months                 1         1        0     373  stunted          
EE               Pakistan       6 months                 2         0       16     373  stunted          
EE               Pakistan       6 months                 2         1       18     373  stunted          
EE               Pakistan       6 months                 3         0       87     373  stunted          
EE               Pakistan       6 months                 3         1       81     373  stunted          
EE               Pakistan       6 months                 4         0       87     373  stunted          
EE               Pakistan       6 months                 4         1       84     373  stunted          
EE               Pakistan       24 months                1         0        0     158  stunted          
EE               Pakistan       24 months                1         1        7     158  stunted          
EE               Pakistan       24 months                2         0       45     158  stunted          
EE               Pakistan       24 months                2         1      106     158  stunted          
EE               Pakistan       24 months                3         0        0     158  stunted          
EE               Pakistan       24 months                3         1        0     158  stunted          
EE               Pakistan       24 months                4         0        0     158  stunted          
EE               Pakistan       24 months                4         1        0     158  stunted          
GMS-Nepal        Nepal          Birth                    1         0        0     696  stunted          
GMS-Nepal        Nepal          Birth                    1         1        0     696  stunted          
GMS-Nepal        Nepal          Birth                    2         0        0     696  stunted          
GMS-Nepal        Nepal          Birth                    2         1        0     696  stunted          
GMS-Nepal        Nepal          Birth                    3         0      133     696  stunted          
GMS-Nepal        Nepal          Birth                    3         1       28     696  stunted          
GMS-Nepal        Nepal          Birth                    4         0      441     696  stunted          
GMS-Nepal        Nepal          Birth                    4         1       94     696  stunted          
GMS-Nepal        Nepal          6 months                 1         0      392     564  stunted          
GMS-Nepal        Nepal          6 months                 1         1      110     564  stunted          
GMS-Nepal        Nepal          6 months                 2         0       50     564  stunted          
GMS-Nepal        Nepal          6 months                 2         1       12     564  stunted          
GMS-Nepal        Nepal          6 months                 3         0        0     564  stunted          
GMS-Nepal        Nepal          6 months                 3         1        0     564  stunted          
GMS-Nepal        Nepal          6 months                 4         0        0     564  stunted          
GMS-Nepal        Nepal          6 months                 4         1        0     564  stunted          
GMS-Nepal        Nepal          24 months                1         0        0     323  stunted          
GMS-Nepal        Nepal          24 months                1         1        0     323  stunted          
GMS-Nepal        Nepal          24 months                2         0        0     323  stunted          
GMS-Nepal        Nepal          24 months                2         1        0     323  stunted          
GMS-Nepal        Nepal          24 months                3         0       12     323  stunted          
GMS-Nepal        Nepal          24 months                3         1       22     323  stunted          
GMS-Nepal        Nepal          24 months                4         0      147     323  stunted          
GMS-Nepal        Nepal          24 months                4         1      142     323  stunted          
Guatemala BSC    Guatemala      6 months                 1         0       45     299  stunted          
Guatemala BSC    Guatemala      6 months                 1         1       15     299  stunted          
Guatemala BSC    Guatemala      6 months                 2         0       52     299  stunted          
Guatemala BSC    Guatemala      6 months                 2         1       28     299  stunted          
Guatemala BSC    Guatemala      6 months                 3         0       59     299  stunted          
Guatemala BSC    Guatemala      6 months                 3         1       28     299  stunted          
Guatemala BSC    Guatemala      6 months                 4         0       53     299  stunted          
Guatemala BSC    Guatemala      6 months                 4         1       19     299  stunted          
IRC              India          Birth                    1         0       73     388  stunted          
IRC              India          Birth                    1         1       13     388  stunted          
IRC              India          Birth                    2         0      110     388  stunted          
IRC              India          Birth                    2         1       16     388  stunted          
IRC              India          Birth                    3         0       70     388  stunted          
IRC              India          Birth                    3         1        7     388  stunted          
IRC              India          Birth                    4         0       90     388  stunted          
IRC              India          Birth                    4         1        9     388  stunted          
IRC              India          6 months                 1         0       93     407  stunted          
IRC              India          6 months                 1         1       26     407  stunted          
IRC              India          6 months                 2         0       59     407  stunted          
IRC              India          6 months                 2         1       17     407  stunted          
IRC              India          6 months                 3         0      100     407  stunted          
IRC              India          6 months                 3         1       27     407  stunted          
IRC              India          6 months                 4         0       55     407  stunted          
IRC              India          6 months                 4         1       30     407  stunted          
IRC              India          24 months                1         0       35     347  stunted          
IRC              India          24 months                1         1       52     347  stunted          
IRC              India          24 months                2         0       69     347  stunted          
IRC              India          24 months                2         1       39     347  stunted          
IRC              India          24 months                3         0       41     347  stunted          
IRC              India          24 months                3         1       40     347  stunted          
IRC              India          24 months                4         0       43     347  stunted          
IRC              India          24 months                4         1       28     347  stunted          
JiVitA-3         Bangladesh     Birth                    1         0     4197   22455  stunted          
JiVitA-3         Bangladesh     Birth                    1         1     2359   22455  stunted          
JiVitA-3         Bangladesh     Birth                    2         0     4738   22455  stunted          
JiVitA-3         Bangladesh     Birth                    2         1     2439   22455  stunted          
JiVitA-3         Bangladesh     Birth                    3         0     3288   22455  stunted          
JiVitA-3         Bangladesh     Birth                    3         1     1348   22455  stunted          
JiVitA-3         Bangladesh     Birth                    4         0     2845   22455  stunted          
JiVitA-3         Bangladesh     Birth                    4         1     1241   22455  stunted          
JiVitA-3         Bangladesh     6 months                 1         0     2801   16811  stunted          
JiVitA-3         Bangladesh     6 months                 1         1      923   16811  stunted          
JiVitA-3         Bangladesh     6 months                 2         0     2741   16811  stunted          
JiVitA-3         Bangladesh     6 months                 2         1      846   16811  stunted          
JiVitA-3         Bangladesh     6 months                 3         0     3889   16811  stunted          
JiVitA-3         Bangladesh     6 months                 3         1     1335   16811  stunted          
JiVitA-3         Bangladesh     6 months                 4         0     3154   16811  stunted          
JiVitA-3         Bangladesh     6 months                 4         1     1122   16811  stunted          
JiVitA-3         Bangladesh     24 months                1         0        0       3  stunted          
JiVitA-3         Bangladesh     24 months                1         1        0       3  stunted          
JiVitA-3         Bangladesh     24 months                2         0        0       3  stunted          
JiVitA-3         Bangladesh     24 months                2         1        0       3  stunted          
JiVitA-3         Bangladesh     24 months                3         0        0       3  stunted          
JiVitA-3         Bangladesh     24 months                3         1        0       3  stunted          
JiVitA-3         Bangladesh     24 months                4         0        2       3  stunted          
JiVitA-3         Bangladesh     24 months                4         1        1       3  stunted          
JiVitA-4         Bangladesh     Birth                    1         0      219    2823  stunted          
JiVitA-4         Bangladesh     Birth                    1         1      114    2823  stunted          
JiVitA-4         Bangladesh     Birth                    2         0      168    2823  stunted          
JiVitA-4         Bangladesh     Birth                    2         1       48    2823  stunted          
JiVitA-4         Bangladesh     Birth                    3         0      885    2823  stunted          
JiVitA-4         Bangladesh     Birth                    3         1      427    2823  stunted          
JiVitA-4         Bangladesh     Birth                    4         0      694    2823  stunted          
JiVitA-4         Bangladesh     Birth                    4         1      268    2823  stunted          
JiVitA-4         Bangladesh     6 months                 1         0     1090    4831  stunted          
JiVitA-4         Bangladesh     6 months                 1         1      379    4831  stunted          
JiVitA-4         Bangladesh     6 months                 2         0     1946    4831  stunted          
JiVitA-4         Bangladesh     6 months                 2         1      667    4831  stunted          
JiVitA-4         Bangladesh     6 months                 3         0      487    4831  stunted          
JiVitA-4         Bangladesh     6 months                 3         1      141    4831  stunted          
JiVitA-4         Bangladesh     6 months                 4         0       87    4831  stunted          
JiVitA-4         Bangladesh     6 months                 4         1       34    4831  stunted          
JiVitA-4         Bangladesh     24 months                1         0       88    1274  stunted          
JiVitA-4         Bangladesh     24 months                1         1      117    1274  stunted          
JiVitA-4         Bangladesh     24 months                2         0       83    1274  stunted          
JiVitA-4         Bangladesh     24 months                2         1       47    1274  stunted          
JiVitA-4         Bangladesh     24 months                3         0      275    1274  stunted          
JiVitA-4         Bangladesh     24 months                3         1      245    1274  stunted          
JiVitA-4         Bangladesh     24 months                4         0      235    1274  stunted          
JiVitA-4         Bangladesh     24 months                4         1      184    1274  stunted          
Keneba           Gambia         Birth                    1         0      423    1543  stunted          
Keneba           Gambia         Birth                    1         1       25    1543  stunted          
Keneba           Gambia         Birth                    2         0      393    1543  stunted          
Keneba           Gambia         Birth                    2         1       34    1543  stunted          
Keneba           Gambia         Birth                    3         0      369    1543  stunted          
Keneba           Gambia         Birth                    3         1        9    1543  stunted          
Keneba           Gambia         Birth                    4         0      275    1543  stunted          
Keneba           Gambia         Birth                    4         1       15    1543  stunted          
Keneba           Gambia         6 months                 1         0      379    2089  stunted          
Keneba           Gambia         6 months                 1         1       85    2089  stunted          
Keneba           Gambia         6 months                 2         0      399    2089  stunted          
Keneba           Gambia         6 months                 2         1       60    2089  stunted          
Keneba           Gambia         6 months                 3         0      524    2089  stunted          
Keneba           Gambia         6 months                 3         1       82    2089  stunted          
Keneba           Gambia         6 months                 4         0      493    2089  stunted          
Keneba           Gambia         6 months                 4         1       67    2089  stunted          
Keneba           Gambia         24 months                1         0      126     706  stunted          
Keneba           Gambia         24 months                1         1       52     706  stunted          
Keneba           Gambia         24 months                2         0      129     706  stunted          
Keneba           Gambia         24 months                2         1       87     706  stunted          
Keneba           Gambia         24 months                3         0       78     706  stunted          
Keneba           Gambia         24 months                3         1       52     706  stunted          
Keneba           Gambia         24 months                4         0      120     706  stunted          
Keneba           Gambia         24 months                4         1       62     706  stunted          
LCNI-5           Malawi         6 months                 1         0      130     839  stunted          
LCNI-5           Malawi         6 months                 1         1       74     839  stunted          
LCNI-5           Malawi         6 months                 2         0      196     839  stunted          
LCNI-5           Malawi         6 months                 2         1      123     839  stunted          
LCNI-5           Malawi         6 months                 3         0       71     839  stunted          
LCNI-5           Malawi         6 months                 3         1       42     839  stunted          
LCNI-5           Malawi         6 months                 4         0      133     839  stunted          
LCNI-5           Malawi         6 months                 4         1       70     839  stunted          
LCNI-5           Malawi         24 months                1         0       29     214  stunted          
LCNI-5           Malawi         24 months                1         1       22     214  stunted          
LCNI-5           Malawi         24 months                2         0        3     214  stunted          
LCNI-5           Malawi         24 months                2         1       11     214  stunted          
LCNI-5           Malawi         24 months                3         0       41     214  stunted          
LCNI-5           Malawi         24 months                3         1       62     214  stunted          
LCNI-5           Malawi         24 months                4         0       20     214  stunted          
LCNI-5           Malawi         24 months                4         1       26     214  stunted          
MAL-ED           Bangladesh     Birth                    1         0       56     231  stunted          
MAL-ED           Bangladesh     Birth                    1         1       12     231  stunted          
MAL-ED           Bangladesh     Birth                    2         0       43     231  stunted          
MAL-ED           Bangladesh     Birth                    2         1        8     231  stunted          
MAL-ED           Bangladesh     Birth                    3         0       52     231  stunted          
MAL-ED           Bangladesh     Birth                    3         1       12     231  stunted          
MAL-ED           Bangladesh     Birth                    4         0       36     231  stunted          
MAL-ED           Bangladesh     Birth                    4         1       12     231  stunted          
MAL-ED           Bangladesh     6 months                 1         0       41     241  stunted          
MAL-ED           Bangladesh     6 months                 1         1       14     241  stunted          
MAL-ED           Bangladesh     6 months                 2         0       63     241  stunted          
MAL-ED           Bangladesh     6 months                 2         1        8     241  stunted          
MAL-ED           Bangladesh     6 months                 3         0       50     241  stunted          
MAL-ED           Bangladesh     6 months                 3         1       10     241  stunted          
MAL-ED           Bangladesh     6 months                 4         0       43     241  stunted          
MAL-ED           Bangladesh     6 months                 4         1       12     241  stunted          
MAL-ED           Bangladesh     24 months                1         0       20     187  stunted          
MAL-ED           Bangladesh     24 months                1         1       29     187  stunted          
MAL-ED           Bangladesh     24 months                2         0       31     187  stunted          
MAL-ED           Bangladesh     24 months                2         1       20     187  stunted          
MAL-ED           Bangladesh     24 months                3         0       22     187  stunted          
MAL-ED           Bangladesh     24 months                3         1       21     187  stunted          
MAL-ED           Bangladesh     24 months                4         0       25     187  stunted          
MAL-ED           Bangladesh     24 months                4         1       19     187  stunted          
MAL-ED           Brazil         Birth                    1         0       13      65  stunted          
MAL-ED           Brazil         Birth                    1         1        6      65  stunted          
MAL-ED           Brazil         Birth                    2         0       11      65  stunted          
MAL-ED           Brazil         Birth                    2         1        1      65  stunted          
MAL-ED           Brazil         Birth                    3         0       11      65  stunted          
MAL-ED           Brazil         Birth                    3         1        1      65  stunted          
MAL-ED           Brazil         Birth                    4         0       21      65  stunted          
MAL-ED           Brazil         Birth                    4         1        1      65  stunted          
MAL-ED           Brazil         6 months                 1         0       62     209  stunted          
MAL-ED           Brazil         6 months                 1         1        2     209  stunted          
MAL-ED           Brazil         6 months                 2         0       50     209  stunted          
MAL-ED           Brazil         6 months                 2         1        1     209  stunted          
MAL-ED           Brazil         6 months                 3         0       42     209  stunted          
MAL-ED           Brazil         6 months                 3         1        2     209  stunted          
MAL-ED           Brazil         6 months                 4         0       49     209  stunted          
MAL-ED           Brazil         6 months                 4         1        1     209  stunted          
MAL-ED           Brazil         24 months                1         0       52     167  stunted          
MAL-ED           Brazil         24 months                1         1        2     167  stunted          
MAL-ED           Brazil         24 months                2         0       30     167  stunted          
MAL-ED           Brazil         24 months                2         1        2     167  stunted          
MAL-ED           Brazil         24 months                3         0       40     167  stunted          
MAL-ED           Brazil         24 months                3         1        3     167  stunted          
MAL-ED           Brazil         24 months                4         0       37     167  stunted          
MAL-ED           Brazil         24 months                4         1        1     167  stunted          
MAL-ED           India          Birth                    1         0       10      47  stunted          
MAL-ED           India          Birth                    1         1        0      47  stunted          
MAL-ED           India          Birth                    2         0        7      47  stunted          
MAL-ED           India          Birth                    2         1        4      47  stunted          
MAL-ED           India          Birth                    3         0       10      47  stunted          
MAL-ED           India          Birth                    3         1        2      47  stunted          
MAL-ED           India          Birth                    4         0       10      47  stunted          
MAL-ED           India          Birth                    4         1        4      47  stunted          
MAL-ED           India          6 months                 1         0       54     236  stunted          
MAL-ED           India          6 months                 1         1       12     236  stunted          
MAL-ED           India          6 months                 2         0       34     236  stunted          
MAL-ED           India          6 months                 2         1        8     236  stunted          
MAL-ED           India          6 months                 3         0       57     236  stunted          
MAL-ED           India          6 months                 3         1       16     236  stunted          
MAL-ED           India          6 months                 4         0       46     236  stunted          
MAL-ED           India          6 months                 4         1        9     236  stunted          
MAL-ED           India          24 months                1         0       30     202  stunted          
MAL-ED           India          24 months                1         1       21     202  stunted          
MAL-ED           India          24 months                2         0       29     202  stunted          
MAL-ED           India          24 months                2         1       26     202  stunted          
MAL-ED           India          24 months                3         0       25     202  stunted          
MAL-ED           India          24 months                3         1       23     202  stunted          
MAL-ED           India          24 months                4         0       23     202  stunted          
MAL-ED           India          24 months                4         1       25     202  stunted          
MAL-ED           Nepal          Birth                    1         0        5      27  stunted          
MAL-ED           Nepal          Birth                    1         1        0      27  stunted          
MAL-ED           Nepal          Birth                    2         0        9      27  stunted          
MAL-ED           Nepal          Birth                    2         1        1      27  stunted          
MAL-ED           Nepal          Birth                    3         0        6      27  stunted          
MAL-ED           Nepal          Birth                    3         1        1      27  stunted          
MAL-ED           Nepal          Birth                    4         0        5      27  stunted          
MAL-ED           Nepal          Birth                    4         1        0      27  stunted          
MAL-ED           Nepal          6 months                 1         0       57     236  stunted          
MAL-ED           Nepal          6 months                 1         1        3     236  stunted          
MAL-ED           Nepal          6 months                 2         0       58     236  stunted          
MAL-ED           Nepal          6 months                 2         1        1     236  stunted          
MAL-ED           Nepal          6 months                 3         0       58     236  stunted          
MAL-ED           Nepal          6 months                 3         1        1     236  stunted          
MAL-ED           Nepal          6 months                 4         0       51     236  stunted          
MAL-ED           Nepal          6 months                 4         1        7     236  stunted          
MAL-ED           Nepal          24 months                1         0       34     200  stunted          
MAL-ED           Nepal          24 months                1         1       17     200  stunted          
MAL-ED           Nepal          24 months                2         0       41     200  stunted          
MAL-ED           Nepal          24 months                2         1       15     200  stunted          
MAL-ED           Nepal          24 months                3         0       44     200  stunted          
MAL-ED           Nepal          24 months                3         1       11     200  stunted          
MAL-ED           Nepal          24 months                4         0       33     200  stunted          
MAL-ED           Nepal          24 months                4         1        5     200  stunted          
MAL-ED           Peru           Birth                    1         0       46     233  stunted          
MAL-ED           Peru           Birth                    1         1        3     233  stunted          
MAL-ED           Peru           Birth                    2         0       47     233  stunted          
MAL-ED           Peru           Birth                    2         1        7     233  stunted          
MAL-ED           Peru           Birth                    3         0       62     233  stunted          
MAL-ED           Peru           Birth                    3         1        7     233  stunted          
MAL-ED           Peru           Birth                    4         0       52     233  stunted          
MAL-ED           Peru           Birth                    4         1        9     233  stunted          
MAL-ED           Peru           6 months                 1         0       71     273  stunted          
MAL-ED           Peru           6 months                 1         1       25     273  stunted          
MAL-ED           Peru           6 months                 2         0       57     273  stunted          
MAL-ED           Peru           6 months                 2         1       20     273  stunted          
MAL-ED           Peru           6 months                 3         0       51     273  stunted          
MAL-ED           Peru           6 months                 3         1        9     273  stunted          
MAL-ED           Peru           6 months                 4         0       34     273  stunted          
MAL-ED           Peru           6 months                 4         1        6     273  stunted          
MAL-ED           Peru           24 months                1         0       30     199  stunted          
MAL-ED           Peru           24 months                1         1       16     199  stunted          
MAL-ED           Peru           24 months                2         0       24     199  stunted          
MAL-ED           Peru           24 months                2         1       18     199  stunted          
MAL-ED           Peru           24 months                3         0       32     199  stunted          
MAL-ED           Peru           24 months                3         1       19     199  stunted          
MAL-ED           Peru           24 months                4         0       33     199  stunted          
MAL-ED           Peru           24 months                4         1       27     199  stunted          
MAL-ED           South Africa   Birth                    1         0       22     123  stunted          
MAL-ED           South Africa   Birth                    1         1        3     123  stunted          
MAL-ED           South Africa   Birth                    2         0       21     123  stunted          
MAL-ED           South Africa   Birth                    2         1        2     123  stunted          
MAL-ED           South Africa   Birth                    3         0       32     123  stunted          
MAL-ED           South Africa   Birth                    3         1        3     123  stunted          
MAL-ED           South Africa   Birth                    4         0       38     123  stunted          
MAL-ED           South Africa   Birth                    4         1        2     123  stunted          
MAL-ED           South Africa   6 months                 1         0       82     254  stunted          
MAL-ED           South Africa   6 months                 1         1       24     254  stunted          
MAL-ED           South Africa   6 months                 2         0       53     254  stunted          
MAL-ED           South Africa   6 months                 2         1       14     254  stunted          
MAL-ED           South Africa   6 months                 3         0       41     254  stunted          
MAL-ED           South Africa   6 months                 3         1        4     254  stunted          
MAL-ED           South Africa   6 months                 4         0       28     254  stunted          
MAL-ED           South Africa   6 months                 4         1        8     254  stunted          
MAL-ED           South Africa   24 months                1         0       29     203  stunted          
MAL-ED           South Africa   24 months                1         1       16     203  stunted          
MAL-ED           South Africa   24 months                2         0       24     203  stunted          
MAL-ED           South Africa   24 months                2         1        7     203  stunted          
MAL-ED           South Africa   24 months                3         0       43     203  stunted          
MAL-ED           South Africa   24 months                3         1       29     203  stunted          
MAL-ED           South Africa   24 months                4         0       31     203  stunted          
MAL-ED           South Africa   24 months                4         1       24     203  stunted          
MAL-ED           Tanzania       Birth                    1         0       13     125  stunted          
MAL-ED           Tanzania       Birth                    1         1        5     125  stunted          
MAL-ED           Tanzania       Birth                    2         0       29     125  stunted          
MAL-ED           Tanzania       Birth                    2         1        6     125  stunted          
MAL-ED           Tanzania       Birth                    3         0       28     125  stunted          
MAL-ED           Tanzania       Birth                    3         1        6     125  stunted          
MAL-ED           Tanzania       Birth                    4         0       32     125  stunted          
MAL-ED           Tanzania       Birth                    4         1        6     125  stunted          
MAL-ED           Tanzania       6 months                 1         0       52     247  stunted          
MAL-ED           Tanzania       6 months                 1         1       19     247  stunted          
MAL-ED           Tanzania       6 months                 2         0       59     247  stunted          
MAL-ED           Tanzania       6 months                 2         1       21     247  stunted          
MAL-ED           Tanzania       6 months                 3         0       44     247  stunted          
MAL-ED           Tanzania       6 months                 3         1        9     247  stunted          
MAL-ED           Tanzania       6 months                 4         0       33     247  stunted          
MAL-ED           Tanzania       6 months                 4         1       10     247  stunted          
MAL-ED           Tanzania       24 months                1         0       13     183  stunted          
MAL-ED           Tanzania       24 months                1         1       34     183  stunted          
MAL-ED           Tanzania       24 months                2         0       14     183  stunted          
MAL-ED           Tanzania       24 months                2         1       36     183  stunted          
MAL-ED           Tanzania       24 months                3         0       15     183  stunted          
MAL-ED           Tanzania       24 months                3         1       33     183  stunted          
MAL-ED           Tanzania       24 months                4         0        7     183  stunted          
MAL-ED           Tanzania       24 months                4         1       31     183  stunted          
PROBIT           Belarus        Birth                    1         0     3775   13890  stunted          
PROBIT           Belarus        Birth                    1         1        5   13890  stunted          
PROBIT           Belarus        Birth                    2         0     4136   13890  stunted          
PROBIT           Belarus        Birth                    2         1       14   13890  stunted          
PROBIT           Belarus        Birth                    3         0     2707   13890  stunted          
PROBIT           Belarus        Birth                    3         1        8   13890  stunted          
PROBIT           Belarus        Birth                    4         0     3239   13890  stunted          
PROBIT           Belarus        Birth                    4         1        6   13890  stunted          
PROBIT           Belarus        6 months                 1         0     3414   15761  stunted          
PROBIT           Belarus        6 months                 1         1      198   15761  stunted          
PROBIT           Belarus        6 months                 2         0     2910   15761  stunted          
PROBIT           Belarus        6 months                 2         1      207   15761  stunted          
PROBIT           Belarus        6 months                 3         0     4239   15761  stunted          
PROBIT           Belarus        6 months                 3         1      273   15761  stunted          
PROBIT           Belarus        6 months                 4         0     4210   15761  stunted          
PROBIT           Belarus        6 months                 4         1      310   15761  stunted          
PROBIT           Belarus        24 months                1         0      260    1168  stunted          
PROBIT           Belarus        24 months                1         1       49    1168  stunted          
PROBIT           Belarus        24 months                2         0      322    1168  stunted          
PROBIT           Belarus        24 months                2         1       41    1168  stunted          
PROBIT           Belarus        24 months                3         0      203    1168  stunted          
PROBIT           Belarus        24 months                3         1       11    1168  stunted          
PROBIT           Belarus        24 months                4         0      266    1168  stunted          
PROBIT           Belarus        24 months                4         1       16    1168  stunted          
PROVIDE          Bangladesh     Birth                    1         0      133     539  stunted          
PROVIDE          Bangladesh     Birth                    1         1        6     539  stunted          
PROVIDE          Bangladesh     Birth                    2         0      173     539  stunted          
PROVIDE          Bangladesh     Birth                    2         1       28     539  stunted          
PROVIDE          Bangladesh     Birth                    3         0       97     539  stunted          
PROVIDE          Bangladesh     Birth                    3         1        5     539  stunted          
PROVIDE          Bangladesh     Birth                    4         0       88     539  stunted          
PROVIDE          Bangladesh     Birth                    4         1        9     539  stunted          
PROVIDE          Bangladesh     6 months                 1         0      108     604  stunted          
PROVIDE          Bangladesh     6 months                 1         1       14     604  stunted          
PROVIDE          Bangladesh     6 months                 2         0       84     604  stunted          
PROVIDE          Bangladesh     6 months                 2         1       16     604  stunted          
PROVIDE          Bangladesh     6 months                 3         0      164     604  stunted          
PROVIDE          Bangladesh     6 months                 3         1       47     604  stunted          
PROVIDE          Bangladesh     6 months                 4         0      152     604  stunted          
PROVIDE          Bangladesh     6 months                 4         1       19     604  stunted          
PROVIDE          Bangladesh     24 months                1         0       10      40  stunted          
PROVIDE          Bangladesh     24 months                1         1        3      40  stunted          
PROVIDE          Bangladesh     24 months                2         0       10      40  stunted          
PROVIDE          Bangladesh     24 months                2         1        9      40  stunted          
PROVIDE          Bangladesh     24 months                3         0        3      40  stunted          
PROVIDE          Bangladesh     24 months                3         1        1      40  stunted          
PROVIDE          Bangladesh     24 months                4         0        2      40  stunted          
PROVIDE          Bangladesh     24 months                4         1        2      40  stunted          
ResPak           Pakistan       Birth                    1         0        3      42  stunted          
ResPak           Pakistan       Birth                    1         1        0      42  stunted          
ResPak           Pakistan       Birth                    2         0        2      42  stunted          
ResPak           Pakistan       Birth                    2         1        0      42  stunted          
ResPak           Pakistan       Birth                    3         0       10      42  stunted          
ResPak           Pakistan       Birth                    3         1        6      42  stunted          
ResPak           Pakistan       Birth                    4         0       13      42  stunted          
ResPak           Pakistan       Birth                    4         1        8      42  stunted          
ResPak           Pakistan       6 months                 1         0       75     239  stunted          
ResPak           Pakistan       6 months                 1         1       32     239  stunted          
ResPak           Pakistan       6 months                 2         0       59     239  stunted          
ResPak           Pakistan       6 months                 2         1       39     239  stunted          
ResPak           Pakistan       6 months                 3         0        6     239  stunted          
ResPak           Pakistan       6 months                 3         1        2     239  stunted          
ResPak           Pakistan       6 months                 4         0       13     239  stunted          
ResPak           Pakistan       6 months                 4         1       13     239  stunted          
SAS-CompFeed     India          Birth                    1         0      193    1252  stunted          
SAS-CompFeed     India          Birth                    1         1       80    1252  stunted          
SAS-CompFeed     India          Birth                    2         0      311    1252  stunted          
SAS-CompFeed     India          Birth                    2         1       97    1252  stunted          
SAS-CompFeed     India          Birth                    3         0      161    1252  stunted          
SAS-CompFeed     India          Birth                    3         1       62    1252  stunted          
SAS-CompFeed     India          Birth                    4         0      238    1252  stunted          
SAS-CompFeed     India          Birth                    4         1      110    1252  stunted          
SAS-CompFeed     India          6 months                 1         0      248    1336  stunted          
SAS-CompFeed     India          6 months                 1         1      127    1336  stunted          
SAS-CompFeed     India          6 months                 2         0      168    1336  stunted          
SAS-CompFeed     India          6 months                 2         1       62    1336  stunted          
SAS-CompFeed     India          6 months                 3         0      327    1336  stunted          
SAS-CompFeed     India          6 months                 3         1      107    1336  stunted          
SAS-CompFeed     India          6 months                 4         0      213    1336  stunted          
SAS-CompFeed     India          6 months                 4         1       84    1336  stunted          
SAS-FoodSuppl    India          6 months                 1         0       99     380  stunted          
SAS-FoodSuppl    India          6 months                 1         1       61     380  stunted          
SAS-FoodSuppl    India          6 months                 2         0       20     380  stunted          
SAS-FoodSuppl    India          6 months                 2         1       17     380  stunted          
SAS-FoodSuppl    India          6 months                 3         0       59     380  stunted          
SAS-FoodSuppl    India          6 months                 3         1       47     380  stunted          
SAS-FoodSuppl    India          6 months                 4         0       39     380  stunted          
SAS-FoodSuppl    India          6 months                 4         1       38     380  stunted          
TanzaniaChild2   Tanzania       6 months                 1         0      473    2029  stunted          
TanzaniaChild2   Tanzania       6 months                 1         1       43    2029  stunted          
TanzaniaChild2   Tanzania       6 months                 2         0      516    2029  stunted          
TanzaniaChild2   Tanzania       6 months                 2         1       48    2029  stunted          
TanzaniaChild2   Tanzania       6 months                 3         0      410    2029  stunted          
TanzaniaChild2   Tanzania       6 months                 3         1       57    2029  stunted          
TanzaniaChild2   Tanzania       6 months                 4         0      433    2029  stunted          
TanzaniaChild2   Tanzania       6 months                 4         1       49    2029  stunted          
TanzaniaChild2   Tanzania       24 months                1         0        0       4  stunted          
TanzaniaChild2   Tanzania       24 months                1         1        0       4  stunted          
TanzaniaChild2   Tanzania       24 months                2         0        1       4  stunted          
TanzaniaChild2   Tanzania       24 months                2         1        1       4  stunted          
TanzaniaChild2   Tanzania       24 months                3         0        0       4  stunted          
TanzaniaChild2   Tanzania       24 months                3         1        0       4  stunted          
TanzaniaChild2   Tanzania       24 months                4         0        2       4  stunted          
TanzaniaChild2   Tanzania       24 months                4         1        0       4  stunted          
ZVITAMBO         Zimbabwe       Birth                    1         0     3438   13875  stunted          
ZVITAMBO         Zimbabwe       Birth                    1         1      295   13875  stunted          
ZVITAMBO         Zimbabwe       Birth                    2         0     2784   13875  stunted          
ZVITAMBO         Zimbabwe       Birth                    2         1      369   13875  stunted          
ZVITAMBO         Zimbabwe       Birth                    3         0     3151   13875  stunted          
ZVITAMBO         Zimbabwe       Birth                    3         1      304   13875  stunted          
ZVITAMBO         Zimbabwe       Birth                    4         0     3068   13875  stunted          
ZVITAMBO         Zimbabwe       Birth                    4         1      466   13875  stunted          
ZVITAMBO         Zimbabwe       6 months                 1         0     1768    8669  stunted          
ZVITAMBO         Zimbabwe       6 months                 1         1      394    8669  stunted          
ZVITAMBO         Zimbabwe       6 months                 2         0     1916    8669  stunted          
ZVITAMBO         Zimbabwe       6 months                 2         1      336    8669  stunted          
ZVITAMBO         Zimbabwe       6 months                 3         0     1670    8669  stunted          
ZVITAMBO         Zimbabwe       6 months                 3         1      343    8669  stunted          
ZVITAMBO         Zimbabwe       6 months                 4         0     1903    8669  stunted          
ZVITAMBO         Zimbabwe       6 months                 4         1      339    8669  stunted          
ZVITAMBO         Zimbabwe       24 months                1         0       25     316  stunted          
ZVITAMBO         Zimbabwe       24 months                1         1       13     316  stunted          
ZVITAMBO         Zimbabwe       24 months                2         0       47     316  stunted          
ZVITAMBO         Zimbabwe       24 months                2         1       31     316  stunted          
ZVITAMBO         Zimbabwe       24 months                3         0       44     316  stunted          
ZVITAMBO         Zimbabwe       24 months                3         1       40     316  stunted          
ZVITAMBO         Zimbabwe       24 months                4         0       61     316  stunted          
ZVITAMBO         Zimbabwe       24 months                4         1       55     316  stunted          


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
* studyid: CMIN, country: Bangladesh, agecat: Birth
* studyid: CONTENT, country: Peru, agecat: Birth
* studyid: CONTENT, country: Peru, agecat: 6 months
* studyid: CONTENT, country: Peru, agecat: 24 months
* studyid: EE, country: Pakistan, agecat: Birth
* studyid: EE, country: Pakistan, agecat: 6 months
* studyid: EE, country: Pakistan, agecat: 24 months
* studyid: GMS-Nepal, country: Nepal, agecat: Birth
* studyid: GMS-Nepal, country: Nepal, agecat: 6 months
* studyid: GMS-Nepal, country: Nepal, agecat: 24 months
* studyid: JiVitA-3, country: Bangladesh, agecat: 24 months
* studyid: LCNI-5, country: Malawi, agecat: 24 months
* studyid: MAL-ED, country: Brazil, agecat: Birth
* studyid: MAL-ED, country: Brazil, agecat: 6 months
* studyid: MAL-ED, country: Brazil, agecat: 24 months
* studyid: MAL-ED, country: India, agecat: Birth
* studyid: MAL-ED, country: Nepal, agecat: Birth
* studyid: MAL-ED, country: Nepal, agecat: 6 months
* studyid: MAL-ED, country: Peru, agecat: Birth
* studyid: MAL-ED, country: South Africa, agecat: Birth
* studyid: MAL-ED, country: South Africa, agecat: 6 months
* studyid: PROVIDE, country: Bangladesh, agecat: 24 months
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: 6 months
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
![](/tmp/a860f0a6-0d09-4332-8919-9b3c2ff821cd/dbae54f8-1840-4b5b-b407-0485f1e9f9c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a860f0a6-0d09-4332-8919-9b3c2ff821cd/dbae54f8-1840-4b5b-b407-0485f1e9f9c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a860f0a6-0d09-4332-8919-9b3c2ff821cd/dbae54f8-1840-4b5b-b407-0485f1e9f9c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a860f0a6-0d09-4332-8919-9b3c2ff821cd/dbae54f8-1840-4b5b-b407-0485f1e9f9c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -------------  ----------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   India          6 months    1                    NA                0.4059406    0.3100397   0.5018415
CMC-V-BCS-2002   India          6 months    2                    NA                0.2702703    0.1875416   0.3529989
CMC-V-BCS-2002   India          6 months    3                    NA                0.2268041    0.1433550   0.3102532
CMC-V-BCS-2002   India          6 months    4                    NA                0.3000000    0.1838895   0.4161105
CMC-V-BCS-2002   India          24 months   1                    NA                0.7701149    0.6815678   0.8586621
CMC-V-BCS-2002   India          24 months   2                    NA                0.7555556    0.6666348   0.8444763
CMC-V-BCS-2002   India          24 months   3                    NA                0.7446809    0.6564005   0.8329612
CMC-V-BCS-2002   India          24 months   4                    NA                0.7580645    0.6513046   0.8648244
CMIN             Bangladesh     6 months    1                    NA                0.3600000    0.2266786   0.4933214
CMIN             Bangladesh     6 months    2                    NA                0.2419355    0.1351160   0.3487550
CMIN             Bangladesh     6 months    3                    NA                0.4225352    0.3073999   0.5376705
CMIN             Bangladesh     6 months    4                    NA                0.5000000    0.3732237   0.6267763
CMIN             Bangladesh     24 months   1                    NA                0.7222222    0.6185321   0.8259124
CMIN             Bangladesh     24 months   2                    NA                0.7031250    0.5909405   0.8153095
CMIN             Bangladesh     24 months   3                    NA                0.6153846    0.4828575   0.7479117
CMIN             Bangladesh     24 months   4                    NA                0.7500000    0.6082350   0.8917650
Guatemala BSC    Guatemala      6 months    1                    NA                0.2500000    0.1402510   0.3597490
Guatemala BSC    Guatemala      6 months    2                    NA                0.3500000    0.2453061   0.4546939
Guatemala BSC    Guatemala      6 months    3                    NA                0.3218391    0.2235055   0.4201726
Guatemala BSC    Guatemala      6 months    4                    NA                0.2638889    0.1619144   0.3658634
IRC              India          Birth       1                    NA                0.1511628    0.0753585   0.2269671
IRC              India          Birth       2                    NA                0.1269841    0.0687726   0.1851957
IRC              India          Birth       3                    NA                0.0909091    0.0266151   0.1552031
IRC              India          Birth       4                    NA                0.0909091    0.0342071   0.1476111
IRC              India          6 months    1                    NA                0.2184874    0.1441530   0.2928218
IRC              India          6 months    2                    NA                0.2236842    0.1298822   0.3174863
IRC              India          6 months    3                    NA                0.2125984    0.1413527   0.2838441
IRC              India          6 months    4                    NA                0.3529412    0.2512236   0.4546587
IRC              India          24 months   1                    NA                0.5977011    0.4945126   0.7008897
IRC              India          24 months   2                    NA                0.3611111    0.2703926   0.4518296
IRC              India          24 months   3                    NA                0.4938272    0.3847913   0.6028630
IRC              India          24 months   4                    NA                0.3943662    0.2805247   0.5082077
JiVitA-3         Bangladesh     Birth       1                    NA                0.3598231    0.3477243   0.3719218
JiVitA-3         Bangladesh     Birth       2                    NA                0.3398356    0.3272214   0.3524497
JiVitA-3         Bangladesh     Birth       3                    NA                0.2907679    0.2756546   0.3058812
JiVitA-3         Bangladesh     Birth       4                    NA                0.3037200    0.2875881   0.3198520
JiVitA-3         Bangladesh     6 months    1                    NA                0.2478518    0.2331322   0.2625713
JiVitA-3         Bangladesh     6 months    2                    NA                0.2358517    0.2200636   0.2516398
JiVitA-3         Bangladesh     6 months    3                    NA                0.2555513    0.2416973   0.2694053
JiVitA-3         Bangladesh     6 months    4                    NA                0.2623948    0.2480195   0.2767700
JiVitA-4         Bangladesh     Birth       1                    NA                0.3423423    0.2861625   0.3985222
JiVitA-4         Bangladesh     Birth       2                    NA                0.2222222    0.1662157   0.2782288
JiVitA-4         Bangladesh     Birth       3                    NA                0.3254573    0.2954342   0.3554804
JiVitA-4         Bangladesh     Birth       4                    NA                0.2785863    0.2428495   0.3143231
JiVitA-4         Bangladesh     6 months    1                    NA                0.2579986    0.2336827   0.2823146
JiVitA-4         Bangladesh     6 months    2                    NA                0.2552622    0.2345697   0.2759546
JiVitA-4         Bangladesh     6 months    3                    NA                0.2245223    0.1888286   0.2602160
JiVitA-4         Bangladesh     6 months    4                    NA                0.2809917    0.1938681   0.3681153
JiVitA-4         Bangladesh     24 months   1                    NA                0.5707317    0.4944735   0.6469899
JiVitA-4         Bangladesh     24 months   2                    NA                0.3615385    0.2740447   0.4490322
JiVitA-4         Bangladesh     24 months   3                    NA                0.4711538    0.4198953   0.5224124
JiVitA-4         Bangladesh     24 months   4                    NA                0.4391408    0.3814497   0.4968319
Keneba           Gambia         Birth       1                    NA                0.0558036    0.0345412   0.0770660
Keneba           Gambia         Birth       2                    NA                0.0796253    0.0539401   0.1053105
Keneba           Gambia         Birth       3                    NA                0.0238095    0.0084356   0.0391835
Keneba           Gambia         Birth       4                    NA                0.0517241    0.0262263   0.0772220
Keneba           Gambia         6 months    1                    NA                0.1831897    0.1479847   0.2183946
Keneba           Gambia         6 months    2                    NA                0.1307190    0.0998732   0.1615647
Keneba           Gambia         6 months    3                    NA                0.1353135    0.1080730   0.1625541
Keneba           Gambia         6 months    4                    NA                0.1196429    0.0927566   0.1465291
Keneba           Gambia         24 months   1                    NA                0.2921348    0.2252831   0.3589866
Keneba           Gambia         24 months   2                    NA                0.4027778    0.3373248   0.4682308
Keneba           Gambia         24 months   3                    NA                0.4000000    0.3157267   0.4842733
Keneba           Gambia         24 months   4                    NA                0.3406593    0.2717568   0.4095619
LCNI-5           Malawi         6 months    1                    NA                0.3627451    0.2967291   0.4287611
LCNI-5           Malawi         6 months    2                    NA                0.3855799    0.3321356   0.4390243
LCNI-5           Malawi         6 months    3                    NA                0.3716814    0.2825269   0.4608359
LCNI-5           Malawi         6 months    4                    NA                0.3448276    0.2794035   0.4102517
MAL-ED           Bangladesh     Birth       1                    NA                0.1764706    0.0856652   0.2672759
MAL-ED           Bangladesh     Birth       2                    NA                0.1568627    0.0568365   0.2568890
MAL-ED           Bangladesh     Birth       3                    NA                0.1875000    0.0916676   0.2833324
MAL-ED           Bangladesh     Birth       4                    NA                0.2500000    0.1272362   0.3727638
MAL-ED           Bangladesh     6 months    1                    NA                0.2545455    0.1391834   0.3699075
MAL-ED           Bangladesh     6 months    2                    NA                0.1126761    0.0389741   0.1863780
MAL-ED           Bangladesh     6 months    3                    NA                0.1666667    0.0721716   0.2611617
MAL-ED           Bangladesh     6 months    4                    NA                0.2181818    0.1088034   0.3275603
MAL-ED           Bangladesh     24 months   1                    NA                0.5918367    0.4538516   0.7298219
MAL-ED           Bangladesh     24 months   2                    NA                0.3921569    0.2578021   0.5265116
MAL-ED           Bangladesh     24 months   3                    NA                0.4883721    0.3385656   0.6381786
MAL-ED           Bangladesh     24 months   4                    NA                0.4318182    0.2850675   0.5785689
MAL-ED           India          6 months    1                    NA                0.1818182    0.0885697   0.2750667
MAL-ED           India          6 months    2                    NA                0.1904762    0.0714670   0.3094854
MAL-ED           India          6 months    3                    NA                0.2191781    0.1240775   0.3142787
MAL-ED           India          6 months    4                    NA                0.1636364    0.0656589   0.2616139
MAL-ED           India          24 months   1                    NA                0.4117647    0.2763578   0.5471716
MAL-ED           India          24 months   2                    NA                0.4727273    0.3404554   0.6049991
MAL-ED           India          24 months   3                    NA                0.4791667    0.3374902   0.6208432
MAL-ED           India          24 months   4                    NA                0.5208333    0.3791568   0.6625098
MAL-ED           Nepal          24 months   1                    NA                0.3333333    0.2036318   0.4630349
MAL-ED           Nepal          24 months   2                    NA                0.2678571    0.1515806   0.3841337
MAL-ED           Nepal          24 months   3                    NA                0.2000000    0.0940221   0.3059779
MAL-ED           Nepal          24 months   4                    NA                0.1315789    0.0238325   0.2393254
MAL-ED           Peru           6 months    1                    NA                0.2604167    0.1724664   0.3483670
MAL-ED           Peru           6 months    2                    NA                0.2597403    0.1616194   0.3578611
MAL-ED           Peru           6 months    3                    NA                0.1500000    0.0594842   0.2405158
MAL-ED           Peru           6 months    4                    NA                0.1500000    0.0391412   0.2608588
MAL-ED           Peru           24 months   1                    NA                0.3478261    0.2098430   0.4858092
MAL-ED           Peru           24 months   2                    NA                0.4285714    0.2785304   0.5786124
MAL-ED           Peru           24 months   3                    NA                0.3725490    0.2395224   0.5055756
MAL-ED           Peru           24 months   4                    NA                0.4500000    0.3238016   0.5761984
MAL-ED           South Africa   24 months   1                    NA                0.3555556    0.2153515   0.4957596
MAL-ED           South Africa   24 months   2                    NA                0.2258065    0.0782587   0.3733542
MAL-ED           South Africa   24 months   3                    NA                0.4027778    0.2892101   0.5163455
MAL-ED           South Africa   24 months   4                    NA                0.4363636    0.3049735   0.5677538
MAL-ED           Tanzania       Birth       1                    NA                0.2777778    0.0700282   0.4855274
MAL-ED           Tanzania       Birth       2                    NA                0.1714286    0.0460669   0.2967903
MAL-ED           Tanzania       Birth       3                    NA                0.1764706    0.0478150   0.3051261
MAL-ED           Tanzania       Birth       4                    NA                0.1578947    0.0414909   0.2742986
MAL-ED           Tanzania       6 months    1                    NA                0.2676056    0.1644198   0.3707914
MAL-ED           Tanzania       6 months    2                    NA                0.2625000    0.1658883   0.3591117
MAL-ED           Tanzania       6 months    3                    NA                0.1698113    0.0685222   0.2711004
MAL-ED           Tanzania       6 months    4                    NA                0.2325581    0.1060311   0.3590852
MAL-ED           Tanzania       24 months   1                    NA                0.7234043    0.5951705   0.8516380
MAL-ED           Tanzania       24 months   2                    NA                0.7200000    0.5952047   0.8447953
MAL-ED           Tanzania       24 months   3                    NA                0.6875000    0.5560143   0.8189857
MAL-ED           Tanzania       24 months   4                    NA                0.8157895    0.6921969   0.9393821
PROBIT           Belarus        Birth       1                    NA                0.0013228   -0.0000964   0.0027419
PROBIT           Belarus        Birth       2                    NA                0.0033735    0.0003960   0.0063510
PROBIT           Belarus        Birth       3                    NA                0.0029466    0.0010105   0.0048827
PROBIT           Belarus        Birth       4                    NA                0.0018490    0.0009021   0.0027959
PROBIT           Belarus        6 months    1                    NA                0.0548173    0.0373273   0.0723073
PROBIT           Belarus        6 months    2                    NA                0.0664100    0.0487823   0.0840378
PROBIT           Belarus        6 months    3                    NA                0.0605053    0.0444815   0.0765292
PROBIT           Belarus        6 months    4                    NA                0.0685841    0.0508807   0.0862875
PROBIT           Belarus        24 months   1                    NA                0.1585761    0.0786755   0.2384766
PROBIT           Belarus        24 months   2                    NA                0.1129477    0.0544359   0.1714595
PROBIT           Belarus        24 months   3                    NA                0.0514019    0.0090283   0.0937754
PROBIT           Belarus        24 months   4                    NA                0.0567376    0.0073852   0.1060900
PROVIDE          Bangladesh     Birth       1                    NA                0.0431655    0.0093488   0.0769821
PROVIDE          Bangladesh     Birth       2                    NA                0.1393035    0.0913898   0.1872171
PROVIDE          Bangladesh     Birth       3                    NA                0.0490196    0.0070802   0.0909590
PROVIDE          Bangladesh     Birth       4                    NA                0.0927835    0.0349930   0.1505740
PROVIDE          Bangladesh     6 months    1                    NA                0.1147541    0.0581505   0.1713577
PROVIDE          Bangladesh     6 months    2                    NA                0.1600000    0.0880870   0.2319130
PROVIDE          Bangladesh     6 months    3                    NA                0.2227488    0.1665593   0.2789383
PROVIDE          Bangladesh     6 months    4                    NA                0.1111111    0.0639686   0.1582536
SAS-CompFeed     India          Birth       1                    NA                0.2930403    0.2401803   0.3459003
SAS-CompFeed     India          Birth       2                    NA                0.2377451    0.1846132   0.2908770
SAS-CompFeed     India          Birth       3                    NA                0.2780269    0.1991060   0.3569479
SAS-CompFeed     India          Birth       4                    NA                0.3160920    0.2664080   0.3657759
SAS-CompFeed     India          6 months    1                    NA                0.3386667    0.2876927   0.3896407
SAS-CompFeed     India          6 months    2                    NA                0.2695652    0.2239967   0.3151337
SAS-CompFeed     India          6 months    3                    NA                0.2465438    0.2150670   0.2780205
SAS-CompFeed     India          6 months    4                    NA                0.2828283    0.2352954   0.3303611
SAS-FoodSuppl    India          6 months    1                    NA                0.3812500    0.3058931   0.4566069
SAS-FoodSuppl    India          6 months    2                    NA                0.4594595    0.2986702   0.6202488
SAS-FoodSuppl    India          6 months    3                    NA                0.4433962    0.3486992   0.5380933
SAS-FoodSuppl    India          6 months    4                    NA                0.4935065    0.3816894   0.6053236
TanzaniaChild2   Tanzania       6 months    1                    NA                0.0833333    0.0594802   0.1071865
TanzaniaChild2   Tanzania       6 months    2                    NA                0.0851064    0.0620717   0.1081411
TanzaniaChild2   Tanzania       6 months    3                    NA                0.1220557    0.0923589   0.1517524
TanzaniaChild2   Tanzania       6 months    4                    NA                0.1016598    0.0746745   0.1286450
ZVITAMBO         Zimbabwe       Birth       1                    NA                0.0790249    0.0703704   0.0876794
ZVITAMBO         Zimbabwe       Birth       2                    NA                0.1170314    0.1058106   0.1282522
ZVITAMBO         Zimbabwe       Birth       3                    NA                0.0879884    0.0785423   0.0974345
ZVITAMBO         Zimbabwe       Birth       4                    NA                0.1318619    0.1207065   0.1430173
ZVITAMBO         Zimbabwe       6 months    1                    NA                0.1822387    0.1659652   0.1985121
ZVITAMBO         Zimbabwe       6 months    2                    NA                0.1492007    0.1344848   0.1639166
ZVITAMBO         Zimbabwe       6 months    3                    NA                0.1703924    0.1539672   0.1868177
ZVITAMBO         Zimbabwe       6 months    4                    NA                0.1512043    0.1363744   0.1660342
ZVITAMBO         Zimbabwe       24 months   1                    NA                0.3421053    0.1910268   0.4931838
ZVITAMBO         Zimbabwe       24 months   2                    NA                0.3974359    0.2886621   0.5062097
ZVITAMBO         Zimbabwe       24 months   3                    NA                0.4761905    0.3692176   0.5831634
ZVITAMBO         Zimbabwe       24 months   4                    NA                0.4741379    0.3831266   0.5651493


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -------------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India          6 months    NA                   NA                0.3008130   0.2539566   0.3476694
CMC-V-BCS-2002   India          24 months   NA                   NA                0.7567568   0.7106061   0.8029074
CMIN             Bangladesh     6 months    NA                   NA                0.3827160   0.3214780   0.4439541
CMIN             Bangladesh     24 months   NA                   NA                0.6964286   0.6360804   0.7567768
Guatemala BSC    Guatemala      6 months    NA                   NA                0.3010033   0.2489243   0.3530824
IRC              India          Birth       NA                   NA                0.1159794   0.0840777   0.1478811
IRC              India          6 months    NA                   NA                0.2457002   0.2038248   0.2875757
IRC              India          24 months   NA                   NA                0.4582133   0.4057134   0.5107131
JiVitA-3         Bangladesh     Birth       NA                   NA                0.3289690   0.3216017   0.3363364
JiVitA-3         Bangladesh     6 months    NA                   NA                0.2513830   0.2432594   0.2595066
JiVitA-4         Bangladesh     Birth       NA                   NA                0.3035778   0.2836422   0.3235133
JiVitA-4         Bangladesh     6 months    NA                   NA                0.2527427   0.2386864   0.2667990
JiVitA-4         Bangladesh     24 months   NA                   NA                0.4654631   0.4328363   0.4980899
Keneba           Gambia         Birth       NA                   NA                0.0537913   0.0425309   0.0650518
Keneba           Gambia         6 months    NA                   NA                0.1407372   0.1258213   0.1556531
Keneba           Gambia         24 months   NA                   NA                0.3583569   0.3229606   0.3937533
LCNI-5           Malawi         6 months    NA                   NA                0.3682956   0.3356382   0.4009530
MAL-ED           Bangladesh     Birth       NA                   NA                0.1904762   0.1397281   0.2412242
MAL-ED           Bangladesh     6 months    NA                   NA                0.1825726   0.1336978   0.2314474
MAL-ED           Bangladesh     24 months   NA                   NA                0.4759358   0.4041633   0.5477083
MAL-ED           India          6 months    NA                   NA                0.1906780   0.1404524   0.2409036
MAL-ED           India          24 months   NA                   NA                0.4702970   0.4012965   0.5392976
MAL-ED           Nepal          24 months   NA                   NA                0.2400000   0.1806619   0.2993381
MAL-ED           Peru           6 months    NA                   NA                0.2197802   0.1705687   0.2689917
MAL-ED           Peru           24 months   NA                   NA                0.4020101   0.3337163   0.4703038
MAL-ED           South Africa   24 months   NA                   NA                0.3743842   0.3076444   0.4411241
MAL-ED           Tanzania       Birth       NA                   NA                0.1840000   0.1157989   0.2522011
MAL-ED           Tanzania       6 months    NA                   NA                0.2388664   0.1855834   0.2921494
MAL-ED           Tanzania       24 months   NA                   NA                0.7322404   0.6679107   0.7965702
PROBIT           Belarus        Birth       NA                   NA                0.0023758   0.0010936   0.0036580
PROBIT           Belarus        6 months    NA                   NA                0.0626864   0.0488489   0.0765238
PROBIT           Belarus        24 months   NA                   NA                0.1001712   0.0628632   0.1374793
PROVIDE          Bangladesh     Birth       NA                   NA                0.0890538   0.0649864   0.1131212
PROVIDE          Bangladesh     6 months    NA                   NA                0.1589404   0.1297581   0.1881227
SAS-CompFeed     India          Birth       NA                   NA                0.2787540   0.2475949   0.3099131
SAS-CompFeed     India          6 months    NA                   NA                0.2844311   0.2666491   0.3022132
SAS-FoodSuppl    India          6 months    NA                   NA                0.4289474   0.3791199   0.4787748
TanzaniaChild2   Tanzania       6 months    NA                   NA                0.0970922   0.0842059   0.1099785
ZVITAMBO         Zimbabwe       Birth       NA                   NA                0.1033514   0.0982859   0.1084168
ZVITAMBO         Zimbabwe       6 months    NA                   NA                0.1628792   0.1551057   0.1706527
ZVITAMBO         Zimbabwe       24 months   NA                   NA                0.4398734   0.3850584   0.4946885


### Parameter: RR


studyid          country        agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -------------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India          6 months    1                    1                 1.0000000   1.0000000   1.0000000
CMC-V-BCS-2002   India          6 months    2                    1                 0.6657877   0.4522843   0.9800767
CMC-V-BCS-2002   India          6 months    3                    1                 0.5587126   0.3608224   0.8651342
CMC-V-BCS-2002   India          6 months    4                    1                 0.7390244   0.4696049   1.1630140
CMC-V-BCS-2002   India          24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMC-V-BCS-2002   India          24 months   2                    1                 0.9810945   0.8322528   1.1565554
CMC-V-BCS-2002   India          24 months   3                    1                 0.9669736   0.8197697   1.1406107
CMC-V-BCS-2002   India          24 months   4                    1                 0.9843524   0.8207156   1.1806157
CMIN             Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
CMIN             Bangladesh     6 months    2                    1                 0.6720430   0.3776809   1.1958290
CMIN             Bangladesh     6 months    3                    1                 1.1737089   0.7411054   1.8588350
CMIN             Bangladesh     6 months    4                    1                 1.3888889   0.8866412   2.1756404
CMIN             Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMIN             Bangladesh     24 months   2                    1                 0.9735577   0.7854994   1.2066395
CMIN             Bangladesh     24 months   3                    1                 0.8520710   0.6577623   1.1037803
CMIN             Bangladesh     24 months   4                    1                 1.0384615   0.8190397   1.3166667
Guatemala BSC    Guatemala      6 months    1                    1                 1.0000000   1.0000000   1.0000000
Guatemala BSC    Guatemala      6 months    2                    1                 1.4000000   0.8230432   2.3814060
Guatemala BSC    Guatemala      6 months    3                    1                 1.2873563   0.7540743   2.1977758
Guatemala BSC    Guatemala      6 months    4                    1                 1.0555556   0.5881465   1.8944218
IRC              India          Birth       1                    1                 1.0000000   1.0000000   1.0000000
IRC              India          Birth       2                    1                 0.8400488   0.4258267   1.6572048
IRC              India          Birth       3                    1                 0.6013986   0.2527186   1.4311582
IRC              India          Birth       4                    1                 0.6013986   0.2701404   1.3388602
IRC              India          6 months    1                    1                 1.0000000   1.0000000   1.0000000
IRC              India          6 months    2                    1                 1.0237854   0.5966056   1.7568332
IRC              India          6 months    3                    1                 0.9730466   0.6035807   1.5686713
IRC              India          6 months    4                    1                 1.6153846   1.0342651   2.5230161
IRC              India          24 months   1                    1                 1.0000000   1.0000000   1.0000000
IRC              India          24 months   2                    1                 0.6041667   0.4454241   0.8194827
IRC              India          24 months   3                    1                 0.8262108   0.6242618   1.0934905
IRC              India          24 months   4                    1                 0.6598050   0.4713440   0.9236197
JiVitA-3         Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh     Birth       2                    1                 0.9444519   0.9000100   0.9910883
JiVitA-3         Bangladesh     Birth       3                    1                 0.8080858   0.7604274   0.8587311
JiVitA-3         Bangladesh     Birth       4                    1                 0.8440816   0.7936582   0.8977085
JiVitA-3         Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh     6 months    2                    1                 0.9515836   0.8730714   1.0371561
JiVitA-3         Bangladesh     6 months    3                    1                 1.0310651   0.9566284   1.1112937
JiVitA-3         Bangladesh     6 months    4                    1                 1.0586762   0.9787407   1.1451400
JiVitA-4         Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh     Birth       2                    1                 0.6491228   0.4834773   0.8715205
JiVitA-4         Bangladesh     Birth       3                    1                 0.9506780   0.7870922   1.1482626
JiVitA-4         Bangladesh     Birth       4                    1                 0.8137652   0.6603755   1.0027837
JiVitA-4         Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh     6 months    2                    1                 0.9893934   0.8712003   1.1236214
JiVitA-4         Bangladesh     6 months    3                    1                 0.8702460   0.7203383   1.0513507
JiVitA-4         Bangladesh     6 months    4                    1                 1.0891210   0.7835907   1.5137809
JiVitA-4         Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh     24 months   2                    1                 0.6334648   0.4808436   0.8345284
JiVitA-4         Bangladesh     24 months   3                    1                 0.8255260   0.6952997   0.9801429
JiVitA-4         Bangladesh     24 months   4                    1                 0.7694348   0.6388255   0.9267473
Keneba           Gambia         Birth       1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia         Birth       2                    1                 1.4268852   0.8661143   2.3507307
Keneba           Gambia         Birth       3                    1                 0.4266667   0.2015949   0.9030210
Keneba           Gambia         Birth       4                    1                 0.9268966   0.4971025   1.7282900
Keneba           Gambia         6 months    1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia         6 months    2                    1                 0.7135717   0.5263452   0.9673966
Keneba           Gambia         6 months    3                    1                 0.7386527   0.5592027   0.9756888
Keneba           Gambia         6 months    4                    1                 0.6531092   0.4859256   0.8778128
Keneba           Gambia         24 months   1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia         24 months   2                    1                 1.3787393   1.0413325   1.8254707
Keneba           Gambia         24 months   3                    1                 1.3692308   1.0032003   1.8688122
Keneba           Gambia         24 months   4                    1                 1.1661031   0.8592068   1.5826184
LCNI-5           Malawi         6 months    1                    1                 1.0000000   1.0000000   1.0000000
LCNI-5           Malawi         6 months    2                    1                 1.0629501   0.8455950   1.3361750
LCNI-5           Malawi         6 months    3                    1                 1.0246353   0.7582392   1.3846257
LCNI-5           Malawi         6 months    4                    1                 0.9506058   0.7308416   1.2364531
MAL-ED           Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh     Birth       2                    1                 0.8888889   0.3917347   2.0169860
MAL-ED           Bangladesh     Birth       3                    1                 1.0625000   0.5144599   2.1943523
MAL-ED           Bangladesh     Birth       4                    1                 1.4166667   0.6956091   2.8851612
MAL-ED           Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh     6 months    2                    1                 0.4426559   0.1997412   0.9809907
MAL-ED           Bangladesh     6 months    3                    1                 0.6547619   0.3168490   1.3530519
MAL-ED           Bangladesh     6 months    4                    1                 0.8571429   0.4360671   1.6848185
MAL-ED           Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh     24 months   2                    1                 0.6626099   0.4378063   1.0028451
MAL-ED           Bangladesh     24 months   3                    1                 0.8251804   0.5613297   1.2130531
MAL-ED           Bangladesh     24 months   4                    1                 0.7296238   0.4831846   1.1017548
MAL-ED           India          6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           India          6 months    2                    1                 1.0476190   0.4668184   2.3510333
MAL-ED           India          6 months    3                    1                 1.2054795   0.6157526   2.3600076
MAL-ED           India          6 months    4                    1                 0.9000000   0.4091246   1.9798372
MAL-ED           India          24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           India          24 months   2                    1                 1.1480519   0.7454931   1.7679887
MAL-ED           India          24 months   3                    1                 1.1636905   0.7477945   1.8108925
MAL-ED           India          24 months   4                    1                 1.2648810   0.8254777   1.9381793
MAL-ED           Nepal          24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Nepal          24 months   2                    1                 0.8035714   0.4485877   1.4394665
MAL-ED           Nepal          24 months   3                    1                 0.6000000   0.3109157   1.1578702
MAL-ED           Nepal          24 months   4                    1                 0.3947368   0.1594294   0.9773425
MAL-ED           Peru           6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Peru           6 months    2                    1                 0.9974026   0.6009022   1.6555306
MAL-ED           Peru           6 months    3                    1                 0.5760000   0.2884691   1.1501265
MAL-ED           Peru           6 months    4                    1                 0.5760000   0.2555808   1.2981256
MAL-ED           Peru           24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Peru           24 months   2                    1                 1.2321429   0.7259038   2.0914287
MAL-ED           Peru           24 months   3                    1                 1.0710784   0.6280924   1.8264973
MAL-ED           Peru           24 months   4                    1                 1.2937500   0.7959069   2.1029960
MAL-ED           South Africa   24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           South Africa   24 months   2                    1                 0.6350806   0.2960604   1.3623145
MAL-ED           South Africa   24 months   3                    1                 1.1328125   0.6976360   1.8394466
MAL-ED           South Africa   24 months   4                    1                 1.2272727   0.7472580   2.0156336
MAL-ED           Tanzania       Birth       1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania       Birth       2                    1                 0.6171429   0.2168270   1.7565400
MAL-ED           Tanzania       Birth       3                    1                 0.6352941   0.2235520   1.8053903
MAL-ED           Tanzania       Birth       4                    1                 0.5684211   0.1988786   1.6246216
MAL-ED           Tanzania       6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania       6 months    2                    1                 0.9809211   0.5756203   1.6715988
MAL-ED           Tanzania       6 months    3                    1                 0.6345581   0.3118960   1.2910199
MAL-ED           Tanzania       6 months    4                    1                 0.8690330   0.4460953   1.6929531
MAL-ED           Tanzania       24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania       24 months   2                    1                 0.9952941   0.7767491   1.2753287
MAL-ED           Tanzania       24 months   3                    1                 0.9503676   0.7322199   1.2335074
MAL-ED           Tanzania       24 months   4                    1                 1.1277090   0.8931538   1.4238617
PROBIT           Belarus        Birth       1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus        Birth       2                    1                 2.5503614   0.8198873   7.9332165
PROBIT           Belarus        Birth       3                    1                 2.2276243   0.7420525   6.6872760
PROBIT           Belarus        Birth       4                    1                 1.3978428   0.4347644   4.4943068
PROBIT           Belarus        6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus        6 months    2                    1                 1.2114796   0.8934261   1.6427578
PROBIT           Belarus        6 months    3                    1                 1.1037637   0.8431741   1.4448905
PROBIT           Belarus        6 months    4                    1                 1.2511397   0.9258921   1.6906404
PROBIT           Belarus        24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus        24 months   2                    1                 0.7122618   0.3464758   1.4642202
PROBIT           Belarus        24 months   3                    1                 0.3241465   0.1280393   0.8206150
PROBIT           Belarus        24 months   4                    1                 0.3577942   0.1311836   0.9758592
PROVIDE          Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh     Birth       2                    1                 3.2271972   1.3716521   7.5928885
PROVIDE          Bangladesh     Birth       3                    1                 1.1356209   0.3559809   3.6227637
PROVIDE          Bangladesh     Birth       4                    1                 2.1494844   0.7900830   5.8478452
PROVIDE          Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh     6 months    2                    1                 1.3942857   0.7153824   2.7174735
PROVIDE          Bangladesh     6 months    3                    1                 1.9410968   1.1154227   3.3779634
PROVIDE          Bangladesh     6 months    4                    1                 0.9682540   0.5051540   1.8559008
SAS-CompFeed     India          Birth       1                    1                 1.0000000   1.0000000   1.0000000
SAS-CompFeed     India          Birth       2                    1                 0.8113051   0.6607802   0.9961196
SAS-CompFeed     India          Birth       3                    1                 0.9487668   0.7364794   1.2222452
SAS-CompFeed     India          Birth       4                    1                 1.0786638   0.8627896   1.3485508
SAS-CompFeed     India          6 months    1                    1                 1.0000000   1.0000000   1.0000000
SAS-CompFeed     India          6 months    2                    1                 0.7959603   0.6496147   0.9752747
SAS-CompFeed     India          6 months    3                    1                 0.7279836   0.6073559   0.8725693
SAS-CompFeed     India          6 months    4                    1                 0.8351229   0.6434228   1.0839378
SAS-FoodSuppl    India          6 months    1                    1                 1.0000000   1.0000000   1.0000000
SAS-FoodSuppl    India          6 months    2                    1                 1.2051396   0.8062837   1.8013032
SAS-FoodSuppl    India          6 months    3                    1                 1.1630065   0.8693649   1.5558301
SAS-FoodSuppl    India          6 months    4                    1                 1.2944433   0.9583001   1.7484955
TanzaniaChild2   Tanzania       6 months    1                    1                 1.0000000   1.0000000   1.0000000
TanzaniaChild2   Tanzania       6 months    2                    1                 1.0212766   0.6887445   1.5143581
TanzaniaChild2   Tanzania       6 months    3                    1                 1.4646681   1.0059746   2.1325117
TanzaniaChild2   Tanzania       6 months    4                    1                 1.2199170   0.8256421   1.8024728
ZVITAMBO         Zimbabwe       Birth       1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe       Birth       2                    1                 1.4809431   1.2803371   1.7129805
ZVITAMBO         Zimbabwe       Birth       3                    1                 1.1134264   0.9551211   1.2979698
ZVITAMBO         Zimbabwe       Birth       4                    1                 1.6686119   1.4529647   1.9162653
ZVITAMBO         Zimbabwe       6 months    1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe       6 months    2                    1                 0.8187105   0.7167168   0.9352186
ZVITAMBO         Zimbabwe       6 months    3                    1                 0.9349961   0.8198660   1.0662934
ZVITAMBO         Zimbabwe       6 months    4                    1                 0.8297047   0.7266388   0.9473894
ZVITAMBO         Zimbabwe       24 months   1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe       24 months   2                    1                 1.1617357   0.6909890   1.9531856
ZVITAMBO         Zimbabwe       24 months   3                    1                 1.3919414   0.8480909   2.2845439
ZVITAMBO         Zimbabwe       24 months   4                    1                 1.3859416   0.8562891   2.2432076


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          6 months    1                    NA                -0.1051276   -0.1848637   -0.0253915
CMC-V-BCS-2002   India          24 months   1                    NA                -0.0133582   -0.0899975    0.0632812
CMIN             Bangladesh     6 months    1                    NA                 0.0227160   -0.0964898    0.1419219
CMIN             Bangladesh     24 months   1                    NA                -0.0257937   -0.1122909    0.0607036
Guatemala BSC    Guatemala      6 months    1                    NA                 0.0510033   -0.0486110    0.1506177
IRC              India          Birth       1                    NA                -0.0351834   -0.1001194    0.0297526
IRC              India          6 months    1                    NA                 0.0272129   -0.0364108    0.0908365
IRC              India          24 months   1                    NA                -0.1394879   -0.2292923   -0.0496835
JiVitA-3         Bangladesh     Birth       1                    NA                -0.0308540   -0.0409680   -0.0207400
JiVitA-3         Bangladesh     6 months    1                    NA                 0.0035313   -0.0089862    0.0160487
JiVitA-4         Bangladesh     Birth       1                    NA                -0.0387646   -0.0918708    0.0143416
JiVitA-4         Bangladesh     6 months    1                    NA                -0.0052559   -0.0270343    0.0165224
JiVitA-4         Bangladesh     24 months   1                    NA                -0.1052686   -0.1759008   -0.0346364
Keneba           Gambia         Birth       1                    NA                -0.0020123   -0.0197989    0.0157744
Keneba           Gambia         6 months    1                    NA                -0.0424525   -0.0726402   -0.0122647
Keneba           Gambia         24 months   1                    NA                 0.0662221    0.0073282    0.1251160
LCNI-5           Malawi         6 months    1                    NA                 0.0055505   -0.0519412    0.0630422
MAL-ED           Bangladesh     Birth       1                    NA                 0.0140056   -0.0632370    0.0912482
MAL-ED           Bangladesh     6 months    1                    NA                -0.0719728   -0.1700686    0.0261229
MAL-ED           Bangladesh     24 months   1                    NA                -0.1159009   -0.2351194    0.0033176
MAL-ED           India          6 months    1                    NA                 0.0088598   -0.0708549    0.0885745
MAL-ED           India          24 months   1                    NA                 0.0585323   -0.0591019    0.1761666
MAL-ED           Nepal          24 months   1                    NA                -0.0933333   -0.2017955    0.0151288
MAL-ED           Peru           6 months    1                    NA                -0.0406364   -0.1093157    0.0280428
MAL-ED           Peru           24 months   1                    NA                 0.0541840   -0.0678868    0.1762547
MAL-ED           South Africa   24 months   1                    NA                 0.0188287   -0.1052535    0.1429108
MAL-ED           Tanzania       Birth       1                    NA                -0.0937778   -0.2818768    0.0943212
MAL-ED           Tanzania       6 months    1                    NA                -0.0287392   -0.1145603    0.0570819
MAL-ED           Tanzania       24 months   1                    NA                 0.0088362   -0.1013256    0.1189980
PROBIT           Belarus        Birth       1                    NA                 0.0010531   -0.0001184    0.0022245
PROBIT           Belarus        6 months    1                    NA                 0.0078691   -0.0031355    0.0188737
PROBIT           Belarus        24 months   1                    NA                -0.0584048   -0.1242957    0.0074861
PROVIDE          Bangladesh     Birth       1                    NA                 0.0458883    0.0122284    0.0795482
PROVIDE          Bangladesh     6 months    1                    NA                 0.0441863   -0.0083614    0.0967340
SAS-CompFeed     India          Birth       1                    NA                -0.0142863   -0.0425403    0.0139677
SAS-CompFeed     India          6 months    1                    NA                -0.0542355   -0.0935259   -0.0149451
SAS-FoodSuppl    India          6 months    1                    NA                 0.0476974   -0.0104353    0.1058300
TanzaniaChild2   Tanzania       6 months    1                    NA                 0.0137588   -0.0073512    0.0348689
ZVITAMBO         Zimbabwe       Birth       1                    NA                 0.0243264    0.0165640    0.0320889
ZVITAMBO         Zimbabwe       6 months    1                    NA                -0.0193594   -0.0332576   -0.0054612
ZVITAMBO         Zimbabwe       24 months   1                    NA                 0.0977682   -0.0448499    0.2403862


### Parameter: PAF


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          6 months    1                    NA                -0.3494782   -0.6434663   -0.1080795
CMC-V-BCS-2002   India          24 months   1                    NA                -0.0176519   -0.1241696    0.0787730
CMIN             Bangladesh     6 months    1                    NA                 0.0593548   -0.3099169    0.3245272
CMIN             Bangladesh     24 months   1                    NA                -0.0370370   -0.1691574    0.0801531
Guatemala BSC    Guatemala      6 months    1                    NA                 0.1694444   -0.2365826    0.4421541
IRC              India          Birth       1                    NA                -0.3033592   -0.9964508    0.1491174
IRC              India          6 months    1                    NA                 0.1107563   -0.1894501    0.3351933
IRC              India          24 months   1                    NA                -0.3044170   -0.5202113   -0.1192547
JiVitA-3         Bangladesh     Birth       1                    NA                -0.0937900   -0.1251914   -0.0632650
JiVitA-3         Bangladesh     6 months    1                    NA                 0.0140473   -0.0370141    0.0625945
JiVitA-4         Bangladesh     Birth       1                    NA                -0.1276925   -0.3174435    0.0347288
JiVitA-4         Bangladesh     6 months    1                    NA                -0.0207956   -0.1108791    0.0619829
JiVitA-4         Bangladesh     24 months   1                    NA                -0.2261588   -0.3895496   -0.0819805
Keneba           Gambia         Birth       1                    NA                -0.0374086   -0.4267277    0.2456749
Keneba           Gambia         6 months    1                    NA                -0.3016435   -0.5332106   -0.1050510
Keneba           Gambia         24 months   1                    NA                 0.1847937    0.0028231    0.3335573
LCNI-5           Malawi         6 months    1                    NA                 0.0150708   -0.1540830    0.1594317
MAL-ED           Bangladesh     Birth       1                    NA                 0.0735294   -0.4348307    0.4017777
MAL-ED           Bangladesh     6 months    1                    NA                -0.3942149   -1.0439686    0.0489897
MAL-ED           Bangladesh     24 months   1                    NA                -0.2435221   -0.5251496   -0.0138987
MAL-ED           India          6 months    1                    NA                 0.0464646   -0.4780866    0.3848604
MAL-ED           India          24 months   1                    NA                 0.1244582   -0.1655496    0.3423073
MAL-ED           Nepal          24 months   1                    NA                -0.3888889   -0.9212670   -0.0040314
MAL-ED           Peru           6 months    1                    NA                -0.1848958   -0.5412792    0.0890826
MAL-ED           Peru           24 months   1                    NA                 0.1347826   -0.2291733    0.3909718
MAL-ED           South Africa   24 months   1                    NA                 0.0502924   -0.3463502    0.3300818
MAL-ED           Tanzania       Birth       1                    NA                -0.5096618   -1.9604511    0.2301583
MAL-ED           Tanzania       6 months    1                    NA                -0.1203151   -0.5434871    0.1868374
MAL-ED           Tanzania       24 months   1                    NA                 0.0120673   -0.1504560    0.1516312
PROBIT           Belarus        Birth       1                    NA                 0.4432419   -0.2968862    0.7609817
PROBIT           Belarus        6 months    1                    NA                 0.1255313   -0.0708041    0.2858680
PROBIT           Belarus        24 months   1                    NA                -0.5830498   -1.4092984   -0.0401562
PROVIDE          Bangladesh     Birth       1                    NA                 0.5152877   -0.0061255    0.7664844
PROVIDE          Bangladesh     6 months    1                    NA                 0.2780055   -0.1367714    0.5414416
SAS-CompFeed     India          Birth       1                    NA                -0.0512506   -0.1541106    0.0424420
SAS-CompFeed     India          6 months    1                    NA                -0.1906807   -0.3305270   -0.0655331
SAS-FoodSuppl    India          6 months    1                    NA                 0.1111963   -0.0354459    0.2370707
TanzaniaChild2   Tanzania       6 months    1                    NA                 0.1417090   -0.1048778    0.3332625
ZVITAMBO         Zimbabwe       Birth       1                    NA                 0.2353761    0.1572648    0.3062475
ZVITAMBO         Zimbabwe       6 months    1                    NA                -0.1188577   -0.2074090   -0.0368007
ZVITAMBO         Zimbabwe       24 months   1                    NA                 0.2222643   -0.1803983    0.4875689

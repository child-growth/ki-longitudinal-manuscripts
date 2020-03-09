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

studyid          country        agecat       rain_quartile   stunted   n_cell       n
---------------  -------------  ----------  --------------  --------  -------  ------
CMC-V-BCS-2002   India          Birth                    1         0       14      92
CMC-V-BCS-2002   India          Birth                    1         1        4      92
CMC-V-BCS-2002   India          Birth                    2         0       20      92
CMC-V-BCS-2002   India          Birth                    2         1        5      92
CMC-V-BCS-2002   India          Birth                    3         0       26      92
CMC-V-BCS-2002   India          Birth                    3         1        4      92
CMC-V-BCS-2002   India          Birth                    4         0       15      92
CMC-V-BCS-2002   India          Birth                    4         1        4      92
CMC-V-BCS-2002   India          6 months                 1         0       60     369
CMC-V-BCS-2002   India          6 months                 1         1       41     369
CMC-V-BCS-2002   India          6 months                 2         0       81     369
CMC-V-BCS-2002   India          6 months                 2         1       30     369
CMC-V-BCS-2002   India          6 months                 3         0       75     369
CMC-V-BCS-2002   India          6 months                 3         1       22     369
CMC-V-BCS-2002   India          6 months                 4         0       42     369
CMC-V-BCS-2002   India          6 months                 4         1       18     369
CMC-V-BCS-2002   India          24 months                1         0       29     371
CMC-V-BCS-2002   India          24 months                1         1       72     371
CMC-V-BCS-2002   India          24 months                2         0       29     371
CMC-V-BCS-2002   India          24 months                2         1       70     371
CMC-V-BCS-2002   India          24 months                3         0       34     371
CMC-V-BCS-2002   India          24 months                3         1       82     371
CMC-V-BCS-2002   India          24 months                4         0       13     371
CMC-V-BCS-2002   India          24 months                4         1       42     371
CMIN             Bangladesh     Birth                    1         0        3      26
CMIN             Bangladesh     Birth                    1         1        4      26
CMIN             Bangladesh     Birth                    2         0        5      26
CMIN             Bangladesh     Birth                    2         1        1      26
CMIN             Bangladesh     Birth                    3         0        5      26
CMIN             Bangladesh     Birth                    3         1        1      26
CMIN             Bangladesh     Birth                    4         0        4      26
CMIN             Bangladesh     Birth                    4         1        3      26
CMIN             Bangladesh     6 months                 1         0       32     243
CMIN             Bangladesh     6 months                 1         1       18     243
CMIN             Bangladesh     6 months                 2         0       47     243
CMIN             Bangladesh     6 months                 2         1       15     243
CMIN             Bangladesh     6 months                 3         0       41     243
CMIN             Bangladesh     6 months                 3         1       30     243
CMIN             Bangladesh     6 months                 4         0       30     243
CMIN             Bangladesh     6 months                 4         1       30     243
CMIN             Bangladesh     24 months                1         0       22     242
CMIN             Bangladesh     24 months                1         1       56     242
CMIN             Bangladesh     24 months                2         0       22     242
CMIN             Bangladesh     24 months                2         1       47     242
CMIN             Bangladesh     24 months                3         0       22     242
CMIN             Bangladesh     24 months                3         1       36     242
CMIN             Bangladesh     24 months                4         0       11     242
CMIN             Bangladesh     24 months                4         1       26     242
CONTENT          Peru           Birth                    1         0        0       2
CONTENT          Peru           Birth                    1         1        0       2
CONTENT          Peru           Birth                    2         0        2       2
CONTENT          Peru           Birth                    2         1        0       2
CONTENT          Peru           Birth                    3         0        0       2
CONTENT          Peru           Birth                    3         1        0       2
CONTENT          Peru           Birth                    4         0        0       2
CONTENT          Peru           Birth                    4         1        0       2
CONTENT          Peru           6 months                 1         0       60     215
CONTENT          Peru           6 months                 1         1        2     215
CONTENT          Peru           6 months                 2         0       31     215
CONTENT          Peru           6 months                 2         1        1     215
CONTENT          Peru           6 months                 3         0       41     215
CONTENT          Peru           6 months                 3         1        3     215
CONTENT          Peru           6 months                 4         0       74     215
CONTENT          Peru           6 months                 4         1        3     215
CONTENT          Peru           24 months                1         0       50     164
CONTENT          Peru           24 months                1         1        5     164
CONTENT          Peru           24 months                2         0       33     164
CONTENT          Peru           24 months                2         1        2     164
CONTENT          Peru           24 months                3         0       19     164
CONTENT          Peru           24 months                3         1        1     164
CONTENT          Peru           24 months                4         0       49     164
CONTENT          Peru           24 months                4         1        5     164
EE               Pakistan       Birth                    1         0       74     240
EE               Pakistan       Birth                    1         1       62     240
EE               Pakistan       Birth                    2         0       61     240
EE               Pakistan       Birth                    2         1       32     240
EE               Pakistan       Birth                    3         0        5     240
EE               Pakistan       Birth                    3         1        6     240
EE               Pakistan       Birth                    4         0        0     240
EE               Pakistan       Birth                    4         1        0     240
EE               Pakistan       6 months                 1         0        0     373
EE               Pakistan       6 months                 1         1        0     373
EE               Pakistan       6 months                 2         0       16     373
EE               Pakistan       6 months                 2         1       18     373
EE               Pakistan       6 months                 3         0       87     373
EE               Pakistan       6 months                 3         1       81     373
EE               Pakistan       6 months                 4         0       87     373
EE               Pakistan       6 months                 4         1       84     373
EE               Pakistan       24 months                1         0        1     167
EE               Pakistan       24 months                1         1        7     167
EE               Pakistan       24 months                2         0       48     167
EE               Pakistan       24 months                2         1      111     167
EE               Pakistan       24 months                3         0        0     167
EE               Pakistan       24 months                3         1        0     167
EE               Pakistan       24 months                4         0        0     167
EE               Pakistan       24 months                4         1        0     167
GMS-Nepal        Nepal          Birth                    1         0        0     696
GMS-Nepal        Nepal          Birth                    1         1        0     696
GMS-Nepal        Nepal          Birth                    2         0        0     696
GMS-Nepal        Nepal          Birth                    2         1        0     696
GMS-Nepal        Nepal          Birth                    3         0      133     696
GMS-Nepal        Nepal          Birth                    3         1       28     696
GMS-Nepal        Nepal          Birth                    4         0      441     696
GMS-Nepal        Nepal          Birth                    4         1       94     696
GMS-Nepal        Nepal          6 months                 1         0      392     564
GMS-Nepal        Nepal          6 months                 1         1      110     564
GMS-Nepal        Nepal          6 months                 2         0       50     564
GMS-Nepal        Nepal          6 months                 2         1       12     564
GMS-Nepal        Nepal          6 months                 3         0        0     564
GMS-Nepal        Nepal          6 months                 3         1        0     564
GMS-Nepal        Nepal          6 months                 4         0        0     564
GMS-Nepal        Nepal          6 months                 4         1        0     564
GMS-Nepal        Nepal          24 months                1         0        0     488
GMS-Nepal        Nepal          24 months                1         1        0     488
GMS-Nepal        Nepal          24 months                2         0        0     488
GMS-Nepal        Nepal          24 months                2         1        0     488
GMS-Nepal        Nepal          24 months                3         0       14     488
GMS-Nepal        Nepal          24 months                3         1       25     488
GMS-Nepal        Nepal          24 months                4         0      255     488
GMS-Nepal        Nepal          24 months                4         1      194     488
Guatemala BSC    Guatemala      6 months                 1         0       45     299
Guatemala BSC    Guatemala      6 months                 1         1       15     299
Guatemala BSC    Guatemala      6 months                 2         0       52     299
Guatemala BSC    Guatemala      6 months                 2         1       28     299
Guatemala BSC    Guatemala      6 months                 3         0       59     299
Guatemala BSC    Guatemala      6 months                 3         1       28     299
Guatemala BSC    Guatemala      6 months                 4         0       53     299
Guatemala BSC    Guatemala      6 months                 4         1       19     299
IRC              India          Birth                    1         0       73     388
IRC              India          Birth                    1         1       13     388
IRC              India          Birth                    2         0      110     388
IRC              India          Birth                    2         1       16     388
IRC              India          Birth                    3         0       70     388
IRC              India          Birth                    3         1        7     388
IRC              India          Birth                    4         0       90     388
IRC              India          Birth                    4         1        9     388
IRC              India          6 months                 1         0       93     407
IRC              India          6 months                 1         1       26     407
IRC              India          6 months                 2         0       59     407
IRC              India          6 months                 2         1       17     407
IRC              India          6 months                 3         0      100     407
IRC              India          6 months                 3         1       27     407
IRC              India          6 months                 4         0       55     407
IRC              India          6 months                 4         1       30     407
IRC              India          24 months                1         0       55     409
IRC              India          24 months                1         1       59     409
IRC              India          24 months                2         0       77     409
IRC              India          24 months                2         1       42     409
IRC              India          24 months                3         0       44     409
IRC              India          24 months                3         1       41     409
IRC              India          24 months                4         0       61     409
IRC              India          24 months                4         1       30     409
JiVitA-3         Bangladesh     Birth                    1         0     4197   22455
JiVitA-3         Bangladesh     Birth                    1         1     2359   22455
JiVitA-3         Bangladesh     Birth                    2         0     4738   22455
JiVitA-3         Bangladesh     Birth                    2         1     2439   22455
JiVitA-3         Bangladesh     Birth                    3         0     3288   22455
JiVitA-3         Bangladesh     Birth                    3         1     1348   22455
JiVitA-3         Bangladesh     Birth                    4         0     2845   22455
JiVitA-3         Bangladesh     Birth                    4         1     1241   22455
JiVitA-3         Bangladesh     6 months                 1         0     2801   16811
JiVitA-3         Bangladesh     6 months                 1         1      923   16811
JiVitA-3         Bangladesh     6 months                 2         0     2741   16811
JiVitA-3         Bangladesh     6 months                 2         1      846   16811
JiVitA-3         Bangladesh     6 months                 3         0     3889   16811
JiVitA-3         Bangladesh     6 months                 3         1     1335   16811
JiVitA-3         Bangladesh     6 months                 4         0     3154   16811
JiVitA-3         Bangladesh     6 months                 4         1     1122   16811
JiVitA-3         Bangladesh     24 months                1         0     1220    8631
JiVitA-3         Bangladesh     24 months                1         1     1406    8631
JiVitA-3         Bangladesh     24 months                2         0     1353    8631
JiVitA-3         Bangladesh     24 months                2         1     1256    8631
JiVitA-3         Bangladesh     24 months                3         0      873    8631
JiVitA-3         Bangladesh     24 months                3         1      771    8631
JiVitA-3         Bangladesh     24 months                4         0      947    8631
JiVitA-3         Bangladesh     24 months                4         1      805    8631
JiVitA-4         Bangladesh     Birth                    1         0      219    2823
JiVitA-4         Bangladesh     Birth                    1         1      114    2823
JiVitA-4         Bangladesh     Birth                    2         0      168    2823
JiVitA-4         Bangladesh     Birth                    2         1       48    2823
JiVitA-4         Bangladesh     Birth                    3         0      885    2823
JiVitA-4         Bangladesh     Birth                    3         1      427    2823
JiVitA-4         Bangladesh     Birth                    4         0      694    2823
JiVitA-4         Bangladesh     Birth                    4         1      268    2823
JiVitA-4         Bangladesh     6 months                 1         0     1090    4831
JiVitA-4         Bangladesh     6 months                 1         1      379    4831
JiVitA-4         Bangladesh     6 months                 2         0     1946    4831
JiVitA-4         Bangladesh     6 months                 2         1      667    4831
JiVitA-4         Bangladesh     6 months                 3         0      487    4831
JiVitA-4         Bangladesh     6 months                 3         1      141    4831
JiVitA-4         Bangladesh     6 months                 4         0       87    4831
JiVitA-4         Bangladesh     6 months                 4         1       34    4831
JiVitA-4         Bangladesh     24 months                1         0      371    4752
JiVitA-4         Bangladesh     24 months                1         1      323    4752
JiVitA-4         Bangladesh     24 months                2         0      379    4752
JiVitA-4         Bangladesh     24 months                2         1      200    4752
JiVitA-4         Bangladesh     24 months                3         0     1239    4752
JiVitA-4         Bangladesh     24 months                3         1      841    4752
JiVitA-4         Bangladesh     24 months                4         0      858    4752
JiVitA-4         Bangladesh     24 months                4         1      541    4752
Keneba           Gambia         Birth                    1         0      423    1543
Keneba           Gambia         Birth                    1         1       25    1543
Keneba           Gambia         Birth                    2         0      393    1543
Keneba           Gambia         Birth                    2         1       34    1543
Keneba           Gambia         Birth                    3         0      369    1543
Keneba           Gambia         Birth                    3         1        9    1543
Keneba           Gambia         Birth                    4         0      275    1543
Keneba           Gambia         Birth                    4         1       15    1543
Keneba           Gambia         6 months                 1         0      379    2089
Keneba           Gambia         6 months                 1         1       85    2089
Keneba           Gambia         6 months                 2         0      399    2089
Keneba           Gambia         6 months                 2         1       60    2089
Keneba           Gambia         6 months                 3         0      524    2089
Keneba           Gambia         6 months                 3         1       82    2089
Keneba           Gambia         6 months                 4         0      493    2089
Keneba           Gambia         6 months                 4         1       67    2089
Keneba           Gambia         24 months                1         0      346    1725
Keneba           Gambia         24 months                1         1      155    1725
Keneba           Gambia         24 months                2         0      321    1725
Keneba           Gambia         24 months                2         1      173    1725
Keneba           Gambia         24 months                3         0      253    1725
Keneba           Gambia         24 months                3         1      135    1725
Keneba           Gambia         24 months                4         0      224    1725
Keneba           Gambia         24 months                4         1      118    1725
LCNI-5           Malawi         6 months                 1         0      130     839
LCNI-5           Malawi         6 months                 1         1       74     839
LCNI-5           Malawi         6 months                 2         0      196     839
LCNI-5           Malawi         6 months                 2         1      123     839
LCNI-5           Malawi         6 months                 3         0       71     839
LCNI-5           Malawi         6 months                 3         1       42     839
LCNI-5           Malawi         6 months                 4         0      133     839
LCNI-5           Malawi         6 months                 4         1       70     839
LCNI-5           Malawi         24 months                1         0       86     579
LCNI-5           Malawi         24 months                1         1       62     579
LCNI-5           Malawi         24 months                2         0       47     579
LCNI-5           Malawi         24 months                2         1       34     579
LCNI-5           Malawi         24 months                3         0      113     579
LCNI-5           Malawi         24 months                3         1      107     579
LCNI-5           Malawi         24 months                4         0       75     579
LCNI-5           Malawi         24 months                4         1       55     579
MAL-ED           Bangladesh     Birth                    1         0       56     231
MAL-ED           Bangladesh     Birth                    1         1       12     231
MAL-ED           Bangladesh     Birth                    2         0       43     231
MAL-ED           Bangladesh     Birth                    2         1        8     231
MAL-ED           Bangladesh     Birth                    3         0       52     231
MAL-ED           Bangladesh     Birth                    3         1       12     231
MAL-ED           Bangladesh     Birth                    4         0       36     231
MAL-ED           Bangladesh     Birth                    4         1       12     231
MAL-ED           Bangladesh     6 months                 1         0       41     241
MAL-ED           Bangladesh     6 months                 1         1       14     241
MAL-ED           Bangladesh     6 months                 2         0       63     241
MAL-ED           Bangladesh     6 months                 2         1        8     241
MAL-ED           Bangladesh     6 months                 3         0       50     241
MAL-ED           Bangladesh     6 months                 3         1       10     241
MAL-ED           Bangladesh     6 months                 4         0       43     241
MAL-ED           Bangladesh     6 months                 4         1       12     241
MAL-ED           Bangladesh     24 months                1         0       32     212
MAL-ED           Bangladesh     24 months                1         1       41     212
MAL-ED           Bangladesh     24 months                2         0       31     212
MAL-ED           Bangladesh     24 months                2         1       20     212
MAL-ED           Bangladesh     24 months                3         0       27     212
MAL-ED           Bangladesh     24 months                3         1       21     212
MAL-ED           Bangladesh     24 months                4         0       21     212
MAL-ED           Bangladesh     24 months                4         1       19     212
MAL-ED           Brazil         Birth                    1         0       13      65
MAL-ED           Brazil         Birth                    1         1        6      65
MAL-ED           Brazil         Birth                    2         0       11      65
MAL-ED           Brazil         Birth                    2         1        1      65
MAL-ED           Brazil         Birth                    3         0       11      65
MAL-ED           Brazil         Birth                    3         1        1      65
MAL-ED           Brazil         Birth                    4         0       21      65
MAL-ED           Brazil         Birth                    4         1        1      65
MAL-ED           Brazil         6 months                 1         0       62     209
MAL-ED           Brazil         6 months                 1         1        2     209
MAL-ED           Brazil         6 months                 2         0       50     209
MAL-ED           Brazil         6 months                 2         1        1     209
MAL-ED           Brazil         6 months                 3         0       42     209
MAL-ED           Brazil         6 months                 3         1        2     209
MAL-ED           Brazil         6 months                 4         0       49     209
MAL-ED           Brazil         6 months                 4         1        1     209
MAL-ED           Brazil         24 months                1         0       61     169
MAL-ED           Brazil         24 months                1         1        4     169
MAL-ED           Brazil         24 months                2         0       30     169
MAL-ED           Brazil         24 months                2         1        0     169
MAL-ED           Brazil         24 months                3         0       41     169
MAL-ED           Brazil         24 months                3         1        2     169
MAL-ED           Brazil         24 months                4         0       30     169
MAL-ED           Brazil         24 months                4         1        1     169
MAL-ED           India          Birth                    1         0       10      47
MAL-ED           India          Birth                    1         1        0      47
MAL-ED           India          Birth                    2         0        7      47
MAL-ED           India          Birth                    2         1        4      47
MAL-ED           India          Birth                    3         0       10      47
MAL-ED           India          Birth                    3         1        2      47
MAL-ED           India          Birth                    4         0       10      47
MAL-ED           India          Birth                    4         1        4      47
MAL-ED           India          6 months                 1         0       54     236
MAL-ED           India          6 months                 1         1       12     236
MAL-ED           India          6 months                 2         0       34     236
MAL-ED           India          6 months                 2         1        8     236
MAL-ED           India          6 months                 3         0       57     236
MAL-ED           India          6 months                 3         1       16     236
MAL-ED           India          6 months                 4         0       46     236
MAL-ED           India          6 months                 4         1        9     236
MAL-ED           India          24 months                1         0       36     227
MAL-ED           India          24 months                1         1       29     227
MAL-ED           India          24 months                2         0       40     227
MAL-ED           India          24 months                2         1       31     227
MAL-ED           India          24 months                3         0       32     227
MAL-ED           India          24 months                3         1       22     227
MAL-ED           India          24 months                4         0       22     227
MAL-ED           India          24 months                4         1       15     227
MAL-ED           Nepal          Birth                    1         0        5      27
MAL-ED           Nepal          Birth                    1         1        0      27
MAL-ED           Nepal          Birth                    2         0        9      27
MAL-ED           Nepal          Birth                    2         1        1      27
MAL-ED           Nepal          Birth                    3         0        6      27
MAL-ED           Nepal          Birth                    3         1        1      27
MAL-ED           Nepal          Birth                    4         0        5      27
MAL-ED           Nepal          Birth                    4         1        0      27
MAL-ED           Nepal          6 months                 1         0       57     236
MAL-ED           Nepal          6 months                 1         1        3     236
MAL-ED           Nepal          6 months                 2         0       58     236
MAL-ED           Nepal          6 months                 2         1        1     236
MAL-ED           Nepal          6 months                 3         0       58     236
MAL-ED           Nepal          6 months                 3         1        1     236
MAL-ED           Nepal          6 months                 4         0       51     236
MAL-ED           Nepal          6 months                 4         1        7     236
MAL-ED           Nepal          24 months                1         0       45     228
MAL-ED           Nepal          24 months                1         1       21     228
MAL-ED           Nepal          24 months                2         0       46     228
MAL-ED           Nepal          24 months                2         1       15     228
MAL-ED           Nepal          24 months                3         0       53     228
MAL-ED           Nepal          24 months                3         1       10     228
MAL-ED           Nepal          24 months                4         0       34     228
MAL-ED           Nepal          24 months                4         1        4     228
MAL-ED           Peru           Birth                    1         0       46     233
MAL-ED           Peru           Birth                    1         1        3     233
MAL-ED           Peru           Birth                    2         0       47     233
MAL-ED           Peru           Birth                    2         1        7     233
MAL-ED           Peru           Birth                    3         0       62     233
MAL-ED           Peru           Birth                    3         1        7     233
MAL-ED           Peru           Birth                    4         0       52     233
MAL-ED           Peru           Birth                    4         1        9     233
MAL-ED           Peru           6 months                 1         0       71     273
MAL-ED           Peru           6 months                 1         1       25     273
MAL-ED           Peru           6 months                 2         0       57     273
MAL-ED           Peru           6 months                 2         1       20     273
MAL-ED           Peru           6 months                 3         0       51     273
MAL-ED           Peru           6 months                 3         1        9     273
MAL-ED           Peru           6 months                 4         0       34     273
MAL-ED           Peru           6 months                 4         1        6     273
MAL-ED           Peru           24 months                1         0       41     201
MAL-ED           Peru           24 months                1         1       14     201
MAL-ED           Peru           24 months                2         0       27     201
MAL-ED           Peru           24 months                2         1       19     201
MAL-ED           Peru           24 months                3         0       34     201
MAL-ED           Peru           24 months                3         1       20     201
MAL-ED           Peru           24 months                4         0       25     201
MAL-ED           Peru           24 months                4         1       21     201
MAL-ED           South Africa   Birth                    1         0       22     123
MAL-ED           South Africa   Birth                    1         1        3     123
MAL-ED           South Africa   Birth                    2         0       21     123
MAL-ED           South Africa   Birth                    2         1        2     123
MAL-ED           South Africa   Birth                    3         0       32     123
MAL-ED           South Africa   Birth                    3         1        3     123
MAL-ED           South Africa   Birth                    4         0       38     123
MAL-ED           South Africa   Birth                    4         1        2     123
MAL-ED           South Africa   6 months                 1         0       82     254
MAL-ED           South Africa   6 months                 1         1       24     254
MAL-ED           South Africa   6 months                 2         0       53     254
MAL-ED           South Africa   6 months                 2         1       14     254
MAL-ED           South Africa   6 months                 3         0       41     254
MAL-ED           South Africa   6 months                 3         1        4     254
MAL-ED           South Africa   6 months                 4         0       28     254
MAL-ED           South Africa   6 months                 4         1        8     254
MAL-ED           South Africa   24 months                1         0       36     238
MAL-ED           South Africa   24 months                1         1       19     238
MAL-ED           South Africa   24 months                2         0       31     238
MAL-ED           South Africa   24 months                2         1        8     238
MAL-ED           South Africa   24 months                3         0       53     238
MAL-ED           South Africa   24 months                3         1       33     238
MAL-ED           South Africa   24 months                4         0       34     238
MAL-ED           South Africa   24 months                4         1       24     238
MAL-ED           Tanzania       Birth                    1         0       13     125
MAL-ED           Tanzania       Birth                    1         1        5     125
MAL-ED           Tanzania       Birth                    2         0       29     125
MAL-ED           Tanzania       Birth                    2         1        6     125
MAL-ED           Tanzania       Birth                    3         0       28     125
MAL-ED           Tanzania       Birth                    3         1        6     125
MAL-ED           Tanzania       Birth                    4         0       32     125
MAL-ED           Tanzania       Birth                    4         1        6     125
MAL-ED           Tanzania       6 months                 1         0       52     247
MAL-ED           Tanzania       6 months                 1         1       19     247
MAL-ED           Tanzania       6 months                 2         0       59     247
MAL-ED           Tanzania       6 months                 2         1       21     247
MAL-ED           Tanzania       6 months                 3         0       44     247
MAL-ED           Tanzania       6 months                 3         1        9     247
MAL-ED           Tanzania       6 months                 4         0       33     247
MAL-ED           Tanzania       6 months                 4         1       10     247
MAL-ED           Tanzania       24 months                1         0       16     214
MAL-ED           Tanzania       24 months                1         1       40     214
MAL-ED           Tanzania       24 months                2         0       19     214
MAL-ED           Tanzania       24 months                2         1       40     214
MAL-ED           Tanzania       24 months                3         0       18     214
MAL-ED           Tanzania       24 months                3         1       41     214
MAL-ED           Tanzania       24 months                4         0        6     214
MAL-ED           Tanzania       24 months                4         1       34     214
PROBIT           Belarus        Birth                    1         0     3774   13893
PROBIT           Belarus        Birth                    1         1        6   13893
PROBIT           Belarus        Birth                    2         0     4138   13893
PROBIT           Belarus        Birth                    2         1       14   13893
PROBIT           Belarus        Birth                    3         0     2705   13893
PROBIT           Belarus        Birth                    3         1       11   13893
PROBIT           Belarus        Birth                    4         0     3242   13893
PROBIT           Belarus        Birth                    4         1        3   13893
PROBIT           Belarus        6 months                 1         0     3486   15760
PROBIT           Belarus        6 months                 1         1      127   15760
PROBIT           Belarus        6 months                 2         0     2990   15760
PROBIT           Belarus        6 months                 2         1      127   15760
PROBIT           Belarus        6 months                 3         0     4336   15760
PROBIT           Belarus        6 months                 3         1      177   15760
PROBIT           Belarus        6 months                 4         0     4328   15760
PROBIT           Belarus        6 months                 4         1      189   15760
PROBIT           Belarus        24 months                1         0      991    4035
PROBIT           Belarus        24 months                1         1      104    4035
PROBIT           Belarus        24 months                2         0     1063    4035
PROBIT           Belarus        24 months                2         1       85    4035
PROBIT           Belarus        24 months                3         0      799    4035
PROBIT           Belarus        24 months                3         1       46    4035
PROBIT           Belarus        24 months                4         0      907    4035
PROBIT           Belarus        24 months                4         1       40    4035
PROVIDE          Bangladesh     Birth                    1         0       73     539
PROVIDE          Bangladesh     Birth                    1         1        5     539
PROVIDE          Bangladesh     Birth                    2         0      157     539
PROVIDE          Bangladesh     Birth                    2         1        6     539
PROVIDE          Bangladesh     Birth                    3         0       88     539
PROVIDE          Bangladesh     Birth                    3         1        9     539
PROVIDE          Bangladesh     Birth                    4         0      173     539
PROVIDE          Bangladesh     Birth                    4         1       28     539
PROVIDE          Bangladesh     6 months                 1         0      164     604
PROVIDE          Bangladesh     6 months                 1         1       47     604
PROVIDE          Bangladesh     6 months                 2         0      108     604
PROVIDE          Bangladesh     6 months                 2         1       14     604
PROVIDE          Bangladesh     6 months                 3         0      151     604
PROVIDE          Bangladesh     6 months                 3         1       24     604
PROVIDE          Bangladesh     6 months                 4         0       85     604
PROVIDE          Bangladesh     6 months                 4         1       11     604
PROVIDE          Bangladesh     24 months                1         0       64     578
PROVIDE          Bangladesh     24 months                1         1       35     578
PROVIDE          Bangladesh     24 months                2         0      131     578
PROVIDE          Bangladesh     24 months                2         1       55     578
PROVIDE          Bangladesh     24 months                3         0       72     578
PROVIDE          Bangladesh     24 months                3         1       32     578
PROVIDE          Bangladesh     24 months                4         0      121     578
PROVIDE          Bangladesh     24 months                4         1       68     578
ResPak           Pakistan       Birth                    1         0        3      42
ResPak           Pakistan       Birth                    1         1        0      42
ResPak           Pakistan       Birth                    2         0        2      42
ResPak           Pakistan       Birth                    2         1        0      42
ResPak           Pakistan       Birth                    3         0       10      42
ResPak           Pakistan       Birth                    3         1        6      42
ResPak           Pakistan       Birth                    4         0       13      42
ResPak           Pakistan       Birth                    4         1        8      42
ResPak           Pakistan       6 months                 1         0       75     239
ResPak           Pakistan       6 months                 1         1       32     239
ResPak           Pakistan       6 months                 2         0       59     239
ResPak           Pakistan       6 months                 2         1       39     239
ResPak           Pakistan       6 months                 3         0        6     239
ResPak           Pakistan       6 months                 3         1        2     239
ResPak           Pakistan       6 months                 4         0       13     239
ResPak           Pakistan       6 months                 4         1       13     239
SAS-CompFeed     India          Birth                    1         0      193    1252
SAS-CompFeed     India          Birth                    1         1       80    1252
SAS-CompFeed     India          Birth                    2         0      311    1252
SAS-CompFeed     India          Birth                    2         1       97    1252
SAS-CompFeed     India          Birth                    3         0      161    1252
SAS-CompFeed     India          Birth                    3         1       62    1252
SAS-CompFeed     India          Birth                    4         0      238    1252
SAS-CompFeed     India          Birth                    4         1      110    1252
SAS-CompFeed     India          6 months                 1         0      248    1336
SAS-CompFeed     India          6 months                 1         1      127    1336
SAS-CompFeed     India          6 months                 2         0      168    1336
SAS-CompFeed     India          6 months                 2         1       62    1336
SAS-CompFeed     India          6 months                 3         0      327    1336
SAS-CompFeed     India          6 months                 3         1      107    1336
SAS-CompFeed     India          6 months                 4         0      213    1336
SAS-CompFeed     India          6 months                 4         1       84    1336
SAS-FoodSuppl    India          6 months                 1         0       99     380
SAS-FoodSuppl    India          6 months                 1         1       61     380
SAS-FoodSuppl    India          6 months                 2         0       20     380
SAS-FoodSuppl    India          6 months                 2         1       17     380
SAS-FoodSuppl    India          6 months                 3         0       59     380
SAS-FoodSuppl    India          6 months                 3         1       47     380
SAS-FoodSuppl    India          6 months                 4         0       39     380
SAS-FoodSuppl    India          6 months                 4         1       38     380
TanzaniaChild2   Tanzania       6 months                 1         0      473    2029
TanzaniaChild2   Tanzania       6 months                 1         1       43    2029
TanzaniaChild2   Tanzania       6 months                 2         0      516    2029
TanzaniaChild2   Tanzania       6 months                 2         1       48    2029
TanzaniaChild2   Tanzania       6 months                 3         0      410    2029
TanzaniaChild2   Tanzania       6 months                 3         1       57    2029
TanzaniaChild2   Tanzania       6 months                 4         0      433    2029
TanzaniaChild2   Tanzania       6 months                 4         1       49    2029
TanzaniaChild2   Tanzania       24 months                1         0        0       6
TanzaniaChild2   Tanzania       24 months                1         1        0       6
TanzaniaChild2   Tanzania       24 months                2         0        3       6
TanzaniaChild2   Tanzania       24 months                2         1        1       6
TanzaniaChild2   Tanzania       24 months                3         0        0       6
TanzaniaChild2   Tanzania       24 months                3         1        0       6
TanzaniaChild2   Tanzania       24 months                4         0        2       6
TanzaniaChild2   Tanzania       24 months                4         1        0       6
ZVITAMBO         Zimbabwe       Birth                    1         0     3438   13875
ZVITAMBO         Zimbabwe       Birth                    1         1      295   13875
ZVITAMBO         Zimbabwe       Birth                    2         0     2784   13875
ZVITAMBO         Zimbabwe       Birth                    2         1      369   13875
ZVITAMBO         Zimbabwe       Birth                    3         0     3151   13875
ZVITAMBO         Zimbabwe       Birth                    3         1      304   13875
ZVITAMBO         Zimbabwe       Birth                    4         0     3068   13875
ZVITAMBO         Zimbabwe       Birth                    4         1      466   13875
ZVITAMBO         Zimbabwe       6 months                 1         0     1768    8669
ZVITAMBO         Zimbabwe       6 months                 1         1      394    8669
ZVITAMBO         Zimbabwe       6 months                 2         0     1916    8669
ZVITAMBO         Zimbabwe       6 months                 2         1      336    8669
ZVITAMBO         Zimbabwe       6 months                 3         0     1670    8669
ZVITAMBO         Zimbabwe       6 months                 3         1      343    8669
ZVITAMBO         Zimbabwe       6 months                 4         0     1903    8669
ZVITAMBO         Zimbabwe       6 months                 4         1      339    8669
ZVITAMBO         Zimbabwe       24 months                1         0      166    1640
ZVITAMBO         Zimbabwe       24 months                1         1      107    1640
ZVITAMBO         Zimbabwe       24 months                2         0      355    1640
ZVITAMBO         Zimbabwe       24 months                2         1      181    1640
ZVITAMBO         Zimbabwe       24 months                3         0      150    1640
ZVITAMBO         Zimbabwe       24 months                3         1       86    1640
ZVITAMBO         Zimbabwe       24 months                4         0      400    1640
ZVITAMBO         Zimbabwe       24 months                4         1      195    1640


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
* studyid: MAL-ED, country: Brazil, agecat: Birth
* studyid: MAL-ED, country: Brazil, agecat: 6 months
* studyid: MAL-ED, country: Brazil, agecat: 24 months
* studyid: MAL-ED, country: India, agecat: Birth
* studyid: MAL-ED, country: Nepal, agecat: Birth
* studyid: MAL-ED, country: Nepal, agecat: 6 months
* studyid: MAL-ED, country: Nepal, agecat: 24 months
* studyid: MAL-ED, country: Peru, agecat: Birth
* studyid: MAL-ED, country: South Africa, agecat: Birth
* studyid: MAL-ED, country: South Africa, agecat: 6 months
* studyid: PROBIT, country: Belarus, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: 6 months
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
![](/tmp/7af9396e-00f8-4145-8661-f7abcfbaa7bb/63dde4d1-e518-40ed-8447-8b1189317ce5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7af9396e-00f8-4145-8661-f7abcfbaa7bb/63dde4d1-e518-40ed-8447-8b1189317ce5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7af9396e-00f8-4145-8661-f7abcfbaa7bb/63dde4d1-e518-40ed-8447-8b1189317ce5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7af9396e-00f8-4145-8661-f7abcfbaa7bb/63dde4d1-e518-40ed-8447-8b1189317ce5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country        agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -------------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India          6 months    1                    NA                0.4059406   0.3100397   0.5018415
CMC-V-BCS-2002   India          6 months    2                    NA                0.2702703   0.1875416   0.3529989
CMC-V-BCS-2002   India          6 months    3                    NA                0.2268041   0.1433550   0.3102532
CMC-V-BCS-2002   India          6 months    4                    NA                0.3000000   0.1838895   0.4161105
CMC-V-BCS-2002   India          24 months   1                    NA                0.7128713   0.6245191   0.8012235
CMC-V-BCS-2002   India          24 months   2                    NA                0.7070707   0.6173011   0.7968403
CMC-V-BCS-2002   India          24 months   3                    NA                0.7068966   0.6239509   0.7898422
CMC-V-BCS-2002   India          24 months   4                    NA                0.7636364   0.6512053   0.8760675
CMIN             Bangladesh     6 months    1                    NA                0.3600000   0.2266786   0.4933214
CMIN             Bangladesh     6 months    2                    NA                0.2419355   0.1351160   0.3487550
CMIN             Bangladesh     6 months    3                    NA                0.4225352   0.3073999   0.5376705
CMIN             Bangladesh     6 months    4                    NA                0.5000000   0.3732237   0.6267763
CMIN             Bangladesh     24 months   1                    NA                0.7179487   0.6178772   0.8180203
CMIN             Bangladesh     24 months   2                    NA                0.6811594   0.5709715   0.7913473
CMIN             Bangladesh     24 months   3                    NA                0.6206897   0.4955578   0.7458215
CMIN             Bangladesh     24 months   4                    NA                0.7027027   0.5551226   0.8502828
Guatemala BSC    Guatemala      6 months    1                    NA                0.2500000   0.1402510   0.3597490
Guatemala BSC    Guatemala      6 months    2                    NA                0.3500000   0.2453061   0.4546939
Guatemala BSC    Guatemala      6 months    3                    NA                0.3218391   0.2235055   0.4201726
Guatemala BSC    Guatemala      6 months    4                    NA                0.2638889   0.1619144   0.3658634
IRC              India          Birth       1                    NA                0.1511628   0.0753585   0.2269671
IRC              India          Birth       2                    NA                0.1269841   0.0687726   0.1851957
IRC              India          Birth       3                    NA                0.0909091   0.0266151   0.1552031
IRC              India          Birth       4                    NA                0.0909091   0.0342071   0.1476111
IRC              India          6 months    1                    NA                0.2184874   0.1441530   0.2928218
IRC              India          6 months    2                    NA                0.2236842   0.1298822   0.3174863
IRC              India          6 months    3                    NA                0.2125984   0.1413527   0.2838441
IRC              India          6 months    4                    NA                0.3529412   0.2512236   0.4546587
IRC              India          24 months   1                    NA                0.5175439   0.4257043   0.6093834
IRC              India          24 months   2                    NA                0.3529412   0.2669747   0.4389077
IRC              India          24 months   3                    NA                0.4823529   0.3759951   0.5887108
IRC              India          24 months   4                    NA                0.3296703   0.2329666   0.4263740
JiVitA-3         Bangladesh     Birth       1                    NA                0.3598231   0.3477243   0.3719218
JiVitA-3         Bangladesh     Birth       2                    NA                0.3398356   0.3272214   0.3524497
JiVitA-3         Bangladesh     Birth       3                    NA                0.2907679   0.2756546   0.3058812
JiVitA-3         Bangladesh     Birth       4                    NA                0.3037200   0.2875881   0.3198520
JiVitA-3         Bangladesh     6 months    1                    NA                0.2478518   0.2331322   0.2625713
JiVitA-3         Bangladesh     6 months    2                    NA                0.2358517   0.2200636   0.2516398
JiVitA-3         Bangladesh     6 months    3                    NA                0.2555513   0.2416973   0.2694053
JiVitA-3         Bangladesh     6 months    4                    NA                0.2623948   0.2480195   0.2767700
JiVitA-3         Bangladesh     24 months   1                    NA                0.5354151   0.5129418   0.5578883
JiVitA-3         Bangladesh     24 months   2                    NA                0.4814105   0.4594913   0.5033297
JiVitA-3         Bangladesh     24 months   3                    NA                0.4689781   0.4423392   0.4956170
JiVitA-3         Bangladesh     24 months   4                    NA                0.4594749   0.4325683   0.4863814
JiVitA-4         Bangladesh     Birth       1                    NA                0.3423423   0.2861625   0.3985222
JiVitA-4         Bangladesh     Birth       2                    NA                0.2222222   0.1662157   0.2782288
JiVitA-4         Bangladesh     Birth       3                    NA                0.3254573   0.2954342   0.3554804
JiVitA-4         Bangladesh     Birth       4                    NA                0.2785863   0.2428495   0.3143231
JiVitA-4         Bangladesh     6 months    1                    NA                0.2579986   0.2336827   0.2823146
JiVitA-4         Bangladesh     6 months    2                    NA                0.2552622   0.2345697   0.2759546
JiVitA-4         Bangladesh     6 months    3                    NA                0.2245223   0.1888286   0.2602160
JiVitA-4         Bangladesh     6 months    4                    NA                0.2809917   0.1938681   0.3681153
JiVitA-4         Bangladesh     24 months   1                    NA                0.4654179   0.4220403   0.5087955
JiVitA-4         Bangladesh     24 months   2                    NA                0.3454231   0.3021296   0.3887167
JiVitA-4         Bangladesh     24 months   3                    NA                0.4043269   0.3794517   0.4292022
JiVitA-4         Bangladesh     24 months   4                    NA                0.3867048   0.3562728   0.4171368
Keneba           Gambia         Birth       1                    NA                0.0558036   0.0345412   0.0770660
Keneba           Gambia         Birth       2                    NA                0.0796253   0.0539401   0.1053105
Keneba           Gambia         Birth       3                    NA                0.0238095   0.0084356   0.0391835
Keneba           Gambia         Birth       4                    NA                0.0517241   0.0262263   0.0772220
Keneba           Gambia         6 months    1                    NA                0.1831897   0.1479847   0.2183946
Keneba           Gambia         6 months    2                    NA                0.1307190   0.0998732   0.1615647
Keneba           Gambia         6 months    3                    NA                0.1353135   0.1080730   0.1625541
Keneba           Gambia         6 months    4                    NA                0.1196429   0.0927566   0.1465291
Keneba           Gambia         24 months   1                    NA                0.3093812   0.2688937   0.3498688
Keneba           Gambia         24 months   2                    NA                0.3502024   0.3081240   0.3922808
Keneba           Gambia         24 months   3                    NA                0.3479381   0.3005299   0.3953464
Keneba           Gambia         24 months   4                    NA                0.3450292   0.2946328   0.3954257
LCNI-5           Malawi         6 months    1                    NA                0.3627451   0.2967291   0.4287611
LCNI-5           Malawi         6 months    2                    NA                0.3855799   0.3321356   0.4390243
LCNI-5           Malawi         6 months    3                    NA                0.3716814   0.2825269   0.4608359
LCNI-5           Malawi         6 months    4                    NA                0.3448276   0.2794035   0.4102517
LCNI-5           Malawi         24 months   1                    NA                0.4189189   0.3393624   0.4984755
LCNI-5           Malawi         24 months   2                    NA                0.4197531   0.3121848   0.5273214
LCNI-5           Malawi         24 months   3                    NA                0.4863636   0.4202607   0.5524665
LCNI-5           Malawi         24 months   4                    NA                0.4230769   0.3380766   0.5080772
MAL-ED           Bangladesh     Birth       1                    NA                0.1764706   0.0856652   0.2672759
MAL-ED           Bangladesh     Birth       2                    NA                0.1568627   0.0568365   0.2568890
MAL-ED           Bangladesh     Birth       3                    NA                0.1875000   0.0916676   0.2833324
MAL-ED           Bangladesh     Birth       4                    NA                0.2500000   0.1272362   0.3727638
MAL-ED           Bangladesh     6 months    1                    NA                0.2545455   0.1391834   0.3699075
MAL-ED           Bangladesh     6 months    2                    NA                0.1126761   0.0389741   0.1863780
MAL-ED           Bangladesh     6 months    3                    NA                0.1666667   0.0721716   0.2611617
MAL-ED           Bangladesh     6 months    4                    NA                0.2181818   0.1088034   0.3275603
MAL-ED           Bangladesh     24 months   1                    NA                0.5616438   0.4475513   0.6757364
MAL-ED           Bangladesh     24 months   2                    NA                0.3921569   0.2578447   0.5264690
MAL-ED           Bangladesh     24 months   3                    NA                0.4375000   0.2968290   0.5781710
MAL-ED           Bangladesh     24 months   4                    NA                0.4750000   0.3198788   0.6301212
MAL-ED           India          6 months    1                    NA                0.1818182   0.0885697   0.2750667
MAL-ED           India          6 months    2                    NA                0.1904762   0.0714670   0.3094854
MAL-ED           India          6 months    3                    NA                0.2191781   0.1240775   0.3142787
MAL-ED           India          6 months    4                    NA                0.1636364   0.0656589   0.2616139
MAL-ED           India          24 months   1                    NA                0.4461538   0.3250419   0.5672658
MAL-ED           India          24 months   2                    NA                0.4366197   0.3210005   0.5522390
MAL-ED           India          24 months   3                    NA                0.4074074   0.2760658   0.5387491
MAL-ED           India          24 months   4                    NA                0.4054054   0.2468573   0.5639536
MAL-ED           Peru           6 months    1                    NA                0.2604167   0.1724664   0.3483670
MAL-ED           Peru           6 months    2                    NA                0.2597403   0.1616194   0.3578611
MAL-ED           Peru           6 months    3                    NA                0.1500000   0.0594842   0.2405158
MAL-ED           Peru           6 months    4                    NA                0.1500000   0.0391412   0.2608588
MAL-ED           Peru           24 months   1                    NA                0.2545455   0.1391356   0.3699553
MAL-ED           Peru           24 months   2                    NA                0.4130435   0.2703996   0.5556873
MAL-ED           Peru           24 months   3                    NA                0.3703704   0.2412499   0.4994908
MAL-ED           Peru           24 months   4                    NA                0.4565217   0.3122192   0.6008243
MAL-ED           South Africa   24 months   1                    NA                0.3454545   0.2195196   0.4713895
MAL-ED           South Africa   24 months   2                    NA                0.2051282   0.0781318   0.3321246
MAL-ED           South Africa   24 months   3                    NA                0.3837209   0.2807275   0.4867144
MAL-ED           South Africa   24 months   4                    NA                0.4137931   0.2867750   0.5408112
MAL-ED           Tanzania       Birth       1                    NA                0.2777778   0.0700282   0.4855274
MAL-ED           Tanzania       Birth       2                    NA                0.1714286   0.0460669   0.2967903
MAL-ED           Tanzania       Birth       3                    NA                0.1764706   0.0478150   0.3051261
MAL-ED           Tanzania       Birth       4                    NA                0.1578947   0.0414909   0.2742986
MAL-ED           Tanzania       6 months    1                    NA                0.2676056   0.1644198   0.3707914
MAL-ED           Tanzania       6 months    2                    NA                0.2625000   0.1658883   0.3591117
MAL-ED           Tanzania       6 months    3                    NA                0.1698113   0.0685222   0.2711004
MAL-ED           Tanzania       6 months    4                    NA                0.2325581   0.1060311   0.3590852
MAL-ED           Tanzania       24 months   1                    NA                0.7142857   0.5956889   0.8328826
MAL-ED           Tanzania       24 months   2                    NA                0.6779661   0.5584589   0.7974733
MAL-ED           Tanzania       24 months   3                    NA                0.6949153   0.5771505   0.8126800
MAL-ED           Tanzania       24 months   4                    NA                0.8500000   0.7390850   0.9609150
PROBIT           Belarus        6 months    1                    NA                0.0351508   0.0227921   0.0475096
PROBIT           Belarus        6 months    2                    NA                0.0407443   0.0301179   0.0513707
PROBIT           Belarus        6 months    3                    NA                0.0392200   0.0272232   0.0512169
PROBIT           Belarus        6 months    4                    NA                0.0418419   0.0292321   0.0544518
PROBIT           Belarus        24 months   1                    NA                0.0949772   0.0359535   0.1540009
PROBIT           Belarus        24 months   2                    NA                0.0740418   0.0520235   0.0960602
PROBIT           Belarus        24 months   3                    NA                0.0544379   0.0231097   0.0857661
PROBIT           Belarus        24 months   4                    NA                0.0422386   0.0139669   0.0705104
PROVIDE          Bangladesh     Birth       1                    NA                0.0641026   0.0096954   0.1185097
PROVIDE          Bangladesh     Birth       2                    NA                0.0368098   0.0078767   0.0657429
PROVIDE          Bangladesh     Birth       3                    NA                0.0927835   0.0349930   0.1505740
PROVIDE          Bangladesh     Birth       4                    NA                0.1393035   0.0913898   0.1872171
PROVIDE          Bangladesh     6 months    1                    NA                0.2227488   0.1665593   0.2789383
PROVIDE          Bangladesh     6 months    2                    NA                0.1147541   0.0581505   0.1713577
PROVIDE          Bangladesh     6 months    3                    NA                0.1371429   0.0861341   0.1881516
PROVIDE          Bangladesh     6 months    4                    NA                0.1145833   0.0508147   0.1783519
PROVIDE          Bangladesh     24 months   1                    NA                0.3535354   0.2592823   0.4477884
PROVIDE          Bangladesh     24 months   2                    NA                0.2956989   0.2300585   0.3613394
PROVIDE          Bangladesh     24 months   3                    NA                0.3076923   0.2189123   0.3964723
PROVIDE          Bangladesh     24 months   4                    NA                0.3597884   0.2913060   0.4282707
SAS-CompFeed     India          Birth       1                    NA                0.2930403   0.2401803   0.3459003
SAS-CompFeed     India          Birth       2                    NA                0.2377451   0.1846132   0.2908770
SAS-CompFeed     India          Birth       3                    NA                0.2780269   0.1991060   0.3569479
SAS-CompFeed     India          Birth       4                    NA                0.3160920   0.2664080   0.3657759
SAS-CompFeed     India          6 months    1                    NA                0.3386667   0.2876927   0.3896407
SAS-CompFeed     India          6 months    2                    NA                0.2695652   0.2239967   0.3151337
SAS-CompFeed     India          6 months    3                    NA                0.2465438   0.2150670   0.2780205
SAS-CompFeed     India          6 months    4                    NA                0.2828283   0.2352954   0.3303611
SAS-FoodSuppl    India          6 months    1                    NA                0.3812500   0.3058931   0.4566069
SAS-FoodSuppl    India          6 months    2                    NA                0.4594595   0.2986702   0.6202488
SAS-FoodSuppl    India          6 months    3                    NA                0.4433962   0.3486992   0.5380933
SAS-FoodSuppl    India          6 months    4                    NA                0.4935065   0.3816894   0.6053236
TanzaniaChild2   Tanzania       6 months    1                    NA                0.0833333   0.0594802   0.1071865
TanzaniaChild2   Tanzania       6 months    2                    NA                0.0851064   0.0620717   0.1081411
TanzaniaChild2   Tanzania       6 months    3                    NA                0.1220557   0.0923589   0.1517524
TanzaniaChild2   Tanzania       6 months    4                    NA                0.1016598   0.0746745   0.1286450
ZVITAMBO         Zimbabwe       Birth       1                    NA                0.0790249   0.0703704   0.0876794
ZVITAMBO         Zimbabwe       Birth       2                    NA                0.1170314   0.1058106   0.1282522
ZVITAMBO         Zimbabwe       Birth       3                    NA                0.0879884   0.0785423   0.0974345
ZVITAMBO         Zimbabwe       Birth       4                    NA                0.1318619   0.1207065   0.1430173
ZVITAMBO         Zimbabwe       6 months    1                    NA                0.1822387   0.1659652   0.1985121
ZVITAMBO         Zimbabwe       6 months    2                    NA                0.1492007   0.1344848   0.1639166
ZVITAMBO         Zimbabwe       6 months    3                    NA                0.1703924   0.1539672   0.1868177
ZVITAMBO         Zimbabwe       6 months    4                    NA                0.1512043   0.1363744   0.1660342
ZVITAMBO         Zimbabwe       24 months   1                    NA                0.3919414   0.3340142   0.4498686
ZVITAMBO         Zimbabwe       24 months   2                    NA                0.3376866   0.2976380   0.3777351
ZVITAMBO         Zimbabwe       24 months   3                    NA                0.3644068   0.3029871   0.4258264
ZVITAMBO         Zimbabwe       24 months   4                    NA                0.3277311   0.2900041   0.3654581


### Parameter: E(Y)


studyid          country        agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -------------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India          6 months    NA                   NA                0.3008130   0.2539566   0.3476694
CMC-V-BCS-2002   India          24 months   NA                   NA                0.7169811   0.6710815   0.7628807
CMIN             Bangladesh     6 months    NA                   NA                0.3827160   0.3214780   0.4439541
CMIN             Bangladesh     24 months   NA                   NA                0.6818182   0.6230135   0.7406228
Guatemala BSC    Guatemala      6 months    NA                   NA                0.3010033   0.2489243   0.3530824
IRC              India          Birth       NA                   NA                0.1159794   0.0840777   0.1478811
IRC              India          6 months    NA                   NA                0.2457002   0.2038248   0.2875757
IRC              India          24 months   NA                   NA                0.4205379   0.3726382   0.4684376
JiVitA-3         Bangladesh     Birth       NA                   NA                0.3289690   0.3216017   0.3363364
JiVitA-3         Bangladesh     6 months    NA                   NA                0.2513830   0.2432594   0.2595066
JiVitA-3         Bangladesh     24 months   NA                   NA                0.4910207   0.4779080   0.5041335
JiVitA-4         Bangladesh     Birth       NA                   NA                0.3035778   0.2836422   0.3235133
JiVitA-4         Bangladesh     6 months    NA                   NA                0.2527427   0.2386864   0.2667990
JiVitA-4         Bangladesh     24 months   NA                   NA                0.4008838   0.3839145   0.4178532
Keneba           Gambia         Birth       NA                   NA                0.0537913   0.0425309   0.0650518
Keneba           Gambia         6 months    NA                   NA                0.1407372   0.1258213   0.1556531
Keneba           Gambia         24 months   NA                   NA                0.3368116   0.3145020   0.3591212
LCNI-5           Malawi         6 months    NA                   NA                0.3682956   0.3356382   0.4009530
LCNI-5           Malawi         24 months   NA                   NA                0.4455959   0.4050760   0.4861157
MAL-ED           Bangladesh     Birth       NA                   NA                0.1904762   0.1397281   0.2412242
MAL-ED           Bangladesh     6 months    NA                   NA                0.1825726   0.1336978   0.2314474
MAL-ED           Bangladesh     24 months   NA                   NA                0.4764151   0.4090254   0.5438047
MAL-ED           India          6 months    NA                   NA                0.1906780   0.1404524   0.2409036
MAL-ED           India          24 months   NA                   NA                0.4273128   0.3628178   0.4918077
MAL-ED           Peru           6 months    NA                   NA                0.2197802   0.1705687   0.2689917
MAL-ED           Peru           24 months   NA                   NA                0.3681592   0.3013164   0.4350020
MAL-ED           South Africa   24 months   NA                   NA                0.3529412   0.2921001   0.4137823
MAL-ED           Tanzania       Birth       NA                   NA                0.1840000   0.1157989   0.2522011
MAL-ED           Tanzania       6 months    NA                   NA                0.2388664   0.1855834   0.2921494
MAL-ED           Tanzania       24 months   NA                   NA                0.7242991   0.6642873   0.7843108
PROBIT           Belarus        6 months    NA                   NA                0.0393401   0.0293640   0.0493162
PROBIT           Belarus        24 months   NA                   NA                0.0681537   0.0420376   0.0942697
PROVIDE          Bangladesh     Birth       NA                   NA                0.0890538   0.0649864   0.1131212
PROVIDE          Bangladesh     6 months    NA                   NA                0.1589404   0.1297581   0.1881227
PROVIDE          Bangladesh     24 months   NA                   NA                0.3287197   0.2903909   0.3670485
SAS-CompFeed     India          Birth       NA                   NA                0.2787540   0.2475949   0.3099131
SAS-CompFeed     India          6 months    NA                   NA                0.2844311   0.2666491   0.3022132
SAS-FoodSuppl    India          6 months    NA                   NA                0.4289474   0.3791199   0.4787748
TanzaniaChild2   Tanzania       6 months    NA                   NA                0.0970922   0.0842059   0.1099785
ZVITAMBO         Zimbabwe       Birth       NA                   NA                0.1033514   0.0982859   0.1084168
ZVITAMBO         Zimbabwe       6 months    NA                   NA                0.1628792   0.1551057   0.1706527
ZVITAMBO         Zimbabwe       24 months   NA                   NA                0.3469512   0.3239068   0.3699956


### Parameter: RR


studyid          country        agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -------------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India          6 months    1                    1                 1.0000000   1.0000000   1.0000000
CMC-V-BCS-2002   India          6 months    2                    1                 0.6657877   0.4522843   0.9800767
CMC-V-BCS-2002   India          6 months    3                    1                 0.5587126   0.3608224   0.8651342
CMC-V-BCS-2002   India          6 months    4                    1                 0.7390244   0.4696049   1.1630140
CMC-V-BCS-2002   India          24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMC-V-BCS-2002   India          24 months   2                    1                 0.9918631   0.8306099   1.1844217
CMC-V-BCS-2002   India          24 months   3                    1                 0.9916188   0.8360320   1.1761605
CMC-V-BCS-2002   India          24 months   4                    1                 1.0712121   0.8836792   1.2985430
CMIN             Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
CMIN             Bangladesh     6 months    2                    1                 0.6720430   0.3776809   1.1958290
CMIN             Bangladesh     6 months    3                    1                 1.1737089   0.7411054   1.8588350
CMIN             Bangladesh     6 months    4                    1                 1.3888889   0.8866412   2.1756404
CMIN             Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
CMIN             Bangladesh     24 months   2                    1                 0.9487578   0.7663360   1.1746040
CMIN             Bangladesh     24 months   3                    1                 0.8645320   0.6766091   1.1046491
CMIN             Bangladesh     24 months   4                    1                 0.9787645   0.7606916   1.2593538
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
IRC              India          24 months   2                    1                 0.6819541   0.5045184   0.9217928
IRC              India          24 months   3                    1                 0.9320040   0.7022589   1.2369106
IRC              India          24 months   4                    1                 0.6369901   0.4521079   0.8974769
JiVitA-3         Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh     Birth       2                    1                 0.9444519   0.9000100   0.9910883
JiVitA-3         Bangladesh     Birth       3                    1                 0.8080858   0.7604274   0.8587311
JiVitA-3         Bangladesh     Birth       4                    1                 0.8440816   0.7936582   0.8977085
JiVitA-3         Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh     6 months    2                    1                 0.9515836   0.8730714   1.0371561
JiVitA-3         Bangladesh     6 months    3                    1                 1.0310651   0.9566284   1.1112937
JiVitA-3         Bangladesh     6 months    4                    1                 1.0586762   0.9787407   1.1451400
JiVitA-3         Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh     24 months   2                    1                 0.8991351   0.8456357   0.9560192
JiVitA-3         Bangladesh     24 months   3                    1                 0.8759150   0.8172851   0.9387509
JiVitA-3         Bangladesh     24 months   4                    1                 0.8581658   0.7997666   0.9208292
JiVitA-4         Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh     Birth       2                    1                 0.6491228   0.4834773   0.8715205
JiVitA-4         Bangladesh     Birth       3                    1                 0.9506780   0.7870922   1.1482626
JiVitA-4         Bangladesh     Birth       4                    1                 0.8137652   0.6603755   1.0027837
JiVitA-4         Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh     6 months    2                    1                 0.9893934   0.8712003   1.1236214
JiVitA-4         Bangladesh     6 months    3                    1                 0.8702460   0.7203383   1.0513507
JiVitA-4         Bangladesh     6 months    4                    1                 1.0891210   0.7835907   1.5137809
JiVitA-4         Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh     24 months   2                    1                 0.7421785   0.6344965   0.8681355
JiVitA-4         Bangladesh     24 months   3                    1                 0.8687396   0.7778657   0.9702297
JiVitA-4         Bangladesh     24 months   4                    1                 0.8308765   0.7384262   0.9349015
Keneba           Gambia         Birth       1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia         Birth       2                    1                 1.4268852   0.8661143   2.3507307
Keneba           Gambia         Birth       3                    1                 0.4266667   0.2015949   0.9030210
Keneba           Gambia         Birth       4                    1                 0.9268966   0.4971025   1.7282900
Keneba           Gambia         6 months    1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia         6 months    2                    1                 0.7135717   0.5263452   0.9673966
Keneba           Gambia         6 months    3                    1                 0.7386527   0.5592027   0.9756888
Keneba           Gambia         6 months    4                    1                 0.6531092   0.4859256   0.8778128
Keneba           Gambia         24 months   1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia         24 months   2                    1                 1.1319446   0.9476947   1.3520162
Keneba           Gambia         24 months   3                    1                 1.1246259   0.9310233   1.3584873
Keneba           Gambia         24 months   4                    1                 1.1152235   0.9166229   1.3568542
LCNI-5           Malawi         6 months    1                    1                 1.0000000   1.0000000   1.0000000
LCNI-5           Malawi         6 months    2                    1                 1.0629501   0.8455950   1.3361750
LCNI-5           Malawi         6 months    3                    1                 1.0246353   0.7582392   1.3846257
LCNI-5           Malawi         6 months    4                    1                 0.9506058   0.7308416   1.2364531
LCNI-5           Malawi         24 months   1                    1                 1.0000000   1.0000000   1.0000000
LCNI-5           Malawi         24 months   2                    1                 1.0019912   0.7283497   1.3784402
LCNI-5           Malawi         24 months   3                    1                 1.1609971   0.9191978   1.4664027
LCNI-5           Malawi         24 months   4                    1                 1.0099256   0.7659920   1.3315409
MAL-ED           Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh     Birth       2                    1                 0.8888889   0.3917347   2.0169860
MAL-ED           Bangladesh     Birth       3                    1                 1.0625000   0.5144599   2.1943523
MAL-ED           Bangladesh     Birth       4                    1                 1.4166667   0.6956091   2.8851612
MAL-ED           Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh     6 months    2                    1                 0.4426559   0.1997412   0.9809907
MAL-ED           Bangladesh     6 months    3                    1                 0.6547619   0.3168490   1.3530519
MAL-ED           Bangladesh     6 months    4                    1                 0.8571429   0.4360671   1.6848185
MAL-ED           Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh     24 months   2                    1                 0.6982305   0.4688774   1.0397725
MAL-ED           Bangladesh     24 months   3                    1                 0.7789634   0.5325279   1.1394407
MAL-ED           Bangladesh     24 months   4                    1                 0.8457317   0.5757108   1.2423984
MAL-ED           India          6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           India          6 months    2                    1                 1.0476190   0.4668184   2.3510333
MAL-ED           India          6 months    3                    1                 1.2054795   0.6157526   2.3600076
MAL-ED           India          6 months    4                    1                 0.9000000   0.4091246   1.9798372
MAL-ED           India          24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           India          24 months   2                    1                 0.9786304   0.6697668   1.4299268
MAL-ED           India          24 months   3                    1                 0.9131545   0.5991154   1.3918040
MAL-ED           India          24 months   4                    1                 0.9086673   0.5644855   1.4627058
MAL-ED           Peru           6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Peru           6 months    2                    1                 0.9974026   0.6009022   1.6555306
MAL-ED           Peru           6 months    3                    1                 0.5760000   0.2884691   1.1501265
MAL-ED           Peru           6 months    4                    1                 0.5760000   0.2555808   1.2981256
MAL-ED           Peru           24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Peru           24 months   2                    1                 1.6226708   0.9177153   2.8691476
MAL-ED           Peru           24 months   3                    1                 1.4550265   0.8212654   2.5778537
MAL-ED           Peru           24 months   4                    1                 1.7934783   1.0319528   3.1169683
MAL-ED           South Africa   24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           South Africa   24 months   2                    1                 0.5937922   0.2894742   1.2180333
MAL-ED           South Africa   24 months   3                    1                 1.1107711   0.7063485   1.7467474
MAL-ED           South Africa   24 months   4                    1                 1.1978221   0.7437380   1.9291442
MAL-ED           Tanzania       Birth       1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania       Birth       2                    1                 0.6171429   0.2168270   1.7565400
MAL-ED           Tanzania       Birth       3                    1                 0.6352941   0.2235520   1.8053903
MAL-ED           Tanzania       Birth       4                    1                 0.5684211   0.1988786   1.6246216
MAL-ED           Tanzania       6 months    1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania       6 months    2                    1                 0.9809211   0.5756203   1.6715988
MAL-ED           Tanzania       6 months    3                    1                 0.6345581   0.3118960   1.2910199
MAL-ED           Tanzania       6 months    4                    1                 0.8690330   0.4460953   1.6929531
MAL-ED           Tanzania       24 months   1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Tanzania       24 months   2                    1                 0.9491525   0.7450211   1.2092148
MAL-ED           Tanzania       24 months   3                    1                 0.9728814   0.7674045   1.2333758
MAL-ED           Tanzania       24 months   4                    1                 1.1900000   0.9634623   1.4698033
PROBIT           Belarus        6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus        6 months    2                    1                 1.1591274   0.8688625   1.5463624
PROBIT           Belarus        6 months    3                    1                 1.1157636   0.8016308   1.5529947
PROBIT           Belarus        6 months    4                    1                 1.1903535   0.8851074   1.6008694
PROBIT           Belarus        24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus        24 months   2                    1                 0.7795748   0.4458836   1.3629947
PROBIT           Belarus        24 months   3                    1                 0.5731680   0.2781459   1.1811122
PROBIT           Belarus        24 months   4                    1                 0.4447242   0.2068447   0.9561748
PROVIDE          Bangladesh     Birth       1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh     Birth       2                    1                 0.5742331   0.1805900   1.8259247
PROVIDE          Bangladesh     Birth       3                    1                 1.4474227   0.5051068   4.1477022
PROVIDE          Bangladesh     Birth       4                    1                 2.1731343   0.8696843   5.4301463
PROVIDE          Bangladesh     6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh     6 months    2                    1                 0.5151727   0.2960364   0.8965211
PROVIDE          Bangladesh     6 months    3                    1                 0.6156839   0.3928083   0.9650170
PROVIDE          Bangladesh     6 months    4                    1                 0.5144060   0.2792161   0.9477015
PROVIDE          Bangladesh     24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh     24 months   2                    1                 0.8364055   0.5912234   1.1832655
PROVIDE          Bangladesh     24 months   3                    1                 0.8703297   0.5875874   1.2891253
PROVIDE          Bangladesh     24 months   4                    1                 1.0176871   0.7334152   1.4121427
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
ZVITAMBO         Zimbabwe       24 months   2                    1                 0.8615741   0.7128458   1.0413332
ZVITAMBO         Zimbabwe       24 months   3                    1                 0.9297481   0.7430364   1.1633772
ZVITAMBO         Zimbabwe       24 months   4                    1                 0.8361737   0.6933253   1.0084537


### Parameter: PAR


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          6 months    1                    NA                -0.1051276   -0.1848637   -0.0253915
CMC-V-BCS-2002   India          24 months   1                    NA                 0.0041098   -0.0711408    0.0793605
CMIN             Bangladesh     6 months    1                    NA                 0.0227160   -0.0964898    0.1419219
CMIN             Bangladesh     24 months   1                    NA                -0.0361305   -0.1198968    0.0476358
Guatemala BSC    Guatemala      6 months    1                    NA                 0.0510033   -0.0486110    0.1506177
IRC              India          Birth       1                    NA                -0.0351834   -0.1001194    0.0297526
IRC              India          6 months    1                    NA                 0.0272129   -0.0364108    0.0908365
IRC              India          24 months   1                    NA                -0.0970060   -0.1746398   -0.0193721
JiVitA-3         Bangladesh     Birth       1                    NA                -0.0308540   -0.0409680   -0.0207400
JiVitA-3         Bangladesh     6 months    1                    NA                 0.0035313   -0.0089862    0.0160487
JiVitA-3         Bangladesh     24 months   1                    NA                -0.0443943   -0.0629273   -0.0258614
JiVitA-4         Bangladesh     Birth       1                    NA                -0.0387646   -0.0918708    0.0143416
JiVitA-4         Bangladesh     6 months    1                    NA                -0.0052559   -0.0270343    0.0165224
JiVitA-4         Bangladesh     24 months   1                    NA                -0.0645340   -0.1039201   -0.0251480
Keneba           Gambia         Birth       1                    NA                -0.0020123   -0.0197989    0.0157744
Keneba           Gambia         6 months    1                    NA                -0.0424525   -0.0726402   -0.0122647
Keneba           Gambia         24 months   1                    NA                 0.0274304   -0.0069902    0.0618509
LCNI-5           Malawi         6 months    1                    NA                 0.0055505   -0.0519412    0.0630422
LCNI-5           Malawi         24 months   1                    NA                 0.0266769   -0.0421375    0.0954914
MAL-ED           Bangladesh     Birth       1                    NA                 0.0140056   -0.0632370    0.0912482
MAL-ED           Bangladesh     6 months    1                    NA                -0.0719728   -0.1700686    0.0261229
MAL-ED           Bangladesh     24 months   1                    NA                -0.0852287   -0.1779318    0.0074744
MAL-ED           India          6 months    1                    NA                 0.0088598   -0.0708549    0.0885745
MAL-ED           India          24 months   1                    NA                -0.0188411   -0.1209560    0.0832739
MAL-ED           Peru           6 months    1                    NA                -0.0406364   -0.1093157    0.0280428
MAL-ED           Peru           24 months   1                    NA                 0.1136137    0.0111532    0.2160743
MAL-ED           South Africa   24 months   1                    NA                 0.0074866   -0.1031080    0.1180813
MAL-ED           Tanzania       Birth       1                    NA                -0.0937778   -0.2818768    0.0943212
MAL-ED           Tanzania       6 months    1                    NA                -0.0287392   -0.1145603    0.0570819
MAL-ED           Tanzania       24 months   1                    NA                 0.0100134   -0.0915021    0.1115288
PROBIT           Belarus        6 months    1                    NA                 0.0041893   -0.0032527    0.0116312
PROBIT           Belarus        24 months   1                    NA                -0.0268235   -0.0664360    0.0127889
PROVIDE          Bangladesh     Birth       1                    NA                 0.0249512   -0.0268430    0.0767454
PROVIDE          Bangladesh     6 months    1                    NA                -0.0638084   -0.1062698   -0.0213470
PROVIDE          Bangladesh     24 months   1                    NA                -0.0248156   -0.1103115    0.0606803
SAS-CompFeed     India          Birth       1                    NA                -0.0142863   -0.0425403    0.0139677
SAS-CompFeed     India          6 months    1                    NA                -0.0542355   -0.0935259   -0.0149451
SAS-FoodSuppl    India          6 months    1                    NA                 0.0476974   -0.0104353    0.1058300
TanzaniaChild2   Tanzania       6 months    1                    NA                 0.0137588   -0.0073512    0.0348689
ZVITAMBO         Zimbabwe       Birth       1                    NA                 0.0243264    0.0165640    0.0320889
ZVITAMBO         Zimbabwe       6 months    1                    NA                -0.0193594   -0.0332576   -0.0054612
ZVITAMBO         Zimbabwe       24 months   1                    NA                -0.0449902   -0.0976157    0.0076354


### Parameter: PAF


studyid          country        agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          6 months    1                    NA                -0.3494782   -0.6434663   -0.1080795
CMC-V-BCS-2002   India          24 months   1                    NA                 0.0057322   -0.1049652    0.1053397
CMIN             Bangladesh     6 months    1                    NA                 0.0593548   -0.3099169    0.3245272
CMIN             Bangladesh     24 months   1                    NA                -0.0529915   -0.1836381    0.0632348
Guatemala BSC    Guatemala      6 months    1                    NA                 0.1694444   -0.2365826    0.4421541
IRC              India          Birth       1                    NA                -0.3033592   -0.9964508    0.1491174
IRC              India          6 months    1                    NA                 0.1107563   -0.1894501    0.3351933
IRC              India          24 months   1                    NA                -0.2306712   -0.4315444   -0.0579843
JiVitA-3         Bangladesh     Birth       1                    NA                -0.0937900   -0.1251914   -0.0632650
JiVitA-3         Bangladesh     6 months    1                    NA                 0.0140473   -0.0370141    0.0625945
JiVitA-3         Bangladesh     24 months   1                    NA                -0.0904124   -0.1289500   -0.0531902
JiVitA-4         Bangladesh     Birth       1                    NA                -0.1276925   -0.3174435    0.0347288
JiVitA-4         Bangladesh     6 months    1                    NA                -0.0207956   -0.1108791    0.0619829
JiVitA-4         Bangladesh     24 months   1                    NA                -0.1609794   -0.2635263   -0.0667551
Keneba           Gambia         Birth       1                    NA                -0.0374086   -0.4267277    0.2456749
Keneba           Gambia         6 months    1                    NA                -0.3016435   -0.5332106   -0.1050510
Keneba           Gambia         24 months   1                    NA                 0.0814412   -0.0266450    0.1781481
LCNI-5           Malawi         6 months    1                    NA                 0.0150708   -0.1540830    0.1594317
LCNI-5           Malawi         24 months   1                    NA                 0.0598680   -0.1080303    0.2023249
MAL-ED           Bangladesh     Birth       1                    NA                 0.0735294   -0.4348307    0.4017777
MAL-ED           Bangladesh     6 months    1                    NA                -0.3942149   -1.0439686    0.0489897
MAL-ED           Bangladesh     24 months   1                    NA                -0.1788960   -0.3926746    0.0020672
MAL-ED           India          6 months    1                    NA                 0.0464646   -0.4780866    0.3848604
MAL-ED           India          24 months   1                    NA                -0.0440920   -0.3126861    0.1695440
MAL-ED           Peru           6 months    1                    NA                -0.1848958   -0.5412792    0.0890826
MAL-ED           Peru           24 months   1                    NA                 0.3085995   -0.0324138    0.5369738
MAL-ED           South Africa   24 months   1                    NA                 0.0212121   -0.3481100    0.2893564
MAL-ED           Tanzania       Birth       1                    NA                -0.5096618   -1.9604511    0.2301583
MAL-ED           Tanzania       6 months    1                    NA                -0.1203151   -0.5434871    0.1868374
MAL-ED           Tanzania       24 months   1                    NA                 0.0138249   -0.1368033    0.1444946
PROBIT           Belarus        6 months    1                    NA                 0.1064882   -0.1060862    0.2782088
PROBIT           Belarus        24 months   1                    NA                -0.3935741   -1.0037673    0.0308013
PROVIDE          Bangladesh     Birth       1                    NA                 0.2801816   -0.6053273    0.6772381
PROVIDE          Bangladesh     6 months    1                    NA                -0.4014613   -0.6899455   -0.1622231
PROVIDE          Bangladesh     24 months   1                    NA                -0.0754918   -0.3697341    0.1555423
SAS-CompFeed     India          Birth       1                    NA                -0.0512506   -0.1541106    0.0424420
SAS-CompFeed     India          6 months    1                    NA                -0.1906807   -0.3305270   -0.0655331
SAS-FoodSuppl    India          6 months    1                    NA                 0.1111963   -0.0354459    0.2370707
TanzaniaChild2   Tanzania       6 months    1                    NA                 0.1417090   -0.1048778    0.3332625
ZVITAMBO         Zimbabwe       Birth       1                    NA                 0.2353761    0.1572648    0.3062475
ZVITAMBO         Zimbabwe       6 months    1                    NA                -0.1188577   -0.2074090   -0.0368007
ZVITAMBO         Zimbabwe       24 months   1                    NA                -0.1296729   -0.2920633    0.0123078

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

**Outcome Variable:** wasted

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

studyid          country        agecat       rain_quartile   wasted   n_cell       n  outcome_variable 
---------------  -------------  ----------  --------------  -------  -------  ------  -----------------
CMC-V-BCS-2002   India          Birth                    1        0       14      86  wasted           
CMC-V-BCS-2002   India          Birth                    1        1        3      86  wasted           
CMC-V-BCS-2002   India          Birth                    2        0       17      86  wasted           
CMC-V-BCS-2002   India          Birth                    2        1        5      86  wasted           
CMC-V-BCS-2002   India          Birth                    3        0       27      86  wasted           
CMC-V-BCS-2002   India          Birth                    3        1        1      86  wasted           
CMC-V-BCS-2002   India          Birth                    4        0       17      86  wasted           
CMC-V-BCS-2002   India          Birth                    4        1        2      86  wasted           
CMC-V-BCS-2002   India          6 months                 1        0       95     368  wasted           
CMC-V-BCS-2002   India          6 months                 1        1        7     368  wasted           
CMC-V-BCS-2002   India          6 months                 2        0      101     368  wasted           
CMC-V-BCS-2002   India          6 months                 2        1        8     368  wasted           
CMC-V-BCS-2002   India          6 months                 3        0       78     368  wasted           
CMC-V-BCS-2002   India          6 months                 3        1       19     368  wasted           
CMC-V-BCS-2002   India          6 months                 4        0       48     368  wasted           
CMC-V-BCS-2002   India          6 months                 4        1       12     368  wasted           
CMC-V-BCS-2002   India          24 months                1        0       98     372  wasted           
CMC-V-BCS-2002   India          24 months                1        1        3     372  wasted           
CMC-V-BCS-2002   India          24 months                2        0       92     372  wasted           
CMC-V-BCS-2002   India          24 months                2        1        7     372  wasted           
CMC-V-BCS-2002   India          24 months                3        0      109     372  wasted           
CMC-V-BCS-2002   India          24 months                3        1        8     372  wasted           
CMC-V-BCS-2002   India          24 months                4        0       50     372  wasted           
CMC-V-BCS-2002   India          24 months                4        1        5     372  wasted           
CMIN             Bangladesh     Birth                    1        0        4      19  wasted           
CMIN             Bangladesh     Birth                    1        1        0      19  wasted           
CMIN             Bangladesh     Birth                    2        0        4      19  wasted           
CMIN             Bangladesh     Birth                    2        1        1      19  wasted           
CMIN             Bangladesh     Birth                    3        0        3      19  wasted           
CMIN             Bangladesh     Birth                    3        1        2      19  wasted           
CMIN             Bangladesh     Birth                    4        0        4      19  wasted           
CMIN             Bangladesh     Birth                    4        1        1      19  wasted           
CMIN             Bangladesh     6 months                 1        0       50     243  wasted           
CMIN             Bangladesh     6 months                 1        1        0     243  wasted           
CMIN             Bangladesh     6 months                 2        0       53     243  wasted           
CMIN             Bangladesh     6 months                 2        1        9     243  wasted           
CMIN             Bangladesh     6 months                 3        0       68     243  wasted           
CMIN             Bangladesh     6 months                 3        1        2     243  wasted           
CMIN             Bangladesh     6 months                 4        0       51     243  wasted           
CMIN             Bangladesh     6 months                 4        1       10     243  wasted           
CMIN             Bangladesh     24 months                1        0       76     243  wasted           
CMIN             Bangladesh     24 months                1        1        3     243  wasted           
CMIN             Bangladesh     24 months                2        0       55     243  wasted           
CMIN             Bangladesh     24 months                2        1       14     243  wasted           
CMIN             Bangladesh     24 months                3        0       54     243  wasted           
CMIN             Bangladesh     24 months                3        1        4     243  wasted           
CMIN             Bangladesh     24 months                4        0       33     243  wasted           
CMIN             Bangladesh     24 months                4        1        4     243  wasted           
CONTENT          Peru           Birth                    1        0        0       2  wasted           
CONTENT          Peru           Birth                    1        1        0       2  wasted           
CONTENT          Peru           Birth                    2        0        2       2  wasted           
CONTENT          Peru           Birth                    2        1        0       2  wasted           
CONTENT          Peru           Birth                    3        0        0       2  wasted           
CONTENT          Peru           Birth                    3        1        0       2  wasted           
CONTENT          Peru           Birth                    4        0        0       2  wasted           
CONTENT          Peru           Birth                    4        1        0       2  wasted           
CONTENT          Peru           6 months                 1        0       62     215  wasted           
CONTENT          Peru           6 months                 1        1        0     215  wasted           
CONTENT          Peru           6 months                 2        0       32     215  wasted           
CONTENT          Peru           6 months                 2        1        0     215  wasted           
CONTENT          Peru           6 months                 3        0       44     215  wasted           
CONTENT          Peru           6 months                 3        1        0     215  wasted           
CONTENT          Peru           6 months                 4        0       77     215  wasted           
CONTENT          Peru           6 months                 4        1        0     215  wasted           
CONTENT          Peru           24 months                1        0       55     164  wasted           
CONTENT          Peru           24 months                1        1        0     164  wasted           
CONTENT          Peru           24 months                2        0       35     164  wasted           
CONTENT          Peru           24 months                2        1        0     164  wasted           
CONTENT          Peru           24 months                3        0       20     164  wasted           
CONTENT          Peru           24 months                3        1        0     164  wasted           
CONTENT          Peru           24 months                4        0       54     164  wasted           
CONTENT          Peru           24 months                4        1        0     164  wasted           
EE               Pakistan       Birth                    1        0       86     177  wasted           
EE               Pakistan       Birth                    1        1        6     177  wasted           
EE               Pakistan       Birth                    2        0       62     177  wasted           
EE               Pakistan       Birth                    2        1       15     177  wasted           
EE               Pakistan       Birth                    3        0        7     177  wasted           
EE               Pakistan       Birth                    3        1        1     177  wasted           
EE               Pakistan       Birth                    4        0        0     177  wasted           
EE               Pakistan       Birth                    4        1        0     177  wasted           
EE               Pakistan       6 months                 1        0        0     375  wasted           
EE               Pakistan       6 months                 1        1        0     375  wasted           
EE               Pakistan       6 months                 2        0       30     375  wasted           
EE               Pakistan       6 months                 2        1        4     375  wasted           
EE               Pakistan       6 months                 3        0      149     375  wasted           
EE               Pakistan       6 months                 3        1       19     375  wasted           
EE               Pakistan       6 months                 4        0      149     375  wasted           
EE               Pakistan       6 months                 4        1       24     375  wasted           
EE               Pakistan       24 months                1        0        6     168  wasted           
EE               Pakistan       24 months                1        1        2     168  wasted           
EE               Pakistan       24 months                2        0      132     168  wasted           
EE               Pakistan       24 months                2        1       28     168  wasted           
EE               Pakistan       24 months                3        0        0     168  wasted           
EE               Pakistan       24 months                3        1        0     168  wasted           
EE               Pakistan       24 months                4        0        0     168  wasted           
EE               Pakistan       24 months                4        1        0     168  wasted           
GMS-Nepal        Nepal          Birth                    1        0        0     641  wasted           
GMS-Nepal        Nepal          Birth                    1        1        0     641  wasted           
GMS-Nepal        Nepal          Birth                    2        0        0     641  wasted           
GMS-Nepal        Nepal          Birth                    2        1        0     641  wasted           
GMS-Nepal        Nepal          Birth                    3        0      123     641  wasted           
GMS-Nepal        Nepal          Birth                    3        1       29     641  wasted           
GMS-Nepal        Nepal          Birth                    4        0      386     641  wasted           
GMS-Nepal        Nepal          Birth                    4        1      103     641  wasted           
GMS-Nepal        Nepal          6 months                 1        0      454     564  wasted           
GMS-Nepal        Nepal          6 months                 1        1       48     564  wasted           
GMS-Nepal        Nepal          6 months                 2        0       59     564  wasted           
GMS-Nepal        Nepal          6 months                 2        1        3     564  wasted           
GMS-Nepal        Nepal          6 months                 3        0        0     564  wasted           
GMS-Nepal        Nepal          6 months                 3        1        0     564  wasted           
GMS-Nepal        Nepal          6 months                 4        0        0     564  wasted           
GMS-Nepal        Nepal          6 months                 4        1        0     564  wasted           
GMS-Nepal        Nepal          24 months                1        0        0     487  wasted           
GMS-Nepal        Nepal          24 months                1        1        0     487  wasted           
GMS-Nepal        Nepal          24 months                2        0        0     487  wasted           
GMS-Nepal        Nepal          24 months                2        1        0     487  wasted           
GMS-Nepal        Nepal          24 months                3        0       37     487  wasted           
GMS-Nepal        Nepal          24 months                3        1        2     487  wasted           
GMS-Nepal        Nepal          24 months                4        0      359     487  wasted           
GMS-Nepal        Nepal          24 months                4        1       89     487  wasted           
Guatemala BSC    Guatemala      6 months                 1        0       60     299  wasted           
Guatemala BSC    Guatemala      6 months                 1        1        0     299  wasted           
Guatemala BSC    Guatemala      6 months                 2        0       79     299  wasted           
Guatemala BSC    Guatemala      6 months                 2        1        1     299  wasted           
Guatemala BSC    Guatemala      6 months                 3        0       85     299  wasted           
Guatemala BSC    Guatemala      6 months                 3        1        2     299  wasted           
Guatemala BSC    Guatemala      6 months                 4        0       71     299  wasted           
Guatemala BSC    Guatemala      6 months                 4        1        1     299  wasted           
IRC              India          Birth                    1        0       65     343  wasted           
IRC              India          Birth                    1        1       13     343  wasted           
IRC              India          Birth                    2        0       83     343  wasted           
IRC              India          Birth                    2        1       31     343  wasted           
IRC              India          Birth                    3        0       39     343  wasted           
IRC              India          Birth                    3        1       20     343  wasted           
IRC              India          Birth                    4        0       64     343  wasted           
IRC              India          Birth                    4        1       28     343  wasted           
IRC              India          6 months                 1        0      101     408  wasted           
IRC              India          6 months                 1        1       16     408  wasted           
IRC              India          6 months                 2        0       69     408  wasted           
IRC              India          6 months                 2        1        8     408  wasted           
IRC              India          6 months                 3        0      112     408  wasted           
IRC              India          6 months                 3        1       17     408  wasted           
IRC              India          6 months                 4        0       72     408  wasted           
IRC              India          6 months                 4        1       13     408  wasted           
IRC              India          24 months                1        0      110     409  wasted           
IRC              India          24 months                1        1        4     409  wasted           
IRC              India          24 months                2        0      111     409  wasted           
IRC              India          24 months                2        1        8     409  wasted           
IRC              India          24 months                3        0       77     409  wasted           
IRC              India          24 months                3        1        8     409  wasted           
IRC              India          24 months                4        0       80     409  wasted           
IRC              India          24 months                4        1       11     409  wasted           
JiVitA-3         Bangladesh     Birth                    1        0     4625   18013  wasted           
JiVitA-3         Bangladesh     Birth                    1        1      492   18013  wasted           
JiVitA-3         Bangladesh     Birth                    2        0     4969   18013  wasted           
JiVitA-3         Bangladesh     Birth                    2        1      711   18013  wasted           
JiVitA-3         Bangladesh     Birth                    3        0     3448   18013  wasted           
JiVitA-3         Bangladesh     Birth                    3        1      416   18013  wasted           
JiVitA-3         Bangladesh     Birth                    4        0     2999   18013  wasted           
JiVitA-3         Bangladesh     Birth                    4        1      353   18013  wasted           
JiVitA-3         Bangladesh     6 months                 1        0     3412   16784  wasted           
JiVitA-3         Bangladesh     6 months                 1        1      298   16784  wasted           
JiVitA-3         Bangladesh     6 months                 2        0     3309   16784  wasted           
JiVitA-3         Bangladesh     6 months                 2        1      271   16784  wasted           
JiVitA-3         Bangladesh     6 months                 3        0     4759   16784  wasted           
JiVitA-3         Bangladesh     6 months                 3        1      465   16784  wasted           
JiVitA-3         Bangladesh     6 months                 4        0     3883   16784  wasted           
JiVitA-3         Bangladesh     6 months                 4        1      387   16784  wasted           
JiVitA-3         Bangladesh     24 months                1        0     2204    8603  wasted           
JiVitA-3         Bangladesh     24 months                1        1      407    8603  wasted           
JiVitA-3         Bangladesh     24 months                2        0     1948    8603  wasted           
JiVitA-3         Bangladesh     24 months                2        1      659    8603  wasted           
JiVitA-3         Bangladesh     24 months                3        0     1302    8603  wasted           
JiVitA-3         Bangladesh     24 months                3        1      335    8603  wasted           
JiVitA-3         Bangladesh     24 months                4        0     1271    8603  wasted           
JiVitA-3         Bangladesh     24 months                4        1      477    8603  wasted           
JiVitA-4         Bangladesh     Birth                    1        0      261    2396  wasted           
JiVitA-4         Bangladesh     Birth                    1        1       16    2396  wasted           
JiVitA-4         Bangladesh     Birth                    2        0      166    2396  wasted           
JiVitA-4         Bangladesh     Birth                    2        1       29    2396  wasted           
JiVitA-4         Bangladesh     Birth                    3        0      981    2396  wasted           
JiVitA-4         Bangladesh     Birth                    3        1      107    2396  wasted           
JiVitA-4         Bangladesh     Birth                    4        0      749    2396  wasted           
JiVitA-4         Bangladesh     Birth                    4        1       87    2396  wasted           
JiVitA-4         Bangladesh     6 months                 1        0     1397    4833  wasted           
JiVitA-4         Bangladesh     6 months                 1        1       73    4833  wasted           
JiVitA-4         Bangladesh     6 months                 2        0     2452    4833  wasted           
JiVitA-4         Bangladesh     6 months                 2        1      164    4833  wasted           
JiVitA-4         Bangladesh     6 months                 3        0      600    4833  wasted           
JiVitA-4         Bangladesh     6 months                 3        1       28    4833  wasted           
JiVitA-4         Bangladesh     6 months                 4        0      109    4833  wasted           
JiVitA-4         Bangladesh     6 months                 4        1       10    4833  wasted           
JiVitA-4         Bangladesh     24 months                1        0      588    4735  wasted           
JiVitA-4         Bangladesh     24 months                1        1       98    4735  wasted           
JiVitA-4         Bangladesh     24 months                2        0      464    4735  wasted           
JiVitA-4         Bangladesh     24 months                2        1      116    4735  wasted           
JiVitA-4         Bangladesh     24 months                3        0     1689    4735  wasted           
JiVitA-4         Bangladesh     24 months                3        1      382    4735  wasted           
JiVitA-4         Bangladesh     24 months                4        0     1074    4735  wasted           
JiVitA-4         Bangladesh     24 months                4        1      324    4735  wasted           
Keneba           Gambia         Birth                    1        0      310    1466  wasted           
Keneba           Gambia         Birth                    1        1      116    1466  wasted           
Keneba           Gambia         Birth                    2        0      294    1466  wasted           
Keneba           Gambia         Birth                    2        1      107    1466  wasted           
Keneba           Gambia         Birth                    3        0      283    1466  wasted           
Keneba           Gambia         Birth                    3        1       81    1466  wasted           
Keneba           Gambia         Birth                    4        0      215    1466  wasted           
Keneba           Gambia         Birth                    4        1       60    1466  wasted           
Keneba           Gambia         6 months                 1        0      435    2089  wasted           
Keneba           Gambia         6 months                 1        1       29    2089  wasted           
Keneba           Gambia         6 months                 2        0      423    2089  wasted           
Keneba           Gambia         6 months                 2        1       36    2089  wasted           
Keneba           Gambia         6 months                 3        0      587    2089  wasted           
Keneba           Gambia         6 months                 3        1       20    2089  wasted           
Keneba           Gambia         6 months                 4        0      523    2089  wasted           
Keneba           Gambia         6 months                 4        1       36    2089  wasted           
Keneba           Gambia         24 months                1        0      469    1726  wasted           
Keneba           Gambia         24 months                1        1       32    1726  wasted           
Keneba           Gambia         24 months                2        0      416    1726  wasted           
Keneba           Gambia         24 months                2        1       76    1726  wasted           
Keneba           Gambia         24 months                3        0      356    1726  wasted           
Keneba           Gambia         24 months                3        1       32    1726  wasted           
Keneba           Gambia         24 months                4        0      294    1726  wasted           
Keneba           Gambia         24 months                4        1       51    1726  wasted           
LCNI-5           Malawi         6 months                 1        0      200     839  wasted           
LCNI-5           Malawi         6 months                 1        1        4     839  wasted           
LCNI-5           Malawi         6 months                 2        0      315     839  wasted           
LCNI-5           Malawi         6 months                 2        1        4     839  wasted           
LCNI-5           Malawi         6 months                 3        0      112     839  wasted           
LCNI-5           Malawi         6 months                 3        1        1     839  wasted           
LCNI-5           Malawi         6 months                 4        0      198     839  wasted           
LCNI-5           Malawi         6 months                 4        1        5     839  wasted           
LCNI-5           Malawi         24 months                1        0      143     563  wasted           
LCNI-5           Malawi         24 months                1        1        2     563  wasted           
LCNI-5           Malawi         24 months                2        0       79     563  wasted           
LCNI-5           Malawi         24 months                2        1        1     563  wasted           
LCNI-5           Malawi         24 months                3        0      206     563  wasted           
LCNI-5           Malawi         24 months                3        1        4     563  wasted           
LCNI-5           Malawi         24 months                4        0      125     563  wasted           
LCNI-5           Malawi         24 months                4        1        3     563  wasted           
MAL-ED           Bangladesh     Birth                    1        0       54     215  wasted           
MAL-ED           Bangladesh     Birth                    1        1       10     215  wasted           
MAL-ED           Bangladesh     Birth                    2        0       38     215  wasted           
MAL-ED           Bangladesh     Birth                    2        1       10     215  wasted           
MAL-ED           Bangladesh     Birth                    3        0       51     215  wasted           
MAL-ED           Bangladesh     Birth                    3        1       10     215  wasted           
MAL-ED           Bangladesh     Birth                    4        0       36     215  wasted           
MAL-ED           Bangladesh     Birth                    4        1        6     215  wasted           
MAL-ED           Bangladesh     6 months                 1        0       52     241  wasted           
MAL-ED           Bangladesh     6 months                 1        1        3     241  wasted           
MAL-ED           Bangladesh     6 months                 2        0       70     241  wasted           
MAL-ED           Bangladesh     6 months                 2        1        2     241  wasted           
MAL-ED           Bangladesh     6 months                 3        0       58     241  wasted           
MAL-ED           Bangladesh     6 months                 3        1        2     241  wasted           
MAL-ED           Bangladesh     6 months                 4        0       53     241  wasted           
MAL-ED           Bangladesh     6 months                 4        1        1     241  wasted           
MAL-ED           Bangladesh     24 months                1        0       69     212  wasted           
MAL-ED           Bangladesh     24 months                1        1        4     212  wasted           
MAL-ED           Bangladesh     24 months                2        0       43     212  wasted           
MAL-ED           Bangladesh     24 months                2        1        8     212  wasted           
MAL-ED           Bangladesh     24 months                3        0       42     212  wasted           
MAL-ED           Bangladesh     24 months                3        1        6     212  wasted           
MAL-ED           Bangladesh     24 months                4        0       37     212  wasted           
MAL-ED           Bangladesh     24 months                4        1        3     212  wasted           
MAL-ED           Brazil         Birth                    1        0       17      62  wasted           
MAL-ED           Brazil         Birth                    1        1        0      62  wasted           
MAL-ED           Brazil         Birth                    2        0       11      62  wasted           
MAL-ED           Brazil         Birth                    2        1        0      62  wasted           
MAL-ED           Brazil         Birth                    3        0       11      62  wasted           
MAL-ED           Brazil         Birth                    3        1        1      62  wasted           
MAL-ED           Brazil         Birth                    4        0       21      62  wasted           
MAL-ED           Brazil         Birth                    4        1        1      62  wasted           
MAL-ED           Brazil         6 months                 1        0       64     209  wasted           
MAL-ED           Brazil         6 months                 1        1        0     209  wasted           
MAL-ED           Brazil         6 months                 2        0       50     209  wasted           
MAL-ED           Brazil         6 months                 2        1        1     209  wasted           
MAL-ED           Brazil         6 months                 3        0       44     209  wasted           
MAL-ED           Brazil         6 months                 3        1        0     209  wasted           
MAL-ED           Brazil         6 months                 4        0       50     209  wasted           
MAL-ED           Brazil         6 months                 4        1        0     209  wasted           
MAL-ED           Brazil         24 months                1        0       63     169  wasted           
MAL-ED           Brazil         24 months                1        1        2     169  wasted           
MAL-ED           Brazil         24 months                2        0       30     169  wasted           
MAL-ED           Brazil         24 months                2        1        0     169  wasted           
MAL-ED           Brazil         24 months                3        0       42     169  wasted           
MAL-ED           Brazil         24 months                3        1        1     169  wasted           
MAL-ED           Brazil         24 months                4        0       31     169  wasted           
MAL-ED           Brazil         24 months                4        1        0     169  wasted           
MAL-ED           India          Birth                    1        0        8      45  wasted           
MAL-ED           India          Birth                    1        1        2      45  wasted           
MAL-ED           India          Birth                    2        0       10      45  wasted           
MAL-ED           India          Birth                    2        1        0      45  wasted           
MAL-ED           India          Birth                    3        0        9      45  wasted           
MAL-ED           India          Birth                    3        1        2      45  wasted           
MAL-ED           India          Birth                    4        0       13      45  wasted           
MAL-ED           India          Birth                    4        1        1      45  wasted           
MAL-ED           India          6 months                 1        0       65     236  wasted           
MAL-ED           India          6 months                 1        1        1     236  wasted           
MAL-ED           India          6 months                 2        0       37     236  wasted           
MAL-ED           India          6 months                 2        1        5     236  wasted           
MAL-ED           India          6 months                 3        0       64     236  wasted           
MAL-ED           India          6 months                 3        1        9     236  wasted           
MAL-ED           India          6 months                 4        0       51     236  wasted           
MAL-ED           India          6 months                 4        1        4     236  wasted           
MAL-ED           India          24 months                1        0       59     227  wasted           
MAL-ED           India          24 months                1        1        6     227  wasted           
MAL-ED           India          24 months                2        0       62     227  wasted           
MAL-ED           India          24 months                2        1        9     227  wasted           
MAL-ED           India          24 months                3        0       46     227  wasted           
MAL-ED           India          24 months                3        1        8     227  wasted           
MAL-ED           India          24 months                4        0       33     227  wasted           
MAL-ED           India          24 months                4        1        4     227  wasted           
MAL-ED           Nepal          Birth                    1        0        4      26  wasted           
MAL-ED           Nepal          Birth                    1        1        1      26  wasted           
MAL-ED           Nepal          Birth                    2        0        9      26  wasted           
MAL-ED           Nepal          Birth                    2        1        0      26  wasted           
MAL-ED           Nepal          Birth                    3        0        6      26  wasted           
MAL-ED           Nepal          Birth                    3        1        1      26  wasted           
MAL-ED           Nepal          Birth                    4        0        5      26  wasted           
MAL-ED           Nepal          Birth                    4        1        0      26  wasted           
MAL-ED           Nepal          6 months                 1        0       58     236  wasted           
MAL-ED           Nepal          6 months                 1        1        2     236  wasted           
MAL-ED           Nepal          6 months                 2        0       58     236  wasted           
MAL-ED           Nepal          6 months                 2        1        1     236  wasted           
MAL-ED           Nepal          6 months                 3        0       59     236  wasted           
MAL-ED           Nepal          6 months                 3        1        0     236  wasted           
MAL-ED           Nepal          6 months                 4        0       57     236  wasted           
MAL-ED           Nepal          6 months                 4        1        1     236  wasted           
MAL-ED           Nepal          24 months                1        0       66     228  wasted           
MAL-ED           Nepal          24 months                1        1        0     228  wasted           
MAL-ED           Nepal          24 months                2        0       58     228  wasted           
MAL-ED           Nepal          24 months                2        1        3     228  wasted           
MAL-ED           Nepal          24 months                3        0       62     228  wasted           
MAL-ED           Nepal          24 months                3        1        1     228  wasted           
MAL-ED           Nepal          24 months                4        0       37     228  wasted           
MAL-ED           Nepal          24 months                4        1        1     228  wasted           
MAL-ED           Peru           Birth                    1        0       47     228  wasted           
MAL-ED           Peru           Birth                    1        1        2     228  wasted           
MAL-ED           Peru           Birth                    2        0       51     228  wasted           
MAL-ED           Peru           Birth                    2        1        1     228  wasted           
MAL-ED           Peru           Birth                    3        0       67     228  wasted           
MAL-ED           Peru           Birth                    3        1        2     228  wasted           
MAL-ED           Peru           Birth                    4        0       58     228  wasted           
MAL-ED           Peru           Birth                    4        1        0     228  wasted           
MAL-ED           Peru           6 months                 1        0       96     273  wasted           
MAL-ED           Peru           6 months                 1        1        0     273  wasted           
MAL-ED           Peru           6 months                 2        0       77     273  wasted           
MAL-ED           Peru           6 months                 2        1        0     273  wasted           
MAL-ED           Peru           6 months                 3        0       60     273  wasted           
MAL-ED           Peru           6 months                 3        1        0     273  wasted           
MAL-ED           Peru           6 months                 4        0       40     273  wasted           
MAL-ED           Peru           6 months                 4        1        0     273  wasted           
MAL-ED           Peru           24 months                1        0       53     201  wasted           
MAL-ED           Peru           24 months                1        1        2     201  wasted           
MAL-ED           Peru           24 months                2        0       46     201  wasted           
MAL-ED           Peru           24 months                2        1        0     201  wasted           
MAL-ED           Peru           24 months                3        0       53     201  wasted           
MAL-ED           Peru           24 months                3        1        1     201  wasted           
MAL-ED           Peru           24 months                4        0       45     201  wasted           
MAL-ED           Peru           24 months                4        1        1     201  wasted           
MAL-ED           South Africa   Birth                    1        0       23     120  wasted           
MAL-ED           South Africa   Birth                    1        1        2     120  wasted           
MAL-ED           South Africa   Birth                    2        0       18     120  wasted           
MAL-ED           South Africa   Birth                    2        1        4     120  wasted           
MAL-ED           South Africa   Birth                    3        0       35     120  wasted           
MAL-ED           South Africa   Birth                    3        1        0     120  wasted           
MAL-ED           South Africa   Birth                    4        0       32     120  wasted           
MAL-ED           South Africa   Birth                    4        1        6     120  wasted           
MAL-ED           South Africa   6 months                 1        0      104     254  wasted           
MAL-ED           South Africa   6 months                 1        1        2     254  wasted           
MAL-ED           South Africa   6 months                 2        0       62     254  wasted           
MAL-ED           South Africa   6 months                 2        1        5     254  wasted           
MAL-ED           South Africa   6 months                 3        0       45     254  wasted           
MAL-ED           South Africa   6 months                 3        1        0     254  wasted           
MAL-ED           South Africa   6 months                 4        0       36     254  wasted           
MAL-ED           South Africa   6 months                 4        1        0     254  wasted           
MAL-ED           South Africa   24 months                1        0       55     238  wasted           
MAL-ED           South Africa   24 months                1        1        0     238  wasted           
MAL-ED           South Africa   24 months                2        0       39     238  wasted           
MAL-ED           South Africa   24 months                2        1        0     238  wasted           
MAL-ED           South Africa   24 months                3        0       86     238  wasted           
MAL-ED           South Africa   24 months                3        1        0     238  wasted           
MAL-ED           South Africa   24 months                4        0       57     238  wasted           
MAL-ED           South Africa   24 months                4        1        1     238  wasted           
MAL-ED           Tanzania       Birth                    1        0       14     115  wasted           
MAL-ED           Tanzania       Birth                    1        1        0     115  wasted           
MAL-ED           Tanzania       Birth                    2        0       33     115  wasted           
MAL-ED           Tanzania       Birth                    2        1        0     115  wasted           
MAL-ED           Tanzania       Birth                    3        0       32     115  wasted           
MAL-ED           Tanzania       Birth                    3        1        0     115  wasted           
MAL-ED           Tanzania       Birth                    4        0       35     115  wasted           
MAL-ED           Tanzania       Birth                    4        1        1     115  wasted           
MAL-ED           Tanzania       6 months                 1        0       71     247  wasted           
MAL-ED           Tanzania       6 months                 1        1        0     247  wasted           
MAL-ED           Tanzania       6 months                 2        0       79     247  wasted           
MAL-ED           Tanzania       6 months                 2        1        1     247  wasted           
MAL-ED           Tanzania       6 months                 3        0       53     247  wasted           
MAL-ED           Tanzania       6 months                 3        1        0     247  wasted           
MAL-ED           Tanzania       6 months                 4        0       43     247  wasted           
MAL-ED           Tanzania       6 months                 4        1        0     247  wasted           
MAL-ED           Tanzania       24 months                1        0       55     214  wasted           
MAL-ED           Tanzania       24 months                1        1        1     214  wasted           
MAL-ED           Tanzania       24 months                2        0       59     214  wasted           
MAL-ED           Tanzania       24 months                2        1        0     214  wasted           
MAL-ED           Tanzania       24 months                3        0       56     214  wasted           
MAL-ED           Tanzania       24 months                3        1        3     214  wasted           
MAL-ED           Tanzania       24 months                4        0       40     214  wasted           
MAL-ED           Tanzania       24 months                4        1        0     214  wasted           
PROBIT           Belarus        Birth                    1        0     3016   13830  wasted           
PROBIT           Belarus        Birth                    1        1      748   13830  wasted           
PROBIT           Belarus        Birth                    2        0     3268   13830  wasted           
PROBIT           Belarus        Birth                    2        1      863   13830  wasted           
PROBIT           Belarus        Birth                    3        0     2164   13830  wasted           
PROBIT           Belarus        Birth                    3        1      538   13830  wasted           
PROBIT           Belarus        Birth                    4        0     2495   13830  wasted           
PROBIT           Belarus        Birth                    4        1      738   13830  wasted           
PROBIT           Belarus        6 months                 1        0     3592   15757  wasted           
PROBIT           Belarus        6 months                 1        1       26   15757  wasted           
PROBIT           Belarus        6 months                 2        0     3093   15757  wasted           
PROBIT           Belarus        6 months                 2        1       25   15757  wasted           
PROBIT           Belarus        6 months                 3        0     4474   15757  wasted           
PROBIT           Belarus        6 months                 3        1       36   15757  wasted           
PROBIT           Belarus        6 months                 4        0     4468   15757  wasted           
PROBIT           Belarus        6 months                 4        1       43   15757  wasted           
PROBIT           Belarus        24 months                1        0     1062    3971  wasted           
PROBIT           Belarus        24 months                1        1       11    3971  wasted           
PROBIT           Belarus        24 months                2        0     1115    3971  wasted           
PROBIT           Belarus        24 months                2        1       14    3971  wasted           
PROBIT           Belarus        24 months                3        0      827    3971  wasted           
PROBIT           Belarus        24 months                3        1        8    3971  wasted           
PROBIT           Belarus        24 months                4        0      923    3971  wasted           
PROBIT           Belarus        24 months                4        1       11    3971  wasted           
PROVIDE          Bangladesh     Birth                    1        0       71     532  wasted           
PROVIDE          Bangladesh     Birth                    1        1        7     532  wasted           
PROVIDE          Bangladesh     Birth                    2        0      121     532  wasted           
PROVIDE          Bangladesh     Birth                    2        1       41     532  wasted           
PROVIDE          Bangladesh     Birth                    3        0       83     532  wasted           
PROVIDE          Bangladesh     Birth                    3        1       14     532  wasted           
PROVIDE          Bangladesh     Birth                    4        0      140     532  wasted           
PROVIDE          Bangladesh     Birth                    4        1       55     532  wasted           
PROVIDE          Bangladesh     6 months                 1        0      199     603  wasted           
PROVIDE          Bangladesh     6 months                 1        1       12     603  wasted           
PROVIDE          Bangladesh     6 months                 2        0      119     603  wasted           
PROVIDE          Bangladesh     6 months                 2        1        3     603  wasted           
PROVIDE          Bangladesh     6 months                 3        0      168     603  wasted           
PROVIDE          Bangladesh     6 months                 3        1        6     603  wasted           
PROVIDE          Bangladesh     6 months                 4        0       92     603  wasted           
PROVIDE          Bangladesh     6 months                 4        1        4     603  wasted           
PROVIDE          Bangladesh     24 months                1        0       91     579  wasted           
PROVIDE          Bangladesh     24 months                1        1        8     579  wasted           
PROVIDE          Bangladesh     24 months                2        0      168     579  wasted           
PROVIDE          Bangladesh     24 months                2        1       19     579  wasted           
PROVIDE          Bangladesh     24 months                3        0       97     579  wasted           
PROVIDE          Bangladesh     24 months                3        1        7     579  wasted           
PROVIDE          Bangladesh     24 months                4        0      161     579  wasted           
PROVIDE          Bangladesh     24 months                4        1       28     579  wasted           
ResPak           Pakistan       Birth                    1        0        3      38  wasted           
ResPak           Pakistan       Birth                    1        1        0      38  wasted           
ResPak           Pakistan       Birth                    2        0        2      38  wasted           
ResPak           Pakistan       Birth                    2        1        0      38  wasted           
ResPak           Pakistan       Birth                    3        0       12      38  wasted           
ResPak           Pakistan       Birth                    3        1        2      38  wasted           
ResPak           Pakistan       Birth                    4        0       17      38  wasted           
ResPak           Pakistan       Birth                    4        1        2      38  wasted           
ResPak           Pakistan       6 months                 1        0       99     239  wasted           
ResPak           Pakistan       6 months                 1        1        8     239  wasted           
ResPak           Pakistan       6 months                 2        0       84     239  wasted           
ResPak           Pakistan       6 months                 2        1       14     239  wasted           
ResPak           Pakistan       6 months                 3        0        7     239  wasted           
ResPak           Pakistan       6 months                 3        1        1     239  wasted           
ResPak           Pakistan       6 months                 4        0       23     239  wasted           
ResPak           Pakistan       6 months                 4        1        3     239  wasted           
SAS-CompFeed     India          Birth                    1        0      218    1103  wasted           
SAS-CompFeed     India          Birth                    1        1       13    1103  wasted           
SAS-CompFeed     India          Birth                    2        0      327    1103  wasted           
SAS-CompFeed     India          Birth                    2        1       44    1103  wasted           
SAS-CompFeed     India          Birth                    3        0      173    1103  wasted           
SAS-CompFeed     India          Birth                    3        1       19    1103  wasted           
SAS-CompFeed     India          Birth                    4        0      267    1103  wasted           
SAS-CompFeed     India          Birth                    4        1       42    1103  wasted           
SAS-CompFeed     India          6 months                 1        0      355    1334  wasted           
SAS-CompFeed     India          6 months                 1        1       20    1334  wasted           
SAS-CompFeed     India          6 months                 2        0      201    1334  wasted           
SAS-CompFeed     India          6 months                 2        1       27    1334  wasted           
SAS-CompFeed     India          6 months                 3        0      376    1334  wasted           
SAS-CompFeed     India          6 months                 3        1       58    1334  wasted           
SAS-CompFeed     India          6 months                 4        0      236    1334  wasted           
SAS-CompFeed     India          6 months                 4        1       61    1334  wasted           
SAS-FoodSuppl    India          6 months                 1        0      135     380  wasted           
SAS-FoodSuppl    India          6 months                 1        1       25     380  wasted           
SAS-FoodSuppl    India          6 months                 2        0       30     380  wasted           
SAS-FoodSuppl    India          6 months                 2        1        7     380  wasted           
SAS-FoodSuppl    India          6 months                 3        0       84     380  wasted           
SAS-FoodSuppl    India          6 months                 3        1       23     380  wasted           
SAS-FoodSuppl    India          6 months                 4        0       62     380  wasted           
SAS-FoodSuppl    India          6 months                 4        1       14     380  wasted           
TanzaniaChild2   Tanzania       6 months                 1        0      490    2028  wasted           
TanzaniaChild2   Tanzania       6 months                 1        1       26    2028  wasted           
TanzaniaChild2   Tanzania       6 months                 2        0      529    2028  wasted           
TanzaniaChild2   Tanzania       6 months                 2        1       35    2028  wasted           
TanzaniaChild2   Tanzania       6 months                 3        0      452    2028  wasted           
TanzaniaChild2   Tanzania       6 months                 3        1       15    2028  wasted           
TanzaniaChild2   Tanzania       6 months                 4        0      470    2028  wasted           
TanzaniaChild2   Tanzania       6 months                 4        1       11    2028  wasted           
TanzaniaChild2   Tanzania       24 months                1        0        0       6  wasted           
TanzaniaChild2   Tanzania       24 months                1        1        0       6  wasted           
TanzaniaChild2   Tanzania       24 months                2        0        4       6  wasted           
TanzaniaChild2   Tanzania       24 months                2        1        0       6  wasted           
TanzaniaChild2   Tanzania       24 months                3        0        0       6  wasted           
TanzaniaChild2   Tanzania       24 months                3        1        0       6  wasted           
TanzaniaChild2   Tanzania       24 months                4        0        2       6  wasted           
TanzaniaChild2   Tanzania       24 months                4        1        0       6  wasted           
ZVITAMBO         Zimbabwe       Birth                    1        0     2928   12916  wasted           
ZVITAMBO         Zimbabwe       Birth                    1        1      603   12916  wasted           
ZVITAMBO         Zimbabwe       Birth                    2        0     2446   12916  wasted           
ZVITAMBO         Zimbabwe       Birth                    2        1      456   12916  wasted           
ZVITAMBO         Zimbabwe       Birth                    3        0     2694   12916  wasted           
ZVITAMBO         Zimbabwe       Birth                    3        1      543   12916  wasted           
ZVITAMBO         Zimbabwe       Birth                    4        0     2788   12916  wasted           
ZVITAMBO         Zimbabwe       Birth                    4        1      458   12916  wasted           
ZVITAMBO         Zimbabwe       6 months                 1        0     2054    8505  wasted           
ZVITAMBO         Zimbabwe       6 months                 1        1       70    8505  wasted           
ZVITAMBO         Zimbabwe       6 months                 2        0     2129    8505  wasted           
ZVITAMBO         Zimbabwe       6 months                 2        1       70    8505  wasted           
ZVITAMBO         Zimbabwe       6 months                 3        0     1913    8505  wasted           
ZVITAMBO         Zimbabwe       6 months                 3        1       59    8505  wasted           
ZVITAMBO         Zimbabwe       6 months                 4        0     2144    8505  wasted           
ZVITAMBO         Zimbabwe       6 months                 4        1       66    8505  wasted           
ZVITAMBO         Zimbabwe       24 months                1        0       53     433  wasted           
ZVITAMBO         Zimbabwe       24 months                1        1       13     433  wasted           
ZVITAMBO         Zimbabwe       24 months                2        0      110     433  wasted           
ZVITAMBO         Zimbabwe       24 months                2        1       29     433  wasted           
ZVITAMBO         Zimbabwe       24 months                3        0       59     433  wasted           
ZVITAMBO         Zimbabwe       24 months                3        1        9     433  wasted           
ZVITAMBO         Zimbabwe       24 months                4        0      132     433  wasted           
ZVITAMBO         Zimbabwe       24 months                4        1       28     433  wasted           


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
* studyid: CMC-V-BCS-2002, country: India, agecat: 24 months
* studyid: CMIN, country: Bangladesh, agecat: Birth
* studyid: CMIN, country: Bangladesh, agecat: 6 months
* studyid: CMIN, country: Bangladesh, agecat: 24 months
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
* studyid: IRC, country: India, agecat: 24 months
* studyid: LCNI-5, country: Malawi, agecat: 6 months
* studyid: LCNI-5, country: Malawi, agecat: 24 months
* studyid: MAL-ED, country: Bangladesh, agecat: 6 months
* studyid: MAL-ED, country: Bangladesh, agecat: 24 months
* studyid: MAL-ED, country: Brazil, agecat: Birth
* studyid: MAL-ED, country: Brazil, agecat: 6 months
* studyid: MAL-ED, country: Brazil, agecat: 24 months
* studyid: MAL-ED, country: India, agecat: Birth
* studyid: MAL-ED, country: India, agecat: 6 months
* studyid: MAL-ED, country: India, agecat: 24 months
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
* studyid: MAL-ED, country: Tanzania, agecat: 24 months
* studyid: PROVIDE, country: Bangladesh, agecat: 6 months
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
![](/tmp/7fd4778b-63b7-4617-b5b9-59d6ed964191/c167fb27-66b9-46ae-ac94-c25852f9a384/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7fd4778b-63b7-4617-b5b9-59d6ed964191/c167fb27-66b9-46ae-ac94-c25852f9a384/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7fd4778b-63b7-4617-b5b9-59d6ed964191/c167fb27-66b9-46ae-ac94-c25852f9a384/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7fd4778b-63b7-4617-b5b9-59d6ed964191/c167fb27-66b9-46ae-ac94-c25852f9a384/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country      agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   India        6 months    1                    NA                0.0686275    0.0194971   0.1177578
CMC-V-BCS-2002   India        6 months    2                    NA                0.0733945    0.0243709   0.1224181
CMC-V-BCS-2002   India        6 months    3                    NA                0.1958763    0.1167892   0.2749634
CMC-V-BCS-2002   India        6 months    4                    NA                0.2000000    0.0986501   0.3013499
IRC              India        Birth       1                    NA                0.1666667    0.0838403   0.2494930
IRC              India        Birth       2                    NA                0.2719298    0.1901314   0.3537282
IRC              India        Birth       3                    NA                0.3389831    0.2180204   0.4599457
IRC              India        Birth       4                    NA                0.3043478    0.2101872   0.3985085
IRC              India        6 months    1                    NA                0.1367521    0.0744184   0.1990858
IRC              India        6 months    2                    NA                0.1038961    0.0356600   0.1721322
IRC              India        6 months    3                    NA                0.1317829    0.0733403   0.1902256
IRC              India        6 months    4                    NA                0.1529412    0.0763303   0.2295521
JiVitA-3         Bangladesh   Birth       1                    NA                0.0961501    0.0871839   0.1051163
JiVitA-3         Bangladesh   Birth       2                    NA                0.1251761    0.1158834   0.1344687
JiVitA-3         Bangladesh   Birth       3                    NA                0.1076605    0.0972068   0.1181141
JiVitA-3         Bangladesh   Birth       4                    NA                0.1053103    0.0943986   0.1162219
JiVitA-3         Bangladesh   6 months    1                    NA                0.0803235    0.0706271   0.0900198
JiVitA-3         Bangladesh   6 months    2                    NA                0.0756983    0.0662994   0.0850973
JiVitA-3         Bangladesh   6 months    3                    NA                0.0890123    0.0809059   0.0971186
JiVitA-3         Bangladesh   6 months    4                    NA                0.0906323    0.0804887   0.1007759
JiVitA-3         Bangladesh   24 months   1                    NA                0.1558790    0.1406455   0.1711124
JiVitA-3         Bangladesh   24 months   2                    NA                0.2527810    0.2343230   0.2712390
JiVitA-3         Bangladesh   24 months   3                    NA                0.2046426    0.1828329   0.2264524
JiVitA-3         Bangladesh   24 months   4                    NA                0.2728833    0.2480638   0.2977028
JiVitA-4         Bangladesh   Birth       1                    NA                0.0577617    0.0358950   0.0796285
JiVitA-4         Bangladesh   Birth       2                    NA                0.1487179    0.0997194   0.1977165
JiVitA-4         Bangladesh   Birth       3                    NA                0.0983456    0.0763347   0.1203564
JiVitA-4         Bangladesh   Birth       4                    NA                0.1040670    0.0736580   0.1344760
JiVitA-4         Bangladesh   6 months    1                    NA                0.0496599    0.0330492   0.0662706
JiVitA-4         Bangladesh   6 months    2                    NA                0.0626911    0.0504690   0.0749132
JiVitA-4         Bangladesh   6 months    3                    NA                0.0445860    0.0277003   0.0614717
JiVitA-4         Bangladesh   6 months    4                    NA                0.0840336    0.0328805   0.1351867
JiVitA-4         Bangladesh   24 months   1                    NA                0.1428571    0.1106504   0.1750639
JiVitA-4         Bangladesh   24 months   2                    NA                0.2000000    0.1567394   0.2432606
JiVitA-4         Bangladesh   24 months   3                    NA                0.1844520    0.1650452   0.2038587
JiVitA-4         Bangladesh   24 months   4                    NA                0.2317597    0.2067111   0.2568082
Keneba           Gambia       Birth       1                    NA                0.2723005    0.2300149   0.3145860
Keneba           Gambia       Birth       2                    NA                0.2668329    0.2235272   0.3101386
Keneba           Gambia       Birth       3                    NA                0.2225275    0.1797830   0.2652719
Keneba           Gambia       Birth       4                    NA                0.2181818    0.1693512   0.2670124
Keneba           Gambia       6 months    1                    NA                0.0625000    0.0404698   0.0845302
Keneba           Gambia       6 months    2                    NA                0.0784314    0.0538303   0.1030325
Keneba           Gambia       6 months    3                    NA                0.0329489    0.0187452   0.0471527
Keneba           Gambia       6 months    4                    NA                0.0644007    0.0440473   0.0847541
Keneba           Gambia       24 months   1                    NA                0.0638723    0.0424543   0.0852902
Keneba           Gambia       24 months   2                    NA                0.1544715    0.1225282   0.1864148
Keneba           Gambia       24 months   3                    NA                0.0824742    0.0550947   0.1098538
Keneba           Gambia       24 months   4                    NA                0.1478261    0.1103630   0.1852892
MAL-ED           Bangladesh   Birth       1                    NA                0.1562500    0.0670864   0.2454136
MAL-ED           Bangladesh   Birth       2                    NA                0.2083333    0.0931763   0.3234903
MAL-ED           Bangladesh   Birth       3                    NA                0.1639344    0.0708128   0.2570561
MAL-ED           Bangladesh   Birth       4                    NA                0.1428571    0.0367821   0.2489322
PROBIT           Belarus      Birth       1                    NA                0.1987248    0.1342363   0.2632132
PROBIT           Belarus      Birth       2                    NA                0.2089083    0.1411355   0.2766810
PROBIT           Belarus      Birth       3                    NA                0.1991118    0.1253553   0.2728683
PROBIT           Belarus      Birth       4                    NA                0.2282710    0.1572454   0.2992965
PROBIT           Belarus      6 months    1                    NA                0.0071863    0.0046633   0.0097093
PROBIT           Belarus      6 months    2                    NA                0.0080180    0.0051131   0.0109229
PROBIT           Belarus      6 months    3                    NA                0.0079823    0.0046222   0.0113424
PROBIT           Belarus      6 months    4                    NA                0.0095323    0.0059401   0.0131244
PROBIT           Belarus      24 months   1                    NA                0.0102516    0.0013529   0.0191504
PROBIT           Belarus      24 months   2                    NA                0.0124004    0.0041553   0.0206454
PROBIT           Belarus      24 months   3                    NA                0.0095808   -0.0076999   0.0268616
PROBIT           Belarus      24 months   4                    NA                0.0117773    0.0030854   0.0204692
PROVIDE          Bangladesh   Birth       1                    NA                0.0897436    0.0262554   0.1532318
PROVIDE          Bangladesh   Birth       2                    NA                0.2530864    0.1860719   0.3201009
PROVIDE          Bangladesh   Birth       3                    NA                0.1443299    0.0743292   0.2143306
PROVIDE          Bangladesh   Birth       4                    NA                0.2820513    0.2188319   0.3452706
PROVIDE          Bangladesh   24 months   1                    NA                0.0808081    0.0270757   0.1345405
PROVIDE          Bangladesh   24 months   2                    NA                0.1016043    0.0582639   0.1449446
PROVIDE          Bangladesh   24 months   3                    NA                0.0673077    0.0191120   0.1155034
PROVIDE          Bangladesh   24 months   4                    NA                0.1481481    0.0974581   0.1988382
SAS-CompFeed     India        Birth       1                    NA                0.0562771    0.0162749   0.0962792
SAS-CompFeed     India        Birth       2                    NA                0.1185984    0.0647981   0.1723987
SAS-CompFeed     India        Birth       3                    NA                0.0989583    0.0595568   0.1383599
SAS-CompFeed     India        Birth       4                    NA                0.1359223    0.0899483   0.1818964
SAS-CompFeed     India        6 months    1                    NA                0.0533333    0.0334905   0.0731762
SAS-CompFeed     India        6 months    2                    NA                0.1184211    0.0799919   0.1568502
SAS-CompFeed     India        6 months    3                    NA                0.1336406    0.0929308   0.1743503
SAS-CompFeed     India        6 months    4                    NA                0.2053872    0.1459476   0.2648268
SAS-FoodSuppl    India        6 months    1                    NA                0.1562500    0.0999151   0.2125849
SAS-FoodSuppl    India        6 months    2                    NA                0.1891892    0.0628240   0.3155543
SAS-FoodSuppl    India        6 months    3                    NA                0.2149533    0.1370155   0.2928911
SAS-FoodSuppl    India        6 months    4                    NA                0.1842105    0.0969416   0.2714795
TanzaniaChild2   Tanzania     6 months    1                    NA                0.0503876    0.0315092   0.0692660
TanzaniaChild2   Tanzania     6 months    2                    NA                0.0620567    0.0421409   0.0819726
TanzaniaChild2   Tanzania     6 months    3                    NA                0.0321199    0.0161245   0.0481153
TanzaniaChild2   Tanzania     6 months    4                    NA                0.0228690    0.0095067   0.0362314
ZVITAMBO         Zimbabwe     Birth       1                    NA                0.1707732    0.1583606   0.1831857
ZVITAMBO         Zimbabwe     Birth       2                    NA                0.1571330    0.1438917   0.1703743
ZVITAMBO         Zimbabwe     Birth       3                    NA                0.1677479    0.1548758   0.1806200
ZVITAMBO         Zimbabwe     Birth       4                    NA                0.1410967    0.1291205   0.1530730
ZVITAMBO         Zimbabwe     6 months    1                    NA                0.0329567    0.0253641   0.0405493
ZVITAMBO         Zimbabwe     6 months    2                    NA                0.0318327    0.0244947   0.0391706
ZVITAMBO         Zimbabwe     6 months    3                    NA                0.0299189    0.0223992   0.0374385
ZVITAMBO         Zimbabwe     6 months    4                    NA                0.0298643    0.0227673   0.0369612
ZVITAMBO         Zimbabwe     24 months   1                    NA                0.1969697    0.1009094   0.2930300
ZVITAMBO         Zimbabwe     24 months   2                    NA                0.2086331    0.1410056   0.2762606
ZVITAMBO         Zimbabwe     24 months   3                    NA                0.1323529    0.0517160   0.2129899
ZVITAMBO         Zimbabwe     24 months   4                    NA                0.1750000    0.1160565   0.2339435


### Parameter: E(Y)


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        6 months    NA                   NA                0.1250000   0.0911644   0.1588356
IRC              India        Birth       NA                   NA                0.2682216   0.2212677   0.3151755
IRC              India        6 months    NA                   NA                0.1323529   0.0994307   0.1652752
JiVitA-3         Bangladesh   Birth       NA                   NA                0.1094765   0.1043554   0.1145976
JiVitA-3         Bangladesh   6 months    NA                   NA                0.0846640   0.0798626   0.0894653
JiVitA-3         Bangladesh   24 months   NA                   NA                0.2182959   0.2084450   0.2281469
JiVitA-4         Bangladesh   Birth       NA                   NA                0.0997496   0.0843744   0.1151247
JiVitA-4         Bangladesh   6 months    NA                   NA                0.0569005   0.0480577   0.0657432
JiVitA-4         Bangladesh   24 months   NA                   NA                0.1942978   0.1810880   0.2075076
Keneba           Gambia       Birth       NA                   NA                0.2482947   0.2261720   0.2704173
Keneba           Gambia       6 months    NA                   NA                0.0579225   0.0479029   0.0679420
Keneba           Gambia       24 months   NA                   NA                0.1106605   0.0958563   0.1254646
MAL-ED           Bangladesh   Birth       NA                   NA                0.1674419   0.1174176   0.2174661
PROBIT           Belarus      Birth       NA                   NA                0.2087491   0.1435025   0.2739957
PROBIT           Belarus      6 months    NA                   NA                0.0082503   0.0066012   0.0098994
PROBIT           Belarus      24 months   NA                   NA                0.0110803   0.0050506   0.0171100
PROVIDE          Bangladesh   Birth       NA                   NA                0.2199248   0.1846953   0.2551543
PROVIDE          Bangladesh   24 months   NA                   NA                0.1070812   0.0818727   0.1322897
SAS-CompFeed     India        Birth       NA                   NA                0.1069810   0.0760961   0.1378659
SAS-CompFeed     India        6 months    NA                   NA                0.1244378   0.0992652   0.1496104
SAS-FoodSuppl    India        6 months    NA                   NA                0.1815789   0.1427684   0.2203895
TanzaniaChild2   Tanzania     6 months    NA                   NA                0.0428994   0.0340782   0.0517206
ZVITAMBO         Zimbabwe     Birth       NA                   NA                0.1594921   0.1531776   0.1658066
ZVITAMBO         Zimbabwe     6 months    NA                   NA                0.0311581   0.0274654   0.0348509
ZVITAMBO         Zimbabwe     24 months   NA                   NA                0.1824480   0.1460286   0.2188675


### Parameter: RR


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        6 months    1                    1                 1.0000000   1.0000000   1.0000000
CMC-V-BCS-2002   India        6 months    2                    1                 1.0694626   0.4017372   2.8470113
CMC-V-BCS-2002   India        6 months    3                    1                 2.8541973   1.2546821   6.4928342
CMC-V-BCS-2002   India        6 months    4                    1                 2.9142857   1.2123053   7.0057118
IRC              India        Birth       1                    1                 1.0000000   1.0000000   1.0000000
IRC              India        Birth       2                    1                 1.6315789   0.9126908   2.9167051
IRC              India        Birth       3                    1                 2.0338983   1.1031304   3.7500030
IRC              India        Birth       4                    1                 1.8260870   1.0169228   3.2791021
IRC              India        6 months    1                    1                 1.0000000   1.0000000   1.0000000
IRC              India        6 months    2                    1                 0.7597403   0.3415616   1.6899008
IRC              India        6 months    3                    1                 0.9636628   0.5101916   1.8201906
IRC              India        6 months    4                    1                 1.1183824   0.5681442   2.2015170
JiVitA-3         Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   Birth       2                    1                 1.3018818   1.1604473   1.4605543
JiVitA-3         Bangladesh   Birth       3                    1                 1.1197125   0.9784651   1.2813497
JiVitA-3         Bangladesh   Birth       4                    1                 1.0952695   0.9570047   1.2535104
JiVitA-3         Bangladesh   6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   6 months    2                    1                 0.9424187   0.7916524   1.1218978
JiVitA-3         Bangladesh   6 months    3                    1                 1.1081727   0.9506337   1.2918190
JiVitA-3         Bangladesh   6 months    4                    1                 1.1283420   0.9595583   1.3268141
JiVitA-3         Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3         Bangladesh   24 months   2                    1                 1.6216490   1.4343702   1.8333798
JiVitA-3         Bangladesh   24 months   3                    1                 1.3128303   1.1381605   1.5143061
JiVitA-3         Bangladesh   24 months   4                    1                 1.7506100   1.5320775   2.0003137
JiVitA-4         Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   Birth       2                    1                 2.5746795   1.5547911   4.2635788
JiVitA-4         Bangladesh   Birth       3                    1                 1.7026080   1.0901280   2.6592053
JiVitA-4         Bangladesh   Birth       4                    1                 1.8016597   1.1243036   2.8871006
JiVitA-4         Bangladesh   6 months    1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   6 months    2                    1                 1.2624104   0.8618786   1.8490772
JiVitA-4         Bangladesh   6 months    3                    1                 0.8978274   0.5387323   1.4962796
JiVitA-4         Bangladesh   6 months    4                    1                 1.6921837   0.8472545   3.3797231
JiVitA-4         Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-4         Bangladesh   24 months   2                    1                 1.4000000   1.0209163   1.9198440
JiVitA-4         Bangladesh   24 months   3                    1                 1.2911637   1.0049892   1.6588274
JiVitA-4         Bangladesh   24 months   4                    1                 1.6223176   1.2660808   2.0787887
Keneba           Gambia       Birth       1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia       Birth       2                    1                 0.9799209   0.7827791   1.2267125
Keneba           Gambia       Birth       3                    1                 0.8172130   0.6383543   1.0461855
Keneba           Gambia       Birth       4                    1                 0.8012539   0.6101915   1.0521415
Keneba           Gambia       6 months    1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia       6 months    2                    1                 1.2549020   0.7828775   2.0115266
Keneba           Gambia       6 months    3                    1                 0.5271829   0.3020828   0.9200186
Keneba           Gambia       6 months    4                    1                 1.0304114   0.6418100   1.6543022
Keneba           Gambia       24 months   1                    1                 1.0000000   1.0000000   1.0000000
Keneba           Gambia       24 months   2                    1                 2.4184451   1.6309512   3.5861752
Keneba           Gambia       24 months   3                    1                 1.2912371   0.8055264   2.0698183
Keneba           Gambia       24 months   4                    1                 2.3144022   1.5201849   3.5235565
MAL-ED           Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
MAL-ED           Bangladesh   Birth       2                    1                 1.3333333   0.6024307   2.9510081
MAL-ED           Bangladesh   Birth       3                    1                 1.0491803   0.4689929   2.3471128
MAL-ED           Bangladesh   Birth       4                    1                 0.9142857   0.3584073   2.3323141
PROBIT           Belarus      Birth       1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      Birth       2                    1                 1.0512442   0.8895039   1.2423940
PROBIT           Belarus      Birth       3                    1                 1.0019475   0.8847063   1.1347254
PROBIT           Belarus      Birth       4                    1                 1.1486790   0.9757729   1.3522239
PROBIT           Belarus      6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      6 months    2                    1                 1.1157300   0.6381399   1.9507532
PROBIT           Belarus      6 months    3                    1                 1.1107624   0.6362729   1.9390943
PROBIT           Belarus      6 months    4                    1                 1.3264499   0.8327206   2.1129166
PROBIT           Belarus      24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      24 months   2                    1                 1.2095982   0.5698687   2.5674824
PROBIT           Belarus      24 months   3                    1                 0.9345672   0.1214289   7.1928173
PROBIT           Belarus      24 months   4                    1                 1.1488223   0.3353852   3.9351543
PROVIDE          Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh   Birth       2                    1                 2.8201055   1.3249889   6.0023107
PROVIDE          Bangladesh   Birth       3                    1                 1.6082472   0.6820960   3.7919284
PROVIDE          Bangladesh   Birth       4                    1                 3.1428568   1.4963572   6.6010636
PROVIDE          Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh   24 months   2                    1                 1.2573529   0.5706441   2.7704419
PROVIDE          Bangladesh   24 months   3                    1                 0.8329327   0.3134931   2.2130527
PROVIDE          Bangladesh   24 months   4                    1                 1.8333333   0.8679066   3.8726647
SAS-CompFeed     India        Birth       1                    1                 1.0000000   1.0000000   1.0000000
SAS-CompFeed     India        Birth       2                    1                 2.1074020   1.1777577   3.7708464
SAS-CompFeed     India        Birth       3                    1                 1.7584135   0.8156200   3.7910032
SAS-CompFeed     India        Birth       4                    1                 2.4152352   1.3248595   4.4030037
SAS-CompFeed     India        6 months    1                    1                 1.0000000   1.0000000   1.0000000
SAS-CompFeed     India        6 months    2                    1                 2.2203947   1.3424844   3.6724098
SAS-CompFeed     India        6 months    3                    1                 2.5057604   1.6225471   3.8697397
SAS-CompFeed     India        6 months    4                    1                 3.8510101   2.9084771   5.0989841
SAS-FoodSuppl    India        6 months    1                    1                 1.0000000   1.0000000   1.0000000
SAS-FoodSuppl    India        6 months    2                    1                 1.2108108   0.5668068   2.5865300
SAS-FoodSuppl    India        6 months    3                    1                 1.3757009   0.8250065   2.2939857
SAS-FoodSuppl    India        6 months    4                    1                 1.1789474   0.6500440   2.1381889
TanzaniaChild2   Tanzania     6 months    1                    1                 1.0000000   1.0000000   1.0000000
TanzaniaChild2   Tanzania     6 months    2                    1                 1.2315876   0.7519992   2.0170339
TanzaniaChild2   Tanzania     6 months    3                    1                 0.6374568   0.3418239   1.1887732
TanzaniaChild2   Tanzania     6 months    4                    1                 0.4538621   0.2267144   0.9085920
ZVITAMBO         Zimbabwe     Birth       1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe     Birth       2                    1                 0.9201271   0.8232236   1.0284375
ZVITAMBO         Zimbabwe     Birth       3                    1                 0.9822851   0.8837615   1.0917923
ZVITAMBO         Zimbabwe     Birth       4                    1                 0.8262232   0.7388662   0.9239085
ZVITAMBO         Zimbabwe     6 months    1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe     6 months    2                    1                 0.9658936   0.6972544   1.3380344
ZVITAMBO         Zimbabwe     6 months    3                    1                 0.9078238   0.6455507   1.2766527
ZVITAMBO         Zimbabwe     6 months    4                    1                 0.9061668   0.6508265   1.2616854
ZVITAMBO         Zimbabwe     24 months   1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO         Zimbabwe     24 months   2                    1                 1.0592142   0.5897479   1.9023970
ZVITAMBO         Zimbabwe     24 months   3                    1                 0.6719457   0.3078984   1.4664287
ZVITAMBO         Zimbabwe     24 months   4                    1                 0.8884615   0.4911719   1.6071033


### Parameter: PAR


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        6 months    1                    NA                 0.0563725    0.0092497    0.1034954
IRC              India        Birth       1                    NA                 0.1015549    0.0244525    0.1786573
IRC              India        6 months    1                    NA                -0.0043992   -0.0567530    0.0479546
JiVitA-3         Bangladesh   Birth       1                    NA                 0.0133264    0.0059149    0.0207379
JiVitA-3         Bangladesh   6 months    1                    NA                 0.0043405   -0.0043769    0.0130579
JiVitA-3         Bangladesh   24 months   1                    NA                 0.0624170    0.0486806    0.0761533
JiVitA-4         Bangladesh   Birth       1                    NA                 0.0419878    0.0175142    0.0664615
JiVitA-4         Bangladesh   6 months    1                    NA                 0.0072406   -0.0061957    0.0206769
JiVitA-4         Bangladesh   24 months   1                    NA                 0.0514406    0.0209951    0.0818862
Keneba           Gambia       Birth       1                    NA                -0.0240058   -0.0591953    0.0111837
Keneba           Gambia       6 months    1                    NA                -0.0045775   -0.0238161    0.0146610
Keneba           Gambia       24 months   1                    NA                 0.0467882    0.0265007    0.0670758
MAL-ED           Bangladesh   Birth       1                    NA                 0.0111919   -0.0644352    0.0868190
PROBIT           Belarus      Birth       1                    NA                 0.0100243   -0.0066333    0.0266820
PROBIT           Belarus      6 months    1                    NA                 0.0010640   -0.0013921    0.0035201
PROBIT           Belarus      24 months   1                    NA                 0.0008287   -0.0068629    0.0085203
PROVIDE          Bangladesh   Birth       1                    NA                 0.1301812    0.0662288    0.1941337
PROVIDE          Bangladesh   24 months   1                    NA                 0.0262731   -0.0240788    0.0766250
SAS-CompFeed     India        Birth       1                    NA                 0.0507039    0.0280808    0.0733270
SAS-CompFeed     India        6 months    1                    NA                 0.0711044    0.0514783    0.0907306
SAS-FoodSuppl    India        6 months    1                    NA                 0.0253289   -0.0194746    0.0701325
TanzaniaChild2   Tanzania     6 months    1                    NA                -0.0074882   -0.0233893    0.0084130
ZVITAMBO         Zimbabwe     Birth       1                    NA                -0.0112810   -0.0217550   -0.0008071
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0017985   -0.0083170    0.0047199
ZVITAMBO         Zimbabwe     24 months   1                    NA                -0.0145217   -0.1025042    0.0734609


### Parameter: PAF


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        6 months    1                    NA                 0.4509804   -0.0575661    0.7149847
IRC              India        Birth       1                    NA                 0.3786232    0.0197505    0.6061114
IRC              India        6 months    1                    NA                -0.0332384   -0.5150945    0.2953697
JiVitA-3         Bangladesh   Birth       1                    NA                 0.1217284    0.0511550    0.1870527
JiVitA-3         Bangladesh   6 months    1                    NA                 0.0512676   -0.0573430    0.1487216
JiVitA-3         Bangladesh   24 months   1                    NA                 0.2859282    0.2215091    0.3450167
JiVitA-4         Bangladesh   Birth       1                    NA                 0.4209326    0.1503383    0.6053499
JiVitA-4         Bangladesh   6 months    1                    NA                 0.1272505   -0.1468687    0.3358510
JiVitA-4         Bangladesh   24 months   1                    NA                 0.2647516    0.0906045    0.4055499
Keneba           Gambia       Birth       1                    NA                -0.0966827   -0.2478904    0.0362031
Keneba           Gambia       6 months    1                    NA                -0.0790289   -0.4676356    0.2066809
Keneba           Gambia       24 months   1                    NA                 0.4228088    0.2174331    0.5742861
MAL-ED           Bangladesh   Birth       1                    NA                 0.0668403   -0.5136727    0.4247190
PROBIT           Belarus      Birth       1                    NA                 0.0480210   -0.0339205    0.1234683
PROBIT           Belarus      6 months    1                    NA                 0.1289663   -0.2167479    0.3764528
PROBIT           Belarus      24 months   1                    NA                 0.0747903   -0.9465564    0.5602424
PROVIDE          Bangladesh   Birth       1                    NA                 0.5919351    0.1922534    0.7938500
PROVIDE          Bangladesh   24 months   1                    NA                 0.2453568   -0.4017659    0.5937365
SAS-CompFeed     India        Birth       1                    NA                 0.4739526    0.1332308    0.6807387
SAS-CompFeed     India        6 months    1                    NA                 0.5714056    0.4287222    0.6784521
SAS-FoodSuppl    India        6 months    1                    NA                 0.1394928   -0.1447798    0.3531745
TanzaniaChild2   Tanzania     6 months    1                    NA                -0.1745523   -0.6082349    0.1421819
ZVITAMBO         Zimbabwe     Birth       1                    NA                -0.0707311   -0.1384200   -0.0070668
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0577231   -0.2889263    0.1320077
ZVITAMBO         Zimbabwe     24 months   1                    NA                -0.0795934   -0.6873167    0.3092453

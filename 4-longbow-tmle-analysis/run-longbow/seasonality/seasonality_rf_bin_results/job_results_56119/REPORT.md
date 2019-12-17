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
CMC-V-BCS-2002   India          24 months                1        0       83     334  wasted           
CMC-V-BCS-2002   India          24 months                1        1        4     334  wasted           
CMC-V-BCS-2002   India          24 months                2        0       84     334  wasted           
CMC-V-BCS-2002   India          24 months                2        1        6     334  wasted           
CMC-V-BCS-2002   India          24 months                3        0       89     334  wasted           
CMC-V-BCS-2002   India          24 months                3        1        6     334  wasted           
CMC-V-BCS-2002   India          24 months                4        0       56     334  wasted           
CMC-V-BCS-2002   India          24 months                4        1        6     334  wasted           
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
CMIN             Bangladesh     24 months                1        0       70     225  wasted           
CMIN             Bangladesh     24 months                1        1        3     225  wasted           
CMIN             Bangladesh     24 months                2        0       50     225  wasted           
CMIN             Bangladesh     24 months                2        1       14     225  wasted           
CMIN             Bangladesh     24 months                3        0       48     225  wasted           
CMIN             Bangladesh     24 months                3        1        4     225  wasted           
CMIN             Bangladesh     24 months                4        0       32     225  wasted           
CMIN             Bangladesh     24 months                4        1        4     225  wasted           
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
EE               Pakistan       24 months                1        0        5     159  wasted           
EE               Pakistan       24 months                1        1        2     159  wasted           
EE               Pakistan       24 months                2        0      127     159  wasted           
EE               Pakistan       24 months                2        1       25     159  wasted           
EE               Pakistan       24 months                3        0        0     159  wasted           
EE               Pakistan       24 months                3        1        0     159  wasted           
EE               Pakistan       24 months                4        0        0     159  wasted           
EE               Pakistan       24 months                4        1        0     159  wasted           
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
GMS-Nepal        Nepal          24 months                1        0        0     322  wasted           
GMS-Nepal        Nepal          24 months                1        1        0     322  wasted           
GMS-Nepal        Nepal          24 months                2        0        0     322  wasted           
GMS-Nepal        Nepal          24 months                2        1        0     322  wasted           
GMS-Nepal        Nepal          24 months                3        0       31     322  wasted           
GMS-Nepal        Nepal          24 months                3        1        3     322  wasted           
GMS-Nepal        Nepal          24 months                4        0      232     322  wasted           
GMS-Nepal        Nepal          24 months                4        1       56     322  wasted           
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
IRC              India          24 months                1        0       83     347  wasted           
IRC              India          24 months                1        1        4     347  wasted           
IRC              India          24 months                2        0      100     347  wasted           
IRC              India          24 months                2        1        8     347  wasted           
IRC              India          24 months                3        0       75     347  wasted           
IRC              India          24 months                3        1        6     347  wasted           
IRC              India          24 months                4        0       63     347  wasted           
IRC              India          24 months                4        1        8     347  wasted           
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
JiVitA-3         Bangladesh     24 months                1        0        0       3  wasted           
JiVitA-3         Bangladesh     24 months                1        1        0       3  wasted           
JiVitA-3         Bangladesh     24 months                2        0        0       3  wasted           
JiVitA-3         Bangladesh     24 months                2        1        0       3  wasted           
JiVitA-3         Bangladesh     24 months                3        0        0       3  wasted           
JiVitA-3         Bangladesh     24 months                3        1        0       3  wasted           
JiVitA-3         Bangladesh     24 months                4        0        1       3  wasted           
JiVitA-3         Bangladesh     24 months                4        1        2       3  wasted           
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
JiVitA-4         Bangladesh     24 months                1        0      175    1268  wasted           
JiVitA-4         Bangladesh     24 months                1        1       26    1268  wasted           
JiVitA-4         Bangladesh     24 months                2        0      109    1268  wasted           
JiVitA-4         Bangladesh     24 months                2        1       21    1268  wasted           
JiVitA-4         Bangladesh     24 months                3        0      430    1268  wasted           
JiVitA-4         Bangladesh     24 months                3        1       88    1268  wasted           
JiVitA-4         Bangladesh     24 months                4        0      331    1268  wasted           
JiVitA-4         Bangladesh     24 months                4        1       88    1268  wasted           
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
Keneba           Gambia         24 months                1        0      173     707  wasted           
Keneba           Gambia         24 months                1        1        5     707  wasted           
Keneba           Gambia         24 months                2        0      185     707  wasted           
Keneba           Gambia         24 months                2        1       30     707  wasted           
Keneba           Gambia         24 months                3        0      123     707  wasted           
Keneba           Gambia         24 months                3        1        7     707  wasted           
Keneba           Gambia         24 months                4        0      160     707  wasted           
Keneba           Gambia         24 months                4        1       24     707  wasted           
LCNI-5           Malawi         6 months                 1        0      200     839  wasted           
LCNI-5           Malawi         6 months                 1        1        4     839  wasted           
LCNI-5           Malawi         6 months                 2        0      315     839  wasted           
LCNI-5           Malawi         6 months                 2        1        4     839  wasted           
LCNI-5           Malawi         6 months                 3        0      112     839  wasted           
LCNI-5           Malawi         6 months                 3        1        1     839  wasted           
LCNI-5           Malawi         6 months                 4        0      198     839  wasted           
LCNI-5           Malawi         6 months                 4        1        5     839  wasted           
LCNI-5           Malawi         24 months                1        0       48     208  wasted           
LCNI-5           Malawi         24 months                1        1        2     208  wasted           
LCNI-5           Malawi         24 months                2        0       14     208  wasted           
LCNI-5           Malawi         24 months                2        1        0     208  wasted           
LCNI-5           Malawi         24 months                3        0       99     208  wasted           
LCNI-5           Malawi         24 months                3        1        1     208  wasted           
LCNI-5           Malawi         24 months                4        0       42     208  wasted           
LCNI-5           Malawi         24 months                4        1        2     208  wasted           
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
MAL-ED           Bangladesh     24 months                1        0       46     187  wasted           
MAL-ED           Bangladesh     24 months                1        1        3     187  wasted           
MAL-ED           Bangladesh     24 months                2        0       46     187  wasted           
MAL-ED           Bangladesh     24 months                2        1        5     187  wasted           
MAL-ED           Bangladesh     24 months                3        0       39     187  wasted           
MAL-ED           Bangladesh     24 months                3        1        4     187  wasted           
MAL-ED           Bangladesh     24 months                4        0       40     187  wasted           
MAL-ED           Bangladesh     24 months                4        1        4     187  wasted           
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
MAL-ED           Brazil         24 months                1        0       53     167  wasted           
MAL-ED           Brazil         24 months                1        1        1     167  wasted           
MAL-ED           Brazil         24 months                2        0       32     167  wasted           
MAL-ED           Brazil         24 months                2        1        0     167  wasted           
MAL-ED           Brazil         24 months                3        0       42     167  wasted           
MAL-ED           Brazil         24 months                3        1        1     167  wasted           
MAL-ED           Brazil         24 months                4        0       38     167  wasted           
MAL-ED           Brazil         24 months                4        1        0     167  wasted           
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
MAL-ED           India          24 months                1        0       47     202  wasted           
MAL-ED           India          24 months                1        1        4     202  wasted           
MAL-ED           India          24 months                2        0       50     202  wasted           
MAL-ED           India          24 months                2        1        5     202  wasted           
MAL-ED           India          24 months                3        0       42     202  wasted           
MAL-ED           India          24 months                3        1        6     202  wasted           
MAL-ED           India          24 months                4        0       42     202  wasted           
MAL-ED           India          24 months                4        1        6     202  wasted           
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
MAL-ED           Nepal          24 months                1        0       51     200  wasted           
MAL-ED           Nepal          24 months                1        1        0     200  wasted           
MAL-ED           Nepal          24 months                2        0       52     200  wasted           
MAL-ED           Nepal          24 months                2        1        4     200  wasted           
MAL-ED           Nepal          24 months                3        0       54     200  wasted           
MAL-ED           Nepal          24 months                3        1        1     200  wasted           
MAL-ED           Nepal          24 months                4        0       38     200  wasted           
MAL-ED           Nepal          24 months                4        1        0     200  wasted           
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
MAL-ED           Peru           24 months                1        0       45     199  wasted           
MAL-ED           Peru           24 months                1        1        1     199  wasted           
MAL-ED           Peru           24 months                2        0       41     199  wasted           
MAL-ED           Peru           24 months                2        1        1     199  wasted           
MAL-ED           Peru           24 months                3        0       51     199  wasted           
MAL-ED           Peru           24 months                3        1        0     199  wasted           
MAL-ED           Peru           24 months                4        0       59     199  wasted           
MAL-ED           Peru           24 months                4        1        1     199  wasted           
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
MAL-ED           South Africa   24 months                1        0       45     202  wasted           
MAL-ED           South Africa   24 months                1        1        0     202  wasted           
MAL-ED           South Africa   24 months                2        0       30     202  wasted           
MAL-ED           South Africa   24 months                2        1        1     202  wasted           
MAL-ED           South Africa   24 months                3        0       72     202  wasted           
MAL-ED           South Africa   24 months                3        1        0     202  wasted           
MAL-ED           South Africa   24 months                4        0       52     202  wasted           
MAL-ED           South Africa   24 months                4        1        2     202  wasted           
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
MAL-ED           Tanzania       24 months                1        0       46     183  wasted           
MAL-ED           Tanzania       24 months                1        1        1     183  wasted           
MAL-ED           Tanzania       24 months                2        0       50     183  wasted           
MAL-ED           Tanzania       24 months                2        1        0     183  wasted           
MAL-ED           Tanzania       24 months                3        0       45     183  wasted           
MAL-ED           Tanzania       24 months                3        1        3     183  wasted           
MAL-ED           Tanzania       24 months                4        0       38     183  wasted           
MAL-ED           Tanzania       24 months                4        1        0     183  wasted           
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
PROBIT           Belarus        24 months                1        0      305    1148  wasted           
PROBIT           Belarus        24 months                1        1        1    1148  wasted           
PROBIT           Belarus        24 months                2        0      353    1148  wasted           
PROBIT           Belarus        24 months                2        1        5    1148  wasted           
PROBIT           Belarus        24 months                3        0      207    1148  wasted           
PROBIT           Belarus        24 months                3        1        1    1148  wasted           
PROBIT           Belarus        24 months                4        0      272    1148  wasted           
PROBIT           Belarus        24 months                4        1        4    1148  wasted           
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
PROVIDE          Bangladesh     24 months                1        0        4      41  wasted           
PROVIDE          Bangladesh     24 months                1        1        0      41  wasted           
PROVIDE          Bangladesh     24 months                2        0       14      41  wasted           
PROVIDE          Bangladesh     24 months                2        1        0      41  wasted           
PROVIDE          Bangladesh     24 months                3        0        4      41  wasted           
PROVIDE          Bangladesh     24 months                3        1        0      41  wasted           
PROVIDE          Bangladesh     24 months                4        0       17      41  wasted           
PROVIDE          Bangladesh     24 months                4        1        2      41  wasted           
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
TanzaniaChild2   Tanzania       24 months                1        0        0       4  wasted           
TanzaniaChild2   Tanzania       24 months                1        1        0       4  wasted           
TanzaniaChild2   Tanzania       24 months                2        0        2       4  wasted           
TanzaniaChild2   Tanzania       24 months                2        1        0       4  wasted           
TanzaniaChild2   Tanzania       24 months                3        0        0       4  wasted           
TanzaniaChild2   Tanzania       24 months                3        1        0       4  wasted           
TanzaniaChild2   Tanzania       24 months                4        0        2       4  wasted           
TanzaniaChild2   Tanzania       24 months                4        1        0       4  wasted           
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
ZVITAMBO         Zimbabwe       24 months                1        0        6      90  wasted           
ZVITAMBO         Zimbabwe       24 months                1        1        2      90  wasted           
ZVITAMBO         Zimbabwe       24 months                2        0       17      90  wasted           
ZVITAMBO         Zimbabwe       24 months                2        1        5      90  wasted           
ZVITAMBO         Zimbabwe       24 months                3        0       19      90  wasted           
ZVITAMBO         Zimbabwe       24 months                3        1        2      90  wasted           
ZVITAMBO         Zimbabwe       24 months                4        0       32      90  wasted           
ZVITAMBO         Zimbabwe       24 months                4        1        7      90  wasted           


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
* studyid: JiVitA-3, country: Bangladesh, agecat: 24 months
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
* studyid: PROBIT, country: Belarus, agecat: 24 months
* studyid: PROVIDE, country: Bangladesh, agecat: 6 months
* studyid: PROVIDE, country: Bangladesh, agecat: 24 months
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: 6 months
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8de3450c-b13f-47f5-904b-2bc3f0dab4ef/4a826893-53e3-438b-abbd-ee422fb88c17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8de3450c-b13f-47f5-904b-2bc3f0dab4ef/4a826893-53e3-438b-abbd-ee422fb88c17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8de3450c-b13f-47f5-904b-2bc3f0dab4ef/4a826893-53e3-438b-abbd-ee422fb88c17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8de3450c-b13f-47f5-904b-2bc3f0dab4ef/4a826893-53e3-438b-abbd-ee422fb88c17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        6 months    1                    NA                0.0686275   0.0194971   0.1177578
CMC-V-BCS-2002   India        6 months    2                    NA                0.0733945   0.0243709   0.1224181
CMC-V-BCS-2002   India        6 months    3                    NA                0.1958763   0.1167892   0.2749634
CMC-V-BCS-2002   India        6 months    4                    NA                0.2000000   0.0986501   0.3013499
IRC              India        Birth       1                    NA                0.1666667   0.0838403   0.2494930
IRC              India        Birth       2                    NA                0.2719298   0.1901314   0.3537282
IRC              India        Birth       3                    NA                0.3389831   0.2180204   0.4599457
IRC              India        Birth       4                    NA                0.3043478   0.2101872   0.3985085
IRC              India        6 months    1                    NA                0.1367521   0.0744184   0.1990858
IRC              India        6 months    2                    NA                0.1038961   0.0356600   0.1721322
IRC              India        6 months    3                    NA                0.1317829   0.0733403   0.1902256
IRC              India        6 months    4                    NA                0.1529412   0.0763303   0.2295521
JiVitA-3         Bangladesh   Birth       1                    NA                0.0961501   0.0871839   0.1051163
JiVitA-3         Bangladesh   Birth       2                    NA                0.1251761   0.1158834   0.1344687
JiVitA-3         Bangladesh   Birth       3                    NA                0.1076605   0.0972068   0.1181141
JiVitA-3         Bangladesh   Birth       4                    NA                0.1053103   0.0943986   0.1162219
JiVitA-3         Bangladesh   6 months    1                    NA                0.0803235   0.0706271   0.0900198
JiVitA-3         Bangladesh   6 months    2                    NA                0.0756983   0.0662994   0.0850973
JiVitA-3         Bangladesh   6 months    3                    NA                0.0890123   0.0809059   0.0971186
JiVitA-3         Bangladesh   6 months    4                    NA                0.0906323   0.0804887   0.1007759
JiVitA-4         Bangladesh   Birth       1                    NA                0.0577617   0.0358950   0.0796285
JiVitA-4         Bangladesh   Birth       2                    NA                0.1487179   0.0997194   0.1977165
JiVitA-4         Bangladesh   Birth       3                    NA                0.0983456   0.0763347   0.1203564
JiVitA-4         Bangladesh   Birth       4                    NA                0.1040670   0.0736580   0.1344760
JiVitA-4         Bangladesh   6 months    1                    NA                0.0496599   0.0330492   0.0662706
JiVitA-4         Bangladesh   6 months    2                    NA                0.0626911   0.0504690   0.0749132
JiVitA-4         Bangladesh   6 months    3                    NA                0.0445860   0.0277003   0.0614717
JiVitA-4         Bangladesh   6 months    4                    NA                0.0840336   0.0328805   0.1351867
JiVitA-4         Bangladesh   24 months   1                    NA                0.1293532   0.0658958   0.1928107
JiVitA-4         Bangladesh   24 months   2                    NA                0.1615385   0.1023926   0.2206843
JiVitA-4         Bangladesh   24 months   3                    NA                0.1698842   0.1348148   0.2049536
JiVitA-4         Bangladesh   24 months   4                    NA                0.2100239   0.1562842   0.2637636
Keneba           Gambia       Birth       1                    NA                0.2723005   0.2300149   0.3145860
Keneba           Gambia       Birth       2                    NA                0.2668329   0.2235272   0.3101386
Keneba           Gambia       Birth       3                    NA                0.2225275   0.1797830   0.2652719
Keneba           Gambia       Birth       4                    NA                0.2181818   0.1693512   0.2670124
Keneba           Gambia       6 months    1                    NA                0.0625000   0.0404698   0.0845302
Keneba           Gambia       6 months    2                    NA                0.0784314   0.0538303   0.1030325
Keneba           Gambia       6 months    3                    NA                0.0329489   0.0187452   0.0471527
Keneba           Gambia       6 months    4                    NA                0.0644007   0.0440473   0.0847541
Keneba           Gambia       24 months   1                    NA                0.0280899   0.0037996   0.0523802
Keneba           Gambia       24 months   2                    NA                0.1395349   0.0931855   0.1858843
Keneba           Gambia       24 months   3                    NA                0.0538462   0.0150184   0.0926739
Keneba           Gambia       24 months   4                    NA                0.1304348   0.0817387   0.1791309
MAL-ED           Bangladesh   Birth       1                    NA                0.1562500   0.0670864   0.2454136
MAL-ED           Bangladesh   Birth       2                    NA                0.2083333   0.0931763   0.3234903
MAL-ED           Bangladesh   Birth       3                    NA                0.1639344   0.0708128   0.2570561
MAL-ED           Bangladesh   Birth       4                    NA                0.1428571   0.0367821   0.2489322
PROBIT           Belarus      Birth       1                    NA                0.1987248   0.1342363   0.2632132
PROBIT           Belarus      Birth       2                    NA                0.2089083   0.1411355   0.2766810
PROBIT           Belarus      Birth       3                    NA                0.1991118   0.1253553   0.2728683
PROBIT           Belarus      Birth       4                    NA                0.2282710   0.1572454   0.2992965
PROBIT           Belarus      6 months    1                    NA                0.0071863   0.0046633   0.0097093
PROBIT           Belarus      6 months    2                    NA                0.0080180   0.0051131   0.0109229
PROBIT           Belarus      6 months    3                    NA                0.0079823   0.0046222   0.0113424
PROBIT           Belarus      6 months    4                    NA                0.0095323   0.0059401   0.0131244
PROVIDE          Bangladesh   Birth       1                    NA                0.0897436   0.0262554   0.1532318
PROVIDE          Bangladesh   Birth       2                    NA                0.2530864   0.1860719   0.3201009
PROVIDE          Bangladesh   Birth       3                    NA                0.1443299   0.0743292   0.2143306
PROVIDE          Bangladesh   Birth       4                    NA                0.2820513   0.2188319   0.3452706
SAS-CompFeed     India        Birth       1                    NA                0.0562771   0.0162749   0.0962792
SAS-CompFeed     India        Birth       2                    NA                0.1185984   0.0647981   0.1723987
SAS-CompFeed     India        Birth       3                    NA                0.0989583   0.0595568   0.1383599
SAS-CompFeed     India        Birth       4                    NA                0.1359223   0.0899483   0.1818964
SAS-CompFeed     India        6 months    1                    NA                0.0533333   0.0334905   0.0731762
SAS-CompFeed     India        6 months    2                    NA                0.1184211   0.0799919   0.1568502
SAS-CompFeed     India        6 months    3                    NA                0.1336406   0.0929308   0.1743503
SAS-CompFeed     India        6 months    4                    NA                0.2053872   0.1459476   0.2648268
SAS-FoodSuppl    India        6 months    1                    NA                0.1562500   0.0999151   0.2125849
SAS-FoodSuppl    India        6 months    2                    NA                0.1891892   0.0628240   0.3155543
SAS-FoodSuppl    India        6 months    3                    NA                0.2149533   0.1370155   0.2928911
SAS-FoodSuppl    India        6 months    4                    NA                0.1842105   0.0969416   0.2714795
TanzaniaChild2   Tanzania     6 months    1                    NA                0.0503876   0.0315092   0.0692660
TanzaniaChild2   Tanzania     6 months    2                    NA                0.0620567   0.0421409   0.0819726
TanzaniaChild2   Tanzania     6 months    3                    NA                0.0321199   0.0161245   0.0481153
TanzaniaChild2   Tanzania     6 months    4                    NA                0.0228690   0.0095067   0.0362314
ZVITAMBO         Zimbabwe     Birth       1                    NA                0.1707732   0.1583606   0.1831857
ZVITAMBO         Zimbabwe     Birth       2                    NA                0.1571330   0.1438917   0.1703743
ZVITAMBO         Zimbabwe     Birth       3                    NA                0.1677479   0.1548758   0.1806200
ZVITAMBO         Zimbabwe     Birth       4                    NA                0.1410967   0.1291205   0.1530730
ZVITAMBO         Zimbabwe     6 months    1                    NA                0.0329567   0.0253641   0.0405493
ZVITAMBO         Zimbabwe     6 months    2                    NA                0.0318327   0.0244947   0.0391706
ZVITAMBO         Zimbabwe     6 months    3                    NA                0.0299189   0.0223992   0.0374385
ZVITAMBO         Zimbabwe     6 months    4                    NA                0.0298643   0.0227673   0.0369612


### Parameter: E(Y)


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   India        6 months    NA                   NA                0.1250000   0.0911644   0.1588356
IRC              India        Birth       NA                   NA                0.2682216   0.2212677   0.3151755
IRC              India        6 months    NA                   NA                0.1323529   0.0994307   0.1652752
JiVitA-3         Bangladesh   Birth       NA                   NA                0.1094765   0.1043554   0.1145976
JiVitA-3         Bangladesh   6 months    NA                   NA                0.0846640   0.0798626   0.0894653
JiVitA-4         Bangladesh   Birth       NA                   NA                0.0997496   0.0843744   0.1151247
JiVitA-4         Bangladesh   6 months    NA                   NA                0.0569005   0.0480577   0.0657432
JiVitA-4         Bangladesh   24 months   NA                   NA                0.1758675   0.1495188   0.2022163
Keneba           Gambia       Birth       NA                   NA                0.2482947   0.2261720   0.2704173
Keneba           Gambia       6 months    NA                   NA                0.0579225   0.0479029   0.0679420
Keneba           Gambia       24 months   NA                   NA                0.0933522   0.0718923   0.1148121
MAL-ED           Bangladesh   Birth       NA                   NA                0.1674419   0.1174176   0.2174661
PROBIT           Belarus      Birth       NA                   NA                0.2087491   0.1435025   0.2739957
PROBIT           Belarus      6 months    NA                   NA                0.0082503   0.0066012   0.0098994
PROVIDE          Bangladesh   Birth       NA                   NA                0.2199248   0.1846953   0.2551543
SAS-CompFeed     India        Birth       NA                   NA                0.1069810   0.0760961   0.1378659
SAS-CompFeed     India        6 months    NA                   NA                0.1244378   0.0992652   0.1496104
SAS-FoodSuppl    India        6 months    NA                   NA                0.1815789   0.1427684   0.2203895
TanzaniaChild2   Tanzania     6 months    NA                   NA                0.0428994   0.0340782   0.0517206
ZVITAMBO         Zimbabwe     Birth       NA                   NA                0.1594921   0.1531776   0.1658066
ZVITAMBO         Zimbabwe     6 months    NA                   NA                0.0311581   0.0274654   0.0348509


### Parameter: RR


studyid          country      agecat      intervention_level   baseline_level     estimate    ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  ----------  ----------  -----------
CMC-V-BCS-2002   India        6 months    1                    1                 1.0000000   1.0000000    1.0000000
CMC-V-BCS-2002   India        6 months    2                    1                 1.0694626   0.4017372    2.8470113
CMC-V-BCS-2002   India        6 months    3                    1                 2.8541973   1.2546821    6.4928342
CMC-V-BCS-2002   India        6 months    4                    1                 2.9142857   1.2123053    7.0057118
IRC              India        Birth       1                    1                 1.0000000   1.0000000    1.0000000
IRC              India        Birth       2                    1                 1.6315789   0.9126908    2.9167051
IRC              India        Birth       3                    1                 2.0338983   1.1031304    3.7500030
IRC              India        Birth       4                    1                 1.8260870   1.0169228    3.2791021
IRC              India        6 months    1                    1                 1.0000000   1.0000000    1.0000000
IRC              India        6 months    2                    1                 0.7597403   0.3415616    1.6899008
IRC              India        6 months    3                    1                 0.9636628   0.5101916    1.8201906
IRC              India        6 months    4                    1                 1.1183824   0.5681442    2.2015170
JiVitA-3         Bangladesh   Birth       1                    1                 1.0000000   1.0000000    1.0000000
JiVitA-3         Bangladesh   Birth       2                    1                 1.3018818   1.1604473    1.4605543
JiVitA-3         Bangladesh   Birth       3                    1                 1.1197125   0.9784651    1.2813497
JiVitA-3         Bangladesh   Birth       4                    1                 1.0952695   0.9570047    1.2535104
JiVitA-3         Bangladesh   6 months    1                    1                 1.0000000   1.0000000    1.0000000
JiVitA-3         Bangladesh   6 months    2                    1                 0.9424187   0.7916524    1.1218978
JiVitA-3         Bangladesh   6 months    3                    1                 1.1081727   0.9506337    1.2918190
JiVitA-3         Bangladesh   6 months    4                    1                 1.1283420   0.9595583    1.3268141
JiVitA-4         Bangladesh   Birth       1                    1                 1.0000000   1.0000000    1.0000000
JiVitA-4         Bangladesh   Birth       2                    1                 2.5746795   1.5547911    4.2635788
JiVitA-4         Bangladesh   Birth       3                    1                 1.7026080   1.0901280    2.6592053
JiVitA-4         Bangladesh   Birth       4                    1                 1.8016597   1.1243036    2.8871006
JiVitA-4         Bangladesh   6 months    1                    1                 1.0000000   1.0000000    1.0000000
JiVitA-4         Bangladesh   6 months    2                    1                 1.2624104   0.8618786    1.8490772
JiVitA-4         Bangladesh   6 months    3                    1                 0.8978274   0.5387323    1.4962796
JiVitA-4         Bangladesh   6 months    4                    1                 1.6921837   0.8472545    3.3797231
JiVitA-4         Bangladesh   24 months   1                    1                 1.0000000   1.0000000    1.0000000
JiVitA-4         Bangladesh   24 months   2                    1                 1.2488166   0.6771950    2.3029450
JiVitA-4         Bangladesh   24 months   3                    1                 1.3133353   0.7749160    2.2258536
JiVitA-4         Bangladesh   24 months   4                    1                 1.6236460   0.9335230    2.8239545
Keneba           Gambia       Birth       1                    1                 1.0000000   1.0000000    1.0000000
Keneba           Gambia       Birth       2                    1                 0.9799209   0.7827791    1.2267125
Keneba           Gambia       Birth       3                    1                 0.8172130   0.6383543    1.0461855
Keneba           Gambia       Birth       4                    1                 0.8012539   0.6101915    1.0521415
Keneba           Gambia       6 months    1                    1                 1.0000000   1.0000000    1.0000000
Keneba           Gambia       6 months    2                    1                 1.2549020   0.7828775    2.0115266
Keneba           Gambia       6 months    3                    1                 0.5271829   0.3020828    0.9200186
Keneba           Gambia       6 months    4                    1                 1.0304114   0.6418100    1.6543022
Keneba           Gambia       24 months   1                    1                 1.0000000   1.0000000    1.0000000
Keneba           Gambia       24 months   2                    1                 4.9674419   1.9671092   12.5440307
Keneba           Gambia       24 months   3                    1                 1.9169231   0.6217510    5.9100730
Keneba           Gambia       24 months   4                    1                 4.6434783   1.8104547   11.9096547
MAL-ED           Bangladesh   Birth       1                    1                 1.0000000   1.0000000    1.0000000
MAL-ED           Bangladesh   Birth       2                    1                 1.3333333   0.6024307    2.9510081
MAL-ED           Bangladesh   Birth       3                    1                 1.0491803   0.4689929    2.3471128
MAL-ED           Bangladesh   Birth       4                    1                 0.9142857   0.3584073    2.3323141
PROBIT           Belarus      Birth       1                    1                 1.0000000   1.0000000    1.0000000
PROBIT           Belarus      Birth       2                    1                 1.0512442   0.8895039    1.2423940
PROBIT           Belarus      Birth       3                    1                 1.0019475   0.8847063    1.1347254
PROBIT           Belarus      Birth       4                    1                 1.1486790   0.9757729    1.3522239
PROBIT           Belarus      6 months    1                    1                 1.0000000   1.0000000    1.0000000
PROBIT           Belarus      6 months    2                    1                 1.1157300   0.6381399    1.9507532
PROBIT           Belarus      6 months    3                    1                 1.1107624   0.6362729    1.9390943
PROBIT           Belarus      6 months    4                    1                 1.3264499   0.8327206    2.1129166
PROVIDE          Bangladesh   Birth       1                    1                 1.0000000   1.0000000    1.0000000
PROVIDE          Bangladesh   Birth       2                    1                 2.8201055   1.3249889    6.0023107
PROVIDE          Bangladesh   Birth       3                    1                 1.6082472   0.6820960    3.7919284
PROVIDE          Bangladesh   Birth       4                    1                 3.1428568   1.4963572    6.6010636
SAS-CompFeed     India        Birth       1                    1                 1.0000000   1.0000000    1.0000000
SAS-CompFeed     India        Birth       2                    1                 2.1074020   1.1777577    3.7708464
SAS-CompFeed     India        Birth       3                    1                 1.7584135   0.8156200    3.7910032
SAS-CompFeed     India        Birth       4                    1                 2.4152352   1.3248595    4.4030037
SAS-CompFeed     India        6 months    1                    1                 1.0000000   1.0000000    1.0000000
SAS-CompFeed     India        6 months    2                    1                 2.2203947   1.3424844    3.6724098
SAS-CompFeed     India        6 months    3                    1                 2.5057604   1.6225471    3.8697397
SAS-CompFeed     India        6 months    4                    1                 3.8510101   2.9084771    5.0989841
SAS-FoodSuppl    India        6 months    1                    1                 1.0000000   1.0000000    1.0000000
SAS-FoodSuppl    India        6 months    2                    1                 1.2108108   0.5668068    2.5865300
SAS-FoodSuppl    India        6 months    3                    1                 1.3757009   0.8250065    2.2939857
SAS-FoodSuppl    India        6 months    4                    1                 1.1789474   0.6500440    2.1381889
TanzaniaChild2   Tanzania     6 months    1                    1                 1.0000000   1.0000000    1.0000000
TanzaniaChild2   Tanzania     6 months    2                    1                 1.2315876   0.7519992    2.0170339
TanzaniaChild2   Tanzania     6 months    3                    1                 0.6374568   0.3418239    1.1887732
TanzaniaChild2   Tanzania     6 months    4                    1                 0.4538621   0.2267144    0.9085920
ZVITAMBO         Zimbabwe     Birth       1                    1                 1.0000000   1.0000000    1.0000000
ZVITAMBO         Zimbabwe     Birth       2                    1                 0.9201271   0.8232236    1.0284375
ZVITAMBO         Zimbabwe     Birth       3                    1                 0.9822851   0.8837615    1.0917923
ZVITAMBO         Zimbabwe     Birth       4                    1                 0.8262232   0.7388662    0.9239085
ZVITAMBO         Zimbabwe     6 months    1                    1                 1.0000000   1.0000000    1.0000000
ZVITAMBO         Zimbabwe     6 months    2                    1                 0.9658936   0.6972544    1.3380344
ZVITAMBO         Zimbabwe     6 months    3                    1                 0.9078238   0.6455507    1.2766527
ZVITAMBO         Zimbabwe     6 months    4                    1                 0.9061668   0.6508265    1.2616854


### Parameter: PAR


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        6 months    1                    NA                 0.0563725    0.0092497    0.1034954
IRC              India        Birth       1                    NA                 0.1015549    0.0244525    0.1786573
IRC              India        6 months    1                    NA                -0.0043992   -0.0567530    0.0479546
JiVitA-3         Bangladesh   Birth       1                    NA                 0.0133264    0.0059149    0.0207379
JiVitA-3         Bangladesh   6 months    1                    NA                 0.0043405   -0.0043769    0.0130579
JiVitA-4         Bangladesh   Birth       1                    NA                 0.0419878    0.0175142    0.0664615
JiVitA-4         Bangladesh   6 months    1                    NA                 0.0072406   -0.0061957    0.0206769
JiVitA-4         Bangladesh   24 months   1                    NA                 0.0465143   -0.0120375    0.1050661
Keneba           Gambia       Birth       1                    NA                -0.0240058   -0.0591953    0.0111837
Keneba           Gambia       6 months    1                    NA                -0.0045775   -0.0238161    0.0146610
Keneba           Gambia       24 months   1                    NA                 0.0652623    0.0378133    0.0927114
MAL-ED           Bangladesh   Birth       1                    NA                 0.0111919   -0.0644352    0.0868190
PROBIT           Belarus      Birth       1                    NA                 0.0100243   -0.0066333    0.0266820
PROBIT           Belarus      6 months    1                    NA                 0.0010640   -0.0013921    0.0035201
PROVIDE          Bangladesh   Birth       1                    NA                 0.1301812    0.0662288    0.1941337
SAS-CompFeed     India        Birth       1                    NA                 0.0507039    0.0280808    0.0733270
SAS-CompFeed     India        6 months    1                    NA                 0.0711044    0.0514783    0.0907306
SAS-FoodSuppl    India        6 months    1                    NA                 0.0253289   -0.0194746    0.0701325
TanzaniaChild2   Tanzania     6 months    1                    NA                -0.0074882   -0.0233893    0.0084130
ZVITAMBO         Zimbabwe     Birth       1                    NA                -0.0112810   -0.0217550   -0.0008071
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0017985   -0.0083170    0.0047199


### Parameter: PAF


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India        6 months    1                    NA                 0.4509804   -0.0575661    0.7149847
IRC              India        Birth       1                    NA                 0.3786232    0.0197505    0.6061114
IRC              India        6 months    1                    NA                -0.0332384   -0.5150945    0.2953697
JiVitA-3         Bangladesh   Birth       1                    NA                 0.1217284    0.0511550    0.1870527
JiVitA-3         Bangladesh   6 months    1                    NA                 0.0512676   -0.0573430    0.1487216
JiVitA-4         Bangladesh   Birth       1                    NA                 0.4209326    0.1503383    0.6053499
JiVitA-4         Bangladesh   6 months    1                    NA                 0.1272505   -0.1468687    0.3358510
JiVitA-4         Bangladesh   24 months   1                    NA                 0.2644848   -0.1583525    0.5329723
Keneba           Gambia       Birth       1                    NA                -0.0966827   -0.2478904    0.0362031
Keneba           Gambia       6 months    1                    NA                -0.0790289   -0.4676356    0.2066809
Keneba           Gambia       24 months   1                    NA                 0.6990977    0.3105940    0.8686664
MAL-ED           Bangladesh   Birth       1                    NA                 0.0668403   -0.5136727    0.4247190
PROBIT           Belarus      Birth       1                    NA                 0.0480210   -0.0339205    0.1234683
PROBIT           Belarus      6 months    1                    NA                 0.1289663   -0.2167479    0.3764528
PROVIDE          Bangladesh   Birth       1                    NA                 0.5919351    0.1922534    0.7938500
SAS-CompFeed     India        Birth       1                    NA                 0.4739526    0.1332308    0.6807387
SAS-CompFeed     India        6 months    1                    NA                 0.5714056    0.4287222    0.6784521
SAS-FoodSuppl    India        6 months    1                    NA                 0.1394928   -0.1447798    0.3531745
TanzaniaChild2   Tanzania     6 months    1                    NA                -0.1745523   -0.6082349    0.1421819
ZVITAMBO         Zimbabwe     Birth       1                    NA                -0.0707311   -0.1384200   -0.0070668
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0577231   -0.2889263    0.1320077

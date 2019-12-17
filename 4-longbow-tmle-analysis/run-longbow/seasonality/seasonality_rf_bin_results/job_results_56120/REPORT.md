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

**Outcome Variable:** swasted

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

studyid          country        agecat       rain_quartile   swasted   n_cell       n  outcome_variable 
---------------  -------------  ----------  --------------  --------  -------  ------  -----------------
CMC-V-BCS-2002   India          Birth                    1         0       17      86  swasted          
CMC-V-BCS-2002   India          Birth                    1         1        0      86  swasted          
CMC-V-BCS-2002   India          Birth                    2         0       22      86  swasted          
CMC-V-BCS-2002   India          Birth                    2         1        0      86  swasted          
CMC-V-BCS-2002   India          Birth                    3         0       28      86  swasted          
CMC-V-BCS-2002   India          Birth                    3         1        0      86  swasted          
CMC-V-BCS-2002   India          Birth                    4         0       18      86  swasted          
CMC-V-BCS-2002   India          Birth                    4         1        1      86  swasted          
CMC-V-BCS-2002   India          6 months                 1         0      101     368  swasted          
CMC-V-BCS-2002   India          6 months                 1         1        1     368  swasted          
CMC-V-BCS-2002   India          6 months                 2         0      105     368  swasted          
CMC-V-BCS-2002   India          6 months                 2         1        4     368  swasted          
CMC-V-BCS-2002   India          6 months                 3         0       93     368  swasted          
CMC-V-BCS-2002   India          6 months                 3         1        4     368  swasted          
CMC-V-BCS-2002   India          6 months                 4         0       57     368  swasted          
CMC-V-BCS-2002   India          6 months                 4         1        3     368  swasted          
CMC-V-BCS-2002   India          24 months                1         0       87     334  swasted          
CMC-V-BCS-2002   India          24 months                1         1        0     334  swasted          
CMC-V-BCS-2002   India          24 months                2         0       89     334  swasted          
CMC-V-BCS-2002   India          24 months                2         1        1     334  swasted          
CMC-V-BCS-2002   India          24 months                3         0       94     334  swasted          
CMC-V-BCS-2002   India          24 months                3         1        1     334  swasted          
CMC-V-BCS-2002   India          24 months                4         0       62     334  swasted          
CMC-V-BCS-2002   India          24 months                4         1        0     334  swasted          
CMIN             Bangladesh     Birth                    1         0        4      19  swasted          
CMIN             Bangladesh     Birth                    1         1        0      19  swasted          
CMIN             Bangladesh     Birth                    2         0        4      19  swasted          
CMIN             Bangladesh     Birth                    2         1        1      19  swasted          
CMIN             Bangladesh     Birth                    3         0        5      19  swasted          
CMIN             Bangladesh     Birth                    3         1        0      19  swasted          
CMIN             Bangladesh     Birth                    4         0        5      19  swasted          
CMIN             Bangladesh     Birth                    4         1        0      19  swasted          
CMIN             Bangladesh     6 months                 1         0       50     243  swasted          
CMIN             Bangladesh     6 months                 1         1        0     243  swasted          
CMIN             Bangladesh     6 months                 2         0       61     243  swasted          
CMIN             Bangladesh     6 months                 2         1        1     243  swasted          
CMIN             Bangladesh     6 months                 3         0       70     243  swasted          
CMIN             Bangladesh     6 months                 3         1        0     243  swasted          
CMIN             Bangladesh     6 months                 4         0       57     243  swasted          
CMIN             Bangladesh     6 months                 4         1        4     243  swasted          
CMIN             Bangladesh     24 months                1         0       72     225  swasted          
CMIN             Bangladesh     24 months                1         1        1     225  swasted          
CMIN             Bangladesh     24 months                2         0       63     225  swasted          
CMIN             Bangladesh     24 months                2         1        1     225  swasted          
CMIN             Bangladesh     24 months                3         0       52     225  swasted          
CMIN             Bangladesh     24 months                3         1        0     225  swasted          
CMIN             Bangladesh     24 months                4         0       36     225  swasted          
CMIN             Bangladesh     24 months                4         1        0     225  swasted          
CONTENT          Peru           Birth                    1         0        0       2  swasted          
CONTENT          Peru           Birth                    1         1        0       2  swasted          
CONTENT          Peru           Birth                    2         0        2       2  swasted          
CONTENT          Peru           Birth                    2         1        0       2  swasted          
CONTENT          Peru           Birth                    3         0        0       2  swasted          
CONTENT          Peru           Birth                    3         1        0       2  swasted          
CONTENT          Peru           Birth                    4         0        0       2  swasted          
CONTENT          Peru           Birth                    4         1        0       2  swasted          
CONTENT          Peru           6 months                 1         0       62     215  swasted          
CONTENT          Peru           6 months                 1         1        0     215  swasted          
CONTENT          Peru           6 months                 2         0       32     215  swasted          
CONTENT          Peru           6 months                 2         1        0     215  swasted          
CONTENT          Peru           6 months                 3         0       44     215  swasted          
CONTENT          Peru           6 months                 3         1        0     215  swasted          
CONTENT          Peru           6 months                 4         0       77     215  swasted          
CONTENT          Peru           6 months                 4         1        0     215  swasted          
CONTENT          Peru           24 months                1         0       55     164  swasted          
CONTENT          Peru           24 months                1         1        0     164  swasted          
CONTENT          Peru           24 months                2         0       35     164  swasted          
CONTENT          Peru           24 months                2         1        0     164  swasted          
CONTENT          Peru           24 months                3         0       20     164  swasted          
CONTENT          Peru           24 months                3         1        0     164  swasted          
CONTENT          Peru           24 months                4         0       54     164  swasted          
CONTENT          Peru           24 months                4         1        0     164  swasted          
EE               Pakistan       Birth                    1         0       89     177  swasted          
EE               Pakistan       Birth                    1         1        3     177  swasted          
EE               Pakistan       Birth                    2         0       74     177  swasted          
EE               Pakistan       Birth                    2         1        3     177  swasted          
EE               Pakistan       Birth                    3         0        8     177  swasted          
EE               Pakistan       Birth                    3         1        0     177  swasted          
EE               Pakistan       Birth                    4         0        0     177  swasted          
EE               Pakistan       Birth                    4         1        0     177  swasted          
EE               Pakistan       6 months                 1         0        0     375  swasted          
EE               Pakistan       6 months                 1         1        0     375  swasted          
EE               Pakistan       6 months                 2         0       34     375  swasted          
EE               Pakistan       6 months                 2         1        0     375  swasted          
EE               Pakistan       6 months                 3         0      161     375  swasted          
EE               Pakistan       6 months                 3         1        7     375  swasted          
EE               Pakistan       6 months                 4         0      167     375  swasted          
EE               Pakistan       6 months                 4         1        6     375  swasted          
EE               Pakistan       24 months                1         0        6     159  swasted          
EE               Pakistan       24 months                1         1        1     159  swasted          
EE               Pakistan       24 months                2         0      149     159  swasted          
EE               Pakistan       24 months                2         1        3     159  swasted          
EE               Pakistan       24 months                3         0        0     159  swasted          
EE               Pakistan       24 months                3         1        0     159  swasted          
EE               Pakistan       24 months                4         0        0     159  swasted          
EE               Pakistan       24 months                4         1        0     159  swasted          
GMS-Nepal        Nepal          Birth                    1         0        0     641  swasted          
GMS-Nepal        Nepal          Birth                    1         1        0     641  swasted          
GMS-Nepal        Nepal          Birth                    2         0        0     641  swasted          
GMS-Nepal        Nepal          Birth                    2         1        0     641  swasted          
GMS-Nepal        Nepal          Birth                    3         0      144     641  swasted          
GMS-Nepal        Nepal          Birth                    3         1        8     641  swasted          
GMS-Nepal        Nepal          Birth                    4         0      470     641  swasted          
GMS-Nepal        Nepal          Birth                    4         1       19     641  swasted          
GMS-Nepal        Nepal          6 months                 1         0      495     564  swasted          
GMS-Nepal        Nepal          6 months                 1         1        7     564  swasted          
GMS-Nepal        Nepal          6 months                 2         0       62     564  swasted          
GMS-Nepal        Nepal          6 months                 2         1        0     564  swasted          
GMS-Nepal        Nepal          6 months                 3         0        0     564  swasted          
GMS-Nepal        Nepal          6 months                 3         1        0     564  swasted          
GMS-Nepal        Nepal          6 months                 4         0        0     564  swasted          
GMS-Nepal        Nepal          6 months                 4         1        0     564  swasted          
GMS-Nepal        Nepal          24 months                1         0        0     322  swasted          
GMS-Nepal        Nepal          24 months                1         1        0     322  swasted          
GMS-Nepal        Nepal          24 months                2         0        0     322  swasted          
GMS-Nepal        Nepal          24 months                2         1        0     322  swasted          
GMS-Nepal        Nepal          24 months                3         0       34     322  swasted          
GMS-Nepal        Nepal          24 months                3         1        0     322  swasted          
GMS-Nepal        Nepal          24 months                4         0      279     322  swasted          
GMS-Nepal        Nepal          24 months                4         1        9     322  swasted          
Guatemala BSC    Guatemala      6 months                 1         0       60     299  swasted          
Guatemala BSC    Guatemala      6 months                 1         1        0     299  swasted          
Guatemala BSC    Guatemala      6 months                 2         0       80     299  swasted          
Guatemala BSC    Guatemala      6 months                 2         1        0     299  swasted          
Guatemala BSC    Guatemala      6 months                 3         0       87     299  swasted          
Guatemala BSC    Guatemala      6 months                 3         1        0     299  swasted          
Guatemala BSC    Guatemala      6 months                 4         0       72     299  swasted          
Guatemala BSC    Guatemala      6 months                 4         1        0     299  swasted          
IRC              India          Birth                    1         0       70     343  swasted          
IRC              India          Birth                    1         1        8     343  swasted          
IRC              India          Birth                    2         0       97     343  swasted          
IRC              India          Birth                    2         1       17     343  swasted          
IRC              India          Birth                    3         0       48     343  swasted          
IRC              India          Birth                    3         1       11     343  swasted          
IRC              India          Birth                    4         0       74     343  swasted          
IRC              India          Birth                    4         1       18     343  swasted          
IRC              India          6 months                 1         0      108     408  swasted          
IRC              India          6 months                 1         1        9     408  swasted          
IRC              India          6 months                 2         0       75     408  swasted          
IRC              India          6 months                 2         1        2     408  swasted          
IRC              India          6 months                 3         0      121     408  swasted          
IRC              India          6 months                 3         1        8     408  swasted          
IRC              India          6 months                 4         0       82     408  swasted          
IRC              India          6 months                 4         1        3     408  swasted          
IRC              India          24 months                1         0       86     347  swasted          
IRC              India          24 months                1         1        1     347  swasted          
IRC              India          24 months                2         0      108     347  swasted          
IRC              India          24 months                2         1        0     347  swasted          
IRC              India          24 months                3         0       81     347  swasted          
IRC              India          24 months                3         1        0     347  swasted          
IRC              India          24 months                4         0       70     347  swasted          
IRC              India          24 months                4         1        1     347  swasted          
JiVitA-3         Bangladesh     Birth                    1         0     5030   18013  swasted          
JiVitA-3         Bangladesh     Birth                    1         1       87   18013  swasted          
JiVitA-3         Bangladesh     Birth                    2         0     5546   18013  swasted          
JiVitA-3         Bangladesh     Birth                    2         1      134   18013  swasted          
JiVitA-3         Bangladesh     Birth                    3         0     3793   18013  swasted          
JiVitA-3         Bangladesh     Birth                    3         1       71   18013  swasted          
JiVitA-3         Bangladesh     Birth                    4         0     3296   18013  swasted          
JiVitA-3         Bangladesh     Birth                    4         1       56   18013  swasted          
JiVitA-3         Bangladesh     6 months                 1         0     3665   16784  swasted          
JiVitA-3         Bangladesh     6 months                 1         1       45   16784  swasted          
JiVitA-3         Bangladesh     6 months                 2         0     3529   16784  swasted          
JiVitA-3         Bangladesh     6 months                 2         1       51   16784  swasted          
JiVitA-3         Bangladesh     6 months                 3         0     5154   16784  swasted          
JiVitA-3         Bangladesh     6 months                 3         1       70   16784  swasted          
JiVitA-3         Bangladesh     6 months                 4         0     4206   16784  swasted          
JiVitA-3         Bangladesh     6 months                 4         1       64   16784  swasted          
JiVitA-3         Bangladesh     24 months                1         0        0       3  swasted          
JiVitA-3         Bangladesh     24 months                1         1        0       3  swasted          
JiVitA-3         Bangladesh     24 months                2         0        0       3  swasted          
JiVitA-3         Bangladesh     24 months                2         1        0       3  swasted          
JiVitA-3         Bangladesh     24 months                3         0        0       3  swasted          
JiVitA-3         Bangladesh     24 months                3         1        0       3  swasted          
JiVitA-3         Bangladesh     24 months                4         0        2       3  swasted          
JiVitA-3         Bangladesh     24 months                4         1        1       3  swasted          
JiVitA-4         Bangladesh     Birth                    1         0      277    2396  swasted          
JiVitA-4         Bangladesh     Birth                    1         1        0    2396  swasted          
JiVitA-4         Bangladesh     Birth                    2         0      191    2396  swasted          
JiVitA-4         Bangladesh     Birth                    2         1        4    2396  swasted          
JiVitA-4         Bangladesh     Birth                    3         0     1076    2396  swasted          
JiVitA-4         Bangladesh     Birth                    3         1       12    2396  swasted          
JiVitA-4         Bangladesh     Birth                    4         0      821    2396  swasted          
JiVitA-4         Bangladesh     Birth                    4         1       15    2396  swasted          
JiVitA-4         Bangladesh     6 months                 1         0     1463    4833  swasted          
JiVitA-4         Bangladesh     6 months                 1         1        7    4833  swasted          
JiVitA-4         Bangladesh     6 months                 2         0     2592    4833  swasted          
JiVitA-4         Bangladesh     6 months                 2         1       24    4833  swasted          
JiVitA-4         Bangladesh     6 months                 3         0      627    4833  swasted          
JiVitA-4         Bangladesh     6 months                 3         1        1    4833  swasted          
JiVitA-4         Bangladesh     6 months                 4         0      118    4833  swasted          
JiVitA-4         Bangladesh     6 months                 4         1        1    4833  swasted          
JiVitA-4         Bangladesh     24 months                1         0      200    1268  swasted          
JiVitA-4         Bangladesh     24 months                1         1        1    1268  swasted          
JiVitA-4         Bangladesh     24 months                2         0      127    1268  swasted          
JiVitA-4         Bangladesh     24 months                2         1        3    1268  swasted          
JiVitA-4         Bangladesh     24 months                3         0      502    1268  swasted          
JiVitA-4         Bangladesh     24 months                3         1       16    1268  swasted          
JiVitA-4         Bangladesh     24 months                4         0      410    1268  swasted          
JiVitA-4         Bangladesh     24 months                4         1        9    1268  swasted          
Keneba           Gambia         Birth                    1         0      394    1466  swasted          
Keneba           Gambia         Birth                    1         1       32    1466  swasted          
Keneba           Gambia         Birth                    2         0      369    1466  swasted          
Keneba           Gambia         Birth                    2         1       32    1466  swasted          
Keneba           Gambia         Birth                    3         0      343    1466  swasted          
Keneba           Gambia         Birth                    3         1       21    1466  swasted          
Keneba           Gambia         Birth                    4         0      257    1466  swasted          
Keneba           Gambia         Birth                    4         1       18    1466  swasted          
Keneba           Gambia         6 months                 1         0      456    2089  swasted          
Keneba           Gambia         6 months                 1         1        8    2089  swasted          
Keneba           Gambia         6 months                 2         0      445    2089  swasted          
Keneba           Gambia         6 months                 2         1       14    2089  swasted          
Keneba           Gambia         6 months                 3         0      599    2089  swasted          
Keneba           Gambia         6 months                 3         1        8    2089  swasted          
Keneba           Gambia         6 months                 4         0      555    2089  swasted          
Keneba           Gambia         6 months                 4         1        4    2089  swasted          
Keneba           Gambia         24 months                1         0      177     707  swasted          
Keneba           Gambia         24 months                1         1        1     707  swasted          
Keneba           Gambia         24 months                2         0      211     707  swasted          
Keneba           Gambia         24 months                2         1        4     707  swasted          
Keneba           Gambia         24 months                3         0      129     707  swasted          
Keneba           Gambia         24 months                3         1        1     707  swasted          
Keneba           Gambia         24 months                4         0      181     707  swasted          
Keneba           Gambia         24 months                4         1        3     707  swasted          
LCNI-5           Malawi         6 months                 1         0      204     839  swasted          
LCNI-5           Malawi         6 months                 1         1        0     839  swasted          
LCNI-5           Malawi         6 months                 2         0      319     839  swasted          
LCNI-5           Malawi         6 months                 2         1        0     839  swasted          
LCNI-5           Malawi         6 months                 3         0      113     839  swasted          
LCNI-5           Malawi         6 months                 3         1        0     839  swasted          
LCNI-5           Malawi         6 months                 4         0      203     839  swasted          
LCNI-5           Malawi         6 months                 4         1        0     839  swasted          
LCNI-5           Malawi         24 months                1         0       50     208  swasted          
LCNI-5           Malawi         24 months                1         1        0     208  swasted          
LCNI-5           Malawi         24 months                2         0       14     208  swasted          
LCNI-5           Malawi         24 months                2         1        0     208  swasted          
LCNI-5           Malawi         24 months                3         0      100     208  swasted          
LCNI-5           Malawi         24 months                3         1        0     208  swasted          
LCNI-5           Malawi         24 months                4         0       43     208  swasted          
LCNI-5           Malawi         24 months                4         1        1     208  swasted          
MAL-ED           Bangladesh     Birth                    1         0       63     215  swasted          
MAL-ED           Bangladesh     Birth                    1         1        1     215  swasted          
MAL-ED           Bangladesh     Birth                    2         0       46     215  swasted          
MAL-ED           Bangladesh     Birth                    2         1        2     215  swasted          
MAL-ED           Bangladesh     Birth                    3         0       57     215  swasted          
MAL-ED           Bangladesh     Birth                    3         1        4     215  swasted          
MAL-ED           Bangladesh     Birth                    4         0       41     215  swasted          
MAL-ED           Bangladesh     Birth                    4         1        1     215  swasted          
MAL-ED           Bangladesh     6 months                 1         0       54     241  swasted          
MAL-ED           Bangladesh     6 months                 1         1        1     241  swasted          
MAL-ED           Bangladesh     6 months                 2         0       71     241  swasted          
MAL-ED           Bangladesh     6 months                 2         1        1     241  swasted          
MAL-ED           Bangladesh     6 months                 3         0       60     241  swasted          
MAL-ED           Bangladesh     6 months                 3         1        0     241  swasted          
MAL-ED           Bangladesh     6 months                 4         0       54     241  swasted          
MAL-ED           Bangladesh     6 months                 4         1        0     241  swasted          
MAL-ED           Bangladesh     24 months                1         0       49     187  swasted          
MAL-ED           Bangladesh     24 months                1         1        0     187  swasted          
MAL-ED           Bangladesh     24 months                2         0       51     187  swasted          
MAL-ED           Bangladesh     24 months                2         1        0     187  swasted          
MAL-ED           Bangladesh     24 months                3         0       43     187  swasted          
MAL-ED           Bangladesh     24 months                3         1        0     187  swasted          
MAL-ED           Bangladesh     24 months                4         0       44     187  swasted          
MAL-ED           Bangladesh     24 months                4         1        0     187  swasted          
MAL-ED           Brazil         Birth                    1         0       17      62  swasted          
MAL-ED           Brazil         Birth                    1         1        0      62  swasted          
MAL-ED           Brazil         Birth                    2         0       11      62  swasted          
MAL-ED           Brazil         Birth                    2         1        0      62  swasted          
MAL-ED           Brazil         Birth                    3         0       12      62  swasted          
MAL-ED           Brazil         Birth                    3         1        0      62  swasted          
MAL-ED           Brazil         Birth                    4         0       22      62  swasted          
MAL-ED           Brazil         Birth                    4         1        0      62  swasted          
MAL-ED           Brazil         6 months                 1         0       64     209  swasted          
MAL-ED           Brazil         6 months                 1         1        0     209  swasted          
MAL-ED           Brazil         6 months                 2         0       51     209  swasted          
MAL-ED           Brazil         6 months                 2         1        0     209  swasted          
MAL-ED           Brazil         6 months                 3         0       44     209  swasted          
MAL-ED           Brazil         6 months                 3         1        0     209  swasted          
MAL-ED           Brazil         6 months                 4         0       50     209  swasted          
MAL-ED           Brazil         6 months                 4         1        0     209  swasted          
MAL-ED           Brazil         24 months                1         0       54     167  swasted          
MAL-ED           Brazil         24 months                1         1        0     167  swasted          
MAL-ED           Brazil         24 months                2         0       32     167  swasted          
MAL-ED           Brazil         24 months                2         1        0     167  swasted          
MAL-ED           Brazil         24 months                3         0       43     167  swasted          
MAL-ED           Brazil         24 months                3         1        0     167  swasted          
MAL-ED           Brazil         24 months                4         0       38     167  swasted          
MAL-ED           Brazil         24 months                4         1        0     167  swasted          
MAL-ED           India          Birth                    1         0       10      45  swasted          
MAL-ED           India          Birth                    1         1        0      45  swasted          
MAL-ED           India          Birth                    2         0       10      45  swasted          
MAL-ED           India          Birth                    2         1        0      45  swasted          
MAL-ED           India          Birth                    3         0       11      45  swasted          
MAL-ED           India          Birth                    3         1        0      45  swasted          
MAL-ED           India          Birth                    4         0       14      45  swasted          
MAL-ED           India          Birth                    4         1        0      45  swasted          
MAL-ED           India          6 months                 1         0       65     236  swasted          
MAL-ED           India          6 months                 1         1        1     236  swasted          
MAL-ED           India          6 months                 2         0       41     236  swasted          
MAL-ED           India          6 months                 2         1        1     236  swasted          
MAL-ED           India          6 months                 3         0       71     236  swasted          
MAL-ED           India          6 months                 3         1        2     236  swasted          
MAL-ED           India          6 months                 4         0       54     236  swasted          
MAL-ED           India          6 months                 4         1        1     236  swasted          
MAL-ED           India          24 months                1         0       51     202  swasted          
MAL-ED           India          24 months                1         1        0     202  swasted          
MAL-ED           India          24 months                2         0       55     202  swasted          
MAL-ED           India          24 months                2         1        0     202  swasted          
MAL-ED           India          24 months                3         0       47     202  swasted          
MAL-ED           India          24 months                3         1        1     202  swasted          
MAL-ED           India          24 months                4         0       48     202  swasted          
MAL-ED           India          24 months                4         1        0     202  swasted          
MAL-ED           Nepal          Birth                    1         0        4      26  swasted          
MAL-ED           Nepal          Birth                    1         1        1      26  swasted          
MAL-ED           Nepal          Birth                    2         0        9      26  swasted          
MAL-ED           Nepal          Birth                    2         1        0      26  swasted          
MAL-ED           Nepal          Birth                    3         0        7      26  swasted          
MAL-ED           Nepal          Birth                    3         1        0      26  swasted          
MAL-ED           Nepal          Birth                    4         0        5      26  swasted          
MAL-ED           Nepal          Birth                    4         1        0      26  swasted          
MAL-ED           Nepal          6 months                 1         0       60     236  swasted          
MAL-ED           Nepal          6 months                 1         1        0     236  swasted          
MAL-ED           Nepal          6 months                 2         0       59     236  swasted          
MAL-ED           Nepal          6 months                 2         1        0     236  swasted          
MAL-ED           Nepal          6 months                 3         0       59     236  swasted          
MAL-ED           Nepal          6 months                 3         1        0     236  swasted          
MAL-ED           Nepal          6 months                 4         0       58     236  swasted          
MAL-ED           Nepal          6 months                 4         1        0     236  swasted          
MAL-ED           Nepal          24 months                1         0       51     200  swasted          
MAL-ED           Nepal          24 months                1         1        0     200  swasted          
MAL-ED           Nepal          24 months                2         0       56     200  swasted          
MAL-ED           Nepal          24 months                2         1        0     200  swasted          
MAL-ED           Nepal          24 months                3         0       55     200  swasted          
MAL-ED           Nepal          24 months                3         1        0     200  swasted          
MAL-ED           Nepal          24 months                4         0       38     200  swasted          
MAL-ED           Nepal          24 months                4         1        0     200  swasted          
MAL-ED           Peru           Birth                    1         0       49     228  swasted          
MAL-ED           Peru           Birth                    1         1        0     228  swasted          
MAL-ED           Peru           Birth                    2         0       52     228  swasted          
MAL-ED           Peru           Birth                    2         1        0     228  swasted          
MAL-ED           Peru           Birth                    3         0       69     228  swasted          
MAL-ED           Peru           Birth                    3         1        0     228  swasted          
MAL-ED           Peru           Birth                    4         0       58     228  swasted          
MAL-ED           Peru           Birth                    4         1        0     228  swasted          
MAL-ED           Peru           6 months                 1         0       96     273  swasted          
MAL-ED           Peru           6 months                 1         1        0     273  swasted          
MAL-ED           Peru           6 months                 2         0       77     273  swasted          
MAL-ED           Peru           6 months                 2         1        0     273  swasted          
MAL-ED           Peru           6 months                 3         0       60     273  swasted          
MAL-ED           Peru           6 months                 3         1        0     273  swasted          
MAL-ED           Peru           6 months                 4         0       40     273  swasted          
MAL-ED           Peru           6 months                 4         1        0     273  swasted          
MAL-ED           Peru           24 months                1         0       45     199  swasted          
MAL-ED           Peru           24 months                1         1        1     199  swasted          
MAL-ED           Peru           24 months                2         0       42     199  swasted          
MAL-ED           Peru           24 months                2         1        0     199  swasted          
MAL-ED           Peru           24 months                3         0       51     199  swasted          
MAL-ED           Peru           24 months                3         1        0     199  swasted          
MAL-ED           Peru           24 months                4         0       60     199  swasted          
MAL-ED           Peru           24 months                4         1        0     199  swasted          
MAL-ED           South Africa   Birth                    1         0       25     120  swasted          
MAL-ED           South Africa   Birth                    1         1        0     120  swasted          
MAL-ED           South Africa   Birth                    2         0       22     120  swasted          
MAL-ED           South Africa   Birth                    2         1        0     120  swasted          
MAL-ED           South Africa   Birth                    3         0       35     120  swasted          
MAL-ED           South Africa   Birth                    3         1        0     120  swasted          
MAL-ED           South Africa   Birth                    4         0       38     120  swasted          
MAL-ED           South Africa   Birth                    4         1        0     120  swasted          
MAL-ED           South Africa   6 months                 1         0      106     254  swasted          
MAL-ED           South Africa   6 months                 1         1        0     254  swasted          
MAL-ED           South Africa   6 months                 2         0       64     254  swasted          
MAL-ED           South Africa   6 months                 2         1        3     254  swasted          
MAL-ED           South Africa   6 months                 3         0       45     254  swasted          
MAL-ED           South Africa   6 months                 3         1        0     254  swasted          
MAL-ED           South Africa   6 months                 4         0       36     254  swasted          
MAL-ED           South Africa   6 months                 4         1        0     254  swasted          
MAL-ED           South Africa   24 months                1         0       45     202  swasted          
MAL-ED           South Africa   24 months                1         1        0     202  swasted          
MAL-ED           South Africa   24 months                2         0       30     202  swasted          
MAL-ED           South Africa   24 months                2         1        1     202  swasted          
MAL-ED           South Africa   24 months                3         0       72     202  swasted          
MAL-ED           South Africa   24 months                3         1        0     202  swasted          
MAL-ED           South Africa   24 months                4         0       54     202  swasted          
MAL-ED           South Africa   24 months                4         1        0     202  swasted          
MAL-ED           Tanzania       Birth                    1         0       14     115  swasted          
MAL-ED           Tanzania       Birth                    1         1        0     115  swasted          
MAL-ED           Tanzania       Birth                    2         0       33     115  swasted          
MAL-ED           Tanzania       Birth                    2         1        0     115  swasted          
MAL-ED           Tanzania       Birth                    3         0       32     115  swasted          
MAL-ED           Tanzania       Birth                    3         1        0     115  swasted          
MAL-ED           Tanzania       Birth                    4         0       36     115  swasted          
MAL-ED           Tanzania       Birth                    4         1        0     115  swasted          
MAL-ED           Tanzania       6 months                 1         0       71     247  swasted          
MAL-ED           Tanzania       6 months                 1         1        0     247  swasted          
MAL-ED           Tanzania       6 months                 2         0       80     247  swasted          
MAL-ED           Tanzania       6 months                 2         1        0     247  swasted          
MAL-ED           Tanzania       6 months                 3         0       53     247  swasted          
MAL-ED           Tanzania       6 months                 3         1        0     247  swasted          
MAL-ED           Tanzania       6 months                 4         0       43     247  swasted          
MAL-ED           Tanzania       6 months                 4         1        0     247  swasted          
MAL-ED           Tanzania       24 months                1         0       47     183  swasted          
MAL-ED           Tanzania       24 months                1         1        0     183  swasted          
MAL-ED           Tanzania       24 months                2         0       50     183  swasted          
MAL-ED           Tanzania       24 months                2         1        0     183  swasted          
MAL-ED           Tanzania       24 months                3         0       48     183  swasted          
MAL-ED           Tanzania       24 months                3         1        0     183  swasted          
MAL-ED           Tanzania       24 months                4         0       38     183  swasted          
MAL-ED           Tanzania       24 months                4         1        0     183  swasted          
PROBIT           Belarus        Birth                    1         0     3531   13830  swasted          
PROBIT           Belarus        Birth                    1         1      233   13830  swasted          
PROBIT           Belarus        Birth                    2         0     3864   13830  swasted          
PROBIT           Belarus        Birth                    2         1      267   13830  swasted          
PROBIT           Belarus        Birth                    3         0     2545   13830  swasted          
PROBIT           Belarus        Birth                    3         1      157   13830  swasted          
PROBIT           Belarus        Birth                    4         0     2984   13830  swasted          
PROBIT           Belarus        Birth                    4         1      249   13830  swasted          
PROBIT           Belarus        6 months                 1         0     3613   15757  swasted          
PROBIT           Belarus        6 months                 1         1        5   15757  swasted          
PROBIT           Belarus        6 months                 2         0     3116   15757  swasted          
PROBIT           Belarus        6 months                 2         1        2   15757  swasted          
PROBIT           Belarus        6 months                 3         0     4507   15757  swasted          
PROBIT           Belarus        6 months                 3         1        3   15757  swasted          
PROBIT           Belarus        6 months                 4         0     4505   15757  swasted          
PROBIT           Belarus        6 months                 4         1        6   15757  swasted          
PROBIT           Belarus        24 months                1         0      306    1148  swasted          
PROBIT           Belarus        24 months                1         1        0    1148  swasted          
PROBIT           Belarus        24 months                2         0      357    1148  swasted          
PROBIT           Belarus        24 months                2         1        1    1148  swasted          
PROBIT           Belarus        24 months                3         0      207    1148  swasted          
PROBIT           Belarus        24 months                3         1        1    1148  swasted          
PROBIT           Belarus        24 months                4         0      275    1148  swasted          
PROBIT           Belarus        24 months                4         1        1    1148  swasted          
PROVIDE          Bangladesh     Birth                    1         0       77     532  swasted          
PROVIDE          Bangladesh     Birth                    1         1        1     532  swasted          
PROVIDE          Bangladesh     Birth                    2         0      158     532  swasted          
PROVIDE          Bangladesh     Birth                    2         1        4     532  swasted          
PROVIDE          Bangladesh     Birth                    3         0       95     532  swasted          
PROVIDE          Bangladesh     Birth                    3         1        2     532  swasted          
PROVIDE          Bangladesh     Birth                    4         0      189     532  swasted          
PROVIDE          Bangladesh     Birth                    4         1        6     532  swasted          
PROVIDE          Bangladesh     6 months                 1         0      208     603  swasted          
PROVIDE          Bangladesh     6 months                 1         1        3     603  swasted          
PROVIDE          Bangladesh     6 months                 2         0      121     603  swasted          
PROVIDE          Bangladesh     6 months                 2         1        1     603  swasted          
PROVIDE          Bangladesh     6 months                 3         0      174     603  swasted          
PROVIDE          Bangladesh     6 months                 3         1        0     603  swasted          
PROVIDE          Bangladesh     6 months                 4         0       95     603  swasted          
PROVIDE          Bangladesh     6 months                 4         1        1     603  swasted          
PROVIDE          Bangladesh     24 months                1         0        4      41  swasted          
PROVIDE          Bangladesh     24 months                1         1        0      41  swasted          
PROVIDE          Bangladesh     24 months                2         0       14      41  swasted          
PROVIDE          Bangladesh     24 months                2         1        0      41  swasted          
PROVIDE          Bangladesh     24 months                3         0        4      41  swasted          
PROVIDE          Bangladesh     24 months                3         1        0      41  swasted          
PROVIDE          Bangladesh     24 months                4         0       19      41  swasted          
PROVIDE          Bangladesh     24 months                4         1        0      41  swasted          
ResPak           Pakistan       Birth                    1         0        3      38  swasted          
ResPak           Pakistan       Birth                    1         1        0      38  swasted          
ResPak           Pakistan       Birth                    2         0        2      38  swasted          
ResPak           Pakistan       Birth                    2         1        0      38  swasted          
ResPak           Pakistan       Birth                    3         0       14      38  swasted          
ResPak           Pakistan       Birth                    3         1        0      38  swasted          
ResPak           Pakistan       Birth                    4         0       19      38  swasted          
ResPak           Pakistan       Birth                    4         1        0      38  swasted          
ResPak           Pakistan       6 months                 1         0      105     239  swasted          
ResPak           Pakistan       6 months                 1         1        2     239  swasted          
ResPak           Pakistan       6 months                 2         0       92     239  swasted          
ResPak           Pakistan       6 months                 2         1        6     239  swasted          
ResPak           Pakistan       6 months                 3         0        8     239  swasted          
ResPak           Pakistan       6 months                 3         1        0     239  swasted          
ResPak           Pakistan       6 months                 4         0       25     239  swasted          
ResPak           Pakistan       6 months                 4         1        1     239  swasted          
SAS-CompFeed     India          Birth                    1         0      230    1103  swasted          
SAS-CompFeed     India          Birth                    1         1        1    1103  swasted          
SAS-CompFeed     India          Birth                    2         0      361    1103  swasted          
SAS-CompFeed     India          Birth                    2         1       10    1103  swasted          
SAS-CompFeed     India          Birth                    3         0      186    1103  swasted          
SAS-CompFeed     India          Birth                    3         1        6    1103  swasted          
SAS-CompFeed     India          Birth                    4         0      297    1103  swasted          
SAS-CompFeed     India          Birth                    4         1       12    1103  swasted          
SAS-CompFeed     India          6 months                 1         0      369    1334  swasted          
SAS-CompFeed     India          6 months                 1         1        6    1334  swasted          
SAS-CompFeed     India          6 months                 2         0      224    1334  swasted          
SAS-CompFeed     India          6 months                 2         1        4    1334  swasted          
SAS-CompFeed     India          6 months                 3         0      415    1334  swasted          
SAS-CompFeed     India          6 months                 3         1       19    1334  swasted          
SAS-CompFeed     India          6 months                 4         0      283    1334  swasted          
SAS-CompFeed     India          6 months                 4         1       14    1334  swasted          
SAS-FoodSuppl    India          6 months                 1         0      154     380  swasted          
SAS-FoodSuppl    India          6 months                 1         1        6     380  swasted          
SAS-FoodSuppl    India          6 months                 2         0       35     380  swasted          
SAS-FoodSuppl    India          6 months                 2         1        2     380  swasted          
SAS-FoodSuppl    India          6 months                 3         0      101     380  swasted          
SAS-FoodSuppl    India          6 months                 3         1        6     380  swasted          
SAS-FoodSuppl    India          6 months                 4         0       71     380  swasted          
SAS-FoodSuppl    India          6 months                 4         1        5     380  swasted          
TanzaniaChild2   Tanzania       6 months                 1         0      514    2028  swasted          
TanzaniaChild2   Tanzania       6 months                 1         1        2    2028  swasted          
TanzaniaChild2   Tanzania       6 months                 2         0      560    2028  swasted          
TanzaniaChild2   Tanzania       6 months                 2         1        4    2028  swasted          
TanzaniaChild2   Tanzania       6 months                 3         0      465    2028  swasted          
TanzaniaChild2   Tanzania       6 months                 3         1        2    2028  swasted          
TanzaniaChild2   Tanzania       6 months                 4         0      477    2028  swasted          
TanzaniaChild2   Tanzania       6 months                 4         1        4    2028  swasted          
TanzaniaChild2   Tanzania       24 months                1         0        0       4  swasted          
TanzaniaChild2   Tanzania       24 months                1         1        0       4  swasted          
TanzaniaChild2   Tanzania       24 months                2         0        2       4  swasted          
TanzaniaChild2   Tanzania       24 months                2         1        0       4  swasted          
TanzaniaChild2   Tanzania       24 months                3         0        0       4  swasted          
TanzaniaChild2   Tanzania       24 months                3         1        0       4  swasted          
TanzaniaChild2   Tanzania       24 months                4         0        2       4  swasted          
TanzaniaChild2   Tanzania       24 months                4         1        0       4  swasted          
ZVITAMBO         Zimbabwe       Birth                    1         0     3306   12916  swasted          
ZVITAMBO         Zimbabwe       Birth                    1         1      225   12916  swasted          
ZVITAMBO         Zimbabwe       Birth                    2         0     2714   12916  swasted          
ZVITAMBO         Zimbabwe       Birth                    2         1      188   12916  swasted          
ZVITAMBO         Zimbabwe       Birth                    3         0     3039   12916  swasted          
ZVITAMBO         Zimbabwe       Birth                    3         1      198   12916  swasted          
ZVITAMBO         Zimbabwe       Birth                    4         0     3066   12916  swasted          
ZVITAMBO         Zimbabwe       Birth                    4         1      180   12916  swasted          
ZVITAMBO         Zimbabwe       6 months                 1         0     2098    8505  swasted          
ZVITAMBO         Zimbabwe       6 months                 1         1       26    8505  swasted          
ZVITAMBO         Zimbabwe       6 months                 2         0     2186    8505  swasted          
ZVITAMBO         Zimbabwe       6 months                 2         1       13    8505  swasted          
ZVITAMBO         Zimbabwe       6 months                 3         0     1949    8505  swasted          
ZVITAMBO         Zimbabwe       6 months                 3         1       23    8505  swasted          
ZVITAMBO         Zimbabwe       6 months                 4         0     2193    8505  swasted          
ZVITAMBO         Zimbabwe       6 months                 4         1       17    8505  swasted          
ZVITAMBO         Zimbabwe       24 months                1         0        6      90  swasted          
ZVITAMBO         Zimbabwe       24 months                1         1        2      90  swasted          
ZVITAMBO         Zimbabwe       24 months                2         0       18      90  swasted          
ZVITAMBO         Zimbabwe       24 months                2         1        4      90  swasted          
ZVITAMBO         Zimbabwe       24 months                3         0       21      90  swasted          
ZVITAMBO         Zimbabwe       24 months                3         1        0      90  swasted          
ZVITAMBO         Zimbabwe       24 months                4         0       37      90  swasted          
ZVITAMBO         Zimbabwe       24 months                4         1        2      90  swasted          


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
* studyid: IRC, country: India, agecat: 6 months
* studyid: IRC, country: India, agecat: 24 months
* studyid: JiVitA-3, country: Bangladesh, agecat: 24 months
* studyid: JiVitA-4, country: Bangladesh, agecat: Birth
* studyid: JiVitA-4, country: Bangladesh, agecat: 6 months
* studyid: JiVitA-4, country: Bangladesh, agecat: 24 months
* studyid: Keneba, country: Gambia, agecat: 6 months
* studyid: Keneba, country: Gambia, agecat: 24 months
* studyid: LCNI-5, country: Malawi, agecat: 6 months
* studyid: LCNI-5, country: Malawi, agecat: 24 months
* studyid: MAL-ED, country: Bangladesh, agecat: Birth
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
* studyid: PROBIT, country: Belarus, agecat: 6 months
* studyid: PROBIT, country: Belarus, agecat: 24 months
* studyid: PROVIDE, country: Bangladesh, agecat: Birth
* studyid: PROVIDE, country: Bangladesh, agecat: 6 months
* studyid: PROVIDE, country: Bangladesh, agecat: 24 months
* studyid: ResPak, country: Pakistan, agecat: Birth
* studyid: ResPak, country: Pakistan, agecat: 6 months
* studyid: SAS-CompFeed, country: India, agecat: Birth
* studyid: SAS-CompFeed, country: India, agecat: 6 months
* studyid: SAS-FoodSuppl, country: India, agecat: 6 months
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




# Results Detail

## Results Plots
![](/tmp/a5c547c5-6647-4bc4-80b4-95e41533eb60/98cab63d-7c91-4237-8326-1dcae8ae7b8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a5c547c5-6647-4bc4-80b4-95e41533eb60/98cab63d-7c91-4237-8326-1dcae8ae7b8a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a5c547c5-6647-4bc4-80b4-95e41533eb60/98cab63d-7c91-4237-8326-1dcae8ae7b8a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a5c547c5-6647-4bc4-80b4-95e41533eb60/98cab63d-7c91-4237-8326-1dcae8ae7b8a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  ---------  -------------------  ---------------  ----------  ----------  ----------
IRC        India        Birth      1                    NA                0.1025641   0.0351370   0.1699912
IRC        India        Birth      2                    NA                0.1491228   0.0836388   0.2146068
IRC        India        Birth      3                    NA                0.1864407   0.0869182   0.2859631
IRC        India        Birth      4                    NA                0.1956522   0.1144715   0.2768328
JiVitA-3   Bangladesh   Birth      1                    NA                0.0170022   0.0130464   0.0209579
JiVitA-3   Bangladesh   Birth      2                    NA                0.0235915   0.0188035   0.0283796
JiVitA-3   Bangladesh   Birth      3                    NA                0.0183747   0.0139876   0.0227619
JiVitA-3   Bangladesh   Birth      4                    NA                0.0167064   0.0118284   0.0215845
JiVitA-3   Bangladesh   6 months   1                    NA                0.0121294   0.0080018   0.0162570
JiVitA-3   Bangladesh   6 months   2                    NA                0.0142458   0.0099031   0.0185885
JiVitA-3   Bangladesh   6 months   3                    NA                0.0133997   0.0098490   0.0169504
JiVitA-3   Bangladesh   6 months   4                    NA                0.0149883   0.0105980   0.0193786
Keneba     Gambia       Birth      1                    NA                0.0751174   0.0500791   0.1001557
Keneba     Gambia       Birth      2                    NA                0.0798005   0.0532686   0.1063324
Keneba     Gambia       Birth      3                    NA                0.0576923   0.0337315   0.0816531
Keneba     Gambia       Birth      4                    NA                0.0654545   0.0362130   0.0946961
PROBIT     Belarus      Birth      1                    NA                0.0619022   0.0289149   0.0948896
PROBIT     Belarus      Birth      2                    NA                0.0646333   0.0273853   0.1018812
PROBIT     Belarus      Birth      3                    NA                0.0581051   0.0220231   0.0941871
PROBIT     Belarus      Birth      4                    NA                0.0770182   0.0420732   0.1119633
ZVITAMBO   Zimbabwe     Birth      1                    NA                0.0637213   0.0556646   0.0717781
ZVITAMBO   Zimbabwe     Birth      2                    NA                0.0647829   0.0558271   0.0737387
ZVITAMBO   Zimbabwe     Birth      3                    NA                0.0611677   0.0529121   0.0694234
ZVITAMBO   Zimbabwe     Birth      4                    NA                0.0554529   0.0475794   0.0633263
ZVITAMBO   Zimbabwe     6 months   1                    NA                0.0122411   0.0075644   0.0169177
ZVITAMBO   Zimbabwe     6 months   2                    NA                0.0059118   0.0027075   0.0091161
ZVITAMBO   Zimbabwe     6 months   3                    NA                0.0116633   0.0069243   0.0164022
ZVITAMBO   Zimbabwe     6 months   4                    NA                0.0076923   0.0040496   0.0113351


### Parameter: E(Y)


studyid    country      agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  ---------  -------------------  ---------------  ----------  ----------  ----------
IRC        India        Birth      NA                   NA                0.1574344   0.1188345   0.1960344
JiVitA-3   Bangladesh   Birth      NA                   NA                0.0193194   0.0169102   0.0217285
JiVitA-3   Bangladesh   6 months   NA                   NA                0.0137035   0.0116269   0.0157801
Keneba     Gambia       Birth      NA                   NA                0.0702592   0.0571716   0.0833469
PROBIT     Belarus      Birth      NA                   NA                0.0655098   0.0324802   0.0985393
ZVITAMBO   Zimbabwe     Birth      NA                   NA                0.0612419   0.0571066   0.0653771
ZVITAMBO   Zimbabwe     6 months   NA                   NA                0.0092887   0.0072498   0.0113275


### Parameter: RR


studyid    country      agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  ---------  -------------------  ---------------  ----------  ----------  ----------
IRC        India        Birth      1                    1                 1.0000000   1.0000000   1.0000000
IRC        India        Birth      2                    1                 1.4539474   0.6594799   3.2055004
IRC        India        Birth      3                    1                 1.8177966   0.7794126   4.2395831
IRC        India        Birth      4                    1                 1.9076087   0.8767339   4.1505991
JiVitA-3   Bangladesh   Birth      1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3   Bangladesh   Birth      2                    1                 1.3875626   1.0410844   1.8493506
JiVitA-3   Bangladesh   Birth      3                    1                 1.0807304   0.7694302   1.5179781
JiVitA-3   Bangladesh   Birth      4                    1                 0.9826078   0.6829475   1.4137513
JiVitA-3   Bangladesh   6 months   1                    1                 1.0000000   1.0000000   1.0000000
JiVitA-3   Bangladesh   6 months   2                    1                 1.1744879   0.7423399   1.8582079
JiVitA-3   Bangladesh   6 months   3                    1                 1.1047303   0.7176905   1.7004948
JiVitA-3   Bangladesh   6 months   4                    1                 1.2357013   0.7837805   1.9481954
Keneba     Gambia       Birth      1                    1                 1.0000000   1.0000000   1.0000000
Keneba     Gambia       Birth      2                    1                 1.0623441   0.6634418   1.7010913
Keneba     Gambia       Birth      3                    1                 0.7680288   0.4509206   1.3081424
Keneba     Gambia       Birth      4                    1                 0.8713636   0.4990308   1.5214986
PROBIT     Belarus      Birth      1                    1                 1.0000000   1.0000000   1.0000000
PROBIT     Belarus      Birth      2                    1                 1.0441184   0.7775953   1.4019931
PROBIT     Belarus      Birth      3                    1                 0.9386593   0.6950380   1.2676737
PROBIT     Belarus      Birth      4                    1                 1.2441918   0.9603462   1.6119325
ZVITAMBO   Zimbabwe     Birth      1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO   Zimbabwe     Birth      2                    1                 1.0166598   0.8429727   1.2261336
ZVITAMBO   Zimbabwe     Birth      3                    1                 0.9599259   0.7978471   1.1549301
ZVITAMBO   Zimbabwe     Birth      4                    1                 0.8702403   0.7195660   1.0524651
ZVITAMBO   Zimbabwe     6 months   1                    1                 1.0000000   1.0000000   1.0000000
ZVITAMBO   Zimbabwe     6 months   2                    1                 0.4829469   0.2488317   0.9373312
ZVITAMBO   Zimbabwe     6 months   3                    1                 0.9528007   0.5454923   1.6642384
ZVITAMBO   Zimbabwe     6 months   4                    1                 0.6284024   0.3419721   1.1547420


### Parameter: PAR


studyid    country      agecat     intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -----------  ---------  -------------------  ---------------  -----------  -----------  ----------
IRC        India        Birth      1                    NA                 0.0548703   -0.0081266   0.1178672
JiVitA-3   Bangladesh   Birth      1                    NA                 0.0023172   -0.0009784   0.0056128
JiVitA-3   Bangladesh   6 months   1                    NA                 0.0015741   -0.0021868   0.0053351
Keneba     Gambia       Birth      1                    NA                -0.0048582   -0.0256874   0.0159711
PROBIT     Belarus      Birth      1                    NA                 0.0036075   -0.0052956   0.0125107
ZVITAMBO   Zimbabwe     Birth      1                    NA                -0.0024795   -0.0093001   0.0043411
ZVITAMBO   Zimbabwe     6 months   1                    NA                -0.0029524   -0.0068388   0.0009340


### Parameter: PAF


studyid    country      agecat     intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  -----------  ---------  -------------------  ---------------  -----------  -----------  ----------
IRC        India        Birth      1                    NA                 0.3485280   -0.1912582   0.6437248
JiVitA-3   Bangladesh   Birth      1                    NA                 0.1199433   -0.0679304   0.2747656
JiVitA-3   Bangladesh   6 months   1                    NA                 0.1148717   -0.2054821   0.3500922
Keneba     Gambia       Birth      1                    NA                -0.0691463   -0.4104797   0.1895851
PROBIT     Belarus      Birth      1                    NA                 0.0550686   -0.0898947   0.1807508
ZVITAMBO   Zimbabwe     Birth      1                    NA                -0.0404863   -0.1580045   0.0651058
ZVITAMBO   Zimbabwe     6 months   1                    NA                -0.3178502   -0.8024622   0.0364685

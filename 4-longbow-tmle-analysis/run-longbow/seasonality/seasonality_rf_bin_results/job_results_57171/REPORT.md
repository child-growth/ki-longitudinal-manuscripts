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

studyid          country        agecat       rain_quartile   wasted   n_cell       n
---------------  -------------  ----------  --------------  -------  -------  ------
CMC-V-BCS-2002   India          Birth                    1        0       14      86
CMC-V-BCS-2002   India          Birth                    1        1        3      86
CMC-V-BCS-2002   India          Birth                    2        0       17      86
CMC-V-BCS-2002   India          Birth                    2        1        5      86
CMC-V-BCS-2002   India          Birth                    3        0       27      86
CMC-V-BCS-2002   India          Birth                    3        1        1      86
CMC-V-BCS-2002   India          Birth                    4        0       17      86
CMC-V-BCS-2002   India          Birth                    4        1        2      86
CMC-V-BCS-2002   India          6 months                 1        0       95     368
CMC-V-BCS-2002   India          6 months                 1        1        7     368
CMC-V-BCS-2002   India          6 months                 2        0      101     368
CMC-V-BCS-2002   India          6 months                 2        1        8     368
CMC-V-BCS-2002   India          6 months                 3        0       78     368
CMC-V-BCS-2002   India          6 months                 3        1       19     368
CMC-V-BCS-2002   India          6 months                 4        0       48     368
CMC-V-BCS-2002   India          6 months                 4        1       12     368
CMC-V-BCS-2002   India          24 months                1        0       98     372
CMC-V-BCS-2002   India          24 months                1        1        3     372
CMC-V-BCS-2002   India          24 months                2        0       92     372
CMC-V-BCS-2002   India          24 months                2        1        7     372
CMC-V-BCS-2002   India          24 months                3        0      109     372
CMC-V-BCS-2002   India          24 months                3        1        8     372
CMC-V-BCS-2002   India          24 months                4        0       50     372
CMC-V-BCS-2002   India          24 months                4        1        5     372
CMIN             Bangladesh     Birth                    1        0        4      19
CMIN             Bangladesh     Birth                    1        1        0      19
CMIN             Bangladesh     Birth                    2        0        4      19
CMIN             Bangladesh     Birth                    2        1        1      19
CMIN             Bangladesh     Birth                    3        0        3      19
CMIN             Bangladesh     Birth                    3        1        2      19
CMIN             Bangladesh     Birth                    4        0        4      19
CMIN             Bangladesh     Birth                    4        1        1      19
CMIN             Bangladesh     6 months                 1        0       50     243
CMIN             Bangladesh     6 months                 1        1        0     243
CMIN             Bangladesh     6 months                 2        0       53     243
CMIN             Bangladesh     6 months                 2        1        9     243
CMIN             Bangladesh     6 months                 3        0       68     243
CMIN             Bangladesh     6 months                 3        1        2     243
CMIN             Bangladesh     6 months                 4        0       51     243
CMIN             Bangladesh     6 months                 4        1       10     243
CMIN             Bangladesh     24 months                1        0       76     243
CMIN             Bangladesh     24 months                1        1        3     243
CMIN             Bangladesh     24 months                2        0       55     243
CMIN             Bangladesh     24 months                2        1       14     243
CMIN             Bangladesh     24 months                3        0       54     243
CMIN             Bangladesh     24 months                3        1        4     243
CMIN             Bangladesh     24 months                4        0       33     243
CMIN             Bangladesh     24 months                4        1        4     243
CONTENT          Peru           Birth                    1        0        0       2
CONTENT          Peru           Birth                    1        1        0       2
CONTENT          Peru           Birth                    2        0        2       2
CONTENT          Peru           Birth                    2        1        0       2
CONTENT          Peru           Birth                    3        0        0       2
CONTENT          Peru           Birth                    3        1        0       2
CONTENT          Peru           Birth                    4        0        0       2
CONTENT          Peru           Birth                    4        1        0       2
CONTENT          Peru           6 months                 1        0       62     215
CONTENT          Peru           6 months                 1        1        0     215
CONTENT          Peru           6 months                 2        0       32     215
CONTENT          Peru           6 months                 2        1        0     215
CONTENT          Peru           6 months                 3        0       44     215
CONTENT          Peru           6 months                 3        1        0     215
CONTENT          Peru           6 months                 4        0       77     215
CONTENT          Peru           6 months                 4        1        0     215
CONTENT          Peru           24 months                1        0       55     164
CONTENT          Peru           24 months                1        1        0     164
CONTENT          Peru           24 months                2        0       35     164
CONTENT          Peru           24 months                2        1        0     164
CONTENT          Peru           24 months                3        0       19     164
CONTENT          Peru           24 months                3        1        1     164
CONTENT          Peru           24 months                4        0       54     164
CONTENT          Peru           24 months                4        1        0     164
EE               Pakistan       Birth                    1        0       86     177
EE               Pakistan       Birth                    1        1        6     177
EE               Pakistan       Birth                    2        0       62     177
EE               Pakistan       Birth                    2        1       15     177
EE               Pakistan       Birth                    3        0        7     177
EE               Pakistan       Birth                    3        1        1     177
EE               Pakistan       Birth                    4        0        0     177
EE               Pakistan       Birth                    4        1        0     177
EE               Pakistan       6 months                 1        0        0     375
EE               Pakistan       6 months                 1        1        0     375
EE               Pakistan       6 months                 2        0       30     375
EE               Pakistan       6 months                 2        1        4     375
EE               Pakistan       6 months                 3        0      149     375
EE               Pakistan       6 months                 3        1       19     375
EE               Pakistan       6 months                 4        0      149     375
EE               Pakistan       6 months                 4        1       24     375
EE               Pakistan       24 months                1        0        6     168
EE               Pakistan       24 months                1        1        2     168
EE               Pakistan       24 months                2        0      132     168
EE               Pakistan       24 months                2        1       28     168
EE               Pakistan       24 months                3        0        0     168
EE               Pakistan       24 months                3        1        0     168
EE               Pakistan       24 months                4        0        0     168
EE               Pakistan       24 months                4        1        0     168
GMS-Nepal        Nepal          Birth                    1        0        0     641
GMS-Nepal        Nepal          Birth                    1        1        0     641
GMS-Nepal        Nepal          Birth                    2        0        0     641
GMS-Nepal        Nepal          Birth                    2        1        0     641
GMS-Nepal        Nepal          Birth                    3        0      123     641
GMS-Nepal        Nepal          Birth                    3        1       29     641
GMS-Nepal        Nepal          Birth                    4        0      386     641
GMS-Nepal        Nepal          Birth                    4        1      103     641
GMS-Nepal        Nepal          6 months                 1        0      454     564
GMS-Nepal        Nepal          6 months                 1        1       48     564
GMS-Nepal        Nepal          6 months                 2        0       59     564
GMS-Nepal        Nepal          6 months                 2        1        3     564
GMS-Nepal        Nepal          6 months                 3        0        0     564
GMS-Nepal        Nepal          6 months                 3        1        0     564
GMS-Nepal        Nepal          6 months                 4        0        0     564
GMS-Nepal        Nepal          6 months                 4        1        0     564
GMS-Nepal        Nepal          24 months                1        0        0     487
GMS-Nepal        Nepal          24 months                1        1        0     487
GMS-Nepal        Nepal          24 months                2        0        0     487
GMS-Nepal        Nepal          24 months                2        1        0     487
GMS-Nepal        Nepal          24 months                3        0       37     487
GMS-Nepal        Nepal          24 months                3        1        2     487
GMS-Nepal        Nepal          24 months                4        0      359     487
GMS-Nepal        Nepal          24 months                4        1       89     487
Guatemala BSC    Guatemala      6 months                 1        0       60     299
Guatemala BSC    Guatemala      6 months                 1        1        0     299
Guatemala BSC    Guatemala      6 months                 2        0       79     299
Guatemala BSC    Guatemala      6 months                 2        1        1     299
Guatemala BSC    Guatemala      6 months                 3        0       85     299
Guatemala BSC    Guatemala      6 months                 3        1        2     299
Guatemala BSC    Guatemala      6 months                 4        0       71     299
Guatemala BSC    Guatemala      6 months                 4        1        1     299
IRC              India          Birth                    1        0       65     343
IRC              India          Birth                    1        1       13     343
IRC              India          Birth                    2        0       83     343
IRC              India          Birth                    2        1       31     343
IRC              India          Birth                    3        0       39     343
IRC              India          Birth                    3        1       20     343
IRC              India          Birth                    4        0       64     343
IRC              India          Birth                    4        1       28     343
IRC              India          6 months                 1        0      101     408
IRC              India          6 months                 1        1       16     408
IRC              India          6 months                 2        0       69     408
IRC              India          6 months                 2        1        8     408
IRC              India          6 months                 3        0      112     408
IRC              India          6 months                 3        1       17     408
IRC              India          6 months                 4        0       72     408
IRC              India          6 months                 4        1       13     408
IRC              India          24 months                1        0      110     409
IRC              India          24 months                1        1        4     409
IRC              India          24 months                2        0      111     409
IRC              India          24 months                2        1        8     409
IRC              India          24 months                3        0       77     409
IRC              India          24 months                3        1        8     409
IRC              India          24 months                4        0       80     409
IRC              India          24 months                4        1       11     409
Keneba           Gambia         Birth                    1        0      310    1466
Keneba           Gambia         Birth                    1        1      116    1466
Keneba           Gambia         Birth                    2        0      294    1466
Keneba           Gambia         Birth                    2        1      107    1466
Keneba           Gambia         Birth                    3        0      283    1466
Keneba           Gambia         Birth                    3        1       81    1466
Keneba           Gambia         Birth                    4        0      215    1466
Keneba           Gambia         Birth                    4        1       60    1466
Keneba           Gambia         6 months                 1        0      435    2089
Keneba           Gambia         6 months                 1        1       29    2089
Keneba           Gambia         6 months                 2        0      423    2089
Keneba           Gambia         6 months                 2        1       36    2089
Keneba           Gambia         6 months                 3        0      587    2089
Keneba           Gambia         6 months                 3        1       20    2089
Keneba           Gambia         6 months                 4        0      523    2089
Keneba           Gambia         6 months                 4        1       36    2089
Keneba           Gambia         24 months                1        0      469    1726
Keneba           Gambia         24 months                1        1       32    1726
Keneba           Gambia         24 months                2        0      416    1726
Keneba           Gambia         24 months                2        1       76    1726
Keneba           Gambia         24 months                3        0      356    1726
Keneba           Gambia         24 months                3        1       32    1726
Keneba           Gambia         24 months                4        0      294    1726
Keneba           Gambia         24 months                4        1       51    1726
LCNI-5           Malawi         6 months                 1        0      200     839
LCNI-5           Malawi         6 months                 1        1        4     839
LCNI-5           Malawi         6 months                 2        0      315     839
LCNI-5           Malawi         6 months                 2        1        4     839
LCNI-5           Malawi         6 months                 3        0      112     839
LCNI-5           Malawi         6 months                 3        1        1     839
LCNI-5           Malawi         6 months                 4        0      198     839
LCNI-5           Malawi         6 months                 4        1        5     839
LCNI-5           Malawi         24 months                1        0      143     563
LCNI-5           Malawi         24 months                1        1        2     563
LCNI-5           Malawi         24 months                2        0       79     563
LCNI-5           Malawi         24 months                2        1        1     563
LCNI-5           Malawi         24 months                3        0      206     563
LCNI-5           Malawi         24 months                3        1        4     563
LCNI-5           Malawi         24 months                4        0      125     563
LCNI-5           Malawi         24 months                4        1        3     563
MAL-ED           Bangladesh     Birth                    1        0       54     215
MAL-ED           Bangladesh     Birth                    1        1       10     215
MAL-ED           Bangladesh     Birth                    2        0       38     215
MAL-ED           Bangladesh     Birth                    2        1       10     215
MAL-ED           Bangladesh     Birth                    3        0       51     215
MAL-ED           Bangladesh     Birth                    3        1       10     215
MAL-ED           Bangladesh     Birth                    4        0       36     215
MAL-ED           Bangladesh     Birth                    4        1        6     215
MAL-ED           Bangladesh     6 months                 1        0       52     241
MAL-ED           Bangladesh     6 months                 1        1        3     241
MAL-ED           Bangladesh     6 months                 2        0       70     241
MAL-ED           Bangladesh     6 months                 2        1        2     241
MAL-ED           Bangladesh     6 months                 3        0       58     241
MAL-ED           Bangladesh     6 months                 3        1        2     241
MAL-ED           Bangladesh     6 months                 4        0       53     241
MAL-ED           Bangladesh     6 months                 4        1        1     241
MAL-ED           Bangladesh     24 months                1        0       69     212
MAL-ED           Bangladesh     24 months                1        1        4     212
MAL-ED           Bangladesh     24 months                2        0       43     212
MAL-ED           Bangladesh     24 months                2        1        8     212
MAL-ED           Bangladesh     24 months                3        0       42     212
MAL-ED           Bangladesh     24 months                3        1        6     212
MAL-ED           Bangladesh     24 months                4        0       37     212
MAL-ED           Bangladesh     24 months                4        1        3     212
MAL-ED           Brazil         Birth                    1        0       17      62
MAL-ED           Brazil         Birth                    1        1        0      62
MAL-ED           Brazil         Birth                    2        0       11      62
MAL-ED           Brazil         Birth                    2        1        0      62
MAL-ED           Brazil         Birth                    3        0       11      62
MAL-ED           Brazil         Birth                    3        1        1      62
MAL-ED           Brazil         Birth                    4        0       21      62
MAL-ED           Brazil         Birth                    4        1        1      62
MAL-ED           Brazil         6 months                 1        0       64     209
MAL-ED           Brazil         6 months                 1        1        0     209
MAL-ED           Brazil         6 months                 2        0       50     209
MAL-ED           Brazil         6 months                 2        1        1     209
MAL-ED           Brazil         6 months                 3        0       44     209
MAL-ED           Brazil         6 months                 3        1        0     209
MAL-ED           Brazil         6 months                 4        0       50     209
MAL-ED           Brazil         6 months                 4        1        0     209
MAL-ED           Brazil         24 months                1        0       63     169
MAL-ED           Brazil         24 months                1        1        2     169
MAL-ED           Brazil         24 months                2        0       30     169
MAL-ED           Brazil         24 months                2        1        0     169
MAL-ED           Brazil         24 months                3        0       42     169
MAL-ED           Brazil         24 months                3        1        1     169
MAL-ED           Brazil         24 months                4        0       31     169
MAL-ED           Brazil         24 months                4        1        0     169
MAL-ED           India          Birth                    1        0        8      45
MAL-ED           India          Birth                    1        1        2      45
MAL-ED           India          Birth                    2        0       10      45
MAL-ED           India          Birth                    2        1        0      45
MAL-ED           India          Birth                    3        0        9      45
MAL-ED           India          Birth                    3        1        2      45
MAL-ED           India          Birth                    4        0       13      45
MAL-ED           India          Birth                    4        1        1      45
MAL-ED           India          6 months                 1        0       65     236
MAL-ED           India          6 months                 1        1        1     236
MAL-ED           India          6 months                 2        0       37     236
MAL-ED           India          6 months                 2        1        5     236
MAL-ED           India          6 months                 3        0       64     236
MAL-ED           India          6 months                 3        1        9     236
MAL-ED           India          6 months                 4        0       51     236
MAL-ED           India          6 months                 4        1        4     236
MAL-ED           India          24 months                1        0       59     227
MAL-ED           India          24 months                1        1        6     227
MAL-ED           India          24 months                2        0       62     227
MAL-ED           India          24 months                2        1        9     227
MAL-ED           India          24 months                3        0       46     227
MAL-ED           India          24 months                3        1        8     227
MAL-ED           India          24 months                4        0       33     227
MAL-ED           India          24 months                4        1        4     227
MAL-ED           Nepal          Birth                    1        0        4      26
MAL-ED           Nepal          Birth                    1        1        1      26
MAL-ED           Nepal          Birth                    2        0        9      26
MAL-ED           Nepal          Birth                    2        1        0      26
MAL-ED           Nepal          Birth                    3        0        6      26
MAL-ED           Nepal          Birth                    3        1        1      26
MAL-ED           Nepal          Birth                    4        0        5      26
MAL-ED           Nepal          Birth                    4        1        0      26
MAL-ED           Nepal          6 months                 1        0       58     236
MAL-ED           Nepal          6 months                 1        1        2     236
MAL-ED           Nepal          6 months                 2        0       58     236
MAL-ED           Nepal          6 months                 2        1        1     236
MAL-ED           Nepal          6 months                 3        0       59     236
MAL-ED           Nepal          6 months                 3        1        0     236
MAL-ED           Nepal          6 months                 4        0       57     236
MAL-ED           Nepal          6 months                 4        1        1     236
MAL-ED           Nepal          24 months                1        0       66     228
MAL-ED           Nepal          24 months                1        1        0     228
MAL-ED           Nepal          24 months                2        0       58     228
MAL-ED           Nepal          24 months                2        1        3     228
MAL-ED           Nepal          24 months                3        0       62     228
MAL-ED           Nepal          24 months                3        1        1     228
MAL-ED           Nepal          24 months                4        0       37     228
MAL-ED           Nepal          24 months                4        1        1     228
MAL-ED           Peru           Birth                    1        0       47     228
MAL-ED           Peru           Birth                    1        1        2     228
MAL-ED           Peru           Birth                    2        0       51     228
MAL-ED           Peru           Birth                    2        1        1     228
MAL-ED           Peru           Birth                    3        0       67     228
MAL-ED           Peru           Birth                    3        1        2     228
MAL-ED           Peru           Birth                    4        0       58     228
MAL-ED           Peru           Birth                    4        1        0     228
MAL-ED           Peru           6 months                 1        0       96     273
MAL-ED           Peru           6 months                 1        1        0     273
MAL-ED           Peru           6 months                 2        0       77     273
MAL-ED           Peru           6 months                 2        1        0     273
MAL-ED           Peru           6 months                 3        0       60     273
MAL-ED           Peru           6 months                 3        1        0     273
MAL-ED           Peru           6 months                 4        0       40     273
MAL-ED           Peru           6 months                 4        1        0     273
MAL-ED           Peru           24 months                1        0       53     201
MAL-ED           Peru           24 months                1        1        2     201
MAL-ED           Peru           24 months                2        0       46     201
MAL-ED           Peru           24 months                2        1        0     201
MAL-ED           Peru           24 months                3        0       53     201
MAL-ED           Peru           24 months                3        1        1     201
MAL-ED           Peru           24 months                4        0       45     201
MAL-ED           Peru           24 months                4        1        1     201
MAL-ED           South Africa   Birth                    1        0       23     120
MAL-ED           South Africa   Birth                    1        1        2     120
MAL-ED           South Africa   Birth                    2        0       18     120
MAL-ED           South Africa   Birth                    2        1        4     120
MAL-ED           South Africa   Birth                    3        0       35     120
MAL-ED           South Africa   Birth                    3        1        0     120
MAL-ED           South Africa   Birth                    4        0       32     120
MAL-ED           South Africa   Birth                    4        1        6     120
MAL-ED           South Africa   6 months                 1        0      104     254
MAL-ED           South Africa   6 months                 1        1        2     254
MAL-ED           South Africa   6 months                 2        0       62     254
MAL-ED           South Africa   6 months                 2        1        5     254
MAL-ED           South Africa   6 months                 3        0       45     254
MAL-ED           South Africa   6 months                 3        1        0     254
MAL-ED           South Africa   6 months                 4        0       36     254
MAL-ED           South Africa   6 months                 4        1        0     254
MAL-ED           South Africa   24 months                1        0       55     238
MAL-ED           South Africa   24 months                1        1        0     238
MAL-ED           South Africa   24 months                2        0       39     238
MAL-ED           South Africa   24 months                2        1        0     238
MAL-ED           South Africa   24 months                3        0       86     238
MAL-ED           South Africa   24 months                3        1        0     238
MAL-ED           South Africa   24 months                4        0       57     238
MAL-ED           South Africa   24 months                4        1        1     238
MAL-ED           Tanzania       Birth                    1        0       14     115
MAL-ED           Tanzania       Birth                    1        1        0     115
MAL-ED           Tanzania       Birth                    2        0       33     115
MAL-ED           Tanzania       Birth                    2        1        0     115
MAL-ED           Tanzania       Birth                    3        0       32     115
MAL-ED           Tanzania       Birth                    3        1        0     115
MAL-ED           Tanzania       Birth                    4        0       35     115
MAL-ED           Tanzania       Birth                    4        1        1     115
MAL-ED           Tanzania       6 months                 1        0       71     247
MAL-ED           Tanzania       6 months                 1        1        0     247
MAL-ED           Tanzania       6 months                 2        0       79     247
MAL-ED           Tanzania       6 months                 2        1        1     247
MAL-ED           Tanzania       6 months                 3        0       53     247
MAL-ED           Tanzania       6 months                 3        1        0     247
MAL-ED           Tanzania       6 months                 4        0       43     247
MAL-ED           Tanzania       6 months                 4        1        0     247
MAL-ED           Tanzania       24 months                1        0       55     214
MAL-ED           Tanzania       24 months                1        1        1     214
MAL-ED           Tanzania       24 months                2        0       59     214
MAL-ED           Tanzania       24 months                2        1        0     214
MAL-ED           Tanzania       24 months                3        0       56     214
MAL-ED           Tanzania       24 months                3        1        3     214
MAL-ED           Tanzania       24 months                4        0       40     214
MAL-ED           Tanzania       24 months                4        1        0     214
PROBIT           Belarus        Birth                    1        0     3013   13817
PROBIT           Belarus        Birth                    1        1      750   13817
PROBIT           Belarus        Birth                    2        0     3252   13817
PROBIT           Belarus        Birth                    2        1      872   13817
PROBIT           Belarus        Birth                    3        0     2160   13817
PROBIT           Belarus        Birth                    3        1      540   13817
PROBIT           Belarus        Birth                    4        0     2486   13817
PROBIT           Belarus        Birth                    4        1      744   13817
PROBIT           Belarus        6 months                 1        0     3598   15757
PROBIT           Belarus        6 months                 1        1       21   15757
PROBIT           Belarus        6 months                 2        0     3103   15757
PROBIT           Belarus        6 months                 2        1       14   15757
PROBIT           Belarus        6 months                 3        0     4479   15757
PROBIT           Belarus        6 months                 3        1       31   15757
PROBIT           Belarus        6 months                 4        0     4469   15757
PROBIT           Belarus        6 months                 4        1       42   15757
PROBIT           Belarus        24 months                1        0     1064    3970
PROBIT           Belarus        24 months                1        1       10    3970
PROBIT           Belarus        24 months                2        0     1119    3970
PROBIT           Belarus        24 months                2        1        9    3970
PROBIT           Belarus        24 months                3        0      828    3970
PROBIT           Belarus        24 months                3        1        7    3970
PROBIT           Belarus        24 months                4        0      927    3970
PROBIT           Belarus        24 months                4        1        6    3970
PROVIDE          Bangladesh     Birth                    1        0       71     532
PROVIDE          Bangladesh     Birth                    1        1        7     532
PROVIDE          Bangladesh     Birth                    2        0      121     532
PROVIDE          Bangladesh     Birth                    2        1       41     532
PROVIDE          Bangladesh     Birth                    3        0       83     532
PROVIDE          Bangladesh     Birth                    3        1       14     532
PROVIDE          Bangladesh     Birth                    4        0      140     532
PROVIDE          Bangladesh     Birth                    4        1       55     532
PROVIDE          Bangladesh     6 months                 1        0      199     603
PROVIDE          Bangladesh     6 months                 1        1       12     603
PROVIDE          Bangladesh     6 months                 2        0      119     603
PROVIDE          Bangladesh     6 months                 2        1        3     603
PROVIDE          Bangladesh     6 months                 3        0      168     603
PROVIDE          Bangladesh     6 months                 3        1        6     603
PROVIDE          Bangladesh     6 months                 4        0       92     603
PROVIDE          Bangladesh     6 months                 4        1        4     603
PROVIDE          Bangladesh     24 months                1        0       91     579
PROVIDE          Bangladesh     24 months                1        1        8     579
PROVIDE          Bangladesh     24 months                2        0      168     579
PROVIDE          Bangladesh     24 months                2        1       19     579
PROVIDE          Bangladesh     24 months                3        0       97     579
PROVIDE          Bangladesh     24 months                3        1        7     579
PROVIDE          Bangladesh     24 months                4        0      161     579
PROVIDE          Bangladesh     24 months                4        1       28     579
ResPak           Pakistan       Birth                    1        0        3      38
ResPak           Pakistan       Birth                    1        1        0      38
ResPak           Pakistan       Birth                    2        0        2      38
ResPak           Pakistan       Birth                    2        1        0      38
ResPak           Pakistan       Birth                    3        0       12      38
ResPak           Pakistan       Birth                    3        1        2      38
ResPak           Pakistan       Birth                    4        0       17      38
ResPak           Pakistan       Birth                    4        1        2      38
ResPak           Pakistan       6 months                 1        0       99     239
ResPak           Pakistan       6 months                 1        1        8     239
ResPak           Pakistan       6 months                 2        0       84     239
ResPak           Pakistan       6 months                 2        1       14     239
ResPak           Pakistan       6 months                 3        0        7     239
ResPak           Pakistan       6 months                 3        1        1     239
ResPak           Pakistan       6 months                 4        0       23     239
ResPak           Pakistan       6 months                 4        1        3     239
SAS-CompFeed     India          Birth                    1        0      218    1103
SAS-CompFeed     India          Birth                    1        1       13    1103
SAS-CompFeed     India          Birth                    2        0      327    1103
SAS-CompFeed     India          Birth                    2        1       44    1103
SAS-CompFeed     India          Birth                    3        0      173    1103
SAS-CompFeed     India          Birth                    3        1       19    1103
SAS-CompFeed     India          Birth                    4        0      267    1103
SAS-CompFeed     India          Birth                    4        1       42    1103
SAS-CompFeed     India          6 months                 1        0      355    1334
SAS-CompFeed     India          6 months                 1        1       20    1334
SAS-CompFeed     India          6 months                 2        0      201    1334
SAS-CompFeed     India          6 months                 2        1       27    1334
SAS-CompFeed     India          6 months                 3        0      376    1334
SAS-CompFeed     India          6 months                 3        1       58    1334
SAS-CompFeed     India          6 months                 4        0      236    1334
SAS-CompFeed     India          6 months                 4        1       61    1334
SAS-FoodSuppl    India          6 months                 1        0      135     380
SAS-FoodSuppl    India          6 months                 1        1       25     380
SAS-FoodSuppl    India          6 months                 2        0       30     380
SAS-FoodSuppl    India          6 months                 2        1        7     380
SAS-FoodSuppl    India          6 months                 3        0       84     380
SAS-FoodSuppl    India          6 months                 3        1       23     380
SAS-FoodSuppl    India          6 months                 4        0       62     380
SAS-FoodSuppl    India          6 months                 4        1       14     380
TanzaniaChild2   Tanzania       6 months                 1        0      490    2028
TanzaniaChild2   Tanzania       6 months                 1        1       26    2028
TanzaniaChild2   Tanzania       6 months                 2        0      529    2028
TanzaniaChild2   Tanzania       6 months                 2        1       35    2028
TanzaniaChild2   Tanzania       6 months                 3        0      452    2028
TanzaniaChild2   Tanzania       6 months                 3        1       15    2028
TanzaniaChild2   Tanzania       6 months                 4        0      470    2028
TanzaniaChild2   Tanzania       6 months                 4        1       11    2028
TanzaniaChild2   Tanzania       24 months                1        0        0       6
TanzaniaChild2   Tanzania       24 months                1        1        0       6
TanzaniaChild2   Tanzania       24 months                2        0        4       6
TanzaniaChild2   Tanzania       24 months                2        1        0       6
TanzaniaChild2   Tanzania       24 months                3        0        0       6
TanzaniaChild2   Tanzania       24 months                3        1        0       6
TanzaniaChild2   Tanzania       24 months                4        0        2       6
TanzaniaChild2   Tanzania       24 months                4        1        0       6
ZVITAMBO         Zimbabwe       Birth                    1        0     2928   12916
ZVITAMBO         Zimbabwe       Birth                    1        1      603   12916
ZVITAMBO         Zimbabwe       Birth                    2        0     2446   12916
ZVITAMBO         Zimbabwe       Birth                    2        1      456   12916
ZVITAMBO         Zimbabwe       Birth                    3        0     2694   12916
ZVITAMBO         Zimbabwe       Birth                    3        1      543   12916
ZVITAMBO         Zimbabwe       Birth                    4        0     2788   12916
ZVITAMBO         Zimbabwe       Birth                    4        1      458   12916
ZVITAMBO         Zimbabwe       6 months                 1        0     2054    8505
ZVITAMBO         Zimbabwe       6 months                 1        1       70    8505
ZVITAMBO         Zimbabwe       6 months                 2        0     2129    8505
ZVITAMBO         Zimbabwe       6 months                 2        1       70    8505
ZVITAMBO         Zimbabwe       6 months                 3        0     1913    8505
ZVITAMBO         Zimbabwe       6 months                 3        1       59    8505
ZVITAMBO         Zimbabwe       6 months                 4        0     2144    8505
ZVITAMBO         Zimbabwe       6 months                 4        1       66    8505
ZVITAMBO         Zimbabwe       24 months                1        0       53     433
ZVITAMBO         Zimbabwe       24 months                1        1       13     433
ZVITAMBO         Zimbabwe       24 months                2        0      110     433
ZVITAMBO         Zimbabwe       24 months                2        1       29     433
ZVITAMBO         Zimbabwe       24 months                3        0       59     433
ZVITAMBO         Zimbabwe       24 months                3        1        9     433
ZVITAMBO         Zimbabwe       24 months                4        0      132     433
ZVITAMBO         Zimbabwe       24 months                4        1       28     433


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/3f92d7af-0dd0-4a62-a69f-57d56d87ae74/7761547d-914e-4048-bd23-140ba2b5f0cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f92d7af-0dd0-4a62-a69f-57d56d87ae74/7761547d-914e-4048-bd23-140ba2b5f0cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f92d7af-0dd0-4a62-a69f-57d56d87ae74/7761547d-914e-4048-bd23-140ba2b5f0cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f92d7af-0dd0-4a62-a69f-57d56d87ae74/7761547d-914e-4048-bd23-140ba2b5f0cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
PROBIT           Belarus      Birth       1                    NA                0.1993091    0.1342238   0.2643943
PROBIT           Belarus      Birth       2                    NA                0.2114452    0.1443346   0.2785558
PROBIT           Belarus      Birth       3                    NA                0.2000000    0.1267224   0.2732776
PROBIT           Belarus      Birth       4                    NA                0.2303406    0.1590558   0.3016253
PROBIT           Belarus      6 months    1                    NA                0.0058027    0.0025368   0.0090686
PROBIT           Belarus      6 months    2                    NA                0.0044915    0.0019915   0.0069915
PROBIT           Belarus      6 months    3                    NA                0.0068736    0.0035214   0.0102258
PROBIT           Belarus      6 months    4                    NA                0.0093106    0.0063595   0.0122616
PROBIT           Belarus      24 months   1                    NA                0.0093110   -0.0007900   0.0194119
PROBIT           Belarus      24 months   2                    NA                0.0079787    0.0002049   0.0157525
PROBIT           Belarus      24 months   3                    NA                0.0083832   -0.0086500   0.0254164
PROBIT           Belarus      24 months   4                    NA                0.0064309    0.0031844   0.0096773
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
Keneba           Gambia       Birth       NA                   NA                0.2482947   0.2261720   0.2704173
Keneba           Gambia       6 months    NA                   NA                0.0579225   0.0479029   0.0679420
Keneba           Gambia       24 months   NA                   NA                0.1106605   0.0958563   0.1254646
MAL-ED           Bangladesh   Birth       NA                   NA                0.1674419   0.1174176   0.2174661
PROBIT           Belarus      Birth       NA                   NA                0.2103206   0.1450833   0.2755580
PROBIT           Belarus      6 months    NA                   NA                0.0068541   0.0051915   0.0085167
PROBIT           Belarus      24 months   NA                   NA                0.0080605   0.0022677   0.0138532
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
PROBIT           Belarus      Birth       2                    1                 1.0608910   0.9039303   1.2451069
PROBIT           Belarus      Birth       3                    1                 1.0034667   0.8907417   1.1304572
PROBIT           Belarus      Birth       4                    1                 1.1556954   0.9730329   1.3726482
PROBIT           Belarus      6 months    1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      6 months    2                    1                 0.7740349   0.3631780   1.6496868
PROBIT           Belarus      6 months    3                    1                 1.1845528   0.5937321   2.3632974
PROBIT           Belarus      6 months    4                    1                 1.6045223   0.8491827   3.0317288
PROBIT           Belarus      24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROBIT           Belarus      24 months   2                    1                 0.8569149   0.2833195   2.5917849
PROBIT           Belarus      24 months   3                    1                 0.9003593   0.0893233   9.0754217
PROBIT           Belarus      24 months   4                    1                 0.6906752   0.2509947   1.9005672
PROVIDE          Bangladesh   Birth       1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh   Birth       2                    1                 2.8201058   1.3249889   6.0023119
PROVIDE          Bangladesh   Birth       3                    1                 1.6082474   0.6820960   3.7919291
PROVIDE          Bangladesh   Birth       4                    1                 3.1428571   1.4963572   6.6010649
PROVIDE          Bangladesh   24 months   1                    1                 1.0000000   1.0000000   1.0000000
PROVIDE          Bangladesh   24 months   2                    1                 1.2573529   0.5706441   2.7704419
PROVIDE          Bangladesh   24 months   3                    1                 0.8329327   0.3134931   2.2130527
PROVIDE          Bangladesh   24 months   4                    1                 1.8333333   0.8679066   3.8726647
SAS-CompFeed     India        Birth       1                    1                 1.0000000   1.0000000   1.0000000
SAS-CompFeed     India        Birth       2                    1                 2.1074020   1.1777577   3.7708464
SAS-CompFeed     India        Birth       3                    1                 1.7584135   0.8156200   3.7910032
SAS-CompFeed     India        Birth       4                    1                 2.4152353   1.3248595   4.4030037
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
Keneba           Gambia       Birth       1                    NA                -0.0240058   -0.0591953    0.0111837
Keneba           Gambia       6 months    1                    NA                -0.0045775   -0.0238161    0.0146610
Keneba           Gambia       24 months   1                    NA                 0.0467882    0.0265007    0.0670758
MAL-ED           Bangladesh   Birth       1                    NA                 0.0111919   -0.0644352    0.0868190
PROBIT           Belarus      Birth       1                    NA                 0.0110116   -0.0059017    0.0279248
PROBIT           Belarus      6 months    1                    NA                 0.0010514   -0.0016243    0.0037270
PROBIT           Belarus      24 months   1                    NA                -0.0012505   -0.0087797    0.0062786
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
Keneba           Gambia       Birth       1                    NA                -0.0966827   -0.2478904    0.0362031
Keneba           Gambia       6 months    1                    NA                -0.0790289   -0.4676356    0.2066809
Keneba           Gambia       24 months   1                    NA                 0.4228088    0.2174331    0.5742861
MAL-ED           Bangladesh   Birth       1                    NA                 0.0668403   -0.5136727    0.4247190
PROBIT           Belarus      Birth       1                    NA                 0.0523561   -0.0309034    0.1288912
PROBIT           Belarus      6 months    1                    NA                 0.1533957   -0.3502767    0.4691911
PROBIT           Belarus      24 months   1                    NA                -0.1551443   -1.5742018    0.4816419
PROVIDE          Bangladesh   Birth       1                    NA                 0.5919351    0.1922535    0.7938500
PROVIDE          Bangladesh   24 months   1                    NA                 0.2453568   -0.4017659    0.5937365
SAS-CompFeed     India        Birth       1                    NA                 0.4739526    0.1332308    0.6807387
SAS-CompFeed     India        6 months    1                    NA                 0.5714056    0.4287222    0.6784521
SAS-FoodSuppl    India        6 months    1                    NA                 0.1394928   -0.1447798    0.3531745
TanzaniaChild2   Tanzania     6 months    1                    NA                -0.1745523   -0.6082349    0.1421819
ZVITAMBO         Zimbabwe     Birth       1                    NA                -0.0707311   -0.1384200   -0.0070668
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0577231   -0.2889263    0.1320077
ZVITAMBO         Zimbabwe     24 months   1                    NA                -0.0795934   -0.6873167    0.3092453

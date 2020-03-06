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

studyid          country        agecat       rain_quartile   swasted   n_cell       n
---------------  -------------  ----------  --------------  --------  -------  ------
CMC-V-BCS-2002   India          Birth                    1         0       17      86
CMC-V-BCS-2002   India          Birth                    1         1        0      86
CMC-V-BCS-2002   India          Birth                    2         0       22      86
CMC-V-BCS-2002   India          Birth                    2         1        0      86
CMC-V-BCS-2002   India          Birth                    3         0       28      86
CMC-V-BCS-2002   India          Birth                    3         1        0      86
CMC-V-BCS-2002   India          Birth                    4         0       18      86
CMC-V-BCS-2002   India          Birth                    4         1        1      86
CMC-V-BCS-2002   India          6 months                 1         0      101     368
CMC-V-BCS-2002   India          6 months                 1         1        1     368
CMC-V-BCS-2002   India          6 months                 2         0      105     368
CMC-V-BCS-2002   India          6 months                 2         1        4     368
CMC-V-BCS-2002   India          6 months                 3         0       93     368
CMC-V-BCS-2002   India          6 months                 3         1        4     368
CMC-V-BCS-2002   India          6 months                 4         0       57     368
CMC-V-BCS-2002   India          6 months                 4         1        3     368
CMC-V-BCS-2002   India          24 months                1         0      101     372
CMC-V-BCS-2002   India          24 months                1         1        0     372
CMC-V-BCS-2002   India          24 months                2         0       99     372
CMC-V-BCS-2002   India          24 months                2         1        0     372
CMC-V-BCS-2002   India          24 months                3         0      115     372
CMC-V-BCS-2002   India          24 months                3         1        2     372
CMC-V-BCS-2002   India          24 months                4         0       54     372
CMC-V-BCS-2002   India          24 months                4         1        1     372
CMIN             Bangladesh     Birth                    1         0        4      19
CMIN             Bangladesh     Birth                    1         1        0      19
CMIN             Bangladesh     Birth                    2         0        4      19
CMIN             Bangladesh     Birth                    2         1        1      19
CMIN             Bangladesh     Birth                    3         0        5      19
CMIN             Bangladesh     Birth                    3         1        0      19
CMIN             Bangladesh     Birth                    4         0        5      19
CMIN             Bangladesh     Birth                    4         1        0      19
CMIN             Bangladesh     6 months                 1         0       50     243
CMIN             Bangladesh     6 months                 1         1        0     243
CMIN             Bangladesh     6 months                 2         0       61     243
CMIN             Bangladesh     6 months                 2         1        1     243
CMIN             Bangladesh     6 months                 3         0       70     243
CMIN             Bangladesh     6 months                 3         1        0     243
CMIN             Bangladesh     6 months                 4         0       57     243
CMIN             Bangladesh     6 months                 4         1        4     243
CMIN             Bangladesh     24 months                1         0       78     243
CMIN             Bangladesh     24 months                1         1        1     243
CMIN             Bangladesh     24 months                2         0       68     243
CMIN             Bangladesh     24 months                2         1        1     243
CMIN             Bangladesh     24 months                3         0       58     243
CMIN             Bangladesh     24 months                3         1        0     243
CMIN             Bangladesh     24 months                4         0       37     243
CMIN             Bangladesh     24 months                4         1        0     243
CONTENT          Peru           Birth                    1         0        0       2
CONTENT          Peru           Birth                    1         1        0       2
CONTENT          Peru           Birth                    2         0        2       2
CONTENT          Peru           Birth                    2         1        0       2
CONTENT          Peru           Birth                    3         0        0       2
CONTENT          Peru           Birth                    3         1        0       2
CONTENT          Peru           Birth                    4         0        0       2
CONTENT          Peru           Birth                    4         1        0       2
CONTENT          Peru           6 months                 1         0       62     215
CONTENT          Peru           6 months                 1         1        0     215
CONTENT          Peru           6 months                 2         0       32     215
CONTENT          Peru           6 months                 2         1        0     215
CONTENT          Peru           6 months                 3         0       44     215
CONTENT          Peru           6 months                 3         1        0     215
CONTENT          Peru           6 months                 4         0       77     215
CONTENT          Peru           6 months                 4         1        0     215
CONTENT          Peru           24 months                1         0       55     164
CONTENT          Peru           24 months                1         1        0     164
CONTENT          Peru           24 months                2         0       35     164
CONTENT          Peru           24 months                2         1        0     164
CONTENT          Peru           24 months                3         0       20     164
CONTENT          Peru           24 months                3         1        0     164
CONTENT          Peru           24 months                4         0       54     164
CONTENT          Peru           24 months                4         1        0     164
EE               Pakistan       Birth                    1         0       89     177
EE               Pakistan       Birth                    1         1        3     177
EE               Pakistan       Birth                    2         0       74     177
EE               Pakistan       Birth                    2         1        3     177
EE               Pakistan       Birth                    3         0        8     177
EE               Pakistan       Birth                    3         1        0     177
EE               Pakistan       Birth                    4         0        0     177
EE               Pakistan       Birth                    4         1        0     177
EE               Pakistan       6 months                 1         0        0     375
EE               Pakistan       6 months                 1         1        0     375
EE               Pakistan       6 months                 2         0       34     375
EE               Pakistan       6 months                 2         1        0     375
EE               Pakistan       6 months                 3         0      161     375
EE               Pakistan       6 months                 3         1        7     375
EE               Pakistan       6 months                 4         0      167     375
EE               Pakistan       6 months                 4         1        6     375
EE               Pakistan       24 months                1         0        7     168
EE               Pakistan       24 months                1         1        1     168
EE               Pakistan       24 months                2         0      157     168
EE               Pakistan       24 months                2         1        3     168
EE               Pakistan       24 months                3         0        0     168
EE               Pakistan       24 months                3         1        0     168
EE               Pakistan       24 months                4         0        0     168
EE               Pakistan       24 months                4         1        0     168
GMS-Nepal        Nepal          Birth                    1         0        0     641
GMS-Nepal        Nepal          Birth                    1         1        0     641
GMS-Nepal        Nepal          Birth                    2         0        0     641
GMS-Nepal        Nepal          Birth                    2         1        0     641
GMS-Nepal        Nepal          Birth                    3         0      144     641
GMS-Nepal        Nepal          Birth                    3         1        8     641
GMS-Nepal        Nepal          Birth                    4         0      470     641
GMS-Nepal        Nepal          Birth                    4         1       19     641
GMS-Nepal        Nepal          6 months                 1         0      495     564
GMS-Nepal        Nepal          6 months                 1         1        7     564
GMS-Nepal        Nepal          6 months                 2         0       62     564
GMS-Nepal        Nepal          6 months                 2         1        0     564
GMS-Nepal        Nepal          6 months                 3         0        0     564
GMS-Nepal        Nepal          6 months                 3         1        0     564
GMS-Nepal        Nepal          6 months                 4         0        0     564
GMS-Nepal        Nepal          6 months                 4         1        0     564
GMS-Nepal        Nepal          24 months                1         0        0     487
GMS-Nepal        Nepal          24 months                1         1        0     487
GMS-Nepal        Nepal          24 months                2         0        0     487
GMS-Nepal        Nepal          24 months                2         1        0     487
GMS-Nepal        Nepal          24 months                3         0       39     487
GMS-Nepal        Nepal          24 months                3         1        0     487
GMS-Nepal        Nepal          24 months                4         0      433     487
GMS-Nepal        Nepal          24 months                4         1       15     487
Guatemala BSC    Guatemala      6 months                 1         0       60     299
Guatemala BSC    Guatemala      6 months                 1         1        0     299
Guatemala BSC    Guatemala      6 months                 2         0       80     299
Guatemala BSC    Guatemala      6 months                 2         1        0     299
Guatemala BSC    Guatemala      6 months                 3         0       87     299
Guatemala BSC    Guatemala      6 months                 3         1        0     299
Guatemala BSC    Guatemala      6 months                 4         0       72     299
Guatemala BSC    Guatemala      6 months                 4         1        0     299
IRC              India          Birth                    1         0       70     343
IRC              India          Birth                    1         1        8     343
IRC              India          Birth                    2         0       97     343
IRC              India          Birth                    2         1       17     343
IRC              India          Birth                    3         0       48     343
IRC              India          Birth                    3         1       11     343
IRC              India          Birth                    4         0       74     343
IRC              India          Birth                    4         1       18     343
IRC              India          6 months                 1         0      108     408
IRC              India          6 months                 1         1        9     408
IRC              India          6 months                 2         0       75     408
IRC              India          6 months                 2         1        2     408
IRC              India          6 months                 3         0      121     408
IRC              India          6 months                 3         1        8     408
IRC              India          6 months                 4         0       82     408
IRC              India          6 months                 4         1        3     408
IRC              India          24 months                1         0      113     409
IRC              India          24 months                1         1        1     409
IRC              India          24 months                2         0      119     409
IRC              India          24 months                2         1        0     409
IRC              India          24 months                3         0       83     409
IRC              India          24 months                3         1        2     409
IRC              India          24 months                4         0       89     409
IRC              India          24 months                4         1        2     409
Keneba           Gambia         Birth                    1         0      394    1466
Keneba           Gambia         Birth                    1         1       32    1466
Keneba           Gambia         Birth                    2         0      369    1466
Keneba           Gambia         Birth                    2         1       32    1466
Keneba           Gambia         Birth                    3         0      343    1466
Keneba           Gambia         Birth                    3         1       21    1466
Keneba           Gambia         Birth                    4         0      257    1466
Keneba           Gambia         Birth                    4         1       18    1466
Keneba           Gambia         6 months                 1         0      456    2089
Keneba           Gambia         6 months                 1         1        8    2089
Keneba           Gambia         6 months                 2         0      445    2089
Keneba           Gambia         6 months                 2         1       14    2089
Keneba           Gambia         6 months                 3         0      599    2089
Keneba           Gambia         6 months                 3         1        8    2089
Keneba           Gambia         6 months                 4         0      555    2089
Keneba           Gambia         6 months                 4         1        4    2089
Keneba           Gambia         24 months                1         0      499    1726
Keneba           Gambia         24 months                1         1        2    1726
Keneba           Gambia         24 months                2         0      479    1726
Keneba           Gambia         24 months                2         1       13    1726
Keneba           Gambia         24 months                3         0      381    1726
Keneba           Gambia         24 months                3         1        7    1726
Keneba           Gambia         24 months                4         0      337    1726
Keneba           Gambia         24 months                4         1        8    1726
LCNI-5           Malawi         6 months                 1         0      204     839
LCNI-5           Malawi         6 months                 1         1        0     839
LCNI-5           Malawi         6 months                 2         0      319     839
LCNI-5           Malawi         6 months                 2         1        0     839
LCNI-5           Malawi         6 months                 3         0      113     839
LCNI-5           Malawi         6 months                 3         1        0     839
LCNI-5           Malawi         6 months                 4         0      203     839
LCNI-5           Malawi         6 months                 4         1        0     839
LCNI-5           Malawi         24 months                1         0      145     563
LCNI-5           Malawi         24 months                1         1        0     563
LCNI-5           Malawi         24 months                2         0       80     563
LCNI-5           Malawi         24 months                2         1        0     563
LCNI-5           Malawi         24 months                3         0      210     563
LCNI-5           Malawi         24 months                3         1        0     563
LCNI-5           Malawi         24 months                4         0      127     563
LCNI-5           Malawi         24 months                4         1        1     563
MAL-ED           Bangladesh     Birth                    1         0       63     215
MAL-ED           Bangladesh     Birth                    1         1        1     215
MAL-ED           Bangladesh     Birth                    2         0       46     215
MAL-ED           Bangladesh     Birth                    2         1        2     215
MAL-ED           Bangladesh     Birth                    3         0       57     215
MAL-ED           Bangladesh     Birth                    3         1        4     215
MAL-ED           Bangladesh     Birth                    4         0       41     215
MAL-ED           Bangladesh     Birth                    4         1        1     215
MAL-ED           Bangladesh     6 months                 1         0       54     241
MAL-ED           Bangladesh     6 months                 1         1        1     241
MAL-ED           Bangladesh     6 months                 2         0       71     241
MAL-ED           Bangladesh     6 months                 2         1        1     241
MAL-ED           Bangladesh     6 months                 3         0       60     241
MAL-ED           Bangladesh     6 months                 3         1        0     241
MAL-ED           Bangladesh     6 months                 4         0       54     241
MAL-ED           Bangladesh     6 months                 4         1        0     241
MAL-ED           Bangladesh     24 months                1         0       73     212
MAL-ED           Bangladesh     24 months                1         1        0     212
MAL-ED           Bangladesh     24 months                2         0       51     212
MAL-ED           Bangladesh     24 months                2         1        0     212
MAL-ED           Bangladesh     24 months                3         0       48     212
MAL-ED           Bangladesh     24 months                3         1        0     212
MAL-ED           Bangladesh     24 months                4         0       40     212
MAL-ED           Bangladesh     24 months                4         1        0     212
MAL-ED           Brazil         Birth                    1         0       17      62
MAL-ED           Brazil         Birth                    1         1        0      62
MAL-ED           Brazil         Birth                    2         0       11      62
MAL-ED           Brazil         Birth                    2         1        0      62
MAL-ED           Brazil         Birth                    3         0       12      62
MAL-ED           Brazil         Birth                    3         1        0      62
MAL-ED           Brazil         Birth                    4         0       22      62
MAL-ED           Brazil         Birth                    4         1        0      62
MAL-ED           Brazil         6 months                 1         0       64     209
MAL-ED           Brazil         6 months                 1         1        0     209
MAL-ED           Brazil         6 months                 2         0       51     209
MAL-ED           Brazil         6 months                 2         1        0     209
MAL-ED           Brazil         6 months                 3         0       44     209
MAL-ED           Brazil         6 months                 3         1        0     209
MAL-ED           Brazil         6 months                 4         0       50     209
MAL-ED           Brazil         6 months                 4         1        0     209
MAL-ED           Brazil         24 months                1         0       65     169
MAL-ED           Brazil         24 months                1         1        0     169
MAL-ED           Brazil         24 months                2         0       30     169
MAL-ED           Brazil         24 months                2         1        0     169
MAL-ED           Brazil         24 months                3         0       42     169
MAL-ED           Brazil         24 months                3         1        1     169
MAL-ED           Brazil         24 months                4         0       31     169
MAL-ED           Brazil         24 months                4         1        0     169
MAL-ED           India          Birth                    1         0       10      45
MAL-ED           India          Birth                    1         1        0      45
MAL-ED           India          Birth                    2         0       10      45
MAL-ED           India          Birth                    2         1        0      45
MAL-ED           India          Birth                    3         0       11      45
MAL-ED           India          Birth                    3         1        0      45
MAL-ED           India          Birth                    4         0       14      45
MAL-ED           India          Birth                    4         1        0      45
MAL-ED           India          6 months                 1         0       65     236
MAL-ED           India          6 months                 1         1        1     236
MAL-ED           India          6 months                 2         0       41     236
MAL-ED           India          6 months                 2         1        1     236
MAL-ED           India          6 months                 3         0       71     236
MAL-ED           India          6 months                 3         1        2     236
MAL-ED           India          6 months                 4         0       54     236
MAL-ED           India          6 months                 4         1        1     236
MAL-ED           India          24 months                1         0       65     227
MAL-ED           India          24 months                1         1        0     227
MAL-ED           India          24 months                2         0       71     227
MAL-ED           India          24 months                2         1        0     227
MAL-ED           India          24 months                3         0       52     227
MAL-ED           India          24 months                3         1        2     227
MAL-ED           India          24 months                4         0       37     227
MAL-ED           India          24 months                4         1        0     227
MAL-ED           Nepal          Birth                    1         0        4      26
MAL-ED           Nepal          Birth                    1         1        1      26
MAL-ED           Nepal          Birth                    2         0        9      26
MAL-ED           Nepal          Birth                    2         1        0      26
MAL-ED           Nepal          Birth                    3         0        7      26
MAL-ED           Nepal          Birth                    3         1        0      26
MAL-ED           Nepal          Birth                    4         0        5      26
MAL-ED           Nepal          Birth                    4         1        0      26
MAL-ED           Nepal          6 months                 1         0       60     236
MAL-ED           Nepal          6 months                 1         1        0     236
MAL-ED           Nepal          6 months                 2         0       59     236
MAL-ED           Nepal          6 months                 2         1        0     236
MAL-ED           Nepal          6 months                 3         0       59     236
MAL-ED           Nepal          6 months                 3         1        0     236
MAL-ED           Nepal          6 months                 4         0       58     236
MAL-ED           Nepal          6 months                 4         1        0     236
MAL-ED           Nepal          24 months                1         0       66     228
MAL-ED           Nepal          24 months                1         1        0     228
MAL-ED           Nepal          24 months                2         0       61     228
MAL-ED           Nepal          24 months                2         1        0     228
MAL-ED           Nepal          24 months                3         0       63     228
MAL-ED           Nepal          24 months                3         1        0     228
MAL-ED           Nepal          24 months                4         0       38     228
MAL-ED           Nepal          24 months                4         1        0     228
MAL-ED           Peru           Birth                    1         0       49     228
MAL-ED           Peru           Birth                    1         1        0     228
MAL-ED           Peru           Birth                    2         0       52     228
MAL-ED           Peru           Birth                    2         1        0     228
MAL-ED           Peru           Birth                    3         0       69     228
MAL-ED           Peru           Birth                    3         1        0     228
MAL-ED           Peru           Birth                    4         0       58     228
MAL-ED           Peru           Birth                    4         1        0     228
MAL-ED           Peru           6 months                 1         0       96     273
MAL-ED           Peru           6 months                 1         1        0     273
MAL-ED           Peru           6 months                 2         0       77     273
MAL-ED           Peru           6 months                 2         1        0     273
MAL-ED           Peru           6 months                 3         0       60     273
MAL-ED           Peru           6 months                 3         1        0     273
MAL-ED           Peru           6 months                 4         0       40     273
MAL-ED           Peru           6 months                 4         1        0     273
MAL-ED           Peru           24 months                1         0       54     201
MAL-ED           Peru           24 months                1         1        1     201
MAL-ED           Peru           24 months                2         0       46     201
MAL-ED           Peru           24 months                2         1        0     201
MAL-ED           Peru           24 months                3         0       53     201
MAL-ED           Peru           24 months                3         1        1     201
MAL-ED           Peru           24 months                4         0       46     201
MAL-ED           Peru           24 months                4         1        0     201
MAL-ED           South Africa   Birth                    1         0       25     120
MAL-ED           South Africa   Birth                    1         1        0     120
MAL-ED           South Africa   Birth                    2         0       22     120
MAL-ED           South Africa   Birth                    2         1        0     120
MAL-ED           South Africa   Birth                    3         0       35     120
MAL-ED           South Africa   Birth                    3         1        0     120
MAL-ED           South Africa   Birth                    4         0       38     120
MAL-ED           South Africa   Birth                    4         1        0     120
MAL-ED           South Africa   6 months                 1         0      106     254
MAL-ED           South Africa   6 months                 1         1        0     254
MAL-ED           South Africa   6 months                 2         0       64     254
MAL-ED           South Africa   6 months                 2         1        3     254
MAL-ED           South Africa   6 months                 3         0       45     254
MAL-ED           South Africa   6 months                 3         1        0     254
MAL-ED           South Africa   6 months                 4         0       36     254
MAL-ED           South Africa   6 months                 4         1        0     254
MAL-ED           South Africa   24 months                1         0       55     238
MAL-ED           South Africa   24 months                1         1        0     238
MAL-ED           South Africa   24 months                2         0       39     238
MAL-ED           South Africa   24 months                2         1        0     238
MAL-ED           South Africa   24 months                3         0       86     238
MAL-ED           South Africa   24 months                3         1        0     238
MAL-ED           South Africa   24 months                4         0       58     238
MAL-ED           South Africa   24 months                4         1        0     238
MAL-ED           Tanzania       Birth                    1         0       14     115
MAL-ED           Tanzania       Birth                    1         1        0     115
MAL-ED           Tanzania       Birth                    2         0       33     115
MAL-ED           Tanzania       Birth                    2         1        0     115
MAL-ED           Tanzania       Birth                    3         0       32     115
MAL-ED           Tanzania       Birth                    3         1        0     115
MAL-ED           Tanzania       Birth                    4         0       36     115
MAL-ED           Tanzania       Birth                    4         1        0     115
MAL-ED           Tanzania       6 months                 1         0       71     247
MAL-ED           Tanzania       6 months                 1         1        0     247
MAL-ED           Tanzania       6 months                 2         0       80     247
MAL-ED           Tanzania       6 months                 2         1        0     247
MAL-ED           Tanzania       6 months                 3         0       53     247
MAL-ED           Tanzania       6 months                 3         1        0     247
MAL-ED           Tanzania       6 months                 4         0       43     247
MAL-ED           Tanzania       6 months                 4         1        0     247
MAL-ED           Tanzania       24 months                1         0       56     214
MAL-ED           Tanzania       24 months                1         1        0     214
MAL-ED           Tanzania       24 months                2         0       59     214
MAL-ED           Tanzania       24 months                2         1        0     214
MAL-ED           Tanzania       24 months                3         0       59     214
MAL-ED           Tanzania       24 months                3         1        0     214
MAL-ED           Tanzania       24 months                4         0       40     214
MAL-ED           Tanzania       24 months                4         1        0     214
PROBIT           Belarus        Birth                    1         0     3520   13817
PROBIT           Belarus        Birth                    1         1      243   13817
PROBIT           Belarus        Birth                    2         0     3853   13817
PROBIT           Belarus        Birth                    2         1      271   13817
PROBIT           Belarus        Birth                    3         0     2535   13817
PROBIT           Belarus        Birth                    3         1      165   13817
PROBIT           Belarus        Birth                    4         0     2990   13817
PROBIT           Belarus        Birth                    4         1      240   13817
PROBIT           Belarus        6 months                 1         0     3617   15757
PROBIT           Belarus        6 months                 1         1        2   15757
PROBIT           Belarus        6 months                 2         0     3117   15757
PROBIT           Belarus        6 months                 2         1        0   15757
PROBIT           Belarus        6 months                 3         0     4506   15757
PROBIT           Belarus        6 months                 3         1        4   15757
PROBIT           Belarus        6 months                 4         0     4508   15757
PROBIT           Belarus        6 months                 4         1        3   15757
PROBIT           Belarus        24 months                1         0     1071    3970
PROBIT           Belarus        24 months                1         1        3    3970
PROBIT           Belarus        24 months                2         0     1127    3970
PROBIT           Belarus        24 months                2         1        1    3970
PROBIT           Belarus        24 months                3         0      833    3970
PROBIT           Belarus        24 months                3         1        2    3970
PROBIT           Belarus        24 months                4         0      932    3970
PROBIT           Belarus        24 months                4         1        1    3970
PROVIDE          Bangladesh     Birth                    1         0       77     532
PROVIDE          Bangladesh     Birth                    1         1        1     532
PROVIDE          Bangladesh     Birth                    2         0      158     532
PROVIDE          Bangladesh     Birth                    2         1        4     532
PROVIDE          Bangladesh     Birth                    3         0       95     532
PROVIDE          Bangladesh     Birth                    3         1        2     532
PROVIDE          Bangladesh     Birth                    4         0      189     532
PROVIDE          Bangladesh     Birth                    4         1        6     532
PROVIDE          Bangladesh     6 months                 1         0      208     603
PROVIDE          Bangladesh     6 months                 1         1        3     603
PROVIDE          Bangladesh     6 months                 2         0      121     603
PROVIDE          Bangladesh     6 months                 2         1        1     603
PROVIDE          Bangladesh     6 months                 3         0      174     603
PROVIDE          Bangladesh     6 months                 3         1        0     603
PROVIDE          Bangladesh     6 months                 4         0       95     603
PROVIDE          Bangladesh     6 months                 4         1        1     603
PROVIDE          Bangladesh     24 months                1         0       99     579
PROVIDE          Bangladesh     24 months                1         1        0     579
PROVIDE          Bangladesh     24 months                2         0      184     579
PROVIDE          Bangladesh     24 months                2         1        3     579
PROVIDE          Bangladesh     24 months                3         0      103     579
PROVIDE          Bangladesh     24 months                3         1        1     579
PROVIDE          Bangladesh     24 months                4         0      184     579
PROVIDE          Bangladesh     24 months                4         1        5     579
ResPak           Pakistan       Birth                    1         0        3      38
ResPak           Pakistan       Birth                    1         1        0      38
ResPak           Pakistan       Birth                    2         0        2      38
ResPak           Pakistan       Birth                    2         1        0      38
ResPak           Pakistan       Birth                    3         0       14      38
ResPak           Pakistan       Birth                    3         1        0      38
ResPak           Pakistan       Birth                    4         0       19      38
ResPak           Pakistan       Birth                    4         1        0      38
ResPak           Pakistan       6 months                 1         0      105     239
ResPak           Pakistan       6 months                 1         1        2     239
ResPak           Pakistan       6 months                 2         0       92     239
ResPak           Pakistan       6 months                 2         1        6     239
ResPak           Pakistan       6 months                 3         0        8     239
ResPak           Pakistan       6 months                 3         1        0     239
ResPak           Pakistan       6 months                 4         0       25     239
ResPak           Pakistan       6 months                 4         1        1     239
SAS-CompFeed     India          Birth                    1         0      230    1103
SAS-CompFeed     India          Birth                    1         1        1    1103
SAS-CompFeed     India          Birth                    2         0      361    1103
SAS-CompFeed     India          Birth                    2         1       10    1103
SAS-CompFeed     India          Birth                    3         0      186    1103
SAS-CompFeed     India          Birth                    3         1        6    1103
SAS-CompFeed     India          Birth                    4         0      297    1103
SAS-CompFeed     India          Birth                    4         1       12    1103
SAS-CompFeed     India          6 months                 1         0      369    1334
SAS-CompFeed     India          6 months                 1         1        6    1334
SAS-CompFeed     India          6 months                 2         0      224    1334
SAS-CompFeed     India          6 months                 2         1        4    1334
SAS-CompFeed     India          6 months                 3         0      415    1334
SAS-CompFeed     India          6 months                 3         1       19    1334
SAS-CompFeed     India          6 months                 4         0      283    1334
SAS-CompFeed     India          6 months                 4         1       14    1334
SAS-FoodSuppl    India          6 months                 1         0      154     380
SAS-FoodSuppl    India          6 months                 1         1        6     380
SAS-FoodSuppl    India          6 months                 2         0       35     380
SAS-FoodSuppl    India          6 months                 2         1        2     380
SAS-FoodSuppl    India          6 months                 3         0      101     380
SAS-FoodSuppl    India          6 months                 3         1        6     380
SAS-FoodSuppl    India          6 months                 4         0       71     380
SAS-FoodSuppl    India          6 months                 4         1        5     380
TanzaniaChild2   Tanzania       6 months                 1         0      514    2028
TanzaniaChild2   Tanzania       6 months                 1         1        2    2028
TanzaniaChild2   Tanzania       6 months                 2         0      560    2028
TanzaniaChild2   Tanzania       6 months                 2         1        4    2028
TanzaniaChild2   Tanzania       6 months                 3         0      465    2028
TanzaniaChild2   Tanzania       6 months                 3         1        2    2028
TanzaniaChild2   Tanzania       6 months                 4         0      477    2028
TanzaniaChild2   Tanzania       6 months                 4         1        4    2028
TanzaniaChild2   Tanzania       24 months                1         0        0       6
TanzaniaChild2   Tanzania       24 months                1         1        0       6
TanzaniaChild2   Tanzania       24 months                2         0        4       6
TanzaniaChild2   Tanzania       24 months                2         1        0       6
TanzaniaChild2   Tanzania       24 months                3         0        0       6
TanzaniaChild2   Tanzania       24 months                3         1        0       6
TanzaniaChild2   Tanzania       24 months                4         0        2       6
TanzaniaChild2   Tanzania       24 months                4         1        0       6
ZVITAMBO         Zimbabwe       Birth                    1         0     3306   12916
ZVITAMBO         Zimbabwe       Birth                    1         1      225   12916
ZVITAMBO         Zimbabwe       Birth                    2         0     2714   12916
ZVITAMBO         Zimbabwe       Birth                    2         1      188   12916
ZVITAMBO         Zimbabwe       Birth                    3         0     3039   12916
ZVITAMBO         Zimbabwe       Birth                    3         1      198   12916
ZVITAMBO         Zimbabwe       Birth                    4         0     3066   12916
ZVITAMBO         Zimbabwe       Birth                    4         1      180   12916
ZVITAMBO         Zimbabwe       6 months                 1         0     2098    8505
ZVITAMBO         Zimbabwe       6 months                 1         1       26    8505
ZVITAMBO         Zimbabwe       6 months                 2         0     2186    8505
ZVITAMBO         Zimbabwe       6 months                 2         1       13    8505
ZVITAMBO         Zimbabwe       6 months                 3         0     1949    8505
ZVITAMBO         Zimbabwe       6 months                 3         1       23    8505
ZVITAMBO         Zimbabwe       6 months                 4         0     2193    8505
ZVITAMBO         Zimbabwe       6 months                 4         1       17    8505
ZVITAMBO         Zimbabwe       24 months                1         0       61     433
ZVITAMBO         Zimbabwe       24 months                1         1        5     433
ZVITAMBO         Zimbabwe       24 months                2         0      127     433
ZVITAMBO         Zimbabwe       24 months                2         1       12     433
ZVITAMBO         Zimbabwe       24 months                3         0       65     433
ZVITAMBO         Zimbabwe       24 months                3         1        3     433
ZVITAMBO         Zimbabwe       24 months                4         0      149     433
ZVITAMBO         Zimbabwe       24 months                4         1       11     433


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/da420235-0842-40a1-87bc-4ffdd4a46f21/69855726-dd37-4216-9ee8-12eafa7f9b45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da420235-0842-40a1-87bc-4ffdd4a46f21/69855726-dd37-4216-9ee8-12eafa7f9b45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da420235-0842-40a1-87bc-4ffdd4a46f21/69855726-dd37-4216-9ee8-12eafa7f9b45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da420235-0842-40a1-87bc-4ffdd4a46f21/69855726-dd37-4216-9ee8-12eafa7f9b45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country    agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ---------  ---------  -------------------  ---------------  ----------  ----------  ----------
IRC        India      Birth      1                    NA                0.1025641   0.0351370   0.1699912
IRC        India      Birth      2                    NA                0.1491228   0.0836388   0.2146068
IRC        India      Birth      3                    NA                0.1864407   0.0869182   0.2859631
IRC        India      Birth      4                    NA                0.1956522   0.1144715   0.2768328
Keneba     Gambia     Birth      1                    NA                0.0751174   0.0500791   0.1001557
Keneba     Gambia     Birth      2                    NA                0.0798005   0.0532686   0.1063324
Keneba     Gambia     Birth      3                    NA                0.0576923   0.0337315   0.0816531
Keneba     Gambia     Birth      4                    NA                0.0654545   0.0362130   0.0946961
PROBIT     Belarus    Birth      1                    NA                0.0645761   0.0301169   0.0990353
PROBIT     Belarus    Birth      2                    NA                0.0657129   0.0301357   0.1012901
PROBIT     Belarus    Birth      3                    NA                0.0611111   0.0231823   0.0990399
PROBIT     Belarus    Birth      4                    NA                0.0743034   0.0410673   0.1075395
ZVITAMBO   Zimbabwe   Birth      1                    NA                0.0637213   0.0556646   0.0717781
ZVITAMBO   Zimbabwe   Birth      2                    NA                0.0647829   0.0558271   0.0737387
ZVITAMBO   Zimbabwe   Birth      3                    NA                0.0611677   0.0529121   0.0694234
ZVITAMBO   Zimbabwe   Birth      4                    NA                0.0554529   0.0475794   0.0633263
ZVITAMBO   Zimbabwe   6 months   1                    NA                0.0122411   0.0075644   0.0169177
ZVITAMBO   Zimbabwe   6 months   2                    NA                0.0059118   0.0027075   0.0091161
ZVITAMBO   Zimbabwe   6 months   3                    NA                0.0116633   0.0069243   0.0164022
ZVITAMBO   Zimbabwe   6 months   4                    NA                0.0076923   0.0040496   0.0113351


### Parameter: E(Y)


studyid    country    agecat     intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ---------  ---------  -------------------  ---------------  ----------  ----------  ----------
IRC        India      Birth      NA                   NA                0.1574344   0.1188345   0.1960344
Keneba     Gambia     Birth      NA                   NA                0.0702592   0.0571716   0.0833469
PROBIT     Belarus    Birth      NA                   NA                0.0665123   0.0333611   0.0996634
ZVITAMBO   Zimbabwe   Birth      NA                   NA                0.0612419   0.0571066   0.0653771
ZVITAMBO   Zimbabwe   6 months   NA                   NA                0.0092887   0.0072498   0.0113275


### Parameter: RR


studyid    country    agecat     intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  ---------  ---------  -------------------  ---------------  ----------  ----------  ---------
IRC        India      Birth      1                    1                 1.0000000   1.0000000   1.000000
IRC        India      Birth      2                    1                 1.4539474   0.6594799   3.205500
IRC        India      Birth      3                    1                 1.8177966   0.7794126   4.239583
IRC        India      Birth      4                    1                 1.9076087   0.8767339   4.150599
Keneba     Gambia     Birth      1                    1                 1.0000000   1.0000000   1.000000
Keneba     Gambia     Birth      2                    1                 1.0623441   0.6634418   1.701091
Keneba     Gambia     Birth      3                    1                 0.7680288   0.4509206   1.308142
Keneba     Gambia     Birth      4                    1                 0.8713636   0.4990308   1.521499
PROBIT     Belarus    Birth      1                    1                 1.0000000   1.0000000   1.000000
PROBIT     Belarus    Birth      2                    1                 1.0176035   0.7803661   1.326963
PROBIT     Belarus    Birth      3                    1                 0.9463420   0.7240195   1.236932
PROBIT     Belarus    Birth      4                    1                 1.1506326   0.8884523   1.490182
ZVITAMBO   Zimbabwe   Birth      1                    1                 1.0000000   1.0000000   1.000000
ZVITAMBO   Zimbabwe   Birth      2                    1                 1.0166598   0.8429727   1.226134
ZVITAMBO   Zimbabwe   Birth      3                    1                 0.9599259   0.7978471   1.154930
ZVITAMBO   Zimbabwe   Birth      4                    1                 0.8702403   0.7195660   1.052465
ZVITAMBO   Zimbabwe   6 months   1                    1                 1.0000000   1.0000000   1.000000
ZVITAMBO   Zimbabwe   6 months   2                    1                 0.4829468   0.2488316   0.937331
ZVITAMBO   Zimbabwe   6 months   3                    1                 0.9528007   0.5454923   1.664238
ZVITAMBO   Zimbabwe   6 months   4                    1                 0.6284024   0.3419721   1.154742


### Parameter: PAR


studyid    country    agecat     intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ---------  ---------  -------------------  ---------------  -----------  -----------  ----------
IRC        India      Birth      1                    NA                 0.0548703   -0.0081266   0.1178672
Keneba     Gambia     Birth      1                    NA                -0.0048582   -0.0256874   0.0159711
PROBIT     Belarus    Birth      1                    NA                 0.0019361   -0.0063683   0.0102405
ZVITAMBO   Zimbabwe   Birth      1                    NA                -0.0024795   -0.0093001   0.0043411
ZVITAMBO   Zimbabwe   6 months   1                    NA                -0.0029524   -0.0068388   0.0009340


### Parameter: PAF


studyid    country    agecat     intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ---------  ---------  -------------------  ---------------  -----------  -----------  ----------
IRC        India      Birth      1                    NA                 0.3485280   -0.1912582   0.6437248
Keneba     Gambia     Birth      1                    NA                -0.0691463   -0.4104797   0.1895851
PROBIT     Belarus    Birth      1                    NA                 0.0291094   -0.1056642   0.1474549
ZVITAMBO   Zimbabwe   Birth      1                    NA                -0.0404863   -0.1580045   0.0651058
ZVITAMBO   Zimbabwe   6 months   1                    NA                -0.3178502   -0.8024623   0.0364685

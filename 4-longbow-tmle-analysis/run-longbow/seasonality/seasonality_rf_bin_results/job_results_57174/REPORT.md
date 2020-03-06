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

studyid          country        agecat       rain_quartile   sstunted   n_cell       n
---------------  -------------  ----------  --------------  ---------  -------  ------
CMC-V-BCS-2002   India          Birth                    1          0       17      92
CMC-V-BCS-2002   India          Birth                    1          1        1      92
CMC-V-BCS-2002   India          Birth                    2          0       23      92
CMC-V-BCS-2002   India          Birth                    2          1        2      92
CMC-V-BCS-2002   India          Birth                    3          0       30      92
CMC-V-BCS-2002   India          Birth                    3          1        0      92
CMC-V-BCS-2002   India          Birth                    4          0       18      92
CMC-V-BCS-2002   India          Birth                    4          1        1      92
CMC-V-BCS-2002   India          6 months                 1          0       86     369
CMC-V-BCS-2002   India          6 months                 1          1       15     369
CMC-V-BCS-2002   India          6 months                 2          0       97     369
CMC-V-BCS-2002   India          6 months                 2          1       14     369
CMC-V-BCS-2002   India          6 months                 3          0       88     369
CMC-V-BCS-2002   India          6 months                 3          1        9     369
CMC-V-BCS-2002   India          6 months                 4          0       56     369
CMC-V-BCS-2002   India          6 months                 4          1        4     369
CMC-V-BCS-2002   India          24 months                1          0       63     371
CMC-V-BCS-2002   India          24 months                1          1       38     371
CMC-V-BCS-2002   India          24 months                2          0       63     371
CMC-V-BCS-2002   India          24 months                2          1       36     371
CMC-V-BCS-2002   India          24 months                3          0       79     371
CMC-V-BCS-2002   India          24 months                3          1       37     371
CMC-V-BCS-2002   India          24 months                4          0       41     371
CMC-V-BCS-2002   India          24 months                4          1       14     371
CMIN             Bangladesh     Birth                    1          0        5      26
CMIN             Bangladesh     Birth                    1          1        2      26
CMIN             Bangladesh     Birth                    2          0        5      26
CMIN             Bangladesh     Birth                    2          1        1      26
CMIN             Bangladesh     Birth                    3          0        5      26
CMIN             Bangladesh     Birth                    3          1        1      26
CMIN             Bangladesh     Birth                    4          0        5      26
CMIN             Bangladesh     Birth                    4          1        2      26
CMIN             Bangladesh     6 months                 1          0       40     243
CMIN             Bangladesh     6 months                 1          1       10     243
CMIN             Bangladesh     6 months                 2          0       60     243
CMIN             Bangladesh     6 months                 2          1        2     243
CMIN             Bangladesh     6 months                 3          0       62     243
CMIN             Bangladesh     6 months                 3          1        9     243
CMIN             Bangladesh     6 months                 4          0       53     243
CMIN             Bangladesh     6 months                 4          1        7     243
CMIN             Bangladesh     24 months                1          0       55     242
CMIN             Bangladesh     24 months                1          1       23     242
CMIN             Bangladesh     24 months                2          0       48     242
CMIN             Bangladesh     24 months                2          1       21     242
CMIN             Bangladesh     24 months                3          0       48     242
CMIN             Bangladesh     24 months                3          1       10     242
CMIN             Bangladesh     24 months                4          0       23     242
CMIN             Bangladesh     24 months                4          1       14     242
CONTENT          Peru           Birth                    1          0        0       2
CONTENT          Peru           Birth                    1          1        0       2
CONTENT          Peru           Birth                    2          0        2       2
CONTENT          Peru           Birth                    2          1        0       2
CONTENT          Peru           Birth                    3          0        0       2
CONTENT          Peru           Birth                    3          1        0       2
CONTENT          Peru           Birth                    4          0        0       2
CONTENT          Peru           Birth                    4          1        0       2
CONTENT          Peru           6 months                 1          0       61     215
CONTENT          Peru           6 months                 1          1        1     215
CONTENT          Peru           6 months                 2          0       32     215
CONTENT          Peru           6 months                 2          1        0     215
CONTENT          Peru           6 months                 3          0       44     215
CONTENT          Peru           6 months                 3          1        0     215
CONTENT          Peru           6 months                 4          0       77     215
CONTENT          Peru           6 months                 4          1        0     215
CONTENT          Peru           24 months                1          0       54     164
CONTENT          Peru           24 months                1          1        1     164
CONTENT          Peru           24 months                2          0       35     164
CONTENT          Peru           24 months                2          1        0     164
CONTENT          Peru           24 months                3          0       20     164
CONTENT          Peru           24 months                3          1        0     164
CONTENT          Peru           24 months                4          0       54     164
CONTENT          Peru           24 months                4          1        0     164
EE               Pakistan       Birth                    1          0      106     240
EE               Pakistan       Birth                    1          1       30     240
EE               Pakistan       Birth                    2          0       78     240
EE               Pakistan       Birth                    2          1       15     240
EE               Pakistan       Birth                    3          0        8     240
EE               Pakistan       Birth                    3          1        3     240
EE               Pakistan       Birth                    4          0        0     240
EE               Pakistan       Birth                    4          1        0     240
EE               Pakistan       6 months                 1          0        0     373
EE               Pakistan       6 months                 1          1        0     373
EE               Pakistan       6 months                 2          0       27     373
EE               Pakistan       6 months                 2          1        7     373
EE               Pakistan       6 months                 3          0      138     373
EE               Pakistan       6 months                 3          1       30     373
EE               Pakistan       6 months                 4          0      127     373
EE               Pakistan       6 months                 4          1       44     373
EE               Pakistan       24 months                1          0        4     167
EE               Pakistan       24 months                1          1        4     167
EE               Pakistan       24 months                2          0      104     167
EE               Pakistan       24 months                2          1       55     167
EE               Pakistan       24 months                3          0        0     167
EE               Pakistan       24 months                3          1        0     167
EE               Pakistan       24 months                4          0        0     167
EE               Pakistan       24 months                4          1        0     167
GMS-Nepal        Nepal          Birth                    1          0        0     696
GMS-Nepal        Nepal          Birth                    1          1        0     696
GMS-Nepal        Nepal          Birth                    2          0        0     696
GMS-Nepal        Nepal          Birth                    2          1        0     696
GMS-Nepal        Nepal          Birth                    3          0      156     696
GMS-Nepal        Nepal          Birth                    3          1        5     696
GMS-Nepal        Nepal          Birth                    4          0      509     696
GMS-Nepal        Nepal          Birth                    4          1       26     696
GMS-Nepal        Nepal          6 months                 1          0      483     564
GMS-Nepal        Nepal          6 months                 1          1       19     564
GMS-Nepal        Nepal          6 months                 2          0       60     564
GMS-Nepal        Nepal          6 months                 2          1        2     564
GMS-Nepal        Nepal          6 months                 3          0        0     564
GMS-Nepal        Nepal          6 months                 3          1        0     564
GMS-Nepal        Nepal          6 months                 4          0        0     564
GMS-Nepal        Nepal          6 months                 4          1        0     564
GMS-Nepal        Nepal          24 months                1          0        0     488
GMS-Nepal        Nepal          24 months                1          1        0     488
GMS-Nepal        Nepal          24 months                2          0        0     488
GMS-Nepal        Nepal          24 months                2          1        0     488
GMS-Nepal        Nepal          24 months                3          0       35     488
GMS-Nepal        Nepal          24 months                3          1        4     488
GMS-Nepal        Nepal          24 months                4          0      400     488
GMS-Nepal        Nepal          24 months                4          1       49     488
Guatemala BSC    Guatemala      6 months                 1          0       57     299
Guatemala BSC    Guatemala      6 months                 1          1        3     299
Guatemala BSC    Guatemala      6 months                 2          0       69     299
Guatemala BSC    Guatemala      6 months                 2          1       11     299
Guatemala BSC    Guatemala      6 months                 3          0       83     299
Guatemala BSC    Guatemala      6 months                 3          1        4     299
Guatemala BSC    Guatemala      6 months                 4          0       63     299
Guatemala BSC    Guatemala      6 months                 4          1        9     299
IRC              India          Birth                    1          0       82     388
IRC              India          Birth                    1          1        4     388
IRC              India          Birth                    2          0      120     388
IRC              India          Birth                    2          1        6     388
IRC              India          Birth                    3          0       73     388
IRC              India          Birth                    3          1        4     388
IRC              India          Birth                    4          0       97     388
IRC              India          Birth                    4          1        2     388
IRC              India          6 months                 1          0      115     407
IRC              India          6 months                 1          1        4     407
IRC              India          6 months                 2          0       69     407
IRC              India          6 months                 2          1        7     407
IRC              India          6 months                 3          0      116     407
IRC              India          6 months                 3          1       11     407
IRC              India          6 months                 4          0       78     407
IRC              India          6 months                 4          1        7     407
IRC              India          24 months                1          0       99     409
IRC              India          24 months                1          1       15     409
IRC              India          24 months                2          0      109     409
IRC              India          24 months                2          1       10     409
IRC              India          24 months                3          0       75     409
IRC              India          24 months                3          1       10     409
IRC              India          24 months                4          0       85     409
IRC              India          24 months                4          1        6     409
Keneba           Gambia         Birth                    1          0      435    1543
Keneba           Gambia         Birth                    1          1       13    1543
Keneba           Gambia         Birth                    2          0      419    1543
Keneba           Gambia         Birth                    2          1        8    1543
Keneba           Gambia         Birth                    3          0      373    1543
Keneba           Gambia         Birth                    3          1        5    1543
Keneba           Gambia         Birth                    4          0      287    1543
Keneba           Gambia         Birth                    4          1        3    1543
Keneba           Gambia         6 months                 1          0      444    2089
Keneba           Gambia         6 months                 1          1       20    2089
Keneba           Gambia         6 months                 2          0      444    2089
Keneba           Gambia         6 months                 2          1       15    2089
Keneba           Gambia         6 months                 3          0      590    2089
Keneba           Gambia         6 months                 3          1       16    2089
Keneba           Gambia         6 months                 4          0      541    2089
Keneba           Gambia         6 months                 4          1       19    2089
Keneba           Gambia         24 months                1          0      454    1725
Keneba           Gambia         24 months                1          1       47    1725
Keneba           Gambia         24 months                2          0      453    1725
Keneba           Gambia         24 months                2          1       41    1725
Keneba           Gambia         24 months                3          0      362    1725
Keneba           Gambia         24 months                3          1       26    1725
Keneba           Gambia         24 months                4          0      316    1725
Keneba           Gambia         24 months                4          1       26    1725
LCNI-5           Malawi         6 months                 1          0      189     839
LCNI-5           Malawi         6 months                 1          1       15     839
LCNI-5           Malawi         6 months                 2          0      286     839
LCNI-5           Malawi         6 months                 2          1       33     839
LCNI-5           Malawi         6 months                 3          0      103     839
LCNI-5           Malawi         6 months                 3          1       10     839
LCNI-5           Malawi         6 months                 4          0      190     839
LCNI-5           Malawi         6 months                 4          1       13     839
LCNI-5           Malawi         24 months                1          0      134     579
LCNI-5           Malawi         24 months                1          1       14     579
LCNI-5           Malawi         24 months                2          0       73     579
LCNI-5           Malawi         24 months                2          1        8     579
LCNI-5           Malawi         24 months                3          0      190     579
LCNI-5           Malawi         24 months                3          1       30     579
LCNI-5           Malawi         24 months                4          0      112     579
LCNI-5           Malawi         24 months                4          1       18     579
MAL-ED           Bangladesh     Birth                    1          0       66     231
MAL-ED           Bangladesh     Birth                    1          1        2     231
MAL-ED           Bangladesh     Birth                    2          0       50     231
MAL-ED           Bangladesh     Birth                    2          1        1     231
MAL-ED           Bangladesh     Birth                    3          0       63     231
MAL-ED           Bangladesh     Birth                    3          1        1     231
MAL-ED           Bangladesh     Birth                    4          0       43     231
MAL-ED           Bangladesh     Birth                    4          1        5     231
MAL-ED           Bangladesh     6 months                 1          0       53     241
MAL-ED           Bangladesh     6 months                 1          1        2     241
MAL-ED           Bangladesh     6 months                 2          0       70     241
MAL-ED           Bangladesh     6 months                 2          1        1     241
MAL-ED           Bangladesh     6 months                 3          0       57     241
MAL-ED           Bangladesh     6 months                 3          1        3     241
MAL-ED           Bangladesh     6 months                 4          0       53     241
MAL-ED           Bangladesh     6 months                 4          1        2     241
MAL-ED           Bangladesh     24 months                1          0       66     212
MAL-ED           Bangladesh     24 months                1          1        7     212
MAL-ED           Bangladesh     24 months                2          0       45     212
MAL-ED           Bangladesh     24 months                2          1        6     212
MAL-ED           Bangladesh     24 months                3          0       42     212
MAL-ED           Bangladesh     24 months                3          1        6     212
MAL-ED           Bangladesh     24 months                4          0       31     212
MAL-ED           Bangladesh     24 months                4          1        9     212
MAL-ED           Brazil         Birth                    1          0       17      65
MAL-ED           Brazil         Birth                    1          1        2      65
MAL-ED           Brazil         Birth                    2          0       11      65
MAL-ED           Brazil         Birth                    2          1        1      65
MAL-ED           Brazil         Birth                    3          0       12      65
MAL-ED           Brazil         Birth                    3          1        0      65
MAL-ED           Brazil         Birth                    4          0       22      65
MAL-ED           Brazil         Birth                    4          1        0      65
MAL-ED           Brazil         6 months                 1          0       64     209
MAL-ED           Brazil         6 months                 1          1        0     209
MAL-ED           Brazil         6 months                 2          0       51     209
MAL-ED           Brazil         6 months                 2          1        0     209
MAL-ED           Brazil         6 months                 3          0       44     209
MAL-ED           Brazil         6 months                 3          1        0     209
MAL-ED           Brazil         6 months                 4          0       50     209
MAL-ED           Brazil         6 months                 4          1        0     209
MAL-ED           Brazil         24 months                1          0       64     169
MAL-ED           Brazil         24 months                1          1        1     169
MAL-ED           Brazil         24 months                2          0       30     169
MAL-ED           Brazil         24 months                2          1        0     169
MAL-ED           Brazil         24 months                3          0       43     169
MAL-ED           Brazil         24 months                3          1        0     169
MAL-ED           Brazil         24 months                4          0       31     169
MAL-ED           Brazil         24 months                4          1        0     169
MAL-ED           India          Birth                    1          0       10      47
MAL-ED           India          Birth                    1          1        0      47
MAL-ED           India          Birth                    2          0       10      47
MAL-ED           India          Birth                    2          1        1      47
MAL-ED           India          Birth                    3          0       11      47
MAL-ED           India          Birth                    3          1        1      47
MAL-ED           India          Birth                    4          0       14      47
MAL-ED           India          Birth                    4          1        0      47
MAL-ED           India          6 months                 1          0       60     236
MAL-ED           India          6 months                 1          1        6     236
MAL-ED           India          6 months                 2          0       42     236
MAL-ED           India          6 months                 2          1        0     236
MAL-ED           India          6 months                 3          0       71     236
MAL-ED           India          6 months                 3          1        2     236
MAL-ED           India          6 months                 4          0       54     236
MAL-ED           India          6 months                 4          1        1     236
MAL-ED           India          24 months                1          0       57     227
MAL-ED           India          24 months                1          1        8     227
MAL-ED           India          24 months                2          0       61     227
MAL-ED           India          24 months                2          1       10     227
MAL-ED           India          24 months                3          0       48     227
MAL-ED           India          24 months                3          1        6     227
MAL-ED           India          24 months                4          0       31     227
MAL-ED           India          24 months                4          1        6     227
MAL-ED           Nepal          Birth                    1          0        5      27
MAL-ED           Nepal          Birth                    1          1        0      27
MAL-ED           Nepal          Birth                    2          0        9      27
MAL-ED           Nepal          Birth                    2          1        1      27
MAL-ED           Nepal          Birth                    3          0        7      27
MAL-ED           Nepal          Birth                    3          1        0      27
MAL-ED           Nepal          Birth                    4          0        5      27
MAL-ED           Nepal          Birth                    4          1        0      27
MAL-ED           Nepal          6 months                 1          0       60     236
MAL-ED           Nepal          6 months                 1          1        0     236
MAL-ED           Nepal          6 months                 2          0       59     236
MAL-ED           Nepal          6 months                 2          1        0     236
MAL-ED           Nepal          6 months                 3          0       59     236
MAL-ED           Nepal          6 months                 3          1        0     236
MAL-ED           Nepal          6 months                 4          0       57     236
MAL-ED           Nepal          6 months                 4          1        1     236
MAL-ED           Nepal          24 months                1          0       61     228
MAL-ED           Nepal          24 months                1          1        5     228
MAL-ED           Nepal          24 months                2          0       61     228
MAL-ED           Nepal          24 months                2          1        0     228
MAL-ED           Nepal          24 months                3          0       62     228
MAL-ED           Nepal          24 months                3          1        1     228
MAL-ED           Nepal          24 months                4          0       37     228
MAL-ED           Nepal          24 months                4          1        1     228
MAL-ED           Peru           Birth                    1          0       49     233
MAL-ED           Peru           Birth                    1          1        0     233
MAL-ED           Peru           Birth                    2          0       53     233
MAL-ED           Peru           Birth                    2          1        1     233
MAL-ED           Peru           Birth                    3          0       68     233
MAL-ED           Peru           Birth                    3          1        1     233
MAL-ED           Peru           Birth                    4          0       59     233
MAL-ED           Peru           Birth                    4          1        2     233
MAL-ED           Peru           6 months                 1          0       92     273
MAL-ED           Peru           6 months                 1          1        4     273
MAL-ED           Peru           6 months                 2          0       73     273
MAL-ED           Peru           6 months                 2          1        4     273
MAL-ED           Peru           6 months                 3          0       59     273
MAL-ED           Peru           6 months                 3          1        1     273
MAL-ED           Peru           6 months                 4          0       39     273
MAL-ED           Peru           6 months                 4          1        1     273
MAL-ED           Peru           24 months                1          0       53     201
MAL-ED           Peru           24 months                1          1        2     201
MAL-ED           Peru           24 months                2          0       42     201
MAL-ED           Peru           24 months                2          1        4     201
MAL-ED           Peru           24 months                3          0       50     201
MAL-ED           Peru           24 months                3          1        4     201
MAL-ED           Peru           24 months                4          0       41     201
MAL-ED           Peru           24 months                4          1        5     201
MAL-ED           South Africa   Birth                    1          0       25     123
MAL-ED           South Africa   Birth                    1          1        0     123
MAL-ED           South Africa   Birth                    2          0       23     123
MAL-ED           South Africa   Birth                    2          1        0     123
MAL-ED           South Africa   Birth                    3          0       35     123
MAL-ED           South Africa   Birth                    3          1        0     123
MAL-ED           South Africa   Birth                    4          0       38     123
MAL-ED           South Africa   Birth                    4          1        2     123
MAL-ED           South Africa   6 months                 1          0      103     254
MAL-ED           South Africa   6 months                 1          1        3     254
MAL-ED           South Africa   6 months                 2          0       65     254
MAL-ED           South Africa   6 months                 2          1        2     254
MAL-ED           South Africa   6 months                 3          0       44     254
MAL-ED           South Africa   6 months                 3          1        1     254
MAL-ED           South Africa   6 months                 4          0       36     254
MAL-ED           South Africa   6 months                 4          1        0     254
MAL-ED           South Africa   24 months                1          0       52     238
MAL-ED           South Africa   24 months                1          1        3     238
MAL-ED           South Africa   24 months                2          0       36     238
MAL-ED           South Africa   24 months                2          1        3     238
MAL-ED           South Africa   24 months                3          0       76     238
MAL-ED           South Africa   24 months                3          1       10     238
MAL-ED           South Africa   24 months                4          0       47     238
MAL-ED           South Africa   24 months                4          1       11     238
MAL-ED           Tanzania       Birth                    1          0       14     125
MAL-ED           Tanzania       Birth                    1          1        4     125
MAL-ED           Tanzania       Birth                    2          0       33     125
MAL-ED           Tanzania       Birth                    2          1        2     125
MAL-ED           Tanzania       Birth                    3          0       32     125
MAL-ED           Tanzania       Birth                    3          1        2     125
MAL-ED           Tanzania       Birth                    4          0       36     125
MAL-ED           Tanzania       Birth                    4          1        2     125
MAL-ED           Tanzania       6 months                 1          0       67     247
MAL-ED           Tanzania       6 months                 1          1        4     247
MAL-ED           Tanzania       6 months                 2          0       75     247
MAL-ED           Tanzania       6 months                 2          1        5     247
MAL-ED           Tanzania       6 months                 3          0       50     247
MAL-ED           Tanzania       6 months                 3          1        3     247
MAL-ED           Tanzania       6 months                 4          0       41     247
MAL-ED           Tanzania       6 months                 4          1        2     247
MAL-ED           Tanzania       24 months                1          0       37     214
MAL-ED           Tanzania       24 months                1          1       19     214
MAL-ED           Tanzania       24 months                2          0       45     214
MAL-ED           Tanzania       24 months                2          1       14     214
MAL-ED           Tanzania       24 months                3          0       40     214
MAL-ED           Tanzania       24 months                3          1       19     214
MAL-ED           Tanzania       24 months                4          0       22     214
MAL-ED           Tanzania       24 months                4          1       18     214
PROBIT           Belarus        Birth                    1          0     3779   13893
PROBIT           Belarus        Birth                    1          1        1   13893
PROBIT           Belarus        Birth                    2          0     4150   13893
PROBIT           Belarus        Birth                    2          1        2   13893
PROBIT           Belarus        Birth                    3          0     2714   13893
PROBIT           Belarus        Birth                    3          1        2   13893
PROBIT           Belarus        Birth                    4          0     3245   13893
PROBIT           Belarus        Birth                    4          1        0   13893
PROBIT           Belarus        6 months                 1          0     3574   15760
PROBIT           Belarus        6 months                 1          1       39   15760
PROBIT           Belarus        6 months                 2          0     3076   15760
PROBIT           Belarus        6 months                 2          1       41   15760
PROBIT           Belarus        6 months                 3          0     4472   15760
PROBIT           Belarus        6 months                 3          1       41   15760
PROBIT           Belarus        6 months                 4          0     4461   15760
PROBIT           Belarus        6 months                 4          1       56   15760
PROBIT           Belarus        24 months                1          0     1065    4035
PROBIT           Belarus        24 months                1          1       30    4035
PROBIT           Belarus        24 months                2          0     1129    4035
PROBIT           Belarus        24 months                2          1       19    4035
PROBIT           Belarus        24 months                3          0      838    4035
PROBIT           Belarus        24 months                3          1        7    4035
PROBIT           Belarus        24 months                4          0      938    4035
PROBIT           Belarus        24 months                4          1        9    4035
PROVIDE          Bangladesh     Birth                    1          0       78     539
PROVIDE          Bangladesh     Birth                    1          1        0     539
PROVIDE          Bangladesh     Birth                    2          0      163     539
PROVIDE          Bangladesh     Birth                    2          1        0     539
PROVIDE          Bangladesh     Birth                    3          0       97     539
PROVIDE          Bangladesh     Birth                    3          1        0     539
PROVIDE          Bangladesh     Birth                    4          0      197     539
PROVIDE          Bangladesh     Birth                    4          1        4     539
PROVIDE          Bangladesh     6 months                 1          0      203     604
PROVIDE          Bangladesh     6 months                 1          1        8     604
PROVIDE          Bangladesh     6 months                 2          0      120     604
PROVIDE          Bangladesh     6 months                 2          1        2     604
PROVIDE          Bangladesh     6 months                 3          0      171     604
PROVIDE          Bangladesh     6 months                 3          1        4     604
PROVIDE          Bangladesh     6 months                 4          0       96     604
PROVIDE          Bangladesh     6 months                 4          1        0     604
PROVIDE          Bangladesh     24 months                1          0       89     578
PROVIDE          Bangladesh     24 months                1          1       10     578
PROVIDE          Bangladesh     24 months                2          0      172     578
PROVIDE          Bangladesh     24 months                2          1       14     578
PROVIDE          Bangladesh     24 months                3          0       94     578
PROVIDE          Bangladesh     24 months                3          1       10     578
PROVIDE          Bangladesh     24 months                4          0      171     578
PROVIDE          Bangladesh     24 months                4          1       18     578
ResPak           Pakistan       Birth                    1          0        3      42
ResPak           Pakistan       Birth                    1          1        0      42
ResPak           Pakistan       Birth                    2          0        2      42
ResPak           Pakistan       Birth                    2          1        0      42
ResPak           Pakistan       Birth                    3          0       16      42
ResPak           Pakistan       Birth                    3          1        0      42
ResPak           Pakistan       Birth                    4          0       19      42
ResPak           Pakistan       Birth                    4          1        2      42
ResPak           Pakistan       6 months                 1          0       92     239
ResPak           Pakistan       6 months                 1          1       15     239
ResPak           Pakistan       6 months                 2          0       72     239
ResPak           Pakistan       6 months                 2          1       26     239
ResPak           Pakistan       6 months                 3          0        7     239
ResPak           Pakistan       6 months                 3          1        1     239
ResPak           Pakistan       6 months                 4          0       21     239
ResPak           Pakistan       6 months                 4          1        5     239
SAS-CompFeed     India          Birth                    1          0      253    1252
SAS-CompFeed     India          Birth                    1          1       20    1252
SAS-CompFeed     India          Birth                    2          0      384    1252
SAS-CompFeed     India          Birth                    2          1       24    1252
SAS-CompFeed     India          Birth                    3          0      199    1252
SAS-CompFeed     India          Birth                    3          1       24    1252
SAS-CompFeed     India          Birth                    4          0      325    1252
SAS-CompFeed     India          Birth                    4          1       23    1252
SAS-CompFeed     India          6 months                 1          0      331    1336
SAS-CompFeed     India          6 months                 1          1       44    1336
SAS-CompFeed     India          6 months                 2          0      213    1336
SAS-CompFeed     India          6 months                 2          1       17    1336
SAS-CompFeed     India          6 months                 3          0      401    1336
SAS-CompFeed     India          6 months                 3          1       33    1336
SAS-CompFeed     India          6 months                 4          0      263    1336
SAS-CompFeed     India          6 months                 4          1       34    1336
SAS-FoodSuppl    India          6 months                 1          0      140     380
SAS-FoodSuppl    India          6 months                 1          1       20     380
SAS-FoodSuppl    India          6 months                 2          0       31     380
SAS-FoodSuppl    India          6 months                 2          1        6     380
SAS-FoodSuppl    India          6 months                 3          0       90     380
SAS-FoodSuppl    India          6 months                 3          1       16     380
SAS-FoodSuppl    India          6 months                 4          0       65     380
SAS-FoodSuppl    India          6 months                 4          1       12     380
TanzaniaChild2   Tanzania       6 months                 1          0      511    2029
TanzaniaChild2   Tanzania       6 months                 1          1        5    2029
TanzaniaChild2   Tanzania       6 months                 2          0      558    2029
TanzaniaChild2   Tanzania       6 months                 2          1        6    2029
TanzaniaChild2   Tanzania       6 months                 3          0      464    2029
TanzaniaChild2   Tanzania       6 months                 3          1        3    2029
TanzaniaChild2   Tanzania       6 months                 4          0      477    2029
TanzaniaChild2   Tanzania       6 months                 4          1        5    2029
TanzaniaChild2   Tanzania       24 months                1          0        0       6
TanzaniaChild2   Tanzania       24 months                1          1        0       6
TanzaniaChild2   Tanzania       24 months                2          0        3       6
TanzaniaChild2   Tanzania       24 months                2          1        1       6
TanzaniaChild2   Tanzania       24 months                3          0        0       6
TanzaniaChild2   Tanzania       24 months                3          1        0       6
TanzaniaChild2   Tanzania       24 months                4          0        2       6
TanzaniaChild2   Tanzania       24 months                4          1        0       6
ZVITAMBO         Zimbabwe       Birth                    1          0     3643   13875
ZVITAMBO         Zimbabwe       Birth                    1          1       90   13875
ZVITAMBO         Zimbabwe       Birth                    2          0     3038   13875
ZVITAMBO         Zimbabwe       Birth                    2          1      115   13875
ZVITAMBO         Zimbabwe       Birth                    3          0     3360   13875
ZVITAMBO         Zimbabwe       Birth                    3          1       95   13875
ZVITAMBO         Zimbabwe       Birth                    4          0     3392   13875
ZVITAMBO         Zimbabwe       Birth                    4          1      142   13875
ZVITAMBO         Zimbabwe       6 months                 1          0     2070    8669
ZVITAMBO         Zimbabwe       6 months                 1          1       92    8669
ZVITAMBO         Zimbabwe       6 months                 2          0     2163    8669
ZVITAMBO         Zimbabwe       6 months                 2          1       89    8669
ZVITAMBO         Zimbabwe       6 months                 3          0     1929    8669
ZVITAMBO         Zimbabwe       6 months                 3          1       84    8669
ZVITAMBO         Zimbabwe       6 months                 4          0     2156    8669
ZVITAMBO         Zimbabwe       6 months                 4          1       86    8669
ZVITAMBO         Zimbabwe       24 months                1          0      238    1640
ZVITAMBO         Zimbabwe       24 months                1          1       35    1640
ZVITAMBO         Zimbabwe       24 months                2          0      482    1640
ZVITAMBO         Zimbabwe       24 months                2          1       54    1640
ZVITAMBO         Zimbabwe       24 months                3          0      212    1640
ZVITAMBO         Zimbabwe       24 months                3          1       24    1640
ZVITAMBO         Zimbabwe       24 months                4          0      530    1640
ZVITAMBO         Zimbabwe       24 months                4          1       65    1640


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/c8fd4342-5ebc-4469-bab4-8cad6ae81432/9854cdc7-f702-422b-9791-f381f9845591/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8fd4342-5ebc-4469-bab4-8cad6ae81432/9854cdc7-f702-422b-9791-f381f9845591/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8fd4342-5ebc-4469-bab4-8cad6ae81432/9854cdc7-f702-422b-9791-f381f9845591/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8fd4342-5ebc-4469-bab4-8cad6ae81432/9854cdc7-f702-422b-9791-f381f9845591/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
PROBIT           Belarus      6 months    1                    NA                0.0107944    0.0030196   0.0185691
PROBIT           Belarus      6 months    2                    NA                0.0131537    0.0053691   0.0209382
PROBIT           Belarus      6 months    3                    NA                0.0090849    0.0027251   0.0154446
PROBIT           Belarus      6 months    4                    NA                0.0123976    0.0058712   0.0189240
PROBIT           Belarus      24 months   1                    NA                0.0273973    0.0127068   0.0420878
PROBIT           Belarus      24 months   2                    NA                0.0165505    0.0035330   0.0295680
PROBIT           Belarus      24 months   3                    NA                0.0082840   -0.0246105   0.0411786
PROBIT           Belarus      24 months   4                    NA                0.0095037   -0.0064745   0.0254819
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
Keneba           Gambia       6 months    NA                   NA                0.0335089   0.0257898   0.0412279
Keneba           Gambia       24 months   NA                   NA                0.0811594   0.0682689   0.0940499
LCNI-5           Malawi       6 months    NA                   NA                0.0846246   0.0657805   0.1034686
LCNI-5           Malawi       24 months   NA                   NA                0.1208981   0.0943206   0.1474756
MAL-ED           Bangladesh   24 months   NA                   NA                0.1320755   0.0863920   0.1777589
MAL-ED           India        24 months   NA                   NA                0.1321586   0.0880054   0.1763117
MAL-ED           Tanzania     24 months   NA                   NA                0.3271028   0.2640978   0.3901078
PROBIT           Belarus      6 months    NA                   NA                0.0112310   0.0054733   0.0169886
PROBIT           Belarus      24 months   NA                   NA                0.0161090   0.0017796   0.0304385
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
CMC-V-BCS-2002   India        24 months   1                    1                 1.0000000   1.0000000    1.000000
CMC-V-BCS-2002   India        24 months   2                    1                 0.9665072   0.6727099    1.388617
CMC-V-BCS-2002   India        24 months   3                    1                 0.8477768   0.5877995    1.222739
CMC-V-BCS-2002   India        24 months   4                    1                 0.6765550   0.4030306    1.135712
CMIN             Bangladesh   24 months   1                    1                 1.0000000   1.0000000    1.000000
CMIN             Bangladesh   24 months   2                    1                 1.0321361   0.6285158    1.694953
CMIN             Bangladesh   24 months   3                    1                 0.5847076   0.3017745    1.132909
CMIN             Bangladesh   24 months   4                    1                 1.2831962   0.7492150    2.197757
IRC              India        24 months   1                    1                 1.0000000   1.0000000    1.000000
IRC              India        24 months   2                    1                 0.6386555   0.2990570    1.363890
IRC              India        24 months   3                    1                 0.8941176   0.4222870    1.893135
IRC              India        24 months   4                    1                 0.5010989   0.2023337    1.241019
Keneba           Gambia       6 months    1                    1                 1.0000000   1.0000000    1.000000
Keneba           Gambia       6 months    2                    1                 0.7581699   0.3930147    1.462596
Keneba           Gambia       6 months    3                    1                 0.6125413   0.3209494    1.169053
Keneba           Gambia       6 months    4                    1                 0.7871429   0.4251909    1.457213
Keneba           Gambia       24 months   1                    1                 1.0000000   1.0000000    1.000000
Keneba           Gambia       24 months   2                    1                 0.8847015   0.5929766    1.319945
Keneba           Gambia       24 months   3                    1                 0.7143014   0.4507131    1.132043
Keneba           Gambia       24 months   4                    1                 0.8103770   0.5120769    1.282446
LCNI-5           Malawi       6 months    1                    1                 1.0000000   1.0000000    1.000000
LCNI-5           Malawi       6 months    2                    1                 1.4068966   0.7839143    2.524967
LCNI-5           Malawi       6 months    3                    1                 1.2035398   0.5589912    2.591290
LCNI-5           Malawi       6 months    4                    1                 0.8709360   0.4250958    1.784373
LCNI-5           Malawi       24 months   1                    1                 1.0000000   1.0000000    1.000000
LCNI-5           Malawi       24 months   2                    1                 1.0440917   0.4570743    2.385012
LCNI-5           Malawi       24 months   3                    1                 1.4415584   0.7913797    2.625909
LCNI-5           Malawi       24 months   4                    1                 1.4637363   0.7580010    2.826545
MAL-ED           Bangladesh   24 months   1                    1                 1.0000000   1.0000000    1.000000
MAL-ED           Bangladesh   24 months   2                    1                 1.2268908   0.4369043    3.445288
MAL-ED           Bangladesh   24 months   3                    1                 1.3035714   0.4652765    3.652234
MAL-ED           Bangladesh   24 months   4                    1                 2.3464286   0.9430599    5.838152
MAL-ED           India        24 months   1                    1                 1.0000000   1.0000000    1.000000
MAL-ED           India        24 months   2                    1                 1.1443662   0.4801108    2.727650
MAL-ED           India        24 months   3                    1                 0.9027778   0.3330176    2.447341
MAL-ED           India        24 months   4                    1                 1.3175676   0.4941600    3.513001
MAL-ED           Tanzania     24 months   1                    1                 1.0000000   1.0000000    1.000000
MAL-ED           Tanzania     24 months   2                    1                 0.6993756   0.3888790    1.257785
MAL-ED           Tanzania     24 months   3                    1                 0.9491525   0.5634635    1.598845
MAL-ED           Tanzania     24 months   4                    1                 1.3263158   0.8027346    2.191401
PROBIT           Belarus      6 months    1                    1                 1.0000000   1.0000000    1.000000
PROBIT           Belarus      6 months    2                    1                 1.2185698   0.6247829    2.376685
PROBIT           Belarus      6 months    3                    1                 0.8416313   0.4511241    1.570174
PROBIT           Belarus      6 months    4                    1                 1.1485272   0.5855812    2.252659
PROBIT           Belarus      24 months   1                    1                 1.0000000   1.0000000    1.000000
PROBIT           Belarus      24 months   2                    1                 0.6040941   0.2726285    1.338560
PROBIT           Belarus      24 months   3                    1                 0.3023669   0.0066552   13.737526
PROBIT           Belarus      24 months   4                    1                 0.3468849   0.0762789    1.577489
PROVIDE          Bangladesh   24 months   1                    1                 1.0000000   1.0000000    1.000000
PROVIDE          Bangladesh   24 months   2                    1                 0.7451613   0.3434109    1.616913
PROVIDE          Bangladesh   24 months   3                    1                 0.9519231   0.4138759    2.189442
PROVIDE          Bangladesh   24 months   4                    1                 0.9428571   0.4523696    1.965162
SAS-CompFeed     India        Birth       1                    1                 1.0000000   1.0000000    1.000000
SAS-CompFeed     India        Birth       2                    1                 0.8029412   0.3851949    1.673736
SAS-CompFeed     India        Birth       3                    1                 1.4690583   0.7255009    2.974679
SAS-CompFeed     India        Birth       4                    1                 0.9021552   0.4333698    1.878036
SAS-CompFeed     India        6 months    1                    1                 1.0000000   1.0000000    1.000000
SAS-CompFeed     India        6 months    2                    1                 0.6299407   0.4173414    0.950841
SAS-CompFeed     India        6 months    3                    1                 0.6480415   0.4087774    1.027351
SAS-CompFeed     India        6 months    4                    1                 0.9756657   0.6470893    1.471086
SAS-FoodSuppl    India        6 months    1                    1                 1.0000000   1.0000000    1.000000
SAS-FoodSuppl    India        6 months    2                    1                 1.2972973   0.5598095    3.006345
SAS-FoodSuppl    India        6 months    3                    1                 1.2075472   0.6556940    2.223858
SAS-FoodSuppl    India        6 months    4                    1                 1.2467532   0.6425121    2.419244
ZVITAMBO         Zimbabwe     Birth       1                    1                 1.0000000   1.0000000    1.000000
ZVITAMBO         Zimbabwe     Birth       2                    1                 1.5128273   1.1528490    1.985209
ZVITAMBO         Zimbabwe     Birth       3                    1                 1.1404888   0.8580265    1.515938
ZVITAMBO         Zimbabwe     Birth       4                    1                 1.6666226   1.2849922    2.161594
ZVITAMBO         Zimbabwe     6 months    1                    1                 1.0000000   1.0000000    1.000000
ZVITAMBO         Zimbabwe     6 months    2                    1                 0.9287300   0.6981498    1.235465
ZVITAMBO         Zimbabwe     6 months    3                    1                 0.9806259   0.7341325    1.309882
ZVITAMBO         Zimbabwe     6 months    4                    1                 0.9014273   0.6758574    1.202282
ZVITAMBO         Zimbabwe     24 months   1                    1                 1.0000000   1.0000000    1.000000
ZVITAMBO         Zimbabwe     24 months   2                    1                 0.7858209   0.5269140    1.171946
ZVITAMBO         Zimbabwe     24 months   3                    1                 0.7932203   0.4861888    1.294144
ZVITAMBO         Zimbabwe     24 months   4                    1                 0.8521008   0.5796671    1.252574


### Parameter: PAR


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   India        24 months   1                    NA                -0.0393104   -0.1192885   0.0406677
CMIN             Bangladesh   24 months   1                    NA                -0.0138801   -0.0967927   0.0690326
IRC              India        24 months   1                    NA                -0.0313344   -0.0819049   0.0192360
Keneba           Gambia       6 months    1                    NA                -0.0095946   -0.0253887   0.0061995
Keneba           Gambia       24 months   1                    NA                -0.0126530   -0.0336178   0.0083119
LCNI-5           Malawi       6 months    1                    NA                 0.0110951   -0.0207618   0.0429521
LCNI-5           Malawi       24 months   1                    NA                 0.0263035   -0.0160615   0.0686685
MAL-ED           Bangladesh   24 months   1                    NA                 0.0361851   -0.0230940   0.0954641
MAL-ED           India        24 months   1                    NA                 0.0090817   -0.0593814   0.0775447
MAL-ED           Tanzania     24 months   1                    NA                -0.0121829   -0.1186420   0.0942761
PROBIT           Belarus      6 months    1                    NA                 0.0004366   -0.0043963   0.0052696
PROBIT           Belarus      24 months   1                    NA                -0.0112882   -0.0240369   0.0014604
PROVIDE          Bangladesh   24 months   1                    NA                -0.0110447   -0.0645761   0.0424867
SAS-CompFeed     India        Birth       1                    NA                -0.0005764   -0.0317676   0.0306149
SAS-CompFeed     India        6 months    1                    NA                -0.0215250   -0.0500183   0.0069684
SAS-FoodSuppl    India        6 months    1                    NA                 0.0171053   -0.0235321   0.0577426
ZVITAMBO         Zimbabwe     Birth       1                    NA                 0.0077466    0.0033054   0.0121877
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0020641   -0.0093788   0.0052506
ZVITAMBO         Zimbabwe     24 months   1                    NA                -0.0196685   -0.0553972   0.0160602


### Parameter: PAF


studyid          country      agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------  ----------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   India        24 months   1                    NA                -0.1166733   -0.3812625   0.0972323
CMIN             Bangladesh   24 months   1                    NA                -0.0493967   -0.3900901   0.2077971
IRC              India        24 months   1                    NA                -0.3125802   -0.9191714   0.1022861
Keneba           Gambia       6 months    1                    NA                -0.2863300   -0.8495341   0.1053720
Keneba           Gambia       24 months   1                    NA                -0.1559025   -0.4441769   0.0748290
LCNI-5           Malawi       6 months    1                    NA                 0.1311102   -0.3385954   0.4359987
LCNI-5           Malawi       24 months   1                    NA                 0.2175676   -0.2204569   0.4983842
MAL-ED           Bangladesh   24 months   1                    NA                 0.2739726   -0.3326887   0.6044719
MAL-ED           India        24 months   1                    NA                 0.0687179   -0.6236519   0.4658422
MAL-ED           Tanzania     24 months   1                    NA                -0.0372449   -0.4195540   0.2421021
PROBIT           Belarus      6 months    1                    NA                 0.0388756   -0.5068513   0.3869600
PROBIT           Belarus      24 months   1                    NA                -0.7007376   -2.4317174   0.1571251
PROVIDE          Bangladesh   24 months   1                    NA                -0.1227661   -0.9063009   0.3387173
SAS-CompFeed     India        Birth       1                    NA                -0.0079298   -0.5429098   0.3415542
SAS-CompFeed     India        6 months    1                    NA                -0.2246667   -0.5379087   0.0247740
SAS-FoodSuppl    India        6 months    1                    NA                 0.1203704   -0.2160319   0.3637105
ZVITAMBO         Zimbabwe     Birth       1                    NA                 0.2431754    0.0921440   0.3690811
ZVITAMBO         Zimbabwe     6 months    1                    NA                -0.0509790   -0.2480123   0.1149472
ZVITAMBO         Zimbabwe     24 months   1                    NA                -0.1812158   -0.5599416   0.1055622

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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        brthmon    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  --------  ------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                    0        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                    1        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                    0       14     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                    1       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                    0       21     373
0-24 months   CMC-V-BCS-2002   INDIA                          4                    1       23     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                    0       14     373
0-24 months   CMC-V-BCS-2002   INDIA                          5                    1       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                    0       12     373
0-24 months   CMC-V-BCS-2002   INDIA                          6                    1       25     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                    0       21     373
0-24 months   CMC-V-BCS-2002   INDIA                          7                    1       18     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                    0        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          8                    1       16     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                    0        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          9                    1       13     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                   0        9     373
0-24 months   CMC-V-BCS-2002   INDIA                          10                   1       20     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                   0       13     373
0-24 months   CMC-V-BCS-2002   INDIA                          11                   1       30     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                   0        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          12                   1       19     373
0-24 months   CMIN             BANGLADESH                     1                    0       18     272
0-24 months   CMIN             BANGLADESH                     1                    1       10     272
0-24 months   CMIN             BANGLADESH                     2                    0       15     272
0-24 months   CMIN             BANGLADESH                     2                    1       12     272
0-24 months   CMIN             BANGLADESH                     3                    0        9     272
0-24 months   CMIN             BANGLADESH                     3                    1       11     272
0-24 months   CMIN             BANGLADESH                     4                    0       11     272
0-24 months   CMIN             BANGLADESH                     4                    1       11     272
0-24 months   CMIN             BANGLADESH                     5                    0       15     272
0-24 months   CMIN             BANGLADESH                     5                    1        5     272
0-24 months   CMIN             BANGLADESH                     6                    0        5     272
0-24 months   CMIN             BANGLADESH                     6                    1        5     272
0-24 months   CMIN             BANGLADESH                     7                    0       12     272
0-24 months   CMIN             BANGLADESH                     7                    1        5     272
0-24 months   CMIN             BANGLADESH                     8                    0       13     272
0-24 months   CMIN             BANGLADESH                     8                    1        9     272
0-24 months   CMIN             BANGLADESH                     9                    0       15     272
0-24 months   CMIN             BANGLADESH                     9                    1        7     272
0-24 months   CMIN             BANGLADESH                     10                   0       11     272
0-24 months   CMIN             BANGLADESH                     10                   1       16     272
0-24 months   CMIN             BANGLADESH                     11                   0       11     272
0-24 months   CMIN             BANGLADESH                     11                   1       18     272
0-24 months   CMIN             BANGLADESH                     12                   0       13     272
0-24 months   CMIN             BANGLADESH                     12                   1       15     272
0-24 months   CONTENT          PERU                           1                    0       10     215
0-24 months   CONTENT          PERU                           1                    1        0     215
0-24 months   CONTENT          PERU                           2                    0       17     215
0-24 months   CONTENT          PERU                           2                    1        1     215
0-24 months   CONTENT          PERU                           3                    0       28     215
0-24 months   CONTENT          PERU                           3                    1        2     215
0-24 months   CONTENT          PERU                           4                    0       19     215
0-24 months   CONTENT          PERU                           4                    1        0     215
0-24 months   CONTENT          PERU                           5                    0       13     215
0-24 months   CONTENT          PERU                           5                    1        1     215
0-24 months   CONTENT          PERU                           6                    0       13     215
0-24 months   CONTENT          PERU                           6                    1        0     215
0-24 months   CONTENT          PERU                           7                    0       28     215
0-24 months   CONTENT          PERU                           7                    1        0     215
0-24 months   CONTENT          PERU                           8                    0       23     215
0-24 months   CONTENT          PERU                           8                    1        0     215
0-24 months   CONTENT          PERU                           9                    0       26     215
0-24 months   CONTENT          PERU                           9                    1        0     215
0-24 months   CONTENT          PERU                           10                   0       14     215
0-24 months   CONTENT          PERU                           10                   1        0     215
0-24 months   CONTENT          PERU                           11                   0        9     215
0-24 months   CONTENT          PERU                           11                   1        0     215
0-24 months   CONTENT          PERU                           12                   0       10     215
0-24 months   CONTENT          PERU                           12                   1        1     215
0-24 months   EE               PAKISTAN                       1                    0       39     380
0-24 months   EE               PAKISTAN                       1                    1       56     380
0-24 months   EE               PAKISTAN                       2                    0       33     380
0-24 months   EE               PAKISTAN                       2                    1       34     380
0-24 months   EE               PAKISTAN                       3                    0       14     380
0-24 months   EE               PAKISTAN                       3                    1       29     380
0-24 months   EE               PAKISTAN                       4                    0        4     380
0-24 months   EE               PAKISTAN                       4                    1       12     380
0-24 months   EE               PAKISTAN                       5                    0        0     380
0-24 months   EE               PAKISTAN                       5                    1        0     380
0-24 months   EE               PAKISTAN                       6                    0        0     380
0-24 months   EE               PAKISTAN                       6                    1        0     380
0-24 months   EE               PAKISTAN                       7                    0        0     380
0-24 months   EE               PAKISTAN                       7                    1        0     380
0-24 months   EE               PAKISTAN                       8                    0        0     380
0-24 months   EE               PAKISTAN                       8                    1        0     380
0-24 months   EE               PAKISTAN                       9                    0        0     380
0-24 months   EE               PAKISTAN                       9                    1        0     380
0-24 months   EE               PAKISTAN                       10                   0        2     380
0-24 months   EE               PAKISTAN                       10                   1        2     380
0-24 months   EE               PAKISTAN                       11                   0       29     380
0-24 months   EE               PAKISTAN                       11                   1       42     380
0-24 months   EE               PAKISTAN                       12                   0       33     380
0-24 months   EE               PAKISTAN                       12                   1       51     380
0-24 months   GMS-Nepal        NEPAL                          1                    0        0     686
0-24 months   GMS-Nepal        NEPAL                          1                    1        0     686
0-24 months   GMS-Nepal        NEPAL                          2                    0        0     686
0-24 months   GMS-Nepal        NEPAL                          2                    1        0     686
0-24 months   GMS-Nepal        NEPAL                          3                    0        0     686
0-24 months   GMS-Nepal        NEPAL                          3                    1        0     686
0-24 months   GMS-Nepal        NEPAL                          4                    0        0     686
0-24 months   GMS-Nepal        NEPAL                          4                    1        1     686
0-24 months   GMS-Nepal        NEPAL                          5                    0        0     686
0-24 months   GMS-Nepal        NEPAL                          5                    1        0     686
0-24 months   GMS-Nepal        NEPAL                          6                    0       76     686
0-24 months   GMS-Nepal        NEPAL                          6                    1       92     686
0-24 months   GMS-Nepal        NEPAL                          7                    0      103     686
0-24 months   GMS-Nepal        NEPAL                          7                    1      160     686
0-24 months   GMS-Nepal        NEPAL                          8                    0      102     686
0-24 months   GMS-Nepal        NEPAL                          8                    1      152     686
0-24 months   GMS-Nepal        NEPAL                          9                    0        0     686
0-24 months   GMS-Nepal        NEPAL                          9                    1        0     686
0-24 months   GMS-Nepal        NEPAL                          10                   0        0     686
0-24 months   GMS-Nepal        NEPAL                          10                   1        0     686
0-24 months   GMS-Nepal        NEPAL                          11                   0        0     686
0-24 months   GMS-Nepal        NEPAL                          11                   1        0     686
0-24 months   GMS-Nepal        NEPAL                          12                   0        0     686
0-24 months   GMS-Nepal        NEPAL                          12                   1        0     686
0-24 months   Guatemala BSC    GUATEMALA                      1                    0       24     315
0-24 months   Guatemala BSC    GUATEMALA                      1                    1        5     315
0-24 months   Guatemala BSC    GUATEMALA                      2                    0       25     315
0-24 months   Guatemala BSC    GUATEMALA                      2                    1        1     315
0-24 months   Guatemala BSC    GUATEMALA                      3                    0       22     315
0-24 months   Guatemala BSC    GUATEMALA                      3                    1        5     315
0-24 months   Guatemala BSC    GUATEMALA                      4                    0       29     315
0-24 months   Guatemala BSC    GUATEMALA                      4                    1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      5                    0       33     315
0-24 months   Guatemala BSC    GUATEMALA                      5                    1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      6                    0       22     315
0-24 months   Guatemala BSC    GUATEMALA                      6                    1        3     315
0-24 months   Guatemala BSC    GUATEMALA                      7                    0       21     315
0-24 months   Guatemala BSC    GUATEMALA                      7                    1        1     315
0-24 months   Guatemala BSC    GUATEMALA                      8                    0       15     315
0-24 months   Guatemala BSC    GUATEMALA                      8                    1        0     315
0-24 months   Guatemala BSC    GUATEMALA                      9                    0       12     315
0-24 months   Guatemala BSC    GUATEMALA                      9                    1        4     315
0-24 months   Guatemala BSC    GUATEMALA                      10                   0       31     315
0-24 months   Guatemala BSC    GUATEMALA                      10                   1        1     315
0-24 months   Guatemala BSC    GUATEMALA                      11                   0       22     315
0-24 months   Guatemala BSC    GUATEMALA                      11                   1        2     315
0-24 months   Guatemala BSC    GUATEMALA                      12                   0       28     315
0-24 months   Guatemala BSC    GUATEMALA                      12                   1        5     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0      245    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1       78    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    0      140    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    1       41    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    0      147    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    1       50    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    0      154    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    1       55    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    0      172    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    1       46    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    0      151    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    1       41    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    0      149    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    1       47    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    0      241    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    1       62    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    0      304    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    1      107    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   0      288    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   1       84    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   0      256    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   1       87    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   0      262    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   1       59    3266
0-24 months   IRC              INDIA                          1                    0       16     410
0-24 months   IRC              INDIA                          1                    1       22     410
0-24 months   IRC              INDIA                          2                    0       11     410
0-24 months   IRC              INDIA                          2                    1       17     410
0-24 months   IRC              INDIA                          3                    0       10     410
0-24 months   IRC              INDIA                          3                    1       17     410
0-24 months   IRC              INDIA                          4                    0        6     410
0-24 months   IRC              INDIA                          4                    1       15     410
0-24 months   IRC              INDIA                          5                    0        5     410
0-24 months   IRC              INDIA                          5                    1       17     410
0-24 months   IRC              INDIA                          6                    0       13     410
0-24 months   IRC              INDIA                          6                    1       24     410
0-24 months   IRC              INDIA                          7                    0        9     410
0-24 months   IRC              INDIA                          7                    1       27     410
0-24 months   IRC              INDIA                          8                    0       16     410
0-24 months   IRC              INDIA                          8                    1       28     410
0-24 months   IRC              INDIA                          9                    0        9     410
0-24 months   IRC              INDIA                          9                    1       18     410
0-24 months   IRC              INDIA                          10                   0       12     410
0-24 months   IRC              INDIA                          10                   1       26     410
0-24 months   IRC              INDIA                          11                   0       17     410
0-24 months   IRC              INDIA                          11                   1       23     410
0-24 months   IRC              INDIA                          12                   0       17     410
0-24 months   IRC              INDIA                          12                   1       35     410
0-24 months   JiVitA-3         BANGLADESH                     1                    0     1915   26956
0-24 months   JiVitA-3         BANGLADESH                     1                    1      583   26956
0-24 months   JiVitA-3         BANGLADESH                     2                    0     1558   26956
0-24 months   JiVitA-3         BANGLADESH                     2                    1      489   26956
0-24 months   JiVitA-3         BANGLADESH                     3                    0     1854   26956
0-24 months   JiVitA-3         BANGLADESH                     3                    1      562   26956
0-24 months   JiVitA-3         BANGLADESH                     4                    0     1287   26956
0-24 months   JiVitA-3         BANGLADESH                     4                    1      485   26956
0-24 months   JiVitA-3         BANGLADESH                     5                    0      914   26956
0-24 months   JiVitA-3         BANGLADESH                     5                    1      406   26956
0-24 months   JiVitA-3         BANGLADESH                     6                    0      980   26956
0-24 months   JiVitA-3         BANGLADESH                     6                    1      409   26956
0-24 months   JiVitA-3         BANGLADESH                     7                    0     1128   26956
0-24 months   JiVitA-3         BANGLADESH                     7                    1      428   26956
0-24 months   JiVitA-3         BANGLADESH                     8                    0     1532   26956
0-24 months   JiVitA-3         BANGLADESH                     8                    1      597   26956
0-24 months   JiVitA-3         BANGLADESH                     9                    0     2023   26956
0-24 months   JiVitA-3         BANGLADESH                     9                    1      754   26956
0-24 months   JiVitA-3         BANGLADESH                     10                   0     2183   26956
0-24 months   JiVitA-3         BANGLADESH                     10                   1      758   26956
0-24 months   JiVitA-3         BANGLADESH                     11                   0     2243   26956
0-24 months   JiVitA-3         BANGLADESH                     11                   1      764   26956
0-24 months   JiVitA-3         BANGLADESH                     12                   0     2384   26956
0-24 months   JiVitA-3         BANGLADESH                     12                   1      720   26956
0-24 months   JiVitA-4         BANGLADESH                     1                    0        0    5443
0-24 months   JiVitA-4         BANGLADESH                     1                    1        0    5443
0-24 months   JiVitA-4         BANGLADESH                     2                    0      651    5443
0-24 months   JiVitA-4         BANGLADESH                     2                    1      266    5443
0-24 months   JiVitA-4         BANGLADESH                     3                    0      701    5443
0-24 months   JiVitA-4         BANGLADESH                     3                    1      323    5443
0-24 months   JiVitA-4         BANGLADESH                     4                    0      528    5443
0-24 months   JiVitA-4         BANGLADESH                     4                    1      245    5443
0-24 months   JiVitA-4         BANGLADESH                     5                    0      437    5443
0-24 months   JiVitA-4         BANGLADESH                     5                    1      204    5443
0-24 months   JiVitA-4         BANGLADESH                     6                    0      299    5443
0-24 months   JiVitA-4         BANGLADESH                     6                    1      161    5443
0-24 months   JiVitA-4         BANGLADESH                     7                    0      361    5443
0-24 months   JiVitA-4         BANGLADESH                     7                    1      176    5443
0-24 months   JiVitA-4         BANGLADESH                     8                    0      397    5443
0-24 months   JiVitA-4         BANGLADESH                     8                    1      158    5443
0-24 months   JiVitA-4         BANGLADESH                     9                    0      281    5443
0-24 months   JiVitA-4         BANGLADESH                     9                    1      122    5443
0-24 months   JiVitA-4         BANGLADESH                     10                   0       99    5443
0-24 months   JiVitA-4         BANGLADESH                     10                   1       34    5443
0-24 months   JiVitA-4         BANGLADESH                     11                   0        0    5443
0-24 months   JiVitA-4         BANGLADESH                     11                   1        0    5443
0-24 months   JiVitA-4         BANGLADESH                     12                   0        0    5443
0-24 months   JiVitA-4         BANGLADESH                     12                   1        0    5443
0-24 months   Keneba           GAMBIA                         1                    0      160    2920
0-24 months   Keneba           GAMBIA                         1                    1      136    2920
0-24 months   Keneba           GAMBIA                         2                    0      140    2920
0-24 months   Keneba           GAMBIA                         2                    1      118    2920
0-24 months   Keneba           GAMBIA                         3                    0      186    2920
0-24 months   Keneba           GAMBIA                         3                    1      120    2920
0-24 months   Keneba           GAMBIA                         4                    0      121    2920
0-24 months   Keneba           GAMBIA                         4                    1       76    2920
0-24 months   Keneba           GAMBIA                         5                    0      120    2920
0-24 months   Keneba           GAMBIA                         5                    1       83    2920
0-24 months   Keneba           GAMBIA                         6                    0       96    2920
0-24 months   Keneba           GAMBIA                         6                    1       68    2920
0-24 months   Keneba           GAMBIA                         7                    0       78    2920
0-24 months   Keneba           GAMBIA                         7                    1       63    2920
0-24 months   Keneba           GAMBIA                         8                    0      122    2920
0-24 months   Keneba           GAMBIA                         8                    1      114    2920
0-24 months   Keneba           GAMBIA                         9                    0      136    2920
0-24 months   Keneba           GAMBIA                         9                    1      117    2920
0-24 months   Keneba           GAMBIA                         10                   0      203    2920
0-24 months   Keneba           GAMBIA                         10                   1      149    2920
0-24 months   Keneba           GAMBIA                         11                   0      152    2920
0-24 months   Keneba           GAMBIA                         11                   1      103    2920
0-24 months   Keneba           GAMBIA                         12                   0      128    2920
0-24 months   Keneba           GAMBIA                         12                   1      131    2920
0-24 months   LCNI-5           MALAWI                         1                    0       63     840
0-24 months   LCNI-5           MALAWI                         1                    1        5     840
0-24 months   LCNI-5           MALAWI                         2                    0       43     840
0-24 months   LCNI-5           MALAWI                         2                    1        3     840
0-24 months   LCNI-5           MALAWI                         3                    0       23     840
0-24 months   LCNI-5           MALAWI                         3                    1        3     840
0-24 months   LCNI-5           MALAWI                         4                    0       39     840
0-24 months   LCNI-5           MALAWI                         4                    1        0     840
0-24 months   LCNI-5           MALAWI                         5                    0       38     840
0-24 months   LCNI-5           MALAWI                         5                    1        6     840
0-24 months   LCNI-5           MALAWI                         6                    0       32     840
0-24 months   LCNI-5           MALAWI                         6                    1        2     840
0-24 months   LCNI-5           MALAWI                         7                    0       57     840
0-24 months   LCNI-5           MALAWI                         7                    1        5     840
0-24 months   LCNI-5           MALAWI                         8                    0       84     840
0-24 months   LCNI-5           MALAWI                         8                    1        9     840
0-24 months   LCNI-5           MALAWI                         9                    0       83     840
0-24 months   LCNI-5           MALAWI                         9                    1       10     840
0-24 months   LCNI-5           MALAWI                         10                   0      126     840
0-24 months   LCNI-5           MALAWI                         10                   1        9     840
0-24 months   LCNI-5           MALAWI                         11                   0      100     840
0-24 months   LCNI-5           MALAWI                         11                   1        5     840
0-24 months   LCNI-5           MALAWI                         12                   0       85     840
0-24 months   LCNI-5           MALAWI                         12                   1       10     840
0-24 months   MAL-ED           BANGLADESH                     1                    0       14     263
0-24 months   MAL-ED           BANGLADESH                     1                    1        7     263
0-24 months   MAL-ED           BANGLADESH                     2                    0       16     263
0-24 months   MAL-ED           BANGLADESH                     2                    1        9     263
0-24 months   MAL-ED           BANGLADESH                     3                    0        9     263
0-24 months   MAL-ED           BANGLADESH                     3                    1       15     263
0-24 months   MAL-ED           BANGLADESH                     4                    0       15     263
0-24 months   MAL-ED           BANGLADESH                     4                    1        7     263
0-24 months   MAL-ED           BANGLADESH                     5                    0       15     263
0-24 months   MAL-ED           BANGLADESH                     5                    1        7     263
0-24 months   MAL-ED           BANGLADESH                     6                    0        9     263
0-24 months   MAL-ED           BANGLADESH                     6                    1        2     263
0-24 months   MAL-ED           BANGLADESH                     7                    0       12     263
0-24 months   MAL-ED           BANGLADESH                     7                    1        8     263
0-24 months   MAL-ED           BANGLADESH                     8                    0       22     263
0-24 months   MAL-ED           BANGLADESH                     8                    1        4     263
0-24 months   MAL-ED           BANGLADESH                     9                    0       10     263
0-24 months   MAL-ED           BANGLADESH                     9                    1       13     263
0-24 months   MAL-ED           BANGLADESH                     10                   0       18     263
0-24 months   MAL-ED           BANGLADESH                     10                   1        6     263
0-24 months   MAL-ED           BANGLADESH                     11                   0       14     263
0-24 months   MAL-ED           BANGLADESH                     11                   1        3     263
0-24 months   MAL-ED           BANGLADESH                     12                   0       22     263
0-24 months   MAL-ED           BANGLADESH                     12                   1        6     263
0-24 months   MAL-ED           BRAZIL                         1                    0       13     233
0-24 months   MAL-ED           BRAZIL                         1                    1        2     233
0-24 months   MAL-ED           BRAZIL                         2                    0       22     233
0-24 months   MAL-ED           BRAZIL                         2                    1        3     233
0-24 months   MAL-ED           BRAZIL                         3                    0       19     233
0-24 months   MAL-ED           BRAZIL                         3                    1        1     233
0-24 months   MAL-ED           BRAZIL                         4                    0       11     233
0-24 months   MAL-ED           BRAZIL                         4                    1        1     233
0-24 months   MAL-ED           BRAZIL                         5                    0       23     233
0-24 months   MAL-ED           BRAZIL                         5                    1        0     233
0-24 months   MAL-ED           BRAZIL                         6                    0        8     233
0-24 months   MAL-ED           BRAZIL                         6                    1        1     233
0-24 months   MAL-ED           BRAZIL                         7                    0       17     233
0-24 months   MAL-ED           BRAZIL                         7                    1        1     233
0-24 months   MAL-ED           BRAZIL                         8                    0       19     233
0-24 months   MAL-ED           BRAZIL                         8                    1        2     233
0-24 months   MAL-ED           BRAZIL                         9                    0       30     233
0-24 months   MAL-ED           BRAZIL                         9                    1        2     233
0-24 months   MAL-ED           BRAZIL                         10                   0       17     233
0-24 months   MAL-ED           BRAZIL                         10                   1        4     233
0-24 months   MAL-ED           BRAZIL                         11                   0       20     233
0-24 months   MAL-ED           BRAZIL                         11                   1        2     233
0-24 months   MAL-ED           BRAZIL                         12                   0       14     233
0-24 months   MAL-ED           BRAZIL                         12                   1        1     233
0-24 months   MAL-ED           INDIA                          1                    0        8     251
0-24 months   MAL-ED           INDIA                          1                    1       12     251
0-24 months   MAL-ED           INDIA                          2                    0       15     251
0-24 months   MAL-ED           INDIA                          2                    1        6     251
0-24 months   MAL-ED           INDIA                          3                    0       10     251
0-24 months   MAL-ED           INDIA                          3                    1       13     251
0-24 months   MAL-ED           INDIA                          4                    0       10     251
0-24 months   MAL-ED           INDIA                          4                    1        7     251
0-24 months   MAL-ED           INDIA                          5                    0        4     251
0-24 months   MAL-ED           INDIA                          5                    1        4     251
0-24 months   MAL-ED           INDIA                          6                    0        9     251
0-24 months   MAL-ED           INDIA                          6                    1       11     251
0-24 months   MAL-ED           INDIA                          7                    0        8     251
0-24 months   MAL-ED           INDIA                          7                    1       17     251
0-24 months   MAL-ED           INDIA                          8                    0       15     251
0-24 months   MAL-ED           INDIA                          8                    1        9     251
0-24 months   MAL-ED           INDIA                          9                    0       12     251
0-24 months   MAL-ED           INDIA                          9                    1       11     251
0-24 months   MAL-ED           INDIA                          10                   0       16     251
0-24 months   MAL-ED           INDIA                          10                   1       10     251
0-24 months   MAL-ED           INDIA                          11                   0       10     251
0-24 months   MAL-ED           INDIA                          11                   1       15     251
0-24 months   MAL-ED           INDIA                          12                   0       14     251
0-24 months   MAL-ED           INDIA                          12                   1        5     251
0-24 months   MAL-ED           NEPAL                          1                    0       14     240
0-24 months   MAL-ED           NEPAL                          1                    1        6     240
0-24 months   MAL-ED           NEPAL                          2                    0       13     240
0-24 months   MAL-ED           NEPAL                          2                    1        6     240
0-24 months   MAL-ED           NEPAL                          3                    0       12     240
0-24 months   MAL-ED           NEPAL                          3                    1        5     240
0-24 months   MAL-ED           NEPAL                          4                    0       12     240
0-24 months   MAL-ED           NEPAL                          4                    1       10     240
0-24 months   MAL-ED           NEPAL                          5                    0        9     240
0-24 months   MAL-ED           NEPAL                          5                    1       13     240
0-24 months   MAL-ED           NEPAL                          6                    0       11     240
0-24 months   MAL-ED           NEPAL                          6                    1        7     240
0-24 months   MAL-ED           NEPAL                          7                    0       15     240
0-24 months   MAL-ED           NEPAL                          7                    1        5     240
0-24 months   MAL-ED           NEPAL                          8                    0       16     240
0-24 months   MAL-ED           NEPAL                          8                    1        8     240
0-24 months   MAL-ED           NEPAL                          9                    0       12     240
0-24 months   MAL-ED           NEPAL                          9                    1        4     240
0-24 months   MAL-ED           NEPAL                          10                   0       19     240
0-24 months   MAL-ED           NEPAL                          10                   1        2     240
0-24 months   MAL-ED           NEPAL                          11                   0       18     240
0-24 months   MAL-ED           NEPAL                          11                   1        6     240
0-24 months   MAL-ED           NEPAL                          12                   0       15     240
0-24 months   MAL-ED           NEPAL                          12                   1        2     240
0-24 months   MAL-ED           PERU                           1                    0       35     302
0-24 months   MAL-ED           PERU                           1                    1        6     302
0-24 months   MAL-ED           PERU                           2                    0       22     302
0-24 months   MAL-ED           PERU                           2                    1        1     302
0-24 months   MAL-ED           PERU                           3                    0       19     302
0-24 months   MAL-ED           PERU                           3                    1        4     302
0-24 months   MAL-ED           PERU                           4                    0       21     302
0-24 months   MAL-ED           PERU                           4                    1        0     302
0-24 months   MAL-ED           PERU                           5                    0       25     302
0-24 months   MAL-ED           PERU                           5                    1        3     302
0-24 months   MAL-ED           PERU                           6                    0       16     302
0-24 months   MAL-ED           PERU                           6                    1        1     302
0-24 months   MAL-ED           PERU                           7                    0       23     302
0-24 months   MAL-ED           PERU                           7                    1        1     302
0-24 months   MAL-ED           PERU                           8                    0       17     302
0-24 months   MAL-ED           PERU                           8                    1        2     302
0-24 months   MAL-ED           PERU                           9                    0       21     302
0-24 months   MAL-ED           PERU                           9                    1        2     302
0-24 months   MAL-ED           PERU                           10                   0       26     302
0-24 months   MAL-ED           PERU                           10                   1        1     302
0-24 months   MAL-ED           PERU                           11                   0       27     302
0-24 months   MAL-ED           PERU                           11                   1        6     302
0-24 months   MAL-ED           PERU                           12                   0       23     302
0-24 months   MAL-ED           PERU                           12                   1        0     302
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0       29     312
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1       13     312
0-24 months   MAL-ED           SOUTH AFRICA                   2                    0       25     312
0-24 months   MAL-ED           SOUTH AFRICA                   2                    1        5     312
0-24 months   MAL-ED           SOUTH AFRICA                   3                    0       15     312
0-24 months   MAL-ED           SOUTH AFRICA                   3                    1        2     312
0-24 months   MAL-ED           SOUTH AFRICA                   4                    0       11     312
0-24 months   MAL-ED           SOUTH AFRICA                   4                    1        4     312
0-24 months   MAL-ED           SOUTH AFRICA                   5                    0       13     312
0-24 months   MAL-ED           SOUTH AFRICA                   5                    1        3     312
0-24 months   MAL-ED           SOUTH AFRICA                   6                    0       18     312
0-24 months   MAL-ED           SOUTH AFRICA                   6                    1        5     312
0-24 months   MAL-ED           SOUTH AFRICA                   7                    0       22     312
0-24 months   MAL-ED           SOUTH AFRICA                   7                    1        4     312
0-24 months   MAL-ED           SOUTH AFRICA                   8                    0       12     312
0-24 months   MAL-ED           SOUTH AFRICA                   8                    1        0     312
0-24 months   MAL-ED           SOUTH AFRICA                   9                    0       22     312
0-24 months   MAL-ED           SOUTH AFRICA                   9                    1        3     312
0-24 months   MAL-ED           SOUTH AFRICA                   10                   0       23     312
0-24 months   MAL-ED           SOUTH AFRICA                   10                   1        8     312
0-24 months   MAL-ED           SOUTH AFRICA                   11                   0       23     312
0-24 months   MAL-ED           SOUTH AFRICA                   11                   1        8     312
0-24 months   MAL-ED           SOUTH AFRICA                   12                   0       35     312
0-24 months   MAL-ED           SOUTH AFRICA                   12                   1        9     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       14     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        6     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0       24     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1        6     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0       18     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1        1     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    0        8     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1        2     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    0       19     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1        1     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    0       13     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1        6     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    0       22     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1        1     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    0       10     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1        2     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    0       23     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1        0     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   0       23     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1        1     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   0       23     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1        4     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   0       28     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1        6     261
0-24 months   NIH-Birth        BANGLADESH                     1                    0       35     624
0-24 months   NIH-Birth        BANGLADESH                     1                    1       38     624
0-24 months   NIH-Birth        BANGLADESH                     2                    0       28     624
0-24 months   NIH-Birth        BANGLADESH                     2                    1       29     624
0-24 months   NIH-Birth        BANGLADESH                     3                    0       27     624
0-24 months   NIH-Birth        BANGLADESH                     3                    1       32     624
0-24 months   NIH-Birth        BANGLADESH                     4                    0       30     624
0-24 months   NIH-Birth        BANGLADESH                     4                    1       22     624
0-24 months   NIH-Birth        BANGLADESH                     5                    0       27     624
0-24 months   NIH-Birth        BANGLADESH                     5                    1       22     624
0-24 months   NIH-Birth        BANGLADESH                     6                    0       23     624
0-24 months   NIH-Birth        BANGLADESH                     6                    1       27     624
0-24 months   NIH-Birth        BANGLADESH                     7                    0       18     624
0-24 months   NIH-Birth        BANGLADESH                     7                    1       23     624
0-24 months   NIH-Birth        BANGLADESH                     8                    0       19     624
0-24 months   NIH-Birth        BANGLADESH                     8                    1       20     624
0-24 months   NIH-Birth        BANGLADESH                     9                    0       28     624
0-24 months   NIH-Birth        BANGLADESH                     9                    1       19     624
0-24 months   NIH-Birth        BANGLADESH                     10                   0       30     624
0-24 months   NIH-Birth        BANGLADESH                     10                   1       19     624
0-24 months   NIH-Birth        BANGLADESH                     11                   0       28     624
0-24 months   NIH-Birth        BANGLADESH                     11                   1       25     624
0-24 months   NIH-Birth        BANGLADESH                     12                   0       33     624
0-24 months   NIH-Birth        BANGLADESH                     12                   1       22     624
0-24 months   PROBIT           BELARUS                        1                    0      764   16898
0-24 months   PROBIT           BELARUS                        1                    1      262   16898
0-24 months   PROBIT           BELARUS                        2                    0      765   16898
0-24 months   PROBIT           BELARUS                        2                    1      218   16898
0-24 months   PROBIT           BELARUS                        3                    0      860   16898
0-24 months   PROBIT           BELARUS                        3                    1      285   16898
0-24 months   PROBIT           BELARUS                        4                    0      868   16898
0-24 months   PROBIT           BELARUS                        4                    1      295   16898
0-24 months   PROBIT           BELARUS                        5                    0      837   16898
0-24 months   PROBIT           BELARUS                        5                    1      337   16898
0-24 months   PROBIT           BELARUS                        6                    0      886   16898
0-24 months   PROBIT           BELARUS                        6                    1      325   16898
0-24 months   PROBIT           BELARUS                        7                    0     1162   16898
0-24 months   PROBIT           BELARUS                        7                    1      428   16898
0-24 months   PROBIT           BELARUS                        8                    0     1149   16898
0-24 months   PROBIT           BELARUS                        8                    1      439   16898
0-24 months   PROBIT           BELARUS                        9                    0     1241   16898
0-24 months   PROBIT           BELARUS                        9                    1      386   16898
0-24 months   PROBIT           BELARUS                        10                   0     1327   16898
0-24 months   PROBIT           BELARUS                        10                   1      488   16898
0-24 months   PROBIT           BELARUS                        11                   0     1306   16898
0-24 months   PROBIT           BELARUS                        11                   1      396   16898
0-24 months   PROBIT           BELARUS                        12                   0     1417   16898
0-24 months   PROBIT           BELARUS                        12                   1      457   16898
0-24 months   PROVIDE          BANGLADESH                     1                    0       30     700
0-24 months   PROVIDE          BANGLADESH                     1                    1        8     700
0-24 months   PROVIDE          BANGLADESH                     2                    0       23     700
0-24 months   PROVIDE          BANGLADESH                     2                    1       12     700
0-24 months   PROVIDE          BANGLADESH                     3                    0       36     700
0-24 months   PROVIDE          BANGLADESH                     3                    1       17     700
0-24 months   PROVIDE          BANGLADESH                     4                    0       26     700
0-24 months   PROVIDE          BANGLADESH                     4                    1       13     700
0-24 months   PROVIDE          BANGLADESH                     5                    0       30     700
0-24 months   PROVIDE          BANGLADESH                     5                    1       22     700
0-24 months   PROVIDE          BANGLADESH                     6                    0       62     700
0-24 months   PROVIDE          BANGLADESH                     6                    1       32     700
0-24 months   PROVIDE          BANGLADESH                     7                    0       54     700
0-24 months   PROVIDE          BANGLADESH                     7                    1       38     700
0-24 months   PROVIDE          BANGLADESH                     8                    0       36     700
0-24 months   PROVIDE          BANGLADESH                     8                    1       33     700
0-24 months   PROVIDE          BANGLADESH                     9                    0       52     700
0-24 months   PROVIDE          BANGLADESH                     9                    1       24     700
0-24 months   PROVIDE          BANGLADESH                     10                   0       50     700
0-24 months   PROVIDE          BANGLADESH                     10                   1       29     700
0-24 months   PROVIDE          BANGLADESH                     11                   0       34     700
0-24 months   PROVIDE          BANGLADESH                     11                   1        8     700
0-24 months   PROVIDE          BANGLADESH                     12                   0       21     700
0-24 months   PROVIDE          BANGLADESH                     12                   1       10     700
0-24 months   ResPak           PAKISTAN                       1                    0        8     284
0-24 months   ResPak           PAKISTAN                       1                    1        4     284
0-24 months   ResPak           PAKISTAN                       2                    0        4     284
0-24 months   ResPak           PAKISTAN                       2                    1        7     284
0-24 months   ResPak           PAKISTAN                       3                    0        8     284
0-24 months   ResPak           PAKISTAN                       3                    1       20     284
0-24 months   ResPak           PAKISTAN                       4                    0       10     284
0-24 months   ResPak           PAKISTAN                       4                    1       20     284
0-24 months   ResPak           PAKISTAN                       5                    0       23     284
0-24 months   ResPak           PAKISTAN                       5                    1       32     284
0-24 months   ResPak           PAKISTAN                       6                    0       26     284
0-24 months   ResPak           PAKISTAN                       6                    1       21     284
0-24 months   ResPak           PAKISTAN                       7                    0       12     284
0-24 months   ResPak           PAKISTAN                       7                    1       19     284
0-24 months   ResPak           PAKISTAN                       8                    0       24     284
0-24 months   ResPak           PAKISTAN                       8                    1       17     284
0-24 months   ResPak           PAKISTAN                       9                    0        6     284
0-24 months   ResPak           PAKISTAN                       9                    1       10     284
0-24 months   ResPak           PAKISTAN                       10                   0        3     284
0-24 months   ResPak           PAKISTAN                       10                   1        3     284
0-24 months   ResPak           PAKISTAN                       11                   0        3     284
0-24 months   ResPak           PAKISTAN                       11                   1        1     284
0-24 months   ResPak           PAKISTAN                       12                   0        1     284
0-24 months   ResPak           PAKISTAN                       12                   1        2     284
0-24 months   SAS-CompFeed     INDIA                          1                    0       66    1513
0-24 months   SAS-CompFeed     INDIA                          1                    1       45    1513
0-24 months   SAS-CompFeed     INDIA                          2                    0       61    1513
0-24 months   SAS-CompFeed     INDIA                          2                    1       29    1513
0-24 months   SAS-CompFeed     INDIA                          3                    0       48    1513
0-24 months   SAS-CompFeed     INDIA                          3                    1       33    1513
0-24 months   SAS-CompFeed     INDIA                          4                    0       41    1513
0-24 months   SAS-CompFeed     INDIA                          4                    1       33    1513
0-24 months   SAS-CompFeed     INDIA                          5                    0       54    1513
0-24 months   SAS-CompFeed     INDIA                          5                    1       45    1513
0-24 months   SAS-CompFeed     INDIA                          6                    0       55    1513
0-24 months   SAS-CompFeed     INDIA                          6                    1       54    1513
0-24 months   SAS-CompFeed     INDIA                          7                    0       84    1513
0-24 months   SAS-CompFeed     INDIA                          7                    1       52    1513
0-24 months   SAS-CompFeed     INDIA                          8                    0      106    1513
0-24 months   SAS-CompFeed     INDIA                          8                    1       73    1513
0-24 months   SAS-CompFeed     INDIA                          9                    0      114    1513
0-24 months   SAS-CompFeed     INDIA                          9                    1       77    1513
0-24 months   SAS-CompFeed     INDIA                          10                   0       87    1513
0-24 months   SAS-CompFeed     INDIA                          10                   1       78    1513
0-24 months   SAS-CompFeed     INDIA                          11                   0       78    1513
0-24 months   SAS-CompFeed     INDIA                          11                   1       62    1513
0-24 months   SAS-CompFeed     INDIA                          12                   0       91    1513
0-24 months   SAS-CompFeed     INDIA                          12                   1       47    1513
0-24 months   SAS-FoodSuppl    INDIA                          1                    0       14     418
0-24 months   SAS-FoodSuppl    INDIA                          1                    1       12     418
0-24 months   SAS-FoodSuppl    INDIA                          2                    0       19     418
0-24 months   SAS-FoodSuppl    INDIA                          2                    1       17     418
0-24 months   SAS-FoodSuppl    INDIA                          3                    0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          3                    1       13     418
0-24 months   SAS-FoodSuppl    INDIA                          4                    0        3     418
0-24 months   SAS-FoodSuppl    INDIA                          4                    1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          5                    0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          5                    1        6     418
0-24 months   SAS-FoodSuppl    INDIA                          6                    0       16     418
0-24 months   SAS-FoodSuppl    INDIA                          6                    1        9     418
0-24 months   SAS-FoodSuppl    INDIA                          7                    0       21     418
0-24 months   SAS-FoodSuppl    INDIA                          7                    1       16     418
0-24 months   SAS-FoodSuppl    INDIA                          8                    0       40     418
0-24 months   SAS-FoodSuppl    INDIA                          8                    1       27     418
0-24 months   SAS-FoodSuppl    INDIA                          9                    0       33     418
0-24 months   SAS-FoodSuppl    INDIA                          9                    1       33     418
0-24 months   SAS-FoodSuppl    INDIA                          10                   0       26     418
0-24 months   SAS-FoodSuppl    INDIA                          10                   1       25     418
0-24 months   SAS-FoodSuppl    INDIA                          11                   0       17     418
0-24 months   SAS-FoodSuppl    INDIA                          11                   1       16     418
0-24 months   SAS-FoodSuppl    INDIA                          12                   0       16     418
0-24 months   SAS-FoodSuppl    INDIA                          12                   1       22     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      121    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       50    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      131    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       47    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0      130    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       34    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0      160    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       30    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0      151    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       34    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0      129    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       37    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0      164    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       54    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0      171    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       61    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0      169    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       47    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0      183    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       67    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0      167    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       54    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0      154    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       51    2396
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0     1039   13946
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1      306   13946
0-24 months   ZVITAMBO         ZIMBABWE                       2                    0      837   13946
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1      228   13946
0-24 months   ZVITAMBO         ZIMBABWE                       3                    0      914   13946
0-24 months   ZVITAMBO         ZIMBABWE                       3                    1      277   13946
0-24 months   ZVITAMBO         ZIMBABWE                       4                    0      787   13946
0-24 months   ZVITAMBO         ZIMBABWE                       4                    1      208   13946
0-24 months   ZVITAMBO         ZIMBABWE                       5                    0      799   13946
0-24 months   ZVITAMBO         ZIMBABWE                       5                    1      230   13946
0-24 months   ZVITAMBO         ZIMBABWE                       6                    0      853   13946
0-24 months   ZVITAMBO         ZIMBABWE                       6                    1      291   13946
0-24 months   ZVITAMBO         ZIMBABWE                       7                    0      853   13946
0-24 months   ZVITAMBO         ZIMBABWE                       7                    1      314   13946
0-24 months   ZVITAMBO         ZIMBABWE                       8                    0      934   13946
0-24 months   ZVITAMBO         ZIMBABWE                       8                    1      321   13946
0-24 months   ZVITAMBO         ZIMBABWE                       9                    0     1025   13946
0-24 months   ZVITAMBO         ZIMBABWE                       9                    1      271   13946
0-24 months   ZVITAMBO         ZIMBABWE                       10                   0      792   13946
0-24 months   ZVITAMBO         ZIMBABWE                       10                   1      255   13946
0-24 months   ZVITAMBO         ZIMBABWE                       11                   0      891   13946
0-24 months   ZVITAMBO         ZIMBABWE                       11                   1      300   13946
0-24 months   ZVITAMBO         ZIMBABWE                       12                   0      921   13946
0-24 months   ZVITAMBO         ZIMBABWE                       12                   1      300   13946
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       19     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1       15     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                    0        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                    1        8     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                    0       15     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                    1       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          4                    0       25     368
0-6 months    CMC-V-BCS-2002   INDIA                          4                    1       19     368
0-6 months    CMC-V-BCS-2002   INDIA                          5                    0       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          5                    1       20     368
0-6 months    CMC-V-BCS-2002   INDIA                          6                    0       14     368
0-6 months    CMC-V-BCS-2002   INDIA                          6                    1       22     368
0-6 months    CMC-V-BCS-2002   INDIA                          7                    0       26     368
0-6 months    CMC-V-BCS-2002   INDIA                          7                    1       13     368
0-6 months    CMC-V-BCS-2002   INDIA                          8                    0        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          8                    1       10     368
0-6 months    CMC-V-BCS-2002   INDIA                          9                    0       10     368
0-6 months    CMC-V-BCS-2002   INDIA                          9                    1       11     368
0-6 months    CMC-V-BCS-2002   INDIA                          10                   0       12     368
0-6 months    CMC-V-BCS-2002   INDIA                          10                   1       17     368
0-6 months    CMC-V-BCS-2002   INDIA                          11                   0       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          11                   1       25     368
0-6 months    CMC-V-BCS-2002   INDIA                          12                   0       11     368
0-6 months    CMC-V-BCS-2002   INDIA                          12                   1       14     368
0-6 months    CMIN             BANGLADESH                     1                    0       21     272
0-6 months    CMIN             BANGLADESH                     1                    1        7     272
0-6 months    CMIN             BANGLADESH                     2                    0       22     272
0-6 months    CMIN             BANGLADESH                     2                    1        5     272
0-6 months    CMIN             BANGLADESH                     3                    0       14     272
0-6 months    CMIN             BANGLADESH                     3                    1        6     272
0-6 months    CMIN             BANGLADESH                     4                    0       16     272
0-6 months    CMIN             BANGLADESH                     4                    1        6     272
0-6 months    CMIN             BANGLADESH                     5                    0       18     272
0-6 months    CMIN             BANGLADESH                     5                    1        2     272
0-6 months    CMIN             BANGLADESH                     6                    0        9     272
0-6 months    CMIN             BANGLADESH                     6                    1        1     272
0-6 months    CMIN             BANGLADESH                     7                    0       17     272
0-6 months    CMIN             BANGLADESH                     7                    1        0     272
0-6 months    CMIN             BANGLADESH                     8                    0       18     272
0-6 months    CMIN             BANGLADESH                     8                    1        4     272
0-6 months    CMIN             BANGLADESH                     9                    0       21     272
0-6 months    CMIN             BANGLADESH                     9                    1        1     272
0-6 months    CMIN             BANGLADESH                     10                   0       24     272
0-6 months    CMIN             BANGLADESH                     10                   1        3     272
0-6 months    CMIN             BANGLADESH                     11                   0       21     272
0-6 months    CMIN             BANGLADESH                     11                   1        8     272
0-6 months    CMIN             BANGLADESH                     12                   0       21     272
0-6 months    CMIN             BANGLADESH                     12                   1        7     272
0-6 months    CONTENT          PERU                           1                    0       10     215
0-6 months    CONTENT          PERU                           1                    1        0     215
0-6 months    CONTENT          PERU                           2                    0       17     215
0-6 months    CONTENT          PERU                           2                    1        1     215
0-6 months    CONTENT          PERU                           3                    0       28     215
0-6 months    CONTENT          PERU                           3                    1        2     215
0-6 months    CONTENT          PERU                           4                    0       19     215
0-6 months    CONTENT          PERU                           4                    1        0     215
0-6 months    CONTENT          PERU                           5                    0       14     215
0-6 months    CONTENT          PERU                           5                    1        0     215
0-6 months    CONTENT          PERU                           6                    0       13     215
0-6 months    CONTENT          PERU                           6                    1        0     215
0-6 months    CONTENT          PERU                           7                    0       28     215
0-6 months    CONTENT          PERU                           7                    1        0     215
0-6 months    CONTENT          PERU                           8                    0       23     215
0-6 months    CONTENT          PERU                           8                    1        0     215
0-6 months    CONTENT          PERU                           9                    0       26     215
0-6 months    CONTENT          PERU                           9                    1        0     215
0-6 months    CONTENT          PERU                           10                   0       14     215
0-6 months    CONTENT          PERU                           10                   1        0     215
0-6 months    CONTENT          PERU                           11                   0        9     215
0-6 months    CONTENT          PERU                           11                   1        0     215
0-6 months    CONTENT          PERU                           12                   0       10     215
0-6 months    CONTENT          PERU                           12                   1        1     215
0-6 months    EE               PAKISTAN                       1                    0       62     380
0-6 months    EE               PAKISTAN                       1                    1       33     380
0-6 months    EE               PAKISTAN                       2                    0       51     380
0-6 months    EE               PAKISTAN                       2                    1       16     380
0-6 months    EE               PAKISTAN                       3                    0       25     380
0-6 months    EE               PAKISTAN                       3                    1       18     380
0-6 months    EE               PAKISTAN                       4                    0       11     380
0-6 months    EE               PAKISTAN                       4                    1        5     380
0-6 months    EE               PAKISTAN                       5                    0        0     380
0-6 months    EE               PAKISTAN                       5                    1        0     380
0-6 months    EE               PAKISTAN                       6                    0        0     380
0-6 months    EE               PAKISTAN                       6                    1        0     380
0-6 months    EE               PAKISTAN                       7                    0        0     380
0-6 months    EE               PAKISTAN                       7                    1        0     380
0-6 months    EE               PAKISTAN                       8                    0        0     380
0-6 months    EE               PAKISTAN                       8                    1        0     380
0-6 months    EE               PAKISTAN                       9                    0        0     380
0-6 months    EE               PAKISTAN                       9                    1        0     380
0-6 months    EE               PAKISTAN                       10                   0        3     380
0-6 months    EE               PAKISTAN                       10                   1        1     380
0-6 months    EE               PAKISTAN                       11                   0       45     380
0-6 months    EE               PAKISTAN                       11                   1       26     380
0-6 months    EE               PAKISTAN                       12                   0       59     380
0-6 months    EE               PAKISTAN                       12                   1       25     380
0-6 months    GMS-Nepal        NEPAL                          1                    0        0     686
0-6 months    GMS-Nepal        NEPAL                          1                    1        0     686
0-6 months    GMS-Nepal        NEPAL                          2                    0        0     686
0-6 months    GMS-Nepal        NEPAL                          2                    1        0     686
0-6 months    GMS-Nepal        NEPAL                          3                    0        0     686
0-6 months    GMS-Nepal        NEPAL                          3                    1        0     686
0-6 months    GMS-Nepal        NEPAL                          4                    0        0     686
0-6 months    GMS-Nepal        NEPAL                          4                    1        1     686
0-6 months    GMS-Nepal        NEPAL                          5                    0        0     686
0-6 months    GMS-Nepal        NEPAL                          5                    1        0     686
0-6 months    GMS-Nepal        NEPAL                          6                    0      106     686
0-6 months    GMS-Nepal        NEPAL                          6                    1       62     686
0-6 months    GMS-Nepal        NEPAL                          7                    0      156     686
0-6 months    GMS-Nepal        NEPAL                          7                    1      107     686
0-6 months    GMS-Nepal        NEPAL                          8                    0      166     686
0-6 months    GMS-Nepal        NEPAL                          8                    1       88     686
0-6 months    GMS-Nepal        NEPAL                          9                    0        0     686
0-6 months    GMS-Nepal        NEPAL                          9                    1        0     686
0-6 months    GMS-Nepal        NEPAL                          10                   0        0     686
0-6 months    GMS-Nepal        NEPAL                          10                   1        0     686
0-6 months    GMS-Nepal        NEPAL                          11                   0        0     686
0-6 months    GMS-Nepal        NEPAL                          11                   1        0     686
0-6 months    GMS-Nepal        NEPAL                          12                   0        0     686
0-6 months    GMS-Nepal        NEPAL                          12                   1        0     686
0-6 months    Guatemala BSC    GUATEMALA                      1                    0       27     295
0-6 months    Guatemala BSC    GUATEMALA                      1                    1        2     295
0-6 months    Guatemala BSC    GUATEMALA                      2                    0       23     295
0-6 months    Guatemala BSC    GUATEMALA                      2                    1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      3                    0       23     295
0-6 months    Guatemala BSC    GUATEMALA                      3                    1        2     295
0-6 months    Guatemala BSC    GUATEMALA                      4                    0       29     295
0-6 months    Guatemala BSC    GUATEMALA                      4                    1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      5                    0       35     295
0-6 months    Guatemala BSC    GUATEMALA                      5                    1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      6                    0       24     295
0-6 months    Guatemala BSC    GUATEMALA                      6                    1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      7                    0       21     295
0-6 months    Guatemala BSC    GUATEMALA                      7                    1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      8                    0       15     295
0-6 months    Guatemala BSC    GUATEMALA                      8                    1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      9                    0       14     295
0-6 months    Guatemala BSC    GUATEMALA                      9                    1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      10                   0       25     295
0-6 months    Guatemala BSC    GUATEMALA                      10                   1        1     295
0-6 months    Guatemala BSC    GUATEMALA                      11                   0       20     295
0-6 months    Guatemala BSC    GUATEMALA                      11                   1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      12                   0       29     295
0-6 months    Guatemala BSC    GUATEMALA                      12                   1        2     295
0-6 months    IRC              INDIA                          1                    0       22     410
0-6 months    IRC              INDIA                          1                    1       16     410
0-6 months    IRC              INDIA                          2                    0       16     410
0-6 months    IRC              INDIA                          2                    1       12     410
0-6 months    IRC              INDIA                          3                    0       11     410
0-6 months    IRC              INDIA                          3                    1       16     410
0-6 months    IRC              INDIA                          4                    0       11     410
0-6 months    IRC              INDIA                          4                    1       10     410
0-6 months    IRC              INDIA                          5                    0       10     410
0-6 months    IRC              INDIA                          5                    1       12     410
0-6 months    IRC              INDIA                          6                    0       16     410
0-6 months    IRC              INDIA                          6                    1       21     410
0-6 months    IRC              INDIA                          7                    0       12     410
0-6 months    IRC              INDIA                          7                    1       24     410
0-6 months    IRC              INDIA                          8                    0       20     410
0-6 months    IRC              INDIA                          8                    1       24     410
0-6 months    IRC              INDIA                          9                    0       14     410
0-6 months    IRC              INDIA                          9                    1       13     410
0-6 months    IRC              INDIA                          10                   0       15     410
0-6 months    IRC              INDIA                          10                   1       23     410
0-6 months    IRC              INDIA                          11                   0       20     410
0-6 months    IRC              INDIA                          11                   1       20     410
0-6 months    IRC              INDIA                          12                   0       20     410
0-6 months    IRC              INDIA                          12                   1       32     410
0-6 months    JiVitA-3         BANGLADESH                     1                    0     2072   26859
0-6 months    JiVitA-3         BANGLADESH                     1                    1      418   26859
0-6 months    JiVitA-3         BANGLADESH                     2                    0     1682   26859
0-6 months    JiVitA-3         BANGLADESH                     2                    1      358   26859
0-6 months    JiVitA-3         BANGLADESH                     3                    0     2001   26859
0-6 months    JiVitA-3         BANGLADESH                     3                    1      411   26859
0-6 months    JiVitA-3         BANGLADESH                     4                    0     1437   26859
0-6 months    JiVitA-3         BANGLADESH                     4                    1      329   26859
0-6 months    JiVitA-3         BANGLADESH                     5                    0     1085   26859
0-6 months    JiVitA-3         BANGLADESH                     5                    1      228   26859
0-6 months    JiVitA-3         BANGLADESH                     6                    0     1141   26859
0-6 months    JiVitA-3         BANGLADESH                     6                    1      238   26859
0-6 months    JiVitA-3         BANGLADESH                     7                    0     1312   26859
0-6 months    JiVitA-3         BANGLADESH                     7                    1      242   26859
0-6 months    JiVitA-3         BANGLADESH                     8                    0     1750   26859
0-6 months    JiVitA-3         BANGLADESH                     8                    1      375   26859
0-6 months    JiVitA-3         BANGLADESH                     9                    0     2226   26859
0-6 months    JiVitA-3         BANGLADESH                     9                    1      540   26859
0-6 months    JiVitA-3         BANGLADESH                     10                   0     2392   26859
0-6 months    JiVitA-3         BANGLADESH                     10                   1      536   26859
0-6 months    JiVitA-3         BANGLADESH                     11                   0     2467   26859
0-6 months    JiVitA-3         BANGLADESH                     11                   1      526   26859
0-6 months    JiVitA-3         BANGLADESH                     12                   0     2562   26859
0-6 months    JiVitA-3         BANGLADESH                     12                   1      531   26859
0-6 months    JiVitA-4         BANGLADESH                     1                    0        0    5096
0-6 months    JiVitA-4         BANGLADESH                     1                    1        0    5096
0-6 months    JiVitA-4         BANGLADESH                     2                    0      715    5096
0-6 months    JiVitA-4         BANGLADESH                     2                    1       67    5096
0-6 months    JiVitA-4         BANGLADESH                     3                    0      836    5096
0-6 months    JiVitA-4         BANGLADESH                     3                    1       94    5096
0-6 months    JiVitA-4         BANGLADESH                     4                    0      646    5096
0-6 months    JiVitA-4         BANGLADESH                     4                    1       78    5096
0-6 months    JiVitA-4         BANGLADESH                     5                    0      545    5096
0-6 months    JiVitA-4         BANGLADESH                     5                    1       58    5096
0-6 months    JiVitA-4         BANGLADESH                     6                    0      392    5096
0-6 months    JiVitA-4         BANGLADESH                     6                    1       59    5096
0-6 months    JiVitA-4         BANGLADESH                     7                    0      468    5096
0-6 months    JiVitA-4         BANGLADESH                     7                    1       66    5096
0-6 months    JiVitA-4         BANGLADESH                     8                    0      482    5096
0-6 months    JiVitA-4         BANGLADESH                     8                    1       68    5096
0-6 months    JiVitA-4         BANGLADESH                     9                    0      342    5096
0-6 months    JiVitA-4         BANGLADESH                     9                    1       49    5096
0-6 months    JiVitA-4         BANGLADESH                     10                   0      117    5096
0-6 months    JiVitA-4         BANGLADESH                     10                   1       14    5096
0-6 months    JiVitA-4         BANGLADESH                     11                   0        0    5096
0-6 months    JiVitA-4         BANGLADESH                     11                   1        0    5096
0-6 months    JiVitA-4         BANGLADESH                     12                   0        0    5096
0-6 months    JiVitA-4         BANGLADESH                     12                   1        0    5096
0-6 months    Keneba           GAMBIA                         1                    0      186    2466
0-6 months    Keneba           GAMBIA                         1                    1       74    2466
0-6 months    Keneba           GAMBIA                         2                    0      152    2466
0-6 months    Keneba           GAMBIA                         2                    1       65    2466
0-6 months    Keneba           GAMBIA                         3                    0      193    2466
0-6 months    Keneba           GAMBIA                         3                    1       69    2466
0-6 months    Keneba           GAMBIA                         4                    0      123    2466
0-6 months    Keneba           GAMBIA                         4                    1       44    2466
0-6 months    Keneba           GAMBIA                         5                    0      125    2466
0-6 months    Keneba           GAMBIA                         5                    1       43    2466
0-6 months    Keneba           GAMBIA                         6                    0      108    2466
0-6 months    Keneba           GAMBIA                         6                    1       33    2466
0-6 months    Keneba           GAMBIA                         7                    0       70    2466
0-6 months    Keneba           GAMBIA                         7                    1       35    2466
0-6 months    Keneba           GAMBIA                         8                    0      131    2466
0-6 months    Keneba           GAMBIA                         8                    1       66    2466
0-6 months    Keneba           GAMBIA                         9                    0      151    2466
0-6 months    Keneba           GAMBIA                         9                    1       63    2466
0-6 months    Keneba           GAMBIA                         10                   0      225    2466
0-6 months    Keneba           GAMBIA                         10                   1       67    2466
0-6 months    Keneba           GAMBIA                         11                   0      162    2466
0-6 months    Keneba           GAMBIA                         11                   1       56    2466
0-6 months    Keneba           GAMBIA                         12                   0      166    2466
0-6 months    Keneba           GAMBIA                         12                   1       59    2466
0-6 months    LCNI-5           MALAWI                         1                    0       28     272
0-6 months    LCNI-5           MALAWI                         1                    1        1     272
0-6 months    LCNI-5           MALAWI                         2                    0        4     272
0-6 months    LCNI-5           MALAWI                         2                    1        0     272
0-6 months    LCNI-5           MALAWI                         3                    0        4     272
0-6 months    LCNI-5           MALAWI                         3                    1        0     272
0-6 months    LCNI-5           MALAWI                         4                    0        5     272
0-6 months    LCNI-5           MALAWI                         4                    1        0     272
0-6 months    LCNI-5           MALAWI                         5                    0       10     272
0-6 months    LCNI-5           MALAWI                         5                    1        0     272
0-6 months    LCNI-5           MALAWI                         6                    0        5     272
0-6 months    LCNI-5           MALAWI                         6                    1        0     272
0-6 months    LCNI-5           MALAWI                         7                    0        3     272
0-6 months    LCNI-5           MALAWI                         7                    1        0     272
0-6 months    LCNI-5           MALAWI                         8                    0       32     272
0-6 months    LCNI-5           MALAWI                         8                    1        0     272
0-6 months    LCNI-5           MALAWI                         9                    0       52     272
0-6 months    LCNI-5           MALAWI                         9                    1        1     272
0-6 months    LCNI-5           MALAWI                         10                   0       68     272
0-6 months    LCNI-5           MALAWI                         10                   1        1     272
0-6 months    LCNI-5           MALAWI                         11                   0       29     272
0-6 months    LCNI-5           MALAWI                         11                   1        1     272
0-6 months    LCNI-5           MALAWI                         12                   0       28     272
0-6 months    LCNI-5           MALAWI                         12                   1        0     272
0-6 months    MAL-ED           BANGLADESH                     1                    0       18     263
0-6 months    MAL-ED           BANGLADESH                     1                    1        3     263
0-6 months    MAL-ED           BANGLADESH                     2                    0       18     263
0-6 months    MAL-ED           BANGLADESH                     2                    1        7     263
0-6 months    MAL-ED           BANGLADESH                     3                    0       16     263
0-6 months    MAL-ED           BANGLADESH                     3                    1        8     263
0-6 months    MAL-ED           BANGLADESH                     4                    0       16     263
0-6 months    MAL-ED           BANGLADESH                     4                    1        6     263
0-6 months    MAL-ED           BANGLADESH                     5                    0       16     263
0-6 months    MAL-ED           BANGLADESH                     5                    1        6     263
0-6 months    MAL-ED           BANGLADESH                     6                    0       10     263
0-6 months    MAL-ED           BANGLADESH                     6                    1        1     263
0-6 months    MAL-ED           BANGLADESH                     7                    0       14     263
0-6 months    MAL-ED           BANGLADESH                     7                    1        6     263
0-6 months    MAL-ED           BANGLADESH                     8                    0       23     263
0-6 months    MAL-ED           BANGLADESH                     8                    1        3     263
0-6 months    MAL-ED           BANGLADESH                     9                    0       15     263
0-6 months    MAL-ED           BANGLADESH                     9                    1        8     263
0-6 months    MAL-ED           BANGLADESH                     10                   0       19     263
0-6 months    MAL-ED           BANGLADESH                     10                   1        5     263
0-6 months    MAL-ED           BANGLADESH                     11                   0       15     263
0-6 months    MAL-ED           BANGLADESH                     11                   1        2     263
0-6 months    MAL-ED           BANGLADESH                     12                   0       23     263
0-6 months    MAL-ED           BANGLADESH                     12                   1        5     263
0-6 months    MAL-ED           BRAZIL                         1                    0       13     233
0-6 months    MAL-ED           BRAZIL                         1                    1        2     233
0-6 months    MAL-ED           BRAZIL                         2                    0       23     233
0-6 months    MAL-ED           BRAZIL                         2                    1        2     233
0-6 months    MAL-ED           BRAZIL                         3                    0       20     233
0-6 months    MAL-ED           BRAZIL                         3                    1        0     233
0-6 months    MAL-ED           BRAZIL                         4                    0       11     233
0-6 months    MAL-ED           BRAZIL                         4                    1        1     233
0-6 months    MAL-ED           BRAZIL                         5                    0       23     233
0-6 months    MAL-ED           BRAZIL                         5                    1        0     233
0-6 months    MAL-ED           BRAZIL                         6                    0        8     233
0-6 months    MAL-ED           BRAZIL                         6                    1        1     233
0-6 months    MAL-ED           BRAZIL                         7                    0       17     233
0-6 months    MAL-ED           BRAZIL                         7                    1        1     233
0-6 months    MAL-ED           BRAZIL                         8                    0       20     233
0-6 months    MAL-ED           BRAZIL                         8                    1        1     233
0-6 months    MAL-ED           BRAZIL                         9                    0       31     233
0-6 months    MAL-ED           BRAZIL                         9                    1        1     233
0-6 months    MAL-ED           BRAZIL                         10                   0       18     233
0-6 months    MAL-ED           BRAZIL                         10                   1        3     233
0-6 months    MAL-ED           BRAZIL                         11                   0       20     233
0-6 months    MAL-ED           BRAZIL                         11                   1        2     233
0-6 months    MAL-ED           BRAZIL                         12                   0       14     233
0-6 months    MAL-ED           BRAZIL                         12                   1        1     233
0-6 months    MAL-ED           INDIA                          1                    0       10     251
0-6 months    MAL-ED           INDIA                          1                    1       10     251
0-6 months    MAL-ED           INDIA                          2                    0       15     251
0-6 months    MAL-ED           INDIA                          2                    1        6     251
0-6 months    MAL-ED           INDIA                          3                    0       12     251
0-6 months    MAL-ED           INDIA                          3                    1       11     251
0-6 months    MAL-ED           INDIA                          4                    0       11     251
0-6 months    MAL-ED           INDIA                          4                    1        6     251
0-6 months    MAL-ED           INDIA                          5                    0        5     251
0-6 months    MAL-ED           INDIA                          5                    1        3     251
0-6 months    MAL-ED           INDIA                          6                    0       12     251
0-6 months    MAL-ED           INDIA                          6                    1        8     251
0-6 months    MAL-ED           INDIA                          7                    0       14     251
0-6 months    MAL-ED           INDIA                          7                    1       11     251
0-6 months    MAL-ED           INDIA                          8                    0       18     251
0-6 months    MAL-ED           INDIA                          8                    1        6     251
0-6 months    MAL-ED           INDIA                          9                    0       16     251
0-6 months    MAL-ED           INDIA                          9                    1        7     251
0-6 months    MAL-ED           INDIA                          10                   0       21     251
0-6 months    MAL-ED           INDIA                          10                   1        5     251
0-6 months    MAL-ED           INDIA                          11                   0       18     251
0-6 months    MAL-ED           INDIA                          11                   1        7     251
0-6 months    MAL-ED           INDIA                          12                   0       17     251
0-6 months    MAL-ED           INDIA                          12                   1        2     251
0-6 months    MAL-ED           NEPAL                          1                    0       15     240
0-6 months    MAL-ED           NEPAL                          1                    1        5     240
0-6 months    MAL-ED           NEPAL                          2                    0       17     240
0-6 months    MAL-ED           NEPAL                          2                    1        2     240
0-6 months    MAL-ED           NEPAL                          3                    0       13     240
0-6 months    MAL-ED           NEPAL                          3                    1        4     240
0-6 months    MAL-ED           NEPAL                          4                    0       15     240
0-6 months    MAL-ED           NEPAL                          4                    1        7     240
0-6 months    MAL-ED           NEPAL                          5                    0       14     240
0-6 months    MAL-ED           NEPAL                          5                    1        8     240
0-6 months    MAL-ED           NEPAL                          6                    0       15     240
0-6 months    MAL-ED           NEPAL                          6                    1        3     240
0-6 months    MAL-ED           NEPAL                          7                    0       16     240
0-6 months    MAL-ED           NEPAL                          7                    1        4     240
0-6 months    MAL-ED           NEPAL                          8                    0       17     240
0-6 months    MAL-ED           NEPAL                          8                    1        7     240
0-6 months    MAL-ED           NEPAL                          9                    0       13     240
0-6 months    MAL-ED           NEPAL                          9                    1        3     240
0-6 months    MAL-ED           NEPAL                          10                   0       19     240
0-6 months    MAL-ED           NEPAL                          10                   1        2     240
0-6 months    MAL-ED           NEPAL                          11                   0       22     240
0-6 months    MAL-ED           NEPAL                          11                   1        2     240
0-6 months    MAL-ED           NEPAL                          12                   0       16     240
0-6 months    MAL-ED           NEPAL                          12                   1        1     240
0-6 months    MAL-ED           PERU                           1                    0       40     302
0-6 months    MAL-ED           PERU                           1                    1        1     302
0-6 months    MAL-ED           PERU                           2                    0       22     302
0-6 months    MAL-ED           PERU                           2                    1        1     302
0-6 months    MAL-ED           PERU                           3                    0       23     302
0-6 months    MAL-ED           PERU                           3                    1        0     302
0-6 months    MAL-ED           PERU                           4                    0       21     302
0-6 months    MAL-ED           PERU                           4                    1        0     302
0-6 months    MAL-ED           PERU                           5                    0       26     302
0-6 months    MAL-ED           PERU                           5                    1        2     302
0-6 months    MAL-ED           PERU                           6                    0       17     302
0-6 months    MAL-ED           PERU                           6                    1        0     302
0-6 months    MAL-ED           PERU                           7                    0       23     302
0-6 months    MAL-ED           PERU                           7                    1        1     302
0-6 months    MAL-ED           PERU                           8                    0       18     302
0-6 months    MAL-ED           PERU                           8                    1        1     302
0-6 months    MAL-ED           PERU                           9                    0       23     302
0-6 months    MAL-ED           PERU                           9                    1        0     302
0-6 months    MAL-ED           PERU                           10                   0       26     302
0-6 months    MAL-ED           PERU                           10                   1        1     302
0-6 months    MAL-ED           PERU                           11                   0       29     302
0-6 months    MAL-ED           PERU                           11                   1        4     302
0-6 months    MAL-ED           PERU                           12                   0       23     302
0-6 months    MAL-ED           PERU                           12                   1        0     302
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0       38     312
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        4     312
0-6 months    MAL-ED           SOUTH AFRICA                   2                    0       27     312
0-6 months    MAL-ED           SOUTH AFRICA                   2                    1        3     312
0-6 months    MAL-ED           SOUTH AFRICA                   3                    0       16     312
0-6 months    MAL-ED           SOUTH AFRICA                   3                    1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   4                    0       13     312
0-6 months    MAL-ED           SOUTH AFRICA                   4                    1        2     312
0-6 months    MAL-ED           SOUTH AFRICA                   5                    0       15     312
0-6 months    MAL-ED           SOUTH AFRICA                   5                    1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   6                    0       20     312
0-6 months    MAL-ED           SOUTH AFRICA                   6                    1        3     312
0-6 months    MAL-ED           SOUTH AFRICA                   7                    0       23     312
0-6 months    MAL-ED           SOUTH AFRICA                   7                    1        3     312
0-6 months    MAL-ED           SOUTH AFRICA                   8                    0       12     312
0-6 months    MAL-ED           SOUTH AFRICA                   8                    1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   9                    0       25     312
0-6 months    MAL-ED           SOUTH AFRICA                   9                    1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   10                   0       25     312
0-6 months    MAL-ED           SOUTH AFRICA                   10                   1        6     312
0-6 months    MAL-ED           SOUTH AFRICA                   11                   0       24     312
0-6 months    MAL-ED           SOUTH AFRICA                   11                   1        7     312
0-6 months    MAL-ED           SOUTH AFRICA                   12                   0       39     312
0-6 months    MAL-ED           SOUTH AFRICA                   12                   1        5     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       18     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0       30     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0       19     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    0        9     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    0       20     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    0       16     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1        3     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    0       23     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    0       12     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    0       23     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   0       24     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   0       25     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1        2     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   0       29     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1        5     261
0-6 months    NIH-Birth        BANGLADESH                     1                    0       44     622
0-6 months    NIH-Birth        BANGLADESH                     1                    1       28     622
0-6 months    NIH-Birth        BANGLADESH                     2                    0       35     622
0-6 months    NIH-Birth        BANGLADESH                     2                    1       22     622
0-6 months    NIH-Birth        BANGLADESH                     3                    0       35     622
0-6 months    NIH-Birth        BANGLADESH                     3                    1       24     622
0-6 months    NIH-Birth        BANGLADESH                     4                    0       30     622
0-6 months    NIH-Birth        BANGLADESH                     4                    1       21     622
0-6 months    NIH-Birth        BANGLADESH                     5                    0       29     622
0-6 months    NIH-Birth        BANGLADESH                     5                    1       20     622
0-6 months    NIH-Birth        BANGLADESH                     6                    0       30     622
0-6 months    NIH-Birth        BANGLADESH                     6                    1       20     622
0-6 months    NIH-Birth        BANGLADESH                     7                    0       23     622
0-6 months    NIH-Birth        BANGLADESH                     7                    1       18     622
0-6 months    NIH-Birth        BANGLADESH                     8                    0       24     622
0-6 months    NIH-Birth        BANGLADESH                     8                    1       15     622
0-6 months    NIH-Birth        BANGLADESH                     9                    0       31     622
0-6 months    NIH-Birth        BANGLADESH                     9                    1       16     622
0-6 months    NIH-Birth        BANGLADESH                     10                   0       36     622
0-6 months    NIH-Birth        BANGLADESH                     10                   1       13     622
0-6 months    NIH-Birth        BANGLADESH                     11                   0       38     622
0-6 months    NIH-Birth        BANGLADESH                     11                   1       15     622
0-6 months    NIH-Birth        BANGLADESH                     12                   0       45     622
0-6 months    NIH-Birth        BANGLADESH                     12                   1       10     622
0-6 months    PROBIT           BELARUS                        1                    0      769   16895
0-6 months    PROBIT           BELARUS                        1                    1      256   16895
0-6 months    PROBIT           BELARUS                        2                    0      771   16895
0-6 months    PROBIT           BELARUS                        2                    1      212   16895
0-6 months    PROBIT           BELARUS                        3                    0      867   16895
0-6 months    PROBIT           BELARUS                        3                    1      278   16895
0-6 months    PROBIT           BELARUS                        4                    0      871   16895
0-6 months    PROBIT           BELARUS                        4                    1      290   16895
0-6 months    PROBIT           BELARUS                        5                    0      843   16895
0-6 months    PROBIT           BELARUS                        5                    1      331   16895
0-6 months    PROBIT           BELARUS                        6                    0      892   16895
0-6 months    PROBIT           BELARUS                        6                    1      319   16895
0-6 months    PROBIT           BELARUS                        7                    0     1163   16895
0-6 months    PROBIT           BELARUS                        7                    1      427   16895
0-6 months    PROBIT           BELARUS                        8                    0     1156   16895
0-6 months    PROBIT           BELARUS                        8                    1      432   16895
0-6 months    PROBIT           BELARUS                        9                    0     1251   16895
0-6 months    PROBIT           BELARUS                        9                    1      376   16895
0-6 months    PROBIT           BELARUS                        10                   0     1340   16895
0-6 months    PROBIT           BELARUS                        10                   1      475   16895
0-6 months    PROBIT           BELARUS                        11                   0     1319   16895
0-6 months    PROBIT           BELARUS                        11                   1      383   16895
0-6 months    PROBIT           BELARUS                        12                   0     1429   16895
0-6 months    PROBIT           BELARUS                        12                   1      445   16895
0-6 months    PROVIDE          BANGLADESH                     1                    0       35     700
0-6 months    PROVIDE          BANGLADESH                     1                    1        3     700
0-6 months    PROVIDE          BANGLADESH                     2                    0       26     700
0-6 months    PROVIDE          BANGLADESH                     2                    1        9     700
0-6 months    PROVIDE          BANGLADESH                     3                    0       41     700
0-6 months    PROVIDE          BANGLADESH                     3                    1       12     700
0-6 months    PROVIDE          BANGLADESH                     4                    0       31     700
0-6 months    PROVIDE          BANGLADESH                     4                    1        8     700
0-6 months    PROVIDE          BANGLADESH                     5                    0       35     700
0-6 months    PROVIDE          BANGLADESH                     5                    1       17     700
0-6 months    PROVIDE          BANGLADESH                     6                    0       72     700
0-6 months    PROVIDE          BANGLADESH                     6                    1       22     700
0-6 months    PROVIDE          BANGLADESH                     7                    0       58     700
0-6 months    PROVIDE          BANGLADESH                     7                    1       34     700
0-6 months    PROVIDE          BANGLADESH                     8                    0       44     700
0-6 months    PROVIDE          BANGLADESH                     8                    1       25     700
0-6 months    PROVIDE          BANGLADESH                     9                    0       57     700
0-6 months    PROVIDE          BANGLADESH                     9                    1       19     700
0-6 months    PROVIDE          BANGLADESH                     10                   0       61     700
0-6 months    PROVIDE          BANGLADESH                     10                   1       18     700
0-6 months    PROVIDE          BANGLADESH                     11                   0       34     700
0-6 months    PROVIDE          BANGLADESH                     11                   1        8     700
0-6 months    PROVIDE          BANGLADESH                     12                   0       25     700
0-6 months    PROVIDE          BANGLADESH                     12                   1        6     700
0-6 months    ResPak           PAKISTAN                       1                    0        8     282
0-6 months    ResPak           PAKISTAN                       1                    1        4     282
0-6 months    ResPak           PAKISTAN                       2                    0        7     282
0-6 months    ResPak           PAKISTAN                       2                    1        4     282
0-6 months    ResPak           PAKISTAN                       3                    0       11     282
0-6 months    ResPak           PAKISTAN                       3                    1       16     282
0-6 months    ResPak           PAKISTAN                       4                    0       15     282
0-6 months    ResPak           PAKISTAN                       4                    1       15     282
0-6 months    ResPak           PAKISTAN                       5                    0       36     282
0-6 months    ResPak           PAKISTAN                       5                    1       19     282
0-6 months    ResPak           PAKISTAN                       6                    0       32     282
0-6 months    ResPak           PAKISTAN                       6                    1       14     282
0-6 months    ResPak           PAKISTAN                       7                    0       18     282
0-6 months    ResPak           PAKISTAN                       7                    1       13     282
0-6 months    ResPak           PAKISTAN                       8                    0       28     282
0-6 months    ResPak           PAKISTAN                       8                    1       13     282
0-6 months    ResPak           PAKISTAN                       9                    0       10     282
0-6 months    ResPak           PAKISTAN                       9                    1        6     282
0-6 months    ResPak           PAKISTAN                       10                   0        3     282
0-6 months    ResPak           PAKISTAN                       10                   1        3     282
0-6 months    ResPak           PAKISTAN                       11                   0        4     282
0-6 months    ResPak           PAKISTAN                       11                   1        0     282
0-6 months    ResPak           PAKISTAN                       12                   0        1     282
0-6 months    ResPak           PAKISTAN                       12                   1        2     282
0-6 months    SAS-CompFeed     INDIA                          1                    0       79    1505
0-6 months    SAS-CompFeed     INDIA                          1                    1       30    1505
0-6 months    SAS-CompFeed     INDIA                          2                    0       73    1505
0-6 months    SAS-CompFeed     INDIA                          2                    1       17    1505
0-6 months    SAS-CompFeed     INDIA                          3                    0       63    1505
0-6 months    SAS-CompFeed     INDIA                          3                    1       18    1505
0-6 months    SAS-CompFeed     INDIA                          4                    0       55    1505
0-6 months    SAS-CompFeed     INDIA                          4                    1       19    1505
0-6 months    SAS-CompFeed     INDIA                          5                    0       67    1505
0-6 months    SAS-CompFeed     INDIA                          5                    1       32    1505
0-6 months    SAS-CompFeed     INDIA                          6                    0       76    1505
0-6 months    SAS-CompFeed     INDIA                          6                    1       33    1505
0-6 months    SAS-CompFeed     INDIA                          7                    0      113    1505
0-6 months    SAS-CompFeed     INDIA                          7                    1       21    1505
0-6 months    SAS-CompFeed     INDIA                          8                    0      148    1505
0-6 months    SAS-CompFeed     INDIA                          8                    1       31    1505
0-6 months    SAS-CompFeed     INDIA                          9                    0      154    1505
0-6 months    SAS-CompFeed     INDIA                          9                    1       35    1505
0-6 months    SAS-CompFeed     INDIA                          10                   0      120    1505
0-6 months    SAS-CompFeed     INDIA                          10                   1       44    1505
0-6 months    SAS-CompFeed     INDIA                          11                   0      113    1505
0-6 months    SAS-CompFeed     INDIA                          11                   1       27    1505
0-6 months    SAS-CompFeed     INDIA                          12                   0      113    1505
0-6 months    SAS-CompFeed     INDIA                          12                   1       24    1505
0-6 months    SAS-FoodSuppl    INDIA                          1                    0       22     418
0-6 months    SAS-FoodSuppl    INDIA                          1                    1        4     418
0-6 months    SAS-FoodSuppl    INDIA                          2                    0       31     418
0-6 months    SAS-FoodSuppl    INDIA                          2                    1        5     418
0-6 months    SAS-FoodSuppl    INDIA                          3                    0       15     418
0-6 months    SAS-FoodSuppl    INDIA                          3                    1        6     418
0-6 months    SAS-FoodSuppl    INDIA                          4                    0        3     418
0-6 months    SAS-FoodSuppl    INDIA                          4                    1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          5                    0       12     418
0-6 months    SAS-FoodSuppl    INDIA                          5                    1        2     418
0-6 months    SAS-FoodSuppl    INDIA                          6                    0       21     418
0-6 months    SAS-FoodSuppl    INDIA                          6                    1        4     418
0-6 months    SAS-FoodSuppl    INDIA                          7                    0       34     418
0-6 months    SAS-FoodSuppl    INDIA                          7                    1        3     418
0-6 months    SAS-FoodSuppl    INDIA                          8                    0       54     418
0-6 months    SAS-FoodSuppl    INDIA                          8                    1       13     418
0-6 months    SAS-FoodSuppl    INDIA                          9                    0       55     418
0-6 months    SAS-FoodSuppl    INDIA                          9                    1       11     418
0-6 months    SAS-FoodSuppl    INDIA                          10                   0       40     418
0-6 months    SAS-FoodSuppl    INDIA                          10                   1       11     418
0-6 months    SAS-FoodSuppl    INDIA                          11                   0       24     418
0-6 months    SAS-FoodSuppl    INDIA                          11                   1        9     418
0-6 months    SAS-FoodSuppl    INDIA                          12                   0       29     418
0-6 months    SAS-FoodSuppl    INDIA                          12                   1        9     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      143    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       28    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      148    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       30    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0      144    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       20    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0      176    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       14    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0      169    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       16    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0      145    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       21    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0      183    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       35    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0      194    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       38    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0      194    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       22    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0      206    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       44    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0      188    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       33    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0      173    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       32    2396
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0     1103   13853
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1      226   13853
0-6 months    ZVITAMBO         ZIMBABWE                       2                    0      877   13853
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1      171   13853
0-6 months    ZVITAMBO         ZIMBABWE                       3                    0      984   13853
0-6 months    ZVITAMBO         ZIMBABWE                       3                    1      195   13853
0-6 months    ZVITAMBO         ZIMBABWE                       4                    0      846   13853
0-6 months    ZVITAMBO         ZIMBABWE                       4                    1      144   13853
0-6 months    ZVITAMBO         ZIMBABWE                       5                    0      860   13853
0-6 months    ZVITAMBO         ZIMBABWE                       5                    1      161   13853
0-6 months    ZVITAMBO         ZIMBABWE                       6                    0      914   13853
0-6 months    ZVITAMBO         ZIMBABWE                       6                    1      226   13853
0-6 months    ZVITAMBO         ZIMBABWE                       7                    0      903   13853
0-6 months    ZVITAMBO         ZIMBABWE                       7                    1      261   13853
0-6 months    ZVITAMBO         ZIMBABWE                       8                    0      997   13853
0-6 months    ZVITAMBO         ZIMBABWE                       8                    1      254   13853
0-6 months    ZVITAMBO         ZIMBABWE                       9                    0     1066   13853
0-6 months    ZVITAMBO         ZIMBABWE                       9                    1      225   13853
0-6 months    ZVITAMBO         ZIMBABWE                       10                   0      850   13853
0-6 months    ZVITAMBO         ZIMBABWE                       10                   1      190   13853
0-6 months    ZVITAMBO         ZIMBABWE                       11                   0      948   13853
0-6 months    ZVITAMBO         ZIMBABWE                       11                   1      233   13853
0-6 months    ZVITAMBO         ZIMBABWE                       12                   0      996   13853
0-6 months    ZVITAMBO         ZIMBABWE                       12                   1      223   13853
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       26     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1        8     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                    0       15     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                    1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                    0       24     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                    1        7     373
6-24 months   CMC-V-BCS-2002   INDIA                          4                    0       32     373
6-24 months   CMC-V-BCS-2002   INDIA                          4                    1       12     373
6-24 months   CMC-V-BCS-2002   INDIA                          5                    0       31     373
6-24 months   CMC-V-BCS-2002   INDIA                          5                    1        5     373
6-24 months   CMC-V-BCS-2002   INDIA                          6                    0       27     373
6-24 months   CMC-V-BCS-2002   INDIA                          6                    1       10     373
6-24 months   CMC-V-BCS-2002   INDIA                          7                    0       29     373
6-24 months   CMC-V-BCS-2002   INDIA                          7                    1       10     373
6-24 months   CMC-V-BCS-2002   INDIA                          8                    0       10     373
6-24 months   CMC-V-BCS-2002   INDIA                          8                    1        8     373
6-24 months   CMC-V-BCS-2002   INDIA                          9                    0       15     373
6-24 months   CMC-V-BCS-2002   INDIA                          9                    1        6     373
6-24 months   CMC-V-BCS-2002   INDIA                          10                   0       20     373
6-24 months   CMC-V-BCS-2002   INDIA                          10                   1        9     373
6-24 months   CMC-V-BCS-2002   INDIA                          11                   0       29     373
6-24 months   CMC-V-BCS-2002   INDIA                          11                   1       14     373
6-24 months   CMC-V-BCS-2002   INDIA                          12                   0       16     373
6-24 months   CMC-V-BCS-2002   INDIA                          12                   1        9     373
6-24 months   CMIN             BANGLADESH                     1                    0       20     252
6-24 months   CMIN             BANGLADESH                     1                    1        7     252
6-24 months   CMIN             BANGLADESH                     2                    0       15     252
6-24 months   CMIN             BANGLADESH                     2                    1       10     252
6-24 months   CMIN             BANGLADESH                     3                    0       12     252
6-24 months   CMIN             BANGLADESH                     3                    1        6     252
6-24 months   CMIN             BANGLADESH                     4                    0       13     252
6-24 months   CMIN             BANGLADESH                     4                    1        9     252
6-24 months   CMIN             BANGLADESH                     5                    0       14     252
6-24 months   CMIN             BANGLADESH                     5                    1        3     252
6-24 months   CMIN             BANGLADESH                     6                    0        5     252
6-24 months   CMIN             BANGLADESH                     6                    1        4     252
6-24 months   CMIN             BANGLADESH                     7                    0       11     252
6-24 months   CMIN             BANGLADESH                     7                    1        5     252
6-24 months   CMIN             BANGLADESH                     8                    0       13     252
6-24 months   CMIN             BANGLADESH                     8                    1        6     252
6-24 months   CMIN             BANGLADESH                     9                    0       13     252
6-24 months   CMIN             BANGLADESH                     9                    1        7     252
6-24 months   CMIN             BANGLADESH                     10                   0       10     252
6-24 months   CMIN             BANGLADESH                     10                   1       16     252
6-24 months   CMIN             BANGLADESH                     11                   0       12     252
6-24 months   CMIN             BANGLADESH                     11                   1       14     252
6-24 months   CMIN             BANGLADESH                     12                   0       17     252
6-24 months   CMIN             BANGLADESH                     12                   1       10     252
6-24 months   CONTENT          PERU                           1                    0       10     215
6-24 months   CONTENT          PERU                           1                    1        0     215
6-24 months   CONTENT          PERU                           2                    0       18     215
6-24 months   CONTENT          PERU                           2                    1        0     215
6-24 months   CONTENT          PERU                           3                    0       30     215
6-24 months   CONTENT          PERU                           3                    1        0     215
6-24 months   CONTENT          PERU                           4                    0       19     215
6-24 months   CONTENT          PERU                           4                    1        0     215
6-24 months   CONTENT          PERU                           5                    0       13     215
6-24 months   CONTENT          PERU                           5                    1        1     215
6-24 months   CONTENT          PERU                           6                    0       13     215
6-24 months   CONTENT          PERU                           6                    1        0     215
6-24 months   CONTENT          PERU                           7                    0       28     215
6-24 months   CONTENT          PERU                           7                    1        0     215
6-24 months   CONTENT          PERU                           8                    0       23     215
6-24 months   CONTENT          PERU                           8                    1        0     215
6-24 months   CONTENT          PERU                           9                    0       26     215
6-24 months   CONTENT          PERU                           9                    1        0     215
6-24 months   CONTENT          PERU                           10                   0       14     215
6-24 months   CONTENT          PERU                           10                   1        0     215
6-24 months   CONTENT          PERU                           11                   0        9     215
6-24 months   CONTENT          PERU                           11                   1        0     215
6-24 months   CONTENT          PERU                           12                   0       10     215
6-24 months   CONTENT          PERU                           12                   1        1     215
6-24 months   EE               PAKISTAN                       1                    0       57     374
6-24 months   EE               PAKISTAN                       1                    1       35     374
6-24 months   EE               PAKISTAN                       2                    0       41     374
6-24 months   EE               PAKISTAN                       2                    1       25     374
6-24 months   EE               PAKISTAN                       3                    0       19     374
6-24 months   EE               PAKISTAN                       3                    1       23     374
6-24 months   EE               PAKISTAN                       4                    0        6     374
6-24 months   EE               PAKISTAN                       4                    1       10     374
6-24 months   EE               PAKISTAN                       5                    0        0     374
6-24 months   EE               PAKISTAN                       5                    1        0     374
6-24 months   EE               PAKISTAN                       6                    0        0     374
6-24 months   EE               PAKISTAN                       6                    1        0     374
6-24 months   EE               PAKISTAN                       7                    0        0     374
6-24 months   EE               PAKISTAN                       7                    1        0     374
6-24 months   EE               PAKISTAN                       8                    0        0     374
6-24 months   EE               PAKISTAN                       8                    1        0     374
6-24 months   EE               PAKISTAN                       9                    0        0     374
6-24 months   EE               PAKISTAN                       9                    1        0     374
6-24 months   EE               PAKISTAN                       10                   0        2     374
6-24 months   EE               PAKISTAN                       10                   1        2     374
6-24 months   EE               PAKISTAN                       11                   0       40     374
6-24 months   EE               PAKISTAN                       11                   1       30     374
6-24 months   EE               PAKISTAN                       12                   0       48     374
6-24 months   EE               PAKISTAN                       12                   1       36     374
6-24 months   GMS-Nepal        NEPAL                          1                    0        0     590
6-24 months   GMS-Nepal        NEPAL                          1                    1        0     590
6-24 months   GMS-Nepal        NEPAL                          2                    0        0     590
6-24 months   GMS-Nepal        NEPAL                          2                    1        0     590
6-24 months   GMS-Nepal        NEPAL                          3                    0        0     590
6-24 months   GMS-Nepal        NEPAL                          3                    1        0     590
6-24 months   GMS-Nepal        NEPAL                          4                    0        0     590
6-24 months   GMS-Nepal        NEPAL                          4                    1        1     590
6-24 months   GMS-Nepal        NEPAL                          5                    0        0     590
6-24 months   GMS-Nepal        NEPAL                          5                    1        0     590
6-24 months   GMS-Nepal        NEPAL                          6                    0       63     590
6-24 months   GMS-Nepal        NEPAL                          6                    1       63     590
6-24 months   GMS-Nepal        NEPAL                          7                    0      132     590
6-24 months   GMS-Nepal        NEPAL                          7                    1       99     590
6-24 months   GMS-Nepal        NEPAL                          8                    0      116     590
6-24 months   GMS-Nepal        NEPAL                          8                    1      116     590
6-24 months   GMS-Nepal        NEPAL                          9                    0        0     590
6-24 months   GMS-Nepal        NEPAL                          9                    1        0     590
6-24 months   GMS-Nepal        NEPAL                          10                   0        0     590
6-24 months   GMS-Nepal        NEPAL                          10                   1        0     590
6-24 months   GMS-Nepal        NEPAL                          11                   0        0     590
6-24 months   GMS-Nepal        NEPAL                          11                   1        0     590
6-24 months   GMS-Nepal        NEPAL                          12                   0        0     590
6-24 months   GMS-Nepal        NEPAL                          12                   1        0     590
6-24 months   Guatemala BSC    GUATEMALA                      1                    0       25     277
6-24 months   Guatemala BSC    GUATEMALA                      1                    1        3     277
6-24 months   Guatemala BSC    GUATEMALA                      2                    0       22     277
6-24 months   Guatemala BSC    GUATEMALA                      2                    1        1     277
6-24 months   Guatemala BSC    GUATEMALA                      3                    0       24     277
6-24 months   Guatemala BSC    GUATEMALA                      3                    1        3     277
6-24 months   Guatemala BSC    GUATEMALA                      4                    0       28     277
6-24 months   Guatemala BSC    GUATEMALA                      4                    1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      5                    0       25     277
6-24 months   Guatemala BSC    GUATEMALA                      5                    1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      6                    0       17     277
6-24 months   Guatemala BSC    GUATEMALA                      6                    1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      7                    0       19     277
6-24 months   Guatemala BSC    GUATEMALA                      7                    1        1     277
6-24 months   Guatemala BSC    GUATEMALA                      8                    0       12     277
6-24 months   Guatemala BSC    GUATEMALA                      8                    1        0     277
6-24 months   Guatemala BSC    GUATEMALA                      9                    0       11     277
6-24 months   Guatemala BSC    GUATEMALA                      9                    1        3     277
6-24 months   Guatemala BSC    GUATEMALA                      10                   0       27     277
6-24 months   Guatemala BSC    GUATEMALA                      10                   1        0     277
6-24 months   Guatemala BSC    GUATEMALA                      11                   0       20     277
6-24 months   Guatemala BSC    GUATEMALA                      11                   1        2     277
6-24 months   Guatemala BSC    GUATEMALA                      12                   0       24     277
6-24 months   Guatemala BSC    GUATEMALA                      12                   1        4     277
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0      245    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1       78    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                    0      140    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                    1       41    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                    0      147    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                    1       50    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                    0      154    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                    1       55    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                    0      172    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                    1       46    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                    0      151    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                    1       41    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                    0      149    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                    1       47    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                    0      241    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                    1       62    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                    0      304    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                    1      107    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                   0      288    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                   1       84    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                   0      256    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                   1       87    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                   0      262    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                   1       59    3266
6-24 months   IRC              INDIA                          1                    0       25     410
6-24 months   IRC              INDIA                          1                    1       13     410
6-24 months   IRC              INDIA                          2                    0       19     410
6-24 months   IRC              INDIA                          2                    1        9     410
6-24 months   IRC              INDIA                          3                    0       22     410
6-24 months   IRC              INDIA                          3                    1        5     410
6-24 months   IRC              INDIA                          4                    0       13     410
6-24 months   IRC              INDIA                          4                    1        8     410
6-24 months   IRC              INDIA                          5                    0       13     410
6-24 months   IRC              INDIA                          5                    1        9     410
6-24 months   IRC              INDIA                          6                    0       25     410
6-24 months   IRC              INDIA                          6                    1       12     410
6-24 months   IRC              INDIA                          7                    0       23     410
6-24 months   IRC              INDIA                          7                    1       13     410
6-24 months   IRC              INDIA                          8                    0       31     410
6-24 months   IRC              INDIA                          8                    1       13     410
6-24 months   IRC              INDIA                          9                    0       17     410
6-24 months   IRC              INDIA                          9                    1       10     410
6-24 months   IRC              INDIA                          10                   0       22     410
6-24 months   IRC              INDIA                          10                   1       16     410
6-24 months   IRC              INDIA                          11                   0       32     410
6-24 months   IRC              INDIA                          11                   1        8     410
6-24 months   IRC              INDIA                          12                   0       41     410
6-24 months   IRC              INDIA                          12                   1       11     410
6-24 months   JiVitA-3         BANGLADESH                     1                    0     1175   17298
6-24 months   JiVitA-3         BANGLADESH                     1                    1      203   17298
6-24 months   JiVitA-3         BANGLADESH                     2                    0     1013   17298
6-24 months   JiVitA-3         BANGLADESH                     2                    1      170   17298
6-24 months   JiVitA-3         BANGLADESH                     3                    0     1267   17298
6-24 months   JiVitA-3         BANGLADESH                     3                    1      193   17298
6-24 months   JiVitA-3         BANGLADESH                     4                    0     1012   17298
6-24 months   JiVitA-3         BANGLADESH                     4                    1      197   17298
6-24 months   JiVitA-3         BANGLADESH                     5                    0      939   17298
6-24 months   JiVitA-3         BANGLADESH                     5                    1      231   17298
6-24 months   JiVitA-3         BANGLADESH                     6                    0     1013   17298
6-24 months   JiVitA-3         BANGLADESH                     6                    1      234   17298
6-24 months   JiVitA-3         BANGLADESH                     7                    0     1068   17298
6-24 months   JiVitA-3         BANGLADESH                     7                    1      236   17298
6-24 months   JiVitA-3         BANGLADESH                     8                    0     1281   17298
6-24 months   JiVitA-3         BANGLADESH                     8                    1      273   17298
6-24 months   JiVitA-3         BANGLADESH                     9                    0     1377   17298
6-24 months   JiVitA-3         BANGLADESH                     9                    1      280   17298
6-24 months   JiVitA-3         BANGLADESH                     10                   0     1421   17298
6-24 months   JiVitA-3         BANGLADESH                     10                   1      289   17298
6-24 months   JiVitA-3         BANGLADESH                     11                   0     1486   17298
6-24 months   JiVitA-3         BANGLADESH                     11                   1      299   17298
6-24 months   JiVitA-3         BANGLADESH                     12                   0     1409   17298
6-24 months   JiVitA-3         BANGLADESH                     12                   1      232   17298
6-24 months   JiVitA-4         BANGLADESH                     1                    0        0    5430
6-24 months   JiVitA-4         BANGLADESH                     1                    1        0    5430
6-24 months   JiVitA-4         BANGLADESH                     2                    0      700    5430
6-24 months   JiVitA-4         BANGLADESH                     2                    1      217    5430
6-24 months   JiVitA-4         BANGLADESH                     3                    0      753    5430
6-24 months   JiVitA-4         BANGLADESH                     3                    1      265    5430
6-24 months   JiVitA-4         BANGLADESH                     4                    0      573    5430
6-24 months   JiVitA-4         BANGLADESH                     4                    1      198    5430
6-24 months   JiVitA-4         BANGLADESH                     5                    0      467    5430
6-24 months   JiVitA-4         BANGLADESH                     5                    1      172    5430
6-24 months   JiVitA-4         BANGLADESH                     6                    0      329    5430
6-24 months   JiVitA-4         BANGLADESH                     6                    1      130    5430
6-24 months   JiVitA-4         BANGLADESH                     7                    0      402    5430
6-24 months   JiVitA-4         BANGLADESH                     7                    1      135    5430
6-24 months   JiVitA-4         BANGLADESH                     8                    0      443    5430
6-24 months   JiVitA-4         BANGLADESH                     8                    1      112    5430
6-24 months   JiVitA-4         BANGLADESH                     9                    0      312    5430
6-24 months   JiVitA-4         BANGLADESH                     9                    1       89    5430
6-24 months   JiVitA-4         BANGLADESH                     10                   0      108    5430
6-24 months   JiVitA-4         BANGLADESH                     10                   1       25    5430
6-24 months   JiVitA-4         BANGLADESH                     11                   0        0    5430
6-24 months   JiVitA-4         BANGLADESH                     11                   1        0    5430
6-24 months   JiVitA-4         BANGLADESH                     12                   0        0    5430
6-24 months   JiVitA-4         BANGLADESH                     12                   1        0    5430
6-24 months   Keneba           GAMBIA                         1                    0      183    2738
6-24 months   Keneba           GAMBIA                         1                    1       91    2738
6-24 months   Keneba           GAMBIA                         2                    0      161    2738
6-24 months   Keneba           GAMBIA                         2                    1       85    2738
6-24 months   Keneba           GAMBIA                         3                    0      206    2738
6-24 months   Keneba           GAMBIA                         3                    1       77    2738
6-24 months   Keneba           GAMBIA                         4                    0      140    2738
6-24 months   Keneba           GAMBIA                         4                    1       47    2738
6-24 months   Keneba           GAMBIA                         5                    0      142    2738
6-24 months   Keneba           GAMBIA                         5                    1       50    2738
6-24 months   Keneba           GAMBIA                         6                    0      105    2738
6-24 months   Keneba           GAMBIA                         6                    1       49    2738
6-24 months   Keneba           GAMBIA                         7                    0       90    2738
6-24 months   Keneba           GAMBIA                         7                    1       45    2738
6-24 months   Keneba           GAMBIA                         8                    0      149    2738
6-24 months   Keneba           GAMBIA                         8                    1       75    2738
6-24 months   Keneba           GAMBIA                         9                    0      158    2738
6-24 months   Keneba           GAMBIA                         9                    1       77    2738
6-24 months   Keneba           GAMBIA                         10                   0      221    2738
6-24 months   Keneba           GAMBIA                         10                   1      107    2738
6-24 months   Keneba           GAMBIA                         11                   0      168    2738
6-24 months   Keneba           GAMBIA                         11                   1       69    2738
6-24 months   Keneba           GAMBIA                         12                   0      148    2738
6-24 months   Keneba           GAMBIA                         12                   1       95    2738
6-24 months   LCNI-5           MALAWI                         1                    0       63     826
6-24 months   LCNI-5           MALAWI                         1                    1        4     826
6-24 months   LCNI-5           MALAWI                         2                    0       43     826
6-24 months   LCNI-5           MALAWI                         2                    1        3     826
6-24 months   LCNI-5           MALAWI                         3                    0       23     826
6-24 months   LCNI-5           MALAWI                         3                    1        3     826
6-24 months   LCNI-5           MALAWI                         4                    0       39     826
6-24 months   LCNI-5           MALAWI                         4                    1        0     826
6-24 months   LCNI-5           MALAWI                         5                    0       36     826
6-24 months   LCNI-5           MALAWI                         5                    1        6     826
6-24 months   LCNI-5           MALAWI                         6                    0       32     826
6-24 months   LCNI-5           MALAWI                         6                    1        2     826
6-24 months   LCNI-5           MALAWI                         7                    0       57     826
6-24 months   LCNI-5           MALAWI                         7                    1        5     826
6-24 months   LCNI-5           MALAWI                         8                    0       83     826
6-24 months   LCNI-5           MALAWI                         8                    1        9     826
6-24 months   LCNI-5           MALAWI                         9                    0       82     826
6-24 months   LCNI-5           MALAWI                         9                    1        9     826
6-24 months   LCNI-5           MALAWI                         10                   0      121     826
6-24 months   LCNI-5           MALAWI                         10                   1        9     826
6-24 months   LCNI-5           MALAWI                         11                   0       99     826
6-24 months   LCNI-5           MALAWI                         11                   1        4     826
6-24 months   LCNI-5           MALAWI                         12                   0       84     826
6-24 months   LCNI-5           MALAWI                         12                   1       10     826
6-24 months   MAL-ED           BANGLADESH                     1                    0       14     240
6-24 months   MAL-ED           BANGLADESH                     1                    1        4     240
6-24 months   MAL-ED           BANGLADESH                     2                    0       16     240
6-24 months   MAL-ED           BANGLADESH                     2                    1        4     240
6-24 months   MAL-ED           BANGLADESH                     3                    0       14     240
6-24 months   MAL-ED           BANGLADESH                     3                    1        9     240
6-24 months   MAL-ED           BANGLADESH                     4                    0       19     240
6-24 months   MAL-ED           BANGLADESH                     4                    1        3     240
6-24 months   MAL-ED           BANGLADESH                     5                    0       17     240
6-24 months   MAL-ED           BANGLADESH                     5                    1        4     240
6-24 months   MAL-ED           BANGLADESH                     6                    0        9     240
6-24 months   MAL-ED           BANGLADESH                     6                    1        1     240
6-24 months   MAL-ED           BANGLADESH                     7                    0       15     240
6-24 months   MAL-ED           BANGLADESH                     7                    1        3     240
6-24 months   MAL-ED           BANGLADESH                     8                    0       22     240
6-24 months   MAL-ED           BANGLADESH                     8                    1        1     240
6-24 months   MAL-ED           BANGLADESH                     9                    0       11     240
6-24 months   MAL-ED           BANGLADESH                     9                    1        9     240
6-24 months   MAL-ED           BANGLADESH                     10                   0       21     240
6-24 months   MAL-ED           BANGLADESH                     10                   1        1     240
6-24 months   MAL-ED           BANGLADESH                     11                   0       13     240
6-24 months   MAL-ED           BANGLADESH                     11                   1        2     240
6-24 months   MAL-ED           BANGLADESH                     12                   0       26     240
6-24 months   MAL-ED           BANGLADESH                     12                   1        2     240
6-24 months   MAL-ED           BRAZIL                         1                    0       15     207
6-24 months   MAL-ED           BRAZIL                         1                    1        0     207
6-24 months   MAL-ED           BRAZIL                         2                    0       21     207
6-24 months   MAL-ED           BRAZIL                         2                    1        1     207
6-24 months   MAL-ED           BRAZIL                         3                    0       15     207
6-24 months   MAL-ED           BRAZIL                         3                    1        1     207
6-24 months   MAL-ED           BRAZIL                         4                    0       11     207
6-24 months   MAL-ED           BRAZIL                         4                    1        0     207
6-24 months   MAL-ED           BRAZIL                         5                    0       21     207
6-24 months   MAL-ED           BRAZIL                         5                    1        0     207
6-24 months   MAL-ED           BRAZIL                         6                    0        8     207
6-24 months   MAL-ED           BRAZIL                         6                    1        0     207
6-24 months   MAL-ED           BRAZIL                         7                    0       16     207
6-24 months   MAL-ED           BRAZIL                         7                    1        0     207
6-24 months   MAL-ED           BRAZIL                         8                    0       15     207
6-24 months   MAL-ED           BRAZIL                         8                    1        1     207
6-24 months   MAL-ED           BRAZIL                         9                    0       29     207
6-24 months   MAL-ED           BRAZIL                         9                    1        1     207
6-24 months   MAL-ED           BRAZIL                         10                   0       18     207
6-24 months   MAL-ED           BRAZIL                         10                   1        1     207
6-24 months   MAL-ED           BRAZIL                         11                   0       20     207
6-24 months   MAL-ED           BRAZIL                         11                   1        1     207
6-24 months   MAL-ED           BRAZIL                         12                   0       12     207
6-24 months   MAL-ED           BRAZIL                         12                   1        0     207
6-24 months   MAL-ED           INDIA                          1                    0       14     235
6-24 months   MAL-ED           INDIA                          1                    1        5     235
6-24 months   MAL-ED           INDIA                          2                    0       17     235
6-24 months   MAL-ED           INDIA                          2                    1        1     235
6-24 months   MAL-ED           INDIA                          3                    0       17     235
6-24 months   MAL-ED           INDIA                          3                    1        5     235
6-24 months   MAL-ED           INDIA                          4                    0       10     235
6-24 months   MAL-ED           INDIA                          4                    1        4     235
6-24 months   MAL-ED           INDIA                          5                    0        5     235
6-24 months   MAL-ED           INDIA                          5                    1        3     235
6-24 months   MAL-ED           INDIA                          6                    0       14     235
6-24 months   MAL-ED           INDIA                          6                    1        5     235
6-24 months   MAL-ED           INDIA                          7                    0       14     235
6-24 months   MAL-ED           INDIA                          7                    1        9     235
6-24 months   MAL-ED           INDIA                          8                    0       15     235
6-24 months   MAL-ED           INDIA                          8                    1        7     235
6-24 months   MAL-ED           INDIA                          9                    0       14     235
6-24 months   MAL-ED           INDIA                          9                    1        6     235
6-24 months   MAL-ED           INDIA                          10                   0       21     235
6-24 months   MAL-ED           INDIA                          10                   1        5     235
6-24 months   MAL-ED           INDIA                          11                   0       14     235
6-24 months   MAL-ED           INDIA                          11                   1       11     235
6-24 months   MAL-ED           INDIA                          12                   0       16     235
6-24 months   MAL-ED           INDIA                          12                   1        3     235
6-24 months   MAL-ED           NEPAL                          1                    0       17     235
6-24 months   MAL-ED           NEPAL                          1                    1        3     235
6-24 months   MAL-ED           NEPAL                          2                    0       15     235
6-24 months   MAL-ED           NEPAL                          2                    1        4     235
6-24 months   MAL-ED           NEPAL                          3                    0       16     235
6-24 months   MAL-ED           NEPAL                          3                    1        1     235
6-24 months   MAL-ED           NEPAL                          4                    0       17     235
6-24 months   MAL-ED           NEPAL                          4                    1        5     235
6-24 months   MAL-ED           NEPAL                          5                    0       13     235
6-24 months   MAL-ED           NEPAL                          5                    1        7     235
6-24 months   MAL-ED           NEPAL                          6                    0       14     235
6-24 months   MAL-ED           NEPAL                          6                    1        4     235
6-24 months   MAL-ED           NEPAL                          7                    0       15     235
6-24 months   MAL-ED           NEPAL                          7                    1        3     235
6-24 months   MAL-ED           NEPAL                          8                    0       22     235
6-24 months   MAL-ED           NEPAL                          8                    1        2     235
6-24 months   MAL-ED           NEPAL                          9                    0       14     235
6-24 months   MAL-ED           NEPAL                          9                    1        1     235
6-24 months   MAL-ED           NEPAL                          10                   0       21     235
6-24 months   MAL-ED           NEPAL                          10                   1        0     235
6-24 months   MAL-ED           NEPAL                          11                   0       20     235
6-24 months   MAL-ED           NEPAL                          11                   1        4     235
6-24 months   MAL-ED           NEPAL                          12                   0       15     235
6-24 months   MAL-ED           NEPAL                          12                   1        2     235
6-24 months   MAL-ED           PERU                           1                    0       32     270
6-24 months   MAL-ED           PERU                           1                    1        6     270
6-24 months   MAL-ED           PERU                           2                    0       19     270
6-24 months   MAL-ED           PERU                           2                    1        0     270
6-24 months   MAL-ED           PERU                           3                    0       18     270
6-24 months   MAL-ED           PERU                           3                    1        4     270
6-24 months   MAL-ED           PERU                           4                    0       19     270
6-24 months   MAL-ED           PERU                           4                    1        0     270
6-24 months   MAL-ED           PERU                           5                    0       24     270
6-24 months   MAL-ED           PERU                           5                    1        2     270
6-24 months   MAL-ED           PERU                           6                    0       14     270
6-24 months   MAL-ED           PERU                           6                    1        1     270
6-24 months   MAL-ED           PERU                           7                    0       22     270
6-24 months   MAL-ED           PERU                           7                    1        0     270
6-24 months   MAL-ED           PERU                           8                    0       15     270
6-24 months   MAL-ED           PERU                           8                    1        1     270
6-24 months   MAL-ED           PERU                           9                    0       21     270
6-24 months   MAL-ED           PERU                           9                    1        2     270
6-24 months   MAL-ED           PERU                           10                   0       19     270
6-24 months   MAL-ED           PERU                           10                   1        0     270
6-24 months   MAL-ED           PERU                           11                   0       30     270
6-24 months   MAL-ED           PERU                           11                   1        2     270
6-24 months   MAL-ED           PERU                           12                   0       19     270
6-24 months   MAL-ED           PERU                           12                   1        0     270
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0       26     259
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1       11     259
6-24 months   MAL-ED           SOUTH AFRICA                   2                    0       22     259
6-24 months   MAL-ED           SOUTH AFRICA                   2                    1        2     259
6-24 months   MAL-ED           SOUTH AFRICA                   3                    0       14     259
6-24 months   MAL-ED           SOUTH AFRICA                   3                    1        1     259
6-24 months   MAL-ED           SOUTH AFRICA                   4                    0       11     259
6-24 months   MAL-ED           SOUTH AFRICA                   4                    1        2     259
6-24 months   MAL-ED           SOUTH AFRICA                   5                    0       11     259
6-24 months   MAL-ED           SOUTH AFRICA                   5                    1        2     259
6-24 months   MAL-ED           SOUTH AFRICA                   6                    0       16     259
6-24 months   MAL-ED           SOUTH AFRICA                   6                    1        2     259
6-24 months   MAL-ED           SOUTH AFRICA                   7                    0       22     259
6-24 months   MAL-ED           SOUTH AFRICA                   7                    1        1     259
6-24 months   MAL-ED           SOUTH AFRICA                   8                    0        9     259
6-24 months   MAL-ED           SOUTH AFRICA                   8                    1        0     259
6-24 months   MAL-ED           SOUTH AFRICA                   9                    0       16     259
6-24 months   MAL-ED           SOUTH AFRICA                   9                    1        3     259
6-24 months   MAL-ED           SOUTH AFRICA                   10                   0       23     259
6-24 months   MAL-ED           SOUTH AFRICA                   10                   1        4     259
6-24 months   MAL-ED           SOUTH AFRICA                   11                   0       22     259
6-24 months   MAL-ED           SOUTH AFRICA                   11                   1        4     259
6-24 months   MAL-ED           SOUTH AFRICA                   12                   0       30     259
6-24 months   MAL-ED           SOUTH AFRICA                   12                   1        5     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       11     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        6     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0       24     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1        6     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0       17     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    0        8     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                    1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    0       18     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                    1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    0       16     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                    1        3     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    0       22     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                    1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    0       10     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                    1        2     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    0       21     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                    1        0     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   0       21     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                   1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   0       24     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                   1        3     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   0       25     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                   1        3     245
6-24 months   NIH-Birth        BANGLADESH                     1                    0       32     542
6-24 months   NIH-Birth        BANGLADESH                     1                    1       22     542
6-24 months   NIH-Birth        BANGLADESH                     2                    0       33     542
6-24 months   NIH-Birth        BANGLADESH                     2                    1       16     542
6-24 months   NIH-Birth        BANGLADESH                     3                    0       35     542
6-24 months   NIH-Birth        BANGLADESH                     3                    1       16     542
6-24 months   NIH-Birth        BANGLADESH                     4                    0       33     542
6-24 months   NIH-Birth        BANGLADESH                     4                    1       10     542
6-24 months   NIH-Birth        BANGLADESH                     5                    0       33     542
6-24 months   NIH-Birth        BANGLADESH                     5                    1       11     542
6-24 months   NIH-Birth        BANGLADESH                     6                    0       32     542
6-24 months   NIH-Birth        BANGLADESH                     6                    1       12     542
6-24 months   NIH-Birth        BANGLADESH                     7                    0       28     542
6-24 months   NIH-Birth        BANGLADESH                     7                    1       11     542
6-24 months   NIH-Birth        BANGLADESH                     8                    0       23     542
6-24 months   NIH-Birth        BANGLADESH                     8                    1       11     542
6-24 months   NIH-Birth        BANGLADESH                     9                    0       33     542
6-24 months   NIH-Birth        BANGLADESH                     9                    1        8     542
6-24 months   NIH-Birth        BANGLADESH                     10                   0       30     542
6-24 months   NIH-Birth        BANGLADESH                     10                   1       13     542
6-24 months   NIH-Birth        BANGLADESH                     11                   0       36     542
6-24 months   NIH-Birth        BANGLADESH                     11                   1       13     542
6-24 months   NIH-Birth        BANGLADESH                     12                   0       35     542
6-24 months   NIH-Birth        BANGLADESH                     12                   1       16     542
6-24 months   PROBIT           BELARUS                        1                    0     1002   16598
6-24 months   PROBIT           BELARUS                        1                    1       10   16598
6-24 months   PROBIT           BELARUS                        2                    0      963   16598
6-24 months   PROBIT           BELARUS                        2                    1        7   16598
6-24 months   PROBIT           BELARUS                        3                    0     1122   16598
6-24 months   PROBIT           BELARUS                        3                    1        7   16598
6-24 months   PROBIT           BELARUS                        4                    0     1135   16598
6-24 months   PROBIT           BELARUS                        4                    1        8   16598
6-24 months   PROBIT           BELARUS                        5                    0     1139   16598
6-24 months   PROBIT           BELARUS                        5                    1        8   16598
6-24 months   PROBIT           BELARUS                        6                    0     1184   16598
6-24 months   PROBIT           BELARUS                        6                    1        8   16598
6-24 months   PROBIT           BELARUS                        7                    0     1549   16598
6-24 months   PROBIT           BELARUS                        7                    1        5   16598
6-24 months   PROBIT           BELARUS                        8                    0     1555   16598
6-24 months   PROBIT           BELARUS                        8                    1        9   16598
6-24 months   PROBIT           BELARUS                        9                    0     1570   16598
6-24 months   PROBIT           BELARUS                        9                    1       15   16598
6-24 months   PROBIT           BELARUS                        10                   0     1770   16598
6-24 months   PROBIT           BELARUS                        10                   1       22   16598
6-24 months   PROBIT           BELARUS                        11                   0     1655   16598
6-24 months   PROBIT           BELARUS                        11                   1       19   16598
6-24 months   PROBIT           BELARUS                        12                   0     1815   16598
6-24 months   PROBIT           BELARUS                        12                   1       21   16598
6-24 months   PROVIDE          BANGLADESH                     1                    0       29     615
6-24 months   PROVIDE          BANGLADESH                     1                    1        7     615
6-24 months   PROVIDE          BANGLADESH                     2                    0       29     615
6-24 months   PROVIDE          BANGLADESH                     2                    1        5     615
6-24 months   PROVIDE          BANGLADESH                     3                    0       35     615
6-24 months   PROVIDE          BANGLADESH                     3                    1        9     615
6-24 months   PROVIDE          BANGLADESH                     4                    0       28     615
6-24 months   PROVIDE          BANGLADESH                     4                    1        8     615
6-24 months   PROVIDE          BANGLADESH                     5                    0       38     615
6-24 months   PROVIDE          BANGLADESH                     5                    1        6     615
6-24 months   PROVIDE          BANGLADESH                     6                    0       64     615
6-24 months   PROVIDE          BANGLADESH                     6                    1       14     615
6-24 months   PROVIDE          BANGLADESH                     7                    0       65     615
6-24 months   PROVIDE          BANGLADESH                     7                    1       11     615
6-24 months   PROVIDE          BANGLADESH                     8                    0       49     615
6-24 months   PROVIDE          BANGLADESH                     8                    1       13     615
6-24 months   PROVIDE          BANGLADESH                     9                    0       63     615
6-24 months   PROVIDE          BANGLADESH                     9                    1        6     615
6-24 months   PROVIDE          BANGLADESH                     10                   0       57     615
6-24 months   PROVIDE          BANGLADESH                     10                   1       11     615
6-24 months   PROVIDE          BANGLADESH                     11                   0       37     615
6-24 months   PROVIDE          BANGLADESH                     11                   1        2     615
6-24 months   PROVIDE          BANGLADESH                     12                   0       22     615
6-24 months   PROVIDE          BANGLADESH                     12                   1        7     615
6-24 months   ResPak           PAKISTAN                       1                    0       12     236
6-24 months   ResPak           PAKISTAN                       1                    1        0     236
6-24 months   ResPak           PAKISTAN                       2                    0        4     236
6-24 months   ResPak           PAKISTAN                       2                    1        5     236
6-24 months   ResPak           PAKISTAN                       3                    0       19     236
6-24 months   ResPak           PAKISTAN                       3                    1        8     236
6-24 months   ResPak           PAKISTAN                       4                    0        9     236
6-24 months   ResPak           PAKISTAN                       4                    1       10     236
6-24 months   ResPak           PAKISTAN                       5                    0       27     236
6-24 months   ResPak           PAKISTAN                       5                    1       19     236
6-24 months   ResPak           PAKISTAN                       6                    0       26     236
6-24 months   ResPak           PAKISTAN                       6                    1       14     236
6-24 months   ResPak           PAKISTAN                       7                    0       14     236
6-24 months   ResPak           PAKISTAN                       7                    1       10     236
6-24 months   ResPak           PAKISTAN                       8                    0       23     236
6-24 months   ResPak           PAKISTAN                       8                    1       10     236
6-24 months   ResPak           PAKISTAN                       9                    0        9     236
6-24 months   ResPak           PAKISTAN                       9                    1        7     236
6-24 months   ResPak           PAKISTAN                       10                   0        4     236
6-24 months   ResPak           PAKISTAN                       10                   1        1     236
6-24 months   ResPak           PAKISTAN                       11                   0        1     236
6-24 months   ResPak           PAKISTAN                       11                   1        1     236
6-24 months   ResPak           PAKISTAN                       12                   0        2     236
6-24 months   ResPak           PAKISTAN                       12                   1        1     236
6-24 months   SAS-CompFeed     INDIA                          1                    0       70    1389
6-24 months   SAS-CompFeed     INDIA                          1                    1       26    1389
6-24 months   SAS-CompFeed     INDIA                          2                    0       64    1389
6-24 months   SAS-CompFeed     INDIA                          2                    1       18    1389
6-24 months   SAS-CompFeed     INDIA                          3                    0       54    1389
6-24 months   SAS-CompFeed     INDIA                          3                    1       23    1389
6-24 months   SAS-CompFeed     INDIA                          4                    0       47    1389
6-24 months   SAS-CompFeed     INDIA                          4                    1       21    1389
6-24 months   SAS-CompFeed     INDIA                          5                    0       65    1389
6-24 months   SAS-CompFeed     INDIA                          5                    1       28    1389
6-24 months   SAS-CompFeed     INDIA                          6                    0       67    1389
6-24 months   SAS-CompFeed     INDIA                          6                    1       32    1389
6-24 months   SAS-CompFeed     INDIA                          7                    0       82    1389
6-24 months   SAS-CompFeed     INDIA                          7                    1       43    1389
6-24 months   SAS-CompFeed     INDIA                          8                    0      112    1389
6-24 months   SAS-CompFeed     INDIA                          8                    1       55    1389
6-24 months   SAS-CompFeed     INDIA                          9                    0      121    1389
6-24 months   SAS-CompFeed     INDIA                          9                    1       57    1389
6-24 months   SAS-CompFeed     INDIA                          10                   0      105    1389
6-24 months   SAS-CompFeed     INDIA                          10                   1       45    1389
6-24 months   SAS-CompFeed     INDIA                          11                   0       79    1389
6-24 months   SAS-CompFeed     INDIA                          11                   1       45    1389
6-24 months   SAS-CompFeed     INDIA                          12                   0       98    1389
6-24 months   SAS-CompFeed     INDIA                          12                   1       32    1389
6-24 months   SAS-FoodSuppl    INDIA                          1                    0       17     402
6-24 months   SAS-FoodSuppl    INDIA                          1                    1        9     402
6-24 months   SAS-FoodSuppl    INDIA                          2                    0       21     402
6-24 months   SAS-FoodSuppl    INDIA                          2                    1       14     402
6-24 months   SAS-FoodSuppl    INDIA                          3                    0       13     402
6-24 months   SAS-FoodSuppl    INDIA                          3                    1        8     402
6-24 months   SAS-FoodSuppl    INDIA                          4                    0        4     402
6-24 months   SAS-FoodSuppl    INDIA                          4                    1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          5                    0        7     402
6-24 months   SAS-FoodSuppl    INDIA                          5                    1        5     402
6-24 months   SAS-FoodSuppl    INDIA                          6                    0       20     402
6-24 months   SAS-FoodSuppl    INDIA                          6                    1        5     402
6-24 months   SAS-FoodSuppl    INDIA                          7                    0       21     402
6-24 months   SAS-FoodSuppl    INDIA                          7                    1       15     402
6-24 months   SAS-FoodSuppl    INDIA                          8                    0       45     402
6-24 months   SAS-FoodSuppl    INDIA                          8                    1       20     402
6-24 months   SAS-FoodSuppl    INDIA                          9                    0       37     402
6-24 months   SAS-FoodSuppl    INDIA                          9                    1       25     402
6-24 months   SAS-FoodSuppl    INDIA                          10                   0       30     402
6-24 months   SAS-FoodSuppl    INDIA                          10                   1       18     402
6-24 months   SAS-FoodSuppl    INDIA                          11                   0       22     402
6-24 months   SAS-FoodSuppl    INDIA                          11                   1        9     402
6-24 months   SAS-FoodSuppl    INDIA                          12                   0       22     402
6-24 months   SAS-FoodSuppl    INDIA                          12                   1       15     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      107    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       32    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      133    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       19    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0      121    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       19    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0      128    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       19    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0      126    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       23    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0      115    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       25    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0      168    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       28    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0      166    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       36    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0      153    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       31    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0      176    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       32    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0      160    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       32    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0      141    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       28    2018
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0      956   10815
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1      105   10815
6-24 months   ZVITAMBO         ZIMBABWE                       2                    0      755   10815
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1       79   10815
6-24 months   ZVITAMBO         ZIMBABWE                       3                    0      811   10815
6-24 months   ZVITAMBO         ZIMBABWE                       3                    1      106   10815
6-24 months   ZVITAMBO         ZIMBABWE                       4                    0      711   10815
6-24 months   ZVITAMBO         ZIMBABWE                       4                    1       74   10815
6-24 months   ZVITAMBO         ZIMBABWE                       5                    0      699   10815
6-24 months   ZVITAMBO         ZIMBABWE                       5                    1       82   10815
6-24 months   ZVITAMBO         ZIMBABWE                       6                    0      799   10815
6-24 months   ZVITAMBO         ZIMBABWE                       6                    1       83   10815
6-24 months   ZVITAMBO         ZIMBABWE                       7                    0      818   10815
6-24 months   ZVITAMBO         ZIMBABWE                       7                    1       76   10815
6-24 months   ZVITAMBO         ZIMBABWE                       8                    0      862   10815
6-24 months   ZVITAMBO         ZIMBABWE                       8                    1       87   10815
6-24 months   ZVITAMBO         ZIMBABWE                       9                    0      943   10815
6-24 months   ZVITAMBO         ZIMBABWE                       9                    1       63   10815
6-24 months   ZVITAMBO         ZIMBABWE                       10                   0      705   10815
6-24 months   ZVITAMBO         ZIMBABWE                       10                   1       84   10815
6-24 months   ZVITAMBO         ZIMBABWE                       11                   0      841   10815
6-24 months   ZVITAMBO         ZIMBABWE                       11                   1       94   10815
6-24 months   ZVITAMBO         ZIMBABWE                       12                   0      878   10815
6-24 months   ZVITAMBO         ZIMBABWE                       12                   1      104   10815


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ace5a661-0396-41e3-ae43-bf396e3affaa/3fc322f7-c982-4192-a0d0-90a95db47999/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ace5a661-0396-41e3-ae43-bf396e3affaa/3fc322f7-c982-4192-a0d0-90a95db47999/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ace5a661-0396-41e3-ae43-bf396e3affaa/3fc322f7-c982-4192-a0d0-90a95db47999/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ace5a661-0396-41e3-ae43-bf396e3affaa/3fc322f7-c982-4192-a0d0-90a95db47999/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   CMIN             BANGLADESH                     1                    NA                0.3571429    0.1793366   0.5349491
0-24 months   CMIN             BANGLADESH                     2                    NA                0.4444444    0.2566691   0.6322198
0-24 months   CMIN             BANGLADESH                     3                    NA                0.5500000    0.3315659   0.7684341
0-24 months   CMIN             BANGLADESH                     4                    NA                0.5000000    0.2906820   0.7093180
0-24 months   CMIN             BANGLADESH                     5                    NA                0.2500000    0.0598775   0.4401225
0-24 months   CMIN             BANGLADESH                     6                    NA                0.5000000    0.1895312   0.8104688
0-24 months   CMIN             BANGLADESH                     7                    NA                0.2941176    0.0771224   0.5111129
0-24 months   CMIN             BANGLADESH                     8                    NA                0.4090909    0.2032618   0.6149200
0-24 months   CMIN             BANGLADESH                     9                    NA                0.3181818    0.1231935   0.5131701
0-24 months   CMIN             BANGLADESH                     10                   NA                0.5925926    0.4069154   0.7782698
0-24 months   CMIN             BANGLADESH                     11                   NA                0.6206897    0.4437670   0.7976123
0-24 months   CMIN             BANGLADESH                     12                   NA                0.5357143    0.3506476   0.7207809
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2414861    0.1966775   0.2862946
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2265193    0.1563997   0.2966390
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    NA                0.2538071    0.1810169   0.3265973
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    NA                0.2631579    0.1834057   0.3429101
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    NA                0.2110092    0.1452220   0.2767964
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    NA                0.2135417    0.1290500   0.2980333
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    NA                0.2397959    0.1522804   0.3273114
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    NA                0.2046205    0.1460089   0.2632320
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    NA                0.2603406    0.1912506   0.3294306
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   NA                0.2258065    0.1670389   0.2845740
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   NA                0.2536443    0.1759522   0.3313365
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1838006    0.0622195   0.3053817
0-24 months   IRC              INDIA                          1                    NA                0.5789474    0.4217757   0.7361191
0-24 months   IRC              INDIA                          2                    NA                0.6071429    0.4260246   0.7882611
0-24 months   IRC              INDIA                          3                    NA                0.6296296    0.4472580   0.8120012
0-24 months   IRC              INDIA                          4                    NA                0.7142857    0.5208348   0.9077366
0-24 months   IRC              INDIA                          5                    NA                0.7727273    0.5973983   0.9480563
0-24 months   IRC              INDIA                          6                    NA                0.6486486    0.4946372   0.8026601
0-24 months   IRC              INDIA                          7                    NA                0.7500000    0.6083790   0.8916210
0-24 months   IRC              INDIA                          8                    NA                0.6363636    0.4940527   0.7786746
0-24 months   IRC              INDIA                          9                    NA                0.6666667    0.4886379   0.8446955
0-24 months   IRC              INDIA                          10                   NA                0.6842105    0.5362383   0.8321828
0-24 months   IRC              INDIA                          11                   NA                0.5750000    0.4216172   0.7283828
0-24 months   IRC              INDIA                          12                   NA                0.6730769    0.5454237   0.8007302
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2333867    0.2150308   0.2517427
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.2388862    0.2189078   0.2588646
0-24 months   JiVitA-3         BANGLADESH                     3                    NA                0.2326159    0.2151215   0.2501103
0-24 months   JiVitA-3         BANGLADESH                     4                    NA                0.2737020    0.2519599   0.2954442
0-24 months   JiVitA-3         BANGLADESH                     5                    NA                0.3075758    0.2797858   0.3353658
0-24 months   JiVitA-3         BANGLADESH                     6                    NA                0.2944564    0.2693057   0.3196071
0-24 months   JiVitA-3         BANGLADESH                     7                    NA                0.2750643    0.2515918   0.2985367
0-24 months   JiVitA-3         BANGLADESH                     8                    NA                0.2804133    0.2605180   0.3003087
0-24 months   JiVitA-3         BANGLADESH                     9                    NA                0.2715160    0.2534648   0.2895672
0-24 months   JiVitA-3         BANGLADESH                     10                   NA                0.2577355    0.2400492   0.2754217
0-24 months   JiVitA-3         BANGLADESH                     11                   NA                0.2540738    0.2375243   0.2706234
0-24 months   JiVitA-3         BANGLADESH                     12                   NA                0.2319588    0.2162667   0.2476508
0-24 months   Keneba           GAMBIA                         1                    NA                0.4594595    0.4026770   0.5162419
0-24 months   Keneba           GAMBIA                         2                    NA                0.4573643    0.3965651   0.5181636
0-24 months   Keneba           GAMBIA                         3                    NA                0.3921569    0.3374443   0.4468695
0-24 months   Keneba           GAMBIA                         4                    NA                0.3857868    0.3178003   0.4537733
0-24 months   Keneba           GAMBIA                         5                    NA                0.4088670    0.3412263   0.4765077
0-24 months   Keneba           GAMBIA                         6                    NA                0.4146341    0.3392211   0.4900472
0-24 months   Keneba           GAMBIA                         7                    NA                0.4468085    0.3647334   0.5288836
0-24 months   Keneba           GAMBIA                         8                    NA                0.4830508    0.4192852   0.5468165
0-24 months   Keneba           GAMBIA                         9                    NA                0.4624506    0.4010031   0.5238981
0-24 months   Keneba           GAMBIA                         10                   NA                0.4232955    0.3716717   0.4749192
0-24 months   Keneba           GAMBIA                         11                   NA                0.4039216    0.3436861   0.4641571
0-24 months   Keneba           GAMBIA                         12                   NA                0.5057915    0.4448920   0.5666910
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.5205479    0.4058547   0.6352412
0-24 months   NIH-Birth        BANGLADESH                     2                    NA                0.5087719    0.3788860   0.6386579
0-24 months   NIH-Birth        BANGLADESH                     3                    NA                0.5423729    0.4151471   0.6695987
0-24 months   NIH-Birth        BANGLADESH                     4                    NA                0.4230769    0.2886880   0.5574658
0-24 months   NIH-Birth        BANGLADESH                     5                    NA                0.4489796    0.3096012   0.5883580
0-24 months   NIH-Birth        BANGLADESH                     6                    NA                0.5400000    0.4017430   0.6782570
0-24 months   NIH-Birth        BANGLADESH                     7                    NA                0.5609756    0.4089486   0.7130026
0-24 months   NIH-Birth        BANGLADESH                     8                    NA                0.5128205    0.3558236   0.6698175
0-24 months   NIH-Birth        BANGLADESH                     9                    NA                0.4042553    0.2638429   0.5446677
0-24 months   NIH-Birth        BANGLADESH                     10                   NA                0.3877551    0.2512215   0.5242887
0-24 months   NIH-Birth        BANGLADESH                     11                   NA                0.4716981    0.3371952   0.6062010
0-24 months   NIH-Birth        BANGLADESH                     12                   NA                0.4000000    0.2704252   0.5295748
0-24 months   PROBIT           BELARUS                        1                    NA                0.2553606    0.1755465   0.3351747
0-24 months   PROBIT           BELARUS                        2                    NA                0.2217701    0.1508711   0.2926691
0-24 months   PROBIT           BELARUS                        3                    NA                0.2489083    0.1816686   0.3161480
0-24 months   PROBIT           BELARUS                        4                    NA                0.2536543    0.1756225   0.3316862
0-24 months   PROBIT           BELARUS                        5                    NA                0.2870528    0.2116591   0.3624465
0-24 months   PROBIT           BELARUS                        6                    NA                0.2683732    0.2037791   0.3329674
0-24 months   PROBIT           BELARUS                        7                    NA                0.2691824    0.2006552   0.3377096
0-24 months   PROBIT           BELARUS                        8                    NA                0.2764484    0.2107126   0.3421841
0-24 months   PROBIT           BELARUS                        9                    NA                0.2372465    0.1742500   0.3002430
0-24 months   PROBIT           BELARUS                        10                   NA                0.2688705    0.2101314   0.3276097
0-24 months   PROBIT           BELARUS                        11                   NA                0.2326675    0.1783503   0.2869846
0-24 months   PROBIT           BELARUS                        12                   NA                0.2438634    0.1809735   0.3067533
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2105263    0.0808117   0.3402409
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.3428571    0.1854911   0.5002232
0-24 months   PROVIDE          BANGLADESH                     3                    NA                0.3207547    0.1950011   0.4465083
0-24 months   PROVIDE          BANGLADESH                     4                    NA                0.3333333    0.1852794   0.4813873
0-24 months   PROVIDE          BANGLADESH                     5                    NA                0.4230769    0.2886998   0.5574541
0-24 months   PROVIDE          BANGLADESH                     6                    NA                0.3404255    0.2445655   0.4362856
0-24 months   PROVIDE          BANGLADESH                     7                    NA                0.4130435    0.3123583   0.5137286
0-24 months   PROVIDE          BANGLADESH                     8                    NA                0.4782609    0.3603122   0.5962096
0-24 months   PROVIDE          BANGLADESH                     9                    NA                0.3157895    0.2112102   0.4203687
0-24 months   PROVIDE          BANGLADESH                     10                   NA                0.3670886    0.2607228   0.4734544
0-24 months   PROVIDE          BANGLADESH                     11                   NA                0.1904762    0.0716344   0.3093179
0-24 months   PROVIDE          BANGLADESH                     12                   NA                0.3225806    0.1579064   0.4872549
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.4054054    0.3471898   0.4636211
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.3222222    0.2151731   0.4292713
0-24 months   SAS-CompFeed     INDIA                          3                    NA                0.4074074    0.2830856   0.5317292
0-24 months   SAS-CompFeed     INDIA                          4                    NA                0.4459459    0.3540735   0.5378184
0-24 months   SAS-CompFeed     INDIA                          5                    NA                0.4545455    0.3896936   0.5193973
0-24 months   SAS-CompFeed     INDIA                          6                    NA                0.4954128    0.4080359   0.5827898
0-24 months   SAS-CompFeed     INDIA                          7                    NA                0.3823529    0.2568594   0.5078465
0-24 months   SAS-CompFeed     INDIA                          8                    NA                0.4078212    0.3185845   0.4970580
0-24 months   SAS-CompFeed     INDIA                          9                    NA                0.4031414    0.3162761   0.4900066
0-24 months   SAS-CompFeed     INDIA                          10                   NA                0.4727273    0.3441071   0.6013474
0-24 months   SAS-CompFeed     INDIA                          11                   NA                0.4428571    0.3830563   0.5026580
0-24 months   SAS-CompFeed     INDIA                          12                   NA                0.3405797    0.2402558   0.4409037
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2923977    0.2242074   0.3605879
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2640449    0.1992720   0.3288178
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2073171    0.1452610   0.2693731
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1578947    0.1060352   0.2097543
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1837838    0.1279613   0.2396063
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2228916    0.1595670   0.2862161
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2477064    0.1903908   0.3050220
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2629310    0.2062719   0.3195901
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2175926    0.1625561   0.2726290
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2680000    0.2130849   0.3229151
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2443439    0.1876801   0.3010077
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2487805    0.1895898   0.3079712
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2275093    0.2051041   0.2499145
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.2140845    0.1894486   0.2387205
0-24 months   ZVITAMBO         ZIMBABWE                       3                    NA                0.2325777    0.2085833   0.2565720
0-24 months   ZVITAMBO         ZIMBABWE                       4                    NA                0.2090452    0.1837786   0.2343119
0-24 months   ZVITAMBO         ZIMBABWE                       5                    NA                0.2235180    0.1980627   0.2489733
0-24 months   ZVITAMBO         ZIMBABWE                       6                    NA                0.2543706    0.2291332   0.2796081
0-24 months   ZVITAMBO         ZIMBABWE                       7                    NA                0.2690660    0.2436213   0.2945106
0-24 months   ZVITAMBO         ZIMBABWE                       8                    NA                0.2557769    0.2316376   0.2799162
0-24 months   ZVITAMBO         ZIMBABWE                       9                    NA                0.2091049    0.1869637   0.2312462
0-24 months   ZVITAMBO         ZIMBABWE                       10                   NA                0.2435530    0.2175528   0.2695532
0-24 months   ZVITAMBO         ZIMBABWE                       11                   NA                0.2518892    0.2272347   0.2765436
0-24 months   ZVITAMBO         ZIMBABWE                       12                   NA                0.2457002    0.2215523   0.2698482
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.4411765    0.2740509   0.6083021
0-6 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.5333333    0.2805223   0.7861444
0-6 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.5161290    0.3399712   0.6922869
0-6 months    CMC-V-BCS-2002   INDIA                          4                    NA                0.4318182    0.2852611   0.5783752
0-6 months    CMC-V-BCS-2002   INDIA                          5                    NA                0.5555556    0.3930156   0.7180955
0-6 months    CMC-V-BCS-2002   INDIA                          6                    NA                0.6111111    0.4516479   0.7705743
0-6 months    CMC-V-BCS-2002   INDIA                          7                    NA                0.3333333    0.1851838   0.4814829
0-6 months    CMC-V-BCS-2002   INDIA                          8                    NA                0.5882353    0.3539664   0.8225042
0-6 months    CMC-V-BCS-2002   INDIA                          9                    NA                0.5238095    0.3099117   0.7377073
0-6 months    CMC-V-BCS-2002   INDIA                          10                   NA                0.5862069    0.4067100   0.7657038
0-6 months    CMC-V-BCS-2002   INDIA                          11                   NA                0.6097561    0.4602382   0.7592740
0-6 months    CMC-V-BCS-2002   INDIA                          12                   NA                0.5600000    0.3651550   0.7548450
0-6 months    IRC              INDIA                          1                    NA                0.4210526    0.2638809   0.5782243
0-6 months    IRC              INDIA                          2                    NA                0.4285714    0.2450478   0.6120950
0-6 months    IRC              INDIA                          3                    NA                0.5925926    0.4070306   0.7781546
0-6 months    IRC              INDIA                          4                    NA                0.4761905    0.2623225   0.6900585
0-6 months    IRC              INDIA                          5                    NA                0.5454545    0.3371326   0.7537765
0-6 months    IRC              INDIA                          6                    NA                0.5675676    0.4077423   0.7273928
0-6 months    IRC              INDIA                          7                    NA                0.6666667    0.5124892   0.8208441
0-6 months    IRC              INDIA                          8                    NA                0.5454545    0.3981487   0.6927604
0-6 months    IRC              INDIA                          9                    NA                0.4814815    0.2927830   0.6701800
0-6 months    IRC              INDIA                          10                   NA                0.6052632    0.4496621   0.7608642
0-6 months    IRC              INDIA                          11                   NA                0.5000000    0.3448619   0.6551381
0-6 months    IRC              INDIA                          12                   NA                0.6153846    0.4829921   0.7477771
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1678715    0.1517697   0.1839733
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.1754902    0.1575070   0.1934734
0-6 months    JiVitA-3         BANGLADESH                     3                    NA                0.1703980    0.1546827   0.1861133
0-6 months    JiVitA-3         BANGLADESH                     4                    NA                0.1862967    0.1676635   0.2049299
0-6 months    JiVitA-3         BANGLADESH                     5                    NA                0.1736481    0.1520247   0.1952716
0-6 months    JiVitA-3         BANGLADESH                     6                    NA                0.1725888    0.1495742   0.1956034
0-6 months    JiVitA-3         BANGLADESH                     7                    NA                0.1557272    0.1370339   0.1744204
0-6 months    JiVitA-3         BANGLADESH                     8                    NA                0.1764706    0.1594818   0.1934594
0-6 months    JiVitA-3         BANGLADESH                     9                    NA                0.1952278    0.1786384   0.2118171
0-6 months    JiVitA-3         BANGLADESH                     10                   NA                0.1830601    0.1679727   0.1981475
0-6 months    JiVitA-3         BANGLADESH                     11                   NA                0.1757434    0.1613879   0.1900989
0-6 months    JiVitA-3         BANGLADESH                     12                   NA                0.1716780    0.1574146   0.1859414
0-6 months    Keneba           GAMBIA                         1                    NA                0.2846154    0.2297563   0.3394745
0-6 months    Keneba           GAMBIA                         2                    NA                0.2995392    0.2385820   0.3604964
0-6 months    Keneba           GAMBIA                         3                    NA                0.2633588    0.2100146   0.3167030
0-6 months    Keneba           GAMBIA                         4                    NA                0.2634731    0.1966478   0.3302983
0-6 months    Keneba           GAMBIA                         5                    NA                0.2559524    0.1899497   0.3219550
0-6 months    Keneba           GAMBIA                         6                    NA                0.2340426    0.1641427   0.3039424
0-6 months    Keneba           GAMBIA                         7                    NA                0.3333333    0.2431481   0.4235185
0-6 months    Keneba           GAMBIA                         8                    NA                0.3350254    0.2691012   0.4009495
0-6 months    Keneba           GAMBIA                         9                    NA                0.2943925    0.2333160   0.3554690
0-6 months    Keneba           GAMBIA                         10                   NA                0.2294521    0.1812139   0.2776902
0-6 months    Keneba           GAMBIA                         11                   NA                0.2568807    0.1988707   0.3148907
0-6 months    Keneba           GAMBIA                         12                   NA                0.2622222    0.2047388   0.3197056
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                0.3888889    0.2761940   0.5015837
0-6 months    NIH-Birth        BANGLADESH                     2                    NA                0.3859649    0.2594824   0.5124474
0-6 months    NIH-Birth        BANGLADESH                     3                    NA                0.4067797    0.2813330   0.5322263
0-6 months    NIH-Birth        BANGLADESH                     4                    NA                0.4117647    0.2765847   0.5469447
0-6 months    NIH-Birth        BANGLADESH                     5                    NA                0.4081633    0.2704368   0.5458897
0-6 months    NIH-Birth        BANGLADESH                     6                    NA                0.4000000    0.2641004   0.5358996
0-6 months    NIH-Birth        BANGLADESH                     7                    NA                0.4390244    0.2869970   0.5910518
0-6 months    NIH-Birth        BANGLADESH                     8                    NA                0.3846154    0.2318054   0.5374254
0-6 months    NIH-Birth        BANGLADESH                     9                    NA                0.3404255    0.2048468   0.4760043
0-6 months    NIH-Birth        BANGLADESH                     10                   NA                0.2653061    0.1415900   0.3890222
0-6 months    NIH-Birth        BANGLADESH                     11                   NA                0.2830189    0.1616461   0.4043916
0-6 months    NIH-Birth        BANGLADESH                     12                   NA                0.1818182    0.0798042   0.2838322
0-6 months    PROBIT           BELARUS                        1                    NA                0.2497561    0.1674814   0.3320308
0-6 months    PROBIT           BELARUS                        2                    NA                0.2156663    0.1443597   0.2869730
0-6 months    PROBIT           BELARUS                        3                    NA                0.2427948    0.1751659   0.3104236
0-6 months    PROBIT           BELARUS                        4                    NA                0.2497847    0.1711394   0.3284299
0-6 months    PROBIT           BELARUS                        5                    NA                0.2819421    0.2064196   0.3574645
0-6 months    PROBIT           BELARUS                        6                    NA                0.2634187    0.1987271   0.3281102
0-6 months    PROBIT           BELARUS                        7                    NA                0.2685535    0.1997794   0.3373275
0-6 months    PROBIT           BELARUS                        8                    NA                0.2720403    0.2074041   0.3366765
0-6 months    PROBIT           BELARUS                        9                    NA                0.2311002    0.1686390   0.2935614
0-6 months    PROBIT           BELARUS                        10                   NA                0.2617080    0.2028081   0.3206079
0-6 months    PROBIT           BELARUS                        11                   NA                0.2250294    0.1724112   0.2776475
0-6 months    PROBIT           BELARUS                        12                   NA                0.2374600    0.1738999   0.3010200
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.2752294    0.1878603   0.3625984
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.1888889    0.1074263   0.2703515
0-6 months    SAS-CompFeed     INDIA                          3                    NA                0.2222222    0.0932523   0.3511921
0-6 months    SAS-CompFeed     INDIA                          4                    NA                0.2567568    0.1496918   0.3638217
0-6 months    SAS-CompFeed     INDIA                          5                    NA                0.3232323    0.2627271   0.3837375
0-6 months    SAS-CompFeed     INDIA                          6                    NA                0.3027523    0.2330140   0.3724906
0-6 months    SAS-CompFeed     INDIA                          7                    NA                0.1567164    0.0861394   0.2272935
0-6 months    SAS-CompFeed     INDIA                          8                    NA                0.1731844    0.1227828   0.2235859
0-6 months    SAS-CompFeed     INDIA                          9                    NA                0.1851852    0.1242599   0.2461104
0-6 months    SAS-CompFeed     INDIA                          10                   NA                0.2682927    0.1722268   0.3643586
0-6 months    SAS-CompFeed     INDIA                          11                   NA                0.1928571    0.1062508   0.2794635
0-6 months    SAS-CompFeed     INDIA                          12                   NA                0.1751825    0.0837077   0.2666572
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1637427    0.1082684   0.2192170
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1685393    0.1135346   0.2235441
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1219512    0.0718591   0.1720433
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0736842    0.0365282   0.1108402
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0864865    0.0459744   0.1269986
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1265060    0.0759270   0.1770850
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1605505    0.1118073   0.2092936
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1637931    0.1161610   0.2114252
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1018519    0.0615087   0.1421950
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1760000    0.1287841   0.2232159
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1493213    0.1023225   0.1963200
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1560976    0.1064033   0.2057918
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1700527    0.1498542   0.1902511
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1631679    0.1407952   0.1855407
0-6 months    ZVITAMBO         ZIMBABWE                       3                    NA                0.1653944    0.1441860   0.1866028
0-6 months    ZVITAMBO         ZIMBABWE                       4                    NA                0.1454545    0.1234923   0.1674168
0-6 months    ZVITAMBO         ZIMBABWE                       5                    NA                0.1576885    0.1353329   0.1800442
0-6 months    ZVITAMBO         ZIMBABWE                       6                    NA                0.1982456    0.1751019   0.2213894
0-6 months    ZVITAMBO         ZIMBABWE                       7                    NA                0.2242268    0.2002662   0.2481874
0-6 months    ZVITAMBO         ZIMBABWE                       8                    NA                0.2030376    0.1807459   0.2253292
0-6 months    ZVITAMBO         ZIMBABWE                       9                    NA                0.1742835    0.1535895   0.1949775
0-6 months    ZVITAMBO         ZIMBABWE                       10                   NA                0.1826923    0.1592068   0.2061778
0-6 months    ZVITAMBO         ZIMBABWE                       11                   NA                0.1972904    0.1745933   0.2199876
0-6 months    ZVITAMBO         ZIMBABWE                       12                   NA                0.1829368    0.1612328   0.2046409
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2414861    0.1966775   0.2862946
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2265193    0.1563997   0.2966390
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                    NA                0.2538071    0.1810169   0.3265973
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                    NA                0.2631579    0.1834057   0.3429101
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                    NA                0.2110092    0.1452220   0.2767964
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                    NA                0.2135417    0.1290500   0.2980333
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                    NA                0.2397959    0.1522804   0.3273114
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                    NA                0.2046205    0.1460089   0.2632320
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                    NA                0.2603406    0.1912506   0.3294306
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                   NA                0.2258065    0.1670389   0.2845740
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                   NA                0.2536443    0.1759522   0.3313365
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1838006    0.0622195   0.3053817
6-24 months   IRC              INDIA                          1                    NA                0.3421053    0.1910817   0.4931288
6-24 months   IRC              INDIA                          2                    NA                0.3214286    0.1482320   0.4946252
6-24 months   IRC              INDIA                          3                    NA                0.1851852    0.0384855   0.3318848
6-24 months   IRC              INDIA                          4                    NA                0.3809524    0.1729989   0.5889058
6-24 months   IRC              INDIA                          5                    NA                0.4090909    0.2033895   0.6147923
6-24 months   IRC              INDIA                          6                    NA                0.3243243    0.1733036   0.4753450
6-24 months   IRC              INDIA                          7                    NA                0.3611111    0.2040169   0.5182053
6-24 months   IRC              INDIA                          8                    NA                0.2954545    0.1604800   0.4304291
6-24 months   IRC              INDIA                          9                    NA                0.3703704    0.1879988   0.5527420
6-24 months   IRC              INDIA                          10                   NA                0.4210526    0.2638809   0.5782243
6-24 months   IRC              INDIA                          11                   NA                0.2000000    0.0758895   0.3241105
6-24 months   IRC              INDIA                          12                   NA                0.2115385    0.1004007   0.3226762
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1473149    0.1278181   0.1668118
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.1437025    0.1239184   0.1634865
6-24 months   JiVitA-3         BANGLADESH                     3                    NA                0.1321918    0.1137764   0.1506072
6-24 months   JiVitA-3         BANGLADESH                     4                    NA                0.1629446    0.1413635   0.1845257
6-24 months   JiVitA-3         BANGLADESH                     5                    NA                0.1974359    0.1714512   0.2234206
6-24 months   JiVitA-3         BANGLADESH                     6                    NA                0.1876504    0.1648033   0.2104974
6-24 months   JiVitA-3         BANGLADESH                     7                    NA                0.1809816    0.1591222   0.2028410
6-24 months   JiVitA-3         BANGLADESH                     8                    NA                0.1756757    0.1545392   0.1968122
6-24 months   JiVitA-3         BANGLADESH                     9                    NA                0.1689801    0.1503055   0.1876547
6-24 months   JiVitA-3         BANGLADESH                     10                   NA                0.1690058    0.1498927   0.1881190
6-24 months   JiVitA-3         BANGLADESH                     11                   NA                0.1675070    0.1495618   0.1854522
6-24 months   JiVitA-3         BANGLADESH                     12                   NA                0.1413772    0.1239958   0.1587586
6-24 months   Keneba           GAMBIA                         1                    NA                0.3321168    0.2763407   0.3878928
6-24 months   Keneba           GAMBIA                         2                    NA                0.3455285    0.2860928   0.4049641
6-24 months   Keneba           GAMBIA                         3                    NA                0.2720848    0.2202255   0.3239441
6-24 months   Keneba           GAMBIA                         4                    NA                0.2513369    0.1891530   0.3135208
6-24 months   Keneba           GAMBIA                         5                    NA                0.2604167    0.1983291   0.3225042
6-24 months   Keneba           GAMBIA                         6                    NA                0.3181818    0.2446053   0.3917583
6-24 months   Keneba           GAMBIA                         7                    NA                0.3333333    0.2537991   0.4128676
6-24 months   Keneba           GAMBIA                         8                    NA                0.3348214    0.2730085   0.3966343
6-24 months   Keneba           GAMBIA                         9                    NA                0.3276596    0.2676391   0.3876801
6-24 months   Keneba           GAMBIA                         10                   NA                0.3262195    0.2754732   0.3769658
6-24 months   Keneba           GAMBIA                         11                   NA                0.2911392    0.2332918   0.3489867
6-24 months   Keneba           GAMBIA                         12                   NA                0.3909465    0.3295829   0.4523101
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.4074074    0.2762343   0.5385805
6-24 months   NIH-Birth        BANGLADESH                     2                    NA                0.3265306    0.1951074   0.4579538
6-24 months   NIH-Birth        BANGLADESH                     3                    NA                0.3137255    0.1862614   0.4411896
6-24 months   NIH-Birth        BANGLADESH                     4                    NA                0.2325581    0.1061709   0.3589454
6-24 months   NIH-Birth        BANGLADESH                     5                    NA                0.2500000    0.1219371   0.3780629
6-24 months   NIH-Birth        BANGLADESH                     6                    NA                0.2727273    0.1410121   0.4044424
6-24 months   NIH-Birth        BANGLADESH                     7                    NA                0.2820513    0.1406910   0.4234116
6-24 months   NIH-Birth        BANGLADESH                     8                    NA                0.3235294    0.1661344   0.4809244
6-24 months   NIH-Birth        BANGLADESH                     9                    NA                0.1951220    0.0737061   0.3165378
6-24 months   NIH-Birth        BANGLADESH                     10                   NA                0.3023256    0.1649281   0.4397230
6-24 months   NIH-Birth        BANGLADESH                     11                   NA                0.2653061    0.1415753   0.3890369
6-24 months   NIH-Birth        BANGLADESH                     12                   NA                0.3137255    0.1862614   0.4411896
6-24 months   PROBIT           BELARUS                        1                    NA                0.0098814    0.0009378   0.0188250
6-24 months   PROBIT           BELARUS                        2                    NA                0.0072165    0.0023591   0.0120739
6-24 months   PROBIT           BELARUS                        3                    NA                0.0062002    0.0010982   0.0113022
6-24 months   PROBIT           BELARUS                        4                    NA                0.0069991   -0.0026008   0.0165990
6-24 months   PROBIT           BELARUS                        5                    NA                0.0069747   -0.0001600   0.0141094
6-24 months   PROBIT           BELARUS                        6                    NA                0.0067114    0.0022887   0.0111342
6-24 months   PROBIT           BELARUS                        7                    NA                0.0032175    0.0004551   0.0059799
6-24 months   PROBIT           BELARUS                        8                    NA                0.0057545    0.0001388   0.0113701
6-24 months   PROBIT           BELARUS                        9                    NA                0.0094637    0.0007366   0.0181908
6-24 months   PROBIT           BELARUS                        10                   NA                0.0122768    0.0053237   0.0192299
6-24 months   PROBIT           BELARUS                        11                   NA                0.0113501    0.0037266   0.0189735
6-24 months   PROBIT           BELARUS                        12                   NA                0.0114379    0.0060782   0.0167976
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.2708333    0.1848739   0.3567928
6-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2195122    0.1134866   0.3255378
6-24 months   SAS-CompFeed     INDIA                          3                    NA                0.2987013    0.1947022   0.4027004
6-24 months   SAS-CompFeed     INDIA                          4                    NA                0.3088235    0.1738083   0.4438388
6-24 months   SAS-CompFeed     INDIA                          5                    NA                0.3010753    0.2119563   0.3901943
6-24 months   SAS-CompFeed     INDIA                          6                    NA                0.3232323    0.2372329   0.4092318
6-24 months   SAS-CompFeed     INDIA                          7                    NA                0.3440000    0.2389434   0.4490566
6-24 months   SAS-CompFeed     INDIA                          8                    NA                0.3293413    0.2317185   0.4269642
6-24 months   SAS-CompFeed     INDIA                          9                    NA                0.3202247    0.2463142   0.3941352
6-24 months   SAS-CompFeed     INDIA                          10                   NA                0.3000000    0.1768266   0.4231734
6-24 months   SAS-CompFeed     INDIA                          11                   NA                0.3629032    0.2770089   0.4487975
6-24 months   SAS-CompFeed     INDIA                          12                   NA                0.2461538    0.2000020   0.2923057
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2302158    0.1602154   0.3002162
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1250000    0.0724112   0.1775888
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1357143    0.0789686   0.1924600
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1292517    0.0750065   0.1834969
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1543624    0.0963360   0.2123888
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1785714    0.1151140   0.2420289
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1428571    0.0938561   0.1918582
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1782178    0.1254300   0.2310057
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1684783    0.1143835   0.2225731
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1538462    0.1048015   0.2028908
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1666667    0.1139390   0.2193944
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1656805    0.1096126   0.2217484
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0989632    0.0809945   0.1169320
6-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.0947242    0.0748493   0.1145992
6-24 months   ZVITAMBO         ZIMBABWE                       3                    NA                0.1155943    0.0948988   0.1362899
6-24 months   ZVITAMBO         ZIMBABWE                       4                    NA                0.0942675    0.0738259   0.1147091
6-24 months   ZVITAMBO         ZIMBABWE                       5                    NA                0.1049936    0.0834937   0.1264935
6-24 months   ZVITAMBO         ZIMBABWE                       6                    NA                0.0941043    0.0748345   0.1133741
6-24 months   ZVITAMBO         ZIMBABWE                       7                    NA                0.0850112    0.0667283   0.1032941
6-24 months   ZVITAMBO         ZIMBABWE                       8                    NA                0.0916754    0.0733150   0.1100358
6-24 months   ZVITAMBO         ZIMBABWE                       9                    NA                0.0626243    0.0476517   0.0775969
6-24 months   ZVITAMBO         ZIMBABWE                       10                   NA                0.1064639    0.0849417   0.1279861
6-24 months   ZVITAMBO         ZIMBABWE                       11                   NA                0.1005348    0.0812589   0.1198106
6-24 months   ZVITAMBO         ZIMBABWE                       12                   NA                0.1059063    0.0866592   0.1251534


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.4558824   0.3965849   0.5151798
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
0-24 months   IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580131   0.2515484   0.2644777
0-24 months   Keneba           GAMBIA                         NA                   NA                0.4376712   0.4196742   0.4556682
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2554148   0.1971257   0.3137039
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2362270   0.2192156   0.2532385
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2366987   0.2296439   0.2437535
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1761793   0.1705546   0.1818041
0-6 months    Keneba           GAMBIA                         NA                   NA                0.2733171   0.2557239   0.2909103
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2500148   0.1915461   0.3084835
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1389816   0.1251275   0.1528358
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1811160   0.1747027   0.1875293
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3166545   0.2992274   0.3340815
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0958853   0.0903360   0.1014347


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   CMIN             BANGLADESH                     2                    1                 1.2444444   0.6477334   2.3908634
0-24 months   CMIN             BANGLADESH                     3                    1                 1.5400000   0.8145828   2.9114289
0-24 months   CMIN             BANGLADESH                     4                    1                 1.4000000   0.7305167   2.6830324
0-24 months   CMIN             BANGLADESH                     5                    1                 0.7000000   0.2820603   1.7372172
0-24 months   CMIN             BANGLADESH                     6                    1                 1.4000000   0.6316574   3.1029480
0-24 months   CMIN             BANGLADESH                     7                    1                 0.8235294   0.3381706   2.0054989
0-24 months   CMIN             BANGLADESH                     8                    1                 1.1454545   0.5643848   2.3247722
0-24 months   CMIN             BANGLADESH                     9                    1                 0.8909091   0.4045109   1.9621698
0-24 months   CMIN             BANGLADESH                     10                   1                 1.6592593   0.9213837   2.9880508
0-24 months   CMIN             BANGLADESH                     11                   1                 1.7379310   0.9792319   3.0844627
0-24 months   CMIN             BANGLADESH                     12                   1                 1.5000000   0.8183151   2.7495522
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9380224   0.6777875   1.2981739
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0510217   0.7210423   1.5320137
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                    1                 1.0897436   0.7893412   1.5044711
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                    1                 0.8737944   0.6012040   1.2699793
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                    1                 0.8842815   0.6093875   1.2831798
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                    1                 0.9930010   0.6398446   1.5410791
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                    1                 0.8473386   0.6300392   1.1395841
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0780772   0.7892836   1.4725386
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9350703   0.6936391   1.2605352
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0503476   0.7850355   1.4053252
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                   1                 0.7611231   0.3830690   1.5122821
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2                    1                 1.0487013   0.7006149   1.5697274
0-24 months   IRC              INDIA                          3                    1                 1.0875421   0.7312026   1.6175378
0-24 months   IRC              INDIA                          4                    1                 1.2337662   0.8408016   1.8103904
0-24 months   IRC              INDIA                          5                    1                 1.3347107   0.9369768   1.9012773
0-24 months   IRC              INDIA                          6                    1                 1.1203931   0.7811561   1.6069525
0-24 months   IRC              INDIA                          7                    1                 1.2954545   0.9306897   1.8031815
0-24 months   IRC              INDIA                          8                    1                 1.0991736   0.7732383   1.5624969
0-24 months   IRC              INDIA                          9                    1                 1.1515152   0.7868430   1.6851991
0-24 months   IRC              INDIA                          10                   1                 1.1818182   0.8352396   1.6722078
0-24 months   IRC              INDIA                          11                   1                 0.9931818   0.6787903   1.4531884
0-24 months   IRC              INDIA                          12                   1                 1.1625874   0.8348389   1.6190064
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 1.0235637   0.9143482   1.1458247
0-24 months   JiVitA-3         BANGLADESH                     3                    1                 0.9966973   0.8977688   1.1065271
0-24 months   JiVitA-3         BANGLADESH                     4                    1                 1.1727404   1.0493190   1.3106788
0-24 months   JiVitA-3         BANGLADESH                     5                    1                 1.3178803   1.1746287   1.4786022
0-24 months   JiVitA-3         BANGLADESH                     6                    1                 1.2616676   1.1270034   1.4124226
0-24 months   JiVitA-3         BANGLADESH                     7                    1                 1.1785773   1.0455694   1.3285052
0-24 months   JiVitA-3         BANGLADESH                     8                    1                 1.2014966   1.0893729   1.3251606
0-24 months   JiVitA-3         BANGLADESH                     9                    1                 1.1633740   1.0500534   1.2889240
0-24 months   JiVitA-3         BANGLADESH                     10                   1                 1.1043279   0.9922973   1.2290068
0-24 months   JiVitA-3         BANGLADESH                     11                   1                 1.0886388   0.9858495   1.2021454
0-24 months   JiVitA-3         BANGLADESH                     12                   1                 0.9938816   0.8987308   1.0991063
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 0.9954400   0.8302094   1.1935553
0-24 months   Keneba           GAMBIA                         3                    1                 0.8535179   0.7083824   1.0283891
0-24 months   Keneba           GAMBIA                         4                    1                 0.8396536   0.6770507   1.0413079
0-24 months   Keneba           GAMBIA                         5                    1                 0.8898870   0.7238580   1.0939975
0-24 months   Keneba           GAMBIA                         6                    1                 0.9024390   0.7243014   1.1243886
0-24 months   Keneba           GAMBIA                         7                    1                 0.9724656   0.7793334   1.2134592
0-24 months   Keneba           GAMBIA                         8                    1                 1.0513460   0.8774307   1.2597329
0-24 months   Keneba           GAMBIA                         9                    1                 1.0065101   0.8394790   1.2067754
0-24 months   Keneba           GAMBIA                         10                   1                 0.9212901   0.7744450   1.0959790
0-24 months   Keneba           GAMBIA                         11                   1                 0.8791234   0.7243283   1.0669995
0-24 months   Keneba           GAMBIA                         12                   1                 1.1008403   0.9263829   1.3081517
0-24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     2                    1                 0.9773777   0.6976016   1.3693590
0-24 months   NIH-Birth        BANGLADESH                     3                    1                 1.0419269   0.7552158   1.4374853
0-24 months   NIH-Birth        BANGLADESH                     4                    1                 0.8127530   0.5521643   1.1963241
0-24 months   NIH-Birth        BANGLADESH                     5                    1                 0.8625134   0.5894403   1.2620946
0-24 months   NIH-Birth        BANGLADESH                     6                    1                 1.0373684   0.7400059   1.4542226
0-24 months   NIH-Birth        BANGLADESH                     7                    1                 1.0776637   0.7599712   1.5281618
0-24 months   NIH-Birth        BANGLADESH                     8                    1                 0.9851552   0.6756072   1.4365311
0-24 months   NIH-Birth        BANGLADESH                     9                    1                 0.7765957   0.5147055   1.1717399
0-24 months   NIH-Birth        BANGLADESH                     10                   1                 0.7448980   0.4917057   1.1284657
0-24 months   NIH-Birth        BANGLADESH                     11                   1                 0.9061569   0.6319810   1.2992801
0-24 months   NIH-Birth        BANGLADESH                     12                   1                 0.7684211   0.5193463   1.1369503
0-24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        2                    1                 0.8684585   0.7193867   1.0484209
0-24 months   PROBIT           BELARUS                        3                    1                 0.9747325   0.8122578   1.1697067
0-24 months   PROBIT           BELARUS                        4                    1                 0.9933181   0.7995793   1.2340001
0-24 months   PROBIT           BELARUS                        5                    1                 1.1241076   0.9292861   1.3597727
0-24 months   PROBIT           BELARUS                        6                    1                 1.0509578   0.7952878   1.3888210
0-24 months   PROBIT           BELARUS                        7                    1                 1.0541265   0.8138602   1.3653237
0-24 months   PROBIT           BELARUS                        8                    1                 1.0825802   0.8448635   1.3871826
0-24 months   PROBIT           BELARUS                        9                    1                 0.9290644   0.7227994   1.1941912
0-24 months   PROBIT           BELARUS                        10                   1                 1.0529052   0.8335361   1.3300075
0-24 months   PROBIT           BELARUS                        11                   1                 0.9111328   0.7144264   1.1619994
0-24 months   PROBIT           BELARUS                        12                   1                 0.9549765   0.7653916   1.1915209
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2                    1                 1.6285714   0.7553253   3.5113943
0-24 months   PROVIDE          BANGLADESH                     3                    1                 1.5235849   0.7340075   3.1625165
0-24 months   PROVIDE          BANGLADESH                     4                    1                 1.5833333   0.7408065   3.3840746
0-24 months   PROVIDE          BANGLADESH                     5                    1                 2.0096154   1.0047625   4.0194115
0-24 months   PROVIDE          BANGLADESH                     6                    1                 1.6170213   0.8213097   3.1836441
0-24 months   PROVIDE          BANGLADESH                     7                    1                 1.9619565   1.0113947   3.8059063
0-24 months   PROVIDE          BANGLADESH                     8                    1                 2.2717391   1.1698526   4.4114947
0-24 months   PROVIDE          BANGLADESH                     9                    1                 1.5000000   0.7452476   3.0191307
0-24 months   PROVIDE          BANGLADESH                     10                   1                 1.7436709   0.8826001   3.4448082
0-24 months   PROVIDE          BANGLADESH                     11                   1                 0.9047619   0.3764546   2.1744831
0-24 months   PROVIDE          BANGLADESH                     12                   1                 1.5322581   0.6883873   3.4106013
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.7948148   0.5858925   1.0782363
0-24 months   SAS-CompFeed     INDIA                          3                    1                 1.0049383   0.6719218   1.5030036
0-24 months   SAS-CompFeed     INDIA                          4                    1                 1.1000000   0.8568562   1.4121389
0-24 months   SAS-CompFeed     INDIA                          5                    1                 1.1212121   0.8626481   1.4572762
0-24 months   SAS-CompFeed     INDIA                          6                    1                 1.2220183   1.0612369   1.4071589
0-24 months   SAS-CompFeed     INDIA                          7                    1                 0.9431373   0.7016928   1.2676601
0-24 months   SAS-CompFeed     INDIA                          8                    1                 1.0059590   0.7564215   1.3378170
0-24 months   SAS-CompFeed     INDIA                          9                    1                 0.9944154   0.8187732   1.2077360
0-24 months   SAS-CompFeed     INDIA                          10                   1                 1.1660606   0.8988349   1.5127332
0-24 months   SAS-CompFeed     INDIA                          11                   1                 1.0923810   0.8868584   1.3455317
0-24 months   SAS-CompFeed     INDIA                          12                   1                 0.8400966   0.6689409   1.0550444
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9030337   0.6437346   1.2667797
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7090244   0.4851394   1.0362293
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5400000   0.3609541   0.8078590
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6285405   0.4285716   0.9218138
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7622892   0.5278239   1.1009066
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8471560   0.6099417   1.1766259
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8992241   0.6545876   1.2352877
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7441667   0.5275409   1.0497461
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9165600   0.6719512   1.2502131
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8356561   0.6014430   1.1610762
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8508293   0.6097523   1.1872206
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9409924   0.8087361   1.0948770
0-24 months   ZVITAMBO         ZIMBABWE                       3                    1                 1.0222776   0.8863959   1.1789897
0-24 months   ZVITAMBO         ZIMBABWE                       4                    1                 0.9188426   0.7861968   1.0738682
0-24 months   ZVITAMBO         ZIMBABWE                       5                    1                 0.9824565   0.8451353   1.1420902
0-24 months   ZVITAMBO         ZIMBABWE                       6                    1                 1.1180670   0.9722021   1.2858168
0-24 months   ZVITAMBO         ZIMBABWE                       7                    1                 1.1826593   1.0317255   1.3556736
0-24 months   ZVITAMBO         ZIMBABWE                       8                    1                 1.1242481   0.9808982   1.2885474
0-24 months   ZVITAMBO         ZIMBABWE                       9                    1                 0.9191050   0.7953615   1.0621008
0-24 months   ZVITAMBO         ZIMBABWE                       10                   1                 1.0705189   0.9258003   1.2378596
0-24 months   ZVITAMBO         ZIMBABWE                       11                   1                 1.1071599   0.9636289   1.2720696
0-24 months   ZVITAMBO         ZIMBABWE                       12                   1                 1.0799570   0.9396846   1.2411687
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          2                    1                 1.2088889   0.6589602   2.2177553
0-6 months    CMC-V-BCS-2002   INDIA                          3                    1                 1.1698925   0.7025891   1.9480069
0-6 months    CMC-V-BCS-2002   INDIA                          4                    1                 0.9787879   0.5885706   1.6277158
0-6 months    CMC-V-BCS-2002   INDIA                          5                    1                 1.2592593   0.7802649   2.0323020
0-6 months    CMC-V-BCS-2002   INDIA                          6                    1                 1.3851852   0.8744517   2.1942185
0-6 months    CMC-V-BCS-2002   INDIA                          7                    1                 0.7555556   0.4213521   1.3548388
0-6 months    CMC-V-BCS-2002   INDIA                          8                    1                 1.3333333   0.7695380   2.3101884
0-6 months    CMC-V-BCS-2002   INDIA                          9                    1                 1.1873016   0.6802325   2.0723576
0-6 months    CMC-V-BCS-2002   INDIA                          10                   1                 1.3287356   0.8163863   2.1626261
0-6 months    CMC-V-BCS-2002   INDIA                          11                   1                 1.3821138   0.8801697   2.1703072
0-6 months    CMC-V-BCS-2002   INDIA                          12                   1                 1.2693333   0.7589149   2.1230407
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2                    1                 1.0178571   0.5767309   1.7963893
0-6 months    IRC              INDIA                          3                    1                 1.4074074   0.8646057   2.2909815
0-6 months    IRC              INDIA                          4                    1                 1.1309524   0.6306931   2.0280121
0-6 months    IRC              INDIA                          5                    1                 1.2954545   0.7594318   2.2098134
0-6 months    IRC              INDIA                          6                    1                 1.3479730   0.8445223   2.1515492
0-6 months    IRC              INDIA                          7                    1                 1.5833333   1.0206248   2.4562841
0-6 months    IRC              INDIA                          8                    1                 1.2954545   0.8172019   2.0535959
0-6 months    IRC              INDIA                          9                    1                 1.1435185   0.6655610   1.9647103
0-6 months    IRC              INDIA                          10                   1                 1.4375000   0.9136219   2.2617741
0-6 months    IRC              INDIA                          11                   1                 1.1875000   0.7308494   1.9294757
0-6 months    IRC              INDIA                          12                   1                 1.4615385   0.9499445   2.2486521
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 1.0453842   0.9098923   1.2010521
0-6 months    JiVitA-3         BANGLADESH                     3                    1                 1.0150503   0.8880945   1.1601549
0-6 months    JiVitA-3         BANGLADESH                     4                    1                 1.1097579   0.9659831   1.2749320
0-6 months    JiVitA-3         BANGLADESH                     5                    1                 1.0344111   0.8838807   1.2105779
0-6 months    JiVitA-3         BANGLADESH                     6                    1                 1.0281009   0.8706578   1.2140149
0-6 months    JiVitA-3         BANGLADESH                     7                    1                 0.9276570   0.7945119   1.0831146
0-6 months    JiVitA-3         BANGLADESH                     8                    1                 1.0512243   0.9221971   1.1983041
0-6 months    JiVitA-3         BANGLADESH                     9                    1                 1.1629597   1.0231170   1.3219164
0-6 months    JiVitA-3         BANGLADESH                     10                   1                 1.0904777   0.9576738   1.2416979
0-6 months    JiVitA-3         BANGLADESH                     11                   1                 1.0468925   0.9240950   1.1860078
0-6 months    JiVitA-3         BANGLADESH                     12                   1                 1.0226751   0.9049032   1.1557748
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 1.0524349   0.7951784   1.3929192
0-6 months    Keneba           GAMBIA                         3                    1                 0.9253146   0.6996131   1.2238295
0-6 months    Keneba           GAMBIA                         4                    1                 0.9257161   0.6731759   1.2729961
0-6 months    Keneba           GAMBIA                         5                    1                 0.8992921   0.6517506   1.2408525
0-6 months    Keneba           GAMBIA                         6                    1                 0.8223117   0.5763182   1.1733040
0-6 months    Keneba           GAMBIA                         7                    1                 1.1711712   0.8401383   1.6326381
0-6 months    Keneba           GAMBIA                         8                    1                 1.1771162   0.8937041   1.5504042
0-6 months    Keneba           GAMBIA                         9                    1                 1.0343521   0.7792601   1.3729488
0-6 months    Keneba           GAMBIA                         10                   1                 0.8061829   0.6061289   1.0722651
0-6 months    Keneba           GAMBIA                         11                   1                 0.9025539   0.6707055   1.2145474
0-6 months    Keneba           GAMBIA                         12                   1                 0.9213213   0.6880802   1.2336251
0-6 months    NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     2                    1                 0.9924812   0.6408229   1.5371156
0-6 months    NIH-Birth        BANGLADESH                     3                    1                 1.0460048   0.6850927   1.5970483
0-6 months    NIH-Birth        BANGLADESH                     4                    1                 1.0588235   0.6833567   1.6405887
0-6 months    NIH-Birth        BANGLADESH                     5                    1                 1.0495627   0.6727287   1.6374830
0-6 months    NIH-Birth        BANGLADESH                     6                    1                 1.0285714   0.6581135   1.6075633
0-6 months    NIH-Birth        BANGLADESH                     7                    1                 1.1289199   0.7187226   1.7732295
0-6 months    NIH-Birth        BANGLADESH                     8                    1                 0.9890110   0.6048285   1.6172234
0-6 months    NIH-Birth        BANGLADESH                     9                    1                 0.8753799   0.5349238   1.4325218
0-6 months    NIH-Birth        BANGLADESH                     10                   1                 0.6822157   0.3939892   1.1812972
0-6 months    NIH-Birth        BANGLADESH                     11                   1                 0.7277628   0.4337183   1.2211583
0-6 months    NIH-Birth        BANGLADESH                     12                   1                 0.4675325   0.2486324   0.8791557
0-6 months    PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        2                    1                 0.8635078   0.7062623   1.0557631
0-6 months    PROBIT           BELARUS                        3                    1                 0.9721275   0.8006254   1.1803670
0-6 months    PROBIT           BELARUS                        4                    1                 1.0001144   0.7956083   1.2571875
0-6 months    PROBIT           BELARUS                        5                    1                 1.1288696   0.9225506   1.3813299
0-6 months    PROBIT           BELARUS                        6                    1                 1.0547036   0.7847415   1.4175365
0-6 months    PROBIT           BELARUS                        7                    1                 1.0752629   0.8163690   1.4162593
0-6 months    PROBIT           BELARUS                        8                    1                 1.0892239   0.8407685   1.4111003
0-6 months    PROBIT           BELARUS                        9                    1                 0.9253035   0.7107088   1.2046938
0-6 months    PROBIT           BELARUS                        10                   1                 1.0478543   0.8147381   1.3476705
0-6 months    PROBIT           BELARUS                        11                   1                 0.9009965   0.6999570   1.1597780
0-6 months    PROBIT           BELARUS                        12                   1                 0.9507675   0.7504230   1.2045991
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.6862963   0.4147221   1.1357065
0-6 months    SAS-CompFeed     INDIA                          3                    1                 0.8074074   0.3872331   1.6834993
0-6 months    SAS-CompFeed     INDIA                          4                    1                 0.9328829   0.5942983   1.4643664
0-6 months    SAS-CompFeed     INDIA                          5                    1                 1.1744108   0.8086699   1.7055671
0-6 months    SAS-CompFeed     INDIA                          6                    1                 1.1000000   0.8345381   1.4499039
0-6 months    SAS-CompFeed     INDIA                          7                    1                 0.5694030   0.3263519   0.9934668
0-6 months    SAS-CompFeed     INDIA                          8                    1                 0.6292365   0.4254708   0.9305893
0-6 months    SAS-CompFeed     INDIA                          9                    1                 0.6728395   0.4904841   0.9229921
0-6 months    SAS-CompFeed     INDIA                          10                   1                 0.9747967   0.6707009   1.4167696
0-6 months    SAS-CompFeed     INDIA                          11                   1                 0.7007143   0.4996352   0.9827180
0-6 months    SAS-CompFeed     INDIA                          12                   1                 0.6364964   0.3879750   1.0442106
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0292937   0.6430442   1.6475472
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7447735   0.4373067   1.2684177
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4500000   0.2451200   0.8261261
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.5281853   0.2962934   0.9415659
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7725904   0.4574636   1.3047943
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9805046   0.6221296   1.5453200
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0003079   0.6400721   1.5632863
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6220238   0.3693548   1.0475391
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0748571   0.6977070   1.6558783
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9119263   0.5742846   1.4480791
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9533101   0.5988705   1.5175237
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9595141   0.8003264   1.1503649
0-6 months    ZVITAMBO         ZIMBABWE                       3                    1                 0.9726069   0.8166347   1.1583688
0-6 months    ZVITAMBO         ZIMBABWE                       4                    1                 0.8553500   0.7058484   1.0365165
0-6 months    ZVITAMBO         ZIMBABWE                       5                    1                 0.9272923   0.7707139   1.1156814
0-6 months    ZVITAMBO         ZIMBABWE                       6                    1                 1.1657895   0.9869402   1.3770491
0-6 months    ZVITAMBO         ZIMBABWE                       7                    1                 1.3185727   1.1238701   1.5470060
0-6 months    ZVITAMBO         ZIMBABWE                       8                    1                 1.1939687   1.0156569   1.4035854
0-6 months    ZVITAMBO         ZIMBABWE                       9                    1                 1.0248795   0.8664304   1.2123052
0-6 months    ZVITAMBO         ZIMBABWE                       10                   1                 1.0743278   0.9018293   1.2798212
0-6 months    ZVITAMBO         ZIMBABWE                       11                   1                 1.1601725   0.9833507   1.3687896
0-6 months    ZVITAMBO         ZIMBABWE                       12                   1                 1.0757657   0.9095107   1.2724115
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9380224   0.6777875   1.2981739
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0510217   0.7210423   1.5320137
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                    1                 1.0897436   0.7893412   1.5044711
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                    1                 0.8737944   0.6012040   1.2699793
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                    1                 0.8842815   0.6093875   1.2831798
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                    1                 0.9930010   0.6398446   1.5410791
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                    1                 0.8473386   0.6300392   1.1395841
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0780772   0.7892836   1.4725386
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9350703   0.6936391   1.2605352
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0503476   0.7850355   1.4053252
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                   1                 0.7611231   0.3830690   1.5122821
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          2                    1                 0.9395604   0.4681705   1.8855818
6-24 months   IRC              INDIA                          3                    1                 0.5413105   0.2185720   1.3405977
6-24 months   IRC              INDIA                          4                    1                 1.1135531   0.5518458   2.2470054
6-24 months   IRC              INDIA                          5                    1                 1.1958042   0.6124451   2.3348178
6-24 months   IRC              INDIA                          6                    1                 0.9480249   0.4990647   1.8008712
6-24 months   IRC              INDIA                          7                    1                 1.0555556   0.5679528   1.9617783
6-24 months   IRC              INDIA                          8                    1                 0.8636364   0.4575433   1.6301579
6-24 months   IRC              INDIA                          9                    1                 1.0826211   0.5588169   2.0974105
6-24 months   IRC              INDIA                          10                   1                 1.2307692   0.6904034   2.1940694
6-24 months   IRC              INDIA                          11                   1                 0.5846154   0.2729801   1.2520147
6-24 months   IRC              INDIA                          12                   1                 0.6183432   0.3113194   1.2281544
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9754777   0.8095535   1.1754094
6-24 months   JiVitA-3         BANGLADESH                     3                    1                 0.8973413   0.7405706   1.0872986
6-24 months   JiVitA-3         BANGLADESH                     4                    1                 1.1060967   0.9143574   1.3380434
6-24 months   JiVitA-3         BANGLADESH                     5                    1                 1.3402299   1.1214006   1.6017613
6-24 months   JiVitA-3         BANGLADESH                     6                    1                 1.2738039   1.0690285   1.5178047
6-24 months   JiVitA-3         BANGLADESH                     7                    1                 1.2285352   1.0242647   1.4735435
6-24 months   JiVitA-3         BANGLADESH                     8                    1                 1.1925176   1.0062136   1.4133166
6-24 months   JiVitA-3         BANGLADESH                     9                    1                 1.1470668   0.9600953   1.3704496
6-24 months   JiVitA-3         BANGLADESH                     10                   1                 1.1472417   0.9641956   1.3650378
6-24 months   JiVitA-3         BANGLADESH                     11                   1                 1.1370672   0.9630719   1.3424978
6-24 months   JiVitA-3         BANGLADESH                     12                   1                 0.9596936   0.8005127   1.1505273
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 1.0403824   0.8180651   1.3231166
6-24 months   Keneba           GAMBIA                         3                    1                 0.8192444   0.6354605   1.0561810
6-24 months   Keneba           GAMBIA                         4                    1                 0.7567726   0.5611767   1.0205428
6-24 months   Keneba           GAMBIA                         5                    1                 0.7841117   0.5857682   1.0496152
6-24 months   Keneba           GAMBIA                         6                    1                 0.9580420   0.7198918   1.2749755
6-24 months   Keneba           GAMBIA                         7                    1                 1.0036630   0.7496689   1.3437124
6-24 months   Keneba           GAMBIA                         8                    1                 1.0081436   0.7854783   1.2939296
6-24 months   Keneba           GAMBIA                         9                    1                 0.9865794   0.7694919   1.2649112
6-24 months   Keneba           GAMBIA                         10                   1                 0.9822434   0.7812714   1.2349128
6-24 months   Keneba           GAMBIA                         11                   1                 0.8766171   0.6758088   1.1370930
6-24 months   Keneba           GAMBIA                         12                   1                 1.1771356   0.9353935   1.4813533
6-24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     2                    1                 0.8014842   0.4786862   1.3419585
6-24 months   NIH-Birth        BANGLADESH                     3                    1                 0.7700535   0.4585460   1.2931797
6-24 months   NIH-Birth        BANGLADESH                     4                    1                 0.5708245   0.3035062   1.0735881
6-24 months   NIH-Birth        BANGLADESH                     5                    1                 0.6136364   0.3350796   1.1237617
6-24 months   NIH-Birth        BANGLADESH                     6                    1                 0.6694215   0.3746430   1.1961390
6-24 months   NIH-Birth        BANGLADESH                     7                    1                 0.6923077   0.3815856   1.2560483
6-24 months   NIH-Birth        BANGLADESH                     8                    1                 0.7941176   0.4431215   1.4231374
6-24 months   NIH-Birth        BANGLADESH                     9                    1                 0.4789357   0.2376852   0.9650556
6-24 months   NIH-Birth        BANGLADESH                     10                   1                 0.7420719   0.4251679   1.2951840
6-24 months   NIH-Birth        BANGLADESH                     11                   1                 0.6512059   0.3694853   1.1477295
6-24 months   NIH-Birth        BANGLADESH                     12                   1                 0.7700535   0.4585460   1.2931797
6-24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        2                    1                 0.7303093   0.2316392   2.3025106
6-24 months   PROBIT           BELARUS                        3                    1                 0.6274579   0.2191059   1.7968635
6-24 months   PROBIT           BELARUS                        4                    1                 0.7083115   0.2449620   2.0480941
6-24 months   PROBIT           BELARUS                        5                    1                 0.7058413   0.1988851   2.5050247
6-24 months   PROBIT           BELARUS                        6                    1                 0.6791946   0.2664594   1.7312409
6-24 months   PROBIT           BELARUS                        7                    1                 0.3256113   0.0861209   1.2310924
6-24 months   PROBIT           BELARUS                        8                    1                 0.5823529   0.2154826   1.5738392
6-24 months   PROBIT           BELARUS                        9                    1                 0.9577287   0.4273218   2.1464956
6-24 months   PROBIT           BELARUS                        10                   1                 1.2424107   0.4835712   3.1920523
6-24 months   PROBIT           BELARUS                        11                   1                 1.1486260   0.5437854   2.4262178
6-24 months   PROBIT           BELARUS                        12                   1                 1.1575163   0.4939127   2.7127146
6-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          2                    1                 0.8105066   0.5525373   1.1889169
6-24 months   SAS-CompFeed     INDIA                          3                    1                 1.1028971   0.6245826   1.9475119
6-24 months   SAS-CompFeed     INDIA                          4                    1                 1.1402715   0.7160154   1.8159093
6-24 months   SAS-CompFeed     INDIA                          5                    1                 1.1116625   0.7604472   1.6250880
6-24 months   SAS-CompFeed     INDIA                          6                    1                 1.1934732   0.8583585   1.6594212
6-24 months   SAS-CompFeed     INDIA                          7                    1                 1.2701538   0.7761606   2.0785527
6-24 months   SAS-CompFeed     INDIA                          8                    1                 1.2160295   0.7087370   2.0864265
6-24 months   SAS-CompFeed     INDIA                          9                    1                 1.1823682   0.8076113   1.7310240
6-24 months   SAS-CompFeed     INDIA                          10                   1                 1.1076923   0.6530739   1.8787800
6-24 months   SAS-CompFeed     INDIA                          11                   1                 1.3399504   0.8147731   2.2036405
6-24 months   SAS-CompFeed     INDIA                          12                   1                 0.9088757   0.6534566   1.2641315
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5429687   0.3231007   0.9124556
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5895089   0.3515296   0.9885959
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5614371   0.3343676   0.9427096
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6705117   0.4134557   1.0873861
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7756696   0.4859149   1.2382074
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.6205357   0.3923706   0.9813799
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7741337   0.5063653   1.1834992
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7318274   0.4702847   1.1388239
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6682692   0.4301540   1.0381951
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7239583   0.4668169   1.1227436
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7196746   0.4566206   1.1342710
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9571657   0.7252399   1.2632595
6-24 months   ZVITAMBO         ZIMBABWE                       3                    1                 1.1680532   0.9051494   1.5073182
6-24 months   ZVITAMBO         ZIMBABWE                       4                    1                 0.9525508   0.7178913   1.2639142
6-24 months   ZVITAMBO         ZIMBABWE                       5                    1                 1.0609353   0.8069223   1.3949096
6-24 months   ZVITAMBO         ZIMBABWE                       6                    1                 0.9509016   0.7232349   1.2502355
6-24 months   ZVITAMBO         ZIMBABWE                       7                    1                 0.8590178   0.6482835   1.1382545
6-24 months   ZVITAMBO         ZIMBABWE                       8                    1                 0.9263586   0.7069299   1.2138972
6-24 months   ZVITAMBO         ZIMBABWE                       9                    1                 0.6328032   0.4686906   0.8543800
6-24 months   ZVITAMBO         ZIMBABWE                       10                   1                 1.0757921   0.8198223   1.4116824
6-24 months   ZVITAMBO         ZIMBABWE                       11                   1                 1.0158798   0.7801197   1.3228890
6-24 months   ZVITAMBO         ZIMBABWE                       12                   1                 1.0701581   0.8277115   1.3836201


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMIN             BANGLADESH                     1                    NA                 0.0987395   -0.0704417    0.2679207
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0097041   -0.0516561    0.0322479
0-24 months   IRC              INDIA                          1                    NA                 0.0771502   -0.0719909    0.2262913
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0246263    0.0075206    0.0417321
0-24 months   Keneba           GAMBIA                         1                    NA                -0.0217882   -0.0755884    0.0320119
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0429838   -0.1507574    0.0647897
0-24 months   PROBIT           BELARUS                        1                    NA                 0.0000542   -0.0477598    0.0478683
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1409023    0.0134202    0.2683843
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0096640   -0.0541265    0.0734545
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0561706   -0.1215586    0.0092173
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0091894   -0.0121398    0.0305186
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.0751279   -0.0841952    0.2344509
0-6 months    IRC              INDIA                          1                    NA                 0.1228498   -0.0269962    0.2726958
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0083078   -0.0071482    0.0237638
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0112983   -0.0631097    0.0405132
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.0319757   -0.1377100    0.0737586
0-6 months    PROBIT           BELARUS                        1                    NA                 0.0002587   -0.0501355    0.0506529
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0552958   -0.1258548    0.0152632
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0247611   -0.0779595    0.0284374
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0110633   -0.0081936    0.0303202
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0097041   -0.0516561    0.0322479
6-24 months   IRC              INDIA                          1                    NA                -0.0323492   -0.1758358    0.1111375
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0166925   -0.0018219    0.0352068
6-24 months   Keneba           GAMBIA                         1                    NA                -0.0154623   -0.0683019    0.0373773
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.1140495   -0.2375394    0.0094405
6-24 months   PROBIT           BELARUS                        1                    NA                -0.0015069   -0.0083020    0.0052882
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0351422   -0.0603771    0.1306614
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0696608   -0.1366064   -0.0027153
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0030779   -0.0201167    0.0139609


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMIN             BANGLADESH                     1                    NA                 0.2165899   -0.2586442    0.5123869
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0418672   -0.2409749    0.1252947
0-24 months   IRC              INDIA                          1                    NA                 0.1175895   -0.1421481    0.3182598
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0954461    0.0265820    0.1594385
0-24 months   Keneba           GAMBIA                         1                    NA                -0.0497822   -0.1802042    0.0662272
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0900064   -0.3408885    0.1139352
0-24 months   PROBIT           BELARUS                        1                    NA                 0.0002123   -0.2056694    0.1709373
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.4009414   -0.0961744    0.6726149
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0232828   -0.1411654    0.1640332
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2377823   -0.5478204    0.0101532
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0388232   -0.0556439    0.1248367
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.1455108   -0.2265497    0.4047108
0-6 months    IRC              INDIA                          1                    NA                 0.2258674   -0.1059101    0.4581103
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0471555   -0.0446461    0.1308897
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0413376   -0.2492489    0.1319712
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                -0.0895896   -0.4300627    0.1698228
0-6 months    PROBIT           BELARUS                        1                    NA                 0.0010347   -0.2223460    0.1835932
0-6 months    SAS-CompFeed     INDIA                          1                    NA                -0.2514205   -0.6153667    0.0305277
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1781606   -0.6300782    0.1484688
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0610842   -0.0514789    0.1615973
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0418672   -0.2409749    0.1252947
6-24 months   IRC              INDIA                          1                    NA                -0.1044343   -0.6799327    0.2739143
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.1017786   -0.0185809    0.2079160
6-24 months   Keneba           GAMBIA                         1                    NA                -0.0488302   -0.2297050    0.1054401
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                -0.3887724   -0.8811253   -0.0252846
6-24 months   PROBIT           BELARUS                        1                    NA                -0.1799414   -1.2986320    0.3943085
6-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.1148529   -0.2501475    0.3732857
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4338751   -0.9164352   -0.0728241
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0320998   -0.2260053    0.1311376

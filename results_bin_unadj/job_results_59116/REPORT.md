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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        month    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                  0        6    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                  1       19    324
0-24 months   CMC-V-BCS-2002   INDIA                          2                  0        8    324
0-24 months   CMC-V-BCS-2002   INDIA                          2                  1       17    324
0-24 months   CMC-V-BCS-2002   INDIA                          3                  0        6    324
0-24 months   CMC-V-BCS-2002   INDIA                          3                  1       11    324
0-24 months   CMC-V-BCS-2002   INDIA                          4                  0       12    324
0-24 months   CMC-V-BCS-2002   INDIA                          4                  1       11    324
0-24 months   CMC-V-BCS-2002   INDIA                          5                  0       15    324
0-24 months   CMC-V-BCS-2002   INDIA                          5                  1       18    324
0-24 months   CMC-V-BCS-2002   INDIA                          6                  0        8    324
0-24 months   CMC-V-BCS-2002   INDIA                          6                  1       20    324
0-24 months   CMC-V-BCS-2002   INDIA                          7                  0       11    324
0-24 months   CMC-V-BCS-2002   INDIA                          7                  1       13    324
0-24 months   CMC-V-BCS-2002   INDIA                          8                  0       15    324
0-24 months   CMC-V-BCS-2002   INDIA                          8                  1       16    324
0-24 months   CMC-V-BCS-2002   INDIA                          9                  0        9    324
0-24 months   CMC-V-BCS-2002   INDIA                          9                  1       20    324
0-24 months   CMC-V-BCS-2002   INDIA                          10                 0        7    324
0-24 months   CMC-V-BCS-2002   INDIA                          10                 1        8    324
0-24 months   CMC-V-BCS-2002   INDIA                          11                 0       10    324
0-24 months   CMC-V-BCS-2002   INDIA                          11                 1       31    324
0-24 months   CMC-V-BCS-2002   INDIA                          12                 0       13    324
0-24 months   CMC-V-BCS-2002   INDIA                          12                 1       20    324
0-24 months   CMIN             BANGLADESH                     1                  0        7    190
0-24 months   CMIN             BANGLADESH                     1                  1       16    190
0-24 months   CMIN             BANGLADESH                     2                  0       10    190
0-24 months   CMIN             BANGLADESH                     2                  1       15    190
0-24 months   CMIN             BANGLADESH                     3                  0        2    190
0-24 months   CMIN             BANGLADESH                     3                  1        7    190
0-24 months   CMIN             BANGLADESH                     4                  0        4    190
0-24 months   CMIN             BANGLADESH                     4                  1       12    190
0-24 months   CMIN             BANGLADESH                     5                  0        8    190
0-24 months   CMIN             BANGLADESH                     5                  1       11    190
0-24 months   CMIN             BANGLADESH                     6                  0        6    190
0-24 months   CMIN             BANGLADESH                     6                  1        6    190
0-24 months   CMIN             BANGLADESH                     7                  0        1    190
0-24 months   CMIN             BANGLADESH                     7                  1        7    190
0-24 months   CMIN             BANGLADESH                     8                  0        5    190
0-24 months   CMIN             BANGLADESH                     8                  1        2    190
0-24 months   CMIN             BANGLADESH                     9                  0        7    190
0-24 months   CMIN             BANGLADESH                     9                  1        8    190
0-24 months   CMIN             BANGLADESH                     10                 0        6    190
0-24 months   CMIN             BANGLADESH                     10                 1        8    190
0-24 months   CMIN             BANGLADESH                     11                 0        1    190
0-24 months   CMIN             BANGLADESH                     11                 1        0    190
0-24 months   CMIN             BANGLADESH                     12                 0       23    190
0-24 months   CMIN             BANGLADESH                     12                 1       18    190
0-24 months   CONTENT          PERU                           1                  0        1      7
0-24 months   CONTENT          PERU                           1                  1        2      7
0-24 months   CONTENT          PERU                           2                  0        0      7
0-24 months   CONTENT          PERU                           2                  1        0      7
0-24 months   CONTENT          PERU                           3                  0        0      7
0-24 months   CONTENT          PERU                           3                  1        3      7
0-24 months   CONTENT          PERU                           4                  0        0      7
0-24 months   CONTENT          PERU                           4                  1        0      7
0-24 months   CONTENT          PERU                           5                  0        0      7
0-24 months   CONTENT          PERU                           5                  1        0      7
0-24 months   CONTENT          PERU                           6                  0        0      7
0-24 months   CONTENT          PERU                           6                  1        1      7
0-24 months   CONTENT          PERU                           7                  0        0      7
0-24 months   CONTENT          PERU                           7                  1        0      7
0-24 months   CONTENT          PERU                           8                  0        0      7
0-24 months   CONTENT          PERU                           8                  1        0      7
0-24 months   CONTENT          PERU                           9                  0        0      7
0-24 months   CONTENT          PERU                           9                  1        0      7
0-24 months   CONTENT          PERU                           10                 0        0      7
0-24 months   CONTENT          PERU                           10                 1        0      7
0-24 months   CONTENT          PERU                           11                 0        0      7
0-24 months   CONTENT          PERU                           11                 1        0      7
0-24 months   CONTENT          PERU                           12                 0        0      7
0-24 months   CONTENT          PERU                           12                 1        0      7
0-24 months   EE               PAKISTAN                       1                  0       38    323
0-24 months   EE               PAKISTAN                       1                  1       36    323
0-24 months   EE               PAKISTAN                       2                  0       27    323
0-24 months   EE               PAKISTAN                       2                  1       21    323
0-24 months   EE               PAKISTAN                       3                  0       25    323
0-24 months   EE               PAKISTAN                       3                  1       27    323
0-24 months   EE               PAKISTAN                       4                  0       12    323
0-24 months   EE               PAKISTAN                       4                  1        9    323
0-24 months   EE               PAKISTAN                       5                  0        0    323
0-24 months   EE               PAKISTAN                       5                  1        0    323
0-24 months   EE               PAKISTAN                       6                  0        0    323
0-24 months   EE               PAKISTAN                       6                  1        0    323
0-24 months   EE               PAKISTAN                       7                  0        0    323
0-24 months   EE               PAKISTAN                       7                  1        0    323
0-24 months   EE               PAKISTAN                       8                  0        0    323
0-24 months   EE               PAKISTAN                       8                  1        0    323
0-24 months   EE               PAKISTAN                       9                  0        0    323
0-24 months   EE               PAKISTAN                       9                  1        0    323
0-24 months   EE               PAKISTAN                       10                 0        0    323
0-24 months   EE               PAKISTAN                       10                 1        0    323
0-24 months   EE               PAKISTAN                       11                 0       26    323
0-24 months   EE               PAKISTAN                       11                 1       28    323
0-24 months   EE               PAKISTAN                       12                 0       32    323
0-24 months   EE               PAKISTAN                       12                 1       42    323
0-24 months   GMS-Nepal        NEPAL                          1                  0        0    643
0-24 months   GMS-Nepal        NEPAL                          1                  1        0    643
0-24 months   GMS-Nepal        NEPAL                          2                  0        0    643
0-24 months   GMS-Nepal        NEPAL                          2                  1        0    643
0-24 months   GMS-Nepal        NEPAL                          3                  0        0    643
0-24 months   GMS-Nepal        NEPAL                          3                  1        0    643
0-24 months   GMS-Nepal        NEPAL                          4                  0        1    643
0-24 months   GMS-Nepal        NEPAL                          4                  1        1    643
0-24 months   GMS-Nepal        NEPAL                          5                  0        0    643
0-24 months   GMS-Nepal        NEPAL                          5                  1        0    643
0-24 months   GMS-Nepal        NEPAL                          6                  0       72    643
0-24 months   GMS-Nepal        NEPAL                          6                  1       61    643
0-24 months   GMS-Nepal        NEPAL                          7                  0      107    643
0-24 months   GMS-Nepal        NEPAL                          7                  1      133    643
0-24 months   GMS-Nepal        NEPAL                          8                  0      116    643
0-24 months   GMS-Nepal        NEPAL                          8                  1      152    643
0-24 months   GMS-Nepal        NEPAL                          9                  0        0    643
0-24 months   GMS-Nepal        NEPAL                          9                  1        0    643
0-24 months   GMS-Nepal        NEPAL                          10                 0        0    643
0-24 months   GMS-Nepal        NEPAL                          10                 1        0    643
0-24 months   GMS-Nepal        NEPAL                          11                 0        0    643
0-24 months   GMS-Nepal        NEPAL                          11                 1        0    643
0-24 months   GMS-Nepal        NEPAL                          12                 0        0    643
0-24 months   GMS-Nepal        NEPAL                          12                 1        0    643
0-24 months   Guatemala BSC    GUATEMALA                      1                  0        1     38
0-24 months   Guatemala BSC    GUATEMALA                      1                  1        1     38
0-24 months   Guatemala BSC    GUATEMALA                      2                  0        1     38
0-24 months   Guatemala BSC    GUATEMALA                      2                  1        1     38
0-24 months   Guatemala BSC    GUATEMALA                      3                  0        2     38
0-24 months   Guatemala BSC    GUATEMALA                      3                  1        2     38
0-24 months   Guatemala BSC    GUATEMALA                      4                  0        6     38
0-24 months   Guatemala BSC    GUATEMALA                      4                  1        1     38
0-24 months   Guatemala BSC    GUATEMALA                      5                  0        0     38
0-24 months   Guatemala BSC    GUATEMALA                      5                  1        3     38
0-24 months   Guatemala BSC    GUATEMALA                      6                  0        2     38
0-24 months   Guatemala BSC    GUATEMALA                      6                  1        2     38
0-24 months   Guatemala BSC    GUATEMALA                      7                  0        0     38
0-24 months   Guatemala BSC    GUATEMALA                      7                  1        3     38
0-24 months   Guatemala BSC    GUATEMALA                      8                  0        2     38
0-24 months   Guatemala BSC    GUATEMALA                      8                  1        2     38
0-24 months   Guatemala BSC    GUATEMALA                      9                  0        3     38
0-24 months   Guatemala BSC    GUATEMALA                      9                  1        2     38
0-24 months   Guatemala BSC    GUATEMALA                      10                 0        1     38
0-24 months   Guatemala BSC    GUATEMALA                      10                 1        0     38
0-24 months   Guatemala BSC    GUATEMALA                      11                 0        3     38
0-24 months   Guatemala BSC    GUATEMALA                      11                 1        0     38
0-24 months   Guatemala BSC    GUATEMALA                      12                 0        0     38
0-24 months   Guatemala BSC    GUATEMALA                      12                 1        0     38
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                  0       55    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                  1        2    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                  0       44    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   2                  1        5    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                  0       49    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   3                  1        1    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                  0       41    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   4                  1        2    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                  0       61    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   5                  1        5    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                  0       89    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   6                  1        7    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                  0       94    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   7                  1        5    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                  0       97    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   8                  1        3    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                  0       73    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   9                  1        3    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                 0       74    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   10                 1        2    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                 0       59    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   11                 1        1    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                 0       48    820
0-24 months   iLiNS-Zinc       BURKINA FASO                   12                 1        0    820
0-24 months   IRC              INDIA                          1                  0       11    395
0-24 months   IRC              INDIA                          1                  1       20    395
0-24 months   IRC              INDIA                          2                  0        8    395
0-24 months   IRC              INDIA                          2                  1       14    395
0-24 months   IRC              INDIA                          3                  0       11    395
0-24 months   IRC              INDIA                          3                  1       13    395
0-24 months   IRC              INDIA                          4                  0        6    395
0-24 months   IRC              INDIA                          4                  1       16    395
0-24 months   IRC              INDIA                          5                  0       10    395
0-24 months   IRC              INDIA                          5                  1       13    395
0-24 months   IRC              INDIA                          6                  0       18    395
0-24 months   IRC              INDIA                          6                  1       17    395
0-24 months   IRC              INDIA                          7                  0       18    395
0-24 months   IRC              INDIA                          7                  1       24    395
0-24 months   IRC              INDIA                          8                  0       18    395
0-24 months   IRC              INDIA                          8                  1       25    395
0-24 months   IRC              INDIA                          9                  0       14    395
0-24 months   IRC              INDIA                          9                  1       18    395
0-24 months   IRC              INDIA                          10                 0       19    395
0-24 months   IRC              INDIA                          10                 1       24    395
0-24 months   IRC              INDIA                          11                 0       12    395
0-24 months   IRC              INDIA                          11                 1       20    395
0-24 months   IRC              INDIA                          12                 0       17    395
0-24 months   IRC              INDIA                          12                 1       29    395
0-24 months   JiVitA-3         BANGLADESH                     1                  0      379   7571
0-24 months   JiVitA-3         BANGLADESH                     1                  1      273   7571
0-24 months   JiVitA-3         BANGLADESH                     2                  0      292   7571
0-24 months   JiVitA-3         BANGLADESH                     2                  1      238   7571
0-24 months   JiVitA-3         BANGLADESH                     3                  0      341   7571
0-24 months   JiVitA-3         BANGLADESH                     3                  1      263   7571
0-24 months   JiVitA-3         BANGLADESH                     4                  0      304   7571
0-24 months   JiVitA-3         BANGLADESH                     4                  1      212   7571
0-24 months   JiVitA-3         BANGLADESH                     5                  0      300   7571
0-24 months   JiVitA-3         BANGLADESH                     5                  1      186   7571
0-24 months   JiVitA-3         BANGLADESH                     6                  0      290   7571
0-24 months   JiVitA-3         BANGLADESH                     6                  1      166   7571
0-24 months   JiVitA-3         BANGLADESH                     7                  0      312   7571
0-24 months   JiVitA-3         BANGLADESH                     7                  1      175   7571
0-24 months   JiVitA-3         BANGLADESH                     8                  0      363   7571
0-24 months   JiVitA-3         BANGLADESH                     8                  1      252   7571
0-24 months   JiVitA-3         BANGLADESH                     9                  0      408   7571
0-24 months   JiVitA-3         BANGLADESH                     9                  1      379   7571
0-24 months   JiVitA-3         BANGLADESH                     10                 0      465   7571
0-24 months   JiVitA-3         BANGLADESH                     10                 1      368   7571
0-24 months   JiVitA-3         BANGLADESH                     11                 0      442   7571
0-24 months   JiVitA-3         BANGLADESH                     11                 1      368   7571
0-24 months   JiVitA-3         BANGLADESH                     12                 0      479   7571
0-24 months   JiVitA-3         BANGLADESH                     12                 1      316   7571
0-24 months   JiVitA-4         BANGLADESH                     1                  0       11   2069
0-24 months   JiVitA-4         BANGLADESH                     1                  1        2   2069
0-24 months   JiVitA-4         BANGLADESH                     2                  0       94   2069
0-24 months   JiVitA-4         BANGLADESH                     2                  1       34   2069
0-24 months   JiVitA-4         BANGLADESH                     3                  0      134   2069
0-24 months   JiVitA-4         BANGLADESH                     3                  1       50   2069
0-24 months   JiVitA-4         BANGLADESH                     4                  0      275   2069
0-24 months   JiVitA-4         BANGLADESH                     4                  1       97   2069
0-24 months   JiVitA-4         BANGLADESH                     5                  0      209   2069
0-24 months   JiVitA-4         BANGLADESH                     5                  1       60   2069
0-24 months   JiVitA-4         BANGLADESH                     6                  0      131   2069
0-24 months   JiVitA-4         BANGLADESH                     6                  1       57   2069
0-24 months   JiVitA-4         BANGLADESH                     7                  0      282   2069
0-24 months   JiVitA-4         BANGLADESH                     7                  1       82   2069
0-24 months   JiVitA-4         BANGLADESH                     8                  0      127   2069
0-24 months   JiVitA-4         BANGLADESH                     8                  1       64   2069
0-24 months   JiVitA-4         BANGLADESH                     9                  0      120   2069
0-24 months   JiVitA-4         BANGLADESH                     9                  1       55   2069
0-24 months   JiVitA-4         BANGLADESH                     10                 0       85   2069
0-24 months   JiVitA-4         BANGLADESH                     10                 1       26   2069
0-24 months   JiVitA-4         BANGLADESH                     11                 0       47   2069
0-24 months   JiVitA-4         BANGLADESH                     11                 1        6   2069
0-24 months   JiVitA-4         BANGLADESH                     12                 0       19   2069
0-24 months   JiVitA-4         BANGLADESH                     12                 1        2   2069
0-24 months   Keneba           GAMBIA                         1                  0       59   1828
0-24 months   Keneba           GAMBIA                         1                  1       98   1828
0-24 months   Keneba           GAMBIA                         2                  0       73   1828
0-24 months   Keneba           GAMBIA                         2                  1      136   1828
0-24 months   Keneba           GAMBIA                         3                  0       51   1828
0-24 months   Keneba           GAMBIA                         3                  1      113   1828
0-24 months   Keneba           GAMBIA                         4                  0       81   1828
0-24 months   Keneba           GAMBIA                         4                  1      103   1828
0-24 months   Keneba           GAMBIA                         5                  0       62   1828
0-24 months   Keneba           GAMBIA                         5                  1       87   1828
0-24 months   Keneba           GAMBIA                         6                  0       39   1828
0-24 months   Keneba           GAMBIA                         6                  1       55   1828
0-24 months   Keneba           GAMBIA                         7                  0       47   1828
0-24 months   Keneba           GAMBIA                         7                  1       66   1828
0-24 months   Keneba           GAMBIA                         8                  0       54   1828
0-24 months   Keneba           GAMBIA                         8                  1       61   1828
0-24 months   Keneba           GAMBIA                         9                  0       50   1828
0-24 months   Keneba           GAMBIA                         9                  1       90   1828
0-24 months   Keneba           GAMBIA                         10                 0       67   1828
0-24 months   Keneba           GAMBIA                         10                 1       99   1828
0-24 months   Keneba           GAMBIA                         11                 0       78   1828
0-24 months   Keneba           GAMBIA                         11                 1      133   1828
0-24 months   Keneba           GAMBIA                         12                 0       51   1828
0-24 months   Keneba           GAMBIA                         12                 1       75   1828
0-24 months   LCNI-5           MALAWI                         1                  0        5     79
0-24 months   LCNI-5           MALAWI                         1                  1        1     79
0-24 months   LCNI-5           MALAWI                         2                  0        9     79
0-24 months   LCNI-5           MALAWI                         2                  1        3     79
0-24 months   LCNI-5           MALAWI                         3                  0       12     79
0-24 months   LCNI-5           MALAWI                         3                  1        2     79
0-24 months   LCNI-5           MALAWI                         4                  0        6     79
0-24 months   LCNI-5           MALAWI                         4                  1        1     79
0-24 months   LCNI-5           MALAWI                         5                  0        6     79
0-24 months   LCNI-5           MALAWI                         5                  1        1     79
0-24 months   LCNI-5           MALAWI                         6                  0       12     79
0-24 months   LCNI-5           MALAWI                         6                  1        1     79
0-24 months   LCNI-5           MALAWI                         7                  0        4     79
0-24 months   LCNI-5           MALAWI                         7                  1        2     79
0-24 months   LCNI-5           MALAWI                         8                  0        3     79
0-24 months   LCNI-5           MALAWI                         8                  1        0     79
0-24 months   LCNI-5           MALAWI                         9                  0        2     79
0-24 months   LCNI-5           MALAWI                         9                  1        1     79
0-24 months   LCNI-5           MALAWI                         10                 0        0     79
0-24 months   LCNI-5           MALAWI                         10                 1        0     79
0-24 months   LCNI-5           MALAWI                         11                 0        5     79
0-24 months   LCNI-5           MALAWI                         11                 1        1     79
0-24 months   LCNI-5           MALAWI                         12                 0        2     79
0-24 months   LCNI-5           MALAWI                         12                 1        0     79
0-24 months   MAL-ED           BANGLADESH                     1                  0        1    124
0-24 months   MAL-ED           BANGLADESH                     1                  1        4    124
0-24 months   MAL-ED           BANGLADESH                     2                  0        6    124
0-24 months   MAL-ED           BANGLADESH                     2                  1        9    124
0-24 months   MAL-ED           BANGLADESH                     3                  0        7    124
0-24 months   MAL-ED           BANGLADESH                     3                  1       17    124
0-24 months   MAL-ED           BANGLADESH                     4                  0        5    124
0-24 months   MAL-ED           BANGLADESH                     4                  1        5    124
0-24 months   MAL-ED           BANGLADESH                     5                  0        6    124
0-24 months   MAL-ED           BANGLADESH                     5                  1        5    124
0-24 months   MAL-ED           BANGLADESH                     6                  0        1    124
0-24 months   MAL-ED           BANGLADESH                     6                  1        2    124
0-24 months   MAL-ED           BANGLADESH                     7                  0        4    124
0-24 months   MAL-ED           BANGLADESH                     7                  1        9    124
0-24 months   MAL-ED           BANGLADESH                     8                  0        1    124
0-24 months   MAL-ED           BANGLADESH                     8                  1        3    124
0-24 months   MAL-ED           BANGLADESH                     9                  0        5    124
0-24 months   MAL-ED           BANGLADESH                     9                  1       16    124
0-24 months   MAL-ED           BANGLADESH                     10                 0        3    124
0-24 months   MAL-ED           BANGLADESH                     10                 1        3    124
0-24 months   MAL-ED           BANGLADESH                     11                 0        2    124
0-24 months   MAL-ED           BANGLADESH                     11                 1        2    124
0-24 months   MAL-ED           BANGLADESH                     12                 0        3    124
0-24 months   MAL-ED           BANGLADESH                     12                 1        5    124
0-24 months   MAL-ED           BRAZIL                         1                  0        0     24
0-24 months   MAL-ED           BRAZIL                         1                  1        1     24
0-24 months   MAL-ED           BRAZIL                         2                  0        1     24
0-24 months   MAL-ED           BRAZIL                         2                  1        3     24
0-24 months   MAL-ED           BRAZIL                         3                  0        1     24
0-24 months   MAL-ED           BRAZIL                         3                  1        0     24
0-24 months   MAL-ED           BRAZIL                         4                  0        0     24
0-24 months   MAL-ED           BRAZIL                         4                  1        0     24
0-24 months   MAL-ED           BRAZIL                         5                  0        0     24
0-24 months   MAL-ED           BRAZIL                         5                  1        1     24
0-24 months   MAL-ED           BRAZIL                         6                  0        0     24
0-24 months   MAL-ED           BRAZIL                         6                  1        1     24
0-24 months   MAL-ED           BRAZIL                         7                  0        0     24
0-24 months   MAL-ED           BRAZIL                         7                  1        1     24
0-24 months   MAL-ED           BRAZIL                         8                  0        2     24
0-24 months   MAL-ED           BRAZIL                         8                  1        0     24
0-24 months   MAL-ED           BRAZIL                         9                  0        0     24
0-24 months   MAL-ED           BRAZIL                         9                  1        4     24
0-24 months   MAL-ED           BRAZIL                         10                 0        1     24
0-24 months   MAL-ED           BRAZIL                         10                 1        2     24
0-24 months   MAL-ED           BRAZIL                         11                 0        0     24
0-24 months   MAL-ED           BRAZIL                         11                 1        2     24
0-24 months   MAL-ED           BRAZIL                         12                 0        1     24
0-24 months   MAL-ED           BRAZIL                         12                 1        3     24
0-24 months   MAL-ED           INDIA                          1                  0        5    181
0-24 months   MAL-ED           INDIA                          1                  1        7    181
0-24 months   MAL-ED           INDIA                          2                  0        4    181
0-24 months   MAL-ED           INDIA                          2                  1        5    181
0-24 months   MAL-ED           INDIA                          3                  0        4    181
0-24 months   MAL-ED           INDIA                          3                  1        6    181
0-24 months   MAL-ED           INDIA                          4                  0        5    181
0-24 months   MAL-ED           INDIA                          4                  1       16    181
0-24 months   MAL-ED           INDIA                          5                  0        4    181
0-24 months   MAL-ED           INDIA                          5                  1        3    181
0-24 months   MAL-ED           INDIA                          6                  0        8    181
0-24 months   MAL-ED           INDIA                          6                  1        6    181
0-24 months   MAL-ED           INDIA                          7                  0        4    181
0-24 months   MAL-ED           INDIA                          7                  1       17    181
0-24 months   MAL-ED           INDIA                          8                  0       12    181
0-24 months   MAL-ED           INDIA                          8                  1       11    181
0-24 months   MAL-ED           INDIA                          9                  0        6    181
0-24 months   MAL-ED           INDIA                          9                  1       11    181
0-24 months   MAL-ED           INDIA                          10                 0        5    181
0-24 months   MAL-ED           INDIA                          10                 1        9    181
0-24 months   MAL-ED           INDIA                          11                 0        7    181
0-24 months   MAL-ED           INDIA                          11                 1       13    181
0-24 months   MAL-ED           INDIA                          12                 0        7    181
0-24 months   MAL-ED           INDIA                          12                 1        6    181
0-24 months   MAL-ED           NEPAL                          1                  0        1     98
0-24 months   MAL-ED           NEPAL                          1                  1       10     98
0-24 months   MAL-ED           NEPAL                          2                  0        0     98
0-24 months   MAL-ED           NEPAL                          2                  1        5     98
0-24 months   MAL-ED           NEPAL                          3                  0        0     98
0-24 months   MAL-ED           NEPAL                          3                  1        5     98
0-24 months   MAL-ED           NEPAL                          4                  0        3     98
0-24 months   MAL-ED           NEPAL                          4                  1       11     98
0-24 months   MAL-ED           NEPAL                          5                  0        3     98
0-24 months   MAL-ED           NEPAL                          5                  1       10     98
0-24 months   MAL-ED           NEPAL                          6                  0        4     98
0-24 months   MAL-ED           NEPAL                          6                  1        8     98
0-24 months   MAL-ED           NEPAL                          7                  0        1     98
0-24 months   MAL-ED           NEPAL                          7                  1        3     98
0-24 months   MAL-ED           NEPAL                          8                  0        5     98
0-24 months   MAL-ED           NEPAL                          8                  1       10     98
0-24 months   MAL-ED           NEPAL                          9                  0        1     98
0-24 months   MAL-ED           NEPAL                          9                  1        4     98
0-24 months   MAL-ED           NEPAL                          10                 0        1     98
0-24 months   MAL-ED           NEPAL                          10                 1        3     98
0-24 months   MAL-ED           NEPAL                          11                 0        0     98
0-24 months   MAL-ED           NEPAL                          11                 1        3     98
0-24 months   MAL-ED           NEPAL                          12                 0        1     98
0-24 months   MAL-ED           NEPAL                          12                 1        6     98
0-24 months   MAL-ED           PERU                           1                  0        1     35
0-24 months   MAL-ED           PERU                           1                  1        5     35
0-24 months   MAL-ED           PERU                           2                  0        1     35
0-24 months   MAL-ED           PERU                           2                  1        4     35
0-24 months   MAL-ED           PERU                           3                  0        0     35
0-24 months   MAL-ED           PERU                           3                  1        3     35
0-24 months   MAL-ED           PERU                           4                  0        0     35
0-24 months   MAL-ED           PERU                           4                  1        1     35
0-24 months   MAL-ED           PERU                           5                  0        1     35
0-24 months   MAL-ED           PERU                           5                  1        1     35
0-24 months   MAL-ED           PERU                           6                  0        1     35
0-24 months   MAL-ED           PERU                           6                  1        3     35
0-24 months   MAL-ED           PERU                           7                  0        0     35
0-24 months   MAL-ED           PERU                           7                  1        1     35
0-24 months   MAL-ED           PERU                           8                  0        1     35
0-24 months   MAL-ED           PERU                           8                  1        1     35
0-24 months   MAL-ED           PERU                           9                  0        1     35
0-24 months   MAL-ED           PERU                           9                  1        1     35
0-24 months   MAL-ED           PERU                           10                 0        0     35
0-24 months   MAL-ED           PERU                           10                 1        1     35
0-24 months   MAL-ED           PERU                           11                 0        0     35
0-24 months   MAL-ED           PERU                           11                 1        8     35
0-24 months   MAL-ED           PERU                           12                 0        0     35
0-24 months   MAL-ED           PERU                           12                 1        0     35
0-24 months   MAL-ED           SOUTH AFRICA                   1                  0        3     87
0-24 months   MAL-ED           SOUTH AFRICA                   1                  1       14     87
0-24 months   MAL-ED           SOUTH AFRICA                   2                  0        1     87
0-24 months   MAL-ED           SOUTH AFRICA                   2                  1        7     87
0-24 months   MAL-ED           SOUTH AFRICA                   3                  0        0     87
0-24 months   MAL-ED           SOUTH AFRICA                   3                  1        3     87
0-24 months   MAL-ED           SOUTH AFRICA                   4                  0        1     87
0-24 months   MAL-ED           SOUTH AFRICA                   4                  1        2     87
0-24 months   MAL-ED           SOUTH AFRICA                   5                  0        0     87
0-24 months   MAL-ED           SOUTH AFRICA                   5                  1        3     87
0-24 months   MAL-ED           SOUTH AFRICA                   6                  0        2     87
0-24 months   MAL-ED           SOUTH AFRICA                   6                  1        3     87
0-24 months   MAL-ED           SOUTH AFRICA                   7                  0        0     87
0-24 months   MAL-ED           SOUTH AFRICA                   7                  1        5     87
0-24 months   MAL-ED           SOUTH AFRICA                   8                  0        0     87
0-24 months   MAL-ED           SOUTH AFRICA                   8                  1        1     87
0-24 months   MAL-ED           SOUTH AFRICA                   9                  0        1     87
0-24 months   MAL-ED           SOUTH AFRICA                   9                  1        1     87
0-24 months   MAL-ED           SOUTH AFRICA                   10                 0        2     87
0-24 months   MAL-ED           SOUTH AFRICA                   10                 1       11     87
0-24 months   MAL-ED           SOUTH AFRICA                   11                 0        4     87
0-24 months   MAL-ED           SOUTH AFRICA                   11                 1        7     87
0-24 months   MAL-ED           SOUTH AFRICA                   12                 0        4     87
0-24 months   MAL-ED           SOUTH AFRICA                   12                 1       12     87
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1       12     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        6     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        4     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        5     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0        3     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        4     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0        0     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        5     51
0-24 months   NIH-Birth        BANGLADESH                     1                  0       27    421
0-24 months   NIH-Birth        BANGLADESH                     1                  1       27    421
0-24 months   NIH-Birth        BANGLADESH                     2                  0       17    421
0-24 months   NIH-Birth        BANGLADESH                     2                  1       21    421
0-24 months   NIH-Birth        BANGLADESH                     3                  0       28    421
0-24 months   NIH-Birth        BANGLADESH                     3                  1       21    421
0-24 months   NIH-Birth        BANGLADESH                     4                  0       16    421
0-24 months   NIH-Birth        BANGLADESH                     4                  1       20    421
0-24 months   NIH-Birth        BANGLADESH                     5                  0       12    421
0-24 months   NIH-Birth        BANGLADESH                     5                  1       21    421
0-24 months   NIH-Birth        BANGLADESH                     6                  0       10    421
0-24 months   NIH-Birth        BANGLADESH                     6                  1       20    421
0-24 months   NIH-Birth        BANGLADESH                     7                  0       21    421
0-24 months   NIH-Birth        BANGLADESH                     7                  1       18    421
0-24 months   NIH-Birth        BANGLADESH                     8                  0       13    421
0-24 months   NIH-Birth        BANGLADESH                     8                  1       18    421
0-24 months   NIH-Birth        BANGLADESH                     9                  0        9    421
0-24 months   NIH-Birth        BANGLADESH                     9                  1       15    421
0-24 months   NIH-Birth        BANGLADESH                     10                 0       15    421
0-24 months   NIH-Birth        BANGLADESH                     10                 1       14    421
0-24 months   NIH-Birth        BANGLADESH                     11                 0       16    421
0-24 months   NIH-Birth        BANGLADESH                     11                 1       17    421
0-24 months   NIH-Birth        BANGLADESH                     12                 0       18    421
0-24 months   NIH-Birth        BANGLADESH                     12                 1        7    421
0-24 months   PROBIT           BELARUS                        1                  0       44   4408
0-24 months   PROBIT           BELARUS                        1                  1      250   4408
0-24 months   PROBIT           BELARUS                        2                  0       24   4408
0-24 months   PROBIT           BELARUS                        2                  1      197   4408
0-24 months   PROBIT           BELARUS                        3                  0       26   4408
0-24 months   PROBIT           BELARUS                        3                  1      273   4408
0-24 months   PROBIT           BELARUS                        4                  0       31   4408
0-24 months   PROBIT           BELARUS                        4                  1      259   4408
0-24 months   PROBIT           BELARUS                        5                  0       40   4408
0-24 months   PROBIT           BELARUS                        5                  1      291   4408
0-24 months   PROBIT           BELARUS                        6                  0       42   4408
0-24 months   PROBIT           BELARUS                        6                  1      291   4408
0-24 months   PROBIT           BELARUS                        7                  0       35   4408
0-24 months   PROBIT           BELARUS                        7                  1      377   4408
0-24 months   PROBIT           BELARUS                        8                  0       52   4408
0-24 months   PROBIT           BELARUS                        8                  1      406   4408
0-24 months   PROBIT           BELARUS                        9                  0       49   4408
0-24 months   PROBIT           BELARUS                        9                  1      347   4408
0-24 months   PROBIT           BELARUS                        10                 0       59   4408
0-24 months   PROBIT           BELARUS                        10                 1      427   4408
0-24 months   PROBIT           BELARUS                        11                 0       69   4408
0-24 months   PROBIT           BELARUS                        11                 1      352   4408
0-24 months   PROBIT           BELARUS                        12                 0       55   4408
0-24 months   PROBIT           BELARUS                        12                 1      412   4408
0-24 months   ResPak           PAKISTAN                       1                  0        0    204
0-24 months   ResPak           PAKISTAN                       1                  1        2    204
0-24 months   ResPak           PAKISTAN                       2                  0        3    204
0-24 months   ResPak           PAKISTAN                       2                  1        1    204
0-24 months   ResPak           PAKISTAN                       3                  0        4    204
0-24 months   ResPak           PAKISTAN                       3                  1        3    204
0-24 months   ResPak           PAKISTAN                       4                  0        8    204
0-24 months   ResPak           PAKISTAN                       4                  1       10    204
0-24 months   ResPak           PAKISTAN                       5                  0       18    204
0-24 months   ResPak           PAKISTAN                       5                  1       14    204
0-24 months   ResPak           PAKISTAN                       6                  0       24    204
0-24 months   ResPak           PAKISTAN                       6                  1       11    204
0-24 months   ResPak           PAKISTAN                       7                  0       17    204
0-24 months   ResPak           PAKISTAN                       7                  1       16    204
0-24 months   ResPak           PAKISTAN                       8                  0       12    204
0-24 months   ResPak           PAKISTAN                       8                  1       14    204
0-24 months   ResPak           PAKISTAN                       9                  0       17    204
0-24 months   ResPak           PAKISTAN                       9                  1        9    204
0-24 months   ResPak           PAKISTAN                       10                 0        5    204
0-24 months   ResPak           PAKISTAN                       10                 1        7    204
0-24 months   ResPak           PAKISTAN                       11                 0        3    204
0-24 months   ResPak           PAKISTAN                       11                 1        5    204
0-24 months   ResPak           PAKISTAN                       12                 0        1    204
0-24 months   ResPak           PAKISTAN                       12                 1        0    204
0-24 months   SAS-CompFeed     INDIA                          1                  0       43    814
0-24 months   SAS-CompFeed     INDIA                          1                  1       19    814
0-24 months   SAS-CompFeed     INDIA                          2                  0       30    814
0-24 months   SAS-CompFeed     INDIA                          2                  1        9    814
0-24 months   SAS-CompFeed     INDIA                          3                  0       31    814
0-24 months   SAS-CompFeed     INDIA                          3                  1       12    814
0-24 months   SAS-CompFeed     INDIA                          4                  0       32    814
0-24 months   SAS-CompFeed     INDIA                          4                  1       16    814
0-24 months   SAS-CompFeed     INDIA                          5                  0       38    814
0-24 months   SAS-CompFeed     INDIA                          5                  1       25    814
0-24 months   SAS-CompFeed     INDIA                          6                  0       34    814
0-24 months   SAS-CompFeed     INDIA                          6                  1       36    814
0-24 months   SAS-CompFeed     INDIA                          7                  0       32    814
0-24 months   SAS-CompFeed     INDIA                          7                  1       29    814
0-24 months   SAS-CompFeed     INDIA                          8                  0       53    814
0-24 months   SAS-CompFeed     INDIA                          8                  1       35    814
0-24 months   SAS-CompFeed     INDIA                          9                  0       59    814
0-24 months   SAS-CompFeed     INDIA                          9                  1       45    814
0-24 months   SAS-CompFeed     INDIA                          10                 0       44    814
0-24 months   SAS-CompFeed     INDIA                          10                 1       46    814
0-24 months   SAS-CompFeed     INDIA                          11                 0       63    814
0-24 months   SAS-CompFeed     INDIA                          11                 1       23    814
0-24 months   SAS-CompFeed     INDIA                          12                 0       45    814
0-24 months   SAS-CompFeed     INDIA                          12                 1       15    814
0-24 months   SAS-FoodSuppl    INDIA                          1                  0       35    234
0-24 months   SAS-FoodSuppl    INDIA                          1                  1        4    234
0-24 months   SAS-FoodSuppl    INDIA                          2                  0       27    234
0-24 months   SAS-FoodSuppl    INDIA                          2                  1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          3                  0       23    234
0-24 months   SAS-FoodSuppl    INDIA                          3                  1        1    234
0-24 months   SAS-FoodSuppl    INDIA                          4                  0       19    234
0-24 months   SAS-FoodSuppl    INDIA                          4                  1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          5                  0       17    234
0-24 months   SAS-FoodSuppl    INDIA                          5                  1        2    234
0-24 months   SAS-FoodSuppl    INDIA                          6                  0       20    234
0-24 months   SAS-FoodSuppl    INDIA                          6                  1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          7                  0        8    234
0-24 months   SAS-FoodSuppl    INDIA                          7                  1        1    234
0-24 months   SAS-FoodSuppl    INDIA                          8                  0        0    234
0-24 months   SAS-FoodSuppl    INDIA                          8                  1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          9                  0        8    234
0-24 months   SAS-FoodSuppl    INDIA                          9                  1        2    234
0-24 months   SAS-FoodSuppl    INDIA                          10                 0       12    234
0-24 months   SAS-FoodSuppl    INDIA                          10                 1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          11                 0       17    234
0-24 months   SAS-FoodSuppl    INDIA                          11                 1        3    234
0-24 months   SAS-FoodSuppl    INDIA                          12                 0       35    234
0-24 months   SAS-FoodSuppl    INDIA                          12                 1        0    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       36    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       41    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0       21    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       26    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0       25    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       42    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0       13    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       33    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0       16    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       22    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0       14    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       21    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0       17    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       30    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0       22    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       41    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0       24    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       57    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0       18    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       43    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0       25    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       48    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0       35    713
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       43    713
0-24 months   ZVITAMBO         ZIMBABWE                       1                  0      168   3615
0-24 months   ZVITAMBO         ZIMBABWE                       1                  1      172   3615
0-24 months   ZVITAMBO         ZIMBABWE                       2                  0      125   3615
0-24 months   ZVITAMBO         ZIMBABWE                       2                  1      127   3615
0-24 months   ZVITAMBO         ZIMBABWE                       3                  0      158   3615
0-24 months   ZVITAMBO         ZIMBABWE                       3                  1      152   3615
0-24 months   ZVITAMBO         ZIMBABWE                       4                  0       97   3615
0-24 months   ZVITAMBO         ZIMBABWE                       4                  1      125   3615
0-24 months   ZVITAMBO         ZIMBABWE                       5                  0      121   3615
0-24 months   ZVITAMBO         ZIMBABWE                       5                  1      130   3615
0-24 months   ZVITAMBO         ZIMBABWE                       6                  0      122   3615
0-24 months   ZVITAMBO         ZIMBABWE                       6                  1      189   3615
0-24 months   ZVITAMBO         ZIMBABWE                       7                  0      133   3615
0-24 months   ZVITAMBO         ZIMBABWE                       7                  1      201   3615
0-24 months   ZVITAMBO         ZIMBABWE                       8                  0      148   3615
0-24 months   ZVITAMBO         ZIMBABWE                       8                  1      197   3615
0-24 months   ZVITAMBO         ZIMBABWE                       9                  0      132   3615
0-24 months   ZVITAMBO         ZIMBABWE                       9                  1      170   3615
0-24 months   ZVITAMBO         ZIMBABWE                       10                 0      125   3615
0-24 months   ZVITAMBO         ZIMBABWE                       10                 1      148   3615
0-24 months   ZVITAMBO         ZIMBABWE                       11                 0      147   3615
0-24 months   ZVITAMBO         ZIMBABWE                       11                 1      176   3615
0-24 months   ZVITAMBO         ZIMBABWE                       12                 0      175   3615
0-24 months   ZVITAMBO         ZIMBABWE                       12                 1      177   3615
0-6 months    CMC-V-BCS-2002   INDIA                          1                  0        2    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                  1       13    201
0-6 months    CMC-V-BCS-2002   INDIA                          2                  0        6    201
0-6 months    CMC-V-BCS-2002   INDIA                          2                  1        9    201
0-6 months    CMC-V-BCS-2002   INDIA                          3                  0        5    201
0-6 months    CMC-V-BCS-2002   INDIA                          3                  1        8    201
0-6 months    CMC-V-BCS-2002   INDIA                          4                  0        7    201
0-6 months    CMC-V-BCS-2002   INDIA                          4                  1        9    201
0-6 months    CMC-V-BCS-2002   INDIA                          5                  0        9    201
0-6 months    CMC-V-BCS-2002   INDIA                          5                  1       13    201
0-6 months    CMC-V-BCS-2002   INDIA                          6                  0        5    201
0-6 months    CMC-V-BCS-2002   INDIA                          6                  1       14    201
0-6 months    CMC-V-BCS-2002   INDIA                          7                  0        5    201
0-6 months    CMC-V-BCS-2002   INDIA                          7                  1        9    201
0-6 months    CMC-V-BCS-2002   INDIA                          8                  0        5    201
0-6 months    CMC-V-BCS-2002   INDIA                          8                  1       11    201
0-6 months    CMC-V-BCS-2002   INDIA                          9                  0        5    201
0-6 months    CMC-V-BCS-2002   INDIA                          9                  1       10    201
0-6 months    CMC-V-BCS-2002   INDIA                          10                 0        3    201
0-6 months    CMC-V-BCS-2002   INDIA                          10                 1        7    201
0-6 months    CMC-V-BCS-2002   INDIA                          11                 0        7    201
0-6 months    CMC-V-BCS-2002   INDIA                          11                 1       20    201
0-6 months    CMC-V-BCS-2002   INDIA                          12                 0        7    201
0-6 months    CMC-V-BCS-2002   INDIA                          12                 1       12    201
0-6 months    CMIN             BANGLADESH                     1                  0        3     52
0-6 months    CMIN             BANGLADESH                     1                  1        5     52
0-6 months    CMIN             BANGLADESH                     2                  0        4     52
0-6 months    CMIN             BANGLADESH                     2                  1        4     52
0-6 months    CMIN             BANGLADESH                     3                  0        0     52
0-6 months    CMIN             BANGLADESH                     3                  1        3     52
0-6 months    CMIN             BANGLADESH                     4                  0        2     52
0-6 months    CMIN             BANGLADESH                     4                  1        3     52
0-6 months    CMIN             BANGLADESH                     5                  0        4     52
0-6 months    CMIN             BANGLADESH                     5                  1        2     52
0-6 months    CMIN             BANGLADESH                     6                  0        4     52
0-6 months    CMIN             BANGLADESH                     6                  1        1     52
0-6 months    CMIN             BANGLADESH                     7                  0        1     52
0-6 months    CMIN             BANGLADESH                     7                  1        2     52
0-6 months    CMIN             BANGLADESH                     8                  0        1     52
0-6 months    CMIN             BANGLADESH                     8                  1        0     52
0-6 months    CMIN             BANGLADESH                     9                  0        1     52
0-6 months    CMIN             BANGLADESH                     9                  1        2     52
0-6 months    CMIN             BANGLADESH                     10                 0        1     52
0-6 months    CMIN             BANGLADESH                     10                 1        0     52
0-6 months    CMIN             BANGLADESH                     11                 0        1     52
0-6 months    CMIN             BANGLADESH                     11                 1        0     52
0-6 months    CMIN             BANGLADESH                     12                 0        3     52
0-6 months    CMIN             BANGLADESH                     12                 1        5     52
0-6 months    CONTENT          PERU                           1                  0        0      4
0-6 months    CONTENT          PERU                           1                  1        1      4
0-6 months    CONTENT          PERU                           2                  0        0      4
0-6 months    CONTENT          PERU                           2                  1        0      4
0-6 months    CONTENT          PERU                           3                  0        0      4
0-6 months    CONTENT          PERU                           3                  1        3      4
0-6 months    CONTENT          PERU                           4                  0        0      4
0-6 months    CONTENT          PERU                           4                  1        0      4
0-6 months    CONTENT          PERU                           5                  0        0      4
0-6 months    CONTENT          PERU                           5                  1        0      4
0-6 months    CONTENT          PERU                           6                  0        0      4
0-6 months    CONTENT          PERU                           6                  1        0      4
0-6 months    CONTENT          PERU                           7                  0        0      4
0-6 months    CONTENT          PERU                           7                  1        0      4
0-6 months    CONTENT          PERU                           8                  0        0      4
0-6 months    CONTENT          PERU                           8                  1        0      4
0-6 months    CONTENT          PERU                           9                  0        0      4
0-6 months    CONTENT          PERU                           9                  1        0      4
0-6 months    CONTENT          PERU                           10                 0        0      4
0-6 months    CONTENT          PERU                           10                 1        0      4
0-6 months    CONTENT          PERU                           11                 0        0      4
0-6 months    CONTENT          PERU                           11                 1        0      4
0-6 months    CONTENT          PERU                           12                 0        0      4
0-6 months    CONTENT          PERU                           12                 1        0      4
0-6 months    EE               PAKISTAN                       1                  0       16    127
0-6 months    EE               PAKISTAN                       1                  1       18    127
0-6 months    EE               PAKISTAN                       2                  0       10    127
0-6 months    EE               PAKISTAN                       2                  1        6    127
0-6 months    EE               PAKISTAN                       3                  0        9    127
0-6 months    EE               PAKISTAN                       3                  1       13    127
0-6 months    EE               PAKISTAN                       4                  0        1    127
0-6 months    EE               PAKISTAN                       4                  1        6    127
0-6 months    EE               PAKISTAN                       5                  0        0    127
0-6 months    EE               PAKISTAN                       5                  1        0    127
0-6 months    EE               PAKISTAN                       6                  0        0    127
0-6 months    EE               PAKISTAN                       6                  1        0    127
0-6 months    EE               PAKISTAN                       7                  0        0    127
0-6 months    EE               PAKISTAN                       7                  1        0    127
0-6 months    EE               PAKISTAN                       8                  0        0    127
0-6 months    EE               PAKISTAN                       8                  1        0    127
0-6 months    EE               PAKISTAN                       9                  0        0    127
0-6 months    EE               PAKISTAN                       9                  1        0    127
0-6 months    EE               PAKISTAN                       10                 0        0    127
0-6 months    EE               PAKISTAN                       10                 1        0    127
0-6 months    EE               PAKISTAN                       11                 0       11    127
0-6 months    EE               PAKISTAN                       11                 1       12    127
0-6 months    EE               PAKISTAN                       12                 0        8    127
0-6 months    EE               PAKISTAN                       12                 1       17    127
0-6 months    GMS-Nepal        NEPAL                          1                  0        0    263
0-6 months    GMS-Nepal        NEPAL                          1                  1        0    263
0-6 months    GMS-Nepal        NEPAL                          2                  0        0    263
0-6 months    GMS-Nepal        NEPAL                          2                  1        0    263
0-6 months    GMS-Nepal        NEPAL                          3                  0        0    263
0-6 months    GMS-Nepal        NEPAL                          3                  1        0    263
0-6 months    GMS-Nepal        NEPAL                          4                  0        0    263
0-6 months    GMS-Nepal        NEPAL                          4                  1        1    263
0-6 months    GMS-Nepal        NEPAL                          5                  0        0    263
0-6 months    GMS-Nepal        NEPAL                          5                  1        0    263
0-6 months    GMS-Nepal        NEPAL                          6                  0       25    263
0-6 months    GMS-Nepal        NEPAL                          6                  1       34    263
0-6 months    GMS-Nepal        NEPAL                          7                  0       40    263
0-6 months    GMS-Nepal        NEPAL                          7                  1       68    263
0-6 months    GMS-Nepal        NEPAL                          8                  0       39    263
0-6 months    GMS-Nepal        NEPAL                          8                  1       56    263
0-6 months    GMS-Nepal        NEPAL                          9                  0        0    263
0-6 months    GMS-Nepal        NEPAL                          9                  1        0    263
0-6 months    GMS-Nepal        NEPAL                          10                 0        0    263
0-6 months    GMS-Nepal        NEPAL                          10                 1        0    263
0-6 months    GMS-Nepal        NEPAL                          11                 0        0    263
0-6 months    GMS-Nepal        NEPAL                          11                 1        0    263
0-6 months    GMS-Nepal        NEPAL                          12                 0        0    263
0-6 months    GMS-Nepal        NEPAL                          12                 1        0    263
0-6 months    Guatemala BSC    GUATEMALA                      1                  0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      1                  1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      2                  0        1     10
0-6 months    Guatemala BSC    GUATEMALA                      2                  1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      3                  0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      3                  1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      4                  0        3     10
0-6 months    Guatemala BSC    GUATEMALA                      4                  1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      5                  0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      5                  1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      6                  0        1     10
0-6 months    Guatemala BSC    GUATEMALA                      6                  1        1     10
0-6 months    Guatemala BSC    GUATEMALA                      7                  0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      7                  1        2     10
0-6 months    Guatemala BSC    GUATEMALA                      8                  0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      8                  1        1     10
0-6 months    Guatemala BSC    GUATEMALA                      9                  0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      9                  1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      10                 0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      10                 1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      11                 0        1     10
0-6 months    Guatemala BSC    GUATEMALA                      11                 1        0     10
0-6 months    Guatemala BSC    GUATEMALA                      12                 0        0     10
0-6 months    Guatemala BSC    GUATEMALA                      12                 1        0     10
0-6 months    IRC              INDIA                          1                  0        7    240
0-6 months    IRC              INDIA                          1                  1        9    240
0-6 months    IRC              INDIA                          2                  0        5    240
0-6 months    IRC              INDIA                          2                  1        7    240
0-6 months    IRC              INDIA                          3                  0        8    240
0-6 months    IRC              INDIA                          3                  1        9    240
0-6 months    IRC              INDIA                          4                  0        2    240
0-6 months    IRC              INDIA                          4                  1        9    240
0-6 months    IRC              INDIA                          5                  0        4    240
0-6 months    IRC              INDIA                          5                  1       10    240
0-6 months    IRC              INDIA                          6                  0       11    240
0-6 months    IRC              INDIA                          6                  1       11    240
0-6 months    IRC              INDIA                          7                  0       10    240
0-6 months    IRC              INDIA                          7                  1       18    240
0-6 months    IRC              INDIA                          8                  0        9    240
0-6 months    IRC              INDIA                          8                  1       16    240
0-6 months    IRC              INDIA                          9                  0        4    240
0-6 months    IRC              INDIA                          9                  1       12    240
0-6 months    IRC              INDIA                          10                 0        9    240
0-6 months    IRC              INDIA                          10                 1       16    240
0-6 months    IRC              INDIA                          11                 0        6    240
0-6 months    IRC              INDIA                          11                 1       16    240
0-6 months    IRC              INDIA                          12                 0       12    240
0-6 months    IRC              INDIA                          12                 1       20    240
0-6 months    JiVitA-3         BANGLADESH                     1                  0      164   4734
0-6 months    JiVitA-3         BANGLADESH                     1                  1      273   4734
0-6 months    JiVitA-3         BANGLADESH                     2                  0      122   4734
0-6 months    JiVitA-3         BANGLADESH                     2                  1      238   4734
0-6 months    JiVitA-3         BANGLADESH                     3                  0      153   4734
0-6 months    JiVitA-3         BANGLADESH                     3                  1      263   4734
0-6 months    JiVitA-3         BANGLADESH                     4                  0      113   4734
0-6 months    JiVitA-3         BANGLADESH                     4                  1      212   4734
0-6 months    JiVitA-3         BANGLADESH                     5                  0       61   4734
0-6 months    JiVitA-3         BANGLADESH                     5                  1      186   4734
0-6 months    JiVitA-3         BANGLADESH                     6                  0       65   4734
0-6 months    JiVitA-3         BANGLADESH                     6                  1      166   4734
0-6 months    JiVitA-3         BANGLADESH                     7                  0       70   4734
0-6 months    JiVitA-3         BANGLADESH                     7                  1      175   4734
0-6 months    JiVitA-3         BANGLADESH                     8                  0       98   4734
0-6 months    JiVitA-3         BANGLADESH                     8                  1      252   4734
0-6 months    JiVitA-3         BANGLADESH                     9                  0      141   4734
0-6 months    JiVitA-3         BANGLADESH                     9                  1      379   4734
0-6 months    JiVitA-3         BANGLADESH                     10                 0      169   4734
0-6 months    JiVitA-3         BANGLADESH                     10                 1      368   4734
0-6 months    JiVitA-3         BANGLADESH                     11                 0      161   4734
0-6 months    JiVitA-3         BANGLADESH                     11                 1      368   4734
0-6 months    JiVitA-3         BANGLADESH                     12                 0      221   4734
0-6 months    JiVitA-3         BANGLADESH                     12                 1      316   4734
0-6 months    JiVitA-4         BANGLADESH                     1                  0        3    553
0-6 months    JiVitA-4         BANGLADESH                     1                  1        0    553
0-6 months    JiVitA-4         BANGLADESH                     2                  0       18    553
0-6 months    JiVitA-4         BANGLADESH                     2                  1       16    553
0-6 months    JiVitA-4         BANGLADESH                     3                  0       25    553
0-6 months    JiVitA-4         BANGLADESH                     3                  1       27    553
0-6 months    JiVitA-4         BANGLADESH                     4                  0       33    553
0-6 months    JiVitA-4         BANGLADESH                     4                  1       63    553
0-6 months    JiVitA-4         BANGLADESH                     5                  0       31    553
0-6 months    JiVitA-4         BANGLADESH                     5                  1       34    553
0-6 months    JiVitA-4         BANGLADESH                     6                  0       23    553
0-6 months    JiVitA-4         BANGLADESH                     6                  1       30    553
0-6 months    JiVitA-4         BANGLADESH                     7                  0       62    553
0-6 months    JiVitA-4         BANGLADESH                     7                  1       37    553
0-6 months    JiVitA-4         BANGLADESH                     8                  0       18    553
0-6 months    JiVitA-4         BANGLADESH                     8                  1       40    553
0-6 months    JiVitA-4         BANGLADESH                     9                  0       15    553
0-6 months    JiVitA-4         BANGLADESH                     9                  1       41    553
0-6 months    JiVitA-4         BANGLADESH                     10                 0        7    553
0-6 months    JiVitA-4         BANGLADESH                     10                 1       18    553
0-6 months    JiVitA-4         BANGLADESH                     11                 0        6    553
0-6 months    JiVitA-4         BANGLADESH                     11                 1        2    553
0-6 months    JiVitA-4         BANGLADESH                     12                 0        3    553
0-6 months    JiVitA-4         BANGLADESH                     12                 1        1    553
0-6 months    Keneba           GAMBIA                         1                  0       12    724
0-6 months    Keneba           GAMBIA                         1                  1       49    724
0-6 months    Keneba           GAMBIA                         2                  0       13    724
0-6 months    Keneba           GAMBIA                         2                  1       63    724
0-6 months    Keneba           GAMBIA                         3                  0       12    724
0-6 months    Keneba           GAMBIA                         3                  1       50    724
0-6 months    Keneba           GAMBIA                         4                  0       20    724
0-6 months    Keneba           GAMBIA                         4                  1       56    724
0-6 months    Keneba           GAMBIA                         5                  0       18    724
0-6 months    Keneba           GAMBIA                         5                  1       47    724
0-6 months    Keneba           GAMBIA                         6                  0       16    724
0-6 months    Keneba           GAMBIA                         6                  1       33    724
0-6 months    Keneba           GAMBIA                         7                  0       10    724
0-6 months    Keneba           GAMBIA                         7                  1       25    724
0-6 months    Keneba           GAMBIA                         8                  0       13    724
0-6 months    Keneba           GAMBIA                         8                  1       28    724
0-6 months    Keneba           GAMBIA                         9                  0       11    724
0-6 months    Keneba           GAMBIA                         9                  1       50    724
0-6 months    Keneba           GAMBIA                         10                 0       15    724
0-6 months    Keneba           GAMBIA                         10                 1       51    724
0-6 months    Keneba           GAMBIA                         11                 0       16    724
0-6 months    Keneba           GAMBIA                         11                 1       67    724
0-6 months    Keneba           GAMBIA                         12                 0        9    724
0-6 months    Keneba           GAMBIA                         12                 1       40    724
0-6 months    LCNI-5           MALAWI                         1                  0        0      4
0-6 months    LCNI-5           MALAWI                         1                  1        0      4
0-6 months    LCNI-5           MALAWI                         2                  0        0      4
0-6 months    LCNI-5           MALAWI                         2                  1        0      4
0-6 months    LCNI-5           MALAWI                         3                  0        1      4
0-6 months    LCNI-5           MALAWI                         3                  1        0      4
0-6 months    LCNI-5           MALAWI                         4                  0        1      4
0-6 months    LCNI-5           MALAWI                         4                  1        0      4
0-6 months    LCNI-5           MALAWI                         5                  0        1      4
0-6 months    LCNI-5           MALAWI                         5                  1        0      4
0-6 months    LCNI-5           MALAWI                         6                  0        0      4
0-6 months    LCNI-5           MALAWI                         6                  1        0      4
0-6 months    LCNI-5           MALAWI                         7                  0        1      4
0-6 months    LCNI-5           MALAWI                         7                  1        0      4
0-6 months    LCNI-5           MALAWI                         8                  0        0      4
0-6 months    LCNI-5           MALAWI                         8                  1        0      4
0-6 months    LCNI-5           MALAWI                         9                  0        0      4
0-6 months    LCNI-5           MALAWI                         9                  1        0      4
0-6 months    LCNI-5           MALAWI                         10                 0        0      4
0-6 months    LCNI-5           MALAWI                         10                 1        0      4
0-6 months    LCNI-5           MALAWI                         11                 0        0      4
0-6 months    LCNI-5           MALAWI                         11                 1        0      4
0-6 months    LCNI-5           MALAWI                         12                 0        0      4
0-6 months    LCNI-5           MALAWI                         12                 1        0      4
0-6 months    MAL-ED           BANGLADESH                     1                  0        0     63
0-6 months    MAL-ED           BANGLADESH                     1                  1        3     63
0-6 months    MAL-ED           BANGLADESH                     2                  0        1     63
0-6 months    MAL-ED           BANGLADESH                     2                  1        5     63
0-6 months    MAL-ED           BANGLADESH                     3                  0        1     63
0-6 months    MAL-ED           BANGLADESH                     3                  1        8     63
0-6 months    MAL-ED           BANGLADESH                     4                  0        3     63
0-6 months    MAL-ED           BANGLADESH                     4                  1        4     63
0-6 months    MAL-ED           BANGLADESH                     5                  0        2     63
0-6 months    MAL-ED           BANGLADESH                     5                  1        3     63
0-6 months    MAL-ED           BANGLADESH                     6                  0        1     63
0-6 months    MAL-ED           BANGLADESH                     6                  1        1     63
0-6 months    MAL-ED           BANGLADESH                     7                  0        2     63
0-6 months    MAL-ED           BANGLADESH                     7                  1        6     63
0-6 months    MAL-ED           BANGLADESH                     8                  0        0     63
0-6 months    MAL-ED           BANGLADESH                     8                  1        3     63
0-6 months    MAL-ED           BANGLADESH                     9                  0        0     63
0-6 months    MAL-ED           BANGLADESH                     9                  1        8     63
0-6 months    MAL-ED           BANGLADESH                     10                 0        2     63
0-6 months    MAL-ED           BANGLADESH                     10                 1        3     63
0-6 months    MAL-ED           BANGLADESH                     11                 0        0     63
0-6 months    MAL-ED           BANGLADESH                     11                 1        2     63
0-6 months    MAL-ED           BANGLADESH                     12                 0        1     63
0-6 months    MAL-ED           BANGLADESH                     12                 1        4     63
0-6 months    MAL-ED           BRAZIL                         1                  0        0     15
0-6 months    MAL-ED           BRAZIL                         1                  1        1     15
0-6 months    MAL-ED           BRAZIL                         2                  0        0     15
0-6 months    MAL-ED           BRAZIL                         2                  1        3     15
0-6 months    MAL-ED           BRAZIL                         3                  0        0     15
0-6 months    MAL-ED           BRAZIL                         3                  1        0     15
0-6 months    MAL-ED           BRAZIL                         4                  0        0     15
0-6 months    MAL-ED           BRAZIL                         4                  1        0     15
0-6 months    MAL-ED           BRAZIL                         5                  0        0     15
0-6 months    MAL-ED           BRAZIL                         5                  1        1     15
0-6 months    MAL-ED           BRAZIL                         6                  0        0     15
0-6 months    MAL-ED           BRAZIL                         6                  1        1     15
0-6 months    MAL-ED           BRAZIL                         7                  0        0     15
0-6 months    MAL-ED           BRAZIL                         7                  1        1     15
0-6 months    MAL-ED           BRAZIL                         8                  0        0     15
0-6 months    MAL-ED           BRAZIL                         8                  1        0     15
0-6 months    MAL-ED           BRAZIL                         9                  0        0     15
0-6 months    MAL-ED           BRAZIL                         9                  1        2     15
0-6 months    MAL-ED           BRAZIL                         10                 0        0     15
0-6 months    MAL-ED           BRAZIL                         10                 1        1     15
0-6 months    MAL-ED           BRAZIL                         11                 0        0     15
0-6 months    MAL-ED           BRAZIL                         11                 1        2     15
0-6 months    MAL-ED           BRAZIL                         12                 0        1     15
0-6 months    MAL-ED           BRAZIL                         12                 1        2     15
0-6 months    MAL-ED           INDIA                          1                  0        4     86
0-6 months    MAL-ED           INDIA                          1                  1        4     86
0-6 months    MAL-ED           INDIA                          2                  0        2     86
0-6 months    MAL-ED           INDIA                          2                  1        3     86
0-6 months    MAL-ED           INDIA                          3                  0        3     86
0-6 months    MAL-ED           INDIA                          3                  1        6     86
0-6 months    MAL-ED           INDIA                          4                  0        1     86
0-6 months    MAL-ED           INDIA                          4                  1       10     86
0-6 months    MAL-ED           INDIA                          5                  0        1     86
0-6 months    MAL-ED           INDIA                          5                  1        1     86
0-6 months    MAL-ED           INDIA                          6                  0        5     86
0-6 months    MAL-ED           INDIA                          6                  1        4     86
0-6 months    MAL-ED           INDIA                          7                  0        1     86
0-6 months    MAL-ED           INDIA                          7                  1        9     86
0-6 months    MAL-ED           INDIA                          8                  0        3     86
0-6 months    MAL-ED           INDIA                          8                  1        6     86
0-6 months    MAL-ED           INDIA                          9                  0        1     86
0-6 months    MAL-ED           INDIA                          9                  1        5     86
0-6 months    MAL-ED           INDIA                          10                 0        2     86
0-6 months    MAL-ED           INDIA                          10                 1        4     86
0-6 months    MAL-ED           INDIA                          11                 0        1     86
0-6 months    MAL-ED           INDIA                          11                 1        6     86
0-6 months    MAL-ED           INDIA                          12                 0        3     86
0-6 months    MAL-ED           INDIA                          12                 1        1     86
0-6 months    MAL-ED           NEPAL                          1                  0        1     48
0-6 months    MAL-ED           NEPAL                          1                  1        3     48
0-6 months    MAL-ED           NEPAL                          2                  0        0     48
0-6 months    MAL-ED           NEPAL                          2                  1        1     48
0-6 months    MAL-ED           NEPAL                          3                  0        0     48
0-6 months    MAL-ED           NEPAL                          3                  1        4     48
0-6 months    MAL-ED           NEPAL                          4                  0        0     48
0-6 months    MAL-ED           NEPAL                          4                  1        7     48
0-6 months    MAL-ED           NEPAL                          5                  0        2     48
0-6 months    MAL-ED           NEPAL                          5                  1        5     48
0-6 months    MAL-ED           NEPAL                          6                  0        1     48
0-6 months    MAL-ED           NEPAL                          6                  1        3     48
0-6 months    MAL-ED           NEPAL                          7                  0        1     48
0-6 months    MAL-ED           NEPAL                          7                  1        2     48
0-6 months    MAL-ED           NEPAL                          8                  0        3     48
0-6 months    MAL-ED           NEPAL                          8                  1        4     48
0-6 months    MAL-ED           NEPAL                          9                  0        1     48
0-6 months    MAL-ED           NEPAL                          9                  1        4     48
0-6 months    MAL-ED           NEPAL                          10                 0        0     48
0-6 months    MAL-ED           NEPAL                          10                 1        2     48
0-6 months    MAL-ED           NEPAL                          11                 0        0     48
0-6 months    MAL-ED           NEPAL                          11                 1        1     48
0-6 months    MAL-ED           NEPAL                          12                 0        0     48
0-6 months    MAL-ED           NEPAL                          12                 1        3     48
0-6 months    MAL-ED           PERU                           1                  0        0     11
0-6 months    MAL-ED           PERU                           1                  1        0     11
0-6 months    MAL-ED           PERU                           2                  0        0     11
0-6 months    MAL-ED           PERU                           2                  1        2     11
0-6 months    MAL-ED           PERU                           3                  0        0     11
0-6 months    MAL-ED           PERU                           3                  1        0     11
0-6 months    MAL-ED           PERU                           4                  0        0     11
0-6 months    MAL-ED           PERU                           4                  1        0     11
0-6 months    MAL-ED           PERU                           5                  0        0     11
0-6 months    MAL-ED           PERU                           5                  1        1     11
0-6 months    MAL-ED           PERU                           6                  0        0     11
0-6 months    MAL-ED           PERU                           6                  1        1     11
0-6 months    MAL-ED           PERU                           7                  0        0     11
0-6 months    MAL-ED           PERU                           7                  1        1     11
0-6 months    MAL-ED           PERU                           8                  0        0     11
0-6 months    MAL-ED           PERU                           8                  1        1     11
0-6 months    MAL-ED           PERU                           9                  0        0     11
0-6 months    MAL-ED           PERU                           9                  1        0     11
0-6 months    MAL-ED           PERU                           10                 0        0     11
0-6 months    MAL-ED           PERU                           10                 1        1     11
0-6 months    MAL-ED           PERU                           11                 0        0     11
0-6 months    MAL-ED           PERU                           11                 1        4     11
0-6 months    MAL-ED           PERU                           12                 0        0     11
0-6 months    MAL-ED           PERU                           12                 1        0     11
0-6 months    MAL-ED           SOUTH AFRICA                   1                  0        1     36
0-6 months    MAL-ED           SOUTH AFRICA                   1                  1        2     36
0-6 months    MAL-ED           SOUTH AFRICA                   2                  0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   2                  1        4     36
0-6 months    MAL-ED           SOUTH AFRICA                   3                  0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   3                  1        2     36
0-6 months    MAL-ED           SOUTH AFRICA                   4                  0        1     36
0-6 months    MAL-ED           SOUTH AFRICA                   4                  1        1     36
0-6 months    MAL-ED           SOUTH AFRICA                   5                  0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   5                  1        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   6                  0        2     36
0-6 months    MAL-ED           SOUTH AFRICA                   6                  1        1     36
0-6 months    MAL-ED           SOUTH AFRICA                   7                  0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   7                  1        3     36
0-6 months    MAL-ED           SOUTH AFRICA                   8                  0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   8                  1        1     36
0-6 months    MAL-ED           SOUTH AFRICA                   9                  0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   9                  1        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   10                 0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   10                 1        4     36
0-6 months    MAL-ED           SOUTH AFRICA                   11                 0        3     36
0-6 months    MAL-ED           SOUTH AFRICA                   11                 1        3     36
0-6 months    MAL-ED           SOUTH AFRICA                   12                 0        2     36
0-6 months    MAL-ED           SOUTH AFRICA                   12                 1        6     36
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        3     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        2     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        2     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        3     14
0-6 months    NIH-Birth        BANGLADESH                     1                  0       10    223
0-6 months    NIH-Birth        BANGLADESH                     1                  1       19    223
0-6 months    NIH-Birth        BANGLADESH                     2                  0        3    223
0-6 months    NIH-Birth        BANGLADESH                     2                  1       16    223
0-6 months    NIH-Birth        BANGLADESH                     3                  0       12    223
0-6 months    NIH-Birth        BANGLADESH                     3                  1       13    223
0-6 months    NIH-Birth        BANGLADESH                     4                  0        6    223
0-6 months    NIH-Birth        BANGLADESH                     4                  1       16    223
0-6 months    NIH-Birth        BANGLADESH                     5                  0        3    223
0-6 months    NIH-Birth        BANGLADESH                     5                  1       17    223
0-6 months    NIH-Birth        BANGLADESH                     6                  0        4    223
0-6 months    NIH-Birth        BANGLADESH                     6                  1       14    223
0-6 months    NIH-Birth        BANGLADESH                     7                  0        8    223
0-6 months    NIH-Birth        BANGLADESH                     7                  1       14    223
0-6 months    NIH-Birth        BANGLADESH                     8                  0        2    223
0-6 months    NIH-Birth        BANGLADESH                     8                  1       13    223
0-6 months    NIH-Birth        BANGLADESH                     9                  0        2    223
0-6 months    NIH-Birth        BANGLADESH                     9                  1       12    223
0-6 months    NIH-Birth        BANGLADESH                     10                 0        5    223
0-6 months    NIH-Birth        BANGLADESH                     10                 1       10    223
0-6 months    NIH-Birth        BANGLADESH                     11                 0        5    223
0-6 months    NIH-Birth        BANGLADESH                     11                 1       11    223
0-6 months    NIH-Birth        BANGLADESH                     12                 0        4    223
0-6 months    NIH-Birth        BANGLADESH                     12                 1        4    223
0-6 months    PROBIT           BELARUS                        1                  0       36   4267
0-6 months    PROBIT           BELARUS                        1                  1      249   4267
0-6 months    PROBIT           BELARUS                        2                  0       22   4267
0-6 months    PROBIT           BELARUS                        2                  1      192   4267
0-6 months    PROBIT           BELARUS                        3                  0       20   4267
0-6 months    PROBIT           BELARUS                        3                  1      270   4267
0-6 months    PROBIT           BELARUS                        4                  0       27   4267
0-6 months    PROBIT           BELARUS                        4                  1      256   4267
0-6 months    PROBIT           BELARUS                        5                  0       33   4267
0-6 months    PROBIT           BELARUS                        5                  1      290   4267
0-6 months    PROBIT           BELARUS                        6                  0       37   4267
0-6 months    PROBIT           BELARUS                        6                  1      290   4267
0-6 months    PROBIT           BELARUS                        7                  0       29   4267
0-6 months    PROBIT           BELARUS                        7                  1      375   4267
0-6 months    PROBIT           BELARUS                        8                  0       46   4267
0-6 months    PROBIT           BELARUS                        8                  1      404   4267
0-6 months    PROBIT           BELARUS                        9                  0       39   4267
0-6 months    PROBIT           BELARUS                        9                  1      343   4267
0-6 months    PROBIT           BELARUS                        10                 0       45   4267
0-6 months    PROBIT           BELARUS                        10                 1      417   4267
0-6 months    PROBIT           BELARUS                        11                 0       52   4267
0-6 months    PROBIT           BELARUS                        11                 1      350   4267
0-6 months    PROBIT           BELARUS                        12                 0       37   4267
0-6 months    PROBIT           BELARUS                        12                 1      408   4267
0-6 months    ResPak           PAKISTAN                       1                  0        0    113
0-6 months    ResPak           PAKISTAN                       1                  1        1    113
0-6 months    ResPak           PAKISTAN                       2                  0        3    113
0-6 months    ResPak           PAKISTAN                       2                  1        1    113
0-6 months    ResPak           PAKISTAN                       3                  0        2    113
0-6 months    ResPak           PAKISTAN                       3                  1        3    113
0-6 months    ResPak           PAKISTAN                       4                  0        4    113
0-6 months    ResPak           PAKISTAN                       4                  1        7    113
0-6 months    ResPak           PAKISTAN                       5                  0        8    113
0-6 months    ResPak           PAKISTAN                       5                  1        9    113
0-6 months    ResPak           PAKISTAN                       6                  0        8    113
0-6 months    ResPak           PAKISTAN                       6                  1        9    113
0-6 months    ResPak           PAKISTAN                       7                  0        4    113
0-6 months    ResPak           PAKISTAN                       7                  1       11    113
0-6 months    ResPak           PAKISTAN                       8                  0        4    113
0-6 months    ResPak           PAKISTAN                       8                  1       12    113
0-6 months    ResPak           PAKISTAN                       9                  0        9    113
0-6 months    ResPak           PAKISTAN                       9                  1        7    113
0-6 months    ResPak           PAKISTAN                       10                 0        0    113
0-6 months    ResPak           PAKISTAN                       10                 1        6    113
0-6 months    ResPak           PAKISTAN                       11                 0        1    113
0-6 months    ResPak           PAKISTAN                       11                 1        4    113
0-6 months    ResPak           PAKISTAN                       12                 0        0    113
0-6 months    ResPak           PAKISTAN                       12                 1        0    113
0-6 months    SAS-CompFeed     INDIA                          1                  0       18    341
0-6 months    SAS-CompFeed     INDIA                          1                  1       13    341
0-6 months    SAS-CompFeed     INDIA                          2                  0       11    341
0-6 months    SAS-CompFeed     INDIA                          2                  1        6    341
0-6 months    SAS-CompFeed     INDIA                          3                  0       12    341
0-6 months    SAS-CompFeed     INDIA                          3                  1        6    341
0-6 months    SAS-CompFeed     INDIA                          4                  0       14    341
0-6 months    SAS-CompFeed     INDIA                          4                  1        7    341
0-6 months    SAS-CompFeed     INDIA                          5                  0       18    341
0-6 months    SAS-CompFeed     INDIA                          5                  1       16    341
0-6 months    SAS-CompFeed     INDIA                          6                  0        9    341
0-6 months    SAS-CompFeed     INDIA                          6                  1       25    341
0-6 months    SAS-CompFeed     INDIA                          7                  0       10    341
0-6 months    SAS-CompFeed     INDIA                          7                  1       13    341
0-6 months    SAS-CompFeed     INDIA                          8                  0       13    341
0-6 months    SAS-CompFeed     INDIA                          8                  1       17    341
0-6 months    SAS-CompFeed     INDIA                          9                  0       10    341
0-6 months    SAS-CompFeed     INDIA                          9                  1       25    341
0-6 months    SAS-CompFeed     INDIA                          10                 0       18    341
0-6 months    SAS-CompFeed     INDIA                          10                 1       24    341
0-6 months    SAS-CompFeed     INDIA                          11                 0       22    341
0-6 months    SAS-CompFeed     INDIA                          11                 1       10    341
0-6 months    SAS-CompFeed     INDIA                          12                 0       11    341
0-6 months    SAS-CompFeed     INDIA                          12                 1       13    341
0-6 months    SAS-FoodSuppl    INDIA                          1                  0       12     78
0-6 months    SAS-FoodSuppl    INDIA                          1                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          2                  0        9     78
0-6 months    SAS-FoodSuppl    INDIA                          2                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          3                  0        9     78
0-6 months    SAS-FoodSuppl    INDIA                          3                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          4                  0        7     78
0-6 months    SAS-FoodSuppl    INDIA                          4                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          5                  0        4     78
0-6 months    SAS-FoodSuppl    INDIA                          5                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          6                  0        8     78
0-6 months    SAS-FoodSuppl    INDIA                          6                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          7                  0        4     78
0-6 months    SAS-FoodSuppl    INDIA                          7                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          8                  0        0     78
0-6 months    SAS-FoodSuppl    INDIA                          8                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          9                  0        2     78
0-6 months    SAS-FoodSuppl    INDIA                          9                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          10                 0        6     78
0-6 months    SAS-FoodSuppl    INDIA                          10                 1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          11                 0        2     78
0-6 months    SAS-FoodSuppl    INDIA                          11                 1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          12                 0       15     78
0-6 months    SAS-FoodSuppl    INDIA                          12                 1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       18    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       24    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0        7    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       14    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0       14    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       21    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0        4    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       18    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0        8    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       11    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0        4    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        8    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0        2    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       16    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0        6    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       24    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0        8    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       33    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0        4    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       21    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0        9    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       27    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0       17    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       22    340
0-6 months    ZVITAMBO         ZIMBABWE                       1                  0       61   2519
0-6 months    ZVITAMBO         ZIMBABWE                       1                  1      165   2519
0-6 months    ZVITAMBO         ZIMBABWE                       2                  0       47   2519
0-6 months    ZVITAMBO         ZIMBABWE                       2                  1      118   2519
0-6 months    ZVITAMBO         ZIMBABWE                       3                  0       57   2519
0-6 months    ZVITAMBO         ZIMBABWE                       3                  1      145   2519
0-6 months    ZVITAMBO         ZIMBABWE                       4                  0       31   2519
0-6 months    ZVITAMBO         ZIMBABWE                       4                  1      119   2519
0-6 months    ZVITAMBO         ZIMBABWE                       5                  0       36   2519
0-6 months    ZVITAMBO         ZIMBABWE                       5                  1      123   2519
0-6 months    ZVITAMBO         ZIMBABWE                       6                  0       44   2519
0-6 months    ZVITAMBO         ZIMBABWE                       6                  1      181   2519
0-6 months    ZVITAMBO         ZIMBABWE                       7                  0       60   2519
0-6 months    ZVITAMBO         ZIMBABWE                       7                  1      195   2519
0-6 months    ZVITAMBO         ZIMBABWE                       8                  0       64   2519
0-6 months    ZVITAMBO         ZIMBABWE                       8                  1      192   2519
0-6 months    ZVITAMBO         ZIMBABWE                       9                  0       60   2519
0-6 months    ZVITAMBO         ZIMBABWE                       9                  1      168   2519
0-6 months    ZVITAMBO         ZIMBABWE                       10                 0       48   2519
0-6 months    ZVITAMBO         ZIMBABWE                       10                 1      141   2519
0-6 months    ZVITAMBO         ZIMBABWE                       11                 0       59   2519
0-6 months    ZVITAMBO         ZIMBABWE                       11                 1      169   2519
0-6 months    ZVITAMBO         ZIMBABWE                       12                 0       69   2519
0-6 months    ZVITAMBO         ZIMBABWE                       12                 1      167   2519
6-24 months   CMC-V-BCS-2002   INDIA                          1                  0        4    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                  1        6    123
6-24 months   CMC-V-BCS-2002   INDIA                          2                  0        2    123
6-24 months   CMC-V-BCS-2002   INDIA                          2                  1        8    123
6-24 months   CMC-V-BCS-2002   INDIA                          3                  0        1    123
6-24 months   CMC-V-BCS-2002   INDIA                          3                  1        3    123
6-24 months   CMC-V-BCS-2002   INDIA                          4                  0        5    123
6-24 months   CMC-V-BCS-2002   INDIA                          4                  1        2    123
6-24 months   CMC-V-BCS-2002   INDIA                          5                  0        6    123
6-24 months   CMC-V-BCS-2002   INDIA                          5                  1        5    123
6-24 months   CMC-V-BCS-2002   INDIA                          6                  0        3    123
6-24 months   CMC-V-BCS-2002   INDIA                          6                  1        6    123
6-24 months   CMC-V-BCS-2002   INDIA                          7                  0        6    123
6-24 months   CMC-V-BCS-2002   INDIA                          7                  1        4    123
6-24 months   CMC-V-BCS-2002   INDIA                          8                  0       10    123
6-24 months   CMC-V-BCS-2002   INDIA                          8                  1        5    123
6-24 months   CMC-V-BCS-2002   INDIA                          9                  0        4    123
6-24 months   CMC-V-BCS-2002   INDIA                          9                  1       10    123
6-24 months   CMC-V-BCS-2002   INDIA                          10                 0        4    123
6-24 months   CMC-V-BCS-2002   INDIA                          10                 1        1    123
6-24 months   CMC-V-BCS-2002   INDIA                          11                 0        3    123
6-24 months   CMC-V-BCS-2002   INDIA                          11                 1       11    123
6-24 months   CMC-V-BCS-2002   INDIA                          12                 0        6    123
6-24 months   CMC-V-BCS-2002   INDIA                          12                 1        8    123
6-24 months   CMIN             BANGLADESH                     1                  0        4    138
6-24 months   CMIN             BANGLADESH                     1                  1       11    138
6-24 months   CMIN             BANGLADESH                     2                  0        6    138
6-24 months   CMIN             BANGLADESH                     2                  1       11    138
6-24 months   CMIN             BANGLADESH                     3                  0        2    138
6-24 months   CMIN             BANGLADESH                     3                  1        4    138
6-24 months   CMIN             BANGLADESH                     4                  0        2    138
6-24 months   CMIN             BANGLADESH                     4                  1        9    138
6-24 months   CMIN             BANGLADESH                     5                  0        4    138
6-24 months   CMIN             BANGLADESH                     5                  1        9    138
6-24 months   CMIN             BANGLADESH                     6                  0        2    138
6-24 months   CMIN             BANGLADESH                     6                  1        5    138
6-24 months   CMIN             BANGLADESH                     7                  0        0    138
6-24 months   CMIN             BANGLADESH                     7                  1        5    138
6-24 months   CMIN             BANGLADESH                     8                  0        4    138
6-24 months   CMIN             BANGLADESH                     8                  1        2    138
6-24 months   CMIN             BANGLADESH                     9                  0        6    138
6-24 months   CMIN             BANGLADESH                     9                  1        6    138
6-24 months   CMIN             BANGLADESH                     10                 0        5    138
6-24 months   CMIN             BANGLADESH                     10                 1        8    138
6-24 months   CMIN             BANGLADESH                     11                 0        0    138
6-24 months   CMIN             BANGLADESH                     11                 1        0    138
6-24 months   CMIN             BANGLADESH                     12                 0       20    138
6-24 months   CMIN             BANGLADESH                     12                 1       13    138
6-24 months   CONTENT          PERU                           1                  0        1      3
6-24 months   CONTENT          PERU                           1                  1        1      3
6-24 months   CONTENT          PERU                           2                  0        0      3
6-24 months   CONTENT          PERU                           2                  1        0      3
6-24 months   CONTENT          PERU                           3                  0        0      3
6-24 months   CONTENT          PERU                           3                  1        0      3
6-24 months   CONTENT          PERU                           4                  0        0      3
6-24 months   CONTENT          PERU                           4                  1        0      3
6-24 months   CONTENT          PERU                           5                  0        0      3
6-24 months   CONTENT          PERU                           5                  1        0      3
6-24 months   CONTENT          PERU                           6                  0        0      3
6-24 months   CONTENT          PERU                           6                  1        1      3
6-24 months   CONTENT          PERU                           7                  0        0      3
6-24 months   CONTENT          PERU                           7                  1        0      3
6-24 months   CONTENT          PERU                           8                  0        0      3
6-24 months   CONTENT          PERU                           8                  1        0      3
6-24 months   CONTENT          PERU                           9                  0        0      3
6-24 months   CONTENT          PERU                           9                  1        0      3
6-24 months   CONTENT          PERU                           10                 0        0      3
6-24 months   CONTENT          PERU                           10                 1        0      3
6-24 months   CONTENT          PERU                           11                 0        0      3
6-24 months   CONTENT          PERU                           11                 1        0      3
6-24 months   CONTENT          PERU                           12                 0        0      3
6-24 months   CONTENT          PERU                           12                 1        0      3
6-24 months   EE               PAKISTAN                       1                  0       22    196
6-24 months   EE               PAKISTAN                       1                  1       18    196
6-24 months   EE               PAKISTAN                       2                  0       17    196
6-24 months   EE               PAKISTAN                       2                  1       15    196
6-24 months   EE               PAKISTAN                       3                  0       16    196
6-24 months   EE               PAKISTAN                       3                  1       14    196
6-24 months   EE               PAKISTAN                       4                  0       11    196
6-24 months   EE               PAKISTAN                       4                  1        3    196
6-24 months   EE               PAKISTAN                       5                  0        0    196
6-24 months   EE               PAKISTAN                       5                  1        0    196
6-24 months   EE               PAKISTAN                       6                  0        0    196
6-24 months   EE               PAKISTAN                       6                  1        0    196
6-24 months   EE               PAKISTAN                       7                  0        0    196
6-24 months   EE               PAKISTAN                       7                  1        0    196
6-24 months   EE               PAKISTAN                       8                  0        0    196
6-24 months   EE               PAKISTAN                       8                  1        0    196
6-24 months   EE               PAKISTAN                       9                  0        0    196
6-24 months   EE               PAKISTAN                       9                  1        0    196
6-24 months   EE               PAKISTAN                       10                 0        0    196
6-24 months   EE               PAKISTAN                       10                 1        0    196
6-24 months   EE               PAKISTAN                       11                 0       15    196
6-24 months   EE               PAKISTAN                       11                 1       16    196
6-24 months   EE               PAKISTAN                       12                 0       24    196
6-24 months   EE               PAKISTAN                       12                 1       25    196
6-24 months   GMS-Nepal        NEPAL                          1                  0        0    380
6-24 months   GMS-Nepal        NEPAL                          1                  1        0    380
6-24 months   GMS-Nepal        NEPAL                          2                  0        0    380
6-24 months   GMS-Nepal        NEPAL                          2                  1        0    380
6-24 months   GMS-Nepal        NEPAL                          3                  0        0    380
6-24 months   GMS-Nepal        NEPAL                          3                  1        0    380
6-24 months   GMS-Nepal        NEPAL                          4                  0        1    380
6-24 months   GMS-Nepal        NEPAL                          4                  1        0    380
6-24 months   GMS-Nepal        NEPAL                          5                  0        0    380
6-24 months   GMS-Nepal        NEPAL                          5                  1        0    380
6-24 months   GMS-Nepal        NEPAL                          6                  0       47    380
6-24 months   GMS-Nepal        NEPAL                          6                  1       27    380
6-24 months   GMS-Nepal        NEPAL                          7                  0       67    380
6-24 months   GMS-Nepal        NEPAL                          7                  1       65    380
6-24 months   GMS-Nepal        NEPAL                          8                  0       77    380
6-24 months   GMS-Nepal        NEPAL                          8                  1       96    380
6-24 months   GMS-Nepal        NEPAL                          9                  0        0    380
6-24 months   GMS-Nepal        NEPAL                          9                  1        0    380
6-24 months   GMS-Nepal        NEPAL                          10                 0        0    380
6-24 months   GMS-Nepal        NEPAL                          10                 1        0    380
6-24 months   GMS-Nepal        NEPAL                          11                 0        0    380
6-24 months   GMS-Nepal        NEPAL                          11                 1        0    380
6-24 months   GMS-Nepal        NEPAL                          12                 0        0    380
6-24 months   GMS-Nepal        NEPAL                          12                 1        0    380
6-24 months   Guatemala BSC    GUATEMALA                      1                  0        1     28
6-24 months   Guatemala BSC    GUATEMALA                      1                  1        1     28
6-24 months   Guatemala BSC    GUATEMALA                      2                  0        0     28
6-24 months   Guatemala BSC    GUATEMALA                      2                  1        1     28
6-24 months   Guatemala BSC    GUATEMALA                      3                  0        2     28
6-24 months   Guatemala BSC    GUATEMALA                      3                  1        2     28
6-24 months   Guatemala BSC    GUATEMALA                      4                  0        3     28
6-24 months   Guatemala BSC    GUATEMALA                      4                  1        1     28
6-24 months   Guatemala BSC    GUATEMALA                      5                  0        0     28
6-24 months   Guatemala BSC    GUATEMALA                      5                  1        3     28
6-24 months   Guatemala BSC    GUATEMALA                      6                  0        1     28
6-24 months   Guatemala BSC    GUATEMALA                      6                  1        1     28
6-24 months   Guatemala BSC    GUATEMALA                      7                  0        0     28
6-24 months   Guatemala BSC    GUATEMALA                      7                  1        1     28
6-24 months   Guatemala BSC    GUATEMALA                      8                  0        2     28
6-24 months   Guatemala BSC    GUATEMALA                      8                  1        1     28
6-24 months   Guatemala BSC    GUATEMALA                      9                  0        3     28
6-24 months   Guatemala BSC    GUATEMALA                      9                  1        2     28
6-24 months   Guatemala BSC    GUATEMALA                      10                 0        1     28
6-24 months   Guatemala BSC    GUATEMALA                      10                 1        0     28
6-24 months   Guatemala BSC    GUATEMALA                      11                 0        2     28
6-24 months   Guatemala BSC    GUATEMALA                      11                 1        0     28
6-24 months   Guatemala BSC    GUATEMALA                      12                 0        0     28
6-24 months   Guatemala BSC    GUATEMALA                      12                 1        0     28
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                  0       55    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                  1        2    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                  0       44    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   2                  1        5    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                  0       49    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   3                  1        1    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                  0       41    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   4                  1        2    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                  0       61    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   5                  1        5    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                  0       89    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   6                  1        7    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                  0       94    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   7                  1        5    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                  0       97    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   8                  1        3    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                  0       73    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   9                  1        3    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                 0       74    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   10                 1        2    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                 0       59    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   11                 1        1    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                 0       48    820
6-24 months   iLiNS-Zinc       BURKINA FASO                   12                 1        0    820
6-24 months   IRC              INDIA                          1                  0        4    155
6-24 months   IRC              INDIA                          1                  1       11    155
6-24 months   IRC              INDIA                          2                  0        3    155
6-24 months   IRC              INDIA                          2                  1        7    155
6-24 months   IRC              INDIA                          3                  0        3    155
6-24 months   IRC              INDIA                          3                  1        4    155
6-24 months   IRC              INDIA                          4                  0        4    155
6-24 months   IRC              INDIA                          4                  1        7    155
6-24 months   IRC              INDIA                          5                  0        6    155
6-24 months   IRC              INDIA                          5                  1        3    155
6-24 months   IRC              INDIA                          6                  0        7    155
6-24 months   IRC              INDIA                          6                  1        6    155
6-24 months   IRC              INDIA                          7                  0        8    155
6-24 months   IRC              INDIA                          7                  1        6    155
6-24 months   IRC              INDIA                          8                  0        9    155
6-24 months   IRC              INDIA                          8                  1        9    155
6-24 months   IRC              INDIA                          9                  0       10    155
6-24 months   IRC              INDIA                          9                  1        6    155
6-24 months   IRC              INDIA                          10                 0       10    155
6-24 months   IRC              INDIA                          10                 1        8    155
6-24 months   IRC              INDIA                          11                 0        6    155
6-24 months   IRC              INDIA                          11                 1        4    155
6-24 months   IRC              INDIA                          12                 0        5    155
6-24 months   IRC              INDIA                          12                 1        9    155
6-24 months   JiVitA-3         BANGLADESH                     1                  0      215   2837
6-24 months   JiVitA-3         BANGLADESH                     1                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     2                  0      170   2837
6-24 months   JiVitA-3         BANGLADESH                     2                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     3                  0      188   2837
6-24 months   JiVitA-3         BANGLADESH                     3                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     4                  0      191   2837
6-24 months   JiVitA-3         BANGLADESH                     4                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     5                  0      239   2837
6-24 months   JiVitA-3         BANGLADESH                     5                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     6                  0      225   2837
6-24 months   JiVitA-3         BANGLADESH                     6                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     7                  0      242   2837
6-24 months   JiVitA-3         BANGLADESH                     7                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     8                  0      265   2837
6-24 months   JiVitA-3         BANGLADESH                     8                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     9                  0      267   2837
6-24 months   JiVitA-3         BANGLADESH                     9                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     10                 0      296   2837
6-24 months   JiVitA-3         BANGLADESH                     10                 1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     11                 0      281   2837
6-24 months   JiVitA-3         BANGLADESH                     11                 1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     12                 0      258   2837
6-24 months   JiVitA-3         BANGLADESH                     12                 1        0   2837
6-24 months   JiVitA-4         BANGLADESH                     1                  0        8   1516
6-24 months   JiVitA-4         BANGLADESH                     1                  1        2   1516
6-24 months   JiVitA-4         BANGLADESH                     2                  0       76   1516
6-24 months   JiVitA-4         BANGLADESH                     2                  1       18   1516
6-24 months   JiVitA-4         BANGLADESH                     3                  0      109   1516
6-24 months   JiVitA-4         BANGLADESH                     3                  1       23   1516
6-24 months   JiVitA-4         BANGLADESH                     4                  0      242   1516
6-24 months   JiVitA-4         BANGLADESH                     4                  1       34   1516
6-24 months   JiVitA-4         BANGLADESH                     5                  0      178   1516
6-24 months   JiVitA-4         BANGLADESH                     5                  1       26   1516
6-24 months   JiVitA-4         BANGLADESH                     6                  0      108   1516
6-24 months   JiVitA-4         BANGLADESH                     6                  1       27   1516
6-24 months   JiVitA-4         BANGLADESH                     7                  0      220   1516
6-24 months   JiVitA-4         BANGLADESH                     7                  1       45   1516
6-24 months   JiVitA-4         BANGLADESH                     8                  0      109   1516
6-24 months   JiVitA-4         BANGLADESH                     8                  1       24   1516
6-24 months   JiVitA-4         BANGLADESH                     9                  0      105   1516
6-24 months   JiVitA-4         BANGLADESH                     9                  1       14   1516
6-24 months   JiVitA-4         BANGLADESH                     10                 0       78   1516
6-24 months   JiVitA-4         BANGLADESH                     10                 1        8   1516
6-24 months   JiVitA-4         BANGLADESH                     11                 0       41   1516
6-24 months   JiVitA-4         BANGLADESH                     11                 1        4   1516
6-24 months   JiVitA-4         BANGLADESH                     12                 0       16   1516
6-24 months   JiVitA-4         BANGLADESH                     12                 1        1   1516
6-24 months   Keneba           GAMBIA                         1                  0       47   1104
6-24 months   Keneba           GAMBIA                         1                  1       49   1104
6-24 months   Keneba           GAMBIA                         2                  0       60   1104
6-24 months   Keneba           GAMBIA                         2                  1       73   1104
6-24 months   Keneba           GAMBIA                         3                  0       39   1104
6-24 months   Keneba           GAMBIA                         3                  1       63   1104
6-24 months   Keneba           GAMBIA                         4                  0       61   1104
6-24 months   Keneba           GAMBIA                         4                  1       47   1104
6-24 months   Keneba           GAMBIA                         5                  0       44   1104
6-24 months   Keneba           GAMBIA                         5                  1       40   1104
6-24 months   Keneba           GAMBIA                         6                  0       23   1104
6-24 months   Keneba           GAMBIA                         6                  1       22   1104
6-24 months   Keneba           GAMBIA                         7                  0       37   1104
6-24 months   Keneba           GAMBIA                         7                  1       41   1104
6-24 months   Keneba           GAMBIA                         8                  0       41   1104
6-24 months   Keneba           GAMBIA                         8                  1       33   1104
6-24 months   Keneba           GAMBIA                         9                  0       39   1104
6-24 months   Keneba           GAMBIA                         9                  1       40   1104
6-24 months   Keneba           GAMBIA                         10                 0       52   1104
6-24 months   Keneba           GAMBIA                         10                 1       48   1104
6-24 months   Keneba           GAMBIA                         11                 0       62   1104
6-24 months   Keneba           GAMBIA                         11                 1       66   1104
6-24 months   Keneba           GAMBIA                         12                 0       42   1104
6-24 months   Keneba           GAMBIA                         12                 1       35   1104
6-24 months   LCNI-5           MALAWI                         1                  0        5     75
6-24 months   LCNI-5           MALAWI                         1                  1        1     75
6-24 months   LCNI-5           MALAWI                         2                  0        9     75
6-24 months   LCNI-5           MALAWI                         2                  1        3     75
6-24 months   LCNI-5           MALAWI                         3                  0       11     75
6-24 months   LCNI-5           MALAWI                         3                  1        2     75
6-24 months   LCNI-5           MALAWI                         4                  0        5     75
6-24 months   LCNI-5           MALAWI                         4                  1        1     75
6-24 months   LCNI-5           MALAWI                         5                  0        5     75
6-24 months   LCNI-5           MALAWI                         5                  1        1     75
6-24 months   LCNI-5           MALAWI                         6                  0       12     75
6-24 months   LCNI-5           MALAWI                         6                  1        1     75
6-24 months   LCNI-5           MALAWI                         7                  0        3     75
6-24 months   LCNI-5           MALAWI                         7                  1        2     75
6-24 months   LCNI-5           MALAWI                         8                  0        3     75
6-24 months   LCNI-5           MALAWI                         8                  1        0     75
6-24 months   LCNI-5           MALAWI                         9                  0        2     75
6-24 months   LCNI-5           MALAWI                         9                  1        1     75
6-24 months   LCNI-5           MALAWI                         10                 0        0     75
6-24 months   LCNI-5           MALAWI                         10                 1        0     75
6-24 months   LCNI-5           MALAWI                         11                 0        5     75
6-24 months   LCNI-5           MALAWI                         11                 1        1     75
6-24 months   LCNI-5           MALAWI                         12                 0        2     75
6-24 months   LCNI-5           MALAWI                         12                 1        0     75
6-24 months   MAL-ED           BANGLADESH                     1                  0        1     61
6-24 months   MAL-ED           BANGLADESH                     1                  1        1     61
6-24 months   MAL-ED           BANGLADESH                     2                  0        5     61
6-24 months   MAL-ED           BANGLADESH                     2                  1        4     61
6-24 months   MAL-ED           BANGLADESH                     3                  0        6     61
6-24 months   MAL-ED           BANGLADESH                     3                  1        9     61
6-24 months   MAL-ED           BANGLADESH                     4                  0        2     61
6-24 months   MAL-ED           BANGLADESH                     4                  1        1     61
6-24 months   MAL-ED           BANGLADESH                     5                  0        4     61
6-24 months   MAL-ED           BANGLADESH                     5                  1        2     61
6-24 months   MAL-ED           BANGLADESH                     6                  0        0     61
6-24 months   MAL-ED           BANGLADESH                     6                  1        1     61
6-24 months   MAL-ED           BANGLADESH                     7                  0        2     61
6-24 months   MAL-ED           BANGLADESH                     7                  1        3     61
6-24 months   MAL-ED           BANGLADESH                     8                  0        1     61
6-24 months   MAL-ED           BANGLADESH                     8                  1        0     61
6-24 months   MAL-ED           BANGLADESH                     9                  0        5     61
6-24 months   MAL-ED           BANGLADESH                     9                  1        8     61
6-24 months   MAL-ED           BANGLADESH                     10                 0        1     61
6-24 months   MAL-ED           BANGLADESH                     10                 1        0     61
6-24 months   MAL-ED           BANGLADESH                     11                 0        2     61
6-24 months   MAL-ED           BANGLADESH                     11                 1        0     61
6-24 months   MAL-ED           BANGLADESH                     12                 0        2     61
6-24 months   MAL-ED           BANGLADESH                     12                 1        1     61
6-24 months   MAL-ED           BRAZIL                         1                  0        0      9
6-24 months   MAL-ED           BRAZIL                         1                  1        0      9
6-24 months   MAL-ED           BRAZIL                         2                  0        1      9
6-24 months   MAL-ED           BRAZIL                         2                  1        0      9
6-24 months   MAL-ED           BRAZIL                         3                  0        1      9
6-24 months   MAL-ED           BRAZIL                         3                  1        0      9
6-24 months   MAL-ED           BRAZIL                         4                  0        0      9
6-24 months   MAL-ED           BRAZIL                         4                  1        0      9
6-24 months   MAL-ED           BRAZIL                         5                  0        0      9
6-24 months   MAL-ED           BRAZIL                         5                  1        0      9
6-24 months   MAL-ED           BRAZIL                         6                  0        0      9
6-24 months   MAL-ED           BRAZIL                         6                  1        0      9
6-24 months   MAL-ED           BRAZIL                         7                  0        0      9
6-24 months   MAL-ED           BRAZIL                         7                  1        0      9
6-24 months   MAL-ED           BRAZIL                         8                  0        2      9
6-24 months   MAL-ED           BRAZIL                         8                  1        0      9
6-24 months   MAL-ED           BRAZIL                         9                  0        0      9
6-24 months   MAL-ED           BRAZIL                         9                  1        2      9
6-24 months   MAL-ED           BRAZIL                         10                 0        1      9
6-24 months   MAL-ED           BRAZIL                         10                 1        1      9
6-24 months   MAL-ED           BRAZIL                         11                 0        0      9
6-24 months   MAL-ED           BRAZIL                         11                 1        0      9
6-24 months   MAL-ED           BRAZIL                         12                 0        0      9
6-24 months   MAL-ED           BRAZIL                         12                 1        1      9
6-24 months   MAL-ED           INDIA                          1                  0        1     95
6-24 months   MAL-ED           INDIA                          1                  1        3     95
6-24 months   MAL-ED           INDIA                          2                  0        2     95
6-24 months   MAL-ED           INDIA                          2                  1        2     95
6-24 months   MAL-ED           INDIA                          3                  0        1     95
6-24 months   MAL-ED           INDIA                          3                  1        0     95
6-24 months   MAL-ED           INDIA                          4                  0        4     95
6-24 months   MAL-ED           INDIA                          4                  1        6     95
6-24 months   MAL-ED           INDIA                          5                  0        3     95
6-24 months   MAL-ED           INDIA                          5                  1        2     95
6-24 months   MAL-ED           INDIA                          6                  0        3     95
6-24 months   MAL-ED           INDIA                          6                  1        2     95
6-24 months   MAL-ED           INDIA                          7                  0        3     95
6-24 months   MAL-ED           INDIA                          7                  1        8     95
6-24 months   MAL-ED           INDIA                          8                  0        9     95
6-24 months   MAL-ED           INDIA                          8                  1        5     95
6-24 months   MAL-ED           INDIA                          9                  0        5     95
6-24 months   MAL-ED           INDIA                          9                  1        6     95
6-24 months   MAL-ED           INDIA                          10                 0        3     95
6-24 months   MAL-ED           INDIA                          10                 1        5     95
6-24 months   MAL-ED           INDIA                          11                 0        6     95
6-24 months   MAL-ED           INDIA                          11                 1        7     95
6-24 months   MAL-ED           INDIA                          12                 0        4     95
6-24 months   MAL-ED           INDIA                          12                 1        5     95
6-24 months   MAL-ED           NEPAL                          1                  0        0     50
6-24 months   MAL-ED           NEPAL                          1                  1        7     50
6-24 months   MAL-ED           NEPAL                          2                  0        0     50
6-24 months   MAL-ED           NEPAL                          2                  1        4     50
6-24 months   MAL-ED           NEPAL                          3                  0        0     50
6-24 months   MAL-ED           NEPAL                          3                  1        1     50
6-24 months   MAL-ED           NEPAL                          4                  0        3     50
6-24 months   MAL-ED           NEPAL                          4                  1        4     50
6-24 months   MAL-ED           NEPAL                          5                  0        1     50
6-24 months   MAL-ED           NEPAL                          5                  1        5     50
6-24 months   MAL-ED           NEPAL                          6                  0        3     50
6-24 months   MAL-ED           NEPAL                          6                  1        5     50
6-24 months   MAL-ED           NEPAL                          7                  0        0     50
6-24 months   MAL-ED           NEPAL                          7                  1        1     50
6-24 months   MAL-ED           NEPAL                          8                  0        2     50
6-24 months   MAL-ED           NEPAL                          8                  1        6     50
6-24 months   MAL-ED           NEPAL                          9                  0        0     50
6-24 months   MAL-ED           NEPAL                          9                  1        0     50
6-24 months   MAL-ED           NEPAL                          10                 0        1     50
6-24 months   MAL-ED           NEPAL                          10                 1        1     50
6-24 months   MAL-ED           NEPAL                          11                 0        0     50
6-24 months   MAL-ED           NEPAL                          11                 1        2     50
6-24 months   MAL-ED           NEPAL                          12                 0        1     50
6-24 months   MAL-ED           NEPAL                          12                 1        3     50
6-24 months   MAL-ED           PERU                           1                  0        1     24
6-24 months   MAL-ED           PERU                           1                  1        5     24
6-24 months   MAL-ED           PERU                           2                  0        1     24
6-24 months   MAL-ED           PERU                           2                  1        2     24
6-24 months   MAL-ED           PERU                           3                  0        0     24
6-24 months   MAL-ED           PERU                           3                  1        3     24
6-24 months   MAL-ED           PERU                           4                  0        0     24
6-24 months   MAL-ED           PERU                           4                  1        1     24
6-24 months   MAL-ED           PERU                           5                  0        1     24
6-24 months   MAL-ED           PERU                           5                  1        0     24
6-24 months   MAL-ED           PERU                           6                  0        1     24
6-24 months   MAL-ED           PERU                           6                  1        2     24
6-24 months   MAL-ED           PERU                           7                  0        0     24
6-24 months   MAL-ED           PERU                           7                  1        0     24
6-24 months   MAL-ED           PERU                           8                  0        1     24
6-24 months   MAL-ED           PERU                           8                  1        0     24
6-24 months   MAL-ED           PERU                           9                  0        1     24
6-24 months   MAL-ED           PERU                           9                  1        1     24
6-24 months   MAL-ED           PERU                           10                 0        0     24
6-24 months   MAL-ED           PERU                           10                 1        0     24
6-24 months   MAL-ED           PERU                           11                 0        0     24
6-24 months   MAL-ED           PERU                           11                 1        4     24
6-24 months   MAL-ED           PERU                           12                 0        0     24
6-24 months   MAL-ED           PERU                           12                 1        0     24
6-24 months   MAL-ED           SOUTH AFRICA                   1                  0        2     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                  1       12     51
6-24 months   MAL-ED           SOUTH AFRICA                   2                  0        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   2                  1        3     51
6-24 months   MAL-ED           SOUTH AFRICA                   3                  0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   3                  1        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   4                  0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   4                  1        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   5                  0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   5                  1        3     51
6-24 months   MAL-ED           SOUTH AFRICA                   6                  0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   6                  1        2     51
6-24 months   MAL-ED           SOUTH AFRICA                   7                  0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   7                  1        2     51
6-24 months   MAL-ED           SOUTH AFRICA                   8                  0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   8                  1        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   9                  0        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   9                  1        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   10                 0        2     51
6-24 months   MAL-ED           SOUTH AFRICA                   10                 1        7     51
6-24 months   MAL-ED           SOUTH AFRICA                   11                 0        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   11                 1        4     51
6-24 months   MAL-ED           SOUTH AFRICA                   12                 0        2     51
6-24 months   MAL-ED           SOUTH AFRICA                   12                 1        6     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        9     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                  1        5     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                  1        4     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4                  1        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   5                  1        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   6                  1        4     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   7                  1        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   8                  1        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   9                  1        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   10                 1        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   11                 1        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 0        0     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   12                 1        2     37
6-24 months   NIH-Birth        BANGLADESH                     1                  0       17    198
6-24 months   NIH-Birth        BANGLADESH                     1                  1        8    198
6-24 months   NIH-Birth        BANGLADESH                     2                  0       14    198
6-24 months   NIH-Birth        BANGLADESH                     2                  1        5    198
6-24 months   NIH-Birth        BANGLADESH                     3                  0       16    198
6-24 months   NIH-Birth        BANGLADESH                     3                  1        8    198
6-24 months   NIH-Birth        BANGLADESH                     4                  0       10    198
6-24 months   NIH-Birth        BANGLADESH                     4                  1        4    198
6-24 months   NIH-Birth        BANGLADESH                     5                  0        9    198
6-24 months   NIH-Birth        BANGLADESH                     5                  1        4    198
6-24 months   NIH-Birth        BANGLADESH                     6                  0        6    198
6-24 months   NIH-Birth        BANGLADESH                     6                  1        6    198
6-24 months   NIH-Birth        BANGLADESH                     7                  0       13    198
6-24 months   NIH-Birth        BANGLADESH                     7                  1        4    198
6-24 months   NIH-Birth        BANGLADESH                     8                  0       11    198
6-24 months   NIH-Birth        BANGLADESH                     8                  1        5    198
6-24 months   NIH-Birth        BANGLADESH                     9                  0        7    198
6-24 months   NIH-Birth        BANGLADESH                     9                  1        3    198
6-24 months   NIH-Birth        BANGLADESH                     10                 0       10    198
6-24 months   NIH-Birth        BANGLADESH                     10                 1        4    198
6-24 months   NIH-Birth        BANGLADESH                     11                 0       11    198
6-24 months   NIH-Birth        BANGLADESH                     11                 1        6    198
6-24 months   NIH-Birth        BANGLADESH                     12                 0       14    198
6-24 months   NIH-Birth        BANGLADESH                     12                 1        3    198
6-24 months   PROBIT           BELARUS                        1                  0        8    141
6-24 months   PROBIT           BELARUS                        1                  1        1    141
6-24 months   PROBIT           BELARUS                        2                  0        2    141
6-24 months   PROBIT           BELARUS                        2                  1        5    141
6-24 months   PROBIT           BELARUS                        3                  0        6    141
6-24 months   PROBIT           BELARUS                        3                  1        3    141
6-24 months   PROBIT           BELARUS                        4                  0        4    141
6-24 months   PROBIT           BELARUS                        4                  1        3    141
6-24 months   PROBIT           BELARUS                        5                  0        7    141
6-24 months   PROBIT           BELARUS                        5                  1        1    141
6-24 months   PROBIT           BELARUS                        6                  0        5    141
6-24 months   PROBIT           BELARUS                        6                  1        1    141
6-24 months   PROBIT           BELARUS                        7                  0        6    141
6-24 months   PROBIT           BELARUS                        7                  1        2    141
6-24 months   PROBIT           BELARUS                        8                  0        6    141
6-24 months   PROBIT           BELARUS                        8                  1        2    141
6-24 months   PROBIT           BELARUS                        9                  0       10    141
6-24 months   PROBIT           BELARUS                        9                  1        4    141
6-24 months   PROBIT           BELARUS                        10                 0       14    141
6-24 months   PROBIT           BELARUS                        10                 1       10    141
6-24 months   PROBIT           BELARUS                        11                 0       17    141
6-24 months   PROBIT           BELARUS                        11                 1        2    141
6-24 months   PROBIT           BELARUS                        12                 0       18    141
6-24 months   PROBIT           BELARUS                        12                 1        4    141
6-24 months   ResPak           PAKISTAN                       1                  0        0     91
6-24 months   ResPak           PAKISTAN                       1                  1        1     91
6-24 months   ResPak           PAKISTAN                       2                  0        0     91
6-24 months   ResPak           PAKISTAN                       2                  1        0     91
6-24 months   ResPak           PAKISTAN                       3                  0        2     91
6-24 months   ResPak           PAKISTAN                       3                  1        0     91
6-24 months   ResPak           PAKISTAN                       4                  0        4     91
6-24 months   ResPak           PAKISTAN                       4                  1        3     91
6-24 months   ResPak           PAKISTAN                       5                  0       10     91
6-24 months   ResPak           PAKISTAN                       5                  1        5     91
6-24 months   ResPak           PAKISTAN                       6                  0       16     91
6-24 months   ResPak           PAKISTAN                       6                  1        2     91
6-24 months   ResPak           PAKISTAN                       7                  0       13     91
6-24 months   ResPak           PAKISTAN                       7                  1        5     91
6-24 months   ResPak           PAKISTAN                       8                  0        8     91
6-24 months   ResPak           PAKISTAN                       8                  1        2     91
6-24 months   ResPak           PAKISTAN                       9                  0        8     91
6-24 months   ResPak           PAKISTAN                       9                  1        2     91
6-24 months   ResPak           PAKISTAN                       10                 0        5     91
6-24 months   ResPak           PAKISTAN                       10                 1        1     91
6-24 months   ResPak           PAKISTAN                       11                 0        2     91
6-24 months   ResPak           PAKISTAN                       11                 1        1     91
6-24 months   ResPak           PAKISTAN                       12                 0        1     91
6-24 months   ResPak           PAKISTAN                       12                 1        0     91
6-24 months   SAS-CompFeed     INDIA                          1                  0       25    473
6-24 months   SAS-CompFeed     INDIA                          1                  1        6    473
6-24 months   SAS-CompFeed     INDIA                          2                  0       19    473
6-24 months   SAS-CompFeed     INDIA                          2                  1        3    473
6-24 months   SAS-CompFeed     INDIA                          3                  0       19    473
6-24 months   SAS-CompFeed     INDIA                          3                  1        6    473
6-24 months   SAS-CompFeed     INDIA                          4                  0       18    473
6-24 months   SAS-CompFeed     INDIA                          4                  1        9    473
6-24 months   SAS-CompFeed     INDIA                          5                  0       20    473
6-24 months   SAS-CompFeed     INDIA                          5                  1        9    473
6-24 months   SAS-CompFeed     INDIA                          6                  0       25    473
6-24 months   SAS-CompFeed     INDIA                          6                  1       11    473
6-24 months   SAS-CompFeed     INDIA                          7                  0       22    473
6-24 months   SAS-CompFeed     INDIA                          7                  1       16    473
6-24 months   SAS-CompFeed     INDIA                          8                  0       40    473
6-24 months   SAS-CompFeed     INDIA                          8                  1       18    473
6-24 months   SAS-CompFeed     INDIA                          9                  0       49    473
6-24 months   SAS-CompFeed     INDIA                          9                  1       20    473
6-24 months   SAS-CompFeed     INDIA                          10                 0       26    473
6-24 months   SAS-CompFeed     INDIA                          10                 1       22    473
6-24 months   SAS-CompFeed     INDIA                          11                 0       41    473
6-24 months   SAS-CompFeed     INDIA                          11                 1       13    473
6-24 months   SAS-CompFeed     INDIA                          12                 0       34    473
6-24 months   SAS-CompFeed     INDIA                          12                 1        2    473
6-24 months   SAS-FoodSuppl    INDIA                          1                  0       23    156
6-24 months   SAS-FoodSuppl    INDIA                          1                  1        4    156
6-24 months   SAS-FoodSuppl    INDIA                          2                  0       18    156
6-24 months   SAS-FoodSuppl    INDIA                          2                  1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          3                  0       14    156
6-24 months   SAS-FoodSuppl    INDIA                          3                  1        1    156
6-24 months   SAS-FoodSuppl    INDIA                          4                  0       12    156
6-24 months   SAS-FoodSuppl    INDIA                          4                  1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          5                  0       13    156
6-24 months   SAS-FoodSuppl    INDIA                          5                  1        2    156
6-24 months   SAS-FoodSuppl    INDIA                          6                  0       12    156
6-24 months   SAS-FoodSuppl    INDIA                          6                  1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          7                  0        4    156
6-24 months   SAS-FoodSuppl    INDIA                          7                  1        1    156
6-24 months   SAS-FoodSuppl    INDIA                          8                  0        0    156
6-24 months   SAS-FoodSuppl    INDIA                          8                  1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          9                  0        6    156
6-24 months   SAS-FoodSuppl    INDIA                          9                  1        2    156
6-24 months   SAS-FoodSuppl    INDIA                          10                 0        6    156
6-24 months   SAS-FoodSuppl    INDIA                          10                 1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          11                 0       15    156
6-24 months   SAS-FoodSuppl    INDIA                          11                 1        3    156
6-24 months   SAS-FoodSuppl    INDIA                          12                 0       20    156
6-24 months   SAS-FoodSuppl    INDIA                          12                 1        0    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       18    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       17    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0       14    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       12    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0       11    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       21    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0        9    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       15    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0        8    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       11    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0       10    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       13    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0       15    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       14    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0       16    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       17    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0       16    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       24    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0       14    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       22    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0       16    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       21    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0       18    373
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       21    373
6-24 months   ZVITAMBO         ZIMBABWE                       1                  0      107   1096
6-24 months   ZVITAMBO         ZIMBABWE                       1                  1        7   1096
6-24 months   ZVITAMBO         ZIMBABWE                       2                  0       78   1096
6-24 months   ZVITAMBO         ZIMBABWE                       2                  1        9   1096
6-24 months   ZVITAMBO         ZIMBABWE                       3                  0      101   1096
6-24 months   ZVITAMBO         ZIMBABWE                       3                  1        7   1096
6-24 months   ZVITAMBO         ZIMBABWE                       4                  0       66   1096
6-24 months   ZVITAMBO         ZIMBABWE                       4                  1        6   1096
6-24 months   ZVITAMBO         ZIMBABWE                       5                  0       85   1096
6-24 months   ZVITAMBO         ZIMBABWE                       5                  1        7   1096
6-24 months   ZVITAMBO         ZIMBABWE                       6                  0       78   1096
6-24 months   ZVITAMBO         ZIMBABWE                       6                  1        8   1096
6-24 months   ZVITAMBO         ZIMBABWE                       7                  0       73   1096
6-24 months   ZVITAMBO         ZIMBABWE                       7                  1        6   1096
6-24 months   ZVITAMBO         ZIMBABWE                       8                  0       84   1096
6-24 months   ZVITAMBO         ZIMBABWE                       8                  1        5   1096
6-24 months   ZVITAMBO         ZIMBABWE                       9                  0       72   1096
6-24 months   ZVITAMBO         ZIMBABWE                       9                  1        2   1096
6-24 months   ZVITAMBO         ZIMBABWE                       10                 0       77   1096
6-24 months   ZVITAMBO         ZIMBABWE                       10                 1        7   1096
6-24 months   ZVITAMBO         ZIMBABWE                       11                 0       88   1096
6-24 months   ZVITAMBO         ZIMBABWE                       11                 1        7   1096
6-24 months   ZVITAMBO         ZIMBABWE                       12                 0      106   1096
6-24 months   ZVITAMBO         ZIMBABWE                       12                 1       10   1096


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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0112ac92-f444-47cc-978d-fa77490c098b/c794bdd5-f352-4323-85b8-0da46b5cd942/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0112ac92-f444-47cc-978d-fa77490c098b/c794bdd5-f352-4323-85b8-0da46b5cd942/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0112ac92-f444-47cc-978d-fa77490c098b/c794bdd5-f352-4323-85b8-0da46b5cd942/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0112ac92-f444-47cc-978d-fa77490c098b/c794bdd5-f352-4323-85b8-0da46b5cd942/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7600000   0.5660151   0.9539849
0-24 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.6800000   0.5080091   0.8519909
0-24 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.6470588   0.3526697   0.9414479
0-24 months   CMC-V-BCS-2002   INDIA                          4                    NA                0.4782609   0.2586034   0.6979183
0-24 months   CMC-V-BCS-2002   INDIA                          5                    NA                0.5454545   0.3561138   0.7347953
0-24 months   CMC-V-BCS-2002   INDIA                          6                    NA                0.7142857   0.4959735   0.9325979
0-24 months   CMC-V-BCS-2002   INDIA                          7                    NA                0.5416667   0.3294185   0.7539148
0-24 months   CMC-V-BCS-2002   INDIA                          8                    NA                0.5161290   0.3252597   0.7069984
0-24 months   CMC-V-BCS-2002   INDIA                          9                    NA                0.6896552   0.5324088   0.8469016
0-24 months   CMC-V-BCS-2002   INDIA                          10                   NA                0.5333333   0.2739743   0.7926924
0-24 months   CMC-V-BCS-2002   INDIA                          11                   NA                0.7560976   0.6471570   0.8650381
0-24 months   CMC-V-BCS-2002   INDIA                          12                   NA                0.6060606   0.4362489   0.7758723
0-24 months   IRC              INDIA                          1                    NA                0.6451613   0.4725102   0.8178124
0-24 months   IRC              INDIA                          2                    NA                0.6363636   0.4006552   0.8720720
0-24 months   IRC              INDIA                          3                    NA                0.5416667   0.3005109   0.7828224
0-24 months   IRC              INDIA                          4                    NA                0.7272727   0.5326364   0.9219090
0-24 months   IRC              INDIA                          5                    NA                0.5652174   0.3263159   0.8041189
0-24 months   IRC              INDIA                          6                    NA                0.4857143   0.3097969   0.6616317
0-24 months   IRC              INDIA                          7                    NA                0.5714286   0.4230264   0.7198308
0-24 months   IRC              INDIA                          8                    NA                0.5813953   0.4190767   0.7437140
0-24 months   IRC              INDIA                          9                    NA                0.5625000   0.4064115   0.7185885
0-24 months   IRC              INDIA                          10                   NA                0.5581395   0.4185154   0.6977636
0-24 months   IRC              INDIA                          11                   NA                0.6250000   0.4423429   0.8076571
0-24 months   IRC              INDIA                          12                   NA                0.6304348   0.4645516   0.7963180
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4187117   0.3800704   0.4573530
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.4490566   0.4059899   0.4921233
0-24 months   JiVitA-3         BANGLADESH                     3                    NA                0.4354305   0.3954343   0.4754266
0-24 months   JiVitA-3         BANGLADESH                     4                    NA                0.4108527   0.3680541   0.4536513
0-24 months   JiVitA-3         BANGLADESH                     5                    NA                0.3827160   0.3413711   0.4240610
0-24 months   JiVitA-3         BANGLADESH                     6                    NA                0.3640351   0.3230712   0.4049990
0-24 months   JiVitA-3         BANGLADESH                     7                    NA                0.3593429   0.3183475   0.4003383
0-24 months   JiVitA-3         BANGLADESH                     8                    NA                0.4097561   0.3710914   0.4484207
0-24 months   JiVitA-3         BANGLADESH                     9                    NA                0.4815756   0.4469048   0.5162464
0-24 months   JiVitA-3         BANGLADESH                     10                   NA                0.4417767   0.4078938   0.4756596
0-24 months   JiVitA-3         BANGLADESH                     11                   NA                0.4543210   0.4198403   0.4888017
0-24 months   JiVitA-3         BANGLADESH                     12                   NA                0.3974843   0.3624692   0.4324993
0-24 months   Keneba           GAMBIA                         1                    NA                0.6242038   0.5418601   0.7065475
0-24 months   Keneba           GAMBIA                         2                    NA                0.6507177   0.5808537   0.7205817
0-24 months   Keneba           GAMBIA                         3                    NA                0.6890244   0.6161792   0.7618695
0-24 months   Keneba           GAMBIA                         4                    NA                0.5597826   0.4815429   0.6380224
0-24 months   Keneba           GAMBIA                         5                    NA                0.5838926   0.4953792   0.6724060
0-24 months   Keneba           GAMBIA                         6                    NA                0.5851064   0.4654710   0.7047418
0-24 months   Keneba           GAMBIA                         7                    NA                0.5840708   0.4876345   0.6805071
0-24 months   Keneba           GAMBIA                         8                    NA                0.5304348   0.4332519   0.6276177
0-24 months   Keneba           GAMBIA                         9                    NA                0.6428571   0.5547722   0.7309420
0-24 months   Keneba           GAMBIA                         10                   NA                0.5963855   0.5185444   0.6742267
0-24 months   Keneba           GAMBIA                         11                   NA                0.6303318   0.5636790   0.6969845
0-24 months   Keneba           GAMBIA                         12                   NA                0.5952381   0.5018871   0.6885891
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.5000000   0.3562585   0.6437415
0-24 months   NIH-Birth        BANGLADESH                     2                    NA                0.5526316   0.3869369   0.7183263
0-24 months   NIH-Birth        BANGLADESH                     3                    NA                0.4285714   0.2804559   0.5766869
0-24 months   NIH-Birth        BANGLADESH                     4                    NA                0.5555556   0.4250800   0.6860311
0-24 months   NIH-Birth        BANGLADESH                     5                    NA                0.6363636   0.4903481   0.7823792
0-24 months   NIH-Birth        BANGLADESH                     6                    NA                0.6666667   0.4818376   0.8514958
0-24 months   NIH-Birth        BANGLADESH                     7                    NA                0.4615385   0.2907262   0.6323507
0-24 months   NIH-Birth        BANGLADESH                     8                    NA                0.5806452   0.4060738   0.7552165
0-24 months   NIH-Birth        BANGLADESH                     9                    NA                0.6250000   0.4574566   0.7925434
0-24 months   NIH-Birth        BANGLADESH                     10                   NA                0.4827586   0.2745559   0.6909613
0-24 months   NIH-Birth        BANGLADESH                     11                   NA                0.5151515   0.3166506   0.7136524
0-24 months   NIH-Birth        BANGLADESH                     12                   NA                0.2800000   0.0641191   0.4958809
0-24 months   PROBIT           BELARUS                        1                    NA                0.8503401   0.8098247   0.8908556
0-24 months   PROBIT           BELARUS                        2                    NA                0.8914027   0.8495263   0.9332791
0-24 months   PROBIT           BELARUS                        3                    NA                0.9130435   0.8809060   0.9451810
0-24 months   PROBIT           BELARUS                        4                    NA                0.8931034   0.8572267   0.9289802
0-24 months   PROBIT           BELARUS                        5                    NA                0.8791541   0.8436246   0.9146836
0-24 months   PROBIT           BELARUS                        6                    NA                0.8738739   0.8381977   0.9095500
0-24 months   PROBIT           BELARUS                        7                    NA                0.9150485   0.8887521   0.9413450
0-24 months   PROBIT           BELARUS                        8                    NA                0.8864629   0.8574406   0.9154851
0-24 months   PROBIT           BELARUS                        9                    NA                0.8762626   0.8444791   0.9080461
0-24 months   PROBIT           BELARUS                        10                   NA                0.8786008   0.8500991   0.9071025
0-24 months   PROBIT           BELARUS                        11                   NA                0.8361045   0.8013728   0.8708362
0-24 months   PROBIT           BELARUS                        12                   NA                0.8822270   0.8536659   0.9107881
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3064516   0.1791303   0.4337729
0-24 months   SAS-CompFeed     INDIA                          2                    NA                0.2307692   0.0878681   0.3736704
0-24 months   SAS-CompFeed     INDIA                          3                    NA                0.2790698   0.1465175   0.4116220
0-24 months   SAS-CompFeed     INDIA                          4                    NA                0.3333333   0.1840436   0.4826231
0-24 months   SAS-CompFeed     INDIA                          5                    NA                0.3968254   0.2795968   0.5140540
0-24 months   SAS-CompFeed     INDIA                          6                    NA                0.5142857   0.3934607   0.6351107
0-24 months   SAS-CompFeed     INDIA                          7                    NA                0.4754098   0.3376072   0.6132125
0-24 months   SAS-CompFeed     INDIA                          8                    NA                0.3977273   0.2869962   0.5084584
0-24 months   SAS-CompFeed     INDIA                          9                    NA                0.4326923   0.3362464   0.5291383
0-24 months   SAS-CompFeed     INDIA                          10                   NA                0.5111111   0.3990064   0.6232159
0-24 months   SAS-CompFeed     INDIA                          11                   NA                0.2674419   0.1720024   0.3628813
0-24 months   SAS-CompFeed     INDIA                          12                   NA                0.2500000   0.1357935   0.3642065
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5324675   0.4145594   0.6503757
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5531915   0.4045085   0.7018745
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6268657   0.5021189   0.7516124
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7173913   0.5704934   0.8642892
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.5789474   0.3960709   0.7618238
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.6000000   0.4388735   0.7611265
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.6382979   0.4951070   0.7814887
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.6507937   0.5259798   0.7756075
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.7037037   0.6010671   0.8063403
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.7049180   0.5958327   0.8140034
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.6575342   0.5374504   0.7776181
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.5512821   0.4378198   0.6647443
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.5058824   0.4525861   0.5591786
0-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.5039683   0.4432341   0.5647024
0-24 months   ZVITAMBO         ZIMBABWE                       3                    NA                0.4903226   0.4343466   0.5462986
0-24 months   ZVITAMBO         ZIMBABWE                       4                    NA                0.5630631   0.4952903   0.6308358
0-24 months   ZVITAMBO         ZIMBABWE                       5                    NA                0.5179283   0.4549970   0.5808596
0-24 months   ZVITAMBO         ZIMBABWE                       6                    NA                0.6077170   0.5525563   0.6628778
0-24 months   ZVITAMBO         ZIMBABWE                       7                    NA                0.6017964   0.5485074   0.6550854
0-24 months   ZVITAMBO         ZIMBABWE                       8                    NA                0.5710145   0.5177508   0.6242781
0-24 months   ZVITAMBO         ZIMBABWE                       9                    NA                0.5629139   0.5063253   0.6195026
0-24 months   ZVITAMBO         ZIMBABWE                       10                   NA                0.5421245   0.4822653   0.6019837
0-24 months   ZVITAMBO         ZIMBABWE                       11                   NA                0.5448916   0.4908950   0.5988882
0-24 months   ZVITAMBO         ZIMBABWE                       12                   NA                0.5028409   0.4505615   0.5551203
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.6247140   0.5792928   0.6701352
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.6611111   0.6121905   0.7100318
0-6 months    JiVitA-3         BANGLADESH                     3                    NA                0.6322115   0.5858497   0.6785734
0-6 months    JiVitA-3         BANGLADESH                     4                    NA                0.6523077   0.6005041   0.7041113
0-6 months    JiVitA-3         BANGLADESH                     5                    NA                0.7530364   0.6992276   0.8068453
0-6 months    JiVitA-3         BANGLADESH                     6                    NA                0.7186147   0.6605957   0.7766337
0-6 months    JiVitA-3         BANGLADESH                     7                    NA                0.7142857   0.6576883   0.7708831
0-6 months    JiVitA-3         BANGLADESH                     8                    NA                0.7200000   0.6731193   0.7668807
0-6 months    JiVitA-3         BANGLADESH                     9                    NA                0.7288462   0.6906164   0.7670759
0-6 months    JiVitA-3         BANGLADESH                     10                   NA                0.6852886   0.6459895   0.7245878
0-6 months    JiVitA-3         BANGLADESH                     11                   NA                0.6956522   0.6565154   0.7347889
0-6 months    JiVitA-3         BANGLADESH                     12                   NA                0.5884544   0.5468101   0.6300987
0-6 months    Keneba           GAMBIA                         1                    NA                0.8032787   0.6960421   0.9105153
0-6 months    Keneba           GAMBIA                         2                    NA                0.8289474   0.7433641   0.9145306
0-6 months    Keneba           GAMBIA                         3                    NA                0.8064516   0.7080942   0.9048090
0-6 months    Keneba           GAMBIA                         4                    NA                0.7368421   0.6461428   0.8275414
0-6 months    Keneba           GAMBIA                         5                    NA                0.7230769   0.6207802   0.8253736
0-6 months    Keneba           GAMBIA                         6                    NA                0.6734694   0.5431561   0.8037827
0-6 months    Keneba           GAMBIA                         7                    NA                0.7142857   0.5662094   0.8623621
0-6 months    Keneba           GAMBIA                         8                    NA                0.6829268   0.5371964   0.8286572
0-6 months    Keneba           GAMBIA                         9                    NA                0.8196721   0.7198698   0.9194745
0-6 months    Keneba           GAMBIA                         10                   NA                0.7727273   0.6756861   0.8697684
0-6 months    Keneba           GAMBIA                         11                   NA                0.8072289   0.7249758   0.8894820
0-6 months    Keneba           GAMBIA                         12                   NA                0.8163265   0.7097265   0.9229265
0-6 months    PROBIT           BELARUS                        1                    NA                0.8736842   0.8347383   0.9126301
0-6 months    PROBIT           BELARUS                        2                    NA                0.8971963   0.8560980   0.9382945
0-6 months    PROBIT           BELARUS                        3                    NA                0.9310345   0.9015851   0.9604838
0-6 months    PROBIT           BELARUS                        4                    NA                0.9045936   0.8700140   0.9391733
0-6 months    PROBIT           BELARUS                        5                    NA                0.8978328   0.8644691   0.9311965
0-6 months    PROBIT           BELARUS                        6                    NA                0.8868502   0.8522031   0.9214972
0-6 months    PROBIT           BELARUS                        7                    NA                0.9282178   0.9031278   0.9533078
0-6 months    PROBIT           BELARUS                        8                    NA                0.8977778   0.8697404   0.9258151
0-6 months    PROBIT           BELARUS                        9                    NA                0.8979058   0.8675344   0.9282771
0-6 months    PROBIT           BELARUS                        10                   NA                0.9025974   0.8755183   0.9296765
0-6 months    PROBIT           BELARUS                        11                   NA                0.8706468   0.8375158   0.9037777
0-6 months    PROBIT           BELARUS                        12                   NA                0.9168539   0.8909525   0.9427553
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.4193548   0.2401305   0.5985791
0-6 months    SAS-CompFeed     INDIA                          2                    NA                0.3529412   0.1315953   0.5742870
0-6 months    SAS-CompFeed     INDIA                          3                    NA                0.3333333   0.1239908   0.5426759
0-6 months    SAS-CompFeed     INDIA                          4                    NA                0.3333333   0.1253083   0.5413584
0-6 months    SAS-CompFeed     INDIA                          5                    NA                0.4705882   0.3063815   0.6347950
0-6 months    SAS-CompFeed     INDIA                          6                    NA                0.7352941   0.5831042   0.8874840
0-6 months    SAS-CompFeed     INDIA                          7                    NA                0.5652174   0.3561860   0.7742487
0-6 months    SAS-CompFeed     INDIA                          8                    NA                0.5666667   0.3837110   0.7496223
0-6 months    SAS-CompFeed     INDIA                          9                    NA                0.7142857   0.5598672   0.8687043
0-6 months    SAS-CompFeed     INDIA                          10                   NA                0.5714286   0.4247895   0.7180676
0-6 months    SAS-CompFeed     INDIA                          11                   NA                0.3125000   0.1602508   0.4647492
0-6 months    SAS-CompFeed     INDIA                          12                   NA                0.5416667   0.3359911   0.7473422
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.7300885   0.6719711   0.7882059
0-6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.7151515   0.6465604   0.7837426
0-6 months    ZVITAMBO         ZIMBABWE                       3                    NA                0.7178218   0.6567614   0.7788822
0-6 months    ZVITAMBO         ZIMBABWE                       4                    NA                0.7933333   0.7290435   0.8576231
0-6 months    ZVITAMBO         ZIMBABWE                       5                    NA                0.7735849   0.7082613   0.8389085
0-6 months    ZVITAMBO         ZIMBABWE                       6                    NA                0.8044444   0.7528400   0.8560489
0-6 months    ZVITAMBO         ZIMBABWE                       7                    NA                0.7647059   0.7124248   0.8169870
0-6 months    ZVITAMBO         ZIMBABWE                       8                    NA                0.7500000   0.6967349   0.8032651
0-6 months    ZVITAMBO         ZIMBABWE                       9                    NA                0.7368421   0.6798071   0.7938771
0-6 months    ZVITAMBO         ZIMBABWE                       10                   NA                0.7460317   0.6837157   0.8083478
0-6 months    ZVITAMBO         ZIMBABWE                       11                   NA                0.7412281   0.6841859   0.7982703
0-6 months    ZVITAMBO         ZIMBABWE                       12                   NA                0.7076271   0.6497292   0.7655251
6-24 months   Keneba           GAMBIA                         1                    NA                0.5104167   0.4029665   0.6178669
6-24 months   Keneba           GAMBIA                         2                    NA                0.5488722   0.4594091   0.6383353
6-24 months   Keneba           GAMBIA                         3                    NA                0.6176471   0.5173245   0.7179696
6-24 months   Keneba           GAMBIA                         4                    NA                0.4351852   0.3312320   0.5391383
6-24 months   Keneba           GAMBIA                         5                    NA                0.4761905   0.3570346   0.5953463
6-24 months   Keneba           GAMBIA                         6                    NA                0.4888889   0.3177226   0.6600552
6-24 months   Keneba           GAMBIA                         7                    NA                0.5256410   0.4133154   0.6379666
6-24 months   Keneba           GAMBIA                         8                    NA                0.4459459   0.3275380   0.5643539
6-24 months   Keneba           GAMBIA                         9                    NA                0.5063291   0.3828566   0.6298017
6-24 months   Keneba           GAMBIA                         10                   NA                0.4800000   0.3796298   0.5803702
6-24 months   Keneba           GAMBIA                         11                   NA                0.5156250   0.4282113   0.6030387
6-24 months   Keneba           GAMBIA                         12                   NA                0.4545455   0.3369386   0.5721523
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4857143   0.3064263   0.6650023
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4615385   0.2493436   0.6737334
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6562500   0.4923737   0.8201263
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.6250000   0.4073672   0.8426328
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.5789474   0.3375529   0.8203419
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.5652174   0.3623280   0.7681068
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.4827586   0.2917694   0.6737478
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.5151515   0.3440691   0.6862339
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.6000000   0.4412050   0.7587950
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.6111111   0.4596657   0.7625566
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.5675676   0.4016409   0.7334942
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.5384615   0.3852970   0.6916261


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4221371   0.4110175   0.4332567
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6105033   0.5863646   0.6346419
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
0-6 months    Keneba           GAMBIA                         NA                   NA                0.7720994   0.7419223   0.8022766
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
6-24 months   Keneba           GAMBIA                         NA                   NA                0.5045290   0.4730969   0.5359611
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          2                    1                 0.8947368   0.6246818   1.2815390
0-24 months   CMC-V-BCS-2002   INDIA                          3                    1                 0.8513932   0.5053216   1.4344733
0-24 months   CMC-V-BCS-2002   INDIA                          4                    1                 0.6292906   0.3721284   1.0641668
0-24 months   CMC-V-BCS-2002   INDIA                          5                    1                 0.7177033   0.4664810   1.1042209
0-24 months   CMC-V-BCS-2002   INDIA                          6                    1                 0.9398496   0.6310975   1.3996528
0-24 months   CMC-V-BCS-2002   INDIA                          7                    1                 0.7127193   0.4464547   1.1377835
0-24 months   CMC-V-BCS-2002   INDIA                          8                    1                 0.6791171   0.4333392   1.0642935
0-24 months   CMC-V-BCS-2002   INDIA                          9                    1                 0.9074410   0.6444635   1.2777283
0-24 months   CMC-V-BCS-2002   INDIA                          10                   1                 0.7017544   0.4052341   1.2152463
0-24 months   CMC-V-BCS-2002   INDIA                          11                   1                 0.9948652   0.7421623   1.3336123
0-24 months   CMC-V-BCS-2002   INDIA                          12                   1                 0.7974482   0.5458794   1.1649525
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2                    1                 0.9863636   0.6245718   1.5577283
0-24 months   IRC              INDIA                          3                    1                 0.8395833   0.4993920   1.4115168
0-24 months   IRC              INDIA                          4                    1                 1.1272727   0.7721535   1.6457140
0-24 months   IRC              INDIA                          5                    1                 0.8760870   0.5312591   1.4447346
0-24 months   IRC              INDIA                          6                    1                 0.7528571   0.4798999   1.1810669
0-24 months   IRC              INDIA                          7                    1                 0.8857143   0.6099992   1.2860505
0-24 months   IRC              INDIA                          8                    1                 0.9011628   0.6121260   1.3266784
0-24 months   IRC              INDIA                          9                    1                 0.8718750   0.5929608   1.2819835
0-24 months   IRC              INDIA                          10                   1                 0.8651163   0.5998193   1.2477527
0-24 months   IRC              INDIA                          11                   1                 0.9687500   0.6518089   1.4398032
0-24 months   IRC              INDIA                          12                   1                 0.9771739   0.6713966   1.4222129
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2                    1                 1.0724722   0.9388220   1.2251487
0-24 months   JiVitA-3         BANGLADESH                     3                    1                 1.0399292   0.9129678   1.1845464
0-24 months   JiVitA-3         BANGLADESH                     4                    1                 0.9812307   0.8537496   1.1277470
0-24 months   JiVitA-3         BANGLADESH                     5                    1                 0.9140325   0.7929683   1.0535797
0-24 months   JiVitA-3         BANGLADESH                     6                    1                 0.8694171   0.7516657   1.0056148
0-24 months   JiVitA-3         BANGLADESH                     7                    1                 0.8582109   0.7410818   0.9938525
0-24 months   JiVitA-3         BANGLADESH                     8                    1                 0.9786116   0.8576086   1.1166874
0-24 months   JiVitA-3         BANGLADESH                     9                    1                 1.1501366   1.0230967   1.2929513
0-24 months   JiVitA-3         BANGLADESH                     10                   1                 1.0550858   0.9357806   1.1896015
0-24 months   JiVitA-3         BANGLADESH                     11                   1                 1.0850450   0.9628440   1.2227554
0-24 months   JiVitA-3         BANGLADESH                     12                   1                 0.9493031   0.8355976   1.0784814
0-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         2                    1                 1.0424763   0.8794231   1.2357612
0-24 months   Keneba           GAMBIA                         3                    1                 1.1038452   0.9321547   1.3071588
0-24 months   Keneba           GAMBIA                         4                    1                 0.8967946   0.7399911   1.0868246
0-24 months   Keneba           GAMBIA                         5                    1                 0.9354198   0.7651218   1.1436221
0-24 months   Keneba           GAMBIA                         6                    1                 0.9373643   0.7349077   1.1955948
0-24 months   Keneba           GAMBIA                         7                    1                 0.9357053   0.7574508   1.1559092
0-24 months   Keneba           GAMBIA                         8                    1                 0.8497782   0.6780404   1.0650146
0-24 months   Keneba           GAMBIA                         9                    1                 1.0298834   0.8514989   1.2456385
0-24 months   Keneba           GAMBIA                         10                   1                 0.9554340   0.7936132   1.1502506
0-24 months   Keneba           GAMBIA                         11                   1                 1.0098172   0.8527458   1.1958204
0-24 months   Keneba           GAMBIA                         12                   1                 0.9535957   0.7768972   1.1704828
0-24 months   NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     2                    1                 1.1052632   0.7296068   1.6743357
0-24 months   NIH-Birth        BANGLADESH                     3                    1                 0.8571429   0.5468452   1.3435134
0-24 months   NIH-Birth        BANGLADESH                     4                    1                 1.1111111   0.7666315   1.6103799
0-24 months   NIH-Birth        BANGLADESH                     5                    1                 1.2727273   0.8811436   1.8383322
0-24 months   NIH-Birth        BANGLADESH                     6                    1                 1.3333333   0.8943789   1.9877232
0-24 months   NIH-Birth        BANGLADESH                     7                    1                 0.9230769   0.5777349   1.4748477
0-24 months   NIH-Birth        BANGLADESH                     8                    1                 1.1612903   0.7661228   1.7602859
0-24 months   NIH-Birth        BANGLADESH                     9                    1                 1.2500000   0.8438751   1.8515773
0-24 months   NIH-Birth        BANGLADESH                     10                   1                 0.9655172   0.5749832   1.6213056
0-24 months   NIH-Birth        BANGLADESH                     11                   1                 1.0303030   0.6370035   1.6664339
0-24 months   NIH-Birth        BANGLADESH                     12                   1                 0.5600000   0.2459415   1.2751000
0-24 months   PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        2                    1                 1.0482896   0.9804426   1.1208316
0-24 months   PROBIT           BELARUS                        3                    1                 1.0737391   1.0119808   1.1392664
0-24 months   PROBIT           BELARUS                        4                    1                 1.0502897   0.9868328   1.1178270
0-24 months   PROBIT           BELARUS                        5                    1                 1.0338852   0.9712674   1.1005399
0-24 months   PROBIT           BELARUS                        6                    1                 1.0276757   0.9651760   1.0942225
0-24 months   PROBIT           BELARUS                        7                    1                 1.0760971   1.0178561   1.1376705
0-24 months   PROBIT           BELARUS                        8                    1                 1.0424803   0.9839231   1.1045226
0-24 months   PROBIT           BELARUS                        9                    1                 1.0304848   0.9705887   1.0940772
0-24 months   PROBIT           BELARUS                        10                   1                 1.0332346   0.9753614   1.0945416
0-24 months   PROBIT           BELARUS                        11                   1                 0.9832589   0.9230287   1.0474193
0-24 months   PROBIT           BELARUS                        12                   1                 1.0374989   0.9794232   1.0990183
0-24 months   SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          2                    1                 0.7530364   0.3572460   1.5873202
0-24 months   SAS-CompFeed     INDIA                          3                    1                 0.9106487   0.4845544   1.7114304
0-24 months   SAS-CompFeed     INDIA                          4                    1                 1.0877193   0.5904410   2.0038129
0-24 months   SAS-CompFeed     INDIA                          5                    1                 1.2949039   0.7778575   2.1556340
0-24 months   SAS-CompFeed     INDIA                          6                    1                 1.6781955   1.0413652   2.7044691
0-24 months   SAS-CompFeed     INDIA                          7                    1                 1.5513374   0.9348001   2.5745051
0-24 months   SAS-CompFeed     INDIA                          8                    1                 1.2978469   0.7872063   2.1397270
0-24 months   SAS-CompFeed     INDIA                          9                    1                 1.4119433   0.8812153   2.2623121
0-24 months   SAS-CompFeed     INDIA                          10                   1                 1.6678363   1.0426118   2.6679899
0-24 months   SAS-CompFeed     INDIA                          11                   1                 0.8727050   0.5046604   1.5091616
0-24 months   SAS-CompFeed     INDIA                          12                   1                 0.8157895   0.4399406   1.5127324
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0389206   0.7333819   1.4717516
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1772843   0.8741455   1.5855465
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3472959   0.9965113   1.8215609
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.0872914   0.7393022   1.5990789
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1268293   0.7955690   1.5960203
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1987545   0.8746635   1.6429317
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2222222   0.9118542   1.6382302
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.3215899   1.0137772   1.7228636
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.3238705   1.0104831   1.7344506
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.2348814   0.9267442   1.6454724
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0353346   0.7652030   1.4008279
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9962163   0.8488536   1.1691614
0-24 months   ZVITAMBO         ZIMBABWE                       3                    1                 0.9692423   0.8297857   1.1321364
0-24 months   ZVITAMBO         ZIMBABWE                       4                    1                 1.1130316   0.9484989   1.3061053
0-24 months   ZVITAMBO         ZIMBABWE                       5                    1                 1.0238117   0.8717165   1.2024443
0-24 months   ZVITAMBO         ZIMBABWE                       6                    1                 1.2013011   1.0453358   1.3805366
0-24 months   ZVITAMBO         ZIMBABWE                       7                    1                 1.1895975   1.0366428   1.3651205
0-24 months   ZVITAMBO         ZIMBABWE                       8                    1                 1.1287496   0.9805840   1.2993029
0-24 months   ZVITAMBO         ZIMBABWE                       9                    1                 1.1127368   0.9619411   1.2871715
0-24 months   ZVITAMBO         ZIMBABWE                       10                   1                 1.0716415   0.9199610   1.2483307
0-24 months   ZVITAMBO         ZIMBABWE                       11                   1                 1.0771114   0.9320608   1.2447353
0-24 months   ZVITAMBO         ZIMBABWE                       12                   1                 0.9939878   0.8572308   1.1525622
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2                    1                 1.0582621   0.9539806   1.1739428
0-6 months    JiVitA-3         BANGLADESH                     3                    1                 1.0120016   0.9127104   1.1220945
0-6 months    JiVitA-3         BANGLADESH                     4                    1                 1.0441702   0.9375837   1.1628737
0-6 months    JiVitA-3         BANGLADESH                     5                    1                 1.2054100   1.0885835   1.3347743
0-6 months    JiVitA-3         BANGLADESH                     6                    1                 1.1503100   1.0318790   1.2823337
0-6 months    JiVitA-3         BANGLADESH                     7                    1                 1.1433804   1.0268026   1.2731939
0-6 months    JiVitA-3         BANGLADESH                     8                    1                 1.1525275   1.0453549   1.2706876
0-6 months    JiVitA-3         BANGLADESH                     9                    1                 1.1666878   1.0666428   1.2761164
0-6 months    JiVitA-3         BANGLADESH                     10                   1                 1.0969639   0.9999449   1.2033960
0-6 months    JiVitA-3         BANGLADESH                     11                   1                 1.1135531   1.0157470   1.2207770
0-6 months    JiVitA-3         BANGLADESH                     12                   1                 0.9419581   0.8510736   1.0425480
0-6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         2                    1                 1.0319549   0.8717014   1.2216694
0-6 months    Keneba           GAMBIA                         3                    1                 1.0039500   0.8378797   1.2029358
0-6 months    Keneba           GAMBIA                         4                    1                 0.9172932   0.7649734   1.0999426
0-6 months    Keneba           GAMBIA                         5                    1                 0.9001570   0.7410383   1.0934423
0-6 months    Keneba           GAMBIA                         6                    1                 0.8384007   0.6627624   1.0605847
0-6 months    Keneba           GAMBIA                         7                    1                 0.8892128   0.6948973   1.1378652
0-6 months    Keneba           GAMBIA                         8                    1                 0.8501742   0.6609855   1.0935129
0-6 months    Keneba           GAMBIA                         9                    1                 1.0204082   0.8517328   1.2224876
0-6 months    Keneba           GAMBIA                         10                   1                 0.9619666   0.8008680   1.1554711
0-6 months    Keneba           GAMBIA                         11                   1                 1.0049176   0.8495600   1.1886852
0-6 months    Keneba           GAMBIA                         12                   1                 1.0162432   0.8431301   1.2249002
0-6 months    PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        2                    1                 1.0269114   0.9633279   1.0946916
0-6 months    PROBIT           BELARUS                        3                    1                 1.0656419   1.0089584   1.1255098
0-6 months    PROBIT           BELARUS                        4                    1                 1.0353783   0.9763288   1.0979991
0-6 months    PROBIT           BELARUS                        5                    1                 1.0276400   0.9696993   1.0890426
0-6 months    PROBIT           BELARUS                        6                    1                 1.0150695   0.9566511   1.0770551
0-6 months    PROBIT           BELARUS                        7                    1                 1.0624180   1.0084513   1.1192727
0-6 months    PROBIT           BELARUS                        8                    1                 1.0275770   0.9731432   1.0850556
0-6 months    PROBIT           BELARUS                        9                    1                 1.0277235   0.9717946   1.0868711
0-6 months    PROBIT           BELARUS                        10                   1                 1.0330934   0.9790480   1.0901222
0-6 months    PROBIT           BELARUS                        11                   1                 0.9965234   0.9397959   1.0566751
0-6 months    PROBIT           BELARUS                        12                   1                 1.0494111   0.9954649   1.1062808
0-6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          2                    1                 0.8416290   0.3940249   1.7977019
0-6 months    SAS-CompFeed     INDIA                          3                    1                 0.7948718   0.3718637   1.6990664
0-6 months    SAS-CompFeed     INDIA                          4                    1                 0.7948718   0.3730796   1.6935290
0-6 months    SAS-CompFeed     INDIA                          5                    1                 1.1221719   0.6463136   1.9483884
0-6 months    SAS-CompFeed     INDIA                          6                    1                 1.7533937   1.0905591   2.8190947
0-6 months    SAS-CompFeed     INDIA                          7                    1                 1.3478261   0.7659152   2.3718490
0-6 months    SAS-CompFeed     INDIA                          8                    1                 1.3512821   0.7909093   2.3086884
0-6 months    SAS-CompFeed     INDIA                          9                    1                 1.7032967   1.0550814   2.7497591
0-6 months    SAS-CompFeed     INDIA                          10                   1                 1.3626374   0.8277176   2.2432537
0-6 months    SAS-CompFeed     INDIA                          11                   1                 0.7451923   0.3897697   1.4247173
0-6 months    SAS-CompFeed     INDIA                          12                   1                 1.2916667   0.7292345   2.2878824
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9795409   0.8647512   1.1095680
0-6 months    ZVITAMBO         ZIMBABWE                       3                    1                 0.9831983   0.8750753   1.1046809
0-6 months    ZVITAMBO         ZIMBABWE                       4                    1                 1.0866263   0.9699439   1.2173453
0-6 months    ZVITAMBO         ZIMBABWE                       5                    1                 1.0595769   0.9434812   1.1899582
0-6 months    ZVITAMBO         ZIMBABWE                       6                    1                 1.1018451   0.9947659   1.2204506
0-6 months    ZVITAMBO         ZIMBABWE                       7                    1                 1.0474153   0.9430775   1.1632967
0-6 months    ZVITAMBO         ZIMBABWE                       8                    1                 1.0272727   0.9233267   1.1429208
0-6 months    ZVITAMBO         ZIMBABWE                       9                    1                 1.0092504   0.9031882   1.1277676
0-6 months    ZVITAMBO         ZIMBABWE                       10                   1                 1.0218374   0.9104797   1.1468149
0-6 months    ZVITAMBO         ZIMBABWE                       11                   1                 1.0152578   0.9088478   1.1341266
0-6 months    ZVITAMBO         ZIMBABWE                       12                   1                 0.9692347   0.8646741   1.0864393
6-24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         2                    1                 1.0753414   0.8239813   1.4033803
6-24 months   Keneba           GAMBIA                         3                    1                 1.2100840   0.9275378   1.5786995
6-24 months   Keneba           GAMBIA                         4                    1                 0.8526077   0.6201171   1.1722623
6-24 months   Keneba           GAMBIA                         5                    1                 0.9329446   0.6727127   1.2938445
6-24 months   Keneba           GAMBIA                         6                    1                 0.9578231   0.6365924   1.4411499
6-24 months   Keneba           GAMBIA                         7                    1                 1.0298273   0.7629243   1.3901042
6-24 months   Keneba           GAMBIA                         8                    1                 0.8736900   0.6225674   1.2261070
6-24 months   Keneba           GAMBIA                         9                    1                 0.9919917   0.7187778   1.3690568
6-24 months   Keneba           GAMBIA                         10                   1                 0.9404082   0.6989496   1.2652808
6-24 months   Keneba           GAMBIA                         11                   1                 1.0102041   0.7709379   1.3237283
6-24 months   Keneba           GAMBIA                         12                   1                 0.8905380   0.6379577   1.2431199
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9502262   0.5269450   1.7135182
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.3511029   0.8652460   2.1097806
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2867647   0.7745973   2.1375796
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1919505   0.6830056   2.0801379
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1636829   0.6953098   1.9475602
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9939148   0.5786091   1.7073127
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0606061   0.6455315   1.7425721
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.2352941   0.7843591   1.9454757
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.2581699   0.8066267   1.9624834
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.1685215   0.7296774   1.8712959
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.1085973   0.6956412   1.7666981


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1303704   -0.3175966   0.0568558
0-24 months   IRC              INDIA                          1                    NA                -0.0552879   -0.2222494   0.1116737
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0034254   -0.0334475   0.0402984
0-24 months   Keneba           GAMBIA                         1                    NA                -0.0137005   -0.0924335   0.0650324
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0201900   -0.1136125   0.1539925
0-24 months   PROBIT           BELARUS                        1                    NA                 0.0303314   -0.0085645   0.0692272
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.0743838   -0.0480880   0.1968556
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0944609   -0.0164284   0.2053503
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0374095   -0.0133471   0.0881661
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0504022    0.0072724   0.0935320
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0311792   -0.1335148   0.0711563
0-6 months    PROBIT           BELARUS                        1                    NA                 0.0271829   -0.0101739   0.0645397
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.0938416   -0.0768830   0.2645663
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0174304   -0.0378777   0.0727384
6-24 months   Keneba           GAMBIA                         1                    NA                -0.0058877   -0.1084930   0.0967176
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0719265   -0.0977237   0.2415767


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.2070588   -0.5456250   0.0573451
0-24 months   IRC              INDIA                          1                    NA                -0.0937284   -0.4174182   0.1560418
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0081145   -0.0831984   0.0917298
0-24 months   Keneba           GAMBIA                         1                    NA                -0.0224414   -0.1598954   0.0987236
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0388128   -0.2562172   0.2645533
0-24 months   PROBIT           BELARUS                        1                    NA                 0.0344412   -0.0107725   0.0776324
0-24 months   SAS-CompFeed     INDIA                          1                    NA                 0.1953174   -0.2007108   0.4607243
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1506726   -0.0465071   0.3107003
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0688571   -0.0294339   0.1577632
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0746571    0.0084627   0.1364324
0-6 months    Keneba           GAMBIA                         1                    NA                -0.0403824   -0.1817142   0.0840462
0-6 months    PROBIT           BELARUS                        1                    NA                 0.0301742   -0.0122126   0.0707859
0-6 months    SAS-CompFeed     INDIA                          1                    NA                 0.1828571   -0.2287268   0.4565737
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.0233176   -0.0535574   0.0945833
6-24 months   Keneba           GAMBIA                         1                    NA                -0.0116697   -0.2369178   0.1725598
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1289835   -0.2360974   0.3862379

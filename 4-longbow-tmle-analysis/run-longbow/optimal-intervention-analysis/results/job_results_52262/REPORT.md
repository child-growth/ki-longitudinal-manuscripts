---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

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

agecat      studyid                    country                        brthmon    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              20     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              23     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              24     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              19     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              18     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               8     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              14     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              26     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              18     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             15     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             25     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1               5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         2              10      65
Birth       ki0047075b-MAL-ED          BRAZIL                         3               7      65
Birth       ki0047075b-MAL-ED          BRAZIL                         4               4      65
Birth       ki0047075b-MAL-ED          BRAZIL                         5               2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         6               5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         7               6      65
Birth       ki0047075b-MAL-ED          BRAZIL                         8               7      65
Birth       ki0047075b-MAL-ED          BRAZIL                         9               6      65
Birth       ki0047075b-MAL-ED          BRAZIL                         10              5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         11              4      65
Birth       ki0047075b-MAL-ED          BRAZIL                         12              4      65
Birth       ki0047075b-MAL-ED          INDIA                          1               2      47
Birth       ki0047075b-MAL-ED          INDIA                          2               6      47
Birth       ki0047075b-MAL-ED          INDIA                          3               3      47
Birth       ki0047075b-MAL-ED          INDIA                          4               6      47
Birth       ki0047075b-MAL-ED          INDIA                          5               4      47
Birth       ki0047075b-MAL-ED          INDIA                          6               2      47
Birth       ki0047075b-MAL-ED          INDIA                          7               3      47
Birth       ki0047075b-MAL-ED          INDIA                          8               8      47
Birth       ki0047075b-MAL-ED          INDIA                          9               4      47
Birth       ki0047075b-MAL-ED          INDIA                          10              6      47
Birth       ki0047075b-MAL-ED          INDIA                          11              3      47
Birth       ki0047075b-MAL-ED          INDIA                          12              0      47
Birth       ki0047075b-MAL-ED          NEPAL                          1               2      27
Birth       ki0047075b-MAL-ED          NEPAL                          2               2      27
Birth       ki0047075b-MAL-ED          NEPAL                          3               1      27
Birth       ki0047075b-MAL-ED          NEPAL                          4               2      27
Birth       ki0047075b-MAL-ED          NEPAL                          5               3      27
Birth       ki0047075b-MAL-ED          NEPAL                          6               2      27
Birth       ki0047075b-MAL-ED          NEPAL                          7               2      27
Birth       ki0047075b-MAL-ED          NEPAL                          8               1      27
Birth       ki0047075b-MAL-ED          NEPAL                          9               2      27
Birth       ki0047075b-MAL-ED          NEPAL                          10              4      27
Birth       ki0047075b-MAL-ED          NEPAL                          11              5      27
Birth       ki0047075b-MAL-ED          NEPAL                          12              1      27
Birth       ki0047075b-MAL-ED          PERU                           1              30     233
Birth       ki0047075b-MAL-ED          PERU                           2              18     233
Birth       ki0047075b-MAL-ED          PERU                           3              20     233
Birth       ki0047075b-MAL-ED          PERU                           4              15     233
Birth       ki0047075b-MAL-ED          PERU                           5              22     233
Birth       ki0047075b-MAL-ED          PERU                           6              11     233
Birth       ki0047075b-MAL-ED          PERU                           7              19     233
Birth       ki0047075b-MAL-ED          PERU                           8              16     233
Birth       ki0047075b-MAL-ED          PERU                           9              19     233
Birth       ki0047075b-MAL-ED          PERU                           10             21     233
Birth       ki0047075b-MAL-ED          PERU                           11             28     233
Birth       ki0047075b-MAL-ED          PERU                           12             14     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              10     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              13     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               9     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               6     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               6     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               8     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              13     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               3     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              10     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             13     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             14     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             18     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              10     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              16     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              12     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               8     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              10     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              11     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              14     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               6     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               5     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             12     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             11     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             10     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               9      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               8      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               9      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              12      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               9      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               7      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               4      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               8      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             11      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              4      92
Birth       ki1000108-IRC              INDIA                          1              35     388
Birth       ki1000108-IRC              INDIA                          2              26     388
Birth       ki1000108-IRC              INDIA                          3              26     388
Birth       ki1000108-IRC              INDIA                          4              21     388
Birth       ki1000108-IRC              INDIA                          5              22     388
Birth       ki1000108-IRC              INDIA                          6              34     388
Birth       ki1000108-IRC              INDIA                          7              35     388
Birth       ki1000108-IRC              INDIA                          8              38     388
Birth       ki1000108-IRC              INDIA                          9              25     388
Birth       ki1000108-IRC              INDIA                          10             38     388
Birth       ki1000108-IRC              INDIA                          11             39     388
Birth       ki1000108-IRC              INDIA                          12             49     388
Birth       ki1000109-EE               PAKISTAN                       1              61     240
Birth       ki1000109-EE               PAKISTAN                       2              49     240
Birth       ki1000109-EE               PAKISTAN                       3              24     240
Birth       ki1000109-EE               PAKISTAN                       4              10     240
Birth       ki1000109-EE               PAKISTAN                       5               0     240
Birth       ki1000109-EE               PAKISTAN                       6               0     240
Birth       ki1000109-EE               PAKISTAN                       7               0     240
Birth       ki1000109-EE               PAKISTAN                       8               0     240
Birth       ki1000109-EE               PAKISTAN                       9               0     240
Birth       ki1000109-EE               PAKISTAN                       10              0     240
Birth       ki1000109-EE               PAKISTAN                       11             47     240
Birth       ki1000109-EE               PAKISTAN                       12             49     240
Birth       ki1000109-ResPak           PAKISTAN                       1               2      42
Birth       ki1000109-ResPak           PAKISTAN                       2               1      42
Birth       ki1000109-ResPak           PAKISTAN                       3               1      42
Birth       ki1000109-ResPak           PAKISTAN                       4               8      42
Birth       ki1000109-ResPak           PAKISTAN                       5               7      42
Birth       ki1000109-ResPak           PAKISTAN                       6               9      42
Birth       ki1000109-ResPak           PAKISTAN                       7               8      42
Birth       ki1000109-ResPak           PAKISTAN                       8               4      42
Birth       ki1000109-ResPak           PAKISTAN                       9               1      42
Birth       ki1000109-ResPak           PAKISTAN                       10              1      42
Birth       ki1000109-ResPak           PAKISTAN                       11              0      42
Birth       ki1000109-ResPak           PAKISTAN                       12              0      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              86    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              77    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              69    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              62    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              88    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          6             104    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             100    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          8             144    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          9             147    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          10            142    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          11            119    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          12            114    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              70     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              56     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              59     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              51     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              47     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              46     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              40     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              40     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              47     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             48     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             52     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             52     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              30     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              54     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3              27     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     4              21     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     5              24     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     6              45     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     7              28     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     8              46     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     9              80     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     10             75     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     11             54     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     12             55     539
Birth       ki1101329-Keneba           GAMBIA                         1             163    1543
Birth       ki1101329-Keneba           GAMBIA                         2             147    1543
Birth       ki1101329-Keneba           GAMBIA                         3             165    1543
Birth       ki1101329-Keneba           GAMBIA                         4             105    1543
Birth       ki1101329-Keneba           GAMBIA                         5             108    1543
Birth       ki1101329-Keneba           GAMBIA                         6              89    1543
Birth       ki1101329-Keneba           GAMBIA                         7              76    1543
Birth       ki1101329-Keneba           GAMBIA                         8             125    1543
Birth       ki1101329-Keneba           GAMBIA                         9             124    1543
Birth       ki1101329-Keneba           GAMBIA                         10            179    1543
Birth       ki1101329-Keneba           GAMBIA                         11            124    1543
Birth       ki1101329-Keneba           GAMBIA                         12            138    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2               0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3               0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          4               1     696
Birth       ki1113344-GMS-Nepal        NEPAL                          5               0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          6             172     696
Birth       ki1113344-GMS-Nepal        NEPAL                          7             269     696
Birth       ki1113344-GMS-Nepal        NEPAL                          8             254     696
Birth       ki1113344-GMS-Nepal        NEPAL                          9               0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          10              0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          11              0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          12              0     696
Birth       ki1114097-CMIN             BANGLADESH                     1               5      26
Birth       ki1114097-CMIN             BANGLADESH                     2               4      26
Birth       ki1114097-CMIN             BANGLADESH                     3               0      26
Birth       ki1114097-CMIN             BANGLADESH                     4               3      26
Birth       ki1114097-CMIN             BANGLADESH                     5               1      26
Birth       ki1114097-CMIN             BANGLADESH                     6               0      26
Birth       ki1114097-CMIN             BANGLADESH                     7               4      26
Birth       ki1114097-CMIN             BANGLADESH                     8               4      26
Birth       ki1114097-CMIN             BANGLADESH                     9               1      26
Birth       ki1114097-CMIN             BANGLADESH                     10              1      26
Birth       ki1114097-CMIN             BANGLADESH                     11              3      26
Birth       ki1114097-CMIN             BANGLADESH                     12              0      26
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1114097-CONTENT          PERU                           2               0       2
Birth       ki1114097-CONTENT          PERU                           3               0       2
Birth       ki1114097-CONTENT          PERU                           4               0       2
Birth       ki1114097-CONTENT          PERU                           5               2       2
Birth       ki1114097-CONTENT          PERU                           6               0       2
Birth       ki1114097-CONTENT          PERU                           7               0       2
Birth       ki1114097-CONTENT          PERU                           8               0       2
Birth       ki1114097-CONTENT          PERU                           9               0       2
Birth       ki1114097-CONTENT          PERU                           10              0       2
Birth       ki1114097-CONTENT          PERU                           11              0       2
Birth       ki1114097-CONTENT          PERU                           12              0       2
Birth       ki1119695-PROBIT           BELARUS                        1             826   13890
Birth       ki1119695-PROBIT           BELARUS                        2             804   13890
Birth       ki1119695-PROBIT           BELARUS                        3             948   13890
Birth       ki1119695-PROBIT           BELARUS                        4             971   13890
Birth       ki1119695-PROBIT           BELARUS                        5             950   13890
Birth       ki1119695-PROBIT           BELARUS                        6            1021   13890
Birth       ki1119695-PROBIT           BELARUS                        7            1294   13890
Birth       ki1119695-PROBIT           BELARUS                        8            1312   13890
Birth       ki1119695-PROBIT           BELARUS                        9            1324   13890
Birth       ki1119695-PROBIT           BELARUS                        10           1502   13890
Birth       ki1119695-PROBIT           BELARUS                        11           1388   13890
Birth       ki1119695-PROBIT           BELARUS                        12           1550   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1343   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2            1052   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3            1163   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             992   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5            1017   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6            1137   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7            1176   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8            1257   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9            1299   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10           1041   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11           1183   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12           1215   13875
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2485   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2            2025   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            2382   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4            1728   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5            1302   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6            1366   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7            1543   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8            2101   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9            2739   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10           2915   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11           2985   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12           3096   26667
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             359    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             409    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             479    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             434    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6             345    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7             366    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8             235    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9             151    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             45    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             26     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1              15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             12     209
6 months    ki0047075b-MAL-ED          INDIA                          1              19     236
6 months    ki0047075b-MAL-ED          INDIA                          2              18     236
6 months    ki0047075b-MAL-ED          INDIA                          3              22     236
6 months    ki0047075b-MAL-ED          INDIA                          4              15     236
6 months    ki0047075b-MAL-ED          INDIA                          5               8     236
6 months    ki0047075b-MAL-ED          INDIA                          6              19     236
6 months    ki0047075b-MAL-ED          INDIA                          7              23     236
6 months    ki0047075b-MAL-ED          INDIA                          8              22     236
6 months    ki0047075b-MAL-ED          INDIA                          9              20     236
6 months    ki0047075b-MAL-ED          INDIA                          10             26     236
6 months    ki0047075b-MAL-ED          INDIA                          11             25     236
6 months    ki0047075b-MAL-ED          INDIA                          12             19     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              20     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              19     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              17     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              22     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              20     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              18     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              18     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              24     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              16     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             21     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             24     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             17     236
6 months    ki0047075b-MAL-ED          PERU                           1              38     273
6 months    ki0047075b-MAL-ED          PERU                           2              19     273
6 months    ki0047075b-MAL-ED          PERU                           3              22     273
6 months    ki0047075b-MAL-ED          PERU                           4              20     273
6 months    ki0047075b-MAL-ED          PERU                           5              27     273
6 months    ki0047075b-MAL-ED          PERU                           6              15     273
6 months    ki0047075b-MAL-ED          PERU                           7              22     273
6 months    ki0047075b-MAL-ED          PERU                           8              16     273
6 months    ki0047075b-MAL-ED          PERU                           9              23     273
6 months    ki0047075b-MAL-ED          PERU                           10             20     273
6 months    ki0047075b-MAL-ED          PERU                           11             32     273
6 months    ki0047075b-MAL-ED          PERU                           12             19     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              38     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             26     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             35     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             30     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              34     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              31     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              44     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              35     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              37     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              39     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              17     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              20     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             29     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             42     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             25     369
6 months    ki1000108-IRC              INDIA                          1              38     407
6 months    ki1000108-IRC              INDIA                          2              28     407
6 months    ki1000108-IRC              INDIA                          3              27     407
6 months    ki1000108-IRC              INDIA                          4              21     407
6 months    ki1000108-IRC              INDIA                          5              21     407
6 months    ki1000108-IRC              INDIA                          6              37     407
6 months    ki1000108-IRC              INDIA                          7              36     407
6 months    ki1000108-IRC              INDIA                          8              44     407
6 months    ki1000108-IRC              INDIA                          9              27     407
6 months    ki1000108-IRC              INDIA                          10             37     407
6 months    ki1000108-IRC              INDIA                          11             40     407
6 months    ki1000108-IRC              INDIA                          12             51     407
6 months    ki1000109-EE               PAKISTAN                       1              91     373
6 months    ki1000109-EE               PAKISTAN                       2              66     373
6 months    ki1000109-EE               PAKISTAN                       3              42     373
6 months    ki1000109-EE               PAKISTAN                       4              16     373
6 months    ki1000109-EE               PAKISTAN                       5               0     373
6 months    ki1000109-EE               PAKISTAN                       6               0     373
6 months    ki1000109-EE               PAKISTAN                       7               0     373
6 months    ki1000109-EE               PAKISTAN                       8               0     373
6 months    ki1000109-EE               PAKISTAN                       9               0     373
6 months    ki1000109-EE               PAKISTAN                       10              4     373
6 months    ki1000109-EE               PAKISTAN                       11             71     373
6 months    ki1000109-EE               PAKISTAN                       12             83     373
6 months    ki1000109-ResPak           PAKISTAN                       1              11     239
6 months    ki1000109-ResPak           PAKISTAN                       2              10     239
6 months    ki1000109-ResPak           PAKISTAN                       3              25     239
6 months    ki1000109-ResPak           PAKISTAN                       4              24     239
6 months    ki1000109-ResPak           PAKISTAN                       5              45     239
6 months    ki1000109-ResPak           PAKISTAN                       6              41     239
6 months    ki1000109-ResPak           PAKISTAN                       7              24     239
6 months    ki1000109-ResPak           PAKISTAN                       8              34     239
6 months    ki1000109-ResPak           PAKISTAN                       9              16     239
6 months    ki1000109-ResPak           PAKISTAN                       10              4     239
6 months    ki1000109-ResPak           PAKISTAN                       11              2     239
6 months    ki1000109-ResPak           PAKISTAN                       12              3     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              87    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              83    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              74    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              66    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              87    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              96    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             122    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             162    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             174    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            149    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            118    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            118    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              24     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              20     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              63     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              62     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             27     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             34     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              52     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              49     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              50     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              43     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              39     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             42     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             50     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             51     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              35     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              67     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              41     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     4              29     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     5              32     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     6              43     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     7              36     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     8              40     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     9              77     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     10             76     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     11             61     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     12             67     604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             142    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             149    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             140    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             153    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             149    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             143    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             195    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             199    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             184    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            208    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            195    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            172    2029
6 months    ki1101329-Keneba           GAMBIA                         1             210    2089
6 months    ki1101329-Keneba           GAMBIA                         2             187    2089
6 months    ki1101329-Keneba           GAMBIA                         3             221    2089
6 months    ki1101329-Keneba           GAMBIA                         4             143    2089
6 months    ki1101329-Keneba           GAMBIA                         5             143    2089
6 months    ki1101329-Keneba           GAMBIA                         6             118    2089
6 months    ki1101329-Keneba           GAMBIA                         7              92    2089
6 months    ki1101329-Keneba           GAMBIA                         8             174    2089
6 months    ki1101329-Keneba           GAMBIA                         9             174    2089
6 months    ki1101329-Keneba           GAMBIA                         10            248    2089
6 months    ki1101329-Keneba           GAMBIA                         11            187    2089
6 months    ki1101329-Keneba           GAMBIA                         12            192    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              22     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             31     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1     564
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          6             121     564
6 months    ki1113344-GMS-Nepal        NEPAL                          7             219     564
6 months    ki1113344-GMS-Nepal        NEPAL                          8             223     564
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0     564
6 months    ki1114097-CMIN             BANGLADESH                     1              26     243
6 months    ki1114097-CMIN             BANGLADESH                     2              23     243
6 months    ki1114097-CMIN             BANGLADESH                     3              17     243
6 months    ki1114097-CMIN             BANGLADESH                     4              22     243
6 months    ki1114097-CMIN             BANGLADESH                     5              17     243
6 months    ki1114097-CMIN             BANGLADESH                     6               8     243
6 months    ki1114097-CMIN             BANGLADESH                     7              15     243
6 months    ki1114097-CMIN             BANGLADESH                     8              17     243
6 months    ki1114097-CMIN             BANGLADESH                     9              20     243
6 months    ki1114097-CMIN             BANGLADESH                     10             24     243
6 months    ki1114097-CMIN             BANGLADESH                     11             27     243
6 months    ki1114097-CMIN             BANGLADESH                     12             27     243
6 months    ki1114097-CONTENT          PERU                           1              10     215
6 months    ki1114097-CONTENT          PERU                           2              18     215
6 months    ki1114097-CONTENT          PERU                           3              30     215
6 months    ki1114097-CONTENT          PERU                           4              19     215
6 months    ki1114097-CONTENT          PERU                           5              14     215
6 months    ki1114097-CONTENT          PERU                           6              13     215
6 months    ki1114097-CONTENT          PERU                           7              28     215
6 months    ki1114097-CONTENT          PERU                           8              23     215
6 months    ki1114097-CONTENT          PERU                           9              26     215
6 months    ki1114097-CONTENT          PERU                           10             14     215
6 months    ki1114097-CONTENT          PERU                           11              9     215
6 months    ki1114097-CONTENT          PERU                           12             11     215
6 months    ki1119695-PROBIT           BELARUS                        1             976   15761
6 months    ki1119695-PROBIT           BELARUS                        2             933   15761
6 months    ki1119695-PROBIT           BELARUS                        3            1066   15761
6 months    ki1119695-PROBIT           BELARUS                        4            1097   15761
6 months    ki1119695-PROBIT           BELARUS                        5            1111   15761
6 months    ki1119695-PROBIT           BELARUS                        6            1115   15761
6 months    ki1119695-PROBIT           BELARUS                        7            1463   15761
6 months    ki1119695-PROBIT           BELARUS                        8            1473   15761
6 months    ki1119695-PROBIT           BELARUS                        9            1509   15761
6 months    ki1119695-PROBIT           BELARUS                        10           1689   15761
6 months    ki1119695-PROBIT           BELARUS                        11           1590   15761
6 months    ki1119695-PROBIT           BELARUS                        12           1739   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             824    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             620    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             767    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             657    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             642    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             672    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             674    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             784    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             780    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            626    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            795    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            828    8669
6 months    ki1148112-LCNI-5           MALAWI                         1              68     839
6 months    ki1148112-LCNI-5           MALAWI                         2              46     839
6 months    ki1148112-LCNI-5           MALAWI                         3              26     839
6 months    ki1148112-LCNI-5           MALAWI                         4              39     839
6 months    ki1148112-LCNI-5           MALAWI                         5              44     839
6 months    ki1148112-LCNI-5           MALAWI                         6              34     839
6 months    ki1148112-LCNI-5           MALAWI                         7              61     839
6 months    ki1148112-LCNI-5           MALAWI                         8              93     839
6 months    ki1148112-LCNI-5           MALAWI                         9              93     839
6 months    ki1148112-LCNI-5           MALAWI                         10            135     839
6 months    ki1148112-LCNI-5           MALAWI                         11            105     839
6 months    ki1148112-LCNI-5           MALAWI                         12             95     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            1336   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2            1153   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3            1403   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4            1174   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5            1109   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6            1204   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7            1253   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8            1515   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9            1618   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10           1660   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11           1751   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12           1577   16753
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             544    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             962    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             733    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             600    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             439    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             518    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             521    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             386    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            128    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             27     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             11     169
24 months   ki0047075b-MAL-ED          INDIA                          1              19     227
24 months   ki0047075b-MAL-ED          INDIA                          2              18     227
24 months   ki0047075b-MAL-ED          INDIA                          3              19     227
24 months   ki0047075b-MAL-ED          INDIA                          4              14     227
24 months   ki0047075b-MAL-ED          INDIA                          5               8     227
24 months   ki0047075b-MAL-ED          INDIA                          6              18     227
24 months   ki0047075b-MAL-ED          INDIA                          7              23     227
24 months   ki0047075b-MAL-ED          INDIA                          8              21     227
24 months   ki0047075b-MAL-ED          INDIA                          9              18     227
24 months   ki0047075b-MAL-ED          INDIA                          10             26     227
24 months   ki0047075b-MAL-ED          INDIA                          11             24     227
24 months   ki0047075b-MAL-ED          INDIA                          12             19     227
24 months   ki0047075b-MAL-ED          NEPAL                          1              19     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              17     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              17     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              22     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              19     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              18     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              17     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              24     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              15     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             20     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             24     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             16     228
24 months   ki0047075b-MAL-ED          PERU                           1              30     201
24 months   ki0047075b-MAL-ED          PERU                           2              17     201
24 months   ki0047075b-MAL-ED          PERU                           3              15     201
24 months   ki0047075b-MAL-ED          PERU                           4              11     201
24 months   ki0047075b-MAL-ED          PERU                           5              19     201
24 months   ki0047075b-MAL-ED          PERU                           6              11     201
24 months   ki0047075b-MAL-ED          PERU                           7              15     201
24 months   ki0047075b-MAL-ED          PERU                           8              12     201
24 months   ki0047075b-MAL-ED          PERU                           9              21     201
24 months   ki0047075b-MAL-ED          PERU                           10             14     201
24 months   ki0047075b-MAL-ED          PERU                           11             21     201
24 months   ki0047075b-MAL-ED          PERU                           12             15     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             31     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             24     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             26     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              34     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              16     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              31     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              44     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              35     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              37     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              39     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              17     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              21     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             29     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             43     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             25     371
24 months   ki1000108-IRC              INDIA                          1              38     409
24 months   ki1000108-IRC              INDIA                          2              28     409
24 months   ki1000108-IRC              INDIA                          3              27     409
24 months   ki1000108-IRC              INDIA                          4              21     409
24 months   ki1000108-IRC              INDIA                          5              22     409
24 months   ki1000108-IRC              INDIA                          6              37     409
24 months   ki1000108-IRC              INDIA                          7              36     409
24 months   ki1000108-IRC              INDIA                          8              44     409
24 months   ki1000108-IRC              INDIA                          9              27     409
24 months   ki1000108-IRC              INDIA                          10             37     409
24 months   ki1000108-IRC              INDIA                          11             40     409
24 months   ki1000108-IRC              INDIA                          12             52     409
24 months   ki1000109-EE               PAKISTAN                       1              13     167
24 months   ki1000109-EE               PAKISTAN                       2               4     167
24 months   ki1000109-EE               PAKISTAN                       3               0     167
24 months   ki1000109-EE               PAKISTAN                       4               0     167
24 months   ki1000109-EE               PAKISTAN                       5               0     167
24 months   ki1000109-EE               PAKISTAN                       6               0     167
24 months   ki1000109-EE               PAKISTAN                       7               0     167
24 months   ki1000109-EE               PAKISTAN                       8               0     167
24 months   ki1000109-EE               PAKISTAN                       9               0     167
24 months   ki1000109-EE               PAKISTAN                       10              4     167
24 months   ki1000109-EE               PAKISTAN                       11             66     167
24 months   ki1000109-EE               PAKISTAN                       12             80     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              43     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              36     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              39     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              34     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              35     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              33     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              34     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              27     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              26     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             33     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             43     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             46     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              32     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              64     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              38     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4              28     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     5              30     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     6              40     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     7              33     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     8              42     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     9              75     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     10             70     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     11             60     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     12             66     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0       6
24 months   ki1101329-Keneba           GAMBIA                         1             171    1725
24 months   ki1101329-Keneba           GAMBIA                         2             167    1725
24 months   ki1101329-Keneba           GAMBIA                         3             170    1725
24 months   ki1101329-Keneba           GAMBIA                         4             114    1725
24 months   ki1101329-Keneba           GAMBIA                         5             122    1725
24 months   ki1101329-Keneba           GAMBIA                         6              92    1725
24 months   ki1101329-Keneba           GAMBIA                         7              81    1725
24 months   ki1101329-Keneba           GAMBIA                         8             158    1725
24 months   ki1101329-Keneba           GAMBIA                         9             159    1725
24 months   ki1101329-Keneba           GAMBIA                         10            200    1725
24 months   ki1101329-Keneba           GAMBIA                         11            141    1725
24 months   ki1101329-Keneba           GAMBIA                         12            150    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          6              80     488
24 months   ki1113344-GMS-Nepal        NEPAL                          7             206     488
24 months   ki1113344-GMS-Nepal        NEPAL                          8             202     488
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0     488
24 months   ki1114097-CMIN             BANGLADESH                     1              26     242
24 months   ki1114097-CMIN             BANGLADESH                     2              24     242
24 months   ki1114097-CMIN             BANGLADESH                     3              18     242
24 months   ki1114097-CMIN             BANGLADESH                     4              22     242
24 months   ki1114097-CMIN             BANGLADESH                     5              16     242
24 months   ki1114097-CMIN             BANGLADESH                     6               8     242
24 months   ki1114097-CMIN             BANGLADESH                     7              15     242
24 months   ki1114097-CMIN             BANGLADESH                     8              18     242
24 months   ki1114097-CMIN             BANGLADESH                     9              20     242
24 months   ki1114097-CMIN             BANGLADESH                     10             24     242
24 months   ki1114097-CMIN             BANGLADESH                     11             25     242
24 months   ki1114097-CMIN             BANGLADESH                     12             26     242
24 months   ki1114097-CONTENT          PERU                           1               7     164
24 months   ki1114097-CONTENT          PERU                           2              14     164
24 months   ki1114097-CONTENT          PERU                           3              22     164
24 months   ki1114097-CONTENT          PERU                           4              15     164
24 months   ki1114097-CONTENT          PERU                           5              14     164
24 months   ki1114097-CONTENT          PERU                           6              11     164
24 months   ki1114097-CONTENT          PERU                           7              23     164
24 months   ki1114097-CONTENT          PERU                           8              14     164
24 months   ki1114097-CONTENT          PERU                           9              17     164
24 months   ki1114097-CONTENT          PERU                           10             11     164
24 months   ki1114097-CONTENT          PERU                           11              6     164
24 months   ki1114097-CONTENT          PERU                           12             10     164
24 months   ki1119695-PROBIT           BELARUS                        1             252    4035
24 months   ki1119695-PROBIT           BELARUS                        2             214    4035
24 months   ki1119695-PROBIT           BELARUS                        3             317    4035
24 months   ki1119695-PROBIT           BELARUS                        4             335    4035
24 months   ki1119695-PROBIT           BELARUS                        5             302    4035
24 months   ki1119695-PROBIT           BELARUS                        6             270    4035
24 months   ki1119695-PROBIT           BELARUS                        7             379    4035
24 months   ki1119695-PROBIT           BELARUS                        8             344    4035
24 months   ki1119695-PROBIT           BELARUS                        9             387    4035
24 months   ki1119695-PROBIT           BELARUS                        10            394    4035
24 months   ki1119695-PROBIT           BELARUS                        11            379    4035
24 months   ki1119695-PROBIT           BELARUS                        12            462    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             190    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             197    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3             228    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4             170    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5             168    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6             196    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7             120    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8             127    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              13    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             24    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             72    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12            135    1640
24 months   ki1148112-LCNI-5           MALAWI                         1              41     579
24 months   ki1148112-LCNI-5           MALAWI                         2              30     579
24 months   ki1148112-LCNI-5           MALAWI                         3              19     579
24 months   ki1148112-LCNI-5           MALAWI                         4              28     579
24 months   ki1148112-LCNI-5           MALAWI                         5              31     579
24 months   ki1148112-LCNI-5           MALAWI                         6              24     579
24 months   ki1148112-LCNI-5           MALAWI                         7              47     579
24 months   ki1148112-LCNI-5           MALAWI                         8              71     579
24 months   ki1148112-LCNI-5           MALAWI                         9              67     579
24 months   ki1148112-LCNI-5           MALAWI                         10             93     579
24 months   ki1148112-LCNI-5           MALAWI                         11             64     579
24 months   ki1148112-LCNI-5           MALAWI                         12             64     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             665    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             558    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             712    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             503    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             360    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             609    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             669    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             617    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             797    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            855    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11           1038    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12           1182    8565
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             790    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             855    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             653    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             563    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             419    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             484    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             503    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             364    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            121    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0e6390e0-82c2-4696-8e55-dff4494cd4fc/d2acc617-7e17-48d1-87f9-e51976a67175/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5924066   -0.9842872   -0.2005260
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8646345   -1.4513073   -0.2779616
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3349411   -2.6270533   -0.0428288
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.5404190   -0.3387512    1.4195893
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2344355   -1.4632692   -1.0056017
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5304982   -0.9348456   -0.1261508
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7772756   -0.9907743   -0.5637769
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0682882   -0.1519416    0.2885181
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.4377734    1.2394076    1.6361391
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3709005   -0.4362656   -0.3055355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0242396   -1.1146452   -0.9338339
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9752459   -1.3156670   -0.6348247
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2967375   -0.7129289    0.1194540
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4421878   -1.8796936   -1.0046821
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0046828   -1.3760705   -0.6332951
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9849231   -1.5588342   -0.4110119
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1295952   -1.8095077   -0.4496828
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0218592   -1.3099195   -0.7337989
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3663164   -1.7897127   -0.9429201
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1024293   -1.6547154   -0.5501433
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4873745   -1.7603492   -1.2143998
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5093232   -1.8203455   -1.1983008
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6930497   -1.0440597   -0.3420398
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1167759   -0.3172788    0.0837270
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9466444   -1.1013962   -0.7918925
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4146060   -1.8964802   -0.9327317
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.2046910   -1.6570768   -0.7523053
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.4113540   -0.2695753    1.0922832
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1433292    0.0220625    0.2645960
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7164462   -0.8028105   -0.6300820
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7014230   -1.9849819   -1.4178641
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3720326   -1.4422395   -1.3018258
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.4009538   -2.7280687   -2.0738389
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6792482    0.3616054    0.9968910
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8846597   -2.2755350   -1.4937844
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3325321   -1.8624557   -0.8026085
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7235789   -2.4158665   -1.0312914
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.8073991   -2.3502701   -1.2645280
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.4413276   -4.0401225   -2.8425327
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.3366342   -2.7359013   -1.9373671
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.4472112   -1.7265213   -1.1679012
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.7270079   -3.1731806   -2.2808353
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3026920   -1.6541570   -0.9512270
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4144142   -1.5840502   -1.2447782
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.2439068   -2.5588293   -1.9289842
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -1.2727497   -1.6897348   -0.8557645
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1796015   -0.0711701    0.4303731
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.0850481   -2.3190180   -1.8510782
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8164912   -2.0594527   -1.5735297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8768793   -1.9616294   -1.7921292


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1729576   -1.2009629   -1.1449523
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679450   -0.8935071   -0.8423828
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3355900   -1.3586765   -1.3125035
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5774356   -1.6272400   -1.5276311
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6055701   -1.6625562   -1.5485840
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0195844   -2.0472504   -1.9919183


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5256886   -0.9104136   -0.1409637
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0181552   -0.5866306    0.5503201
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1793411   -1.0361687    1.3948509
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8484603   -1.6948023   -0.0021183
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1969863   -0.3884993   -0.0054732
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4005215   -0.7839275   -0.0171155
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1078265   -0.3140034    0.0983504
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0374846   -0.2474628    0.1724936
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1108288   -0.2148458   -0.0068119
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1293719   -0.1919470   -0.0667968
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1487180   -0.2358095   -0.0616265
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2302452   -0.5607737    0.1002834
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3477582   -0.0641093    0.7596257
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2308178   -0.1857191    0.6473546
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4436235    0.0866679    0.8005790
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3431721   -0.8884737    0.2021294
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0656779   -0.5938606    0.7252164
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3468857   -0.6396316   -0.0541398
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0571344   -0.4545642    0.3402955
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1319769   -0.6601615    0.3962078
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0855182   -0.1963117    0.3673480
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1019411   -0.1932544    0.3971366
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3986418   -0.7331111   -0.0641725
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4266630   -0.6183514   -0.2349746
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0425074   -0.1054459    0.1904608
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1472948   -0.6065024    0.3119128
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.5797466   -1.0225415   -0.1369516
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.7252757   -1.3958127   -0.0547386
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0363306   -0.1383627    0.0657014
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1514988   -0.2332999   -0.0696976
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0412323   -0.2275372    0.3100018
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0364426   -0.0291577    0.1020429
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.4220387    0.1047812    0.7392961
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6721476   -1.0178071   -0.3264881
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0001861   -0.3824002    0.3820280
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0206681   -0.4887294    0.5300656
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0308987   -0.6962069    0.6344095
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1582184   -0.3804286    0.6968654
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7961641    0.2240863    1.3682418
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2222337   -0.6083258    0.1638584
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.3515663   -0.6220879   -0.0810447
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.5079501    0.0793972    0.9365029
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2997301   -0.6372459    0.0377856
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1630213   -0.3243926   -0.0016500
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.2670436   -0.5883073    0.0542200
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.5765302    0.1536439    0.9994164
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3110063   -0.6389245    0.0169119
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4794780    0.2481545    0.7108015
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0696573   -0.3134349    0.1741202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1427050   -0.2228864   -0.0625237

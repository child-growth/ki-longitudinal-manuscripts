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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2109   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2            1736   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            2041   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4            1475   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5            1077   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6            1120   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7            1262   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8            1759   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9            2252   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10           2439   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11           2541   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12           2644   22455
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            1340   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2            1159   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3            1411   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4            1178   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5            1113   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6            1206   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7            1259   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8            1520   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9            1620   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10           1665   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11           1759   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12           1581   16811
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             666    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             561    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             718    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             505    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             367    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             613    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             671    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             620    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             801    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            873    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11           1041    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12           1196    8632
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9f92d5a2-158c-4c06-8d09-233066781bfb/f9e58446-3330-4b70-b295-51f90f2bf5a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5844803   -0.9659995   -0.2029611
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0240481   -1.4655777   -0.5825186
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.9681104   -2.7556168   -1.1806040
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.5809665   -0.3407119    1.5026449
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2344355   -1.4632692   -1.0056017
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5132205   -0.9162893   -0.1101518
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7915534   -1.0520943   -0.5310125
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0506036   -0.3149972    0.2137901
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3182245    1.1179285    1.5185204
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3643558   -0.4272529   -0.3014587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4597355   -1.5213925   -1.3980786
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9000916   -1.2445998   -0.5555834
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1985463   -0.7115823    0.3144897
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6301400   -2.1107174   -1.1495627
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0132658   -1.4448283   -0.5817033
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6771760   -2.0344920   -1.3198600
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9120124   -1.7357504   -0.0882744
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0198454   -1.3177522   -0.7219386
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3861178   -1.8935345   -0.8787010
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2244331   -1.6799969   -0.7688693
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4873745   -1.7603492   -1.2143998
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1610477   -1.4800482   -0.8420473
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8347425   -1.1520124   -0.5174726
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1219191   -0.3239504    0.0801123
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9902835   -1.1408503   -0.8397166
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.3695379   -1.7449134   -0.9941624
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.4309903   -2.0128989   -0.8490816
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.3757015   -0.3314163    1.0828192
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1658369    0.0314675    0.3002063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7149563   -0.8011809   -0.6287317
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8200579   -2.1018408   -1.5382749
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3300489   -1.3992632   -1.2608346
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.2628054   -2.5965525   -1.9290582
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2867055   -0.3464189    0.9198298
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.9787176   -2.5840656   -1.3733695
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.4956419   -2.0178547   -0.9734290
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.9736546   -2.5185569   -1.4287523
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.2959617   -1.9617943   -0.6301291
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.9928087   -3.5892130   -2.3964043
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4472173   -2.7336884   -2.1607462
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.4619000   -1.7407588   -1.1830412
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.6378127   -3.1808223   -2.0948030
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4476846   -1.8115300   -1.0838391
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4130861   -1.5821988   -1.2439735
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.3934164   -2.6602825   -2.1265504
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.8476587   -1.6138413   -0.0814762
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1746273   -0.0809756    0.4302301
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.4253496   -2.6152976   -2.2354017
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8498265   -2.0540018   -1.6456513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8693338   -1.9555826   -1.7830849


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5336150   -0.9082835   -0.1589465
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1412584   -0.2884904    0.5710073
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8125104    0.0537251    1.5712958
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8890077   -1.7772842   -0.0007313
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1969863   -0.3884993   -0.0054732
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4177992   -0.8000047   -0.0355937
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0935486   -0.3409260    0.1538288
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0814072   -0.1691310    0.3319454
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0087201   -0.1352371    0.1526773
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1359166   -0.1963955   -0.0754377
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1296793   -0.1888982   -0.0704603
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3049015   -0.6388424    0.0290394
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2461221   -0.2607792    0.7530234
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.4186146   -0.0349324    0.8721615
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4516839    0.0423316    0.8610361
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.3535099    0.0033891    0.7036307
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1513078   -0.9540852    0.6514696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3488995   -0.6508769   -0.0469221
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0373330   -0.5122429    0.4375768
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0099731   -0.4476973    0.4277511
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0855182   -0.1963117    0.3673480
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2463343   -0.5478299    0.0551613
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2569490   -0.5607468    0.0468489
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4215198   -0.6146967   -0.2283430
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0861465   -0.0576140    0.2299071
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1923629   -0.5531746    0.1684488
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.3534473   -0.9163776    0.2094829
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.6896232   -1.3855537    0.0063074
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0588383   -0.1656860    0.0480094
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1529887   -0.2346583   -0.0713191
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1598672   -0.1078484    0.4275827
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0169557   -0.0483159    0.0822273
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2844091   -0.0391485    0.6079668
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2805911   -0.8944053    0.3332231
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0925281   -0.4823366    0.6673929
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1880542   -0.3068535    0.6829618
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2211836   -0.3070661    0.7494333
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3490978   -0.9988937    0.3006981
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3472479   -0.2216470    0.9161429
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1116506   -0.3977958    0.1744945
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.3368775   -0.6070868   -0.0666682
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.4187548   -0.0931811    0.9306906
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1547376   -0.5034874    0.1940123
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1643494   -0.3252182   -0.0034807
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.1175340   -0.3970258    0.1619578
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1514392   -0.5796904    0.8825689
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3060321   -0.6350503    0.0229862
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.8197795    0.6272577    1.0123013
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0363220   -0.2413098    0.1686658
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1443143   -0.2259765   -0.0626521

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
Birth       ki1101329-Keneba           GAMBIA                         1               3      13
Birth       ki1101329-Keneba           GAMBIA                         2               0      13
Birth       ki1101329-Keneba           GAMBIA                         3               3      13
Birth       ki1101329-Keneba           GAMBIA                         4               0      13
Birth       ki1101329-Keneba           GAMBIA                         5               0      13
Birth       ki1101329-Keneba           GAMBIA                         6               0      13
Birth       ki1101329-Keneba           GAMBIA                         7               1      13
Birth       ki1101329-Keneba           GAMBIA                         8               2      13
Birth       ki1101329-Keneba           GAMBIA                         9               2      13
Birth       ki1101329-Keneba           GAMBIA                         10              1      13
Birth       ki1101329-Keneba           GAMBIA                         11              0      13
Birth       ki1101329-Keneba           GAMBIA                         12              1      13
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/dd1333d3-a020-464e-b9d6-9c1427671df0/b5cdaf53-2f83-4cda-bf3a-a38a1bfbdaf3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dd1333d3-a020-464e-b9d6-9c1427671df0/b5cdaf53-2f83-4cda-bf3a-a38a1bfbdaf3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dd1333d3-a020-464e-b9d6-9c1427671df0/b5cdaf53-2f83-4cda-bf3a-a38a1bfbdaf3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1075000   -1.4978140   -0.7171860
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.3482609   -1.7601227   -0.9363990
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.2345833   -1.6339311   -0.8352355
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.5626316   -0.9338618   -0.1914013
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.4155556   -1.9277899   -0.9033212
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.9850000   -1.6643530   -0.3056470
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.1464286   -1.7919695   -0.5008876
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -1.2623077   -1.6681956   -0.8564198
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.1161111   -1.6499711   -0.5822511
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.2219048   -1.6052781   -0.8385314
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.8020000   -1.3165147   -0.2874853
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.9916000   -1.3962342   -0.5869658
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0476667   -1.3885098   -0.7068235
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -1.0205556   -1.4494133   -0.5916978
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -1.1055000   -1.4587186   -0.7522814
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                -0.6600000   -1.2168652   -0.1031348
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                -0.7268182   -1.1317595   -0.3218768
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                -0.5654545   -1.1606928    0.0297837
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.8884211   -1.3124533   -0.4643888
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.7825000   -1.1500122   -0.4149878
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.5463158   -0.7856721   -0.3069594
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                -0.6423810   -0.9048824   -0.3798795
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -1.2125000   -1.5501638   -0.8748362
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                -1.0321429   -1.5719969   -0.4922888
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0740000   -1.4137403   -0.7342597
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4187500   -1.8520366   -0.9854634
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.0400000   -1.6642136   -0.4157864
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -1.1012500   -1.8872554   -0.3152446
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.7100000   -1.2909595   -0.1290405
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -1.0118182   -1.7598448   -0.2637916
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.7235714   -1.2062319   -0.2409109
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.8183333   -1.1902467   -0.4464200
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -3.3760000   -4.7426083   -2.0093917
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -1.6083333   -2.2352373   -0.9814294
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -1.0400000   -1.7700079   -0.3099921
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.8830000   -1.7690404    0.0030404
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.7685714   -1.2073155   -0.3298273
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.3334615   -1.0314327    0.3645096
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.0276923   -0.6276724    0.5722878
Birth       ki1000108-IRC              INDIA                          4                    NA                -0.0933333   -0.7295115    0.5428448
Birth       ki1000108-IRC              INDIA                          5                    NA                 0.5545455   -0.2742674    1.3833583
Birth       ki1000108-IRC              INDIA                          6                    NA                -0.0935294   -0.7447207    0.5576619
Birth       ki1000108-IRC              INDIA                          7                    NA                -0.1402857   -0.6755232    0.3949518
Birth       ki1000108-IRC              INDIA                          8                    NA                -0.0405263   -0.5173421    0.4362895
Birth       ki1000108-IRC              INDIA                          9                    NA                -0.5456000   -1.1368551    0.0456551
Birth       ki1000108-IRC              INDIA                          10                   NA                -0.7465789   -1.1805916   -0.3125663
Birth       ki1000108-IRC              INDIA                          11                   NA                -0.4523077   -0.8407487   -0.0638667
Birth       ki1000108-IRC              INDIA                          12                   NA                -0.4936735   -0.9566175   -0.0307294
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.6393023   -1.8365244   -1.4420802
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.5100000   -1.7167915   -1.3032085
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -1.5530435   -1.8045585   -1.3015284
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -1.3483871   -1.5519512   -1.1448230
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -1.3703409   -1.6699341   -1.0707477
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.3370192   -1.5038694   -1.1701691
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -1.4055000   -1.7039607   -1.1070393
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -1.6045139   -1.8410670   -1.3679607
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -1.2289796   -1.4465868   -1.0113724
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -1.4094366   -1.6567648   -1.1621084
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.3696639   -1.4698686   -1.2694591
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -1.4833333   -1.6917244   -1.2749422
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.2612857   -1.5323779   -0.9901935
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.9750000   -1.2184446   -0.7315554
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.7984746   -1.0745968   -0.5223524
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.8974510   -1.2468585   -0.5480435
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.5292553   -0.9189119   -0.1395988
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -1.0555435   -1.3008071   -0.8102798
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.8352500   -1.1534627   -0.5170373
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.9680000   -1.2772373   -0.6587627
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.9148936   -1.2444803   -0.5853069
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.8452083   -1.1881350   -0.5022817
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -1.0559615   -1.3300333   -0.7818898
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.8894231   -1.1724518   -0.6063944
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9173333   -1.1956302   -0.6390365
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.9146296   -1.1053062   -0.7239530
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.9992593   -1.2544432   -0.7440753
Birth       ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -1.1519048   -1.5333962   -0.7704133
Birth       ki1017093b-PROVIDE         BANGLADESH                     5                    NA                -0.9795833   -1.3185130   -0.6406537
Birth       ki1017093b-PROVIDE         BANGLADESH                     6                    NA                -0.6522222   -0.8805454   -0.4238991
Birth       ki1017093b-PROVIDE         BANGLADESH                     7                    NA                -0.8832143   -1.1615412   -0.6048874
Birth       ki1017093b-PROVIDE         BANGLADESH                     8                    NA                -0.9476087   -1.2143115   -0.6809059
Birth       ki1017093b-PROVIDE         BANGLADESH                     9                    NA                -1.1220000   -1.3478547   -0.8961453
Birth       ki1017093b-PROVIDE         BANGLADESH                     10                   NA                -0.8014667   -1.0132821   -0.5896512
Birth       ki1017093b-PROVIDE         BANGLADESH                     11                   NA                -0.8392593   -1.0800644   -0.5984541
Birth       ki1017093b-PROVIDE         BANGLADESH                     12                   NA                -0.5930909   -0.8239036   -0.3622782
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.4009746    1.1602610    1.6416881
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                 1.2182338    0.9962848    1.4401828
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                 1.3450897    1.1431177    1.5470617
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                 1.4139032    1.2252789    1.6025275
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                 1.4408842    1.2429671    1.6388013
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                 1.2731685    1.1068494    1.4394875
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                 1.3936167    1.1907676    1.5964658
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                 1.3231021    1.1634532    1.4827511
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                 1.2797168    1.0562825    1.5031510
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                 1.3364381    1.1748569    1.4980192
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                 1.3044669    1.1703645    1.4385693
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                 1.2427613    1.0951723    1.3903503
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7218094   -0.7874452   -0.6561736
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.7780513   -0.8526144   -0.7034882
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.6122270   -0.6828070   -0.5416470
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.6057560   -0.6827795   -0.5287326
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.5284857   -0.6094940   -0.4474775
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.4708795   -0.5491777   -0.3925813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.4170408   -0.4919006   -0.3421811
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.3361734   -0.4004855   -0.2718614
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.3435258   -0.4027402   -0.2843113
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.3694236   -0.4400642   -0.2987830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.4068301   -0.4762219   -0.3374383
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.4464938   -0.5134358   -0.3795519
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2811509   -1.3560264   -1.2062754
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.1807309   -1.2575198   -1.1039420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.0886692   -1.1582424   -1.0190960
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.0270428   -1.1009835   -0.9531022
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.0382412   -1.1381545   -0.9383278
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.0214348   -1.1230379   -0.9198318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.9768308   -1.0693204   -0.8843413
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.1444503   -1.2241642   -1.0647363
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.0597919   -1.1311861   -0.9883977
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.2320137   -1.3010031   -1.1630243
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.3727638   -1.4354296   -1.3100981
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.3197933   -1.3789349   -1.2606517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2373148   -1.6119330   -0.8626966
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.5978333   -1.8857686   -1.3098980
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.4639130   -1.9047709   -1.0230551
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.7737879   -1.1164989   -0.4310768
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.2292857   -1.6361577   -0.8224137
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.0765000   -1.5512361   -0.6017639
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.3300000   -1.7930759   -0.8669241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -1.3771014   -1.8032841   -0.9509188
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.0987121   -1.4243189   -0.7731053
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.3438636   -1.8106281   -0.8770992
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -1.0893750   -1.4522165   -0.7265335
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.8554487   -1.1456601   -0.5652373
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1356667   -0.5022068    0.7735401
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.2080435   -0.2312326    0.6473195
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.2631250   -0.2622081    0.7884581
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.3528788   -0.1785222    0.8842798
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.1335714   -0.2994344    0.5665773
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.1612500   -0.8236862    0.5011862
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.3806250   -1.0502471    0.2889971
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.0584375   -0.5426228    0.4257478
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                -0.2224444   -0.5910509    0.1461620
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.2035833   -0.2001813    0.6073480
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0657937   -0.3226838    0.4542711
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.2068056   -0.2731261    0.6867372
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.3868421   -1.7310702   -1.0426140
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.0131481   -1.2516205   -0.7746757
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9687121   -1.3425190   -0.5949052
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -1.1227778   -1.6738940   -0.5716616
6 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -1.2881250   -1.6637886   -0.9124614
6 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -1.1823684   -1.4719459   -0.8927910
6 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -1.4447101   -1.8397061   -1.0497142
6 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -1.3291667   -1.7179213   -0.9404121
6 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -1.0873333   -1.6093727   -0.5652940
6 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -1.2277564   -1.6631926   -0.7923203
6 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -1.3103333   -1.6606579   -0.9600087
6 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -1.1303509   -1.5257537   -0.7349481
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7967500   -1.1468491   -0.4466509
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.9513158   -1.3697371   -0.5328944
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.8588235   -1.3538991   -0.3637480
6 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.4588636   -0.7799422   -0.1377851
6 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.6152500   -1.0544123   -0.1760877
6 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.4205556   -0.7623902   -0.0787209
6 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.6411111   -1.0518431   -0.2303792
6 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.4032639   -0.6349113   -0.1716164
6 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.4632292   -0.9691843    0.0427259
6 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.4580952   -0.7661147   -0.1500758
6 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.3377778   -0.7143603    0.0388047
6 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.4396078   -0.8625293   -0.0166864
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.3212719   -1.6197014   -1.0228425
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.3615789   -1.7051323   -1.0180256
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.4850000   -1.8451263   -1.1248737
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.9525000   -1.4750498   -0.4299502
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                -1.2005556   -1.4936362   -0.9074749
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                -1.2740000   -1.7409074   -0.8070926
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                -1.3257576   -1.6064973   -1.0450179
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                -1.2204167   -1.6468546   -0.7939788
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                -1.3032609   -1.6637326   -0.9427891
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                -1.3025000   -1.6820279   -0.9229721
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                -1.7921875   -2.1084804   -1.4758946
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                -1.1146491   -1.5195085   -0.7097898
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2214474   -1.5692421   -0.8736526
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.1131884   -1.3612387   -0.8651381
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.4816667   -1.0382176    0.0748843
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.5861538   -1.0899217   -0.0823860
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.7361538   -1.3705694   -0.1017383
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.8222222   -1.1241351   -0.5203093
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -1.1309091   -1.5390030   -0.7228151
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -0.7183333   -1.3907957   -0.0458710
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.9346296   -1.3129320   -0.5563273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.1329487   -1.5436680   -0.7222294
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -1.3568750   -1.8547537   -0.8589963
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -1.3946190   -1.7338063   -1.0554318
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2003333   -1.6602977   -0.7403690
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.5441667   -1.8298363   -1.2584970
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.5183333   -2.0073885   -1.0292782
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -1.8794444   -2.3469016   -1.4119872
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -1.2846875   -1.6834270   -0.8859480
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -1.0100000   -1.2854035   -0.7345965
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -1.1484783   -1.6023505   -0.6946060
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -1.3291667   -1.8549067   -0.8034266
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -1.2641270   -1.6260420   -0.9022120
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -1.6507576   -2.0619183   -1.2395968
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -1.3998765   -1.7983511   -1.0014020
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -1.3577778   -1.7584904   -0.9570652
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3496569   -1.7263832   -0.9729305
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.7626042   -2.5767731   -0.9484352
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.2667204   -1.5596886   -0.9737523
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -1.0025000   -1.4927092   -0.5122908
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -1.7051429   -2.1419919   -1.2682938
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -1.6445946   -2.1544753   -1.1347139
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -1.9226496   -2.3571859   -1.4881133
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -1.3650980   -1.8870195   -0.8431765
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -1.1757500   -1.7412476   -0.6102524
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -1.2758621   -1.7989551   -0.7527691
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.9865873   -1.3091868   -0.6639878
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -1.8845333   -2.4202243   -1.3488424
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.4212719   -1.8575596   -0.9849842
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.7706548   -2.3061388   -1.2351707
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.2537037   -1.6125039   -0.8949035
6 months    ki1000108-IRC              INDIA                          4                    NA                -1.8561111   -2.3723548   -1.3398674
6 months    ki1000108-IRC              INDIA                          5                    NA                -2.0128571   -2.5063632   -1.5193510
6 months    ki1000108-IRC              INDIA                          6                    NA                -0.6421622   -1.1282337   -0.1560906
6 months    ki1000108-IRC              INDIA                          7                    NA                -1.0190278   -1.4394261   -0.5986295
6 months    ki1000108-IRC              INDIA                          8                    NA                -0.9026515   -1.2324970   -0.5728060
6 months    ki1000108-IRC              INDIA                          9                    NA                -0.7090741   -1.4787128    0.0605647
6 months    ki1000108-IRC              INDIA                          10                   NA                -0.9471171   -1.2199169   -0.6743173
6 months    ki1000108-IRC              INDIA                          11                   NA                -1.2695000   -1.6736640   -0.8653360
6 months    ki1000108-IRC              INDIA                          12                   NA                -1.5409477   -1.8414589   -1.2404365
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.5625287   -1.8560963   -1.2689612
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.2690361   -1.6476509   -0.8904214
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -1.2456757   -1.7122449   -0.7791065
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -1.2853030   -1.4340525   -1.1365536
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -1.3751724   -1.5974111   -1.1529337
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.4996875   -1.6918585   -1.3075165
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -1.5963115   -1.8876895   -1.3049335
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -1.4393827   -1.6938179   -1.1849475
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -1.1744253   -1.3557714   -0.9930792
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -1.4830201   -1.6313712   -1.3346691
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.4922881   -1.6035794   -1.3809969
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -1.3699153   -1.5865536   -1.1532770
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.5317628   -1.7924210   -1.2711046
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -1.3498639   -1.6506103   -1.0491176
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -1.3353667   -1.6444563   -1.0262770
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -1.3801984   -1.6341207   -1.1262762
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -1.2755159   -1.5657792   -0.9852526
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -1.6629070   -1.9914489   -1.3343650
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -1.3558120   -1.6850844   -1.0265395
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -1.3910952   -1.7233241   -1.0588664
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.5302778   -1.8319498   -1.2286058
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -1.3078968   -1.6469344   -0.9688593
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -1.6084500   -1.8983744   -1.3185256
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -1.1561765   -1.4657946   -0.8465583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9061905   -1.1964147   -0.6159663
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.1396269   -1.3027309   -0.9765228
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.1517073   -1.4015270   -0.9018876
6 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.8627586   -1.1721093   -0.5534079
6 months    ki1017093b-PROVIDE         BANGLADESH                     5                    NA                -1.3306250   -1.6433120   -1.0179380
6 months    ki1017093b-PROVIDE         BANGLADESH                     6                    NA                -0.6759302   -1.0135072   -0.3383533
6 months    ki1017093b-PROVIDE         BANGLADESH                     7                    NA                -1.0733333   -1.3518206   -0.7948461
6 months    ki1017093b-PROVIDE         BANGLADESH                     8                    NA                -0.8297500   -1.0790064   -0.5804936
6 months    ki1017093b-PROVIDE         BANGLADESH                     9                    NA                -1.2683117   -1.5020068   -1.0346166
6 months    ki1017093b-PROVIDE         BANGLADESH                     10                   NA                -1.1015789   -1.3003400   -0.9028179
6 months    ki1017093b-PROVIDE         BANGLADESH                     11                   NA                -1.2412295   -1.4903056   -0.9921534
6 months    ki1017093b-PROVIDE         BANGLADESH                     12                   NA                -1.1716418   -1.4053471   -0.9379364
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4046244   -0.6108572   -0.1983916
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1205257   -0.3194391    0.0783877
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.5345595   -0.7248290   -0.3442900
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.5522767   -0.7379448   -0.3666086
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.6024329   -0.7875637   -0.4173021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.7828671   -0.9573557   -0.6083786
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.7150342   -0.8549975   -0.5750709
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.6557286   -0.8133002   -0.4981571
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.6127083   -0.7611551   -0.4642616
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.6161058   -0.7643714   -0.4678402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.5110000   -0.6606990   -0.3613010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.3239438   -0.4820099   -0.1658777
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.8385889   -0.9937209   -0.6834569
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.8546699   -1.0097986   -0.6995412
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.9475682   -1.0885447   -0.8065916
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.8980061   -1.0578948   -0.7381174
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                -0.8897366   -1.0669461   -0.7125271
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                -0.9691328   -1.2070245   -0.7312411
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                -1.0753496   -1.3230908   -0.8276085
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                -0.9282232   -1.0746717   -0.7817747
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                -1.0267854   -1.1797365   -0.8738344
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                -0.9238817   -1.0671444   -0.7806191
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                -0.8197353   -0.9737238   -0.6657468
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                -0.7910460   -0.9457405   -0.6363515
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -1.9027976   -2.2451428   -1.5604524
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -1.1658000   -1.5503560   -0.7812440
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -1.5577778   -1.9532341   -1.1623214
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -1.6224194   -2.0366891   -1.2081497
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                -1.7951075   -2.1497472   -1.4404679
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                -1.8132576   -2.2133429   -1.4131722
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                -1.3140476   -1.6838173   -0.9442779
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                -1.7482143   -2.0375674   -1.4588612
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                -1.4918750   -1.8818517   -1.1018983
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                -1.2512644   -1.5764956   -0.9260332
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                -1.5657639   -1.8906873   -1.2408405
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                -1.5124194   -1.8564592   -1.1683795
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.9451923   -2.3740428   -1.5163418
6 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -1.4256522   -1.7453482   -1.1059561
6 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -1.3485294   -1.7165298   -0.9805291
6 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -1.3444697   -1.7438101   -0.9451293
6 months    ki1114097-CMIN             BANGLADESH                     5                    NA                -1.1980392   -1.6348404   -0.7612380
6 months    ki1114097-CMIN             BANGLADESH                     6                    NA                -2.1895833   -3.1802181   -1.1989486
6 months    ki1114097-CMIN             BANGLADESH                     7                    NA                -1.7203333   -2.2055735   -1.2350932
6 months    ki1114097-CMIN             BANGLADESH                     8                    NA                -2.7958824   -3.3472038   -2.2445609
6 months    ki1114097-CMIN             BANGLADESH                     9                    NA                -2.0063333   -2.4401306   -1.5725361
6 months    ki1114097-CMIN             BANGLADESH                     10                   NA                -1.6766667   -2.1275254   -1.2258079
6 months    ki1114097-CMIN             BANGLADESH                     11                   NA                -1.8183333   -2.2585141   -1.3781526
6 months    ki1114097-CMIN             BANGLADESH                     12                   NA                -2.1137037   -2.4469514   -1.7804560
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0946000   -0.5838715    0.7730715
6 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0520278   -0.5948786    0.4908231
6 months    ki1114097-CONTENT          PERU                           3                    NA                -0.2259333   -0.7592804    0.3074137
6 months    ki1114097-CONTENT          PERU                           4                    NA                -0.9620965   -1.4964697   -0.4277233
6 months    ki1114097-CONTENT          PERU                           5                    NA                 0.0019286   -0.8522145    0.8560716
6 months    ki1114097-CONTENT          PERU                           6                    NA                -0.8561154   -1.4762710   -0.2359598
6 months    ki1114097-CONTENT          PERU                           7                    NA                -0.1981726   -0.5971784    0.2008332
6 months    ki1114097-CONTENT          PERU                           8                    NA                -0.5101957   -1.0297946    0.0094033
6 months    ki1114097-CONTENT          PERU                           9                    NA                -0.3675192   -0.8221770    0.0871385
6 months    ki1114097-CONTENT          PERU                           10                   NA                -0.2781429   -0.8482285    0.2919428
6 months    ki1114097-CONTENT          PERU                           11                   NA                -0.6056111   -1.4586632    0.2474409
6 months    ki1114097-CONTENT          PERU                           12                   NA                 0.4400909   -0.1918045    1.0719864
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0433658   -0.2174365    0.1307050
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                -0.1503859   -0.2957202   -0.0050515
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.1890572    0.0675274    0.3105870
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.2028168    0.0678902    0.3377433
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.2182988    0.0903248    0.3462728
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.1906278    0.0535183    0.3277373
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.1691900    0.0570572    0.2813228
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.1909301    0.0504295    0.3314307
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.1361034   -0.0117751    0.2839818
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.0848105   -0.0526722    0.2222933
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.0367925   -0.0833604    0.1569453
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                 0.0310782   -0.1014622    0.1636186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9197694   -1.0036468   -0.8358920
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8786452   -0.9732964   -0.7839939
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.9712777   -1.0665811   -0.8759743
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.9093455   -0.9989598   -0.8197312
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.9398287   -1.0302581   -0.8493992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.9079464   -1.0020886   -0.8138043
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.9462463   -1.0357650   -0.8567275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.8072959   -0.8885578   -0.7260340
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.7768910   -0.8556784   -0.6981037
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.8422444   -0.9382348   -0.7462541
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.8421195   -0.9249848   -0.7592542
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.7152778   -0.8014003   -0.6291552
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8242647   -2.0521410   -1.5963884
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                -1.5930435   -1.7807608   -1.4053262
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                -1.7473077   -2.1949809   -1.2996345
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                -1.7405128   -1.9775766   -1.5034490
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                -1.5840909   -1.9695204   -1.1986614
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                -1.8888235   -2.3468608   -1.4307862
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                -1.5611475   -1.8043776   -1.3179175
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                -1.5663441   -1.7378106   -1.3948776
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                -1.6209677   -1.8090815   -1.4328539
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                -1.7822222   -1.9816626   -1.5827819
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                -1.6419048   -1.8227120   -1.4610975
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                -1.5125263   -1.7325936   -1.2924590
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2929416   -1.3613685   -1.2245147
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3234605   -1.3892994   -1.2576217
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2932288   -1.3590348   -1.2274228
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.2727342   -1.3420848   -1.2033837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.3257890   -1.3994533   -1.2521247
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.3069518   -1.3763099   -1.2375938
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.2935515   -1.3601147   -1.2269883
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.3605017   -1.4194824   -1.3015209
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.3049382   -1.3654226   -1.2444538
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.3834940   -1.4457103   -1.3212777
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.4382353   -1.4936091   -1.3828615
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.3703488   -1.4270109   -1.3136866
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.8471429   -2.2533343   -1.4409514
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -2.5797059   -3.0494451   -2.1099667
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -2.2223684   -2.5690839   -1.8756529
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.6512500   -2.0401501   -1.2623499
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -2.1913158   -2.5994969   -1.7831347
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.8171429   -2.4966265   -1.1376592
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.9111111   -2.3345905   -1.4876317
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -2.0706818   -2.5750672   -1.5662964
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.9941667   -2.3269237   -1.6614096
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.8982500   -2.3763238   -1.4201762
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -1.9559091   -2.3447941   -1.5670240
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -1.6622222   -1.9434199   -1.3810246
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1260000   -0.8881517    0.6361517
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.3287500   -0.7795469    0.1220469
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.2700000   -0.4156715    0.9556715
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.7285000    0.4642712    0.9927288
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.4123333    0.0256562    0.7990105
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.1383333   -1.2209325    0.9442659
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.2340000   -1.1177524    0.6497524
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.5384615   -1.1004217    0.0234986
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.0514815   -0.3088729    0.4118359
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.0907143   -0.4021748    0.5836034
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0375000   -0.4639778    0.5389778
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                -0.1877273   -0.7512819    0.3758273
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.2936842   -2.7071683   -1.8802001
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -1.7744444   -2.0829782   -1.4659107
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.5768421   -2.0127390   -1.1409452
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -1.9700000   -2.4951919   -1.4448081
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -1.9143750   -2.4148141   -1.4139359
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.6669444   -2.0062057   -1.3276832
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -1.8930435   -2.3426234   -1.4434635
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -1.9761905   -2.4233015   -1.5290795
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -1.9433333   -2.3977207   -1.4889459
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -2.0001923   -2.4246292   -1.5757554
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -1.8733333   -2.2306815   -1.5159852
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -1.7102632   -2.0789386   -1.3415877
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.6389474   -1.9459239   -1.3319708
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.8352941   -2.2239713   -1.4466169
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.9002941   -2.3613333   -1.4392550
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -1.2295455   -1.5345452   -0.9245457
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -1.4534211   -1.9890686   -0.9177735
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -1.0455556   -1.3683577   -0.7227534
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -1.1967647   -1.5427260   -0.8508034
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -1.0014583   -1.2769173   -0.7259994
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -1.0103333   -1.5501306   -0.4705361
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -1.1517500   -1.4771108   -0.8263892
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -1.2087500   -1.6424652   -0.7750348
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -1.2121875   -1.6716939   -0.7526811
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.9246667   -2.2890582   -1.5602752
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.8558824   -2.1280088   -1.5837559
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.6980000   -2.1137972   -1.2822028
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                -1.9113636   -2.4159742   -1.4067531
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                -1.8289474   -2.3214547   -1.3364400
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                -1.3959091   -2.1987353   -0.5930829
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -1.7676667   -1.9727053   -1.5626281
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                -1.7008333   -2.1183059   -1.2833607
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                -1.3964286   -1.7171583   -1.0756988
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                -1.4292857   -1.7772710   -1.0813004
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                -1.9369048   -2.2841018   -1.5897077
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                -1.9883333   -2.3135444   -1.6631223
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7997059   -2.1903365   -1.4090753
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -2.0111364   -2.4580033   -1.5642694
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.3135714   -1.9152221   -0.7119208
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.9887500   -1.5061223   -0.4713777
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -1.2166667   -1.7704049   -0.6629284
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -1.4465625   -1.9586134   -0.9345116
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -1.6550000   -2.0873617   -1.2226383
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.1343750   -1.7559793   -0.5127707
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -1.4557895   -1.7735255   -1.1380535
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.7214000   -2.1230590   -1.3197410
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -1.9332609   -2.3845438   -1.4819780
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -1.8846774   -2.2123388   -1.5570161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.4930000   -3.1255975   -1.8604025
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -2.9004545   -3.3170555   -2.4838536
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.8622222   -3.3806035   -2.3438409
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -3.2291667   -4.0348104   -2.4235229
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -2.5661111   -2.9729543   -2.1592679
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -2.4072222   -2.7503431   -2.0641013
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -2.5400000   -3.0269230   -2.0530770
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -2.4595455   -2.9980014   -1.9210895
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -2.4500000   -2.8518768   -2.0481232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -2.8346667   -3.2480273   -2.4213060
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -2.6272917   -3.0259171   -2.2286662
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -2.6651923   -3.0234807   -2.3069039
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.3015686   -2.6232870   -1.9798502
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.6855208   -3.1635567   -2.2074849
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.6981720   -2.9945398   -2.4018043
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -2.5864394   -2.9162085   -2.2566703
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -2.7288095   -3.0112682   -2.4463508
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -2.5374324   -2.8765072   -2.1983576
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -2.5146154   -2.8136324   -2.2155983
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -2.5712745   -3.0535370   -2.0890120
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -2.2336508   -2.5492453   -1.9180563
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -2.4641379   -2.8426853   -2.0855906
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -2.5000388   -2.7928116   -2.2072660
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -2.9451333   -3.2739939   -2.6162728
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.9829825   -2.2995117   -1.6664532
24 months   ki1000108-IRC              INDIA                          2                    NA                -2.0409524   -2.4002683   -1.6816365
24 months   ki1000108-IRC              INDIA                          3                    NA                -1.8874074   -2.2234189   -1.5513959
24 months   ki1000108-IRC              INDIA                          4                    NA                -2.1052381   -2.4862389   -1.7242373
24 months   ki1000108-IRC              INDIA                          5                    NA                -2.5140909   -2.9590214   -2.0691604
24 months   ki1000108-IRC              INDIA                          6                    NA                -1.4425225   -1.7123959   -1.1726492
24 months   ki1000108-IRC              INDIA                          7                    NA                -1.6929167   -1.9634295   -1.4224039
24 months   ki1000108-IRC              INDIA                          8                    NA                -1.5924621   -1.8526416   -1.3322827
24 months   ki1000108-IRC              INDIA                          9                    NA                -1.7774074   -2.1988560   -1.3559588
24 months   ki1000108-IRC              INDIA                          10                   NA                -1.6001802   -1.8518906   -1.3484698
24 months   ki1000108-IRC              INDIA                          11                   NA                -1.6191250   -1.8965588   -1.3416912
24 months   ki1000108-IRC              INDIA                          12                   NA                -1.8533013   -2.1331993   -1.5734032
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.2833333   -2.5779433   -1.9887234
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -2.2301389   -2.4783450   -1.9819328
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -2.1278205   -2.4737818   -1.7818592
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -2.4709314   -2.8664451   -2.0754177
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -2.3454762   -2.6524414   -2.0385109
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -2.3071717   -2.6435871   -1.9707564
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -2.1247059   -2.4778792   -1.7715325
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -2.2682716   -2.6402274   -1.8963158
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -2.0738462   -2.5897141   -1.5579782
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -2.0997475   -2.5206912   -1.6788038
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -2.2331589   -2.5719884   -1.8943294
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -2.0774275   -2.4185965   -1.7362586
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.7600000   -2.0724511   -1.4475489
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.6759375   -1.8713207   -1.4805543
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.7610526   -1.9921528   -1.5299525
24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -1.7742857   -2.1839675   -1.3646039
24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    NA                -2.0076667   -2.3246390   -1.6906943
24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    NA                -1.1732500   -1.5365001   -0.8099999
24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    NA                -1.5333333   -1.9620529   -1.1046137
24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    NA                -1.2861905   -1.6173394   -0.9550415
24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    NA                -1.8684000   -2.1102762   -1.6265238
24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   NA                -1.5568571   -1.7694089   -1.3443054
24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   NA                -1.4599167   -1.7110826   -1.2087507
24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   NA                -1.4778030   -1.7297904   -1.2258157
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.4773294   -1.6356226   -1.3190362
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.5981936   -1.7647044   -1.4316828
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -1.5596275   -1.7124668   -1.4067881
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                -1.6232529   -1.7949788   -1.4515271
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                -1.6512322   -1.8233996   -1.4790649
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                -1.5954674   -1.8087765   -1.3821583
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                -1.6551502   -1.8846658   -1.4256346
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                -1.4110570   -1.5790221   -1.2430918
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                -1.6540818   -1.8077166   -1.5004469
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                -1.6543243   -1.7916507   -1.5169978
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                -1.5305792   -1.7130921   -1.3480663
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                -1.5762944   -1.7750116   -1.3775773
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.6313462   -2.9987622   -2.2639301
24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -2.4231250   -2.7793778   -2.0668722
24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -2.1563889   -2.3998980   -1.9128798
24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -2.3822727   -2.7707716   -1.9937739
24 months   ki1114097-CMIN             BANGLADESH                     5                    NA                -2.0721875   -2.4764105   -1.6679645
24 months   ki1114097-CMIN             BANGLADESH                     6                    NA                -3.4681250   -4.5104113   -2.4258387
24 months   ki1114097-CMIN             BANGLADESH                     7                    NA                -2.1903333   -2.5611345   -1.8195322
24 months   ki1114097-CMIN             BANGLADESH                     8                    NA                -2.9736111   -3.4157054   -2.5315168
24 months   ki1114097-CMIN             BANGLADESH                     9                    NA                -2.3647500   -2.8348561   -1.8946439
24 months   ki1114097-CMIN             BANGLADESH                     10                   NA                -2.6139583   -3.0142387   -2.2136780
24 months   ki1114097-CMIN             BANGLADESH                     11                   NA                -2.4496000   -2.9221174   -1.9770826
24 months   ki1114097-CMIN             BANGLADESH                     12                   NA                -2.7425000   -3.0248581   -2.4601419
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.6142857   -0.9862611   -0.2423103
24 months   ki1114097-CONTENT          PERU                           2                    NA                -0.8035714   -1.3911099   -0.2160329
24 months   ki1114097-CONTENT          PERU                           3                    NA                -0.5227273   -1.0538819    0.0084273
24 months   ki1114097-CONTENT          PERU                           4                    NA                -1.0766667   -1.7284266   -0.4249068
24 months   ki1114097-CONTENT          PERU                           5                    NA                -0.3421429   -1.0108789    0.3265932
24 months   ki1114097-CONTENT          PERU                           6                    NA                -1.0127273   -1.4943558   -0.5310988
24 months   ki1114097-CONTENT          PERU                           7                    NA                -0.5080435   -0.9227386   -0.0933484
24 months   ki1114097-CONTENT          PERU                           8                    NA                -1.0178571   -1.6020645   -0.4336497
24 months   ki1114097-CONTENT          PERU                           9                    NA                -0.8397059   -1.3538999   -0.3255118
24 months   ki1114097-CONTENT          PERU                           10                   NA                -0.2563636   -0.8893164    0.3765892
24 months   ki1114097-CONTENT          PERU                           11                   NA                -1.2358333   -1.8416274   -0.6300393
24 months   ki1114097-CONTENT          PERU                           12                   NA                -0.4605000   -0.9071174   -0.0138826
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0271032   -0.6255823    0.6797887
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                -0.2070327   -0.6098073    0.1957419
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                 0.1766877   -0.0748208    0.4281962
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                 0.0233284   -0.2130428    0.2596995
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                -0.0983775   -0.2911051    0.0943501
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                -0.0248889   -2.8596884    2.8099106
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                -0.0740501   -0.5099782    0.3618780
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                -0.0093120   -0.3590337    0.3404097
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                -0.2564987   -0.4735245   -0.0394729
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                -0.3168486   -0.5316948   -0.1020023
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                -0.3760026   -0.6482689   -0.1037364
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                -0.2646356   -1.4342820    0.9050108
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.5088684   -1.6707552   -1.3469817
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.5821827   -1.7578629   -1.4065026
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -1.5530482   -1.7087111   -1.3973853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -1.6101765   -1.7615435   -1.4588095
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -1.5605655   -1.7561759   -1.3649551
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -1.6297449   -1.7954589   -1.4640309
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -1.8695833   -2.0835829   -1.6555837
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -1.6288189   -1.8263188   -1.4313190
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -1.4076923   -1.5934651   -1.2219195
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -1.5029167   -1.7931219   -1.2127115
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -1.6429167   -1.9529440   -1.3328894
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -1.6404444   -1.8059933   -1.4748956
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8656098   -2.1616769   -1.5695426
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -1.5995000   -1.8008600   -1.3981400
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -1.7884211   -2.1743849   -1.4024572
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                -1.7000000   -1.9798303   -1.4201697
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -1.9406452   -2.3915128   -1.4897776
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -2.3941667   -2.9514739   -1.8368594
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -1.9229787   -2.2072696   -1.6386878
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -1.6756338   -1.8629302   -1.4883374
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                -1.6217910   -1.8495351   -1.3940470
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                -2.0017742   -2.2195612   -1.7839872
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -1.9951563   -2.2098033   -1.7805092
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -2.1334375   -2.3802450   -1.8866300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1170977   -2.1968946   -2.0373009
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -2.1157706   -2.2023902   -2.0291510
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.9858427   -2.0690339   -1.9026515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.9304573   -2.0232199   -1.8376946
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -2.0265000   -2.1502956   -1.9027044
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.9252053   -2.0122936   -1.8381169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.8764574   -1.9611275   -1.7917873
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.9543760   -2.0387626   -1.8699894
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.9284316   -2.0044045   -1.8524587
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.9850760   -2.0645283   -1.9056237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -2.1230250   -2.1890696   -2.0569805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -2.1347208   -2.2007130   -2.0687286


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1729576   -1.2009629   -1.1449523
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679450   -0.8935071   -0.8423828
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3355900   -1.3586765   -1.3125035
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5774356   -1.6272400   -1.5276311
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6055701   -1.6625562   -1.5485840
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0195844   -2.0472504   -1.9919183


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.2407609   -0.8081895    0.3266677
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.1270833   -0.6854951    0.4313284
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.5448684    0.0062063    1.0835306
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.3080556   -0.9520502    0.3359391
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.1225000   -0.6609957    0.9059957
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0389286   -0.7932946    0.7154375
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.1548077   -0.7179151    0.4082997
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0086111   -0.6699367    0.6527145
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1144048   -0.6615064    0.4326968
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.3055000   -0.3403099    0.9513099
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1159000   -0.4463045    0.6781045
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                  0.0271111   -0.5206964    0.5749186
Birth       ki0047075b-MAL-ED          PERU                           3                    1                 -0.0578333   -0.5486871    0.4330205
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.3876667   -0.2652291    1.0405624
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.3208485   -0.2084449    0.8501419
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.4822121   -0.2037052    1.1681295
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.1592456   -0.3847925    0.7032837
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.2651667   -0.2360711    0.7664044
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.5013509    0.0848590    0.9178428
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.4052857   -0.0249247    0.8354962
Birth       ki0047075b-MAL-ED          PERU                           11                   1                 -0.1648333   -0.6446154    0.3149488
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.0155238   -0.6229246    0.6539723
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.3447500   -0.8953503    0.2058503
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0340000   -0.6766800    0.7446800
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0272500   -0.8835373    0.8290373
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.3640000   -0.3090063    1.0370063
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0621818   -0.7593821    0.8837457
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3504286   -0.2398126    0.9406697
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2556667   -0.2480624    0.7593958
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -2.3020000   -3.7102051   -0.8937949
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.5343333   -1.2473775    0.1787109
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0340000   -0.7711925    0.8391925
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.1910000   -0.7579420    1.1399420
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2                    1                  0.4351099   -0.3893051    1.2595249
Birth       ki1000108-IRC              INDIA                          3                    1                  0.7408791   -0.0024058    1.4841641
Birth       ki1000108-IRC              INDIA                          4                    1                  0.6752381   -0.0975614    1.4480376
Birth       ki1000108-IRC              INDIA                          5                    1                  1.3231169    0.3853391    2.2608946
Birth       ki1000108-IRC              INDIA                          6                    1                  0.6750420   -0.1101627    1.4602468
Birth       ki1000108-IRC              INDIA                          7                    1                  0.6282857   -0.0637949    1.3203664
Birth       ki1000108-IRC              INDIA                          8                    1                  0.7280451    0.0800870    1.3760032
Birth       ki1000108-IRC              INDIA                          9                    1                  0.2229714   -0.5132887    0.9592316
Birth       ki1000108-IRC              INDIA                          10                   1                  0.0219925   -0.5951488    0.6391338
Birth       ki1000108-IRC              INDIA                          11                   1                  0.3162637   -0.2697250    0.9022525
Birth       ki1000108-IRC              INDIA                          12                   1                  0.2748980   -0.3629215    0.9127174
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.1293023   -0.1580004    0.4166050
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0862588   -0.2603753    0.4328930
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.2909152   -0.0305506    0.6123811
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.2689614   -0.1734356    0.7113584
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.3022831    0.0119071    0.5926590
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.2338023   -0.0309522    0.4985569
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.0347884   -0.1554685    0.2250453
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.4103227    0.1657659    0.6548796
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.2298657   -0.0427082    0.5024396
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.2696385   -0.0044883    0.5437652
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.1559690   -0.1235287    0.4354667
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.2862857   -0.0780716    0.6506430
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.4628111    0.0758558    0.8497665
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.3638347   -0.0784057    0.8060752
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.7320304    0.2573482    1.2067126
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.2057422   -0.1598330    0.5713175
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.4260357    0.0080042    0.8440672
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.2932857   -0.1179547    0.7045262
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.3463921   -0.0803612    0.7731454
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.4160774   -0.0210607    0.8532154
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.2053242   -0.1801707    0.5908191
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.3718626   -0.0200509    0.7637762
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0027037   -0.3346488    0.3400562
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0819259   -0.4595077    0.2956559
Birth       ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.2345714   -0.7067842    0.2376413
Birth       ki1017093b-PROVIDE         BANGLADESH                     5                    1                 -0.0622500   -0.5007958    0.3762958
Birth       ki1017093b-PROVIDE         BANGLADESH                     6                    1                  0.2651111   -0.0948620    0.6250842
Birth       ki1017093b-PROVIDE         BANGLADESH                     7                    1                  0.0341190   -0.3594734    0.4277115
Birth       ki1017093b-PROVIDE         BANGLADESH                     8                    1                 -0.0302754   -0.4157355    0.3551848
Birth       ki1017093b-PROVIDE         BANGLADESH                     9                    1                 -0.2046667   -0.5630791    0.1537458
Birth       ki1017093b-PROVIDE         BANGLADESH                     10                   1                  0.1158667   -0.2338689    0.4656022
Birth       ki1017093b-PROVIDE         BANGLADESH                     11                   1                  0.0780741   -0.2899426    0.4460907
Birth       ki1017093b-PROVIDE         BANGLADESH                     12                   1                  0.3242424   -0.0373148    0.6857997
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                 -0.1827407   -0.3377736   -0.0277079
Birth       ki1119695-PROBIT           BELARUS                        3                    1                 -0.0558849   -0.2331237    0.1213538
Birth       ki1119695-PROBIT           BELARUS                        4                    1                  0.0129286   -0.1696834    0.1955407
Birth       ki1119695-PROBIT           BELARUS                        5                    1                  0.0399096   -0.1527967    0.2326160
Birth       ki1119695-PROBIT           BELARUS                        6                    1                 -0.1278061   -0.3473164    0.0917042
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0073579   -0.2440555    0.2293397
Birth       ki1119695-PROBIT           BELARUS                        8                    1                 -0.0778724   -0.2972535    0.1415086
Birth       ki1119695-PROBIT           BELARUS                        9                    1                 -0.1212578   -0.3715017    0.1289860
Birth       ki1119695-PROBIT           BELARUS                        10                   1                 -0.0645365   -0.2714986    0.1424257
Birth       ki1119695-PROBIT           BELARUS                        11                   1                 -0.0965077   -0.2792464    0.0862310
Birth       ki1119695-PROBIT           BELARUS                        12                   1                 -0.1582133   -0.3482072    0.0317806
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0562419   -0.1555783    0.0430944
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.1095824    0.0131999    0.2059649
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.1160533    0.0148571    0.2172495
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.1933236    0.0890624    0.2975849
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.2509299    0.1487600    0.3530997
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.3047686    0.2052093    0.4043278
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.3856360    0.2937441    0.4775278
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.3782836    0.2898844    0.4666828
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.3523858    0.2559588    0.4488127
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.3149793    0.2194634    0.4104952
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2753156    0.1815644    0.3690667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1004200   -0.0025053    0.2033454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1924817    0.0937220    0.2912414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.2541081    0.1493910    0.3588251
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.2429097    0.1186894    0.3671301
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.2597161    0.1352019    0.3842303
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.3043201    0.1868552    0.4217849
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1367006    0.0318389    0.2415624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.2213590    0.1238138    0.3189042
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0491372   -0.0452870    0.1435614
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0916129   -0.1866948    0.0034689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0386424   -0.1273124    0.0500276
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.3605185   -0.8330071    0.1119701
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.2265982   -0.8051261    0.3519296
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.4635269   -0.0442030    0.9712568
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0080291   -0.5450384    0.5610966
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.1608148   -0.4439274    0.7655571
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0926852   -0.6883177    0.5029473
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.1397866   -0.7072110    0.4276378
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.1386027   -0.3577425    0.6349479
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1065488   -0.7050535    0.4919558
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.1479398   -0.3735894    0.6694691
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.3818661   -0.0920130    0.8557452
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0723768   -0.7021204    0.8468741
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1274583   -0.6988936    0.9538102
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2172121   -0.6130105    1.0474347
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.0020952   -0.7730535    0.7688630
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.2969167   -1.2165385    0.6227051
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.5162917   -1.4411032    0.4085199
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.1941042   -0.9949275    0.6067191
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.3581111   -1.0948290    0.3786068
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.0679167   -0.6870061    0.8228395
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.0698730   -0.8167313    0.6769853
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0711389   -0.7271198    0.8693976
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.3736940   -0.0450686    0.7924565
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.4181300   -0.0900280    0.9262880
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.2640643   -0.3857218    0.9138505
6 months    ki0047075b-MAL-ED          INDIA                          5                    1                  0.0987171   -0.4108083    0.6082425
6 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.2044737   -0.2453575    0.6543049
6 months    ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0578680   -0.5818096    0.4660735
6 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.0576754   -0.4615770    0.5769279
6 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.2995088   -0.3258056    0.9248232
6 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.1590857   -0.3959797    0.7141511
6 months    ki0047075b-MAL-ED          INDIA                          11                   1                  0.0765088   -0.4146331    0.5676506
6 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.2564912   -0.2677572    0.7807396
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1545658   -0.7001350    0.3910034
6 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0620735   -0.6684308    0.5442838
6 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.3378864   -0.1371513    0.8129241
6 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.1815000   -0.3801341    0.7431341
6 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.3761944   -0.1131115    0.8655004
6 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.1556389   -0.3840556    0.6953333
6 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.3934861   -0.0263113    0.8132836
6 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.3335208   -0.2817514    0.9487931
6 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.3386548   -0.1276556    0.8049651
6 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.4589722   -0.0552104    0.9731548
6 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.3571422   -0.1918860    0.9061703
6 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                 -0.0403070   -0.4953774    0.4147633
6 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.1637281   -0.6314364    0.3039803
6 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.3687719   -0.2329909    0.9705347
6 months    ki0047075b-MAL-ED          PERU                           5                    1                  0.1207164   -0.2975615    0.5389943
6 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0472719   -0.5068604    0.6014042
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0044856   -0.4142110    0.4052398
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.1008553   -0.4196343    0.6213449
6 months    ki0047075b-MAL-ED          PERU                           9                    1                  0.0180111   -0.4499633    0.4859854
6 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.0187719   -0.4640340    0.5015778
6 months    ki0047075b-MAL-ED          PERU                           11                   1                 -0.4709156   -0.9057734   -0.0360577
6 months    ki0047075b-MAL-ED          PERU                           12                   1                  0.2066228   -0.2963396    0.7095853
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1082590   -0.3189297    0.5354476
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.7397807    0.0834956    1.3960658
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.6352935    0.0231307    1.2474563
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.4852935   -0.2382009    1.2087880
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.3992251   -0.0613317    0.8597820
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0905383   -0.4456537    0.6267303
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.5031140   -0.2539638    1.2601919
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.2868177   -0.2270635    0.8006989
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0884987   -0.4496942    0.6266915
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.1354276   -0.7427533    0.4718980
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1731717   -0.6589794    0.3126361
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.3438333   -0.8852891    0.1976224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.3180000   -0.9893733    0.3533733
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.6791111   -1.3349186   -0.0233036
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0843542   -0.6930909    0.5243826
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.1903333   -0.3457770    0.7264437
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0518551   -0.5943393    0.6980495
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.1288333   -0.8273817    0.5697150
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0637937   -0.6490711    0.5214838
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.4504242   -1.0673686    0.1665201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1995432   -0.8081064    0.4090200
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.1574444   -0.7674754    0.4525865
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.4129473   -1.3100503    0.4841557
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0829364   -0.3942984    0.5601713
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.3471569   -0.2710889    0.9654026
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.3554860   -0.9323394    0.2213674
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.2949377   -0.9288944    0.3390190
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 -0.5729927   -1.1480967    0.0021113
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.0154412   -0.6591219    0.6282395
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.1739069   -0.5055858    0.8533996
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.0737948   -0.5708361    0.7184257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.3630696   -0.1329075    0.8590466
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.5348765   -1.1897716    0.1200186
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 -0.3493828   -1.0401000    0.3413343
6 months    ki1000108-IRC              INDIA                          3                    1                  0.1675682   -0.3973074    0.7324439
6 months    ki1000108-IRC              INDIA                          4                    1                 -0.4348392   -1.1107493    0.2410710
6 months    ki1000108-IRC              INDIA                          5                    1                 -0.5915852   -1.2502925    0.0671220
6 months    ki1000108-IRC              INDIA                          6                    1                  0.7791098    0.1259539    1.4322656
6 months    ki1000108-IRC              INDIA                          7                    1                  0.4022442   -0.2036285    1.0081168
6 months    ki1000108-IRC              INDIA                          8                    1                  0.5186204   -0.0283211    1.0655619
6 months    ki1000108-IRC              INDIA                          9                    1                  0.7121979   -0.1725003    1.5968960
6 months    ki1000108-IRC              INDIA                          10                   1                  0.4741548   -0.0404000    0.9887097
6 months    ki1000108-IRC              INDIA                          11                   1                  0.1517719   -0.4429511    0.7464950
6 months    ki1000108-IRC              INDIA                          12                   1                 -0.1196758   -0.6494436    0.4100921
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2934926   -0.0114332    0.5984184
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.3168531   -0.3129717    0.9466778
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.2772257   -0.1019144    0.6563658
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.1873563   -0.0682379    0.4429506
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.0628412   -0.2837537    0.4094361
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.0337827   -0.4588311    0.3912656
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.1231460   -0.3141050    0.5603970
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.3881034    0.0314853    0.7447216
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.0795086   -0.3034398    0.4624570
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0702406   -0.2605494    0.4010306
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.1926135   -0.1760824    0.5613094
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.1818989   -0.2160849    0.5798826
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.1963962   -0.2079293    0.6007217
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.1515644   -0.2123301    0.5154589
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.2562469   -0.1338755    0.6463694
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.1311442   -0.5505276    0.2882393
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.1759509   -0.2440052    0.5959069
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.1406676   -0.2816104    0.5629456
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0014850   -0.3971987    0.4001688
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.2238660   -0.2037894    0.6515214
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0766872   -0.4665575    0.3131831
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.3755863   -0.0291433    0.7803160
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.2334364   -0.5663523    0.0994795
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.2455168   -0.6284528    0.1374191
6 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0434319   -0.3807473    0.4676110
6 months    ki1017093b-PROVIDE         BANGLADESH                     5                    1                 -0.4244345   -0.8510529    0.0021839
6 months    ki1017093b-PROVIDE         BANGLADESH                     6                    1                  0.2302602   -0.2149232    0.6754437
6 months    ki1017093b-PROVIDE         BANGLADESH                     7                    1                 -0.1671429   -0.5693682    0.2350825
6 months    ki1017093b-PROVIDE         BANGLADESH                     8                    1                  0.0764405   -0.3061282    0.4590092
6 months    ki1017093b-PROVIDE         BANGLADESH                     9                    1                 -0.3621212   -0.7347383    0.0104959
6 months    ki1017093b-PROVIDE         BANGLADESH                     10                   1                 -0.1953885   -0.5471498    0.1563729
6 months    ki1017093b-PROVIDE         BANGLADESH                     11                   1                 -0.3350390   -0.7174903    0.0474123
6 months    ki1017093b-PROVIDE         BANGLADESH                     12                   1                 -0.2654513   -0.6380748    0.1071722
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2840987   -0.0024297    0.5706271
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.1299351   -0.4105317    0.1506615
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1476523   -0.4251493    0.1298448
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.1978085   -0.4749463    0.0793294
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.3782427   -0.6483876   -0.1080979
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.3104098   -0.5596520   -0.0611675
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.2511042   -0.5106438    0.0084353
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.2080839   -0.4621870    0.0460192
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.2114814   -0.4654787    0.0425160
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1063756   -0.3612123    0.1484611
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0806806   -0.1791595    0.3405207
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0160810   -0.2354685    0.2033064
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 -0.1089793   -0.3185988    0.1006402
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 -0.0594172   -0.2821959    0.1633615
6 months    ki1101329-Keneba           GAMBIA                         5                    1                 -0.0511477   -0.2866666    0.1843712
6 months    ki1101329-Keneba           GAMBIA                         6                    1                 -0.1305439   -0.4145481    0.1534604
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 -0.2367607   -0.5290647    0.0555432
6 months    ki1101329-Keneba           GAMBIA                         8                    1                 -0.0896343   -0.3029723    0.1237037
6 months    ki1101329-Keneba           GAMBIA                         9                    1                 -0.1881966   -0.4060496    0.0296565
6 months    ki1101329-Keneba           GAMBIA                         10                   1                 -0.0852928   -0.2964566    0.1258709
6 months    ki1101329-Keneba           GAMBIA                         11                   1                  0.0188536   -0.1997291    0.2374363
6 months    ki1101329-Keneba           GAMBIA                         12                   1                  0.0475429   -0.1715378    0.2666235
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.7369976    0.2221350    1.2518603
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.3450198   -0.1780346    0.8680743
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.2803783   -0.2570412    0.8177977
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                  0.1076901   -0.3852293    0.6006095
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                  0.0895400   -0.4370229    0.6161030
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                  0.5887500    0.0848355    1.0926645
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                  0.1545833   -0.2936638    0.6028304
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                  0.4109226   -0.1080014    0.9298466
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                  0.6515333    0.1793303    1.1237362
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                  0.3370337   -0.1349572    0.8090247
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                  0.3903783   -0.0949708    0.8757273
6 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     2                    1                  0.5195401   -0.0153601    1.0544404
6 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.5966629    0.0315638    1.1617620
6 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.6007226    0.0147316    1.1867137
6 months    ki1114097-CMIN             BANGLADESH                     5                    1                  0.7471531    0.1350191    1.3592871
6 months    ki1114097-CMIN             BANGLADESH                     6                    1                 -0.2443910   -1.3238677    0.8350857
6 months    ki1114097-CMIN             BANGLADESH                     7                    1                  0.2248590   -0.4227294    0.8724474
6 months    ki1114097-CMIN             BANGLADESH                     8                    1                 -0.8506900   -1.5491656   -0.1522145
6 months    ki1114097-CMIN             BANGLADESH                     9                    1                 -0.0611410   -0.6711351    0.5488531
6 months    ki1114097-CMIN             BANGLADESH                     10                   1                  0.2685256   -0.3537174    0.8907686
6 months    ki1114097-CMIN             BANGLADESH                     11                   1                  0.1268590   -0.4876912    0.7414091
6 months    ki1114097-CMIN             BANGLADESH                     12                   1                 -0.1685114   -0.7116198    0.3745970
6 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           2                    1                 -0.1466278   -1.0155412    0.7222857
6 months    ki1114097-CONTENT          PERU                           3                    1                 -0.3205333   -1.1835412    0.5424745
6 months    ki1114097-CONTENT          PERU                           4                    1                 -1.0566965   -1.9203389   -0.1930541
6 months    ki1114097-CONTENT          PERU                           5                    1                 -0.0926714   -1.1834894    0.9981466
6 months    ki1114097-CONTENT          PERU                           6                    1                 -0.9507154   -1.8699088   -0.0315220
6 months    ki1114097-CONTENT          PERU                           7                    1                 -0.2927726   -1.0798744    0.4943291
6 months    ki1114097-CONTENT          PERU                           8                    1                 -0.6047957   -1.4593754    0.2497841
6 months    ki1114097-CONTENT          PERU                           9                    1                 -0.4621192   -1.2788427    0.3546042
6 months    ki1114097-CONTENT          PERU                           10                   1                 -0.3727429   -1.2589263    0.5134406
6 months    ki1114097-CONTENT          PERU                           11                   1                 -0.7002111   -1.7901750    0.3897528
6 months    ki1114097-CONTENT          PERU                           12                   1                  0.3454909   -0.5816635    1.2726454
6 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 -0.1070201   -0.3070121    0.0929719
6 months    ki1119695-PROBIT           BELARUS                        3                    1                  0.2324230    0.0547527    0.4100933
6 months    ki1119695-PROBIT           BELARUS                        4                    1                  0.2461826    0.0518341    0.4405310
6 months    ki1119695-PROBIT           BELARUS                        5                    1                  0.2616646    0.0512679    0.4720613
6 months    ki1119695-PROBIT           BELARUS                        6                    1                  0.2339936    0.0921064    0.3758807
6 months    ki1119695-PROBIT           BELARUS                        7                    1                  0.2125558    0.0550913    0.3700203
6 months    ki1119695-PROBIT           BELARUS                        8                    1                  0.2342959    0.0714994    0.3970923
6 months    ki1119695-PROBIT           BELARUS                        9                    1                  0.1794692    0.0164287    0.3425096
6 months    ki1119695-PROBIT           BELARUS                        10                   1                  0.1281763   -0.0506243    0.3069769
6 months    ki1119695-PROBIT           BELARUS                        11                   1                  0.0801582   -0.0699210    0.2302374
6 months    ki1119695-PROBIT           BELARUS                        12                   1                  0.0744440   -0.1018810    0.2507689
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0411243   -0.0853442    0.1675927
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0515083   -0.1784656    0.0754490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0104239   -0.1123203    0.1331681
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0200592   -0.1433998    0.1032813
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.0118230   -0.1142649    0.1379109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0264769   -0.1491513    0.0961976
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.1124735   -0.0043122    0.2292592
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.1428784    0.0278007    0.2579560
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.0775250   -0.0499488    0.2049988
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0776499   -0.0402571    0.1955570
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2044916    0.0842731    0.3247102
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.2312212   -0.0640166    0.5264591
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                  0.0769570   -0.4253765    0.5792905
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                  0.0837519   -0.2450746    0.4125784
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                  0.2401738   -0.2075801    0.6879277
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0645588   -0.5761502    0.4470326
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                  0.2631172   -0.0701822    0.5964166
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                  0.2579206   -0.0272607    0.5431019
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                  0.2032970   -0.0921932    0.4987871
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.0420425   -0.2607843    0.3448693
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                  0.1823599   -0.1085333    0.4732532
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                  0.3117384   -0.0050537    0.6285305
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0305189   -0.1229504    0.0619126
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0002872   -0.0924064    0.0918320
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0202074   -0.0747662    0.1151810
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0328474   -0.1316448    0.0659501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.0140102   -0.1093475    0.0813271
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0006099   -0.0928522    0.0916324
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0675600   -0.1560724    0.0209524
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.0119966   -0.0979868    0.0739936
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.0905524   -0.1798924   -0.0012123
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1452937   -0.2318323   -0.0587551
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0774071   -0.1679044    0.0130901
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.7325630   -1.3535674   -0.1115586
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.3752256   -0.9092697    0.1588186
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1958929   -0.3664548    0.7582405
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.3441729   -0.9200230    0.2316772
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0300000   -0.7616373    0.8216373
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0639683   -0.6507615    0.5228250
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.2235390   -0.8711470    0.4240691
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.1470238   -0.6721131    0.3780655
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0511071   -0.6784396    0.5762253
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.1087662   -0.6711034    0.4535710
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1849206   -0.3091074    0.6789486
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.2027500   -1.0882402    0.6827402
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.3960000   -0.6291929    1.4211929
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.8545000    0.0478452    1.6611548
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.5383333   -0.3162978    1.3929644
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.0123333   -1.3363032    1.3116365
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.1080000   -1.2750019    1.0590019
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.4124615   -1.3593905    0.5344674
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.1774815   -0.6655668    1.0205298
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.2167143   -0.6909282    1.1243568
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.1635000   -0.7488350    1.0758350
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.0617273   -1.0096033    0.8861487
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.5192398    0.0033307    1.0351488
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.7168421    0.1160300    1.3176542
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.3236842   -0.3447435    0.9921119
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                  0.3793092   -0.2698505    1.0284689
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.6267398    0.0918872    1.1615923
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.4006407   -0.2101712    1.0114527
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.3174937   -0.2915033    0.9264907
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                  0.3503509   -0.2640081    0.9647099
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.2934919   -0.2990583    0.8860421
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                  0.4203509   -0.1261533    0.9668550
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.5834211    0.0294439    1.1373982
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1963467   -0.6916291    0.2989356
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.2613467   -0.8152345    0.2925410
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.4094019   -0.0233329    0.8421367
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                  0.1855263   -0.4318495    0.8029021
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                  0.5933918    0.1479304    1.0388532
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.4421827   -0.0203363    0.9047017
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                  0.6374890    0.2250424    1.0499357
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                  0.6286140    0.0076344    1.2495937
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                  0.4871974    0.0398784    0.9345163
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                  0.4301974   -0.1011627    0.9615574
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.4267599   -0.1258528    0.9793725
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0687843   -0.3860057    0.5235743
24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.2266667   -0.3262063    0.7795396
24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0133030   -0.6091220    0.6357281
24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0957193   -0.5169345    0.7083731
24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.5287576   -0.3528949    1.4104101
24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.1570000   -0.2611172    0.5751172
24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.2238333   -0.3303007    0.7779674
24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.5282381    0.0428015    1.0136747
24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.4953810   -0.0084791    0.9992410
24 months   ki0047075b-MAL-ED          PERU                           11                   1                 -0.0122381   -0.5155540    0.4910779
24 months   ki0047075b-MAL-ED          PERU                           12                   1                 -0.0636667   -0.5520757    0.4247424
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.2114305   -0.8049642    0.3821033
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.4861345   -0.2312049    1.2034738
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.8109559    0.1626764    1.4592354
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.5830392   -0.0946173    1.2606957
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.3531434   -0.2908973    0.9971840
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.1447059   -0.4379852    0.7273970
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.6653309   -0.0688245    1.3994863
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.3439164   -0.1596195    0.8474523
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0783059   -0.4819818    0.6385935
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.1335550   -0.7304206    0.4633106
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0849715   -0.5948286    0.4248855
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.4074545   -1.1649082    0.3499991
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.3692222   -1.1870845    0.4486401
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.7361667   -1.7604916    0.2881582
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0731111   -0.8252421    0.6790199
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0857778   -0.6338829    0.8054385
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.0470000   -0.8452942    0.7512942
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0334545   -0.7972767    0.8641858
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0430000   -0.7064562    0.7924562
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.3416667   -1.0973430    0.4140096
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1342917   -0.8820094    0.6134261
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.1721923   -0.8992069    0.5548222
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.3839522   -0.9601649    0.1922605
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.3966034   -0.8340238    0.0408170
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.2848708   -0.7455772    0.1758357
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.4272409   -0.8553596    0.0008778
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.2358638   -0.7032763    0.2315487
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 -0.2130468   -0.6522665    0.2261729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.2697059   -0.8494298    0.3100181
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.0679178   -0.3827512    0.5185869
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.1625693   -0.6593598    0.3342212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.1984701   -0.6334628    0.2365226
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.6435647   -1.1036212   -0.1835082
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                 -0.0579699   -0.5368214    0.4208815
24 months   ki1000108-IRC              INDIA                          3                    1                  0.0955750   -0.3660466    0.5571967
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.1222556   -0.6175862    0.3730750
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.5311085   -1.0771432    0.0149263
24 months   ki1000108-IRC              INDIA                          6                    1                  0.5404599    0.1245003    0.9564196
24 months   ki1000108-IRC              INDIA                          7                    1                  0.2900658   -0.1263090    0.7064406
24 months   ki1000108-IRC              INDIA                          8                    1                  0.3905203   -0.0192163    0.8002570
24 months   ki1000108-IRC              INDIA                          9                    1                  0.2055750   -0.3215015    0.7326516
24 months   ki1000108-IRC              INDIA                          10                   1                  0.3828023   -0.0216095    0.7872141
24 months   ki1000108-IRC              INDIA                          11                   1                  0.3638575   -0.0570467    0.7847616
24 months   ki1000108-IRC              INDIA                          12                   1                  0.1296812   -0.2928513    0.5522137
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0531944   -0.3320344    0.4384233
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.1555128   -0.2988926    0.6099182
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.1875980   -0.6807776    0.3055815
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.0621429   -0.4876105    0.3633247
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0238384   -0.4710188    0.4233420
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.1586275   -0.3012926    0.6185475
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0150617   -0.4594339    0.4895574
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.2094872   -0.3845791    0.8035535
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.1835859   -0.3302123    0.6973841
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0501744   -0.3988250    0.4991738
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.2059058   -0.2448616    0.6566732
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0840625   -0.2844484    0.4525734
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.0010526   -0.3896822    0.3875770
24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.0142857   -0.5295185    0.5009471
24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    1                 -0.2476667   -0.6927477    0.1974144
24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    1                  0.5867500    0.1076088    1.0658912
24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    1                  0.2266667   -0.3038295    0.7571628
24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    1                  0.4738095    0.0185236    0.9290955
24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    1                 -0.1084000   -0.5035326    0.2867326
24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   1                  0.2031429   -0.1747512    0.5810369
24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   1                  0.3000833   -0.1008032    0.7009699
24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   1                  0.2821970   -0.1192047    0.6835986
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.1208642   -0.3506088    0.1088804
24 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0822980   -0.3023358    0.1377397
24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.1459235   -0.3794754    0.0876284
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 -0.1739028   -0.4077795    0.0599739
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 -0.1181380   -0.3837646    0.1474887
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 -0.1778208   -0.4566292    0.1009877
24 months   ki1101329-Keneba           GAMBIA                         8                    1                  0.0662725   -0.1645284    0.2970733
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 -0.1767523   -0.3973433    0.0438387
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.1769949   -0.3865546    0.0325649
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0532498   -0.2948438    0.1883443
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 -0.0989650   -0.3530225    0.1550925
24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     2                    1                  0.2082212   -0.3035509    0.7199932
24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.4749573    0.0341725    0.9157420
24 months   ki1114097-CMIN             BANGLADESH                     4                    1                  0.2490734   -0.2856470    0.7837938
24 months   ki1114097-CMIN             BANGLADESH                     5                    1                  0.5591587    0.0129071    1.1054102
24 months   ki1114097-CMIN             BANGLADESH                     6                    1                 -0.8367788   -1.9419283    0.2683706
24 months   ki1114097-CMIN             BANGLADESH                     7                    1                  0.4410128   -0.0809911    0.9630167
24 months   ki1114097-CMIN             BANGLADESH                     8                    1                 -0.3422650   -0.9171057    0.2325758
24 months   ki1114097-CMIN             BANGLADESH                     9                    1                  0.2665962   -0.3300564    0.8632487
24 months   ki1114097-CMIN             BANGLADESH                     10                   1                  0.0173878   -0.5259527    0.5607283
24 months   ki1114097-CMIN             BANGLADESH                     11                   1                  0.1817462   -0.4168081    0.7803004
24 months   ki1114097-CMIN             BANGLADESH                     12                   1                 -0.1111538   -0.5745335    0.3522258
24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           2                    1                 -0.1892857   -0.8846756    0.5061042
24 months   ki1114097-CONTENT          PERU                           3                    1                  0.0915584   -0.5568943    0.7400111
24 months   ki1114097-CONTENT          PERU                           4                    1                 -0.4623810   -1.2128186    0.2880567
24 months   ki1114097-CONTENT          PERU                           5                    1                  0.2721429   -0.4930849    1.0373706
24 months   ki1114097-CONTENT          PERU                           6                    1                 -0.3984416   -1.0069904    0.2101073
24 months   ki1114097-CONTENT          PERU                           7                    1                  0.1062422   -0.4508374    0.6633218
24 months   ki1114097-CONTENT          PERU                           8                    1                 -0.4035714   -1.0961492    0.2890063
24 months   ki1114097-CONTENT          PERU                           9                    1                 -0.2254202   -0.8600549    0.4092145
24 months   ki1114097-CONTENT          PERU                           10                   1                  0.3579221   -0.3762407    1.0920848
24 months   ki1114097-CONTENT          PERU                           11                   1                 -0.6215476   -1.3324289    0.0893336
24 months   ki1114097-CONTENT          PERU                           12                   1                  0.1537857   -0.4274482    0.7350196
24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                 -0.2341359   -0.9677341    0.4994623
24 months   ki1119695-PROBIT           BELARUS                        3                    1                  0.1495845   -0.6054337    0.9046028
24 months   ki1119695-PROBIT           BELARUS                        4                    1                 -0.0037748   -0.6885444    0.6809948
24 months   ki1119695-PROBIT           BELARUS                        5                    1                 -0.1254807   -0.8503078    0.5993464
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0519921   -2.9803027    2.8763185
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.1011533   -0.8741184    0.6718118
24 months   ki1119695-PROBIT           BELARUS                        8                    1                 -0.0364152   -0.7589067    0.6860763
24 months   ki1119695-PROBIT           BELARUS                        9                    1                 -0.2836019   -0.9314828    0.3642791
24 months   ki1119695-PROBIT           BELARUS                        10                   1                 -0.3439517   -1.0382136    0.3503101
24 months   ki1119695-PROBIT           BELARUS                        11                   1                 -0.4031058   -1.0227756    0.2165640
24 months   ki1119695-PROBIT           BELARUS                        12                   1                 -0.2917388   -1.0826137    0.4991361
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0733143   -0.3122094    0.1655807
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0441798   -0.2687645    0.1804048
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.1013080   -0.3229368    0.1203207
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0516971   -0.3056080    0.2022139
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.1208765   -0.3525410    0.1107880
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3607149   -0.6290489   -0.0923809
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.1199505   -0.3753199    0.1354189
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.1011761   -0.1452358    0.3475880
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.0059518   -0.3263529    0.3382564
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1340482   -0.4837971    0.2157006
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.1315760   -0.3631224    0.0999704
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.2661098   -0.0919428    0.6241623
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                  0.0771887   -0.4092513    0.5636287
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.1656098   -0.2417731    0.5729926
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0750354   -0.6144215    0.4643507
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.5285569   -1.1596252    0.1025114
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 -0.0573690   -0.4678286    0.3530907
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.1899760   -0.1603606    0.5403125
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.2438187   -0.1297093    0.6173467
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 -0.1361644   -0.5037062    0.2313774
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 -0.1295465   -0.4952364    0.2361434
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.2678277   -0.6532752    0.1176197
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0013271   -0.1102338    0.1128880
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1312550    0.0206299    0.2418802
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.1866405    0.0623923    0.3108887
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0905977   -0.0571704    0.2383659
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1918925    0.0780679    0.3057170
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.2406403    0.1249132    0.3563675
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1627217    0.0479948    0.2774487
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.1886661    0.0803170    0.2970153
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.1320217    0.0210050    0.2430385
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0059273   -0.1075413    0.0956867
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0176231   -0.1209370    0.0856908


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0105952   -0.3901220   0.3689315
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.1648770   -0.1513841   0.4811380
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0816000   -0.4571381   0.2939381
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.4605302    0.0320342   0.8890262
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2078806    0.0272573   0.3885039
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.3302660    0.0764159   0.5841161
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0322313   -0.2406375   0.3051001
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -0.0740300   -0.2475743   0.0995143
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2215369    0.1591179   0.2839560
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1081933    0.0402557   0.1761310
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0318238   -0.3330859   0.3967335
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0846459   -0.6922856   0.5229937
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1754720   -0.1613525   0.5122966
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.2356907   -0.1026929   0.5740742
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0068233   -0.2824734   0.2688268
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1575300   -0.1603897   0.4754498
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1684116   -0.6068106   0.2699874
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0737939   -0.4421570   0.2945692
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.1868657   -0.2279610   0.6016924
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1606724   -0.1294260   0.4507709
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.1243808   -0.1259152   0.3746767
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1855010   -0.4683571   0.0973551
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1388145   -0.3362391   0.0586102
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0655480   -0.2120240   0.0809279
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.3408968    0.0129613   0.6688324
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1607547   -0.2436720   0.5651814
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.4085217   -1.0774062   0.2603628
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1503644    0.0135262   0.2872026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0518244   -0.0278712   0.1315200
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1640740   -0.0558159   0.3839639
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0426484   -0.1065968   0.0212999
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1317722   -0.5308114   0.2672670
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1331006   -0.5783872   0.8445884
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.4088384    0.0114270   0.8062498
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.3270833    0.0223790   0.6317877
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1701891   -0.1580627   0.4984408
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1505252   -0.2061940   0.5072444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1521636   -0.7540965   0.4497694
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2572993   -0.5645991   0.0500005
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1842050   -0.1163562   0.4847661
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0642754   -0.2184618   0.3470127
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1575779   -0.1486216   0.4637773
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1001061   -0.2503374   0.0501252
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1203957   -0.2284061   0.4691976
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0819338   -0.4767252   0.3128576
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1585080   -0.7306862   0.4136702
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0967017   -0.2496145   0.0562110
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0205388   -0.3065594   0.2654818
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0975134    0.0216291   0.1733977

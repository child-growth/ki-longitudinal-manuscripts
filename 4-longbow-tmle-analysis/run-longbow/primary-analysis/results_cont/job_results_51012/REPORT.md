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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             24     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             15     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             26     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1              10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2              18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3              17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4               9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5              15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6               8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7              16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8              17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9              28     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10             17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11             18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12             10     183
Birth       ki0047075b-MAL-ED          INDIA                          1              16     203
Birth       ki0047075b-MAL-ED          INDIA                          2              16     203
Birth       ki0047075b-MAL-ED          INDIA                          3              21     203
Birth       ki0047075b-MAL-ED          INDIA                          4              13     203
Birth       ki0047075b-MAL-ED          INDIA                          5               7     203
Birth       ki0047075b-MAL-ED          INDIA                          6              18     203
Birth       ki0047075b-MAL-ED          INDIA                          7              20     203
Birth       ki0047075b-MAL-ED          INDIA                          8              17     203
Birth       ki0047075b-MAL-ED          INDIA                          9              19     203
Birth       ki0047075b-MAL-ED          INDIA                          10             22     203
Birth       ki0047075b-MAL-ED          INDIA                          11             20     203
Birth       ki0047075b-MAL-ED          INDIA                          12             14     203
Birth       ki0047075b-MAL-ED          NEPAL                          1              16     168
Birth       ki0047075b-MAL-ED          NEPAL                          2              13     168
Birth       ki0047075b-MAL-ED          NEPAL                          3              12     168
Birth       ki0047075b-MAL-ED          NEPAL                          4              16     168
Birth       ki0047075b-MAL-ED          NEPAL                          5              19     168
Birth       ki0047075b-MAL-ED          NEPAL                          6              10     168
Birth       ki0047075b-MAL-ED          NEPAL                          7              17     168
Birth       ki0047075b-MAL-ED          NEPAL                          8              14     168
Birth       ki0047075b-MAL-ED          NEPAL                          9              11     168
Birth       ki0047075b-MAL-ED          NEPAL                          10             14     168
Birth       ki0047075b-MAL-ED          NEPAL                          11             16     168
Birth       ki0047075b-MAL-ED          NEPAL                          12             10     168
Birth       ki0047075b-MAL-ED          PERU                           1              37     279
Birth       ki0047075b-MAL-ED          PERU                           2              20     279
Birth       ki0047075b-MAL-ED          PERU                           3              23     279
Birth       ki0047075b-MAL-ED          PERU                           4              20     279
Birth       ki0047075b-MAL-ED          PERU                           5              26     279
Birth       ki0047075b-MAL-ED          PERU                           6              15     279
Birth       ki0047075b-MAL-ED          PERU                           7              23     279
Birth       ki0047075b-MAL-ED          PERU                           8              19     279
Birth       ki0047075b-MAL-ED          PERU                           9              22     279
Birth       ki0047075b-MAL-ED          PERU                           10             24     279
Birth       ki0047075b-MAL-ED          PERU                           11             31     279
Birth       ki0047075b-MAL-ED          PERU                           12             19     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              24     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              18     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             38     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              10     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             16     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              4      88
Birth       ki1000108-IRC              INDIA                          1              31     343
Birth       ki1000108-IRC              INDIA                          2              23     343
Birth       ki1000108-IRC              INDIA                          3              24     343
Birth       ki1000108-IRC              INDIA                          4              19     343
Birth       ki1000108-IRC              INDIA                          5              15     343
Birth       ki1000108-IRC              INDIA                          6              26     343
Birth       ki1000108-IRC              INDIA                          7              31     343
Birth       ki1000108-IRC              INDIA                          8              36     343
Birth       ki1000108-IRC              INDIA                          9              24     343
Birth       ki1000108-IRC              INDIA                          10             33     343
Birth       ki1000108-IRC              INDIA                          11             38     343
Birth       ki1000108-IRC              INDIA                          12             43     343
Birth       ki1000109-EE               PAKISTAN                       1               0       1
Birth       ki1000109-EE               PAKISTAN                       2               0       1
Birth       ki1000109-EE               PAKISTAN                       3               0       1
Birth       ki1000109-EE               PAKISTAN                       4               0       1
Birth       ki1000109-EE               PAKISTAN                       5               0       1
Birth       ki1000109-EE               PAKISTAN                       6               0       1
Birth       ki1000109-EE               PAKISTAN                       7               0       1
Birth       ki1000109-EE               PAKISTAN                       8               0       1
Birth       ki1000109-EE               PAKISTAN                       9               0       1
Birth       ki1000109-EE               PAKISTAN                       10              0       1
Birth       ki1000109-EE               PAKISTAN                       11              0       1
Birth       ki1000109-EE               PAKISTAN                       12              1       1
Birth       ki1000109-ResPak           PAKISTAN                       1               1       6
Birth       ki1000109-ResPak           PAKISTAN                       2               0       6
Birth       ki1000109-ResPak           PAKISTAN                       3               0       6
Birth       ki1000109-ResPak           PAKISTAN                       4               1       6
Birth       ki1000109-ResPak           PAKISTAN                       5               2       6
Birth       ki1000109-ResPak           PAKISTAN                       6               1       6
Birth       ki1000109-ResPak           PAKISTAN                       7               1       6
Birth       ki1000109-ResPak           PAKISTAN                       8               0       6
Birth       ki1000109-ResPak           PAKISTAN                       9               0       6
Birth       ki1000109-ResPak           PAKISTAN                       10              0       6
Birth       ki1000109-ResPak           PAKISTAN                       11              0       6
Birth       ki1000109-ResPak           PAKISTAN                       12              0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              16     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              19     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             15     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              0      28
Birth       ki1101329-Keneba           GAMBIA                         1             144    1423
Birth       ki1101329-Keneba           GAMBIA                         2             138    1423
Birth       ki1101329-Keneba           GAMBIA                         3             155    1423
Birth       ki1101329-Keneba           GAMBIA                         4              95    1423
Birth       ki1101329-Keneba           GAMBIA                         5              99    1423
Birth       ki1101329-Keneba           GAMBIA                         6              84    1423
Birth       ki1101329-Keneba           GAMBIA                         7              65    1423
Birth       ki1101329-Keneba           GAMBIA                         8             118    1423
Birth       ki1101329-Keneba           GAMBIA                         9             118    1423
Birth       ki1101329-Keneba           GAMBIA                         10            169    1423
Birth       ki1101329-Keneba           GAMBIA                         11            109    1423
Birth       ki1101329-Keneba           GAMBIA                         12            129    1423
Birth       ki1114097-CMIN             BANGLADESH                     1               0       8
Birth       ki1114097-CMIN             BANGLADESH                     2               2       8
Birth       ki1114097-CMIN             BANGLADESH                     3               0       8
Birth       ki1114097-CMIN             BANGLADESH                     4               0       8
Birth       ki1114097-CMIN             BANGLADESH                     5               1       8
Birth       ki1114097-CMIN             BANGLADESH                     6               0       8
Birth       ki1114097-CMIN             BANGLADESH                     7               0       8
Birth       ki1114097-CMIN             BANGLADESH                     8               1       8
Birth       ki1114097-CMIN             BANGLADESH                     9               1       8
Birth       ki1114097-CMIN             BANGLADESH                     10              1       8
Birth       ki1114097-CMIN             BANGLADESH                     11              2       8
Birth       ki1114097-CMIN             BANGLADESH                     12              0       8
Birth       ki1114097-CMIN             BRAZIL                         1              13     111
Birth       ki1114097-CMIN             BRAZIL                         2               7     111
Birth       ki1114097-CMIN             BRAZIL                         3              12     111
Birth       ki1114097-CMIN             BRAZIL                         4               9     111
Birth       ki1114097-CMIN             BRAZIL                         5               5     111
Birth       ki1114097-CMIN             BRAZIL                         6               6     111
Birth       ki1114097-CMIN             BRAZIL                         7               4     111
Birth       ki1114097-CMIN             BRAZIL                         8              12     111
Birth       ki1114097-CMIN             BRAZIL                         9               8     111
Birth       ki1114097-CMIN             BRAZIL                         10             14     111
Birth       ki1114097-CMIN             BRAZIL                         11             11     111
Birth       ki1114097-CMIN             BRAZIL                         12             10     111
Birth       ki1114097-CMIN             PERU                           1               1      10
Birth       ki1114097-CMIN             PERU                           2               1      10
Birth       ki1114097-CMIN             PERU                           3               2      10
Birth       ki1114097-CMIN             PERU                           4               3      10
Birth       ki1114097-CMIN             PERU                           5               0      10
Birth       ki1114097-CMIN             PERU                           6               0      10
Birth       ki1114097-CMIN             PERU                           7               0      10
Birth       ki1114097-CMIN             PERU                           8               1      10
Birth       ki1114097-CMIN             PERU                           9               2      10
Birth       ki1114097-CMIN             PERU                           10              0      10
Birth       ki1114097-CMIN             PERU                           11              0      10
Birth       ki1114097-CMIN             PERU                           12              0      10
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
Birth       ki1119695-PROBIT           BELARUS                        1             822   13824
Birth       ki1119695-PROBIT           BELARUS                        2             799   13824
Birth       ki1119695-PROBIT           BELARUS                        3             941   13824
Birth       ki1119695-PROBIT           BELARUS                        4             969   13824
Birth       ki1119695-PROBIT           BELARUS                        5             942   13824
Birth       ki1119695-PROBIT           BELARUS                        6            1020   13824
Birth       ki1119695-PROBIT           BELARUS                        7            1287   13824
Birth       ki1119695-PROBIT           BELARUS                        8            1306   13824
Birth       ki1119695-PROBIT           BELARUS                        9            1324   13824
Birth       ki1119695-PROBIT           BELARUS                        10           1489   13824
Birth       ki1119695-PROBIT           BELARUS                        11           1383   13824
Birth       ki1119695-PROBIT           BELARUS                        12           1542   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1233   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2             957   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3            1077   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             922   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5             929   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6            1048   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7            1096   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8            1187   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9            1246   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10            980   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11           1103   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12           1138   12916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            1449   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2            1279   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            1559   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4            1129   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             778   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             825   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7             909   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8            1217   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9            1528   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10           1659   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11           1664   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12           1713   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             115     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             133     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             138     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             100     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              72     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              65     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              27     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              27     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              6     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0     683
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              31     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              43     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              37     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              39     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              17     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             29     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             25     368
6 months    ki1000108-IRC              INDIA                          1              38     408
6 months    ki1000108-IRC              INDIA                          2              28     408
6 months    ki1000108-IRC              INDIA                          3              27     408
6 months    ki1000108-IRC              INDIA                          4              21     408
6 months    ki1000108-IRC              INDIA                          5              22     408
6 months    ki1000108-IRC              INDIA                          6              37     408
6 months    ki1000108-IRC              INDIA                          7              36     408
6 months    ki1000108-IRC              INDIA                          8              44     408
6 months    ki1000108-IRC              INDIA                          9              25     408
6 months    ki1000108-IRC              INDIA                          10             38     408
6 months    ki1000108-IRC              INDIA                          11             40     408
6 months    ki1000108-IRC              INDIA                          12             52     408
6 months    ki1000109-EE               PAKISTAN                       1              92     376
6 months    ki1000109-EE               PAKISTAN                       2              67     376
6 months    ki1000109-EE               PAKISTAN                       3              43     376
6 months    ki1000109-EE               PAKISTAN                       4              16     376
6 months    ki1000109-EE               PAKISTAN                       5               0     376
6 months    ki1000109-EE               PAKISTAN                       6               0     376
6 months    ki1000109-EE               PAKISTAN                       7               0     376
6 months    ki1000109-EE               PAKISTAN                       8               0     376
6 months    ki1000109-EE               PAKISTAN                       9               0     376
6 months    ki1000109-EE               PAKISTAN                       10              4     376
6 months    ki1000109-EE               PAKISTAN                       11             70     376
6 months    ki1000109-EE               PAKISTAN                       12             84     376
6 months    ki1000109-ResPak           PAKISTAN                       1               9     235
6 months    ki1000109-ResPak           PAKISTAN                       2              11     235
6 months    ki1000109-ResPak           PAKISTAN                       3              20     235
6 months    ki1000109-ResPak           PAKISTAN                       4              21     235
6 months    ki1000109-ResPak           PAKISTAN                       5              45     235
6 months    ki1000109-ResPak           PAKISTAN                       6              42     235
6 months    ki1000109-ResPak           PAKISTAN                       7              26     235
6 months    ki1000109-ResPak           PAKISTAN                       8              31     235
6 months    ki1000109-ResPak           PAKISTAN                       9              20     235
6 months    ki1000109-ResPak           PAKISTAN                       10              4     235
6 months    ki1000109-ResPak           PAKISTAN                       11              1     235
6 months    ki1000109-ResPak           PAKISTAN                       12              5     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              83    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              74    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              64    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              96    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             122    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             162    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             173    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            149    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            119    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            118    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              24     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              63     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              62     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             28     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             34     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              52     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              43     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              35     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             51     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             142    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             153    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             143    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             199    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             183    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            208    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            172    2028
6 months    ki1101329-Keneba           GAMBIA                         1             210    2089
6 months    ki1101329-Keneba           GAMBIA                         2             187    2089
6 months    ki1101329-Keneba           GAMBIA                         3             220    2089
6 months    ki1101329-Keneba           GAMBIA                         4             143    2089
6 months    ki1101329-Keneba           GAMBIA                         5             144    2089
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
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6             121     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7             218     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8             223     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0     563
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
6 months    ki1114097-CMIN             BANGLADESH                     11             26     243
6 months    ki1114097-CMIN             BANGLADESH                     12             28     243
6 months    ki1114097-CMIN             BRAZIL                         1              11     108
6 months    ki1114097-CMIN             BRAZIL                         2               6     108
6 months    ki1114097-CMIN             BRAZIL                         3              12     108
6 months    ki1114097-CMIN             BRAZIL                         4               9     108
6 months    ki1114097-CMIN             BRAZIL                         5               5     108
6 months    ki1114097-CMIN             BRAZIL                         6               7     108
6 months    ki1114097-CMIN             BRAZIL                         7               4     108
6 months    ki1114097-CMIN             BRAZIL                         8              12     108
6 months    ki1114097-CMIN             BRAZIL                         9               7     108
6 months    ki1114097-CMIN             BRAZIL                         10             15     108
6 months    ki1114097-CMIN             BRAZIL                         11             11     108
6 months    ki1114097-CMIN             BRAZIL                         12              9     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             102     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              57     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              67     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              47     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              56     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              38     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              39     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              55     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9             116     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10            100     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             74     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             98     849
6 months    ki1114097-CMIN             PERU                           1              42     636
6 months    ki1114097-CMIN             PERU                           2              60     636
6 months    ki1114097-CMIN             PERU                           3              67     636
6 months    ki1114097-CMIN             PERU                           4              61     636
6 months    ki1114097-CMIN             PERU                           5              54     636
6 months    ki1114097-CMIN             PERU                           6              54     636
6 months    ki1114097-CMIN             PERU                           7              51     636
6 months    ki1114097-CMIN             PERU                           8              73     636
6 months    ki1114097-CMIN             PERU                           9              50     636
6 months    ki1114097-CMIN             PERU                           10             50     636
6 months    ki1114097-CMIN             PERU                           11             34     636
6 months    ki1114097-CMIN             PERU                           12             40     636
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
6 months    ki1119695-PROBIT           BELARUS                        1             975   15757
6 months    ki1119695-PROBIT           BELARUS                        2             933   15757
6 months    ki1119695-PROBIT           BELARUS                        3            1066   15757
6 months    ki1119695-PROBIT           BELARUS                        4            1098   15757
6 months    ki1119695-PROBIT           BELARUS                        5            1111   15757
6 months    ki1119695-PROBIT           BELARUS                        6            1115   15757
6 months    ki1119695-PROBIT           BELARUS                        7            1463   15757
6 months    ki1119695-PROBIT           BELARUS                        8            1473   15757
6 months    ki1119695-PROBIT           BELARUS                        9            1509   15757
6 months    ki1119695-PROBIT           BELARUS                        10           1689   15757
6 months    ki1119695-PROBIT           BELARUS                        11           1588   15757
6 months    ki1119695-PROBIT           BELARUS                        12           1737   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             794    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             586    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             730    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             634    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             606    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             642    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             634    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             746    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             747    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            599    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            762    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            784    8264
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            1342   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2            1154   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3            1409   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4            1178   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5            1110   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6            1198   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7            1255   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8            1515   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9            1621   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10           1665   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11           1759   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12           1578   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             542    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             962    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             736    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             601    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             439    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             518    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             521    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             386    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            128    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0    4833
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              44     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              39     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             43     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             25     372
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              43     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              39     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              35     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              27     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              26     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             42     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             46     428
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
24 months   ki1101329-Keneba           GAMBIA                         1             171    1726
24 months   ki1101329-Keneba           GAMBIA                         2             167    1726
24 months   ki1101329-Keneba           GAMBIA                         3             170    1726
24 months   ki1101329-Keneba           GAMBIA                         4             114    1726
24 months   ki1101329-Keneba           GAMBIA                         5             122    1726
24 months   ki1101329-Keneba           GAMBIA                         6              92    1726
24 months   ki1101329-Keneba           GAMBIA                         7              83    1726
24 months   ki1101329-Keneba           GAMBIA                         8             158    1726
24 months   ki1101329-Keneba           GAMBIA                         9             160    1726
24 months   ki1101329-Keneba           GAMBIA                         10            200    1726
24 months   ki1101329-Keneba           GAMBIA                         11            140    1726
24 months   ki1101329-Keneba           GAMBIA                         12            149    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6              90     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7             206     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8             202     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0     498
24 months   ki1114097-CMIN             BANGLADESH                     1              26     243
24 months   ki1114097-CMIN             BANGLADESH                     2              24     243
24 months   ki1114097-CMIN             BANGLADESH                     3              18     243
24 months   ki1114097-CMIN             BANGLADESH                     4              22     243
24 months   ki1114097-CMIN             BANGLADESH                     5              16     243
24 months   ki1114097-CMIN             BANGLADESH                     6               8     243
24 months   ki1114097-CMIN             BANGLADESH                     7              15     243
24 months   ki1114097-CMIN             BANGLADESH                     8              18     243
24 months   ki1114097-CMIN             BANGLADESH                     9              20     243
24 months   ki1114097-CMIN             BANGLADESH                     10             24     243
24 months   ki1114097-CMIN             BANGLADESH                     11             25     243
24 months   ki1114097-CMIN             BANGLADESH                     12             27     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              54     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              51     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              45     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              49     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              65     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             43     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             29     551
24 months   ki1114097-CMIN             PERU                           1              13     429
24 months   ki1114097-CMIN             PERU                           2              39     429
24 months   ki1114097-CMIN             PERU                           3              51     429
24 months   ki1114097-CMIN             PERU                           4              47     429
24 months   ki1114097-CMIN             PERU                           5              33     429
24 months   ki1114097-CMIN             PERU                           6              40     429
24 months   ki1114097-CMIN             PERU                           7              41     429
24 months   ki1114097-CMIN             PERU                           8              34     429
24 months   ki1114097-CMIN             PERU                           9              39     429
24 months   ki1114097-CMIN             PERU                           10             33     429
24 months   ki1114097-CMIN             PERU                           11             32     429
24 months   ki1114097-CMIN             PERU                           12             27     429
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
24 months   ki1119695-PROBIT           BELARUS                        1             248    3971
24 months   ki1119695-PROBIT           BELARUS                        2             213    3971
24 months   ki1119695-PROBIT           BELARUS                        3             312    3971
24 months   ki1119695-PROBIT           BELARUS                        4             332    3971
24 months   ki1119695-PROBIT           BELARUS                        5             296    3971
24 months   ki1119695-PROBIT           BELARUS                        6             268    3971
24 months   ki1119695-PROBIT           BELARUS                        7             371    3971
24 months   ki1119695-PROBIT           BELARUS                        8             337    3971
24 months   ki1119695-PROBIT           BELARUS                        9             380    3971
24 months   ki1119695-PROBIT           BELARUS                        10            392    3971
24 months   ki1119695-PROBIT           BELARUS                        11            376    3971
24 months   ki1119695-PROBIT           BELARUS                        12            446    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              47     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              61     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              55     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              46     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              50     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              44     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              27     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              30     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             20     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             37     423
24 months   ki1148112-LCNI-5           MALAWI                         1              39     563
24 months   ki1148112-LCNI-5           MALAWI                         2              30     563
24 months   ki1148112-LCNI-5           MALAWI                         3              19     563
24 months   ki1148112-LCNI-5           MALAWI                         4              28     563
24 months   ki1148112-LCNI-5           MALAWI                         5              30     563
24 months   ki1148112-LCNI-5           MALAWI                         6              24     563
24 months   ki1148112-LCNI-5           MALAWI                         7              45     563
24 months   ki1148112-LCNI-5           MALAWI                         8              70     563
24 months   ki1148112-LCNI-5           MALAWI                         9              63     563
24 months   ki1148112-LCNI-5           MALAWI                         10             89     563
24 months   ki1148112-LCNI-5           MALAWI                         11             62     563
24 months   ki1148112-LCNI-5           MALAWI                         12             64     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             665    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             561    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             714    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             504    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             364    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             609    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             672    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             618    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             800    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            874    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11           1039    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12           1183    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             781    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             851    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             649    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             563    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             418    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             484    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             503    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             364    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            122    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0    4735


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/4e075f18-4cb7-4bbf-bcd4-828c22c0771c/6f196dce-ad04-45c9-9c25-940f5c5ab196/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4e075f18-4cb7-4bbf-bcd4-828c22c0771c/6f196dce-ad04-45c9-9c25-940f5c5ab196/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4e075f18-4cb7-4bbf-bcd4-828c22c0771c/6f196dce-ad04-45c9-9c25-940f5c5ab196/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.8042105   -1.2156448   -0.3927762
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9204348   -1.3786843   -0.4621853
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0059091   -1.4854540   -0.5263642
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.2461905   -1.6981294   -0.7942516
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.7740000   -1.2879349   -0.2600651
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.8200000   -1.1830453   -0.4569547
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.2773684   -1.6638859   -0.8908510
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.6569565   -1.1378929   -0.1760202
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.4136842   -1.8726110   -0.9547575
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.9941667   -1.4388695   -0.5494639
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.9460000   -1.4029497   -0.4890503
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.7453846   -1.1643596   -0.3264096
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1120000   -0.9913394    0.7673394
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.3661111   -0.3430545    1.0752768
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.4447059   -0.0012969    0.8907086
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.7188889    0.0378265    1.3999512
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.5100000    0.0243420    0.9956580
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.1450000   -0.8259064    1.1159064
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    NA                 0.6868750    0.0931168    1.2806332
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.5117647   -0.0240676    1.0475970
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.3946429    0.0364121    0.7528736
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.4794118   -0.1191032    1.0779267
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.2350000   -0.3373269    0.8073269
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.2480000   -0.5197861    1.0157861
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.4787500   -1.8919877   -1.0655123
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -0.9737500   -1.3857743   -0.5617257
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -1.3742857   -1.7599069   -0.9886645
Birth       ki0047075b-MAL-ED          INDIA                          4                    NA                -0.8684615   -1.4245586   -0.3123644
Birth       ki0047075b-MAL-ED          INDIA                          5                    NA                -0.9942857   -1.8433430   -0.1452284
Birth       ki0047075b-MAL-ED          INDIA                          6                    NA                -1.6077778   -1.9547552   -1.2608003
Birth       ki0047075b-MAL-ED          INDIA                          7                    NA                -1.1785000   -1.6255217   -0.7314783
Birth       ki0047075b-MAL-ED          INDIA                          8                    NA                -0.4205882   -0.9133029    0.0721264
Birth       ki0047075b-MAL-ED          INDIA                          9                    NA                -0.9468421   -1.4450709   -0.4486133
Birth       ki0047075b-MAL-ED          INDIA                          10                   NA                -1.0177273   -1.4846767   -0.5507778
Birth       ki0047075b-MAL-ED          INDIA                          11                   NA                -1.1420000   -1.4242755   -0.8597245
Birth       ki0047075b-MAL-ED          INDIA                          12                   NA                -0.5571429   -1.0704566   -0.0438291
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.9887500   -1.5646082   -0.4128918
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.9930769   -1.3544916   -0.6316623
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.7816667   -1.2743433   -0.2889901
Birth       ki0047075b-MAL-ED          NEPAL                          4                    NA                -1.0975000   -1.5555981   -0.6394019
Birth       ki0047075b-MAL-ED          NEPAL                          5                    NA                -1.2931579   -1.6881861   -0.8981297
Birth       ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.7410000   -1.1004335   -0.3815665
Birth       ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.8458824   -1.2941085   -0.3976562
Birth       ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.9878571   -1.6806934   -0.2950209
Birth       ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.8781818   -1.3920057   -0.3643579
Birth       ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.6764286   -0.9946163   -0.3582409
Birth       ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.8062500   -1.0719254   -0.5405746
Birth       ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.4060000   -0.9776674    0.1656674
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.2681081   -0.4869443   -0.0492719
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.0865000   -0.4615162    0.2885162
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -0.0095652   -0.3821075    0.3629771
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                -0.0125000   -0.3894327    0.3644327
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                 0.0692308   -0.3130712    0.4515328
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                 0.1726667   -0.2346228    0.5799562
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.0891304   -0.5010883    0.3228275
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.0042105   -0.4765661    0.4681450
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.0663636   -0.5243904    0.3916631
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                 0.0062500   -0.3157374    0.3282374
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -0.2632258   -0.6705655    0.1441139
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                -0.0631579   -0.4216111    0.2952953
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0803704   -0.5306318    0.3698910
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.1037500   -0.6072906    0.3997906
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0975000   -0.6765518    0.4815518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.3015385   -1.0081187    0.4050417
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.0235714   -0.5553044    0.5081615
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.0027778   -0.5605295    0.5660851
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0354545   -0.4564378    0.3855287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.0655556   -0.3567232    0.4878343
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.1852381   -0.1971618    0.5676380
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.0821429   -0.3395793    0.5038650
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0875000   -0.6331752    0.4581752
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.2013158   -0.5757397    0.1731081
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2064516   -0.8241587    0.4112554
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.5304348   -1.0966348    0.0357652
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.8991667   -1.7172346   -0.0810988
Birth       ki1000108-IRC              INDIA                          4                    NA                -1.5168421   -2.1488141   -0.8848701
Birth       ki1000108-IRC              INDIA                          5                    NA                -1.7686667   -2.5910096   -0.9463238
Birth       ki1000108-IRC              INDIA                          6                    NA                -1.3615385   -2.0604069   -0.6626700
Birth       ki1000108-IRC              INDIA                          7                    NA                -1.0848387   -1.6762039   -0.4934735
Birth       ki1000108-IRC              INDIA                          8                    NA                -1.3869444   -1.9532683   -0.8206205
Birth       ki1000108-IRC              INDIA                          9                    NA                -1.0200000   -1.8383304   -0.2016696
Birth       ki1000108-IRC              INDIA                          10                   NA                -0.9990909   -1.5750645   -0.4231173
Birth       ki1000108-IRC              INDIA                          11                   NA                -0.8418421   -1.3887010   -0.2949832
Birth       ki1000108-IRC              INDIA                          12                   NA                -0.9930233   -1.4781855   -0.5078611
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.7258333   -1.3422847   -0.1093819
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.3258333   -0.8032076    0.1515409
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.0544444   -0.7037504    0.5948615
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.2614286   -1.0748296    0.5519725
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.8678571   -1.4843622   -0.2513520
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.9028571   -1.5234099   -0.2823044
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.5466667   -1.1218384    0.0285051
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.2400000   -0.9120191    0.4320191
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.0810526   -0.6278542    0.4657489
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.3772222   -1.2198192    0.4653747
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                 0.3794118    0.0277570    0.7310666
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                 0.3853333   -0.0184354    0.7891020
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 1.6522917    1.3963199    1.9082634
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                 1.7894928    1.5221155    2.0568700
Birth       ki1101329-Keneba           GAMBIA                         3                    NA                 1.9665161    1.7307993    2.2022330
Birth       ki1101329-Keneba           GAMBIA                         4                    NA                 2.0929474    1.8089227    2.3769720
Birth       ki1101329-Keneba           GAMBIA                         5                    NA                 1.7560606    1.4471956    2.0649256
Birth       ki1101329-Keneba           GAMBIA                         6                    NA                 1.8461905    1.5026467    2.1897343
Birth       ki1101329-Keneba           GAMBIA                         7                    NA                 1.6750769    1.3176405    2.0325134
Birth       ki1101329-Keneba           GAMBIA                         8                    NA                 1.4290678    1.1448780    1.7132576
Birth       ki1101329-Keneba           GAMBIA                         9                    NA                 1.0941525    0.8029109    1.3853941
Birth       ki1101329-Keneba           GAMBIA                         10                   NA                 1.7809467    1.5124493    2.0494442
Birth       ki1101329-Keneba           GAMBIA                         11                   NA                 1.7443119    1.4556804    2.0329434
Birth       ki1101329-Keneba           GAMBIA                         12                   NA                 1.6206977    1.3626819    1.8787135
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1690146   -1.4966485   -0.8413807
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                -1.0295745   -1.3092874   -0.7498615
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                -1.1446334   -1.3836143   -0.9056524
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                -1.1578844   -1.4015761   -0.9141928
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                -1.2828981   -1.5311792   -1.0346170
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                -1.1569902   -1.4031679   -0.9108124
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                -1.2233178   -1.4576814   -0.9889542
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                -1.1419985   -1.3813975   -0.9025995
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                -1.0952190   -1.3648894   -0.8255486
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                -1.1767696   -1.3823877   -0.9711516
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                -1.0925452   -1.2723451   -0.9127453
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                -1.1003243   -1.3137363   -0.8869122
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.3814193   -0.4662692   -0.2965694
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.2605434   -0.3557697   -0.1653170
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.4062674   -0.4953487   -0.3171861
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.3699892   -0.4634498   -0.2765285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.4436491   -0.5447969   -0.3425013
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.6468130   -0.7391124   -0.5545135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.7014964   -0.7932813   -0.6097114
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.5918534   -0.6769325   -0.5067743
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.5203210   -0.5996200   -0.4410221
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.6488878   -0.7401429   -0.5576326
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.6228558   -0.7088943   -0.5368174
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.5471441   -0.6328194   -0.4614688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5869013   -0.6452823   -0.5285203
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.6550117   -0.7134074   -0.5966160
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7468505   -0.8017075   -0.6919936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.7188220   -0.7787619   -0.6588820
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.7137789   -0.7875431   -0.6400148
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.7578667   -0.8308068   -0.6849265
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.7025523   -0.7726306   -0.6324739
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.7880115   -0.8503266   -0.7256964
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.8367277   -0.8977953   -0.7756602
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.8012960   -0.8573426   -0.7452493
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.7528425   -0.8046604   -0.7010247
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6258144   -0.6791645   -0.5724642
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2487963   -0.5625286    0.0649360
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.2715000   -0.6349913    0.0919913
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.2852174   -0.7009443    0.1305095
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.2563636   -0.7989919    0.2862646
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                 0.0058333   -0.4929885    0.5046552
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                 0.3175000   -0.3657220    1.0007220
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.4611111   -1.0307408    0.1085186
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                 0.0672464   -0.1732043    0.3076970
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.3009091   -0.6823517    0.0805336
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.1856818   -0.6985485    0.3271848
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                 0.0840625   -0.3325470    0.5006720
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                 0.0474359   -0.2959340    0.3908058
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.2021111    0.5863808    1.8178414
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.6317391    0.0440669    1.2194114
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.9668750    0.4209185    1.5128315
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 1.4457576    0.5816265    2.3098886
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 1.2361905    0.8861078    1.5862732
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.4587500   -0.3490427    1.2665427
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.3878125    0.9394944    1.8361306
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.9479167    0.4964088    1.3994245
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.8623333    0.4501800    1.2744867
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 1.1940833    0.6658682    1.7222984
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.7111111    0.0820527    1.3401696
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.6223611    0.0765317    1.1681905
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7060526   -1.1237577   -0.2883476
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6475926   -1.1187992   -0.1763860
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.8241667   -1.2605872   -0.3877461
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.6000000   -0.9023512   -0.2976488
6 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -0.4275000   -1.1069082    0.2519082
6 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -0.7815789   -1.2812660   -0.2818919
6 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -0.7924638   -1.2358131   -0.3491144
6 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -0.3337121   -0.7635561    0.0961318
6 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -0.6753333   -0.9693555   -0.3813112
6 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -0.6069872   -0.9948727   -0.2191016
6 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -1.0965333   -1.4608687   -0.7321980
6 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -0.6978070   -1.1020555   -0.2935585
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0264167   -0.5253676    0.4725343
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.1065789   -0.2668805    0.4800384
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.4694118   -0.0924232    1.0312467
6 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0193182   -0.4868524    0.4482160
6 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.0832500   -0.5266076    0.3601076
6 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                 0.1211111   -0.3610731    0.6032953
6 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                 0.0088889   -0.5938155    0.6115933
6 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0195833   -0.3686137    0.3294470
6 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                 0.2088542   -0.1944739    0.6121822
6 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                 0.4462698    0.0813999    0.8111398
6 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.0250000   -0.3209650    0.2709650
6 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.2845098   -0.2763530    0.8453726
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 1.0158772    0.6706667    1.3610877
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.2289474    0.7804147    1.6774801
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.4650000    0.9937021    1.9362979
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                 0.8465000    0.4294616    1.2635384
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                 0.8372222    0.3859217    1.2885227
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                 1.0500000    0.7014799    1.3985201
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                 1.0154545    0.5456235    1.4852856
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                 1.2084375    0.7071909    1.7096841
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                 0.9850000    0.5928798    1.3771202
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                 1.1238333    0.6845089    1.5631577
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                 1.1500000    0.8136499    1.4863501
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                 0.7776316    0.5063834    1.0488798
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.6709211    0.2021621    1.1396800
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.9426812    0.5948492    1.2905131
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.6626667    0.1843381    1.1409952
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.7726923    0.2444865    1.3008981
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.3676923   -0.2827090    1.0180936
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.2625000   -0.2276681    0.7526681
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.6350000    0.1346447    1.1353553
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.9235185    0.1518260    1.6952110
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.3074074   -0.0851279    0.6999427
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.0741026   -0.4273482    0.5755533
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.7250000    0.0290666    1.4209334
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.3965238    0.0696558    0.7233918
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3402500   -0.1626152    0.8431152
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.6275000    0.3466050    0.9083950
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4986111    0.0884088    0.9088134
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.6838889   -0.1552299    1.5230077
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.5828125    0.0887667    1.0768583
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.2736842   -0.2554580    0.8028264
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.6245652    0.2279568    1.0211736
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                 1.3143056    0.8046495    1.8239616
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.4654762   -0.0252713    0.9562236
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.7836364    0.4870967    1.0801761
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.2639506   -0.1834728    0.7113741
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2716111   -0.0716809    0.6149031
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7164216   -1.2434657   -0.1893775
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.6296875   -1.4989217    0.2395467
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.6195161   -0.9721374   -0.2668949
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.3396899   -0.7911701    0.1117903
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.3894118   -0.8896601    0.1108365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.1206306   -0.5838824    0.3426211
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                 0.2313675   -0.3300149    0.7927500
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.2841176   -0.8704031    0.3021678
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.4559524   -0.9082773   -0.0036275
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.7431034   -1.2672568   -0.2189501
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.9584127   -1.2744567   -0.6423687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -1.2740667   -1.8410029   -0.7071304
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.4518421   -0.8938773   -0.0098069
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.4610714   -1.0287366    0.1065938
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.5869753   -1.0480233   -0.1259273
6 months    ki1000108-IRC              INDIA                          4                    NA                -0.2330952   -0.7636272    0.2974367
6 months    ki1000108-IRC              INDIA                          5                    NA                 0.0495455   -0.6212307    0.7203217
6 months    ki1000108-IRC              INDIA                          6                    NA                -0.7106757   -1.1526801   -0.2686713
6 months    ki1000108-IRC              INDIA                          7                    NA                -0.7382407   -1.2291028   -0.2473787
6 months    ki1000108-IRC              INDIA                          8                    NA                -0.7268939   -1.1278540   -0.3259339
6 months    ki1000108-IRC              INDIA                          9                    NA                -0.5356000   -1.0022676   -0.0689324
6 months    ki1000108-IRC              INDIA                          10                   NA                -0.7657895   -1.1080768   -0.4235021
6 months    ki1000108-IRC              INDIA                          11                   NA                -0.6060417   -0.9908141   -0.2212692
6 months    ki1000108-IRC              INDIA                          12                   NA                -0.8277564   -1.2656631   -0.3898497
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.0686207   -1.3169904   -0.8202509
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.8159036   -1.0512770   -0.5805303
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.8260811   -1.2104965   -0.4416657
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.7492187   -0.9952647   -0.5031728
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.5396552   -0.8941001   -0.1852102
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.4227083   -0.6635856   -0.1818311
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.1605738   -0.4601943    0.1390467
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.3796605   -0.6158309   -0.1434901
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.4785549   -0.5656331   -0.3914767
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.8208054   -1.0423239   -0.5992869
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.1681513   -1.3839961   -0.9523065
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.8945763   -1.1452184   -0.6439341
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.7528846   -1.0177035   -0.4880658
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.5095833   -0.7806391   -0.2385275
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.5348333   -0.8135860   -0.2560806
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.4333532   -0.7628873   -0.1038190
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.5221429   -0.8541664   -0.1901193
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.1690504   -0.4707960    0.1326952
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.0169231   -0.3519294    0.3180832
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.4646190   -0.7633308   -0.1659073
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.1458730   -0.4857294    0.1939834
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.5650397   -0.8875284   -0.2425510
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.4936833   -0.7705187   -0.2168480
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.5105882   -0.8083253   -0.2128512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1654108   -0.3711643    0.0403427
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0322148   -0.1651544    0.2295839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.3003452    0.1288430    0.4718475
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.3900109    0.2068640    0.5731578
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.3228020    0.1437129    0.5018911
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.1631235   -0.0450445    0.3712916
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.1543504   -0.0080482    0.3167490
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                 0.0499162   -0.1217961    0.2216286
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0510565   -0.1315348    0.2336477
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.0502163   -0.1142288    0.2146615
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.1525128   -0.3175802    0.0125546
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1186240   -0.3034313    0.0661832
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1830508   -0.3318136   -0.0342880
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.1717900   -0.3252137   -0.0183662
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.2574397   -0.4160521   -0.0988274
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.3270478   -0.5262677   -0.1278280
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                -0.3417407   -0.5412216   -0.1422599
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                -0.2551808   -0.4838521   -0.0265095
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                -0.2169547   -0.4932620    0.0593526
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                -0.2638611   -0.4302145   -0.0975077
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                -0.0663846   -0.2441854    0.1114162
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                 0.0634086   -0.0861483    0.2129655
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                -0.0055945   -0.1757358    0.1645468
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                -0.3627118   -0.5218206   -0.2036031
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.4269048   -0.7948039   -0.0590056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                 0.3126667   -0.1064428    0.7317761
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0860494   -0.5127069    0.3406082
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                 0.1300538   -0.2214521    0.4815597
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                 0.2671505   -0.0726640    0.6069650
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                -0.1600758   -0.5347109    0.2145594
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                -0.2440476   -0.5720307    0.0839355
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                -0.0655952   -0.4826157    0.3514252
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                -0.2404167   -0.5695200    0.0886867
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                 0.0066667   -0.3231393    0.3364726
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                -0.2920139   -0.6032552    0.0192274
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                -0.3466667   -0.7064441    0.0131108
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.6932692   -1.0741594   -0.3123790
6 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.8032609   -1.1878700   -0.4186517
6 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -1.0250000   -1.4865274   -0.5634726
6 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.6000000   -1.1769467   -0.0230533
6 months    ki1114097-CMIN             BANGLADESH                     5                    NA                -0.0746078   -0.4411309    0.2919152
6 months    ki1114097-CMIN             BANGLADESH                     6                    NA                -0.5604167   -1.2487783    0.1279450
6 months    ki1114097-CMIN             BANGLADESH                     7                    NA                -0.2603333   -0.7292044    0.2085377
6 months    ki1114097-CMIN             BANGLADESH                     8                    NA                 0.3502941   -0.1820160    0.8826043
6 months    ki1114097-CMIN             BANGLADESH                     9                    NA                 0.0124167   -0.4332748    0.4581082
6 months    ki1114097-CMIN             BANGLADESH                     10                   NA                -1.0612500   -1.3107753   -0.8117247
6 months    ki1114097-CMIN             BANGLADESH                     11                   NA                -0.5952564   -1.0505584   -0.1399544
6 months    ki1114097-CMIN             BANGLADESH                     12                   NA                -1.0335714   -1.5524800   -0.5146628
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.3071242   -0.5070649   -0.1071835
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                 0.0242982   -0.2263612    0.2749577
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                 0.0061194   -0.3253568    0.3375956
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                 0.0235106   -0.3883057    0.4353270
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.2165179   -0.5049681    0.0719324
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                 0.0682895   -0.3123620    0.4489409
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -0.0714103   -0.4492715    0.3064510
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.1170909   -0.4081109    0.1739291
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                 0.1942672   -0.0201642    0.4086987
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                 0.0501667   -0.1556112    0.2559446
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                 0.1080405   -0.1453608    0.3614419
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -0.2434694   -0.4697252   -0.0172136
6 months    ki1114097-CMIN             PERU                           1                    NA                 1.1361508    0.8265122    1.4457894
6 months    ki1114097-CMIN             PERU                           2                    NA                 0.7586667    0.4457509    1.0715824
6 months    ki1114097-CMIN             PERU                           3                    NA                 0.6720398    0.3570764    0.9870032
6 months    ki1114097-CMIN             PERU                           4                    NA                 0.7164754    0.4453711    0.9875798
6 months    ki1114097-CMIN             PERU                           5                    NA                 0.4912654    0.1922656    0.7902653
6 months    ki1114097-CMIN             PERU                           6                    NA                 0.5220062    0.2229394    0.8210730
6 months    ki1114097-CMIN             PERU                           7                    NA                 0.7020588    0.4438508    0.9602668
6 months    ki1114097-CMIN             PERU                           8                    NA                 0.6480822    0.4057412    0.8904232
6 months    ki1114097-CMIN             PERU                           9                    NA                 0.5758000    0.2754221    0.8761779
6 months    ki1114097-CMIN             PERU                           10                   NA                 0.6126667    0.3079888    0.9173445
6 months    ki1114097-CMIN             PERU                           11                   NA                 0.4623529    0.0541933    0.8705126
6 months    ki1114097-CMIN             PERU                           12                   NA                 0.8127917    0.4138459    1.2117375
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9714000    0.4964769    1.4463231
6 months    ki1114097-CONTENT          PERU                           2                    NA                 1.0188241    0.5701238    1.4675243
6 months    ki1114097-CONTENT          PERU                           3                    NA                 1.0446000    0.6848116    1.4043884
6 months    ki1114097-CONTENT          PERU                           4                    NA                 1.0492544    0.7905442    1.3079646
6 months    ki1114097-CONTENT          PERU                           5                    NA                 1.4889286    0.9013397    2.0765174
6 months    ki1114097-CONTENT          PERU                           6                    NA                 0.9585385    0.5742118    1.3428652
6 months    ki1114097-CONTENT          PERU                           7                    NA                 1.3423631    1.0203930    1.6643332
6 months    ki1114097-CONTENT          PERU                           8                    NA                 0.9395652    0.6787283    1.2004021
6 months    ki1114097-CONTENT          PERU                           9                    NA                 1.0260000    0.7182917    1.3337083
6 months    ki1114097-CONTENT          PERU                           10                   NA                 0.8422143    0.3400118    1.3444168
6 months    ki1114097-CONTENT          PERU                           11                   NA                 1.0446111    0.4760018    1.6132205
6 months    ki1114097-CONTENT          PERU                           12                   NA                 0.9105000    0.4178343    1.4031657
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5863590    0.4599548    0.7127632
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                 0.5614416    0.4458586    0.6770245
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.6006801    0.5079437    0.6934165
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.6094262    0.5257213    0.6931312
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.5648515    0.4722768    0.6574262
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.6119552    0.5231395    0.7007708
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.5800205    0.4991808    0.6608602
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.5777325    0.5061089    0.6493561
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.5614745    0.4747547    0.6481942
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.5536027    0.4713333    0.6358721
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.5713728    0.4572768    0.6854688
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                 0.5864335    0.5009773    0.6718897
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3777834    0.2905562    0.4650106
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.2780546    0.1826441    0.3734651
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                 0.3913014    0.2967772    0.4858255
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                 0.3231625    0.2349715    0.4113535
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                 0.2967987    0.2015718    0.3920255
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                 0.1981620    0.0999955    0.2963285
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                 0.2686435    0.1740475    0.3632395
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                 0.3063271    0.2177476    0.3949066
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                 0.3133066    0.2271897    0.3994234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                 0.2597746    0.1690803    0.3504690
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                 0.2559252    0.1728763    0.3389741
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                 0.3496684    0.2674336    0.4319031
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.4670588    0.2120394    0.7220782
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                 0.7819565    0.5364199    1.0274931
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                 0.2796154   -0.0694004    0.6286312
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                 0.7369231    0.4172988    1.0565473
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                 0.6825000    0.3844115    0.9805885
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                 0.3850000   -0.0318047    0.8018047
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                 0.4209836    0.1968405    0.6451268
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                 0.2883871    0.0620862    0.5146880
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                 0.4733333    0.2649378    0.6817289
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                 0.4849630    0.3023016    0.6676243
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                 0.2418095    0.0511736    0.4324455
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                 0.4552632    0.2362230    0.6743033
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6707899   -0.7287580   -0.6128217
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5747574   -0.6445619   -0.5049528
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.5695955   -0.6309423   -0.5082486
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.5919525   -0.6520149   -0.5318900
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.5107297   -0.5763225   -0.4451369
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.4867362   -0.5564994   -0.4169731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.5078367   -0.5714392   -0.4442341
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.5907789   -0.6477644   -0.5337934
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.5866872   -0.6448461   -0.5285284
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.6524264   -0.7073696   -0.5974832
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.6836157   -0.7339576   -0.6332737
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6185361   -0.6749357   -0.5621365
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.6367857   -1.1790404   -0.0945311
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9302941   -1.3014072   -0.5591811
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9544737   -1.3267594   -0.5821880
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.8347500   -1.2694423   -0.4000577
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.0607895   -1.4805306   -0.6410483
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.5285714   -1.2016574    0.1445146
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.9375000   -1.3721795   -0.5028205
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.8688636   -1.1406399   -0.5970874
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.1025000   -1.5127162   -0.6922838
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.6257500   -1.0438963   -0.2076037
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.9490909   -1.4552672   -0.4429146
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.4374074   -0.7531360   -0.1216788
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.4230000   -0.1839261    1.0299261
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.3096875   -0.3433506    0.9627256
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.4678571   -0.3177124    1.2534267
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.6425000   -0.5367726    1.8217726
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.1366667   -0.3328909    0.6062243
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.2033333   -1.0054707    0.5988040
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.6400000    0.9619226    2.3180774
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.7157692   -0.0580575    1.4895960
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.1557407   -0.3006388    0.6121202
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.8692857    0.1481871    1.5903843
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0500000   -0.5660913    0.6660913
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.6722727    0.0738617    1.2706837
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0823684   -1.4501847   -0.7145522
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6094444   -1.0558146   -0.1630743
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9089474   -1.1982799   -0.6196148
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.6557143   -1.1745895   -0.1368390
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -1.2500000   -1.6219013   -0.8780987
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.2344444   -1.8361043   -0.6327846
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -0.9886957   -1.3431945   -0.6341968
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -0.7428571   -1.1089218   -0.3767925
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -1.1983333   -1.4880284   -0.9086383
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -0.8875000   -1.2263265   -0.5486735
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -1.2956250   -1.5698942   -1.0213558
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -0.6255263   -0.9585037   -0.2925490
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.2700000   -0.6054933    0.0654933
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.2523529   -0.5953019    0.0905960
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.1323529   -0.4983283    0.2336224
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.3697727   -0.7565669    0.0170214
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.7578947   -1.1186675   -0.3971220
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.5252778   -0.8975322   -0.1530234
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.3850000   -0.8049811    0.0349811
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.6035417   -1.0068933   -0.2001900
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.6170000   -0.9634606   -0.2705394
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.1330000   -0.3576966    0.0916966
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.3833333   -0.7747758    0.0081091
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.0015625   -0.5297741    0.5266491
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0325000   -0.3049655    0.3699655
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.2632353   -0.0886973    0.6151679
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.2826667   -0.2141604    0.7794937
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.3095455   -0.1158568    0.7349477
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                 0.1168421   -0.2167722    0.4504564
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                 0.1463636   -0.6670608    0.9597881
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -0.1076667   -0.4543289    0.2389956
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                 0.0033333   -0.6011979    0.6078646
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                 0.0083333   -0.2760019    0.2926686
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                 0.2214286   -0.1727172    0.6155743
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                 0.2061905   -0.1638485    0.5762295
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                 0.0763333   -0.2750479    0.4277146
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2127941   -0.1639171    0.5895053
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.4475000    0.1239562    0.7710438
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.6178571    0.2649948    0.9707195
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.5512500   -0.1135761    1.2160761
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.3154167   -0.0069234    0.6377568
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.5303125    0.1325839    0.9280411
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.6788636    0.2313168    1.1264105
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.6312500   -0.0063834    1.2688834
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.5136842    0.1686509    0.8587175
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.2180000   -0.1713757    0.6073757
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.6415217    0.2489505    1.0340929
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.2254839   -0.0527570    0.5037247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5136667   -1.0978790    0.0705456
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.2675000   -0.6706670    0.1356670
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0361111   -0.3857715    0.4579937
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1075000   -0.8336556    0.6186556
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.1530556   -0.0888787    0.3949898
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0277778   -0.2645235    0.2089680
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.3232609   -0.0709147    0.7174365
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0077273   -0.7394279    0.7239733
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0822222   -0.3156428    0.4800872
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.3156667   -0.0426198    0.6739532
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.0804167   -0.2770298    0.4378631
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2521154   -0.1340731    0.6383038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5502941   -0.8570488   -0.2435395
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.4466667   -0.8971683    0.0038349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.2944086   -0.5880137   -0.0008035
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.3505682   -0.6445927   -0.0565437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.5581481   -0.9379537   -0.1783426
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.6310360   -0.9244241   -0.3376479
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -0.4737607   -0.8952343   -0.0522871
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.5994118   -1.0407506   -0.1580729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.6264286   -0.9303610   -0.3224961
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.8289080   -1.1571242   -0.5006919
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.5694186   -0.8324125   -0.3064247
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -0.9226000   -1.2826003   -0.5625997
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.5281140   -0.8309595   -0.2252685
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.5079167   -0.8724258   -0.1434075
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.5063580   -0.7705413   -0.2421748
24 months   ki1000108-IRC              INDIA                          4                    NA                -0.8365079   -1.1259166   -0.5470993
24 months   ki1000108-IRC              INDIA                          5                    NA                -0.9840152   -1.3777291   -0.5903012
24 months   ki1000108-IRC              INDIA                          6                    NA                -0.8320270   -1.1445304   -0.5195237
24 months   ki1000108-IRC              INDIA                          7                    NA                -0.7324074   -1.0048157   -0.4599991
24 months   ki1000108-IRC              INDIA                          8                    NA                -0.8911364   -1.1998781   -0.5823946
24 months   ki1000108-IRC              INDIA                          9                    NA                -0.8592593   -1.2538492   -0.4646694
24 months   ki1000108-IRC              INDIA                          10                   NA                -0.7902252   -1.1222192   -0.4582312
24 months   ki1000108-IRC              INDIA                          11                   NA                -0.7643750   -1.0527119   -0.4760381
24 months   ki1000108-IRC              INDIA                          12                   NA                -0.7401282   -0.9703039   -0.5099525
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.9762403   -1.2426522   -0.7098284
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.9476852   -1.2477882   -0.6475821
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.9287179   -1.2999520   -0.5574839
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -1.1785539   -1.4933256   -0.8637822
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -1.0776667   -1.3587793   -0.7965540
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.6725253   -0.9675238   -0.3775267
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.7286765   -1.1290139   -0.3283390
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.9662346   -1.3686890   -0.5637801
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.9301923   -1.3077029   -0.5526817
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.9060606   -1.3661747   -0.4459465
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.8408532   -1.1641600   -0.5175463
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.8172645   -1.0834219   -0.5511071
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.7296442   -0.8643423   -0.5949462
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.4740649   -0.6157706   -0.3323591
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.6130392   -0.7609553   -0.4651231
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.6535599   -0.8361515   -0.4709684
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                -0.7315301   -0.8841582   -0.5789019
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                -0.7300543   -0.9441449   -0.5159638
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                -1.0341687   -1.2564286   -0.8119087
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                -1.1099177   -1.2536335   -0.9662019
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                -1.0015021   -1.1568427   -0.8461615
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                -0.9642438   -1.1129007   -0.8155869
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                -0.8275655   -1.0066657   -0.6484653
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                -0.8638523   -1.0153212   -0.7123835
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.6700000   -0.9208588   -0.4191412
24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.8214583   -1.0600668   -0.5828499
24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.6422222   -0.9621661   -0.3222783
24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.8220455   -1.2341968   -0.4098941
24 months   ki1114097-CMIN             BANGLADESH                     5                    NA                -0.4512500   -0.8600615   -0.0424385
24 months   ki1114097-CMIN             BANGLADESH                     6                    NA                -0.4312500   -0.5829128   -0.2795872
24 months   ki1114097-CMIN             BANGLADESH                     7                    NA                -0.8410000   -1.2461525   -0.4358475
24 months   ki1114097-CMIN             BANGLADESH                     8                    NA                -0.7866667   -1.2125299   -0.3608034
24 months   ki1114097-CMIN             BANGLADESH                     9                    NA                -1.0170000   -1.4846793   -0.5493207
24 months   ki1114097-CMIN             BANGLADESH                     10                   NA                -1.1343750   -1.4846345   -0.7841155
24 months   ki1114097-CMIN             BANGLADESH                     11                   NA                -1.0770000   -1.4989690   -0.6550310
24 months   ki1114097-CMIN             BANGLADESH                     12                   NA                -1.0627778   -1.4036694   -0.7218861
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0852083   -0.1855019    0.3559186
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                 0.1191463   -0.1228401    0.3611328
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -0.0687963   -0.3176726    0.1800800
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -0.0157843   -0.3280472    0.2964786
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.1717778   -0.4837980    0.1402424
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                -0.0746552   -0.4770081    0.3276978
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -0.0552500   -0.3744671    0.2639671
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.1984694   -0.5124627    0.1155239
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -0.0921282   -0.3828407    0.1985843
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -0.4106140   -0.6373731   -0.1838550
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -0.3343023   -0.6769098    0.0083051
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -0.6322414   -0.9842960   -0.2801868
24 months   ki1114097-CMIN             PERU                           1                    NA                 0.5926923    0.2480363    0.9373483
24 months   ki1114097-CMIN             PERU                           2                    NA                 0.4900000    0.2246176    0.7553824
24 months   ki1114097-CMIN             PERU                           3                    NA                 0.5180719    0.2629260    0.7732178
24 months   ki1114097-CMIN             PERU                           4                    NA                 0.4526596    0.2061087    0.6992105
24 months   ki1114097-CMIN             PERU                           5                    NA                 0.3339899    0.0697309    0.5982489
24 months   ki1114097-CMIN             PERU                           6                    NA                 0.6338333    0.3186041    0.9490625
24 months   ki1114097-CMIN             PERU                           7                    NA                 1.0109756    0.7976430    1.2243082
24 months   ki1114097-CMIN             PERU                           8                    NA                 0.8602941    0.5961077    1.1244805
24 months   ki1114097-CMIN             PERU                           9                    NA                 0.6196154    0.3742033    0.8650274
24 months   ki1114097-CMIN             PERU                           10                   NA                 0.9271212    0.7370523    1.1171901
24 months   ki1114097-CMIN             PERU                           11                   NA                 0.7554687    0.4400520    1.0708855
24 months   ki1114097-CMIN             PERU                           12                   NA                 0.6435185    0.3556555    0.9313815
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.1114286   -0.5762275    0.3533704
24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.6796429    0.1597581    1.1995276
24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.8027273    0.3323900    1.2730645
24 months   ki1114097-CONTENT          PERU                           4                    NA                 0.3666667    0.0566366    0.6766967
24 months   ki1114097-CONTENT          PERU                           5                    NA                 0.6307143    0.0245301    1.2368985
24 months   ki1114097-CONTENT          PERU                           6                    NA                 0.0109091   -0.2737113    0.2955294
24 months   ki1114097-CONTENT          PERU                           7                    NA                 0.5819565    0.2885694    0.8753437
24 months   ki1114097-CONTENT          PERU                           8                    NA                 0.4664286   -0.0303215    0.9631787
24 months   ki1114097-CONTENT          PERU                           9                    NA                 0.6561765    0.3795361    0.9328168
24 months   ki1114097-CONTENT          PERU                           10                   NA                 0.8645455    0.4925103    1.2365806
24 months   ki1114097-CONTENT          PERU                           11                   NA                 0.6783333    0.0608782    1.2957885
24 months   ki1114097-CONTENT          PERU                           12                   NA                 0.7465000    0.1042573    1.3887427
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6263710    0.3802329    0.8725091
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                 0.7428404    0.5078260    0.9778548
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                 0.7031891    0.4702384    0.9361398
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                 0.7050301    0.4885489    0.9215113
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                 0.7621622    0.6554296    0.8688947
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                 0.5892910   -0.1549853    1.3335674
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                 0.6144654    0.4162616    0.8126693
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                 0.7049505    0.4939231    0.9159780
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                 0.6663553    0.4553300    0.8773805
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                 0.7066199    0.5338235    0.8794163
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                 0.7371144    0.6196285    0.8546002
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                 0.6771525    0.5379065    0.8163985
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.2264103   -0.5243262    0.0715057
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -0.0758333   -0.3251494    0.1734828
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -0.9094737   -1.2529318   -0.5660156
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                 0.2596429   -0.0783190    0.5976047
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                 0.0276667   -0.3757531    0.4310864
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                 0.0462500   -0.3898222    0.4823222
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                 0.1095556   -0.1228701    0.3419812
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -0.0362857   -0.2730986    0.2005272
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                 0.1471429   -0.0696857    0.3639714
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                 0.0271348   -0.1750964    0.2293661
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -0.0314516   -0.3277824    0.2648792
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -0.3107812   -0.5374185   -0.0841440
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0283158   -1.1012255   -0.9554061
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.1166310   -1.1998081   -1.0334540
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2470028   -1.3271860   -1.1668196
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.3425198   -1.4358126   -1.2492271
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.3610440   -1.4666004   -1.2554875
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.4710181   -1.5474693   -1.3945668
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.4517708   -1.5376518   -1.3658899
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.5210194   -1.5990899   -1.4429490
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.4355500   -1.5121031   -1.3589969
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.3782723   -1.4451988   -1.3113458
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.2783061   -1.3419916   -1.2146206
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.0986391   -1.1566514   -1.0406267


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5151425   -0.5409938   -0.4892911
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7240996   -0.7439385   -0.7042607
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           NA                   NA                 0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3047138    0.2786437    0.3307839
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           NA                   NA                 0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.1162243   -0.7320739    0.4996254
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.2016986   -0.8335542    0.4301571
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.4419799   -1.0531485    0.1691886
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0302105   -0.6281262    0.6885473
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0157895   -0.5644971    0.5329182
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.4731579   -1.0376700    0.0913542
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.1472540   -0.4856583    0.7801663
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.6094737   -1.2258274    0.0068801
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1899561   -0.7957934    0.4158811
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.1417895   -0.7566726    0.4730936
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0588259   -0.5283863    0.6460382
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.4781111   -0.6515586    1.6077808
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.5567059   -0.4292739    1.5426857
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.8308889   -0.2813538    1.9431315
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.6220000   -0.3825404    1.6265404
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.2570000   -1.0529225    1.5669225
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.7988750   -0.2621559    1.8599059
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.6237647   -0.4059702    1.6534996
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.5066429   -0.4428660    1.4561517
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.5914118   -0.4722883    1.6551119
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.3470000   -0.7021882    1.3961882
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.3600000   -0.8073617    1.5273617
Birth       ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          2                    1                  0.5050000   -0.0785490    1.0885490
Birth       ki0047075b-MAL-ED          INDIA                          3                    1                  0.1044643   -0.4607517    0.6696803
Birth       ki0047075b-MAL-ED          INDIA                          4                    1                  0.6102885   -0.0825386    1.3031155
Birth       ki0047075b-MAL-ED          INDIA                          5                    1                  0.4844643   -0.4598152    1.4287437
Birth       ki0047075b-MAL-ED          INDIA                          6                    1                 -0.1290278   -0.6686190    0.4105635
Birth       ki0047075b-MAL-ED          INDIA                          7                    1                  0.3002500   -0.3085141    0.9090141
Birth       ki0047075b-MAL-ED          INDIA                          8                    1                  1.0581618    0.4150964    1.7012272
Birth       ki0047075b-MAL-ED          INDIA                          9                    1                  0.5319079   -0.1153921    1.1792079
Birth       ki0047075b-MAL-ED          INDIA                          10                   1                  0.4610227   -0.1625213    1.0845668
Birth       ki0047075b-MAL-ED          INDIA                          11                   1                  0.3367500   -0.1636946    0.8371946
Birth       ki0047075b-MAL-ED          INDIA                          12                   1                  0.9216071    0.2626258    1.5805884
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0043269   -0.6842043    0.6755505
Birth       ki0047075b-MAL-ED          NEPAL                          3                    1                  0.2070833   -0.5507708    0.9649375
Birth       ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.1087500   -0.8445941    0.6270941
Birth       ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.3044079   -1.0027344    0.3939187
Birth       ki0047075b-MAL-ED          NEPAL                          6                    1                  0.2477500   -0.4310763    0.9265763
Birth       ki0047075b-MAL-ED          NEPAL                          7                    1                  0.1428676   -0.5868716    0.8726069
Birth       ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0008929   -0.9000149    0.9018006
Birth       ki0047075b-MAL-ED          NEPAL                          9                    1                  0.1105682   -0.6612010    0.8823374
Birth       ki0047075b-MAL-ED          NEPAL                          10                   1                  0.3123214   -0.3455966    0.9702394
Birth       ki0047075b-MAL-ED          NEPAL                          11                   1                  0.1825000   -0.4516893    0.8166893
Birth       ki0047075b-MAL-ED          NEPAL                          12                   1                  0.5827500   -0.2286786    1.3941786
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                  0.1816081   -0.2525882    0.6158044
Birth       ki0047075b-MAL-ED          PERU                           3                    1                  0.2585429   -0.1735185    0.6906043
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.2556081   -0.1802446    0.6914608
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.3373389   -0.1031655    0.7778432
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.4407748   -0.0215822    0.9031318
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.1789777   -0.2874970    0.6454523
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.2638976   -0.2566877    0.7844829
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.2017445   -0.3058752    0.7093642
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.2743581   -0.1149556    0.6636718
Birth       ki0047075b-MAL-ED          PERU                           11                   1                  0.0048823   -0.4575190    0.4672836
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.2049502   -0.2150236    0.6249240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0233796   -0.6988709    0.6521116
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0171296   -0.7506392    0.7163799
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.2211681   -1.0590171    0.6166809
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.0567989   -0.6399616    0.7535595
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.0831481   -0.6379971    0.8042934
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0449158   -0.5714950    0.6613266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1459259   -0.4713704    0.7632222
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.2656085   -0.3251242    0.8563411
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.1625132   -0.4544024    0.7794288
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0071296   -0.7145876    0.7003283
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1209454   -0.7065465    0.4646556
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2                    1                 -0.3239832   -1.1619238    0.5139574
Birth       ki1000108-IRC              INDIA                          3                    1                 -0.6927151   -1.7177990    0.3323689
Birth       ki1000108-IRC              INDIA                          4                    1                 -1.3103905   -2.1941046   -0.4266764
Birth       ki1000108-IRC              INDIA                          5                    1                 -1.5622151   -2.5907139   -0.5337162
Birth       ki1000108-IRC              INDIA                          6                    1                 -1.1550868   -2.0878136   -0.2223601
Birth       ki1000108-IRC              INDIA                          7                    1                 -0.8783871   -1.7335332   -0.0232410
Birth       ki1000108-IRC              INDIA                          8                    1                 -1.1804928   -2.0185171   -0.3424685
Birth       ki1000108-IRC              INDIA                          9                    1                 -0.8135484   -1.8388418    0.2117450
Birth       ki1000108-IRC              INDIA                          10                   1                 -0.7926393   -1.6372147    0.0519361
Birth       ki1000108-IRC              INDIA                          11                   1                 -0.6353905   -1.4603854    0.1896045
Birth       ki1000108-IRC              INDIA                          12                   1                 -0.7865716   -1.5720297   -0.0011136
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.4000000   -0.2704769    1.0704769
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.6713889   -0.0468668    1.3896445
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.4644048   -0.5901997    1.5190092
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.1420238   -1.1527718    0.8687242
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.1770238   -1.2489966    0.8949490
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.1791667   -0.7533447    1.1116781
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.4858333   -0.5595852    1.5312518
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.6447807   -0.2594844    1.5490458
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.3486111   -0.5757121    1.2729344
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  1.1052451    0.3707708    1.8397194
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                  1.1111667    0.3348486    1.8874848
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  0.1372011   -0.2329504    0.5073526
Birth       ki1101329-Keneba           GAMBIA                         3                    1                  0.3142245   -0.0337467    0.6621957
Birth       ki1101329-Keneba           GAMBIA                         4                    1                  0.4406557    0.0583057    0.8230057
Birth       ki1101329-Keneba           GAMBIA                         5                    1                  0.1037689   -0.2973783    0.5049162
Birth       ki1101329-Keneba           GAMBIA                         6                    1                  0.1938988   -0.2345214    0.6223190
Birth       ki1101329-Keneba           GAMBIA                         7                    1                  0.0227853   -0.4168536    0.4624241
Birth       ki1101329-Keneba           GAMBIA                         8                    1                 -0.2232239   -0.6056966    0.1592489
Birth       ki1101329-Keneba           GAMBIA                         9                    1                 -0.5581391   -0.9458803   -0.1703980
Birth       ki1101329-Keneba           GAMBIA                         10                   1                  0.1286551   -0.2423064    0.4996166
Birth       ki1101329-Keneba           GAMBIA                         11                   1                  0.0920203   -0.2937642    0.4778047
Birth       ki1101329-Keneba           GAMBIA                         12                   1                 -0.0315940   -0.3950409    0.3318529
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                  0.1394401   -0.0132630    0.2921432
Birth       ki1119695-PROBIT           BELARUS                        3                    1                  0.0243812   -0.1762650    0.2250275
Birth       ki1119695-PROBIT           BELARUS                        4                    1                  0.0111302   -0.2293467    0.2516070
Birth       ki1119695-PROBIT           BELARUS                        5                    1                 -0.1138835   -0.3684869    0.1407199
Birth       ki1119695-PROBIT           BELARUS                        6                    1                  0.0120244   -0.3077789    0.3318277
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0543032   -0.3583726    0.2497662
Birth       ki1119695-PROBIT           BELARUS                        8                    1                  0.0270161   -0.2995245    0.3535568
Birth       ki1119695-PROBIT           BELARUS                        9                    1                  0.0737956   -0.2598782    0.4074693
Birth       ki1119695-PROBIT           BELARUS                        10                   1                 -0.0077550   -0.2836292    0.2681191
Birth       ki1119695-PROBIT           BELARUS                        11                   1                  0.0764694   -0.1702584    0.3231972
Birth       ki1119695-PROBIT           BELARUS                        12                   1                  0.0686903   -0.1908349    0.3282156
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.1208759   -0.0066684    0.2484202
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0248481   -0.1478724    0.0981762
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0114301   -0.1148013    0.1376616
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0622298   -0.1942539    0.0697944
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.2653937   -0.3907679   -0.1400195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3200770   -0.4450730   -0.1950811
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.2104341   -0.3305921   -0.0902761
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.1389017   -0.2550388   -0.0227646
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.2674685   -0.3920758   -0.1428611
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.2414365   -0.3622758   -0.1205973
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.1657248   -0.2863057   -0.0451439
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0681104   -0.1481947    0.0119739
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1599492   -0.2407832   -0.0791152
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.1319207   -0.2148204   -0.0490209
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.1268776   -0.2214781   -0.0322771
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.1709654   -0.2618578   -0.0800729
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.1156509   -0.2060618   -0.0252401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.2011102   -0.2868155   -0.1154049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.2498264   -0.3311697   -0.1684831
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.2143947   -0.2933134   -0.1354759
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1659412   -0.2406241   -0.0912584
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0389130   -0.1145038    0.0366777
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0227037   -0.5028640    0.4574566
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0364211   -0.5572443    0.4844021
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0075673   -0.6343635    0.6192288
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.2546296   -0.3346506    0.8439099
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.5662963   -0.1855150    1.3181076
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.2123148   -0.8626270    0.4379974
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.3160427   -0.0792351    0.7113204
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0521128   -0.5460019    0.4417763
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0631145   -0.5381011    0.6643301
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.3328588   -0.1886692    0.8543868
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.2962322   -0.1688816    0.7613460
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.5703720   -1.4215373    0.2807934
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.2352361   -1.0581531    0.5876808
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2436465   -0.8174126    1.3047055
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0340794   -0.6742156    0.7423743
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.7433611   -1.7590642    0.2723420
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.1857014   -0.5759501    0.9473528
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.2541944   -1.0177278    0.5093389
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.3397778   -1.0807192    0.4011636
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0080278   -0.8192830    0.8032274
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.4910000   -1.3712490    0.3892490
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.5797500   -1.4025826    0.2430826
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.0584600   -0.5712328    0.6881529
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.1181140   -0.7222170    0.4859889
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.1060526   -0.4095962    0.6217015
6 months    ki0047075b-MAL-ED          INDIA                          5                    1                  0.2785526   -0.5189892    1.0760944
6 months    ki0047075b-MAL-ED          INDIA                          6                    1                 -0.0755263   -0.7268055    0.5757529
6 months    ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0864111   -0.6955385    0.5227162
6 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.3723405   -0.2270286    0.9717096
6 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.0307193   -0.4800903    0.5415289
6 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.0990655   -0.4709632    0.6690941
6 months    ki0047075b-MAL-ED          INDIA                          11                   1                 -0.3904807   -0.9447529    0.1637915
6 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.0082456   -0.5730412    0.5895324
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.1329956   -0.4902411    0.7562323
6 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.4958284   -0.2555773    1.2472341
6 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0070985   -0.6766707    0.6908676
6 months    ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0568333   -0.7243046    0.6106380
6 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.1475278   -0.5463408    0.8413964
6 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0353056   -0.7471295    0.8177406
6 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0068333   -0.6020790    0.6157457
6 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.2352708   -0.4063097    0.8768513
6 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.4726865   -0.1454414    1.0908144
6 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0014167   -0.5787103    0.5815436
6 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.3109265   -0.4397526    1.0616056
6 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.2130702   -0.3529262    0.7790665
6 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.4491228   -0.1350792    1.0333248
6 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.1693772   -0.7107562    0.3720019
6 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.1786550   -0.7468472    0.3895372
6 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0341228   -0.4564244    0.5246700
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0004226   -0.5834419    0.5825966
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.1925603   -0.4160598    0.8011804
6 months    ki0047075b-MAL-ED          PERU                           9                    1                 -0.0308772   -0.5533028    0.4915484
6 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.1079561   -0.4507712    0.6666834
6 months    ki0047075b-MAL-ED          PERU                           11                   1                  0.1341228   -0.3478540    0.6160996
6 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.2382456   -0.6772739    0.2007827
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2717601   -0.3119539    0.8554741
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0082544   -0.6779806    0.6614718
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1017713   -0.6044415    0.8079840
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.3032287   -1.1049499    0.4984925
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.4084211   -1.0866539    0.2698118
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0359211   -0.7215525    0.6497104
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.2525975   -0.6503114    1.1555063
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.3635136   -0.9749210    0.2478937
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.5968185   -1.2832497    0.0896127
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0540789   -0.7850029    0.8931608
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.2743972   -0.8458670    0.2970725
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2872500   -0.2887495    0.8632495
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1583611   -0.4905914    0.8073136
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3436389   -0.6346217    1.3218995
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.2425625   -0.4623876    0.9475126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0665658   -0.7965417    0.6634102
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2843152   -0.3561312    0.9247617
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.9740556    0.2580788    1.6900323
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.1252262   -0.5774163    0.8278687
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.4433864   -0.1404023    1.0271750
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0762994   -0.7493976    0.5967988
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0686389   -0.6775090    0.5402312
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0867341   -0.9298010    1.1032691
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0969054   -0.5372217    0.7310326
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.3767316   -0.3172495    1.0707128
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.3270098   -0.3996427    1.0536623
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.5957909   -0.1059053    1.2974872
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.9477891    0.1777724    1.7178058
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.4323039   -0.3560527    1.2206605
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.2604692   -0.4340618    0.9550002
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.0266819   -0.7699936    0.7166298
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.2419911   -0.8565310    0.3725488
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.5576451   -1.3317202    0.2164300
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 -0.0092293   -0.7287006    0.7102420
6 months    ki1000108-IRC              INDIA                          3                    1                 -0.1351332   -0.7738510    0.5035846
6 months    ki1000108-IRC              INDIA                          4                    1                  0.2187469   -0.4718031    0.9092969
6 months    ki1000108-IRC              INDIA                          5                    1                  0.5013876   -0.3019404    1.3047156
6 months    ki1000108-IRC              INDIA                          6                    1                 -0.2588336   -0.8839440    0.3662769
6 months    ki1000108-IRC              INDIA                          7                    1                 -0.2863986   -0.9469595    0.3741623
6 months    ki1000108-IRC              INDIA                          8                    1                 -0.2750518   -0.8718467    0.3217430
6 months    ki1000108-IRC              INDIA                          9                    1                 -0.0837579   -0.7265438    0.5590280
6 months    ki1000108-IRC              INDIA                          10                   1                 -0.3139474   -0.8730142    0.2451195
6 months    ki1000108-IRC              INDIA                          11                   1                 -0.1541996   -0.7402414    0.4318422
6 months    ki1000108-IRC              INDIA                          12                   1                 -0.3759143   -0.9981341    0.2463055
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2527171    0.0477537    0.4576805
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.2425396   -0.1461884    0.6312676
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.3194019    0.1432241    0.4955798
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.5289655   -0.0164531    1.0743842
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.6459124    0.3961216    0.8957031
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.9080469    0.7216764    1.0944174
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.6889602    0.4010393    0.9768811
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.5900658    0.3928660    0.7872656
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.2478153    0.0721246    0.4235060
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 -0.0995306   -0.3708917    0.1718305
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.1740444   -0.0589044    0.4069933
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.2433013   -0.1356450    0.6222475
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.2180513   -0.1664381    0.6025407
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.3195314   -0.1032235    0.7422864
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.2307418   -0.1939566    0.6554401
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.5838342    0.1823627    0.9853058
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.7359615    0.3089273    1.1629958
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.2882656   -0.1109308    0.6874620
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.6070116    0.1761620    1.0378612
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.1878449   -0.2294415    0.6051314
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.2592013   -0.1239003    0.6423029
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.2422964   -0.1561711    0.6407639
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1976256   -0.0874868    0.4827379
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.4657560    0.1978988    0.7336133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.5554217    0.2799634    0.8308800
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.4882128    0.2154356    0.7609900
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.3285343    0.0358427    0.6212260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3197612    0.0576395    0.5818829
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2153270   -0.0526648    0.4833188
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2164673   -0.0586219    0.4915564
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.2156271   -0.0477674    0.4790217
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0128980   -0.2508855    0.2766815
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0467868   -0.2297783    0.3233518
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0112608   -0.2024428    0.2249644
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 -0.0743889   -0.2918475    0.1430697
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 -0.1439970   -0.3926311    0.1046370
6 months    ki1101329-Keneba           GAMBIA                         5                    1                 -0.1586899   -0.4075332    0.0901533
6 months    ki1101329-Keneba           GAMBIA                         6                    1                 -0.0721300   -0.3449320    0.2006720
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 -0.0339039   -0.3477129    0.2799051
6 months    ki1101329-Keneba           GAMBIA                         8                    1                 -0.0808103   -0.3039780    0.1423574
6 months    ki1101329-Keneba           GAMBIA                         9                    1                  0.1166662   -0.1151602    0.3484927
6 months    ki1101329-Keneba           GAMBIA                         10                   1                  0.2464594    0.0355147    0.4574041
6 months    ki1101329-Keneba           GAMBIA                         11                   1                  0.1774563   -0.0485491    0.4034617
6 months    ki1101329-Keneba           GAMBIA                         12                   1                 -0.1796610   -0.3974820    0.0381599
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.7395714    0.1818954    1.2972475
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.3408554   -0.2225152    0.9042260
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.5569585    0.0481303    1.0657868
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                  0.6940553    0.1932323    1.1948783
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                  0.2668290   -0.2582437    0.7919017
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                  0.1828571   -0.3100147    0.6757290
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                  0.3613095   -0.1947983    0.9174173
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                  0.1864881   -0.3071300    0.6801062
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                  0.4335714   -0.0605154    0.9276582
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                  0.1348909   -0.3470022    0.6167840
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                  0.0802381   -0.4343390    0.5948152
6 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     2                    1                 -0.1099916   -0.6512878    0.4313045
6 months    ki1114097-CMIN             BANGLADESH                     3                    1                 -0.3317308   -0.9301327    0.2666712
6 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.0932692   -0.5980663    0.7846048
6 months    ki1114097-CMIN             BANGLADESH                     5                    1                  0.6186614    0.0900628    1.1472600
6 months    ki1114097-CMIN             BANGLADESH                     6                    1                  0.1328526   -0.6538616    0.9195667
6 months    ki1114097-CMIN             BANGLADESH                     7                    1                  0.4329359   -0.1711481    1.0370198
6 months    ki1114097-CMIN             BANGLADESH                     8                    1                  1.0435633    0.3890166    1.6981101
6 months    ki1114097-CMIN             BANGLADESH                     9                    1                  0.7056859    0.1194110    1.2919608
6 months    ki1114097-CMIN             BANGLADESH                     10                   1                 -0.3679808   -0.8233270    0.0873655
6 months    ki1114097-CMIN             BANGLADESH                     11                   1                  0.0980128   -0.4956009    0.6916266
6 months    ki1114097-CMIN             BANGLADESH                     12                   1                 -0.3403022   -0.9839974    0.3033930
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                  0.3314224    0.0107880    0.6520569
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                  0.3132436   -0.0738646    0.7003517
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                  0.3306348   -0.1271522    0.7884219
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                  0.0906063   -0.2603635    0.4415762
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                  0.3754137   -0.0545536    0.8053809
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                  0.2357139   -0.1917851    0.6632129
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                  0.1900333   -0.1630516    0.5431182
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                  0.5013914    0.2082070    0.7945759
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                  0.3572908    0.0703748    0.6442069
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                  0.4151647    0.0923823    0.7379472
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                  0.0636548   -0.2382855    0.3655951
6 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           2                    1                 -0.3774841   -0.8177026    0.0627344
6 months    ki1114097-CMIN             PERU                           3                    1                 -0.4641110   -0.9057873   -0.0224347
6 months    ki1114097-CMIN             PERU                           4                    1                 -0.4196754   -0.8312257   -0.0081251
6 months    ki1114097-CMIN             PERU                           5                    1                 -0.6448854   -1.0753235   -0.2144472
6 months    ki1114097-CMIN             PERU                           6                    1                 -0.6141446   -1.0446292   -0.1836600
6 months    ki1114097-CMIN             PERU                           7                    1                 -0.4340920   -0.8372637   -0.0309203
6 months    ki1114097-CMIN             PERU                           8                    1                 -0.4880686   -0.8812673   -0.0948699
6 months    ki1114097-CMIN             PERU                           9                    1                 -0.5603508   -0.9917473   -0.1289543
6 months    ki1114097-CMIN             PERU                           10                   1                 -0.5234841   -0.9578856   -0.0890826
6 months    ki1114097-CMIN             PERU                           11                   1                 -0.6737979   -1.1861165   -0.1614792
6 months    ki1114097-CMIN             PERU                           12                   1                 -0.3233591   -0.8283678    0.1816496
6 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           2                    1                  0.0474241   -0.6059394    0.7007876
6 months    ki1114097-CONTENT          PERU                           3                    1                  0.0732000   -0.5226184    0.6690184
6 months    ki1114097-CONTENT          PERU                           4                    1                  0.0778544   -0.4629625    0.6186713
6 months    ki1114097-CONTENT          PERU                           5                    1                  0.5175286   -0.2379928    1.2730500
6 months    ki1114097-CONTENT          PERU                           6                    1                 -0.0128615   -0.6238108    0.5980877
6 months    ki1114097-CONTENT          PERU                           7                    1                  0.3709631   -0.2028110    0.9447372
6 months    ki1114097-CONTENT          PERU                           8                    1                 -0.0318348   -0.5736722    0.5100027
6 months    ki1114097-CONTENT          PERU                           9                    1                  0.0546000   -0.5112943    0.6204943
6 months    ki1114097-CONTENT          PERU                           10                   1                 -0.1291857   -0.8203871    0.5620156
6 months    ki1114097-CONTENT          PERU                           11                   1                  0.0732111   -0.6676455    0.8140677
6 months    ki1114097-CONTENT          PERU                           12                   1                 -0.0609000   -0.7452036    0.6234036
6 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 -0.0249174   -0.0974400    0.0476053
6 months    ki1119695-PROBIT           BELARUS                        3                    1                  0.0143211   -0.1004191    0.1290614
6 months    ki1119695-PROBIT           BELARUS                        4                    1                  0.0230673   -0.0949650    0.1410995
6 months    ki1119695-PROBIT           BELARUS                        5                    1                 -0.0215075   -0.1319500    0.0889350
6 months    ki1119695-PROBIT           BELARUS                        6                    1                  0.0255962   -0.1203858    0.1715782
6 months    ki1119695-PROBIT           BELARUS                        7                    1                 -0.0063385   -0.1439717    0.1312948
6 months    ki1119695-PROBIT           BELARUS                        8                    1                 -0.0086265   -0.1410658    0.1238129
6 months    ki1119695-PROBIT           BELARUS                        9                    1                 -0.0248845   -0.1488868    0.0991179
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0327563   -0.1522187    0.0867062
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0149862   -0.1485112    0.1185388
6 months    ki1119695-PROBIT           BELARUS                        12                   1                  0.0000745   -0.1164585    0.1166076
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0997288   -0.2290027    0.0295452
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0135180   -0.1151031    0.1421391
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.0546209   -0.1786622    0.0694203
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0809847   -0.2101231    0.0481537
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.1796214   -0.3109425   -0.0483003
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.1091398   -0.2378138    0.0195341
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0714563   -0.1957741    0.0528615
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0644768   -0.1870521    0.0580984
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.1180088   -0.2438422    0.0078247
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1218582   -0.2422978   -0.0014186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0281150   -0.1479947    0.0917646
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.3148977   -0.0391124    0.6689078
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 -0.1874434   -0.6197014    0.2448145
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                  0.2698643   -0.1390301    0.6787586
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                  0.2154412   -0.1768491    0.6077314
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0820588   -0.5706907    0.4065730
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 -0.0460752   -0.3855970    0.2934466
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 -0.1786717   -0.5196219    0.1622784
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                  0.0062745   -0.3230636    0.3356126
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.0179041   -0.2957837    0.3315920
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                 -0.2252493   -0.5436468    0.0931482
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 -0.0117957   -0.3479704    0.3243791
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0960325    0.0059555    0.1861095
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1011944    0.0181251    0.1842637
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0788374   -0.0009256    0.1586004
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.1600601    0.0731163    0.2470040
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1840536    0.0957000    0.2724073
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.1629532    0.0756520    0.2502544
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0800110    0.0002742    0.1597477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0841026    0.0016399    0.1665654
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0183634   -0.0607402    0.0974671
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0128258   -0.0865150    0.0608633
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0522537   -0.0254213    0.1299288
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.2935084   -0.9505967    0.3635799
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.3176880   -0.9754393    0.3400633
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.1979643   -0.8929445    0.4970159
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.4240038   -1.1097316    0.2617241
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.1082143   -0.7561264    0.9725550
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.3007143   -0.9956865    0.3942579
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.2320779   -0.8386275    0.3744717
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.4657143   -1.1456536    0.2142250
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0110357   -0.6737171    0.6957885
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.3123052   -1.0540967    0.4294863
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1993783   -0.4280965    0.8268531
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.1133125   -1.0048382    0.7782132
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0448571   -0.9478557    1.0375700
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2195000   -1.1067893    1.5457893
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.2863333   -1.0536948    0.4810281
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.6263333   -1.6322079    0.3795412
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                  1.2170000    0.3069735    2.1270265
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.2927692   -0.6906773    1.2762158
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.2672593   -1.0266284    0.4921099
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.4462857   -0.4962335    1.3888049
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.3730000   -1.2378282    0.4918282
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.2492727   -0.6030506    1.1015960
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.4729240   -0.1054661    1.0513141
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.1734211   -0.2945556    0.6413977
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.4266541   -0.2093650    1.0626733
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.1676316   -0.6906989    0.3554357
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                 -0.1520760   -0.8572593    0.5531072
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.0936728   -0.4171679    0.6045135
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.3395113   -0.1794223    0.8584449
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                 -0.1159649   -0.5841657    0.3522359
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.1948684   -0.3052238    0.6949606
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                 -0.2132566   -0.6720729    0.2455597
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.4568421   -0.0393058    0.9529900
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0176471   -0.4621130    0.4974071
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.1376471   -0.3588343    0.6341284
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0997727   -0.6117937    0.4122482
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.4878947   -0.9805535    0.0047640
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.2552778   -0.7564056    0.2458500
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1150000   -0.6525312    0.4225312
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.3335417   -0.8581828    0.1910994
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.3470000   -0.8292765    0.1352765
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                  0.1370000   -0.2667874    0.5407874
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.1133333   -0.6288747    0.4022081
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.2684375   -0.3573126    0.8941876
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.2307353   -0.2568501    0.7183207
24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.2501667   -0.3504331    0.8507664
24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.2770455   -0.2659555    0.8200464
24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0843421   -0.3901908    0.5588750
24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.1138636   -0.7667851    0.9945124
24 months   ki0047075b-MAL-ED          PERU                           7                    1                 -0.1401667   -0.6239617    0.3436284
24 months   ki0047075b-MAL-ED          PERU                           8                    1                 -0.0291667   -0.7215112    0.6631779
24 months   ki0047075b-MAL-ED          PERU                           9                    1                 -0.0241667   -0.4654483    0.4171150
24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.1889286   -0.3299489    0.7078060
24 months   ki0047075b-MAL-ED          PERU                           11                   1                  0.1736905   -0.3271207    0.6745016
24 months   ki0047075b-MAL-ED          PERU                           12                   1                  0.0438333   -0.4433542    0.5310209
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2347059   -0.2618743    0.7312861
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.4050630   -0.1110989    0.9212250
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.3384559   -0.4256809    1.1025927
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.1026225   -0.3931742    0.5984193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.3175184   -0.2302949    0.8653317
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.4660695   -0.1189172    1.0510563
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.4184559   -0.3221436    1.1590554
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.3008901   -0.2099516    0.8117318
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0052059   -0.5365734    0.5469851
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.4287276   -0.1153528    0.9728080
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0126898   -0.4556363    0.4810158
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2461667   -0.4636556    0.9559889
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.5497778   -0.1708393    1.2703948
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.4061667   -0.5258237    1.3381570
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.6667222    0.0343962    1.2990482
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.4858889   -0.1444702    1.1162480
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.8369275    0.1321734    1.5416817
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.5059394   -0.4303777    1.4422565
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.5958889   -0.1109354    1.3027132
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.8293333    0.1440062    1.5146604
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.5940833   -0.0908050    1.2789716
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.7657821    0.0654639    1.4661002
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.1036275   -0.4413956    0.6486505
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.2558855   -0.1687348    0.6805058
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1997259   -0.2251844    0.6246363
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.0078540   -0.4960657    0.4803577
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.0807419   -0.5052122    0.3437283
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.0765334   -0.4447519    0.5978188
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.0491176   -0.5865918    0.4883565
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.0761345   -0.5079600    0.3556911
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.2786139   -0.7278624    0.1706346
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.0191245   -0.4231841    0.3849351
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.3723059   -0.8452738    0.1006620
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                  0.0201974   -0.4537038    0.4940985
24 months   ki1000108-IRC              INDIA                          3                    1                  0.0217560   -0.3801248    0.4236368
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.3083939   -0.7272886    0.1105008
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.4559011   -0.9526164    0.0408142
24 months   ki1000108-IRC              INDIA                          6                    1                 -0.3039130   -0.7390839    0.1312579
24 months   ki1000108-IRC              INDIA                          7                    1                 -0.2042934   -0.6116282    0.2030415
24 months   ki1000108-IRC              INDIA                          8                    1                 -0.3630223   -0.7954999    0.0694552
24 months   ki1000108-IRC              INDIA                          9                    1                 -0.3311452   -0.8285551    0.1662646
24 months   ki1000108-IRC              INDIA                          10                   1                 -0.2621112   -0.7114834    0.1872610
24 months   ki1000108-IRC              INDIA                          11                   1                 -0.2362610   -0.6544159    0.1818940
24 months   ki1000108-IRC              INDIA                          12                   1                 -0.2120142   -0.5924038    0.1683754
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0285551   -0.3727392    0.4298494
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0475224   -0.4094131    0.5044578
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.2023136   -0.6146927    0.2100655
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.1014264   -0.4887242    0.2858715
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.3037151   -0.0937763    0.7012065
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.2475638   -0.2333160    0.7284436
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0100057   -0.4726379    0.4926494
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0460480   -0.4160013    0.5080973
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0701797   -0.4614971    0.6018566
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.1353871   -0.2835432    0.5543174
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.1589758   -0.2176076    0.5355592
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.2555794    0.0600695    0.4510892
24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.1166050   -0.0834518    0.3166619
24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0760843   -0.1508149    0.3029835
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 -0.0018858   -0.2054513    0.2016797
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 -0.0004101   -0.2533495    0.2525293
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 -0.3045244   -0.5644149   -0.0446340
24 months   ki1101329-Keneba           GAMBIA                         8                    1                 -0.3802735   -0.5772451   -0.1833019
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 -0.2718578   -0.4774649   -0.0662508
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.2345996   -0.4352048   -0.0339943
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0979212   -0.3220204    0.1261780
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 -0.1342081   -0.3369059    0.0684897
24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.1514583   -0.4976723    0.1947557
24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0277778   -0.3787862    0.4343417
24 months   ki1114097-CMIN             BANGLADESH                     4                    1                 -0.1520455   -0.6345378    0.3304469
24 months   ki1114097-CMIN             BANGLADESH                     5                    1                  0.2187500   -0.2608926    0.6983926
24 months   ki1114097-CMIN             BANGLADESH                     6                    1                  0.2387500   -0.0543912    0.5318912
24 months   ki1114097-CMIN             BANGLADESH                     7                    1                 -0.1710000   -0.6475277    0.3055277
24 months   ki1114097-CMIN             BANGLADESH                     8                    1                 -0.1166667   -0.6109234    0.3775900
24 months   ki1114097-CMIN             BANGLADESH                     9                    1                 -0.3470000   -0.8777110    0.1837110
24 months   ki1114097-CMIN             BANGLADESH                     10                   1                 -0.4643750   -0.8952019   -0.0335481
24 months   ki1114097-CMIN             BANGLADESH                     11                   1                 -0.4070000   -0.8979053    0.0839053
24 months   ki1114097-CMIN             BANGLADESH                     12                   1                 -0.3927778   -0.8160239    0.0304683
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                  0.0339380   -0.3291618    0.3970378
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.1540046   -0.5217320    0.2137228
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.1009926   -0.5142627    0.3122774
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 -0.2569861   -0.6700728    0.1561006
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 -0.1598635   -0.6448088    0.3250818
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.1404583   -0.5590077    0.2780910
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.2836777   -0.6982568    0.1309014
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 -0.1773365   -0.5745742    0.2199011
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 -0.4958224   -0.8489565   -0.1426883
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.4195107   -0.8561614    0.0171401
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.7174497   -1.1615516   -0.2733479
24 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           2                    1                 -0.1026923   -0.5376815    0.3322968
24 months   ki1114097-CMIN             PERU                           3                    1                 -0.0746204   -0.5034411    0.3542002
24 months   ki1114097-CMIN             PERU                           4                    1                 -0.1400327   -0.5637957    0.2837303
24 months   ki1114097-CMIN             PERU                           5                    1                 -0.2587024   -0.6930071    0.1756022
24 months   ki1114097-CMIN             PERU                           6                    1                  0.0411410   -0.4259320    0.5082140
24 months   ki1114097-CMIN             PERU                           7                    1                  0.4182833    0.0129457    0.8236209
24 months   ki1114097-CMIN             PERU                           8                    1                  0.2676018   -0.1666587    0.7018623
24 months   ki1114097-CMIN             PERU                           9                    1                  0.0269231   -0.3961783    0.4500245
24 months   ki1114097-CMIN             PERU                           10                   1                  0.3344289   -0.0591622    0.7280200
24 months   ki1114097-CMIN             PERU                           11                   1                  0.1627764   -0.3044232    0.6299761
24 months   ki1114097-CMIN             PERU                           12                   1                  0.0508262   -0.3982315    0.4998839
24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           2                    1                  0.7910714    0.0937062    1.4884366
24 months   ki1114097-CONTENT          PERU                           3                    1                  0.9141558    0.2529031    1.5754086
24 months   ki1114097-CONTENT          PERU                           4                    1                  0.4780952   -0.0806146    1.0368051
24 months   ki1114097-CONTENT          PERU                           5                    1                  0.7421429   -0.0217271    1.5060129
24 months   ki1114097-CONTENT          PERU                           6                    1                  0.1223377   -0.4226823    0.6673577
24 months   ki1114097-CONTENT          PERU                           7                    1                  0.6933851    0.1437361    1.2430341
24 months   ki1114097-CONTENT          PERU                           8                    1                  0.5778571   -0.1024360    1.2581502
24 months   ki1114097-CONTENT          PERU                           9                    1                  0.7676050    0.2267096    1.3085005
24 months   ki1114097-CONTENT          PERU                           10                   1                  0.9759740    0.3806185    1.5713296
24 months   ki1114097-CONTENT          PERU                           11                   1                  0.7897619    0.0169172    1.5626066
24 months   ki1114097-CONTENT          PERU                           12                   1                  0.8579286    0.0651400    1.6507172
24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                  0.1164694   -0.2658132    0.4987520
24 months   ki1119695-PROBIT           BELARUS                        3                    1                  0.0768181   -0.2674724    0.4211086
24 months   ki1119695-PROBIT           BELARUS                        4                    1                  0.0786592   -0.2183939    0.3757122
24 months   ki1119695-PROBIT           BELARUS                        5                    1                  0.1357912   -0.1145810    0.3861634
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0370799   -0.7896560    0.7154962
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0119056   -0.3339099    0.3100988
24 months   ki1119695-PROBIT           BELARUS                        8                    1                  0.0785796   -0.2491200    0.4062792
24 months   ki1119695-PROBIT           BELARUS                        9                    1                  0.0399843   -0.2508971    0.3308657
24 months   ki1119695-PROBIT           BELARUS                        10                   1                  0.0802489   -0.2204028    0.3809007
24 months   ki1119695-PROBIT           BELARUS                        11                   1                  0.1107434   -0.1329709    0.3544576
24 months   ki1119695-PROBIT           BELARUS                        12                   1                  0.0507815   -0.1958345    0.2973975
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.1505769   -0.2378976    0.5390514
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 -0.6830634   -1.1377253   -0.2284016
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.4860531    0.0355288    0.9365774
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                  0.2540769   -0.2474222    0.7555761
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                  0.2726603   -0.2554617    0.8007822
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                  0.3359658   -0.0418907    0.7138224
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.1901245   -0.1904464    0.5706955
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.3735531    0.0050853    0.7420209
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.2535451   -0.1065263    0.6136165
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                  0.1949586   -0.2252388    0.6151560
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.0843710   -0.4586949    0.2899529
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0883152   -0.1945604    0.0179300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.2186870   -0.3228410   -0.1145330
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.3142041   -0.4311522   -0.1972559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.3327282   -0.4597159   -0.2057404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.4427023   -0.5471112   -0.3382933
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.4234550   -0.5381794   -0.3087306
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.4927036   -0.6024523   -0.3829549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.4072342   -0.5147393   -0.2997292
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.3499565   -0.4514055   -0.2485076
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.2499903   -0.3463233   -0.1536573
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0703233   -0.1630337    0.0223871


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1588600   -0.5601582    0.2424382
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5158798   -0.3321147    1.3638742
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                 0.4096367    0.0057826    0.8134908
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0842857   -0.4522835    0.6208549
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.1945239   -0.0229511    0.4119989
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0240913   -0.4013286    0.4495112
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.8041315   -1.3935851   -0.2146779
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4560743   -0.2360876    1.1482362
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.0513274   -0.1918019    0.2944568
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.0226677   -0.2158709    0.2612063
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1337232   -0.2143037   -0.0531426
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1371982   -0.1912386   -0.0831579
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1090003   -0.2078351    0.4258357
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2303886   -0.8234425    0.3626652
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0026557   -0.3998881    0.4051996
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1374619   -0.3358253    0.6107491
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.0385184   -0.2789801    0.3560169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1288476   -0.5497161    0.2920210
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1768013   -0.3015072    0.6551097
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.2137449   -0.2855054    0.7129953
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1470876   -0.5682331    0.2740578
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4029123    0.2298669    0.5759577
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.3139745    0.0601068    0.5678421
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2463440    0.0484046    0.4442833
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0015715   -0.1439413    0.1407983
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.3428914   -0.0067083    0.6924911
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1152240   -0.2521263    0.4825742
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.2653162    0.0743090    0.4563234
6 months    ki1114097-CMIN             PERU                           1                    NA                -0.4640491   -0.7659713   -0.1621269
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0970318   -0.3701267    0.5641902
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0073957   -0.1030348    0.0882435
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0730696   -0.1556902    0.0095511
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0171303   -0.2611553    0.2268946
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0772737    0.0226108    0.1319366
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1840398   -0.7037635    0.3356840
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0236272   -0.5637401    0.6109945
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1300777   -0.2248185    0.4849738
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1064474   -0.4330311    0.2201364
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0874005   -0.2196371    0.3944381
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2139076   -0.1260633    0.5538784
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5637601    0.0078268    1.1196935
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0068564   -0.3021094    0.2883966
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2177010   -0.5057191    0.0703172
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0646613   -0.1928321    0.3221546
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0802847   -0.2097834    0.0492139
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1835391   -0.4320527    0.0649745
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.2294521   -0.4907509    0.0318467
24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0550855   -0.2884345    0.3986054
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.6782578    0.2132295    1.1432862
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0599725   -0.1788781    0.2988232
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1785595   -0.1098191    0.4669380
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2694873   -0.3400068   -0.1989678

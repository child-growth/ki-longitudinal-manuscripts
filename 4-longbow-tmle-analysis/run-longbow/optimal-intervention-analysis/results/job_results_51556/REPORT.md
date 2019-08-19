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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/74159ac8-7b9d-4fb5-9a1e-728a8e9ce18a/5bbf946b-b8e7-4330-94f7-6ae6c5fc7b86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3155648   -1.8034827   -0.8276469
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0120865   -0.7451663    0.7209933
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5902865   -1.1561172   -0.0244558
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4104679   -1.0793024    0.2583666
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0300745   -0.4235685    0.3634195
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4328022   -1.0191663    0.1535619
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2097715   -0.8622778    0.4427348
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1258163   -0.1554019    0.4070345
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           2.0922747    1.8061369    2.3784125
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0931560   -1.3765365   -0.8097756
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2608267   -0.3561252   -0.1655282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5872947   -0.6457050   -0.5288844
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2622528   -0.8306128    0.3061071
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7933475    0.2137436    1.3729514
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6480082   -1.2831230   -0.0128934
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1298987   -0.8657761    0.6059787
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.4647911    0.9597363    1.9698460
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3026257   -0.4818892    1.0871407
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3016469    0.7306954    1.8725984
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2327411   -0.3494931    0.8149752
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2772716   -0.9569787    0.4024355
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1453874   -0.4532389    0.1624642
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0159204   -0.3590644    0.3272235
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2900564    0.1073041    0.4728087
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0625646   -0.0877665    0.2128957
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1001835   -0.5036246    0.3032576
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.3062685   -0.2531939    0.8657309
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.1025727   -0.1139135    0.3190590
6 months    ki1114097-CMIN             PERU                           optimal              observed           1.1263977    0.8015187    1.4512768
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.8046191    0.2707569    1.3384813
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5265571    0.4450097    0.6081045
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3475326    0.2502494    0.4448159
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5139271    0.2629936    0.7648605
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5112975   -0.5798371   -0.4427580
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9758120   -1.3695598   -0.5820641
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.5985305    0.8925945    2.3044665
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0246679   -1.6060790   -0.4432568
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1939770   -0.6851000    0.2971459
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4162544   -0.9375500    0.1050413
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2609132   -0.1618336    0.6836599
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0455258   -0.4786312    0.3875796
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4657991   -0.7314244   -0.2001737
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.0202004   -1.2831395   -0.7572613
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8706842   -1.2199332   -0.5214353
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4728843   -0.6166518   -0.3291169
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.6451050   -1.0157744   -0.2744355
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0335508   -0.2710579    0.3381596
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.9970892    0.7794032    1.2147753
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.3050296   -0.3399216    0.9499808
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6188880    0.4663790    0.7713971
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2525686   -0.0987883    0.6039255
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0280801   -1.1011346   -0.9550256


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3524943   -0.1110860    0.8160745
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4159663   -0.2933514    1.1252839
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4788268   -1.0178856    0.0602320
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4939964   -1.1433296    0.1553368
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0435097   -0.4307398    0.3437203
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3765232   -0.1836572    0.9367035
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8008116   -1.4233897   -0.1782335
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3955753   -0.7865737   -0.0045770
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3886556   -0.6677380   -0.1095731
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0531909   -0.1999624    0.0935806
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2543158   -0.3459970   -0.1626346
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1368049   -0.1908646   -0.0827452
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1224569   -0.4372401    0.6821539
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1783750   -0.3948291    0.7515792
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0553887   -0.6679418    0.5571644
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2409439   -0.4620445    0.9439323
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4103955   -0.8916445    0.0708534
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2394478   -0.5309456    1.0098411
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7845956   -1.3455228   -0.2236685
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7354177   -1.2763800   -0.1944554
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3216581   -0.9804195    0.3371032
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5203210   -0.7095357   -0.3311064
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4229897   -0.7531107   -0.0928686
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2091233   -0.3856634   -0.0325831
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2471869   -0.3880785   -0.1062953
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0161701   -0.3704688    0.4028090
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.8843138   -1.4249445   -0.3436831
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1443807   -0.3463023    0.0575409
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4542961   -0.7708560   -0.1377361
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.2638127   -0.2455273    0.7731527
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0524062   -0.0265518    0.1313642
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0428188   -0.1347540    0.0491163
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0639986   -0.3128254    0.1848283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0822186   -0.1472338   -0.0172034
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1549865   -0.2252416    0.5352146
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -1.1519033   -1.8475034   -0.4563031
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0723771   -0.4809410    0.6256953
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1824703   -0.6543702    0.2894295
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.5361549    0.0343325    1.0379772
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1657885   -0.2424818    0.5740588
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0956193   -0.3154186    0.5066572
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0913515   -0.3522613    0.1695584
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.2743854    0.0147669    0.5340040
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0408948   -0.3777296    0.2959399
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3370446   -0.4747033   -0.1993860
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.2084341   -0.5785194    0.1616511
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1777946   -0.4720210    0.1164318
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.3493115   -0.5613952   -0.1372278
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.2617997   -0.3596349    0.8832343
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0674555   -0.0634825    0.1983934
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3004194   -0.6444942    0.0436553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2697230   -0.3403693   -0.1990767

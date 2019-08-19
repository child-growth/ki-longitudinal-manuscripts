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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              11     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              26     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             15     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             27     257
Birth       ki0047075b-MAL-ED          BRAZIL                         1              11     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2              19     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3              18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4               9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5              18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6               8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7              16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8              18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9              29     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10             17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11             18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12             10     191
Birth       ki0047075b-MAL-ED          INDIA                          1              16     206
Birth       ki0047075b-MAL-ED          INDIA                          2              16     206
Birth       ki0047075b-MAL-ED          INDIA                          3              21     206
Birth       ki0047075b-MAL-ED          INDIA                          4              14     206
Birth       ki0047075b-MAL-ED          INDIA                          5               7     206
Birth       ki0047075b-MAL-ED          INDIA                          6              18     206
Birth       ki0047075b-MAL-ED          INDIA                          7              21     206
Birth       ki0047075b-MAL-ED          INDIA                          8              17     206
Birth       ki0047075b-MAL-ED          INDIA                          9              19     206
Birth       ki0047075b-MAL-ED          INDIA                          10             23     206
Birth       ki0047075b-MAL-ED          INDIA                          11             20     206
Birth       ki0047075b-MAL-ED          INDIA                          12             14     206
Birth       ki0047075b-MAL-ED          NEPAL                          1              17     173
Birth       ki0047075b-MAL-ED          NEPAL                          2              14     173
Birth       ki0047075b-MAL-ED          NEPAL                          3              12     173
Birth       ki0047075b-MAL-ED          NEPAL                          4              17     173
Birth       ki0047075b-MAL-ED          NEPAL                          5              19     173
Birth       ki0047075b-MAL-ED          NEPAL                          6              10     173
Birth       ki0047075b-MAL-ED          NEPAL                          7              17     173
Birth       ki0047075b-MAL-ED          NEPAL                          8              14     173
Birth       ki0047075b-MAL-ED          NEPAL                          9              11     173
Birth       ki0047075b-MAL-ED          NEPAL                          10             14     173
Birth       ki0047075b-MAL-ED          NEPAL                          11             18     173
Birth       ki0047075b-MAL-ED          NEPAL                          12             10     173
Birth       ki0047075b-MAL-ED          PERU                           1              39     287
Birth       ki0047075b-MAL-ED          PERU                           2              21     287
Birth       ki0047075b-MAL-ED          PERU                           3              23     287
Birth       ki0047075b-MAL-ED          PERU                           4              21     287
Birth       ki0047075b-MAL-ED          PERU                           5              27     287
Birth       ki0047075b-MAL-ED          PERU                           6              16     287
Birth       ki0047075b-MAL-ED          PERU                           7              23     287
Birth       ki0047075b-MAL-ED          PERU                           8              19     287
Birth       ki0047075b-MAL-ED          PERU                           9              22     287
Birth       ki0047075b-MAL-ED          PERU                           10             25     287
Birth       ki0047075b-MAL-ED          PERU                           11             31     287
Birth       ki0047075b-MAL-ED          PERU                           12             20     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              25     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              17     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              14     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              18     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              21     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             39     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              16     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             16     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              4      90
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
Birth       ki1000109-EE               PAKISTAN                       1               0       2
Birth       ki1000109-EE               PAKISTAN                       2               0       2
Birth       ki1000109-EE               PAKISTAN                       3               0       2
Birth       ki1000109-EE               PAKISTAN                       4               0       2
Birth       ki1000109-EE               PAKISTAN                       5               0       2
Birth       ki1000109-EE               PAKISTAN                       6               0       2
Birth       ki1000109-EE               PAKISTAN                       7               0       2
Birth       ki1000109-EE               PAKISTAN                       8               0       2
Birth       ki1000109-EE               PAKISTAN                       9               0       2
Birth       ki1000109-EE               PAKISTAN                       10              0       2
Birth       ki1000109-EE               PAKISTAN                       11              0       2
Birth       ki1000109-EE               PAKISTAN                       12              2       2
Birth       ki1000109-ResPak           PAKISTAN                       1               1       7
Birth       ki1000109-ResPak           PAKISTAN                       2               0       7
Birth       ki1000109-ResPak           PAKISTAN                       3               0       7
Birth       ki1000109-ResPak           PAKISTAN                       4               2       7
Birth       ki1000109-ResPak           PAKISTAN                       5               2       7
Birth       ki1000109-ResPak           PAKISTAN                       6               1       7
Birth       ki1000109-ResPak           PAKISTAN                       7               1       7
Birth       ki1000109-ResPak           PAKISTAN                       8               0       7
Birth       ki1000109-ResPak           PAKISTAN                       9               0       7
Birth       ki1000109-ResPak           PAKISTAN                       10              0       7
Birth       ki1000109-ResPak           PAKISTAN                       11              0       7
Birth       ki1000109-ResPak           PAKISTAN                       12              0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               7     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             17     187
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
Birth       ki1101329-Keneba           GAMBIA                         1             163    1541
Birth       ki1101329-Keneba           GAMBIA                         2             147    1541
Birth       ki1101329-Keneba           GAMBIA                         3             165    1541
Birth       ki1101329-Keneba           GAMBIA                         4             105    1541
Birth       ki1101329-Keneba           GAMBIA                         5             108    1541
Birth       ki1101329-Keneba           GAMBIA                         6              89    1541
Birth       ki1101329-Keneba           GAMBIA                         7              75    1541
Birth       ki1101329-Keneba           GAMBIA                         8             125    1541
Birth       ki1101329-Keneba           GAMBIA                         9             124    1541
Birth       ki1101329-Keneba           GAMBIA                         10            179    1541
Birth       ki1101329-Keneba           GAMBIA                         11            124    1541
Birth       ki1101329-Keneba           GAMBIA                         12            137    1541
Birth       ki1114097-CMIN             BANGLADESH                     1               1      13
Birth       ki1114097-CMIN             BANGLADESH                     2               2      13
Birth       ki1114097-CMIN             BANGLADESH                     3               0      13
Birth       ki1114097-CMIN             BANGLADESH                     4               1      13
Birth       ki1114097-CMIN             BANGLADESH                     5               1      13
Birth       ki1114097-CMIN             BANGLADESH                     6               0      13
Birth       ki1114097-CMIN             BANGLADESH                     7               0      13
Birth       ki1114097-CMIN             BANGLADESH                     8               3      13
Birth       ki1114097-CMIN             BANGLADESH                     9               1      13
Birth       ki1114097-CMIN             BANGLADESH                     10              1      13
Birth       ki1114097-CMIN             BANGLADESH                     11              3      13
Birth       ki1114097-CMIN             BANGLADESH                     12              0      13
Birth       ki1114097-CMIN             BRAZIL                         1              13     115
Birth       ki1114097-CMIN             BRAZIL                         2               7     115
Birth       ki1114097-CMIN             BRAZIL                         3              13     115
Birth       ki1114097-CMIN             BRAZIL                         4               9     115
Birth       ki1114097-CMIN             BRAZIL                         5               5     115
Birth       ki1114097-CMIN             BRAZIL                         6               6     115
Birth       ki1114097-CMIN             BRAZIL                         7               4     115
Birth       ki1114097-CMIN             BRAZIL                         8              13     115
Birth       ki1114097-CMIN             BRAZIL                         9               8     115
Birth       ki1114097-CMIN             BRAZIL                         10             16     115
Birth       ki1114097-CMIN             BRAZIL                         11             11     115
Birth       ki1114097-CMIN             BRAZIL                         12             10     115
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
Birth       ki1119695-PROBIT           BELARUS                        1             826   13884
Birth       ki1119695-PROBIT           BELARUS                        2             804   13884
Birth       ki1119695-PROBIT           BELARUS                        3             948   13884
Birth       ki1119695-PROBIT           BELARUS                        4             970   13884
Birth       ki1119695-PROBIT           BELARUS                        5             950   13884
Birth       ki1119695-PROBIT           BELARUS                        6            1020   13884
Birth       ki1119695-PROBIT           BELARUS                        7            1294   13884
Birth       ki1119695-PROBIT           BELARUS                        8            1311   13884
Birth       ki1119695-PROBIT           BELARUS                        9            1324   13884
Birth       ki1119695-PROBIT           BELARUS                        10           1500   13884
Birth       ki1119695-PROBIT           BELARUS                        11           1388   13884
Birth       ki1119695-PROBIT           BELARUS                        12           1549   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1339   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2            1049   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3            1159   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             989   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5            1014   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6            1135   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7            1173   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8            1253   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9            1295   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10           1039   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11           1179   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12           1206   13830
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            1883   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2            1563   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            1871   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4            1340   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             960   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             995   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7            1078   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8            1518   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9            1870   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10           2129   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11           2180   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12           2226   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             135     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             175     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             159     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             121     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              90     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              73     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              28     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              33     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              8     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0     822
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
6 months    ki1000109-EE               PAKISTAN                       1              90     372
6 months    ki1000109-EE               PAKISTAN                       2              67     372
6 months    ki1000109-EE               PAKISTAN                       3              42     372
6 months    ki1000109-EE               PAKISTAN                       4              16     372
6 months    ki1000109-EE               PAKISTAN                       5               0     372
6 months    ki1000109-EE               PAKISTAN                       6               0     372
6 months    ki1000109-EE               PAKISTAN                       7               0     372
6 months    ki1000109-EE               PAKISTAN                       8               0     372
6 months    ki1000109-EE               PAKISTAN                       9               0     372
6 months    ki1000109-EE               PAKISTAN                       10              4     372
6 months    ki1000109-EE               PAKISTAN                       11             70     372
6 months    ki1000109-EE               PAKISTAN                       12             83     372
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
6 months    ki1114097-CMIN             BANGLADESH                     11             27     243
6 months    ki1114097-CMIN             BANGLADESH                     12             27     243
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
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             102     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              57     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              68     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              46     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              56     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              38     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              38     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              55     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9             116     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10            100     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             74     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             98     848
6 months    ki1114097-CMIN             PERU                           1              42     637
6 months    ki1114097-CMIN             PERU                           2              60     637
6 months    ki1114097-CMIN             PERU                           3              67     637
6 months    ki1114097-CMIN             PERU                           4              61     637
6 months    ki1114097-CMIN             PERU                           5              54     637
6 months    ki1114097-CMIN             PERU                           6              54     637
6 months    ki1114097-CMIN             PERU                           7              52     637
6 months    ki1114097-CMIN             PERU                           8              73     637
6 months    ki1114097-CMIN             PERU                           9              50     637
6 months    ki1114097-CMIN             PERU                           10             50     637
6 months    ki1114097-CMIN             PERU                           11             34     637
6 months    ki1114097-CMIN             PERU                           12             40     637
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             794    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             587    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             737    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             636    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             608    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             645    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             638    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             746    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             749    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            600    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            765    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            790    8295
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6              91     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7             206     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8             202     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0     499
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              52     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              66     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              61     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              46     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              53     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              48     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              28     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              31     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               3     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              6     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             25     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             38     457
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
![](/tmp/a6a74f06-72a2-4681-8c2d-b73bce666cc6/052b04d8-7d8b-4475-aab7-f5177cbdeca9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7866822   -1.2401367   -0.3332277
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1369005   -0.6271462    0.3533453
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5620585   -0.8990179   -0.2250992
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7172400   -1.0656965   -0.3687835
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6113781   -0.8422483   -0.3805078
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3152835   -0.7360100    0.1054429
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.5270347   -0.4089592    1.4630286
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9870343   -1.2667857   -0.7072829
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0792351   -0.2987124    0.1402423
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3872537    1.1842537    1.5902537
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4045124   -0.4666511   -0.3423736
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5323267   -1.5993636   -1.4652898
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8780998   -1.2408384   -0.5153612
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3211236   -1.1279790    0.4857319
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5794261   -2.1604779   -0.9983742
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9469853   -1.2386936   -0.6552769
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6202762   -2.1645350   -1.0760174
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6202558   -1.1919415   -0.0485702
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3568129   -1.7374616   -0.9761642
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3640615   -1.7345223   -0.9936007
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1965925   -1.7832711   -0.6099139
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4873745   -1.7603492   -1.2143998
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1574675   -1.4718974   -0.8430375
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1249516   -0.3275367    0.0776335
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8290814   -0.9790353   -0.6791275
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.3968814   -1.7795261   -1.0142367
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.3690604   -1.7690530   -0.9690679
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4567065   -0.8733259   -0.0400871
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4410882   -0.7833516   -0.0988248
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0475872   -0.6022468    0.6974212
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0894436   -0.0419199    0.2208070
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7852778   -0.8754249   -0.6951306
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7462603   -2.0177001   -1.4748205
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2951556   -1.3689369   -1.2213742
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.1489797   -2.5044681   -1.7934912
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7009116    0.4236602    0.9781629
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8581938   -2.2063854   -1.5100021
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3811717   -1.8981384   -0.8642049
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.8454929   -2.4433464   -1.2476394
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3113627   -2.0297010   -0.5930244
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.0196348   -3.6211907   -2.4180790
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4214657   -2.7807706   -2.0621607
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.4203400   -1.6951756   -1.1455044
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.7988669   -3.2026723   -2.3950615
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4754139   -1.6413613   -1.3094665
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.3355748   -2.6943634   -1.9767862
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.2050615   -1.5211152   -0.8890078
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.7472235   -2.1509217   -1.3435253
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.7418407   -1.2962932   -0.1873883
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1832057   -0.0712090    0.4376204
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7769739   -2.0041963   -1.5497515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8693644   -1.9555358   -1.7831929


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747407   -1.5944667   -1.5550147
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8907480   -0.9167182   -0.8647779
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5626652   -1.6124881   -1.5128424
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5807226   -1.6772768   -1.4841684
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0126460   -2.0403823   -1.9849097


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2977147   -0.7376380    0.1422086
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6240419   -1.1002079   -0.1478760
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4485725   -0.7906358   -0.1065092
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0083383   -0.3453919    0.3620686
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3208519   -0.5624235   -0.0792803
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4113195   -0.8259679    0.0033288
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8350760   -1.7373364    0.0671845
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4076181   -0.6736579   -0.1415783
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1133817   -0.0961869    0.3229504
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0617762   -0.1583268    0.0347745
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0964537   -0.1562403   -0.0366670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0424141   -0.1072691    0.0224409
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3275780   -0.6764297    0.0212738
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3721443   -0.4001175    1.1444061
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3590588   -0.1842795    0.9023971
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3859259    0.0990100    0.6728419
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2934752   -0.2245299    0.8114803
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4431201   -0.9973117    0.1110714
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0033086   -0.3761094    0.3694923
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0593893   -0.4143892    0.2956107
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0378137   -0.5970821    0.5214547
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0855182   -0.1963117    0.3673480
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2499146   -0.5469849    0.0471557
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4184873   -0.6122006   -0.2247739
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0750555   -0.2186386    0.0685276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1650194   -0.5325787    0.2025400
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.4153772   -0.8129511   -0.0178032
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1508879   -0.5552235    0.2534478
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0721666   -0.4049385    0.2606053
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.3615089   -1.0035469    0.2805291
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0175550   -0.0826375    0.1177476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1054703   -0.1907127   -0.0202278
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0860696   -0.1735459    0.3456851
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0179376   -0.0870131    0.0511378
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2058665   -0.1389632    0.5506961
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6590772   -0.9698849   -0.3482696
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0123788   -0.3318578    0.3566154
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1059524   -0.3896353    0.6015401
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0953934   -0.4824072    0.6731939
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3114735   -1.0129349    0.3899880
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4137470   -0.1613477    0.9888417
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1379026   -0.4882670    0.2124618
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.3621376   -0.6287692   -0.0955060
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.6180724    0.2285023    1.0076425
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0872513   -0.2453740    0.0708714
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.1753756   -0.5364727    0.1857214
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.3695029   -0.6852561   -0.0537497
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.1665009   -0.2183768    0.5513786
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.0456212   -0.4921598    0.5834023
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3146105   -0.6445810    0.0153600
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0984665   -0.3218197    0.1248867
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1432816   -0.2248637   -0.0616995

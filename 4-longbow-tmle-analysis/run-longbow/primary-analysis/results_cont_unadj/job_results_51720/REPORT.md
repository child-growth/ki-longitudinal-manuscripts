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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/acbee67d-c79e-4cec-bbaa-b39972e501ef/33796e40-5e2e-4ed0-b068-4dc2c4e6acce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/acbee67d-c79e-4cec-bbaa-b39972e501ef/33796e40-5e2e-4ed0-b068-4dc2c4e6acce/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/acbee67d-c79e-4cec-bbaa-b39972e501ef/33796e40-5e2e-4ed0-b068-4dc2c4e6acce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.0995000   -1.4876016   -0.7113984
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.3764000   -1.7597941   -0.9930059
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.2376000   -1.6209335   -0.8542665
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.5585714   -0.9151477   -0.2019951
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.2638095   -1.7343025   -0.7933165
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.1490909   -1.7262496   -0.5719322
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.1920000   -1.6774523   -0.7065477
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -1.2623077   -1.6681063   -0.8565091
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.8514286   -1.3488676   -0.3539895
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.2260000   -1.5526157   -0.8993843
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.7220000   -1.2148381   -0.2291619
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.9044444   -1.2968306   -0.5120583
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.6445455   -1.2634032   -0.0256877
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.8368421   -1.3653274   -0.3083568
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.5272222   -1.2230115    0.1685671
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.7366667   -1.1794411   -0.2938922
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    NA                -1.0266667   -1.5215784   -0.5317550
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.7212500   -1.5954808    0.1529808
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.9800000   -1.5626471   -0.3973529
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.7588889   -1.2002827   -0.3174951
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    NA                -1.0293103   -1.3908171   -0.6678035
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.1235294   -0.5638021    0.3167432
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   NA                -0.5916667   -0.9215690   -0.2617644
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   NA                -1.0040000   -1.6880926   -0.3199074
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8306250   -1.2139987   -0.4472513
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -0.4887500   -0.7928032   -0.1846968
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9019048   -1.2741017   -0.5297079
Birth       ki0047075b-MAL-ED          INDIA                          4                    NA                -1.1457143   -1.7341149   -0.5573137
Birth       ki0047075b-MAL-ED          INDIA                          5                    NA                -1.2728571   -1.8997755   -0.6459388
Birth       ki0047075b-MAL-ED          INDIA                          6                    NA                -0.7444444   -1.1726110   -0.3162779
Birth       ki0047075b-MAL-ED          INDIA                          7                    NA                -1.2985714   -1.7595662   -0.8375766
Birth       ki0047075b-MAL-ED          INDIA                          8                    NA                -1.1517647   -1.5639768   -0.7395526
Birth       ki0047075b-MAL-ED          INDIA                          9                    NA                -1.0868421   -1.6496705   -0.5240137
Birth       ki0047075b-MAL-ED          INDIA                          10                   NA                -1.0791304   -1.6286054   -0.5296554
Birth       ki0047075b-MAL-ED          INDIA                          11                   NA                -1.1985000   -1.5401620   -0.8568380
Birth       ki0047075b-MAL-ED          INDIA                          12                   NA                -0.9642857   -1.4816713   -0.4469001
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.2576471   -1.7811704   -0.7341237
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.1800000   -1.7403572   -0.6196428
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5875000   -1.0664824   -0.1085176
Birth       ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.4117647   -0.8765501    0.0530206
Birth       ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.6763158   -1.1113486   -0.2412830
Birth       ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.5470000   -1.1061449    0.0121449
Birth       ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.4064706   -1.0043822    0.1914410
Birth       ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.7757143   -1.3393362   -0.2120924
Birth       ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.6554545   -1.1413254   -0.1695837
Birth       ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.3007143   -0.6704083    0.0689797
Birth       ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.9388889   -1.4773733   -0.4004045
Birth       ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.6280000   -1.1338402   -0.1221598
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0692308   -1.4363740   -0.7020876
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -1.0276190   -1.4550786   -0.6001595
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -1.0456522   -1.3615657   -0.7297387
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                -0.8433333   -1.2961223   -0.3905444
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                -0.8696296   -1.2308115   -0.5084478
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                -0.9187500   -1.5909300   -0.2465700
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.9278261   -1.2978403   -0.5578119
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.7542105   -1.1014057   -0.4070154
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.6118182   -0.8360330   -0.3876034
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                -0.9816000   -1.3584668   -0.6047332
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -1.0958065   -1.4280360   -0.7635769
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                -0.8345000   -1.2613291   -0.4076709
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.6207143   -0.9597606   -0.2816680
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.6280000   -0.9646062   -0.2913938
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.3152941   -0.7150785    0.0844902
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.4684615   -1.0611589    0.1242358
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.4985714   -0.7740553   -0.2230876
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.8238889   -1.3398811   -0.3078967
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.7440909   -1.1825512   -0.3056306
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.2855556   -1.6565708   -0.9145403
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.8423810   -1.2510815   -0.4336804
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.0410714   -1.3808472   -0.7012956
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.9317857   -1.3644231   -0.4991483
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.5938462   -1.0368737   -0.1508186
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.6314286   -2.2913829   -0.9714742
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.4506667   -2.2149361   -0.6863972
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -1.7875000   -2.3734337   -1.2015663
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -1.4200000   -1.8566942   -0.9833058
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -1.4547059   -2.2122545   -0.6971572
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.3652941   -1.9541751   -0.7764131
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -1.5500000   -2.6897424   -0.4102576
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -1.2911765   -1.6504716   -0.9318814
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.9900000   -1.2695084   -0.7104916
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -1.2936842   -1.6722439   -0.9151246
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.1533333   -1.6675555   -0.6391112
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -1.6800000   -1.9335434   -1.4264566
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.1696319   -0.3856654    0.0464016
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                 0.2219048    0.0201422    0.4236673
Birth       ki1101329-Keneba           GAMBIA                         3                    NA                 0.1473939   -0.0238174    0.3186053
Birth       ki1101329-Keneba           GAMBIA                         4                    NA                 0.0933333   -0.1233964    0.3100631
Birth       ki1101329-Keneba           GAMBIA                         5                    NA                 0.1775926   -0.0745294    0.4297145
Birth       ki1101329-Keneba           GAMBIA                         6                    NA                 0.1317978   -0.1151596    0.3787551
Birth       ki1101329-Keneba           GAMBIA                         7                    NA                 0.0180000   -0.2433185    0.2793185
Birth       ki1101329-Keneba           GAMBIA                         8                    NA                 0.0552800   -0.1723134    0.2828734
Birth       ki1101329-Keneba           GAMBIA                         9                    NA                -0.0456452   -0.2591927    0.1679024
Birth       ki1101329-Keneba           GAMBIA                         10                   NA                -0.0716760   -0.2635699    0.1202180
Birth       ki1101329-Keneba           GAMBIA                         11                   NA                 0.0377419   -0.2108297    0.2863135
Birth       ki1101329-Keneba           GAMBIA                         12                   NA                -0.0863504   -0.2948452    0.1221445
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.4008232    1.1603228    1.6413237
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                 1.2182338    0.9963057    1.4401619
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                 1.3443565    1.1429427    1.5457704
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                 1.4112371    1.2223535    1.6001207
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                 1.4407053    1.2429309    1.6384797
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                 1.2710686    1.1046253    1.4375119
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                 1.3928362    1.1903138    1.5953585
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                 1.3216095    1.1617267    1.4814922
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                 1.2767825    1.0528096    1.5007553
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                 1.3344667    1.1729833    1.4959501
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                 1.3027089    1.1683758    1.4370421
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                 1.2411879    1.0936966    1.3886791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7252502   -0.7902263   -0.6602741
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.7785129   -0.8532173   -0.7038085
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.6107852   -0.6815588   -0.5400115
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.6040344   -0.6812502   -0.5268186
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.5285799   -0.6097786   -0.4473812
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.4726344   -0.5510246   -0.3942442
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.4174339   -0.4924683   -0.3423995
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.3370152   -0.4015126   -0.2725177
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.3445483   -0.4039201   -0.2851765
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.3691819   -0.4399422   -0.2984216
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.4066836   -0.4762751   -0.3370921
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.4491708   -0.5164723   -0.3818693
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6997132   -1.7523522   -1.6470743
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5423928   -1.6049615   -1.4798242
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.4424051   -1.5010373   -1.3837730
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.4206343   -1.4809770   -1.3602917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.4725208   -1.5556776   -1.3893641
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.4410553   -1.5230035   -1.3591071
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.4344712   -1.5128259   -1.3561166
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.5855007   -1.6512718   -1.5197295
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.4849251   -1.5409582   -1.4288921
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.6495726   -1.7058873   -1.5932578
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.7380826   -1.7936023   -1.6825628
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.7040836   -1.7537640   -1.6544031
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2373148   -1.6119330   -0.8626966
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.5978333   -1.8857686   -1.3098980
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.4686957   -1.9106234   -1.0267679
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.7737879   -1.1164989   -0.4310768
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.2261905   -1.6336563   -0.8187247
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
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.0712037   -1.2973752   -0.8450322
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9757576   -1.3487713   -0.6027439
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -1.1843333   -1.7480814   -0.6205853
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
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.4718182   -1.8346504   -1.1089860
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.9525000   -1.4750498   -0.4299502
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                -1.2005556   -1.4936362   -0.9074749
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                -1.2740000   -1.7409074   -0.8070926
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                -1.3257576   -1.6064973   -1.0450179
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                -1.2204167   -1.6468546   -0.7939788
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                -1.3045652   -1.6646310   -0.9444994
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                -1.3025000   -1.6820279   -0.9229721
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                -1.7921875   -2.1084804   -1.4758946
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                -1.1097368   -1.5169176   -0.7025561
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2214474   -1.5692421   -0.8736526
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.1131884   -1.3612387   -0.8651381
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.4816667   -1.0382176    0.0748843
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.5861538   -1.0899217   -0.0823860
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.7361538   -1.3705694   -0.1017383
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.8145833   -1.1187223   -0.5104443
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -1.1626984   -1.5188232   -0.8065737
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
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.7590196   -1.0000540   -0.5179852
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -0.7223684   -0.9936044   -0.4511325
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -0.8117647   -1.0781377   -0.5453918
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -0.2706159   -0.5595292    0.0182974
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.5625298   -0.8744923   -0.2505672
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                -0.4867105   -0.7758722   -0.1975489
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -0.2161842   -0.6363122    0.2039437
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.3870000   -0.6921227   -0.0818773
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -0.7383190   -0.9680524   -0.5085856
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -0.6537000   -0.8360804   -0.4713196
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -0.5438514   -0.7806654   -0.3070373
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -0.5942857   -0.7907582   -0.3978133
6 months    ki1114097-CMIN             PERU                           1                    NA                -0.2072222   -0.5242246    0.1097802
6 months    ki1114097-CMIN             PERU                           2                    NA                -0.7385556   -1.0454135   -0.4316976
6 months    ki1114097-CMIN             PERU                           3                    NA                -0.4203980   -0.6380235   -0.2027726
6 months    ki1114097-CMIN             PERU                           4                    NA                -0.6359016   -0.9009933   -0.3708100
6 months    ki1114097-CMIN             PERU                           5                    NA                -0.5648765   -0.7974565   -0.3322966
6 months    ki1114097-CMIN             PERU                           6                    NA                -0.5473148   -0.8022102   -0.2924194
6 months    ki1114097-CMIN             PERU                           7                    NA                -0.5260577   -0.7494057   -0.3027097
6 months    ki1114097-CMIN             PERU                           8                    NA                -0.4858676   -0.7186860   -0.2530492
6 months    ki1114097-CMIN             PERU                           9                    NA                -0.5377000   -0.7925681   -0.2828319
6 months    ki1114097-CMIN             PERU                           10                   NA                -0.4499000   -0.7632700   -0.1365300
6 months    ki1114097-CMIN             PERU                           11                   NA                -0.1767647   -0.6087466    0.2552172
6 months    ki1114097-CMIN             PERU                           12                   NA                -0.7174583   -0.9896622   -0.4452545
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9559446   -1.0408229   -0.8710663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8986542   -0.9962788   -0.8010296
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.9835278   -1.0804246   -0.8866310
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.9399371   -1.0301781   -0.8496961
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.9626645   -1.0534367   -0.8718922
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.9166822   -1.0125969   -0.8207674
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.9730878   -1.0647497   -0.8814258
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.8248525   -0.9075279   -0.7421772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.7808611   -0.8606223   -0.7011000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.8753917   -0.9721741   -0.7786092
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.8671046   -0.9509089   -0.7833002
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.7511392   -0.8393543   -0.6629241
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2728881   -1.3411732   -1.2046029
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2996635   -1.3654555   -1.2338715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2688094   -1.3345939   -1.2030249
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.2502632   -1.3195112   -1.1810151
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.3007098   -1.3744293   -1.2269903
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.2822139   -1.3515264   -1.2129015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.2712629   -1.3376205   -1.2049053
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.3417368   -1.4006358   -1.2828379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.2809815   -1.3416848   -1.2202782
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.3601742   -1.4223079   -1.2980404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.4148607   -1.4701315   -1.3595900
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.3514927   -1.4082154   -1.2947700
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.8242857   -2.2326785   -1.4158930
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -2.5544118   -3.0174643   -2.0913592
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -2.1881579   -2.5310906   -1.8452252
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.6027500   -2.0080993   -1.1974007
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -2.1521053   -2.5590715   -1.7451391
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.7692857   -2.4538757   -1.0846957
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.8569444   -2.2731119   -1.4407769
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -2.0365909   -2.5345116   -1.5386702
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.9250000   -2.2438181   -1.6061819
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.8930000   -2.3686264   -1.4173736
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -1.9268182   -2.3240769   -1.5295595
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -1.6346296   -1.9115015   -1.3577578
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1043333   -0.8617003    0.6530337
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.3084375   -0.7630582    0.1461832
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.3232143   -0.3684319    1.0148604
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.7395000    0.4747730    1.0042270
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.4263333    0.0299817    0.8226850
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.2108333   -0.7498768    1.1715435
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.2010000   -1.0899438    0.6879438
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.5138462   -1.0611655    0.0334732
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.0675926   -0.2912780    0.4264632
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.1139286   -0.3762454    0.6041025
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0675000   -0.4230029    0.5580029
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                -0.1777273   -0.7332311    0.3777765
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.2531579   -2.6754546   -1.8308611
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -1.7441667   -2.0460037   -1.4423297
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.5436842   -1.9815985   -1.1057699
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -1.8935714   -2.4390947   -1.3480481
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -1.8887500   -2.3846700   -1.3928300
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.6427778   -1.9889170   -1.2966386
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -1.8565217   -2.3070541   -1.4059894
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -1.9204762   -2.3789525   -1.4619999
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -1.9191667   -2.3757048   -1.4626285
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -1.9673077   -2.3934493   -1.5411661
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -1.8112500   -2.1751362   -1.4473638
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -1.6884211   -2.0579128   -1.3189293
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5944737   -1.9013452   -1.2876022
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.7852941   -2.1796871   -1.3909011
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.8688235   -2.3406734   -1.3969736
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -1.1709091   -1.4811794   -0.8606388
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -1.4307895   -1.9667109   -0.8948681
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -1.0038889   -1.3208196   -0.6869582
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -1.1779412   -1.5198461   -0.8360362
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.9429167   -1.2157210   -0.6701124
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.9816667   -1.5278004   -0.4355329
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -1.1300000   -1.4592998   -0.8007002
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -1.1775000   -1.6128861   -0.7421139
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -1.1925000   -1.6566017   -0.7283983
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.9028333   -2.2631063   -1.5425604
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.8497059   -2.1197382   -1.5796735
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.6980000   -2.1137972   -1.2822028
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                -1.9018182   -2.4072851   -1.3963513
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                -1.8289474   -2.3214547   -1.3364400
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                -1.3959091   -2.1987353   -0.5930829
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -1.7666667   -1.9720936   -1.5612397
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                -1.7008333   -2.1183059   -1.2833607
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                -1.3964286   -1.7171583   -1.0756988
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                -1.4292857   -1.7772710   -1.0813004
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                -1.9369048   -2.2841018   -1.5897077
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                -1.9883333   -2.3135444   -1.6631223
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7780882   -2.1735072   -1.3826693
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.9722727   -2.4090285   -1.5355170
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.2675000   -1.8693161   -0.6656839
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.9704167   -1.4860440   -0.4547893
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -1.1904167   -1.7433829   -0.6374504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -1.4265625   -1.9463680   -0.9067570
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -1.6504545   -2.0806683   -1.2202407
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.0931250   -1.7252665   -0.4609835
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -1.4052632   -1.7140898   -1.0964366
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.6912000   -2.0926510   -1.2897490
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -1.9154348   -2.3666293   -1.4642402
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -1.8645161   -2.1947288   -1.5343035
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.4430000   -3.0666663   -1.8193337
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -2.8459091   -3.2749315   -2.4168867
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.8088889   -3.3359918   -2.2817860
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -3.1591667   -4.0122195   -2.3061139
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -2.5488889   -2.9597767   -2.1380011
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -2.4011111   -2.7443243   -2.0578979
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -2.4465217   -2.9058623   -1.9871812
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -2.4404545   -2.9950277   -1.8858814
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -2.4383333   -2.8372163   -2.0394504
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -2.7916667   -3.1967543   -2.3865791
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -2.5893750   -2.9909694   -2.1877806
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -2.6448077   -2.9983398   -2.2912756
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.2932353   -2.6142513   -1.9722193
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.6855208   -3.1635550   -2.2074867
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.6981720   -2.9945387   -2.4018054
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -2.5634848   -2.8911593   -2.2358104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -2.8057870   -3.1283334   -2.4832407
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -2.5374324   -2.8765060   -2.1983589
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -2.5037179   -2.8048035   -2.2026324
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -2.5465686   -3.0352085   -2.0579288
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -2.2234127   -2.5383771   -1.9084483
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -2.4618391   -2.8405891   -2.0830891
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -2.5000388   -2.7928105   -2.2072670
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -2.9317333   -3.2583986   -2.6050681
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.9664035   -2.2869135   -1.6458935
24 months   ki1000108-IRC              INDIA                          2                    NA                -2.0330952   -2.3946209   -1.6715696
24 months   ki1000108-IRC              INDIA                          3                    NA                -1.8846914   -2.2207521   -1.5486306
24 months   ki1000108-IRC              INDIA                          4                    NA                -2.1052381   -2.4862389   -1.7242373
24 months   ki1000108-IRC              INDIA                          5                    NA                -2.5040909   -2.9559275   -2.0522543
24 months   ki1000108-IRC              INDIA                          6                    NA                -1.4113063   -1.6788421   -1.1437705
24 months   ki1000108-IRC              INDIA                          7                    NA                -1.6737963   -1.9474427   -1.4001499
24 months   ki1000108-IRC              INDIA                          8                    NA                -1.5750758   -1.8352102   -1.3149413
24 months   ki1000108-IRC              INDIA                          9                    NA                -1.7429630   -2.1678381   -1.3180878
24 months   ki1000108-IRC              INDIA                          10                   NA                -1.5962162   -1.8485512   -1.3438813
24 months   ki1000108-IRC              INDIA                          11                   NA                -1.5932917   -1.8695403   -1.3170430
24 months   ki1000108-IRC              INDIA                          12                   NA                -1.8378205   -2.1182701   -1.5573709
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.2647674   -2.5627286   -1.9668063
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -2.1981944   -2.4425224   -1.9538665
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -2.1007692   -2.4393150   -1.7622234
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -2.4484314   -2.8361503   -2.0607125
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -2.3127619   -2.6200646   -2.0054592
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -2.2679293   -2.6036196   -1.9322390
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -2.0864706   -2.4490136   -1.7239275
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -2.2222840   -2.6006385   -1.8439294
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.9915385   -2.5061790   -1.4768980
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -2.0579293   -2.4814776   -1.6343810
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -2.1866473   -2.5314077   -1.8418869
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -2.0307971   -2.3679697   -1.6936245
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.4630702   -1.6221959   -1.3039444
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.5786557   -1.7445832   -1.4127282
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -1.5433235   -1.6970400   -1.3896071
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                -1.6046199   -1.7761039   -1.4331359
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                -1.6404126   -1.8121341   -1.4686911
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                -1.5718442   -1.7850276   -1.3586608
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                -1.6439568   -1.8728752   -1.4150383
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                -1.3995000   -1.5673513   -1.2316487
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                -1.6433218   -1.7970492   -1.4895944
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                -1.6450368   -1.7827110   -1.5073626
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                -1.5168853   -1.6995660   -1.3342047
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                -1.5552500   -1.7534861   -1.3570139
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -1.5801042   -1.9626960   -1.1975123
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -1.4768293   -1.7889689   -1.1646896
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -1.4329630   -1.7282325   -1.1376934
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -1.8141176   -2.2038836   -1.4243516
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -1.3480000   -1.7321766   -0.9638234
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                -1.1937931   -1.4973470   -0.8902392
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -1.6898750   -2.1355845   -1.2441655
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -1.7015306   -2.0006406   -1.4024206
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -1.6353077   -1.9035588   -1.3670566
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -1.4847368   -1.7337277   -1.2357460
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -1.6583721   -2.0107821   -1.3059621
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -1.8208621   -2.2390800   -1.4026441
24 months   ki1114097-CMIN             PERU                           1                    NA                -1.6396154   -1.9135135   -1.3657172
24 months   ki1114097-CMIN             PERU                           2                    NA                -1.5868376   -1.9067220   -1.2669532
24 months   ki1114097-CMIN             PERU                           3                    NA                -1.5600327   -1.8574516   -1.2626137
24 months   ki1114097-CMIN             PERU                           4                    NA                -1.5330496   -1.8864329   -1.1796663
24 months   ki1114097-CMIN             PERU                           5                    NA                -1.8925758   -2.2054543   -1.5796972
24 months   ki1114097-CMIN             PERU                           6                    NA                -1.6926667   -2.0001518   -1.3851815
24 months   ki1114097-CMIN             PERU                           7                    NA                -1.5193496   -1.7585417   -1.2801574
24 months   ki1114097-CMIN             PERU                           8                    NA                -1.4592157   -1.7583112   -1.1601202
24 months   ki1114097-CMIN             PERU                           9                    NA                -1.7096154   -1.9699360   -1.4492948
24 months   ki1114097-CMIN             PERU                           10                   NA                -1.4068182   -1.8365762   -0.9770602
24 months   ki1114097-CMIN             PERU                           11                   NA                -1.4370313   -1.8727383   -1.0013242
24 months   ki1114097-CMIN             PERU                           12                   NA                -1.5614815   -1.8460388   -1.2769241
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
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8339024   -2.1312602   -1.5365446
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -1.5995000   -1.8008600   -1.3981400
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -1.7668421   -2.1509560   -1.3827282
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                -1.6921429   -1.9787825   -1.4055032
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -1.9264516   -2.3762964   -1.4766069
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -2.3850000   -2.9334270   -1.8365730
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -1.9138298   -2.1973136   -1.6303460
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -1.6664789   -1.8543622   -1.4785956
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                -1.6155224   -1.8426787   -1.3883661
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                -1.9996237   -2.2174600   -1.7817873
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -1.9820313   -2.1972112   -1.7668513
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -2.1167188   -2.3638488   -1.8695887
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1101201   -2.1898761   -2.0303641
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -2.1069697   -2.1931421   -2.0207973
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.9783008   -2.0589499   -1.8976518
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.9235446   -2.0165527   -1.8305364
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -2.0166213   -2.1401951   -1.8930474
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.9201631   -2.0073300   -1.8329962
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.8702235   -1.9562223   -1.7842248
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.9425161   -2.0274833   -1.8575490
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.9197129   -1.9951460   -1.8442797
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.9858992   -2.0644764   -1.9073220
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -2.1137944   -2.1798209   -2.0477680
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -2.1285284   -2.1945278   -2.0625291


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5747407   -1.5944667   -1.5550147
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8907480   -0.9167182   -0.8647779
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5626652   -1.6124881   -1.5128424
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.5807226   -1.6772768   -1.4841684
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0126460   -2.0403823   -1.9849097


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.2769000   -0.8224400    0.2686400
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.1381000   -0.6835974    0.4073974
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.5409286    0.0138901    1.0679670
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.1643095   -0.7742165    0.4455974
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0495909   -0.7451015    0.6459197
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0925000   -0.7140197    0.5290197
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.1628077   -0.7243194    0.3987040
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.2480714   -0.3828552    0.8789981
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1265000   -0.6337481    0.3807481
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.3775000   -0.2498055    1.0048055
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1950556   -0.3568410    0.7469521
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.1922967   -1.0061035    0.6215102
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1173232   -0.8138629    1.0485094
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0921212   -0.8530642    0.6688217
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.3821212   -1.1745368    0.4102944
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.0767045   -1.1478088    0.9943997
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.3354545   -1.1854325    0.5145234
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.1143434   -0.8744838    0.6457970
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.3847649   -1.1014741    0.3319443
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.5210160   -0.2384739    1.2805059
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0528788   -0.6484203    0.7541779
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.3594545   -1.2819336    0.5630245
Birth       ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          2                    1                  0.3418750   -0.1474345    0.8311845
Birth       ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0712798   -0.6056073    0.4630478
Birth       ki0047075b-MAL-ED          INDIA                          4                    1                 -0.3150893   -1.0173647    0.3871861
Birth       ki0047075b-MAL-ED          INDIA                          5                    1                 -0.4422321   -1.1770805    0.2926162
Birth       ki0047075b-MAL-ED          INDIA                          6                    1                  0.0861806   -0.4885385    0.6608996
Birth       ki0047075b-MAL-ED          INDIA                          7                    1                 -0.4679464   -1.0675226    0.1316298
Birth       ki0047075b-MAL-ED          INDIA                          8                    1                 -0.3211397   -0.8840733    0.2417939
Birth       ki0047075b-MAL-ED          INDIA                          9                    1                 -0.2562171   -0.9372100    0.4247757
Birth       ki0047075b-MAL-ED          INDIA                          10                   1                 -0.2485054   -0.9185041    0.4214932
Birth       ki0047075b-MAL-ED          INDIA                          11                   1                 -0.3678750   -0.8814004    0.1456504
Birth       ki0047075b-MAL-ED          INDIA                          12                   1                 -0.1336607   -0.7776042    0.5102828
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0776471   -0.6892147    0.8445088
Birth       ki0047075b-MAL-ED          NEPAL                          3                    1                  0.6701471   -0.0394308    1.3797250
Birth       ki0047075b-MAL-ED          NEPAL                          4                    1                  0.8458824    0.1458094    1.5459553
Birth       ki0047075b-MAL-ED          NEPAL                          5                    1                  0.5813313   -0.0993524    1.2620149
Birth       ki0047075b-MAL-ED          NEPAL                          6                    1                  0.7106471   -0.0553293    1.4766234
Birth       ki0047075b-MAL-ED          NEPAL                          7                    1                  0.8511765    0.0564596    1.6458934
Birth       ki0047075b-MAL-ED          NEPAL                          8                    1                  0.4819328   -0.2873177    1.2511833
Birth       ki0047075b-MAL-ED          NEPAL                          9                    1                  0.6021925   -0.1120534    1.3164384
Birth       ki0047075b-MAL-ED          NEPAL                          10                   1                  0.9569328    0.3160347    1.5978308
Birth       ki0047075b-MAL-ED          NEPAL                          11                   1                  0.3187582   -0.4322692    1.0697856
Birth       ki0047075b-MAL-ED          NEPAL                          12                   1                  0.6296471   -0.0983303    1.3576244
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                  0.0416117   -0.5218737    0.6050971
Birth       ki0047075b-MAL-ED          PERU                           3                    1                  0.0235786   -0.4607720    0.5079292
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.2258974   -0.3570365    0.8088314
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.1996011   -0.3154197    0.7146220
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.1504808   -0.6154305    0.9163920
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.1414047   -0.3798483    0.6626576
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.3150202   -0.1902902    0.8203307
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.4574126    0.0272191    0.8876061
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.0876308   -0.4385087    0.6137702
Birth       ki0047075b-MAL-ED          PERU                           11                   1                 -0.0265757   -0.5217227    0.4685713
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.2347308   -0.3282765    0.7977380
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0072857   -0.4850473    0.4704758
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.3054202   -0.2187743    0.8296147
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1522527   -0.5305668    0.8350723
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.1221429   -0.3147138    0.5589995
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.2031746   -0.8205888    0.4142396
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.1233766   -0.6776327    0.4308794
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                 -0.6648413   -1.1674392   -0.1622434
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.2216667   -0.7526926    0.3093592
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.4203571   -0.9003571    0.0596428
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.3110714   -0.8607327    0.2385898
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0268681   -0.5310080    0.5847442
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.1807619   -0.8030116    1.1645354
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                 -0.1560714   -1.0266329    0.7144900
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.2114286   -0.6843426    1.1071997
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.1767227   -1.0764796    1.4299250
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.2661345   -0.7714742    1.3037431
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0814286   -1.6552267    1.8180838
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.3402521   -0.4612610    1.1417652
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.6414286   -0.2221200    1.5049772
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.3377444   -0.4201065    1.0955953
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.4780952   -0.4707712    1.4269616
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                 -0.0485714   -0.6999093    0.6027664
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  0.3915367    0.0959379    0.6871354
Birth       ki1101329-Keneba           GAMBIA                         3                    1                  0.3170258    0.0413743    0.5926774
Birth       ki1101329-Keneba           GAMBIA                         4                    1                  0.2629652   -0.0430450    0.5689755
Birth       ki1101329-Keneba           GAMBIA                         5                    1                  0.3472245    0.0152065    0.6792425
Birth       ki1101329-Keneba           GAMBIA                         6                    1                  0.3014297   -0.0266837    0.6295431
Birth       ki1101329-Keneba           GAMBIA                         7                    1                  0.1876319   -0.1514224    0.5266862
Birth       ki1101329-Keneba           GAMBIA                         8                    1                  0.2249119   -0.0888862    0.5387100
Birth       ki1101329-Keneba           GAMBIA                         9                    1                  0.1239867   -0.1797780    0.4277515
Birth       ki1101329-Keneba           GAMBIA                         10                   1                  0.0979559   -0.1909969    0.3869088
Birth       ki1101329-Keneba           GAMBIA                         11                   1                  0.2073738   -0.1219563    0.5367039
Birth       ki1101329-Keneba           GAMBIA                         12                   1                  0.0832815   -0.2169527    0.3835157
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                 -0.1825894   -0.3372846   -0.0278943
Birth       ki1119695-PROBIT           BELARUS                        3                    1                 -0.0564667   -0.2336135    0.1206801
Birth       ki1119695-PROBIT           BELARUS                        4                    1                  0.0104139   -0.1716574    0.1924851
Birth       ki1119695-PROBIT           BELARUS                        5                    1                  0.0398820   -0.1525230    0.2322870
Birth       ki1119695-PROBIT           BELARUS                        6                    1                 -0.1297546   -0.3489362    0.0894270
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0079871   -0.2446998    0.2287256
Birth       ki1119695-PROBIT           BELARUS                        8                    1                 -0.0792138   -0.2983313    0.1399037
Birth       ki1119695-PROBIT           BELARUS                        9                    1                 -0.1240408   -0.3743364    0.1262548
Birth       ki1119695-PROBIT           BELARUS                        10                   1                 -0.0663566   -0.2742597    0.1415466
Birth       ki1119695-PROBIT           BELARUS                        11                   1                 -0.0981143   -0.2805293    0.0843007
Birth       ki1119695-PROBIT           BELARUS                        12                   1                 -0.1596354   -0.3494198    0.0301491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0532627   -0.1522710    0.0457456
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.1144650    0.0183880    0.2105421
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.1212158    0.0202991    0.2221325
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.1966703    0.0926745    0.3006661
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.2526158    0.1507978    0.3544339
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.3078163    0.2085587    0.4070738
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.3882350    0.2966828    0.4797873
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.3807019    0.2926854    0.4687184
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.3560683    0.2600010    0.4521355
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.3185666    0.2233569    0.4137762
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2760794    0.1825305    0.3696282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1573204    0.0737905    0.2408503
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.2573081    0.1805029    0.3341133
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.2790789    0.2006694    0.3574884
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.2271924    0.1274919    0.3268929
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.2586579    0.1616892    0.3556267
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.2652420    0.1739285    0.3565554
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1142126    0.0284404    0.1999847
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.2147881    0.1403477    0.2892285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0501407   -0.0225290    0.1228103
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0383693   -0.1119188    0.0351801
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0043703   -0.0768667    0.0681260
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.3605185   -0.8330071    0.1119701
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.2313808   -0.8107243    0.3479626
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.4635269   -0.0442030    0.9712568
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0111243   -0.5423801    0.5646288
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
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.3156384   -0.0962433    0.7275201
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.4110845   -0.0964903    0.9186594
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.2025088   -0.4580250    0.8630426
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
6 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.1505463   -0.6203413    0.3192488
6 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.3687719   -0.2329909    0.9705347
6 months    ki0047075b-MAL-ED          PERU                           5                    1                  0.1207164   -0.2975615    0.5389943
6 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0472719   -0.5068604    0.6014042
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0044856   -0.4142110    0.4052398
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.1008553   -0.4196343    0.6213449
6 months    ki0047075b-MAL-ED          PERU                           9                    1                  0.0167067   -0.4509550    0.4843685
6 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.0187719   -0.4640340    0.5015778
6 months    ki0047075b-MAL-ED          PERU                           11                   1                 -0.4709156   -0.9057734   -0.0360577
6 months    ki0047075b-MAL-ED          PERU                           12                   1                  0.2115351   -0.2932978    0.7163680
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.1082590   -0.3189297    0.5354476
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.7397807    0.0834956    1.3960658
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.6352935    0.0231307    1.2474563
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.4852935   -0.2382009    1.2087880
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.4068640   -0.0551552    0.8688832
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0376349   -0.5440798    0.6193497
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
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                  0.0366512   -0.3262076    0.3995100
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.0527451   -0.4119834    0.3064932
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                  0.4884037    0.1121478    0.8646595
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                  0.1964898   -0.1977413    0.5907210
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                  0.2723091   -0.1041375    0.6487557
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                  0.5428354    0.0584749    1.0271959
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                  0.3720196   -0.0168215    0.7608608
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                  0.0207006   -0.3122784    0.3536796
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                  0.1053196   -0.1969388    0.4075781
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                  0.2151683   -0.1227348    0.5530713
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                  0.1647339   -0.1462307    0.4756985
6 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           2                    1                 -0.5313333   -0.9725275   -0.0901391
6 months    ki1114097-CMIN             PERU                           3                    1                 -0.2131758   -0.5976902    0.1713386
6 months    ki1114097-CMIN             PERU                           4                    1                 -0.4286794   -0.8419155   -0.0154433
6 months    ki1114097-CMIN             PERU                           5                    1                 -0.3576543   -0.7508260    0.0355173
6 months    ki1114097-CMIN             PERU                           6                    1                 -0.3400926   -0.7468630    0.0666778
6 months    ki1114097-CMIN             PERU                           7                    1                 -0.3188355   -0.7066174    0.0689465
6 months    ki1114097-CMIN             PERU                           8                    1                 -0.2786454   -0.6719581    0.1146674
6 months    ki1114097-CMIN             PERU                           9                    1                 -0.3304778   -0.7372311    0.0762755
6 months    ki1114097-CMIN             PERU                           10                   1                 -0.2426778   -0.6884258    0.2030702
6 months    ki1114097-CMIN             PERU                           11                   1                  0.0304575   -0.5053585    0.5662736
6 months    ki1114097-CMIN             PERU                           12                   1                 -0.5102361   -0.9280703   -0.0924019
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0572904   -0.0720730    0.1866538
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0275832   -0.1563983    0.1012318
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0160075   -0.1078786    0.1398936
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0067199   -0.1309935    0.1175537
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.0392624   -0.0888156    0.1673404
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0171432   -0.1420681    0.1077817
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.1310920    0.0126035    0.2495806
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.1750834    0.0586096    0.2915573
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.0805529   -0.0481761    0.2092820
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0888400   -0.0304390    0.2081190
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2048053    0.0823871    0.3272236
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0267754   -0.1190551    0.0655043
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0040787   -0.0877003    0.0958577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0226249   -0.0721596    0.1174094
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0278217   -0.1264928    0.0708494
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.0093259   -0.1045298    0.0858781
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0016252   -0.0903257    0.0935760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0688488   -0.1570605    0.0193629
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.0080934   -0.0941004    0.0779136
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.0872861   -0.1766609    0.0020887
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1419727   -0.2284388   -0.0555065
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0786047   -0.1689900    0.0117806
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.7301261   -1.3475419   -0.1127102
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.3638722   -0.8971521    0.1694077
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.2215357   -0.3538709    0.7969423
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.3278195   -0.9043663    0.2487272
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0550000   -0.7421500    0.8521500
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0326587   -0.6157368    0.5504193
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.2123052   -0.8562847    0.4316743
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.1007143   -0.6188162    0.4173877
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0687143   -0.6956155    0.5581869
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.1025325   -0.6722685    0.4672035
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1896561   -0.3037430    0.6830552
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.2041042   -1.0874415    0.6792331
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.4275476   -0.5981128    1.4532080
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.8438333    0.0415334    1.6461333
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.5306667   -0.3241429    1.3854762
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.3151667   -0.9081766    1.5385099
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0966667   -1.2644963    1.0711629
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.4095128   -1.3439449    0.5249192
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.1719259   -0.6661629    1.0100148
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.2182619   -0.6838884    1.1204123
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.1718333   -0.7304958    1.0741625
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.0733939   -1.0126432    0.8658554
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.5089912   -0.0100850    1.0280674
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.7094737    0.1011124    1.3178350
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.3595865   -0.3302905    1.0494634
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                  0.3644079   -0.2869531    1.0157689
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.6103801    0.0643518    1.1564084
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.3966362   -0.2208701    1.0141424
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.3326817   -0.2906441    0.9560075
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                  0.3339912   -0.2879104    0.9558928
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.2858502   -0.3140925    0.8857929
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                  0.4419079   -0.1155396    0.9993554
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.5647368    0.0036141    1.1258596
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1908204   -0.6905363    0.3088954
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.2743498   -0.8372108    0.2885111
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.4235646   -0.0128272    0.8599564
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                  0.1636842   -0.4538770    0.7812454
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                  0.5905848    0.1494327    1.0317369
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.4165325   -0.0428901    0.8759551
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                  0.6515570    0.2409571    1.0621569
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                  0.6128070   -0.0136370    1.2392511
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                  0.4644737    0.0143532    0.9145942
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                  0.4169737   -0.1156905    0.9496379
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.4019737   -0.1544079    0.9583553
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0531275   -0.3971103    0.5033653
24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.2048333   -0.3453338    0.7550005
24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.0010152   -0.6197049    0.6217352
24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0738860   -0.5363272    0.6840991
24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.5069242   -0.3730340    1.3868825
24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.1361667   -0.2785583    0.5508917
24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.2020000   -0.3494345    0.7534345
24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.5064048    0.0240520    0.9887575
24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.4735476   -0.0273420    0.9744372
24 months   ki0047075b-MAL-ED          PERU                           11                   1                 -0.0340714   -0.5344137    0.4662708
24 months   ki0047075b-MAL-ED          PERU                           12                   1                 -0.0855000   -0.5708440    0.3998440
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.1941845   -0.7833464    0.3949774
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.5105882   -0.2095081    1.2306846
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.8076716    0.1578810    1.4574621
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.5876716   -0.0921283    1.2674714
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.3515257   -0.3015852    1.0046367
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.1276337   -0.4566951    0.7119624
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.6849632   -0.0606634    1.4305899
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.3728251   -0.1289020    0.8745521
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0868882   -0.4766001    0.6503766
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.1373465   -0.7372905    0.4625974
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0864279   -0.6015944    0.4287386
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.4029091   -1.1598898    0.3540717
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.3658889   -1.1824653    0.4506875
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.7161667   -1.7728874    0.3405541
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.1058889   -0.8527412    0.6409634
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0418889   -0.6699783    0.7537561
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.0035217   -0.7780883    0.7710448
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0025455   -0.8320269    0.8371178
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0046667   -0.7356490    0.7449823
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.3486667   -1.0923437    0.3950104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1463750   -0.8881551    0.5954051
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.2018077   -0.9187070    0.5150916
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.3922855   -0.9681049    0.1835338
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.4049367   -0.8418400    0.0319665
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.2702496   -0.7289671    0.1884680
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.5125517   -0.9676203   -0.0574832
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.2441971   -0.7111255    0.2227313
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 -0.2104827   -0.6506005    0.2296352
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.2533333   -0.8379872    0.3313206
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.0698226   -0.3799038    0.5195490
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.1686038   -0.6650943    0.3278867
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.2068035   -0.6412762    0.2276693
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.6384980   -1.0964953   -0.1805008
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                 -0.0666917   -0.5498351    0.4164516
24 months   ki1000108-IRC              INDIA                          3                    1                  0.0817122   -0.3826837    0.5461080
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.1388346   -0.6367184    0.3590492
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.5376874   -1.0916576    0.0162828
24 months   ki1000108-IRC              INDIA                          6                    1                  0.5550972    0.1376022    0.9725922
24 months   ki1000108-IRC              INDIA                          7                    1                  0.2926072   -0.1288296    0.7140441
24 months   ki1000108-IRC              INDIA                          8                    1                  0.3913278   -0.0214635    0.8041190
24 months   ki1000108-IRC              INDIA                          9                    1                  0.2234405   -0.3087676    0.7556487
24 months   ki1000108-IRC              INDIA                          10                   1                  0.3701873   -0.0377338    0.7781084
24 months   ki1000108-IRC              INDIA                          11                   1                  0.3731118   -0.0500193    0.7962430
24 months   ki1000108-IRC              INDIA                          12                   1                  0.1285830   -0.2973027    0.5544687
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0665730   -0.3187541    0.4519001
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.1639982   -0.2869941    0.6149906
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.1836639   -0.6726494    0.3053215
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.0479945   -0.4760316    0.3800426
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0031619   -0.4520146    0.4456909
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.1782969   -0.2909774    0.6475711
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0424835   -0.4391107    0.5240777
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.2732290   -0.3214438    0.8679017
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.2068381   -0.3110170    0.7246933
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0781202   -0.3775558    0.5337961
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.2339703   -0.2159921    0.6839328
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.1155855   -0.3454832    0.1143122
24 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0802534   -0.3014993    0.1409926
24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.1415497   -0.3754894    0.0923900
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 -0.1773424   -0.4114562    0.0567714
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 -0.1087740   -0.3747969    0.1572489
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 -0.1808866   -0.4596781    0.0979048
24 months   ki1101329-Keneba           GAMBIA                         8                    1                  0.0635702   -0.1677198    0.2948602
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 -0.1802516   -0.4015052    0.0410019
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.1819666   -0.3923833    0.0284501
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0538152   -0.2960820    0.1884517
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 -0.0921798   -0.3463816    0.1620220
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                  0.1032749   -0.3904940    0.5970438
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                  0.1471412   -0.3361399    0.6304223
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.2340135   -0.7801765    0.3121495
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                  0.2321042   -0.3100841    0.7742925
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                  0.3863111   -0.1020756    0.8746977
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.1097708   -0.6971663    0.4776247
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.1214264   -0.6070635    0.3642106
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 -0.0552035   -0.5224670    0.4120600
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                  0.0953673   -0.3611115    0.5518462
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.0782679   -0.5984307    0.4418949
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.2407579   -0.8075760    0.3260602
24 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           2                    1                  0.0527778   -0.3683472    0.4739028
24 months   ki1114097-CMIN             PERU                           3                    1                  0.0795827   -0.3247417    0.4839071
24 months   ki1114097-CMIN             PERU                           4                    1                  0.1065657   -0.3405360    0.5536675
24 months   ki1114097-CMIN             PERU                           5                    1                 -0.2529604   -0.6687887    0.1628679
24 months   ki1114097-CMIN             PERU                           6                    1                 -0.0530513   -0.4648368    0.3587342
24 months   ki1114097-CMIN             PERU                           7                    1                  0.1202658   -0.2433729    0.4839045
24 months   ki1114097-CMIN             PERU                           8                    1                  0.1803997   -0.2251596    0.5859590
24 months   ki1114097-CMIN             PERU                           9                    1                 -0.0700000   -0.4478717    0.3078717
24 months   ki1114097-CMIN             PERU                           10                   1                  0.2327972   -0.2768224    0.7424168
24 months   ki1114097-CMIN             PERU                           11                   1                  0.2025841   -0.3120622    0.7172304
24 months   ki1114097-CMIN             PERU                           12                   1                  0.0781339   -0.3168257    0.4730935
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
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.2344024   -0.1247180    0.5935229
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                  0.0670603   -0.4187021    0.5528228
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.1417596   -0.2712585    0.5547777
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0925492   -0.6317912    0.4466929
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.5510976   -1.1749516    0.0727564
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 -0.0799273   -0.4907615    0.3309068
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.1674236   -0.1843175    0.5191647
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.2183801   -0.1558146    0.5925747
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 -0.1657212   -0.5343326    0.2028901
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 -0.1481288   -0.5151766    0.2189190
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.2828163   -0.6694620    0.1038294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0031504   -0.1080547    0.1143556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1318193    0.0231441    0.2404945
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.1865756    0.0622352    0.3109159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0934989   -0.0542403    0.2412381
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1899570    0.0762098    0.3037042
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.2398966    0.1231919    0.3566013
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1676040    0.0523388    0.2828692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.1904073    0.0824933    0.2983213
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.1242209    0.0140289    0.2344130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0036743   -0.1051769    0.0978283
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0184083   -0.1210526    0.0842360


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0151031   -0.3630173    0.3932235
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1163970   -0.7192946    0.4865007
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1800061   -0.5589083    0.1988962
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.5487453    0.0540047    1.0434859
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.1370008   -0.1963647    0.4703663
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1058888   -0.4327847    0.2210072
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.4605302    0.0320342    0.8890262
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2367762   -0.5155510    0.9891034
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.2037786    0.0017037    0.4058534
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -0.0753457   -0.2487799    0.0980885
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2242842    0.1624163    0.2861520
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1249725    0.0755102    0.1744348
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0316371   -0.3332944    0.3965685
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0846459   -0.6922856    0.5229937
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1664749   -0.1703202    0.5032699
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.2356907   -0.1026929    0.5740742
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0055290   -0.2812104    0.2701523
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1580714   -0.1598653    0.4760081
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1597881   -0.5981993    0.2786230
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0737939   -0.4421570    0.2945692
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.1868657   -0.2279610    0.6016924
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1606724   -0.1294260    0.4507709
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.1243808   -0.1259152    0.3746767
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1388145   -0.3362391    0.0586102
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0655480   -0.2120240    0.0809279
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.3408968    0.0129613    0.6688324
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1607547   -0.2436720    0.5651814
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1514253   -0.0718443    0.3746949
6 months    ki1114097-CMIN             PERU                           1                    NA                -0.3060326   -0.6118856   -0.0001796
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.4085217   -1.0774062    0.2603628
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1503644    0.0135262    0.2872026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0651965   -0.0154234    0.1458165
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1640740   -0.0558159    0.3839639
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0402052   -0.1040227    0.0236124
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1188275   -0.5196345    0.2819795
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1461677   -0.5607575    0.8530928
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.4073429    0.0019158    0.8127700
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.3192544    0.0143982    0.6241106
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1527338   -0.1721647    0.4776324
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1552521   -0.2052810    0.5157852
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1628879   -0.7566052    0.4308295
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2661330   -0.5733159    0.0410499
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1839259   -0.1201951    0.4880470
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0839730   -0.2015971    0.3695430
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0995951   -0.2505360    0.0513459
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1203957   -0.2284061    0.4691976
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0055397   -0.3560577    0.3671372
24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0588928   -0.2235895    0.3413751
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0819338   -0.4767252    0.3128576
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1585080   -0.7306862    0.4136702
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0415380   -0.3286885    0.2456125
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0974742    0.0216930    0.1732553

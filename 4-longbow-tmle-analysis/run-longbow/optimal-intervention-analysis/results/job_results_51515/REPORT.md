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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        month    n_cell       n
----------  -------------------------  -----------------------------  ------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2            24     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3            28     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4            21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5            21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             9     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7            22     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8            25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9            22     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10           24     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11           15     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12           27     257
Birth       ki0047075b-MAL-ED          BRAZIL                         1             9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2            21     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3            18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4             8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5            19     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6             7     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7            17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8            18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9            28     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10           18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11           15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12           13     191
Birth       ki0047075b-MAL-ED          INDIA                          1            16     206
Birth       ki0047075b-MAL-ED          INDIA                          2            16     206
Birth       ki0047075b-MAL-ED          INDIA                          3            20     206
Birth       ki0047075b-MAL-ED          INDIA                          4            15     206
Birth       ki0047075b-MAL-ED          INDIA                          5             7     206
Birth       ki0047075b-MAL-ED          INDIA                          6            17     206
Birth       ki0047075b-MAL-ED          INDIA                          7            21     206
Birth       ki0047075b-MAL-ED          INDIA                          8            17     206
Birth       ki0047075b-MAL-ED          INDIA                          9            19     206
Birth       ki0047075b-MAL-ED          INDIA                          10           24     206
Birth       ki0047075b-MAL-ED          INDIA                          11           20     206
Birth       ki0047075b-MAL-ED          INDIA                          12           14     206
Birth       ki0047075b-MAL-ED          NEPAL                          1            17     173
Birth       ki0047075b-MAL-ED          NEPAL                          2            14     173
Birth       ki0047075b-MAL-ED          NEPAL                          3            12     173
Birth       ki0047075b-MAL-ED          NEPAL                          4            15     173
Birth       ki0047075b-MAL-ED          NEPAL                          5            18     173
Birth       ki0047075b-MAL-ED          NEPAL                          6            13     173
Birth       ki0047075b-MAL-ED          NEPAL                          7            17     173
Birth       ki0047075b-MAL-ED          NEPAL                          8            14     173
Birth       ki0047075b-MAL-ED          NEPAL                          9             9     173
Birth       ki0047075b-MAL-ED          NEPAL                          10           16     173
Birth       ki0047075b-MAL-ED          NEPAL                          11           18     173
Birth       ki0047075b-MAL-ED          NEPAL                          12           10     173
Birth       ki0047075b-MAL-ED          PERU                           1            37     287
Birth       ki0047075b-MAL-ED          PERU                           2            23     287
Birth       ki0047075b-MAL-ED          PERU                           3            22     287
Birth       ki0047075b-MAL-ED          PERU                           4            21     287
Birth       ki0047075b-MAL-ED          PERU                           5            25     287
Birth       ki0047075b-MAL-ED          PERU                           6            19     287
Birth       ki0047075b-MAL-ED          PERU                           7            23     287
Birth       ki0047075b-MAL-ED          PERU                           8            19     287
Birth       ki0047075b-MAL-ED          PERU                           9            22     287
Birth       ki0047075b-MAL-ED          PERU                           10           24     287
Birth       ki0047075b-MAL-ED          PERU                           11           31     287
Birth       ki0047075b-MAL-ED          PERU                           12           21     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2            24     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3            18     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4            13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5            13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6            18     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7            22     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8            10     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9            21     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10           28     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11           27     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12           40     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            14     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            16     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           16     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5            11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6             9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10           10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11           11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            4      90
Birth       ki1000108-IRC              INDIA                          1            34     388
Birth       ki1000108-IRC              INDIA                          2            25     388
Birth       ki1000108-IRC              INDIA                          3            27     388
Birth       ki1000108-IRC              INDIA                          4            22     388
Birth       ki1000108-IRC              INDIA                          5            21     388
Birth       ki1000108-IRC              INDIA                          6            34     388
Birth       ki1000108-IRC              INDIA                          7            35     388
Birth       ki1000108-IRC              INDIA                          8            39     388
Birth       ki1000108-IRC              INDIA                          9            25     388
Birth       ki1000108-IRC              INDIA                          10           37     388
Birth       ki1000108-IRC              INDIA                          11           40     388
Birth       ki1000108-IRC              INDIA                          12           49     388
Birth       ki1000109-EE               PAKISTAN                       1             0       2
Birth       ki1000109-EE               PAKISTAN                       2             0       2
Birth       ki1000109-EE               PAKISTAN                       3             0       2
Birth       ki1000109-EE               PAKISTAN                       4             0       2
Birth       ki1000109-EE               PAKISTAN                       5             0       2
Birth       ki1000109-EE               PAKISTAN                       6             0       2
Birth       ki1000109-EE               PAKISTAN                       7             0       2
Birth       ki1000109-EE               PAKISTAN                       8             0       2
Birth       ki1000109-EE               PAKISTAN                       9             0       2
Birth       ki1000109-EE               PAKISTAN                       10            0       2
Birth       ki1000109-EE               PAKISTAN                       11            0       2
Birth       ki1000109-EE               PAKISTAN                       12            2       2
Birth       ki1000109-ResPak           PAKISTAN                       1             1       7
Birth       ki1000109-ResPak           PAKISTAN                       2             0       7
Birth       ki1000109-ResPak           PAKISTAN                       3             0       7
Birth       ki1000109-ResPak           PAKISTAN                       4             2       7
Birth       ki1000109-ResPak           PAKISTAN                       5             1       7
Birth       ki1000109-ResPak           PAKISTAN                       6             2       7
Birth       ki1000109-ResPak           PAKISTAN                       7             1       7
Birth       ki1000109-ResPak           PAKISTAN                       8             0       7
Birth       ki1000109-ResPak           PAKISTAN                       9             0       7
Birth       ki1000109-ResPak           PAKISTAN                       10            0       7
Birth       ki1000109-ResPak           PAKISTAN                       11            0       7
Birth       ki1000109-ResPak           PAKISTAN                       12            0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3            11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4            17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5            17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6            16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             8     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8            17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9            19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10           19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11           18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12           15     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     1            10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2             4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3             6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4             2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5             0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6             2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7             1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8             0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9             0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10            1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12            0      28
Birth       ki1114097-CMIN             BANGLADESH                     1             1      13
Birth       ki1114097-CMIN             BANGLADESH                     2             2      13
Birth       ki1114097-CMIN             BANGLADESH                     3             0      13
Birth       ki1114097-CMIN             BANGLADESH                     4             1      13
Birth       ki1114097-CMIN             BANGLADESH                     5             1      13
Birth       ki1114097-CMIN             BANGLADESH                     6             0      13
Birth       ki1114097-CMIN             BANGLADESH                     7             0      13
Birth       ki1114097-CMIN             BANGLADESH                     8             3      13
Birth       ki1114097-CMIN             BANGLADESH                     9             1      13
Birth       ki1114097-CMIN             BANGLADESH                     10            1      13
Birth       ki1114097-CMIN             BANGLADESH                     11            3      13
Birth       ki1114097-CMIN             BANGLADESH                     12            0      13
Birth       ki1114097-CMIN             BRAZIL                         1            13     115
Birth       ki1114097-CMIN             BRAZIL                         2             7     115
Birth       ki1114097-CMIN             BRAZIL                         3            13     115
Birth       ki1114097-CMIN             BRAZIL                         4             9     115
Birth       ki1114097-CMIN             BRAZIL                         5             5     115
Birth       ki1114097-CMIN             BRAZIL                         6             6     115
Birth       ki1114097-CMIN             BRAZIL                         7             4     115
Birth       ki1114097-CMIN             BRAZIL                         8            13     115
Birth       ki1114097-CMIN             BRAZIL                         9             8     115
Birth       ki1114097-CMIN             BRAZIL                         10           16     115
Birth       ki1114097-CMIN             BRAZIL                         11           11     115
Birth       ki1114097-CMIN             BRAZIL                         12           10     115
Birth       ki1114097-CMIN             PERU                           1             1      10
Birth       ki1114097-CMIN             PERU                           2             1      10
Birth       ki1114097-CMIN             PERU                           3             2      10
Birth       ki1114097-CMIN             PERU                           4             3      10
Birth       ki1114097-CMIN             PERU                           5             0      10
Birth       ki1114097-CMIN             PERU                           6             0      10
Birth       ki1114097-CMIN             PERU                           7             0      10
Birth       ki1114097-CMIN             PERU                           8             1      10
Birth       ki1114097-CMIN             PERU                           9             2      10
Birth       ki1114097-CMIN             PERU                           10            0      10
Birth       ki1114097-CMIN             PERU                           11            0      10
Birth       ki1114097-CMIN             PERU                           12            0      10
Birth       ki1114097-CONTENT          PERU                           1             0       2
Birth       ki1114097-CONTENT          PERU                           2             0       2
Birth       ki1114097-CONTENT          PERU                           3             0       2
Birth       ki1114097-CONTENT          PERU                           4             0       2
Birth       ki1114097-CONTENT          PERU                           5             2       2
Birth       ki1114097-CONTENT          PERU                           6             0       2
Birth       ki1114097-CONTENT          PERU                           7             0       2
Birth       ki1114097-CONTENT          PERU                           8             0       2
Birth       ki1114097-CONTENT          PERU                           9             0       2
Birth       ki1114097-CONTENT          PERU                           10            0       2
Birth       ki1114097-CONTENT          PERU                           11            0       2
Birth       ki1114097-CONTENT          PERU                           12            0       2
Birth       ki1119695-PROBIT           BELARUS                        1           858   13884
Birth       ki1119695-PROBIT           BELARUS                        2           791   13884
Birth       ki1119695-PROBIT           BELARUS                        3           968   13884
Birth       ki1119695-PROBIT           BELARUS                        4           956   13884
Birth       ki1119695-PROBIT           BELARUS                        5           956   13884
Birth       ki1119695-PROBIT           BELARUS                        6          1007   13884
Birth       ki1119695-PROBIT           BELARUS                        7          1280   13884
Birth       ki1119695-PROBIT           BELARUS                        8          1326   13884
Birth       ki1119695-PROBIT           BELARUS                        9          1313   13884
Birth       ki1119695-PROBIT           BELARUS                        10         1509   13884
Birth       ki1119695-PROBIT           BELARUS                        11         1397   13884
Birth       ki1119695-PROBIT           BELARUS                        12         1523   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1          1344   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2          1036   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3          1140   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4          1007   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5          1000   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6          1132   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7          1176   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8          1226   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9          1313   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10         1042   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11         1134   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12         1255   13805
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          1887   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2          1564   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3          1873   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4          1364   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5           961   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6           993   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7          1086   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8          1495   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9          1867   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10         2123   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11         2170   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12         2230   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2           130     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3           174     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4           159     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5           123     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6            94     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7            69     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8            32     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9            31     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10           10     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2            20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3            25     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4            22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5            21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6             8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7            20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8            22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9            22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10           22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11           16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12           26     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1            13     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2            24     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3            18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4            10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5            19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6            10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7            17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8            16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9            28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10           21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11           19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12           14     209
6 months    ki0047075b-MAL-ED          INDIA                          1            18     236
6 months    ki0047075b-MAL-ED          INDIA                          2            20     236
6 months    ki0047075b-MAL-ED          INDIA                          3            22     236
6 months    ki0047075b-MAL-ED          INDIA                          4            15     236
6 months    ki0047075b-MAL-ED          INDIA                          5             8     236
6 months    ki0047075b-MAL-ED          INDIA                          6            18     236
6 months    ki0047075b-MAL-ED          INDIA                          7            23     236
6 months    ki0047075b-MAL-ED          INDIA                          8            20     236
6 months    ki0047075b-MAL-ED          INDIA                          9            21     236
6 months    ki0047075b-MAL-ED          INDIA                          10           26     236
6 months    ki0047075b-MAL-ED          INDIA                          11           25     236
6 months    ki0047075b-MAL-ED          INDIA                          12           20     236
6 months    ki0047075b-MAL-ED          NEPAL                          1            25     236
6 months    ki0047075b-MAL-ED          NEPAL                          2            17     236
6 months    ki0047075b-MAL-ED          NEPAL                          3            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          4            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          5            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          6            18     236
6 months    ki0047075b-MAL-ED          NEPAL                          7            21     236
6 months    ki0047075b-MAL-ED          NEPAL                          8            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          9            17     236
6 months    ki0047075b-MAL-ED          NEPAL                          10           22     236
6 months    ki0047075b-MAL-ED          NEPAL                          11           23     236
6 months    ki0047075b-MAL-ED          NEPAL                          12           16     236
6 months    ki0047075b-MAL-ED          PERU                           1            37     273
6 months    ki0047075b-MAL-ED          PERU                           2            22     273
6 months    ki0047075b-MAL-ED          PERU                           3            21     273
6 months    ki0047075b-MAL-ED          PERU                           4            20     273
6 months    ki0047075b-MAL-ED          PERU                           5            24     273
6 months    ki0047075b-MAL-ED          PERU                           6            19     273
6 months    ki0047075b-MAL-ED          PERU                           7            21     273
6 months    ki0047075b-MAL-ED          PERU                           8            17     273
6 months    ki0047075b-MAL-ED          PERU                           9            22     273
6 months    ki0047075b-MAL-ED          PERU                           10           19     273
6 months    ki0047075b-MAL-ED          PERU                           11           33     273
6 months    ki0047075b-MAL-ED          PERU                           12           18     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2            26     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3            18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5            12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6            17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7            23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9            20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10           24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11           24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12           35     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4            10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            25     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           29     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           28     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            27     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3            25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4            29     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5            44     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6            36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7            33     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8            41     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9            23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10           19     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11           40     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12           28     369
6 months    ki1000108-IRC              INDIA                          1            36     407
6 months    ki1000108-IRC              INDIA                          2            27     407
6 months    ki1000108-IRC              INDIA                          3            29     407
6 months    ki1000108-IRC              INDIA                          4            22     407
6 months    ki1000108-IRC              INDIA                          5            20     407
6 months    ki1000108-IRC              INDIA                          6            37     407
6 months    ki1000108-IRC              INDIA                          7            36     407
6 months    ki1000108-IRC              INDIA                          8            45     407
6 months    ki1000108-IRC              INDIA                          9            27     407
6 months    ki1000108-IRC              INDIA                          10           36     407
6 months    ki1000108-IRC              INDIA                          11           41     407
6 months    ki1000108-IRC              INDIA                          12           51     407
6 months    ki1000109-EE               PAKISTAN                       1            87     372
6 months    ki1000109-EE               PAKISTAN                       2            81     372
6 months    ki1000109-EE               PAKISTAN                       3            41     372
6 months    ki1000109-EE               PAKISTAN                       4            29     372
6 months    ki1000109-EE               PAKISTAN                       5             2     372
6 months    ki1000109-EE               PAKISTAN                       6             0     372
6 months    ki1000109-EE               PAKISTAN                       7             0     372
6 months    ki1000109-EE               PAKISTAN                       8             0     372
6 months    ki1000109-EE               PAKISTAN                       9             0     372
6 months    ki1000109-EE               PAKISTAN                       10            0     372
6 months    ki1000109-EE               PAKISTAN                       11           49     372
6 months    ki1000109-EE               PAKISTAN                       12           83     372
6 months    ki1000109-ResPak           PAKISTAN                       1             6     235
6 months    ki1000109-ResPak           PAKISTAN                       2            12     235
6 months    ki1000109-ResPak           PAKISTAN                       3            13     235
6 months    ki1000109-ResPak           PAKISTAN                       4            28     235
6 months    ki1000109-ResPak           PAKISTAN                       5            30     235
6 months    ki1000109-ResPak           PAKISTAN                       6            46     235
6 months    ki1000109-ResPak           PAKISTAN                       7            33     235
6 months    ki1000109-ResPak           PAKISTAN                       8            35     235
6 months    ki1000109-ResPak           PAKISTAN                       9            20     235
6 months    ki1000109-ResPak           PAKISTAN                       10            7     235
6 months    ki1000109-ResPak           PAKISTAN                       11            3     235
6 months    ki1000109-ResPak           PAKISTAN                       12            2     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            85    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            81    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3            80    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4            77    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5            76    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6           102    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7           115    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8           152    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9           166    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10          148    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11          125    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12          129    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            61     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2            37     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4            26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5            29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6            31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7            17     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9            12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10           26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11           44     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12           62     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            50     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2            50     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3            50     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4            44     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5            40     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6            39     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7            45     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8            38     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9            30     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10           52     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11           49     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12           50     537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1           199    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2           137    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3           151    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4           138    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           160    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           143    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           145    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           174    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           198    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          196    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          187    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          201    2029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1            18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2            19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3            21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4            27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5            31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6            39     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7            24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8            19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9            34     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10           29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11           28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12           10     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1             2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7           119     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8           220     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9           204     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10           13     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11            4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12            1     563
6 months    ki1114097-CMIN             BANGLADESH                     1            27     243
6 months    ki1114097-CMIN             BANGLADESH                     2            30     243
6 months    ki1114097-CMIN             BANGLADESH                     3            18     243
6 months    ki1114097-CMIN             BANGLADESH                     4            17     243
6 months    ki1114097-CMIN             BANGLADESH                     5            20     243
6 months    ki1114097-CMIN             BANGLADESH                     6            23     243
6 months    ki1114097-CMIN             BANGLADESH                     7            12     243
6 months    ki1114097-CMIN             BANGLADESH                     8            13     243
6 months    ki1114097-CMIN             BANGLADESH                     9            16     243
6 months    ki1114097-CMIN             BANGLADESH                     10           20     243
6 months    ki1114097-CMIN             BANGLADESH                     11            2     243
6 months    ki1114097-CMIN             BANGLADESH                     12           45     243
6 months    ki1114097-CMIN             BRAZIL                         1            10     108
6 months    ki1114097-CMIN             BRAZIL                         2             6     108
6 months    ki1114097-CMIN             BRAZIL                         3            13     108
6 months    ki1114097-CMIN             BRAZIL                         4            10     108
6 months    ki1114097-CMIN             BRAZIL                         5             5     108
6 months    ki1114097-CMIN             BRAZIL                         6             6     108
6 months    ki1114097-CMIN             BRAZIL                         7             4     108
6 months    ki1114097-CMIN             BRAZIL                         8            11     108
6 months    ki1114097-CMIN             BRAZIL                         9             8     108
6 months    ki1114097-CMIN             BRAZIL                         10           15     108
6 months    ki1114097-CMIN             BRAZIL                         11           12     108
6 months    ki1114097-CMIN             BRAZIL                         12            8     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1            15     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2            87     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3           115     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4           125     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5           110     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6            61     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7            40     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8            37     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9            98     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10           34     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11           47     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12           79     848
6 months    ki1114097-CMIN             PERU                           1            41     637
6 months    ki1114097-CMIN             PERU                           2            56     637
6 months    ki1114097-CMIN             PERU                           3            69     637
6 months    ki1114097-CMIN             PERU                           4            69     637
6 months    ki1114097-CMIN             PERU                           5            70     637
6 months    ki1114097-CMIN             PERU                           6            48     637
6 months    ki1114097-CMIN             PERU                           7            44     637
6 months    ki1114097-CMIN             PERU                           8            54     637
6 months    ki1114097-CMIN             PERU                           9            42     637
6 months    ki1114097-CMIN             PERU                           10           37     637
6 months    ki1114097-CMIN             PERU                           11           65     637
6 months    ki1114097-CMIN             PERU                           12           42     637
6 months    ki1114097-CONTENT          PERU                           1             9     215
6 months    ki1114097-CONTENT          PERU                           2            13     215
6 months    ki1114097-CONTENT          PERU                           3            27     215
6 months    ki1114097-CONTENT          PERU                           4            18     215
6 months    ki1114097-CONTENT          PERU                           5            25     215
6 months    ki1114097-CONTENT          PERU                           6            14     215
6 months    ki1114097-CONTENT          PERU                           7            16     215
6 months    ki1114097-CONTENT          PERU                           8            26     215
6 months    ki1114097-CONTENT          PERU                           9            19     215
6 months    ki1114097-CONTENT          PERU                           10           23     215
6 months    ki1114097-CONTENT          PERU                           11           18     215
6 months    ki1114097-CONTENT          PERU                           12            7     215
6 months    ki1119695-PROBIT           BELARUS                        1          1102   15761
6 months    ki1119695-PROBIT           BELARUS                        2           951   15761
6 months    ki1119695-PROBIT           BELARUS                        3          1114   15761
6 months    ki1119695-PROBIT           BELARUS                        4          1070   15761
6 months    ki1119695-PROBIT           BELARUS                        5          1096   15761
6 months    ki1119695-PROBIT           BELARUS                        6          1120   15761
6 months    ki1119695-PROBIT           BELARUS                        7          1365   15761
6 months    ki1119695-PROBIT           BELARUS                        8          1498   15761
6 months    ki1119695-PROBIT           BELARUS                        9          1481   15761
6 months    ki1119695-PROBIT           BELARUS                        10         1668   15761
6 months    ki1119695-PROBIT           BELARUS                        11         1590   15761
6 months    ki1119695-PROBIT           BELARUS                        12         1706   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           805    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           574    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3           707    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4           658    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5           599    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6           655    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7           640    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8           729    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9           765    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10          600    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11          728    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12          819    8279
6 months    ki1148112-LCNI-5           MALAWI                         1            55     839
6 months    ki1148112-LCNI-5           MALAWI                         2           114     839
6 months    ki1148112-LCNI-5           MALAWI                         3            98     839
6 months    ki1148112-LCNI-5           MALAWI                         4           110     839
6 months    ki1148112-LCNI-5           MALAWI                         5           111     839
6 months    ki1148112-LCNI-5           MALAWI                         6            91     839
6 months    ki1148112-LCNI-5           MALAWI                         7            72     839
6 months    ki1148112-LCNI-5           MALAWI                         8            41     839
6 months    ki1148112-LCNI-5           MALAWI                         9            29     839
6 months    ki1148112-LCNI-5           MALAWI                         10           35     839
6 months    ki1148112-LCNI-5           MALAWI                         11           49     839
6 months    ki1148112-LCNI-5           MALAWI                         12           34     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1          1359   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2          1191   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3          1422   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4          1190   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5          1151   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6          1162   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7          1244   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8          1472   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9          1562   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10         1685   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11         1698   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12         1675   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            53    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           165    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3           430    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4           845    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5           585    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6           434    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7           838    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8           510    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9           431    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10          306    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11          157    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12           77    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2            17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3            20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4            20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5            19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6             5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7            20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8            21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9            19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10           20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11           10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12           26     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1            13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2            17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3            16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4             9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5            16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6             5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7            11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8            14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9            24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10           15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11           16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12           13     169
24 months   ki0047075b-MAL-ED          INDIA                          1            18     227
24 months   ki0047075b-MAL-ED          INDIA                          2            20     227
24 months   ki0047075b-MAL-ED          INDIA                          3            19     227
24 months   ki0047075b-MAL-ED          INDIA                          4            14     227
24 months   ki0047075b-MAL-ED          INDIA                          5             8     227
24 months   ki0047075b-MAL-ED          INDIA                          6            17     227
24 months   ki0047075b-MAL-ED          INDIA                          7            23     227
24 months   ki0047075b-MAL-ED          INDIA                          8            19     227
24 months   ki0047075b-MAL-ED          INDIA                          9            19     227
24 months   ki0047075b-MAL-ED          INDIA                          10           26     227
24 months   ki0047075b-MAL-ED          INDIA                          11           24     227
24 months   ki0047075b-MAL-ED          INDIA                          12           20     227
24 months   ki0047075b-MAL-ED          NEPAL                          1            23     228
24 months   ki0047075b-MAL-ED          NEPAL                          2            15     228
24 months   ki0047075b-MAL-ED          NEPAL                          3            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          4            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          5            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          6            18     228
24 months   ki0047075b-MAL-ED          NEPAL                          7            20     228
24 months   ki0047075b-MAL-ED          NEPAL                          8            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          9            16     228
24 months   ki0047075b-MAL-ED          NEPAL                          10           22     228
24 months   ki0047075b-MAL-ED          NEPAL                          11           22     228
24 months   ki0047075b-MAL-ED          NEPAL                          12           16     228
24 months   ki0047075b-MAL-ED          PERU                           1            29     201
24 months   ki0047075b-MAL-ED          PERU                           2            20     201
24 months   ki0047075b-MAL-ED          PERU                           3            14     201
24 months   ki0047075b-MAL-ED          PERU                           4            12     201
24 months   ki0047075b-MAL-ED          PERU                           5            18     201
24 months   ki0047075b-MAL-ED          PERU                           6            12     201
24 months   ki0047075b-MAL-ED          PERU                           7            14     201
24 months   ki0047075b-MAL-ED          PERU                           8            13     201
24 months   ki0047075b-MAL-ED          PERU                           9            20     201
24 months   ki0047075b-MAL-ED          PERU                           10           14     201
24 months   ki0047075b-MAL-ED          PERU                           11           21     201
24 months   ki0047075b-MAL-ED          PERU                           12           14     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2            25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3            17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4            11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5            11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6            15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7            23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9            20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10           24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11           22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12           31     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            20     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            25     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           23     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3            25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4            29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5            45     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6            36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7            33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8            41     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9            24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10           19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11           40     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12           29     372
24 months   ki1000108-IRC              INDIA                          1            36     409
24 months   ki1000108-IRC              INDIA                          2            27     409
24 months   ki1000108-IRC              INDIA                          3            29     409
24 months   ki1000108-IRC              INDIA                          4            22     409
24 months   ki1000108-IRC              INDIA                          5            21     409
24 months   ki1000108-IRC              INDIA                          6            37     409
24 months   ki1000108-IRC              INDIA                          7            36     409
24 months   ki1000108-IRC              INDIA                          8            45     409
24 months   ki1000108-IRC              INDIA                          9            27     409
24 months   ki1000108-IRC              INDIA                          10           36     409
24 months   ki1000108-IRC              INDIA                          11           41     409
24 months   ki1000108-IRC              INDIA                          12           52     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            42     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2            36     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3            41     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4            34     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5            34     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6            30     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7            37     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8            30     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9            19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10           40     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11           41     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12           45     429
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          1             2     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2             0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3             0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          4             0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          5             0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6             0     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7            89     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8           203     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9           187     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10           13     499
24 months   ki1113344-GMS-Nepal        NEPAL                          11            4     499
24 months   ki1113344-GMS-Nepal        NEPAL                          12            1     499
24 months   ki1114097-CMIN             BANGLADESH                     1            26     242
24 months   ki1114097-CMIN             BANGLADESH                     2            31     242
24 months   ki1114097-CMIN             BANGLADESH                     3            19     242
24 months   ki1114097-CMIN             BANGLADESH                     4            18     242
24 months   ki1114097-CMIN             BANGLADESH                     5            19     242
24 months   ki1114097-CMIN             BANGLADESH                     6            22     242
24 months   ki1114097-CMIN             BANGLADESH                     7            12     242
24 months   ki1114097-CMIN             BANGLADESH                     8            13     242
24 months   ki1114097-CMIN             BANGLADESH                     9            18     242
24 months   ki1114097-CMIN             BANGLADESH                     10           19     242
24 months   ki1114097-CMIN             BANGLADESH                     11            2     242
24 months   ki1114097-CMIN             BANGLADESH                     12           43     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1            11     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2            57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3            68     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4           108     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5            70     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6            34     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7            29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8            28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9            58     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10           15     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11           30     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12           43     551
24 months   ki1114097-CMIN             PERU                           1             8     429
24 months   ki1114097-CMIN             PERU                           2           134     429
24 months   ki1114097-CMIN             PERU                           3            82     429
24 months   ki1114097-CMIN             PERU                           4            26     429
24 months   ki1114097-CMIN             PERU                           5            31     429
24 months   ki1114097-CMIN             PERU                           6            13     429
24 months   ki1114097-CMIN             PERU                           7            18     429
24 months   ki1114097-CMIN             PERU                           8            31     429
24 months   ki1114097-CMIN             PERU                           9            14     429
24 months   ki1114097-CMIN             PERU                           10           15     429
24 months   ki1114097-CMIN             PERU                           11           42     429
24 months   ki1114097-CMIN             PERU                           12           15     429
24 months   ki1114097-CONTENT          PERU                           1             8     164
24 months   ki1114097-CONTENT          PERU                           2            10     164
24 months   ki1114097-CONTENT          PERU                           3            20     164
24 months   ki1114097-CONTENT          PERU                           4            13     164
24 months   ki1114097-CONTENT          PERU                           5            22     164
24 months   ki1114097-CONTENT          PERU                           6            11     164
24 months   ki1114097-CONTENT          PERU                           7            13     164
24 months   ki1114097-CONTENT          PERU                           8            23     164
24 months   ki1114097-CONTENT          PERU                           9            11     164
24 months   ki1114097-CONTENT          PERU                           10           12     164
24 months   ki1114097-CONTENT          PERU                           11           17     164
24 months   ki1114097-CONTENT          PERU                           12            4     164
24 months   ki1119695-PROBIT           BELARUS                        1           269    4035
24 months   ki1119695-PROBIT           BELARUS                        2           211    4035
24 months   ki1119695-PROBIT           BELARUS                        3           324    4035
24 months   ki1119695-PROBIT           BELARUS                        4           326    4035
24 months   ki1119695-PROBIT           BELARUS                        5           307    4035
24 months   ki1119695-PROBIT           BELARUS                        6           266    4035
24 months   ki1119695-PROBIT           BELARUS                        7           373    4035
24 months   ki1119695-PROBIT           BELARUS                        8           353    4035
24 months   ki1119695-PROBIT           BELARUS                        9           382    4035
24 months   ki1119695-PROBIT           BELARUS                        10          392    4035
24 months   ki1119695-PROBIT           BELARUS                        11          389    4035
24 months   ki1119695-PROBIT           BELARUS                        12          443    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            55     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            63     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3            58     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4            44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5            51     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6            49     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7            32     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8            31     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             3     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            6     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11           25     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12           39     456
24 months   ki1148112-LCNI-5           MALAWI                         1            41     579
24 months   ki1148112-LCNI-5           MALAWI                         2            88     579
24 months   ki1148112-LCNI-5           MALAWI                         3            70     579
24 months   ki1148112-LCNI-5           MALAWI                         4            79     579
24 months   ki1148112-LCNI-5           MALAWI                         5            64     579
24 months   ki1148112-LCNI-5           MALAWI                         6            64     579
24 months   ki1148112-LCNI-5           MALAWI                         7            41     579
24 months   ki1148112-LCNI-5           MALAWI                         8            27     579
24 months   ki1148112-LCNI-5           MALAWI                         9            20     579
24 months   ki1148112-LCNI-5           MALAWI                         10           25     579
24 months   ki1148112-LCNI-5           MALAWI                         11           36     579
24 months   ki1148112-LCNI-5           MALAWI                         12           24     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           703    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           611    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           730    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           539    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           398    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           566    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           644    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           649    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           735    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          879    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11          970    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12         1208    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            47    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           326    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3           401    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4           803    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5           559    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6           423    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7           783    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8           472    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9           445    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10          276    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11          146    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12           71    4752


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
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
![](/tmp/a0e78e72-f278-4f29-9227-9edcd9cdc4b1/a27a6ceb-db72-4c28-b201-9d1317c3908f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8599650   -1.2719363   -0.4479936
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3186200   -0.7043154    0.0670754
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5313605   -0.8668145   -0.1959065
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6262730   -1.2071105   -0.0454355
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.8269554   -1.2845782   -0.3693326
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8537991   -1.3503686   -0.3572296
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0455405   -0.8729151    0.9639962
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9870283   -1.2667816   -0.7072750
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.4577708    1.2573176    1.6582240
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3236755   -0.3892115   -0.2581395
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4112929   -1.4715813   -1.3510045
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9499262   -1.2490278   -0.6508246
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0666956   -0.6218941    0.4885029
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5287506   -2.0673482   -0.9901529
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5712740   -1.0514803   -0.0910677
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6071275   -1.9825637   -1.2316912
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6885114   -1.1140713   -0.2629516
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.9718041   -2.4035113   -1.5400969
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.6488108   -2.2749744   -1.0226472
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3555503   -1.7587533   -0.9523472
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.5182755   -1.7407625   -1.2957885
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0908077   -1.3915791   -0.7900362
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1060083   -0.3171222    0.1051056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.3454567   -1.6901375   -1.0007759
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.5149572   -1.0277683   -0.0021461
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.2530911   -0.5116566    0.0054745
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1234790   -0.8911313    0.6441733
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1436762   -0.0117505    0.2991029
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7507926   -0.8382220   -0.6633632
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.9985139   -2.2496304   -1.7473974
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3394648   -1.4081408   -1.2707889
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1901321   -1.3477829   -1.0324814
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.0268762   -2.2882597   -1.7654927
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4126814    0.0944773    0.7308854
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -2.0672511   -2.4327157   -1.7017865
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8244567   -1.2439556   -0.4049579
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.9952563   -2.4775204   -1.5129922
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.2720268   -2.2270264   -0.3170272
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.1025457   -3.6201179   -2.5849736
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.7077286   -2.9862095   -2.4292476
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.4272821   -1.6947687   -1.1597954
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.1883148   -2.7680154   -1.6086143
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.9317868   -2.3236097   -1.5399640
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.7950084   -2.0805676   -1.5094492
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1627707   -0.0519412    0.3774826
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8647101   -2.1683732   -1.5610469
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8662802   -1.9573048   -1.7752556
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5741234   -1.6971552   -1.4510915


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
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5011749   -0.5217748   -0.4805751
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
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8905937   -0.9165852   -0.8646022
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5807226   -1.6772768   -1.4841684
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0126460   -2.0403823   -1.9849097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2244319   -0.6194731    0.1706093
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.4423224   -0.8278153   -0.0568295
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4792706   -0.8200626   -0.1384786
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0826287   -0.6318803    0.4666229
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1052746   -0.5459667    0.3354175
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1271960   -0.3564181    0.6108101
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3535818   -1.2308485    0.5236850
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4076241   -0.6736644   -0.1415839
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1322933   -0.2342134   -0.0303732
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1774994   -0.2404069   -0.1145919
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1634479   -0.2211369   -0.1057589
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2557516   -0.5515917    0.0400885
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1177164   -0.4259704    0.6614032
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3083833   -0.2011539    0.8179205
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0102147   -0.4486766    0.4691060
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2803265   -0.0879397    0.6485926
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3748645   -0.8021883    0.0524593
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6116826    0.1982253    1.0251399
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2253600   -0.3731484    0.8238684
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1211440   -0.2680175    0.5103056
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1164192   -0.1236668    0.3565052
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3165744   -0.6031196   -0.0300292
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4374306   -0.6384662   -0.2363950
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.2164441   -0.5469495    0.1140613
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0926371   -0.5900751    0.4048008
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.2601638   -0.5047931   -0.0155344
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1904427   -0.9504622    0.5695768
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0366776   -0.1643248    0.0909697
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1398011   -0.2223221   -0.0572801
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3383232    0.0980586    0.5785878
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0263716   -0.0380625    0.0908058
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1546619   -0.3102661    0.0009423
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0837630   -0.1830184    0.3505444
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3708471   -0.7073166   -0.0343775
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2214361   -0.1389777    0.5818500
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4507626   -0.8617400   -0.0397851
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2451568   -0.2193313    0.7096449
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3508093   -1.2852851    0.5836665
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4966579    0.0018429    0.9914728
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1483603   -0.1219493    0.4186699
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.3551955   -0.6151678   -0.0952232
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0075203   -0.5558571    0.5708978
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.3572224   -0.0247691    0.7392139
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.2142858   -0.0761170    0.5046885
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2941755   -0.5874810   -0.0008699
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0107304   -0.3128926    0.2914319
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1463658   -0.2326220   -0.0601096
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1841447   -0.3065042   -0.0617853

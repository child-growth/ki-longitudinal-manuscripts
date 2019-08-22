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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/3b8aa2c8-606d-4976-8535-883057da9c0b/fa7e4c29-b6e4-4b82-9d8d-0163234b87b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3b8aa2c8-606d-4976-8535-883057da9c0b/fa7e4c29-b6e4-4b82-9d8d-0163234b87b2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3b8aa2c8-606d-4976-8535-883057da9c0b/fa7e4c29-b6e4-4b82-9d8d-0163234b87b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.0389474   -1.3996092   -0.6782856
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.3920833   -1.7987289   -0.9854378
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.2603571   -1.6174973   -0.9032170
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.5585714   -0.9151477   -0.2019951
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.2638095   -1.7343025   -0.7933165
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.3288889   -1.9773279   -0.6804499
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.1145455   -1.5677994   -0.6612915
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -1.2840000   -1.7037887   -0.8642113
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.8454545   -1.3204210   -0.3704880
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.2179167   -1.5577554   -0.8780779
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.8653333   -1.3233967   -0.4072699
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.8366667   -1.2456171   -0.4277163
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2966667   -0.7503329    0.1569996
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.9676190   -1.4904300   -0.4448081
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.5272222   -1.2230115    0.1685671
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.6437500   -1.1026808   -0.1848192
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    NA                -1.0505263   -1.5216058   -0.5794468
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.5071429   -1.3992900    0.3850043
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    NA                -1.0529412   -1.6186716   -0.4872108
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.7588889   -1.2002827   -0.3174951
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    NA                -1.0464286   -1.4192779   -0.6735792
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.1472222   -0.5654899    0.2710454
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   NA                -0.5126667   -0.8662052   -0.1591281
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   NA                -1.0000000   -1.5534826   -0.4465174
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8306250   -1.2139987   -0.4472513
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -0.4887500   -0.7928032   -0.1846968
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9580000   -1.3321334   -0.5838666
Birth       ki0047075b-MAL-ED          INDIA                          4                    NA                -1.0546667   -1.6303909   -0.4789424
Birth       ki0047075b-MAL-ED          INDIA                          5                    NA                -1.2728571   -1.8997755   -0.6459388
Birth       ki0047075b-MAL-ED          INDIA                          6                    NA                -0.7976471   -1.2380556   -0.3572386
Birth       ki0047075b-MAL-ED          INDIA                          7                    NA                -1.2757143   -1.7475829   -0.8038457
Birth       ki0047075b-MAL-ED          INDIA                          8                    NA                -1.1552941   -1.5658239   -0.7447644
Birth       ki0047075b-MAL-ED          INDIA                          9                    NA                -1.0605263   -1.6286842   -0.4923685
Birth       ki0047075b-MAL-ED          INDIA                          10                   NA                -1.0658333   -1.5930343   -0.5386324
Birth       ki0047075b-MAL-ED          INDIA                          11                   NA                -1.1985000   -1.5401620   -0.8568380
Birth       ki0047075b-MAL-ED          INDIA                          12                   NA                -0.9642857   -1.4816713   -0.4469001
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.2576471   -1.7811704   -0.7341237
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.1800000   -1.7403572   -0.6196428
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.5875000   -1.0664824   -0.1085176
Birth       ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.5186667   -1.0210264   -0.0163069
Birth       ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.4633333   -0.9010043   -0.0256624
Birth       ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.7076923   -1.2165976   -0.1987870
Birth       ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.4064706   -1.0043822    0.1914410
Birth       ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.7757143   -1.3393362   -0.2120924
Birth       ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.7144444   -1.3011976   -0.1276912
Birth       ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.3118750   -0.6357571    0.0120071
Birth       ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.9388889   -1.4773733   -0.4004045
Birth       ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.6280000   -1.1338402   -0.1221598
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0545946   -1.4372245   -0.6719647
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -1.0547826   -1.4562542   -0.6533110
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -1.0609091   -1.3897590   -0.7320592
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                -0.8604762   -1.3110224   -0.4099300
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                -0.9708000   -1.3339618   -0.6076382
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                -0.7505263   -1.3448261   -0.1562265
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.9278261   -1.2978403   -0.5578119
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.7542105   -1.1014057   -0.4070154
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.6118182   -0.8360330   -0.3876034
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                -0.9954167   -1.3870087   -0.6038247
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -1.1119355   -1.4398882   -0.7839828
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                -0.8019048   -1.2131784   -0.3906311
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.6207143   -0.9597606   -0.2816680
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.5683333   -0.8979422   -0.2387245
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.4122222   -0.8326725    0.0082281
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.4684615   -1.0611589    0.1242358
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.4446154   -0.7201624   -0.1690684
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.8511111   -1.3684296   -0.3337926
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.6913636   -1.1175906   -0.2651367
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.3440000   -1.6952164   -0.9927836
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.8423810   -1.2510815   -0.4336804
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.0410714   -1.3808472   -0.7012956
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.9081481   -1.3543122   -0.4619841
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.6182500   -1.0527860   -0.1837140
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.7729412   -1.2245057   -0.3213766
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.3068000   -1.0300491    0.4164491
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.2288889   -0.7355333    0.2777555
Birth       ki1000108-IRC              INDIA                          4                    NA                 0.0854545   -0.6118832    0.7827923
Birth       ki1000108-IRC              INDIA                          5                    NA                 0.3619048   -0.4153839    1.1391935
Birth       ki1000108-IRC              INDIA                          6                    NA                 0.0400000   -0.6638078    0.7438078
Birth       ki1000108-IRC              INDIA                          7                    NA                -0.0911429   -0.6194216    0.4371359
Birth       ki1000108-IRC              INDIA                          8                    NA                -0.0820513   -0.5535536    0.3894510
Birth       ki1000108-IRC              INDIA                          9                    NA                -0.5456000   -1.1368551    0.0456551
Birth       ki1000108-IRC              INDIA                          10                   NA                -0.7402703   -1.1858364   -0.2947041
Birth       ki1000108-IRC              INDIA                          11                   NA                -0.4655000   -0.8450918   -0.0859082
Birth       ki1000108-IRC              INDIA                          12                   NA                -0.4936735   -0.9566175   -0.0307294
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.5868750   -2.1927545   -0.9809955
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.3757143   -2.1089781   -0.6424505
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -1.9181818   -2.5948493   -1.2415143
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -1.4205882   -1.8403546   -1.0008219
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -1.4547059   -2.2122545   -0.6971572
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.4168750   -2.0201026   -0.8136474
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -1.4237500   -2.4363152   -0.4111848
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -1.2911765   -1.6504716   -0.9318814
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.9900000   -1.2695084   -0.7104916
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -1.2936842   -1.6722439   -0.9151246
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.1533333   -1.6675555   -0.6391112
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -1.7340000   -2.0142477   -1.4537523
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.4001981    1.1690179    1.6313784
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                 1.2011125    0.9817564    1.4204686
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                 1.3577169    1.1562115    1.5592224
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                 1.3797490    1.1915813    1.5679166
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                 1.4571862    1.2565687    1.6578037
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                 1.2709434    1.1093069    1.4325799
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                 1.3952734    1.1978190    1.5927278
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                 1.3204902    1.1543941    1.4865862
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                 1.2755979    1.0579472    1.4932485
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                 1.3408416    1.1747942    1.5068891
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                 1.2945097    1.1588469    1.4301724
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                 1.2486671    1.0976980    1.3996362
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7290625   -0.7936438   -0.6644812
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.7663127   -0.8417379   -0.6908876
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.6240702   -0.6945869   -0.5535535
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.5956902   -0.6733493   -0.5180310
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.5348700   -0.6175543   -0.4521857
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.4694523   -0.5478206   -0.3910840
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.4365561   -0.5110693   -0.3620430
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.3233116   -0.3887783   -0.2578448
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.3429246   -0.4020096   -0.2838396
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.3820441   -0.4529878   -0.3111004
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.3750794   -0.4444308   -0.3057279
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.4652669   -0.5322909   -0.3982429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.7046953   -1.7570330   -1.6523575
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5452366   -1.6079864   -1.4824868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.4532461   -1.5120052   -1.3944870
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.4116496   -1.4718187   -1.3514804
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.4615609   -1.5437817   -1.3793401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.4459416   -1.5270780   -1.3648052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.4608656   -1.5388612   -1.3828699
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.5730635   -1.6381540   -1.5079731
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.4902035   -1.5472253   -1.4331818
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.6387000   -1.6955755   -1.5818244
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.7319493   -1.7870875   -1.6768111
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.7068834   -1.7570179   -1.6567489
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1688235   -1.5395154   -0.7981316
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.5395833   -1.8613671   -1.2177996
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.5048000   -1.9145250   -1.0950750
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.7737879   -1.1164989   -0.4310768
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.2261905   -1.6336563   -0.8187247
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.3175000   -1.7682414   -0.8667586
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.2082500   -1.6564227   -0.7600773
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -1.4015152   -1.8443642   -0.9586661
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.1112121   -1.4340985   -0.7883257
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.3104545   -1.7821460   -0.8387631
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -1.1756250   -1.5071730   -0.8440770
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.8418590   -1.1372486   -0.5464694
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0600000   -0.6581327    0.5381327
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.2372917   -0.2431738    0.7177572
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.3302778   -0.1484403    0.8089958
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.2966667   -0.2369995    0.8303328
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.2471053   -0.1350355    0.6292461
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.4380000   -1.1143662    0.2383662
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.2564706   -0.9247146    0.4117734
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.0459375   -0.5323113    0.4404363
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                -0.1825000   -0.5725644    0.2075644
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.2103968   -0.1539754    0.5747690
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                -0.0255263   -0.3538060    0.3027533
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.1995238   -0.3777062    0.7767538
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.4113889   -1.7703042   -1.0524735
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.0363333   -1.2464675   -0.8261992
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9878030   -1.3617257   -0.6138803
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -1.0776667   -1.6073435   -0.5479899
6 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -1.5550000   -1.9700313   -1.1399687
6 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -1.1658333   -1.4793917   -0.8522750
6 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -1.4134058   -1.7959419   -1.0308697
6 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -1.4390833   -1.8583946   -1.0197720
6 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -0.9812698   -1.4769182   -0.4856215
6 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -1.2762821   -1.7127128   -0.8398513
6 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -1.2746000   -1.6255085   -0.9236915
6 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -1.1804167   -1.5641644   -0.7966690
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7066000   -1.0704945   -0.3427055
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.0235294   -1.4533309   -0.5937279
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.6497368   -1.0706115   -0.2288622
6 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.6281579   -1.0535745   -0.2027413
6 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.4107500   -0.7814175   -0.0400825
6 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.6300000   -1.0732205   -0.1867795
6 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.5338095   -0.8766112   -0.1910078
6 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.5292982   -0.8325481   -0.2260484
6 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.2931373   -0.7046869    0.1184123
6 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.4922727   -0.8251448   -0.1594007
6 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.3845652   -0.7794132    0.0102827
6 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.4740625   -0.7938790   -0.1542460
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.1980631   -1.4899205   -0.9062056
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.4795455   -1.8233064   -1.1357846
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.4545238   -1.8330413   -1.0760063
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                -1.0332500   -1.5568303   -0.5096697
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                -1.1037500   -1.3988120   -0.8086880
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                -1.3292105   -1.7484857   -0.9099353
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                -1.3705556   -1.6505441   -1.0905670
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                -1.1712745   -1.5834005   -0.7591485
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                -1.2784091   -1.6511606   -0.9056576
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                -1.3297368   -1.6946015   -0.9648722
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                -1.7834848   -2.1060431   -1.4609266
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                -1.1913889   -1.6044932   -0.7782845
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.2108095   -1.5448626   -0.8767565
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.1690385   -1.5051710   -0.8329059
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.6169444   -1.1032807   -0.1306082
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.4466667   -0.9120170    0.0186837
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -1.0283333   -1.6356036   -0.4210631
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.5998529   -0.9941094   -0.2055965
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -1.0639130   -1.4332211   -0.6946050
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.0631250   -1.7683683   -0.3578817
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.9659167   -1.3522487   -0.5795847
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.1923611   -1.6206227   -0.7640995
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -1.3289583   -1.8259433   -0.8319733
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -1.3004762   -1.6574300   -0.9435224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4213043   -1.9003267   -0.9422820
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4233333   -1.7189352   -1.1277315
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.7115909   -2.1180660   -1.3051158
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -1.5550000   -2.0474997   -1.0625003
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -1.4153846   -1.9469707   -0.8837986
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -1.0957895   -1.3691713   -0.8224076
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -1.1480000   -1.5662741   -0.7297259
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -1.2020833   -1.7436251   -0.6605416
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -1.1867460   -1.5462155   -0.8272766
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -1.4906481   -1.9258916   -1.0554047
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -1.6029310   -1.9726756   -1.2331864
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -1.1086310   -1.4990587   -0.7182032
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.7273457   -2.1823674   -1.2723240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.5949306   -2.1270295   -1.0628316
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.4112667   -1.9484033   -0.8741301
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -1.1358046   -1.6148209   -0.6567883
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -1.2175000   -1.6384032   -0.7965968
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -1.4480556   -1.9016578   -0.9944533
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -1.5231818   -2.0937385   -0.9526251
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -2.0312195   -2.4119273   -1.6505117
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -1.4302174   -1.9390704   -0.9213643
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -1.2171053   -1.6978074   -0.7364031
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -1.1438333   -1.5827880   -0.7048787
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -1.1106548   -1.5826958   -0.6386137
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.4996759   -1.9364197   -1.0629321
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.5762346   -2.1516223   -1.0008469
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.4127586   -1.7727793   -1.0527379
6 months    ki1000108-IRC              INDIA                          4                    NA                -1.7681061   -2.2889703   -1.2472418
6 months    ki1000108-IRC              INDIA                          5                    NA                -2.0870000   -2.5832705   -1.5907295
6 months    ki1000108-IRC              INDIA                          6                    NA                -0.6459459   -1.1318684   -0.1600235
6 months    ki1000108-IRC              INDIA                          7                    NA                -1.0226389   -1.4423973   -0.6028805
6 months    ki1000108-IRC              INDIA                          8                    NA                -0.8883704   -1.2120743   -0.5646664
6 months    ki1000108-IRC              INDIA                          9                    NA                -0.7090741   -1.4787128    0.0605647
6 months    ki1000108-IRC              INDIA                          10                   NA                -0.9737037   -1.2490471   -0.6983604
6 months    ki1000108-IRC              INDIA                          11                   NA                -1.2382927   -1.6372118   -0.8393736
6 months    ki1000108-IRC              INDIA                          12                   NA                -1.5409477   -1.8414589   -1.2404365
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.5223529   -1.8139135   -1.2307924
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.3012346   -1.7428702   -0.8595990
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -1.2028750   -1.5451920   -0.8605580
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -1.3107792   -1.5056881   -1.1158703
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -1.5426316   -1.7191132   -1.3661499
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.3404902   -1.5144296   -1.1665508
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -1.6051304   -1.8776338   -1.3326271
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -1.4751316   -1.7815636   -1.1686995
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -1.2361446   -1.4299176   -1.0423716
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -1.3746622   -1.5314457   -1.2178787
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.4736000   -1.6344316   -1.3127684
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -1.4363566   -1.6247201   -1.2479931
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.4693000   -1.7646100   -1.1739900
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -1.3862667   -1.6895819   -1.0829515
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -1.3403667   -1.6531571   -1.0275763
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -1.4020076   -1.6540049   -1.1500103
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -1.2118333   -1.4788047   -0.9448620
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -1.5222650   -1.8614319   -1.1830980
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -1.5850370   -1.9144029   -1.2556711
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -1.4156140   -1.7158086   -1.1154194
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.3112222   -1.7060666   -0.9163779
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -1.4437821   -1.7379652   -1.1495989
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -1.6899490   -1.9612264   -1.4186715
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -1.0819333   -1.3720820   -0.7917846
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4101089   -0.5587080   -0.2615098
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.3907664   -0.5910579   -0.1904750
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1066225   -0.3152200    0.1019750
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.4236111   -0.6136482   -0.2335740
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.4709375   -0.6546161   -0.2872589
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.6825466   -0.8654131   -0.4996802
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.7358161   -0.9200981   -0.5515341
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.7586398   -0.9001328   -0.6171469
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.6863131   -0.8390683   -0.5335579
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.5401786   -0.6904313   -0.3899258
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.7686988   -0.9252242   -0.6121733
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.4764677   -0.6164973   -0.3364380
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -1.4523148   -1.7945157   -1.1101139
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -1.3123684   -1.5994839   -1.0252530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -1.6756349   -2.0820982   -1.2691716
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -1.6540741   -2.0099043   -1.2982439
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                -1.2174731   -1.5346086   -0.9003377
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                -1.5443590   -1.8334940   -1.2552240
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                -1.6715278   -2.0874318   -1.2556237
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                -1.4194737   -1.8784064   -0.9605410
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                -1.5699510   -1.8996487   -1.2402532
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                -1.9778161   -2.4407681   -1.5148641
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                -1.5526786   -1.8931754   -1.2121817
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                -1.6815000   -2.1888163   -1.1741837
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.4243333   -0.8529137    0.0042471
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -0.9627011   -1.2253540   -0.7000483
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -0.6066957   -0.8377372   -0.3756541
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -0.6891200   -0.8595267   -0.5187133
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.5660909   -0.7526538   -0.3795280
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                -0.4262022   -0.6828843   -0.1695201
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -0.4757083   -0.8444615   -0.1069552
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.9067568   -1.2480632   -0.5654503
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -0.5655952   -0.7760923   -0.3550982
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -0.1902941   -0.7627646    0.3821764
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -0.4415957   -0.7201078   -0.1630837
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -0.5786076   -0.7729481   -0.3842671
6 months    ki1114097-CMIN             PERU                           1                    NA                -0.4425610   -0.7449501   -0.1401719
6 months    ki1114097-CMIN             PERU                           2                    NA                -0.5417857   -0.7814023   -0.3021691
6 months    ki1114097-CMIN             PERU                           3                    NA                -0.5368116   -0.8168505   -0.2567727
6 months    ki1114097-CMIN             PERU                           4                    NA                -0.6461836   -0.9134615   -0.3789057
6 months    ki1114097-CMIN             PERU                           5                    NA                -0.5625000   -0.7875894   -0.3374106
6 months    ki1114097-CMIN             PERU                           6                    NA                -0.5050347   -0.7497542   -0.2603153
6 months    ki1114097-CMIN             PERU                           7                    NA                -0.5807955   -0.8681417   -0.2934493
6 months    ki1114097-CMIN             PERU                           8                    NA                -0.5505247   -0.8061983   -0.2948511
6 months    ki1114097-CMIN             PERU                           9                    NA                -0.4377381   -0.6894149   -0.1860613
6 months    ki1114097-CMIN             PERU                           10                   NA                -0.7133333   -1.0509973   -0.3756693
6 months    ki1114097-CMIN             PERU                           11                   NA                -0.2514359   -0.5043908    0.0015190
6 months    ki1114097-CMIN             PERU                           12                   NA                -0.4002381   -0.7400785   -0.0603977
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.3920556   -0.3981822    1.1822933
6 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0484615   -0.6094347    0.5125116
6 months    ki1114097-CONTENT          PERU                           3                    NA                 0.1685556   -0.3041496    0.6412607
6 months    ki1114097-CONTENT          PERU                           4                    NA                -0.8673611   -1.5641254   -0.1705968
6 months    ki1114097-CONTENT          PERU                           5                    NA                -0.4250733   -0.9501205    0.0999739
6 months    ki1114097-CONTENT          PERU                           6                    NA                -0.6026786   -1.3951882    0.1898311
6 months    ki1114097-CONTENT          PERU                           7                    NA                -0.2020313   -0.8567828    0.4527203
6 months    ki1114097-CONTENT          PERU                           8                    NA                -0.6381090   -1.0225404   -0.2536775
6 months    ki1114097-CONTENT          PERU                           9                    NA                -0.5109474   -1.0720654    0.0501707
6 months    ki1114097-CONTENT          PERU                           10                   NA                -0.2739130   -0.7385832    0.1907571
6 months    ki1114097-CONTENT          PERU                           11                   NA                -0.4309167   -0.8827399    0.0209066
6 months    ki1114097-CONTENT          PERU                           12                   NA                 0.4745714   -0.5861623    1.5353051
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0131534   -0.1699220    0.1436153
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                -0.1430810   -0.2799532   -0.0062087
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.1239722   -0.0038927    0.2518370
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.2122757    0.0779220    0.3466294
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.2341058    0.0975380    0.3706737
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.1638750    0.0302793    0.2974707
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.1950549    0.0708586    0.3192512
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.1443892    0.0251137    0.2636647
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.1616138    0.0170469    0.3061806
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.1187020   -0.0325798    0.2699838
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.0766792   -0.0422189    0.1955774
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                -0.0059789   -0.1365743    0.1246165
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9504099   -1.0340013   -0.8668186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8841289   -0.9837133   -0.7845445
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.9844696   -1.0823133   -0.8866259
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.9225532   -1.0096367   -0.8354697
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -1.0016528   -1.0976015   -0.9057041
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.9074809   -1.0018683   -0.8130935
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.9677187   -1.0598179   -0.8756196
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.8340055   -0.9176876   -0.7503234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.7970131   -0.8757088   -0.7183174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.8526250   -0.9486011   -0.7566489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.8798283   -0.9654349   -0.7942217
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.7497802   -0.8370802   -0.6624803
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -1.5772727   -1.8315469   -1.3229986
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                -1.5442105   -1.6961241   -1.3922970
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                -1.7112245   -1.9141096   -1.5083394
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                -1.7770000   -1.9975499   -1.5564501
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                -1.6310811   -1.8084743   -1.4536879
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                -1.5197802   -1.7439528   -1.2956076
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                -1.7977778   -2.0234062   -1.5721494
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                -1.6143902   -1.8159860   -1.4127944
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                -1.7500000   -2.1541152   -1.3458848
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                -1.7534286   -1.9991891   -1.5076681
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                -1.5446939   -1.8984920   -1.1908958
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                -1.8867647   -2.3445796   -1.4289498
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3175644   -1.3835697   -1.2515590
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2953233   -1.3606502   -1.2299964
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2486498   -1.3151365   -1.1821631
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.2445882   -1.3135168   -1.1756597
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.2871329   -1.3573968   -1.2168691
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.2968244   -1.3649374   -1.2287115
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.2779743   -1.3480296   -1.2079190
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.3266916   -1.3838188   -1.2695643
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.2820743   -1.3455858   -1.2185627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.3713412   -1.4307832   -1.3118993
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.4099882   -1.4684234   -1.3515531
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.3408418   -1.3982738   -1.2834097
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3775472   -1.5187568   -1.2363375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.1914242   -1.3469509   -1.0358976
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.3413372   -1.4585800   -1.2240944
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -1.3683136   -1.4502118   -1.2864154
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -1.3932906   -1.5070452   -1.2795360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -1.3088479   -1.4324309   -1.1852649
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -1.4734726   -1.5569334   -1.3900117
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -1.2750588   -1.3730552   -1.1770625
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -1.2152784   -1.3202579   -1.1102990
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -1.2744935   -1.4068918   -1.1420951
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                -1.3338854   -1.4731632   -1.1946075
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                -1.3342857   -1.4868475   -1.1817240
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.6776667   -2.0518980   -1.3034353
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -2.5635294   -3.0293833   -2.0976755
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -2.2342500   -2.5717798   -1.8967202
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.6027500   -2.0080993   -1.1974007
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -2.1521053   -2.5590715   -1.7451391
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.9680000   -2.7900847   -1.1459153
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.7985000   -2.1851583   -1.4118417
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -2.0645238   -2.5831221   -1.5459255
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.9000000   -2.2057980   -1.5942020
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.8930000   -2.3686264   -1.4173736
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -2.0525000   -2.4044828   -1.7005172
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -1.6121154   -1.8899451   -1.3342857
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4496154   -1.1999986    0.3007678
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.0764706   -0.6346755    0.4817344
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.3050000   -0.3188875    0.9288875
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.5988889    0.3904154    0.8073624
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.5465625    0.1498096    0.9433154
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.1610000   -1.1045392    0.7825392
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.1745455   -0.9567423    0.6076514
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.3282143   -0.9462295    0.2898009
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.0160417   -0.3600461    0.3921294
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.1603333   -0.3450171    0.6656837
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                -0.0543750   -0.3584931    0.2497431
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.0461538   -0.6447278    0.7370355
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.1072222   -2.5460209   -1.6684236
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -1.8667500   -2.2112797   -1.5222203
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.5463158   -1.9847789   -1.1078527
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -1.7482143   -2.2000160   -1.2964126
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -2.2187500   -2.8872392   -1.5502608
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.5529412   -1.8836272   -1.2222552
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -1.8280435   -2.2780090   -1.3780780
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -1.9678947   -2.4854512   -1.4503383
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -1.9186842   -2.3481571   -1.4892113
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -1.9546154   -2.3795729   -1.5296579
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -1.8725000   -2.2332875   -1.5117125
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -1.7040000   -2.0422466   -1.3657534
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5002174   -1.8407794   -1.1596554
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.9160000   -2.2802816   -1.5517184
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.6305263   -2.0697913   -1.1912613
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -1.3155263   -1.7258218   -0.9052308
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -1.2294737   -1.6937604   -0.7651870
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -1.2452778   -1.6824484   -0.8081071
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -1.1140000   -1.4278378   -0.8001622
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -1.0313158   -1.3598816   -0.7027500
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.7868750   -1.1544680   -0.4192820
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -1.0627273   -1.4235292   -0.7019254
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -1.2870455   -1.7291130   -0.8449779
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -1.2246875   -1.6962756   -0.7530994
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.8843103   -2.2554980   -1.5131227
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.8772500   -2.1181400   -1.6363600
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.6100000   -2.0179646   -1.2020354
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                -1.9875000   -2.4780802   -1.4969198
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                -1.7388889   -2.2259331   -1.2518447
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                -1.5670833   -2.3703750   -0.7637917
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -1.7892857   -2.0045248   -1.5740467
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                -1.6815385   -2.0686154   -1.2944615
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                -1.3760000   -1.7102451   -1.0417549
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                -1.4039286   -1.7403505   -1.0675066
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                -1.9638095   -2.3099671   -1.6176520
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                -1.9828571   -2.3264690   -1.6392453
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7866129   -2.1924924   -1.3807334
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.8856000   -2.3139266   -1.4572734
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.4538235   -1.9990553   -0.9085918
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.9818182   -1.5438343   -0.4198021
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -1.2195455   -1.7738378   -0.6652531
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -1.1576667   -1.6491875   -0.6661458
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -1.6221739   -2.0303938   -1.2139540
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.5737500   -2.4526322   -0.6948678
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -1.4240000   -1.7078861   -1.1401139
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.6716667   -2.0946722   -1.2486611
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -1.9781818   -2.4101731   -1.5461905
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -1.7869355   -2.1386912   -1.4351797
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6175000   -3.1303669   -2.1046331
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -2.5602778   -2.9115007   -2.2090548
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -3.1257143   -3.6306611   -2.6207674
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -2.8500000   -3.6792759   -2.0207241
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -2.4900000   -2.9878962   -1.9921038
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -2.4677778   -2.8127700   -2.1227855
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -2.4366000   -2.8707243   -2.0024757
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -2.4529167   -2.9626049   -1.9432285
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -2.4314706   -2.8277455   -2.0351956
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -2.8450000   -3.2678972   -2.4221028
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -2.6563043   -3.0222723   -2.2903364
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -2.4369565   -2.8473907   -2.0265223
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5854938   -2.8834732   -2.2875144
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.5459028   -2.9588773   -2.1329283
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.8054000   -3.1965537   -2.4142463
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -2.3916667   -2.6686068   -2.1147266
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -2.6953333   -2.9900332   -2.4006335
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -2.8758333   -3.2307336   -2.5209331
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -2.2806061   -2.6585269   -1.9026852
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -2.5196341   -2.8042281   -2.2350402
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -2.6493750   -3.0374964   -2.2612536
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -2.3564912   -2.6607572   -2.0522253
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -2.3107083   -2.6270762   -1.9943405
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -2.6727586   -3.0489670   -2.2965502
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.9923611   -2.3227384   -1.6619838
24 months   ki1000108-IRC              INDIA                          2                    NA                -1.9405556   -2.3197034   -1.5614078
24 months   ki1000108-IRC              INDIA                          3                    NA                -1.9790230   -2.2959358   -1.6621102
24 months   ki1000108-IRC              INDIA                          4                    NA                -2.0561364   -2.4318056   -1.6804671
24 months   ki1000108-IRC              INDIA                          5                    NA                -2.5566667   -3.0180897   -2.0952436
24 months   ki1000108-IRC              INDIA                          6                    NA                -1.4273874   -1.6929337   -1.1618411
24 months   ki1000108-IRC              INDIA                          7                    NA                -1.6981019   -1.9589209   -1.4372828
24 months   ki1000108-IRC              INDIA                          8                    NA                -1.5385185   -1.8025789   -1.2744581
24 months   ki1000108-IRC              INDIA                          9                    NA                -1.7429630   -2.1678381   -1.3180878
24 months   ki1000108-IRC              INDIA                          10                   NA                -1.6109722   -1.8686497   -1.3532948
24 months   ki1000108-IRC              INDIA                          11                   NA                -1.5804065   -1.8510721   -1.3097409
24 months   ki1000108-IRC              INDIA                          12                   NA                -1.8378205   -2.1182701   -1.5573709
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.1350000   -2.4798705   -1.7901295
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -2.1862500   -2.4298974   -1.9426026
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -2.0796341   -2.4002959   -1.7589724
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -2.4415196   -2.8305296   -2.0525096
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -2.2938725   -2.6152263   -1.9725188
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -2.2585556   -2.5545743   -1.9625368
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -2.1798649   -2.5621025   -1.7976272
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -2.3188889   -2.6539753   -1.9838025
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.8494737   -2.4885512   -1.2103962
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -2.0880417   -2.4617873   -1.7142960
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -2.2255081   -2.5760024   -1.8750139
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -2.0673704   -2.3864292   -1.7483115
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -1.7318182   -2.3562546   -1.1073818
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -1.6004386   -1.8949124   -1.3059648
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -1.4427941   -1.7295466   -1.1560416
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -1.7207870   -1.9416138   -1.4999602
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -1.5922857   -1.8686886   -1.3158829
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                -1.4405882   -1.8705794   -1.0105971
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -1.3356897   -1.7966328   -0.8747465
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -1.8408929   -2.3307367   -1.3510490
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -1.4638793   -1.7229684   -1.2047903
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -1.5993333   -2.5587926   -0.6398741
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -1.6141667   -1.9675338   -1.2607995
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -1.5189535   -1.8129854   -1.2249216
24 months   ki1114097-CMIN             PERU                           1                    NA                -1.1675000   -1.4913842   -0.8436158
24 months   ki1114097-CMIN             PERU                           2                    NA                -1.7457836   -1.9188111   -1.5727561
24 months   ki1114097-CMIN             PERU                           3                    NA                -1.5015447   -1.7271503   -1.2759392
24 months   ki1114097-CMIN             PERU                           4                    NA                -1.8635897   -2.2842583   -1.4429212
24 months   ki1114097-CMIN             PERU                           5                    NA                -1.7220968   -2.0577036   -1.3864899
24 months   ki1114097-CMIN             PERU                           6                    NA                -1.4116667   -1.7616019   -1.0617314
24 months   ki1114097-CMIN             PERU                           7                    NA                -1.3705556   -1.7239442   -1.0171669
24 months   ki1114097-CMIN             PERU                           8                    NA                -1.4806452   -1.7990896   -1.1622007
24 months   ki1114097-CMIN             PERU                           9                    NA                -1.4021429   -1.8501424   -0.9541433
24 months   ki1114097-CMIN             PERU                           10                   NA                -1.6688889   -2.1891970   -1.1485808
24 months   ki1114097-CMIN             PERU                           11                   NA                -1.2825000   -1.6429451   -0.9220549
24 months   ki1114097-CMIN             PERU                           12                   NA                -1.4960000   -1.9842318   -1.0077682
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0108055   -0.6003019    0.6219129
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                -0.2209716   -0.6183913    0.1764481
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                 0.1617901   -0.0484917    0.3720719
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                -0.0115184   -0.2482609    0.2252241
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                -0.0559935   -0.2490256    0.1370386
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                -0.0432519   -2.9357930    2.8492893
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                -0.0449062   -0.4789641    0.3891517
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                -0.0384655   -0.3895901    0.3126590
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                -0.2189005   -0.4383675    0.0005664
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                -0.3387202   -0.5498749   -0.1275656
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                -0.3862596   -0.6536202   -0.1188991
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                -0.2471520   -1.4330787    0.9387747
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.9570732   -2.2580346   -1.6561118
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -1.6645455   -1.8402067   -1.4888842
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -1.7202857   -1.9469837   -1.4935877
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                -1.9971519   -2.2436557   -1.7506481
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -1.9439063   -2.1503604   -1.7374521
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -2.1167188   -2.3638488   -1.8695887
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -1.8339024   -2.1312602   -1.5365446
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -1.6453704   -1.8510820   -1.4396588
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                -1.7180000   -2.0958106   -1.3401894
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                -1.6044000   -1.9158849   -1.2929151
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -1.9377778   -2.3292603   -1.5462953
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -2.3850000   -2.9334270   -1.8365730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1295164   -2.2114545   -2.0475783
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -2.0887234   -2.1754330   -2.0020138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.9759452   -2.0546496   -1.8972408
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.9006865   -1.9941035   -1.8072694
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.9966080   -2.1061579   -1.8870582
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.9731272   -2.0621867   -1.8840677
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.8655435   -1.9560883   -1.7749987
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.9453929   -2.0256624   -1.8651234
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.9318912   -2.0126305   -1.8511518
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.9634699   -2.0401885   -1.8867512
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -2.1135670   -2.1827572   -2.0443769
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -2.1205215   -2.1835236   -2.0575194
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7508511   -1.8763527   -1.6253494
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.8153988   -1.9327713   -1.6980262
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.8057606   -1.9199151   -1.6916061
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -1.8674595   -1.9460056   -1.7889135
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -1.7687299   -1.8693610   -1.6680987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -1.6854374   -1.8013715   -1.5695032
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -1.8423116   -1.9197522   -1.7648710
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -1.6234746   -1.7241119   -1.5228373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -1.6709438   -1.7685961   -1.5732916
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -1.5732609   -1.6962653   -1.4502565
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                -1.7026712   -1.8713501   -1.5339924
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                -1.6992958   -1.8161012   -1.5824903


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
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5011749   -0.5217748   -0.4805751
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
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8905937   -0.9165852   -0.8646022
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.5807226   -1.6772768   -1.4841684
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0126460   -2.0403823   -1.9849097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7582681   -1.7937283   -1.7228079


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.3531360   -0.8966776    0.1904057
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.2214098   -0.7289785    0.2861590
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.4803759   -0.0267962    0.9875481
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.2248622   -0.8176864    0.3679621
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.2899415   -1.0319321    0.4520491
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0755981   -0.6548356    0.5036394
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.2450526   -0.7984959    0.3083907
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.1934928   -0.4028880    0.7898737
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1789693   -0.6745168    0.3165782
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.1736140   -0.4093945    0.7566226
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.2022807   -0.3429875    0.7475489
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.6709524   -1.3631549    0.0212501
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.2305556   -1.0611793    0.6000682
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.3470833   -0.9923977    0.2982310
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.7538596   -1.4078695   -0.0998497
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.2104762   -1.2113456    0.7903932
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.7562745   -1.4814393   -0.0311097
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.4622222   -1.0951848    0.1707403
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.7497619   -1.3369839   -0.1625399
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.1494444   -0.4676138    0.7665027
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.2160000   -0.7911544    0.3591544
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.7033333   -1.4189841    0.0123174
Birth       ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          2                    1                  0.3418750   -0.1474345    0.8311845
Birth       ki0047075b-MAL-ED          INDIA                          3                    1                 -0.1273750   -0.6630533    0.4083033
Birth       ki0047075b-MAL-ED          INDIA                          4                    1                 -0.2240417   -0.9157308    0.4676475
Birth       ki0047075b-MAL-ED          INDIA                          5                    1                 -0.4422321   -1.1770805    0.2926162
Birth       ki0047075b-MAL-ED          INDIA                          6                    1                  0.0329779   -0.5509185    0.6168744
Birth       ki0047075b-MAL-ED          INDIA                          7                    1                 -0.4450893   -1.0530658    0.1628872
Birth       ki0047075b-MAL-ED          INDIA                          8                    1                 -0.3246691   -0.8863720    0.2370337
Birth       ki0047075b-MAL-ED          INDIA                          9                    1                 -0.2299013   -0.9153054    0.4555028
Birth       ki0047075b-MAL-ED          INDIA                          10                   1                 -0.2352083   -0.8870643    0.4166477
Birth       ki0047075b-MAL-ED          INDIA                          11                   1                 -0.3678750   -0.8814004    0.1456504
Birth       ki0047075b-MAL-ED          INDIA                          12                   1                 -0.1336607   -0.7776042    0.5102828
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0776471   -0.6892147    0.8445088
Birth       ki0047075b-MAL-ED          NEPAL                          3                    1                  0.6701471   -0.0394308    1.3797250
Birth       ki0047075b-MAL-ED          NEPAL                          4                    1                  0.7389804    0.0134172    1.4645436
Birth       ki0047075b-MAL-ED          NEPAL                          5                    1                  0.7943137    0.1119410    1.4766865
Birth       ki0047075b-MAL-ED          NEPAL                          6                    1                  0.5499548   -0.1801557    1.2800652
Birth       ki0047075b-MAL-ED          NEPAL                          7                    1                  0.8511765    0.0564596    1.6458934
Birth       ki0047075b-MAL-ED          NEPAL                          8                    1                  0.4819328   -0.2873177    1.2511833
Birth       ki0047075b-MAL-ED          NEPAL                          9                    1                  0.5432026   -0.2431535    1.3295588
Birth       ki0047075b-MAL-ED          NEPAL                          10                   1                  0.9457721    0.3301615    1.5613826
Birth       ki0047075b-MAL-ED          NEPAL                          11                   1                  0.3187582   -0.4322692    1.0697856
Birth       ki0047075b-MAL-ED          NEPAL                          12                   1                  0.6296471   -0.0983303    1.3576244
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                 -0.0001880   -0.5547915    0.5544155
Birth       ki0047075b-MAL-ED          PERU                           3                    1                 -0.0063145   -0.5108419    0.4982129
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.1941184   -0.3969801    0.7852169
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.0837946   -0.4437394    0.6113286
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.3040683   -0.4027541    1.0108907
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.1267685   -0.4055060    0.6590430
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.3003841   -0.2162881    0.8170562
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.4427764   -0.0007074    0.8862603
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.0591779   -0.4883163    0.6066722
Birth       ki0047075b-MAL-ED          PERU                           11                   1                 -0.0573409   -0.5612840    0.4466022
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.2526898   -0.3090500    0.8144297
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0523810   -0.4204767    0.5252386
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.2084921   -0.3316291    0.7486132
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1522527   -0.5305668    0.8350723
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.1760989   -0.2607976    0.6129954
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.2303968   -0.8489199    0.3881262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0706494   -0.6152793    0.4739806
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                 -0.7232857   -1.2114510   -0.2351205
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.2216667   -0.7526926    0.3093592
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.4203571   -0.9003571    0.0596428
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.2874339   -0.8478040    0.2729363
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0024643   -0.5486926    0.5536211
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2                    1                  0.4661412   -0.3865016    1.3187840
Birth       ki1000108-IRC              INDIA                          3                    1                  0.5440523   -0.1346222    1.2227268
Birth       ki1000108-IRC              INDIA                          4                    1                  0.8583957    0.0276187    1.6891727
Birth       ki1000108-IRC              INDIA                          5                    1                  1.1348459    0.2359086    2.0337832
Birth       ki1000108-IRC              INDIA                          6                    1                  0.8129412   -0.0232741    1.6491564
Birth       ki1000108-IRC              INDIA                          7                    1                  0.6817983   -0.0131758    1.3767724
Birth       ki1000108-IRC              INDIA                          8                    1                  0.6908899    0.0380309    1.3437489
Birth       ki1000108-IRC              INDIA                          9                    1                  0.2273412   -0.5166300    0.9713124
Birth       ki1000108-IRC              INDIA                          10                   1                  0.0326709   -0.6017105    0.6670523
Birth       ki1000108-IRC              INDIA                          11                   1                  0.3074412   -0.2824745    0.8973568
Birth       ki1000108-IRC              INDIA                          12                   1                  0.2792677   -0.3674376    0.9259730
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2111607   -0.7224938    1.1448153
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                 -0.3313068   -1.2327993    0.5701856
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.1662868   -0.6813468    1.0139203
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.1321691   -1.0752169    1.3395551
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.1700000   -0.8330730    1.1730730
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.1631250   -1.3916241    1.7178741
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.2956985   -0.4297614    1.0211584
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.5968750   -0.2138915    1.4076415
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.2931908   -0.3992441    0.9856257
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.4335417   -0.4662098    1.3332932
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                 -0.1471250   -0.7615380    0.4672880
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                 -0.1990856   -0.3378964   -0.0602748
Birth       ki1119695-PROBIT           BELARUS                        3                    1                 -0.0424812   -0.2154489    0.1304865
Birth       ki1119695-PROBIT           BELARUS                        4                    1                 -0.0204492   -0.1919836    0.1510852
Birth       ki1119695-PROBIT           BELARUS                        5                    1                  0.0569881   -0.1313967    0.2453728
Birth       ki1119695-PROBIT           BELARUS                        6                    1                 -0.1292547   -0.3233747    0.0648652
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0049247   -0.2361690    0.2263196
Birth       ki1119695-PROBIT           BELARUS                        8                    1                 -0.0797079   -0.2904562    0.1310403
Birth       ki1119695-PROBIT           BELARUS                        9                    1                 -0.1246003   -0.3588705    0.1096700
Birth       ki1119695-PROBIT           BELARUS                        10                   1                 -0.0593565   -0.2684217    0.1497086
Birth       ki1119695-PROBIT           BELARUS                        11                   1                 -0.1056885   -0.2766210    0.0652441
Birth       ki1119695-PROBIT           BELARUS                        12                   1                 -0.1515310   -0.3290406    0.0259785
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0372502   -0.1365463    0.0620458
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.1049923    0.0093715    0.2006132
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.1333723    0.0323689    0.2343757
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.1941925    0.0892762    0.2991088
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.2596102    0.1580605    0.3611599
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.2925064    0.1939014    0.3911114
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.4057509    0.3137909    0.4977109
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.3861379    0.2986063    0.4736695
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.3470184    0.2510822    0.4429545
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.3539831    0.2592184    0.4487479
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2637956    0.1707205    0.3568706
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1594587    0.0749517    0.2439657
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.2514492    0.1749311    0.3279673
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.2930457    0.2154072    0.3706843
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.2431344    0.1438804    0.3423884
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.2587537    0.1628850    0.3546223
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.2438297    0.1538524    0.3338070
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1316317    0.0464166    0.2168469
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.2144917    0.1386378    0.2903457
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0659953   -0.0080795    0.1400702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0272540   -0.1001085    0.0456005
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0021881   -0.0748495    0.0704732
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.3707598   -0.8616338    0.1201142
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.3359765   -0.8885043    0.2165514
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.3950357   -0.1098043    0.8998756
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0573669   -0.6082216    0.4934877
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.1486765   -0.7322691    0.4349162
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0394265   -0.6210374    0.5421845
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.2326916   -0.8102102    0.3448270
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.0576114   -0.4339861    0.5492089
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1416310   -0.7415521    0.4582901
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0068015   -0.5041309    0.4905280
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.3269646   -0.1470265    0.8009556
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.2972917   -0.4699175    1.0645008
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.3902778   -0.3758382    1.1563938
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.3566667   -0.4449332    1.1582665
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.3071053   -0.4026794    1.0168900
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.3780000   -1.2809031    0.5249031
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.1964706   -1.0933054    0.7003643
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0140625   -0.7568605    0.7849855
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.1225000   -0.8365819    0.5915819
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.2703968   -0.4299815    0.9707752
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0344737   -0.6478241    0.7167715
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.2595238   -0.5717146    1.0907622
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.3750556   -0.0408490    0.7909601
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.4235859   -0.0947175    0.9418893
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.3337222   -0.3061041    0.9735485
6 months    ki0047075b-MAL-ED          INDIA                          5                    1                 -0.1436111   -0.6923107    0.4050885
6 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.2455556   -0.2310355    0.7221466
6 months    ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0020169   -0.5265682    0.5225344
6 months    ki0047075b-MAL-ED          INDIA                          8                    1                 -0.0276944   -0.5796385    0.5242496
6 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.4301190   -0.1818348    1.0420729
6 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.1351068   -0.4299525    0.7001661
6 months    ki0047075b-MAL-ED          INDIA                          11                   1                  0.1367889   -0.3651643    0.6387421
6 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.2309722   -0.2944633    0.7564078
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.3169294   -0.8800889    0.2462300
6 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0568632   -0.4995133    0.6132396
6 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0784421   -0.4813780    0.6382622
6 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.2958500   -0.2235859    0.8152859
6 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0766000   -0.4968664    0.6500664
6 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.1727905   -0.3271418    0.6727227
6 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.1773018   -0.2963856    0.6509891
6 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.4134627   -0.1358935    0.9628190
6 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.2143273   -0.2788492    0.7075037
6 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.3220348   -0.2149234    0.8589930
6 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.2325375   -0.2519228    0.7169978
6 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                 -0.2814824   -0.7324284    0.1694636
6 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.2564607   -0.7344317    0.2215102
6 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.1648131   -0.4346176    0.7642437
6 months    ki0047075b-MAL-ED          PERU                           5                    1                  0.0943131   -0.3207078    0.5093340
6 months    ki0047075b-MAL-ED          PERU                           6                    1                 -0.1311475   -0.6420021    0.3797072
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.1724925   -0.5769357    0.2319508
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.0267886   -0.4782150    0.5317921
6 months    ki0047075b-MAL-ED          PERU                           9                    1                 -0.0803460   -0.5537639    0.3930718
6 months    ki0047075b-MAL-ED          PERU                           10                   1                 -0.1316738   -0.5989071    0.3355595
6 months    ki0047075b-MAL-ED          PERU                           11                   1                 -0.5854218   -1.0204213   -0.1504223
6 months    ki0047075b-MAL-ED          PERU                           12                   1                  0.0066742   -0.4991281    0.5124765
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0417711   -0.4321240    0.5156661
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.5938651    0.0038529    1.1838773
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.7641429    0.1913057    1.3369800
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.1824762   -0.5106101    0.8755625
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.6109566    0.0942076    1.1277056
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.1468965   -0.3510793    0.6448723
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1476845   -0.6326741    0.9280431
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.2448929   -0.2658359    0.7556216
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0184484   -0.5246901    0.5615869
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.1181488   -0.7169689    0.4806713
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0896667   -0.5785506    0.3992172
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0020290   -0.5649169    0.5608590
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.2902866   -0.9185257    0.3379526
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1336957   -0.8207316    0.5533403
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0059197   -0.7096542    0.7214937
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.3255149   -0.2260284    0.8770582
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2733043   -0.3626324    0.9092411
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2192210   -0.5037796    0.9422216
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2345583   -0.3643412    0.8334579
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0693438   -0.7165681    0.5778805
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1816267   -0.7867494    0.4234960
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.3126734   -0.3053041    0.9306509
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.1324151   -0.5677092    0.8325394
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.3160790   -0.3878816    1.0200396
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.5915411   -0.0691414    1.2522236
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.5098457   -0.1099964    1.1296878
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.2792901   -0.3632048    0.9217851
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.2041639   -0.5256167    0.9339445
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.3038738   -0.8971555    0.2894079
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.2971283   -0.3854962    0.9797528
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.5102404   -0.1516654    1.1721462
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.5835123   -0.0487265    1.2157512
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.6166909   -0.0389519    1.2723337
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 -0.0765586   -0.7989271    0.6458098
6 months    ki1000108-IRC              INDIA                          3                    1                  0.0869173   -0.4790863    0.6529209
6 months    ki1000108-IRC              INDIA                          4                    1                 -0.2684301   -0.9481688    0.4113086
6 months    ki1000108-IRC              INDIA                          5                    1                 -0.5873241   -1.2484062    0.0737580
6 months    ki1000108-IRC              INDIA                          6                    1                  0.8537300    0.2003803    1.5070796
6 months    ki1000108-IRC              INDIA                          7                    1                  0.4770370   -0.1287206    1.0827947
6 months    ki1000108-IRC              INDIA                          8                    1                  0.6113056    0.0676794    1.1549317
6 months    ki1000108-IRC              INDIA                          9                    1                  0.7906019   -0.0943213    1.6755250
6 months    ki1000108-IRC              INDIA                          10                   1                  0.5259722    0.0096786    1.0422659
6 months    ki1000108-IRC              INDIA                          11                   1                  0.2613832   -0.3301247    0.8528911
6 months    ki1000108-IRC              INDIA                          12                   1                 -0.0412718   -0.5714153    0.4888717
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2211184   -0.2479486    0.6901854
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.3194779   -0.0405080    0.6794638
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.2115737   -0.1340212    0.5571686
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.0202786   -0.4007836    0.3602263
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.1818627   -0.1080049    0.4717304
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.0827775   -0.4616043    0.2960493
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.0472214   -0.3507912    0.4452339
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.2862084   -0.1535354    0.7259521
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.1476908   -0.2459062    0.5412878
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0487529   -0.2758216    0.3733275
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.0859964   -0.3120885    0.4840812
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0830333   -0.3402965    0.5063631
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.1289333   -0.3012362    0.5591029
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.0672924   -0.3209223    0.4555071
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.2574667   -0.1406310    0.6555643
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0529650   -0.5026785    0.3967486
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.1157370   -0.5581056    0.3266315
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0536860   -0.3674136    0.4747855
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.1580778   -0.3349842    0.6511397
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0255179   -0.3913174    0.4423533
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.2206490   -0.6216471    0.1803491
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.3873667   -0.0266313    0.8013646
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0193425   -0.2300535    0.2687384
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.3034864    0.0473719    0.5596008
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0135022   -0.2547403    0.2277358
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0608286   -0.2970901    0.1754329
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.2724377   -0.5080684   -0.0368070
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.3257072   -0.5624382   -0.0889763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.3485310   -0.5537185   -0.1433434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.2762043   -0.4893142   -0.0630943
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.1300697   -0.3413931    0.0812537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.3585899   -0.5744183   -0.1427615
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0663588   -0.2705401    0.1378225
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.1399464   -0.3067490    0.5866418
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.2233201   -0.7546523    0.3080121
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 -0.2017593   -0.6954359    0.2919173
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                  0.2348417   -0.2317163    0.7013997
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                 -0.0920442   -0.5400403    0.3559520
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                 -0.2192130   -0.7578015    0.3193756
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                  0.0328411   -0.5396278    0.6053101
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                 -0.1176362   -0.5928225    0.3575502
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                 -0.5255013   -1.1011974    0.0501948
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                 -0.1003638   -0.5831055    0.3823780
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                 -0.2291852   -0.8411257    0.3827554
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 -0.5383678   -1.0410284   -0.0357072
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.1823623   -0.6692518    0.3045272
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.2647867   -0.7260020    0.1964287
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 -0.1417576   -0.6091834    0.3256682
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 -0.0018689   -0.5014355    0.4976978
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.0513750   -0.6167599    0.5140099
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.4824234   -1.0303023    0.0654555
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 -0.1412619   -0.6187451    0.3362213
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                  0.2340392   -0.4810857    0.9491641
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.0172624   -0.5283887    0.4938639
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.1542743   -0.6248584    0.3163098
6 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           2                    1                 -0.0992247   -0.4850424    0.2865929
6 months    ki1114097-CMIN             PERU                           3                    1                 -0.0942506   -0.5063925    0.3178913
6 months    ki1114097-CMIN             PERU                           4                    1                 -0.2036226   -0.6072024    0.1999572
6 months    ki1114097-CMIN             PERU                           5                    1                 -0.1199390   -0.4969064    0.2570284
6 months    ki1114097-CMIN             PERU                           6                    1                 -0.0624737   -0.4514812    0.3265337
6 months    ki1114097-CMIN             PERU                           7                    1                 -0.1382345   -0.5553759    0.2789070
6 months    ki1114097-CMIN             PERU                           8                    1                 -0.1079637   -0.5039538    0.2880264
6 months    ki1114097-CMIN             PERU                           9                    1                  0.0048229   -0.3885985    0.3982442
6 months    ki1114097-CMIN             PERU                           10                   1                 -0.2707724   -0.7240451    0.1825003
6 months    ki1114097-CMIN             PERU                           11                   1                  0.1911251   -0.2031151    0.5853653
6 months    ki1114097-CMIN             PERU                           12                   1                  0.0423229   -0.4125734    0.4972192
6 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           2                    1                 -0.4405171   -1.4096232    0.5285890
6 months    ki1114097-CONTENT          PERU                           3                    1                 -0.2235000   -1.1443289    0.6973289
6 months    ki1114097-CONTENT          PERU                           4                    1                 -1.2594167   -2.3129613   -0.2058721
6 months    ki1114097-CONTENT          PERU                           5                    1                 -0.8171289   -1.7658914    0.1316336
6 months    ki1114097-CONTENT          PERU                           6                    1                 -0.9947341   -2.1139067    0.1244384
6 months    ki1114097-CONTENT          PERU                           7                    1                 -0.5940868   -1.6203301    0.4321565
6 months    ki1114097-CONTENT          PERU                           8                    1                 -1.0301645   -1.9089496   -0.1513794
6 months    ki1114097-CONTENT          PERU                           9                    1                 -0.9030029   -1.8721929    0.0661870
6 months    ki1114097-CONTENT          PERU                           10                   1                 -0.6659686   -1.5826987    0.2507615
6 months    ki1114097-CONTENT          PERU                           11                   1                 -0.8229722   -1.7332578    0.0873134
6 months    ki1114097-CONTENT          PERU                           12                   1                  0.0825159   -1.2402206    1.4052523
6 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 -0.1299276   -0.2980047    0.0381495
6 months    ki1119695-PROBIT           BELARUS                        3                    1                  0.1371255   -0.0450088    0.3192598
6 months    ki1119695-PROBIT           BELARUS                        4                    1                  0.2254291    0.0395215    0.4113366
6 months    ki1119695-PROBIT           BELARUS                        5                    1                  0.2472592    0.0315314    0.4629870
6 months    ki1119695-PROBIT           BELARUS                        6                    1                  0.1770284    0.0216462    0.3324105
6 months    ki1119695-PROBIT           BELARUS                        7                    1                  0.2082083    0.0677896    0.3486270
6 months    ki1119695-PROBIT           BELARUS                        8                    1                  0.1575425   -0.0121127    0.3271977
6 months    ki1119695-PROBIT           BELARUS                        9                    1                  0.1747671    0.0217939    0.3277404
6 months    ki1119695-PROBIT           BELARUS                        10                   1                  0.1318554   -0.0391680    0.3028788
6 months    ki1119695-PROBIT           BELARUS                        11                   1                  0.0898326   -0.0354374    0.2151026
6 months    ki1119695-PROBIT           BELARUS                        12                   1                  0.0071745   -0.1334728    0.1478218
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0662810   -0.0637366    0.1962986
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0340597   -0.1627488    0.0946295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0278567   -0.0928538    0.1485673
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0512428   -0.1784972    0.0760115
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.0429290   -0.0831523    0.1690104
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0173088   -0.1416863    0.1070687
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.1164045   -0.0018758    0.2346847
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.1533969    0.0385904    0.2682034
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.0977849   -0.0294901    0.2250600
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0705816   -0.0490678    0.1902311
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2006297    0.0797629    0.3214966
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0330622   -0.2631355    0.3292599
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 -0.1339518   -0.4592481    0.1913446
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                 -0.1997273   -0.5363243    0.1368698
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0538084   -0.3638465    0.2562298
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                  0.0574925   -0.2814893    0.3964743
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 -0.2205051   -0.5604514    0.1194413
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 -0.0371175   -0.3616113    0.2873763
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                 -0.1727273   -0.6501835    0.3047290
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                 -0.1761558   -0.5297850    0.1774733
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                  0.0325788   -0.4031142    0.4682719
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 -0.3094920   -0.8331807    0.2141967
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0222411   -0.0693911    0.1138734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0689146   -0.0216849    0.1595141
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0729762   -0.0194631    0.1654154
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0304315   -0.0629065    0.1237694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0207399   -0.0729649    0.1144448
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0395901   -0.0574190    0.1365992
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0091272   -0.0926480    0.0743936
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0354901   -0.0519029    0.1228831
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.0537769   -0.1389702    0.0314165
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0924238   -0.1787858   -0.0060619
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0232774   -0.1112517    0.0646969
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.1861229   -0.0226892    0.3949350
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0362100   -0.1461439    0.2185638
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1                  0.0092336   -0.1544738    0.1729409
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.0157434   -0.1931133    0.1616265
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.0686992   -0.1172518    0.2546503
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.0959254   -0.2571013    0.0652505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.1024883   -0.0719630    0.2769397
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.1622687   -0.0117249    0.3362624
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.1030537   -0.0912617    0.2973691
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.0436618   -0.1515297    0.2388534
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.0432615   -0.1717574    0.2582803
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.8858627   -1.4834152   -0.2883103
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.5565833   -1.0605431   -0.0526236
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0749167   -0.4767691    0.6266024
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.4744386   -1.0273134    0.0784362
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.2903333   -1.1935899    0.6129232
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.1208333   -0.6589353    0.4172687
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.3868571   -1.0263830    0.2526687
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.2223333   -0.7056154    0.2609487
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.2153333   -0.8205354    0.3898688
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.3748333   -0.8885852    0.1389185
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0655513   -0.4005372    0.5316397
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.3731448   -0.5620919    1.3083815
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.7546154   -0.2212486    1.7304794
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  1.0485043    0.2697000    1.8273086
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.9961779    0.1473623    1.8449934
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.2886154   -0.9169306    1.4941614
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.2750699   -0.8088613    1.3590011
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.1214011   -0.8507191    1.0935213
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.4656571   -0.3736980    1.3050121
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.6099487   -0.2947357    1.5146332
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.3952404   -0.4144279    1.2049087
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.4957692   -0.5242270    1.5157655
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.2404722   -0.3174211    0.7983656
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.5609064   -0.0594114    1.1812242
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.3590079   -0.2708087    0.9888246
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.1115278   -0.9111665    0.6881109
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.5542810    0.0048291    1.1037330
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.2791787   -0.3493220    0.9076795
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.1393275   -0.5392069    0.8178619
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                  0.1885380   -0.4254581    0.8025341
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.1526068   -0.4582394    0.7634531
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                  0.2347222   -0.3333551    0.8027996
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.4032222   -0.1508130    0.9572574
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.4157826   -0.9144644    0.0828992
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1303089   -0.6861292    0.4255114
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1846911   -0.3485302    0.7179123
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                  0.2707437   -0.3050554    0.8465428
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                  0.2549396   -0.2992270    0.8091062
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.3862174   -0.0768988    0.8493336
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                  0.4689016   -0.0043193    0.9421225
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                  0.7133424    0.2122365    1.2144483
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                  0.4374901   -0.0586555    0.9336357
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                  0.2131719   -0.3448658    0.7712097
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.2755299   -0.3061726    0.8572324
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0070603   -0.4354419    0.4495626
24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.2743103   -0.2772469    0.8258676
24 months   ki0047075b-MAL-ED          PERU                           4                    1                 -0.1031897   -0.7183719    0.5119926
24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.1454215   -0.4669447    0.7577876
24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.3172270   -0.5676785    1.2021325
24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.0950246   -0.3340536    0.5241029
24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.2027719   -0.3335198    0.7390636
24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.5083103    0.0088106    1.0078101
24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.4803818   -0.0205773    0.9813409
24 months   ki0047075b-MAL-ED          PERU                           11                   1                 -0.0794992   -0.5870475    0.4280492
24 months   ki0047075b-MAL-ED          PERU                           12                   1                 -0.0985468   -0.6043624    0.4072688
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0989871   -0.6890734    0.4910992
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.3327894   -0.3469281    1.0125068
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.8047947    0.1115413    1.4980481
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.5670674   -0.1199392    1.2540741
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.6289462   -0.0084946    1.2663871
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.1644390   -0.4112186    0.7400966
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.2128629   -0.7552135    1.1809394
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.3626129   -0.1326945    0.8579203
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.1149462   -0.4712891    0.7011816
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.1915689   -0.7843206    0.4011828
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0003226   -0.5374168    0.5367717
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0572222   -0.5643806    0.6788250
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.5082143   -1.2279391    0.2115105
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.2325000   -1.2075543    0.7425543
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.1275000   -0.5872958    0.8422958
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.1497222   -0.4683814    0.7678259
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.1809000   -0.4910348    0.8528348
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.1645833   -0.5584758    0.8876425
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.1860294   -0.4620958    0.8341546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.2275000   -0.8922365    0.4372365
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0388043   -0.6688559    0.5912472
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.1805435   -0.4763345    0.8374215
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0395910   -0.4696630    0.5488451
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.2199062   -0.7116307    0.2718183
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1938272   -0.2129744    0.6006287
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.1098395   -0.5289334    0.3092544
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.2903395   -0.7537464    0.1730673
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.3048878   -0.1763771    0.7861526
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.0658597   -0.3461906    0.4779100
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.0638812   -0.5531970    0.4254346
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.2290026   -0.1968724    0.6548776
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.2747855   -0.1598182    0.7093892
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.0872648   -0.5671861    0.3926565
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                  0.0518056   -0.4510883    0.5546994
24 months   ki1000108-IRC              INDIA                          3                    1                  0.0133381   -0.4444641    0.4711403
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.0637753   -0.5640517    0.4365012
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.5643056   -1.1318092    0.0031981
24 months   ki1000108-IRC              INDIA                          6                    1                  0.5649737    0.1411058    0.9888416
24 months   ki1000108-IRC              INDIA                          7                    1                  0.2942593   -0.1266632    0.7151818
24 months   ki1000108-IRC              INDIA                          8                    1                  0.4538426    0.0309040    0.8767812
24 months   ki1000108-IRC              INDIA                          9                    1                  0.2493981   -0.2888100    0.7876063
24 months   ki1000108-IRC              INDIA                          10                   1                  0.3813889   -0.0375942    0.8003720
24 months   ki1000108-IRC              INDIA                          11                   1                  0.4119546   -0.0151391    0.8390483
24 months   ki1000108-IRC              INDIA                          12                   1                  0.1545406   -0.2788197    0.5879009
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0512500   -0.4735055    0.3710055
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0553659   -0.4155477    0.5262794
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.3065196   -0.8263892    0.2133500
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.1588725   -0.6302576    0.3125125
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.1235556   -0.5780473    0.3309362
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.0448649   -0.5596864    0.4699567
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.1838889   -0.6647408    0.2969630
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.2855263   -0.4406663    1.0117189
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0469583   -0.4615900    0.5555067
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0905081   -0.5822213    0.4012051
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0676296   -0.4021940    0.5374532
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                  0.1313796   -0.5590085    0.8217676
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                  0.2890241   -0.3981061    0.9761542
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                  0.0110311   -0.6513021    0.6733644
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                  0.1395325   -0.5433433    0.8224083
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                  0.2912299   -0.4669344    1.0493943
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                  0.3961285   -0.3800090    1.1722660
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.1090747   -0.9027168    0.6845675
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                  0.2679389   -0.4081144    0.9439921
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                  0.1324848   -1.0122784    1.2772481
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                  0.1176515   -0.5998366    0.8351396
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                  0.2128647   -0.4773350    0.9030644
24 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           2                    1                 -0.5782836   -0.9454885   -0.2110786
24 months   ki1114097-CMIN             PERU                           3                    1                 -0.3340447   -0.7287583    0.0606689
24 months   ki1114097-CMIN             PERU                           4                    1                 -0.6960897   -1.2269974   -0.1651820
24 months   ki1114097-CMIN             PERU                           5                    1                 -0.5545968   -1.0210010   -0.0881925
24 months   ki1114097-CMIN             PERU                           6                    1                 -0.2441667   -0.7209849    0.2326516
24 months   ki1114097-CMIN             PERU                           7                    1                 -0.2030556   -0.6824140    0.2763029
24 months   ki1114097-CMIN             PERU                           8                    1                 -0.3131452   -0.7673563    0.1410660
24 months   ki1114097-CMIN             PERU                           9                    1                 -0.2346429   -0.7874580    0.3181723
24 months   ki1114097-CMIN             PERU                           10                   1                 -0.5013889   -1.1142685    0.1114907
24 months   ki1114097-CMIN             PERU                           11                   1                 -0.1150000   -0.5995839    0.3695839
24 months   ki1114097-CMIN             PERU                           12                   1                 -0.3285000   -0.9143935    0.2573935
24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                 -0.2317770   -0.8830324    0.4194784
24 months   ki1119695-PROBIT           BELARUS                        3                    1                  0.1509847   -0.5116711    0.8136405
24 months   ki1119695-PROBIT           BELARUS                        4                    1                 -0.0223239   -0.6676105    0.6229627
24 months   ki1119695-PROBIT           BELARUS                        5                    1                 -0.0667989   -0.7395589    0.6059611
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0540573   -3.0317467    2.9236321
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0557116   -0.7975556    0.6861324
24 months   ki1119695-PROBIT           BELARUS                        8                    1                 -0.0492710   -0.7432927    0.6447507
24 months   ki1119695-PROBIT           BELARUS                        9                    1                 -0.2297060   -0.8453835    0.3859716
24 months   ki1119695-PROBIT           BELARUS                        10                   1                 -0.3495257   -1.0049366    0.3058852
24 months   ki1119695-PROBIT           BELARUS                        11                   1                 -0.3970651   -1.0109720    0.2168418
24 months   ki1119695-PROBIT           BELARUS                        12                   1                 -0.2579574   -1.0188260    0.5029111
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.2925277   -0.0559470    0.6410025
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                  0.2367875   -0.1400013    0.6135762
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 -0.0400787   -0.4291056    0.3489481
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                  0.0131669   -0.3518003    0.3781342
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.1596456   -0.5490696    0.2297784
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                  0.1231707   -0.2999125    0.5462540
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.3117028   -0.0528449    0.6762505
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.2390732   -0.2439575    0.7221038
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.3526732   -0.0804557    0.7858020
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                  0.0192954   -0.4745025    0.5130933
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.4279268   -1.0535065    0.1976528
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0407930   -0.0745120    0.1560979
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1535712    0.0447834    0.2623589
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.2288299    0.1026551    0.3550047
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.1329083   -0.0037842    0.2696008
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1563891    0.0366753    0.2761030
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.2639729    0.1420897    0.3858561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1841234    0.0703203    0.2979266
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.1976252    0.0826071    0.3126433
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.1660465    0.0586044    0.2734886
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0159493   -0.0897097    0.1216084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0089948   -0.0915573    0.1095470
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0645477   -0.2300939    0.1009985
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0549095   -0.2215443    0.1117252
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 -0.1166085   -0.2597901    0.0265732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.0178788   -0.1771421    0.1413845
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.0654137   -0.1069950    0.2378224
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.0914606   -0.2411465    0.0582254
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.1273765   -0.0353241    0.2900771
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.0799072   -0.0727682    0.2325827
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.1775902    0.0011688    0.3540116
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.0481798   -0.1632496    0.2596092
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.0515553   -0.1160196    0.2191302


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0454495   -0.4013136    0.3104145
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4642757   -0.9236570   -0.0048945
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1800061   -0.5589083    0.1988962
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.5487453    0.0540047    1.0434859
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.1223646   -0.2263886    0.4711178
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1058888   -0.4327847    0.2210072
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.4648999    0.0244288    0.9053711
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1922226   -0.5038466    0.8882918
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -0.0747206   -0.2380742    0.0886330
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2278876    0.1663815    0.2893937
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1299546    0.0804485    0.1794606
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0368542   -0.3999329    0.3262245
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1110207   -0.4669100    0.6889515
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1910217   -0.1599584    0.5420017
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1455407   -0.1966184    0.4876998
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1287379   -0.4004452    0.1429694
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1474335   -0.1642611    0.4591282
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0611829   -0.3878466    0.5102124
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.3038949   -0.1395776    0.7473674
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.2652697   -0.1521984    0.6827378
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1204967   -0.1687735    0.4097668
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0619179   -0.2188523    0.3426881
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1333300   -0.2752736    0.0086136
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1095860   -0.4491361    0.2299642
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.1832610   -0.6077903    0.2412683
6 months    ki1114097-CMIN             PERU                           1                    NA                -0.0706939   -0.3639095    0.2225217
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.7059773   -1.4819268    0.0699723
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1201520   -0.0053647    0.2456687
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0598163   -0.0195829    0.1392154
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0829180   -0.3299398    0.1641038
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0044712   -0.0573981    0.0663404
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0327531   -0.1089413    0.1744475
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2654465   -0.6343918    0.1034987
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.4914497   -0.2187684    1.2016678
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2614072   -0.1603730    0.6831875
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.2249981   -0.1021788    0.5521750
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1342108   -0.2012448    0.4696665
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1637768   -0.2105550    0.5381085
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0116121   -0.4699845    0.4932088
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0261255   -0.2672173    0.3194684
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2098835   -0.1044191    0.5241861
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0457945   -0.3717001    0.2801112
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1572538   -0.4594342    0.7739417
24 months   ki1114097-CMIN             PERU                           1                    NA                -0.4132226   -0.7433417   -0.0831035
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1422102   -0.6700431    0.3856226
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0816328   -0.2087225    0.3719880
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1168704    0.0394956    0.1942452
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0074170   -0.1327877    0.1179536

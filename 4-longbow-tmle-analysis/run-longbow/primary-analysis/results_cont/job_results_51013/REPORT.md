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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2            21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3            25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4            21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5            20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             8     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7            21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8            22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9            20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10           23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11           15     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12           26     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1             9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2            19     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3            17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4             8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5            16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6             7     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7            17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8            17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9            27     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10           18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11           15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12           13     183
Birth       ki0047075b-MAL-ED          INDIA                          1            16     203
Birth       ki0047075b-MAL-ED          INDIA                          2            16     203
Birth       ki0047075b-MAL-ED          INDIA                          3            20     203
Birth       ki0047075b-MAL-ED          INDIA                          4            14     203
Birth       ki0047075b-MAL-ED          INDIA                          5             7     203
Birth       ki0047075b-MAL-ED          INDIA                          6            17     203
Birth       ki0047075b-MAL-ED          INDIA                          7            20     203
Birth       ki0047075b-MAL-ED          INDIA                          8            17     203
Birth       ki0047075b-MAL-ED          INDIA                          9            19     203
Birth       ki0047075b-MAL-ED          INDIA                          10           23     203
Birth       ki0047075b-MAL-ED          INDIA                          11           20     203
Birth       ki0047075b-MAL-ED          INDIA                          12           14     203
Birth       ki0047075b-MAL-ED          NEPAL                          1            16     168
Birth       ki0047075b-MAL-ED          NEPAL                          2            13     168
Birth       ki0047075b-MAL-ED          NEPAL                          3            12     168
Birth       ki0047075b-MAL-ED          NEPAL                          4            14     168
Birth       ki0047075b-MAL-ED          NEPAL                          5            18     168
Birth       ki0047075b-MAL-ED          NEPAL                          6            13     168
Birth       ki0047075b-MAL-ED          NEPAL                          7            17     168
Birth       ki0047075b-MAL-ED          NEPAL                          8            14     168
Birth       ki0047075b-MAL-ED          NEPAL                          9             9     168
Birth       ki0047075b-MAL-ED          NEPAL                          10           16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11           16     168
Birth       ki0047075b-MAL-ED          NEPAL                          12           10     168
Birth       ki0047075b-MAL-ED          PERU                           1            35     279
Birth       ki0047075b-MAL-ED          PERU                           2            22     279
Birth       ki0047075b-MAL-ED          PERU                           3            22     279
Birth       ki0047075b-MAL-ED          PERU                           4            20     279
Birth       ki0047075b-MAL-ED          PERU                           5            24     279
Birth       ki0047075b-MAL-ED          PERU                           6            18     279
Birth       ki0047075b-MAL-ED          PERU                           7            23     279
Birth       ki0047075b-MAL-ED          PERU                           8            19     279
Birth       ki0047075b-MAL-ED          PERU                           9            22     279
Birth       ki0047075b-MAL-ED          PERU                           10           23     279
Birth       ki0047075b-MAL-ED          PERU                           11           31     279
Birth       ki0047075b-MAL-ED          PERU                           12           20     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2            23     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3            17     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4            13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5            13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6            18     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7            22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8            10     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9            21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10           28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11           27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12           39     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            10     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           16     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10            9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11           11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            4      88
Birth       ki1000108-IRC              INDIA                          1            30     343
Birth       ki1000108-IRC              INDIA                          2            22     343
Birth       ki1000108-IRC              INDIA                          3            26     343
Birth       ki1000108-IRC              INDIA                          4            19     343
Birth       ki1000108-IRC              INDIA                          5            15     343
Birth       ki1000108-IRC              INDIA                          6            25     343
Birth       ki1000108-IRC              INDIA                          7            31     343
Birth       ki1000108-IRC              INDIA                          8            37     343
Birth       ki1000108-IRC              INDIA                          9            24     343
Birth       ki1000108-IRC              INDIA                          10           32     343
Birth       ki1000108-IRC              INDIA                          11           39     343
Birth       ki1000108-IRC              INDIA                          12           43     343
Birth       ki1000109-EE               PAKISTAN                       1             0       1
Birth       ki1000109-EE               PAKISTAN                       2             0       1
Birth       ki1000109-EE               PAKISTAN                       3             0       1
Birth       ki1000109-EE               PAKISTAN                       4             0       1
Birth       ki1000109-EE               PAKISTAN                       5             0       1
Birth       ki1000109-EE               PAKISTAN                       6             0       1
Birth       ki1000109-EE               PAKISTAN                       7             0       1
Birth       ki1000109-EE               PAKISTAN                       8             0       1
Birth       ki1000109-EE               PAKISTAN                       9             0       1
Birth       ki1000109-EE               PAKISTAN                       10            0       1
Birth       ki1000109-EE               PAKISTAN                       11            0       1
Birth       ki1000109-EE               PAKISTAN                       12            1       1
Birth       ki1000109-ResPak           PAKISTAN                       1             1       6
Birth       ki1000109-ResPak           PAKISTAN                       2             0       6
Birth       ki1000109-ResPak           PAKISTAN                       3             0       6
Birth       ki1000109-ResPak           PAKISTAN                       4             1       6
Birth       ki1000109-ResPak           PAKISTAN                       5             1       6
Birth       ki1000109-ResPak           PAKISTAN                       6             2       6
Birth       ki1000109-ResPak           PAKISTAN                       7             1       6
Birth       ki1000109-ResPak           PAKISTAN                       8             0       6
Birth       ki1000109-ResPak           PAKISTAN                       9             0       6
Birth       ki1000109-ResPak           PAKISTAN                       10            0       6
Birth       ki1000109-ResPak           PAKISTAN                       11            0       6
Birth       ki1000109-ResPak           PAKISTAN                       12            0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3             7     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4            16     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5            14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6            13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             7     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8            16     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9            19     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10           18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11           17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12           13     166
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
Birth       ki1114097-CMIN             BANGLADESH                     1             0       8
Birth       ki1114097-CMIN             BANGLADESH                     2             2       8
Birth       ki1114097-CMIN             BANGLADESH                     3             0       8
Birth       ki1114097-CMIN             BANGLADESH                     4             0       8
Birth       ki1114097-CMIN             BANGLADESH                     5             1       8
Birth       ki1114097-CMIN             BANGLADESH                     6             0       8
Birth       ki1114097-CMIN             BANGLADESH                     7             0       8
Birth       ki1114097-CMIN             BANGLADESH                     8             1       8
Birth       ki1114097-CMIN             BANGLADESH                     9             1       8
Birth       ki1114097-CMIN             BANGLADESH                     10            1       8
Birth       ki1114097-CMIN             BANGLADESH                     11            2       8
Birth       ki1114097-CMIN             BANGLADESH                     12            0       8
Birth       ki1114097-CMIN             BRAZIL                         1            13     111
Birth       ki1114097-CMIN             BRAZIL                         2             7     111
Birth       ki1114097-CMIN             BRAZIL                         3            12     111
Birth       ki1114097-CMIN             BRAZIL                         4             9     111
Birth       ki1114097-CMIN             BRAZIL                         5             5     111
Birth       ki1114097-CMIN             BRAZIL                         6             6     111
Birth       ki1114097-CMIN             BRAZIL                         7             4     111
Birth       ki1114097-CMIN             BRAZIL                         8            12     111
Birth       ki1114097-CMIN             BRAZIL                         9             8     111
Birth       ki1114097-CMIN             BRAZIL                         10           14     111
Birth       ki1114097-CMIN             BRAZIL                         11           11     111
Birth       ki1114097-CMIN             BRAZIL                         12           10     111
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
Birth       ki1119695-PROBIT           BELARUS                        1           854   13824
Birth       ki1119695-PROBIT           BELARUS                        2           786   13824
Birth       ki1119695-PROBIT           BELARUS                        3           961   13824
Birth       ki1119695-PROBIT           BELARUS                        4           955   13824
Birth       ki1119695-PROBIT           BELARUS                        5           948   13824
Birth       ki1119695-PROBIT           BELARUS                        6          1007   13824
Birth       ki1119695-PROBIT           BELARUS                        7          1276   13824
Birth       ki1119695-PROBIT           BELARUS                        8          1318   13824
Birth       ki1119695-PROBIT           BELARUS                        9          1313   13824
Birth       ki1119695-PROBIT           BELARUS                        10         1498   13824
Birth       ki1119695-PROBIT           BELARUS                        11         1392   13824
Birth       ki1119695-PROBIT           BELARUS                        12         1516   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1          1238   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           946   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3          1060   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4           937   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5           913   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6          1046   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7          1098   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8          1163   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9          1264   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10          981   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11         1068   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12         1179   12893
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          1450   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2          1279   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3          1554   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4          1152   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5           784   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6           822   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7           909   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8          1200   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9          1523   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10         1659   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11         1669   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12         1708   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2           110     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3           133     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4           137     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5           103     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6            75     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7            61     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8            31     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9            25     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10            8     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0     683
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            27     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3            25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4            29     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5            43     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6            35     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7            33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8            41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9            24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10           19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11           40     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12           28     368
6 months    ki1000108-IRC              INDIA                          1            36     408
6 months    ki1000108-IRC              INDIA                          2            27     408
6 months    ki1000108-IRC              INDIA                          3            29     408
6 months    ki1000108-IRC              INDIA                          4            22     408
6 months    ki1000108-IRC              INDIA                          5            21     408
6 months    ki1000108-IRC              INDIA                          6            37     408
6 months    ki1000108-IRC              INDIA                          7            36     408
6 months    ki1000108-IRC              INDIA                          8            45     408
6 months    ki1000108-IRC              INDIA                          9            25     408
6 months    ki1000108-IRC              INDIA                          10           37     408
6 months    ki1000108-IRC              INDIA                          11           41     408
6 months    ki1000108-IRC              INDIA                          12           52     408
6 months    ki1000109-EE               PAKISTAN                       1            90     376
6 months    ki1000109-EE               PAKISTAN                       2            81     376
6 months    ki1000109-EE               PAKISTAN                       3            42     376
6 months    ki1000109-EE               PAKISTAN                       4            29     376
6 months    ki1000109-EE               PAKISTAN                       5             2     376
6 months    ki1000109-EE               PAKISTAN                       6             0     376
6 months    ki1000109-EE               PAKISTAN                       7             0     376
6 months    ki1000109-EE               PAKISTAN                       8             0     376
6 months    ki1000109-EE               PAKISTAN                       9             0     376
6 months    ki1000109-EE               PAKISTAN                       10            0     376
6 months    ki1000109-EE               PAKISTAN                       11           49     376
6 months    ki1000109-EE               PAKISTAN                       12           83     376
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            85    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            81    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3            80    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4            75    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5            76    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6           102    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7           115    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8           152    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9           165    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10          148    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11          126    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12          129    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            61     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2            37     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4            26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5            29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6            31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7            16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9            12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10           26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11           44     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12           62     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2            49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3            50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4            44     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5            40     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6            39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7            45     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8            38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9            30     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10           52     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11           49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12           50     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1           199    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2           137    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3           151    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4           138    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           160    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           143    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           145    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           174    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           198    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          187    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          201    2028
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
6 months    ki1114097-CMIN             BANGLADESH                     1            28     243
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
6 months    ki1114097-CMIN             BANGLADESH                     12           44     243
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
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1            16     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2            87     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3           114     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4           125     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5           110     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6            61     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7            40     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8            38     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9            98     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10           34     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11           47     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12           79     849
6 months    ki1114097-CMIN             PERU                           1            41     636
6 months    ki1114097-CMIN             PERU                           2            56     636
6 months    ki1114097-CMIN             PERU                           3            69     636
6 months    ki1114097-CMIN             PERU                           4            69     636
6 months    ki1114097-CMIN             PERU                           5            70     636
6 months    ki1114097-CMIN             PERU                           6            48     636
6 months    ki1114097-CMIN             PERU                           7            43     636
6 months    ki1114097-CMIN             PERU                           8            54     636
6 months    ki1114097-CMIN             PERU                           9            42     636
6 months    ki1114097-CMIN             PERU                           10           37     636
6 months    ki1114097-CMIN             PERU                           11           65     636
6 months    ki1114097-CMIN             PERU                           12           42     636
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
6 months    ki1119695-PROBIT           BELARUS                        1          1101   15757
6 months    ki1119695-PROBIT           BELARUS                        2           951   15757
6 months    ki1119695-PROBIT           BELARUS                        3          1114   15757
6 months    ki1119695-PROBIT           BELARUS                        4          1070   15757
6 months    ki1119695-PROBIT           BELARUS                        5          1096   15757
6 months    ki1119695-PROBIT           BELARUS                        6          1120   15757
6 months    ki1119695-PROBIT           BELARUS                        7          1366   15757
6 months    ki1119695-PROBIT           BELARUS                        8          1497   15757
6 months    ki1119695-PROBIT           BELARUS                        9          1481   15757
6 months    ki1119695-PROBIT           BELARUS                        10         1669   15757
6 months    ki1119695-PROBIT           BELARUS                        11         1589   15757
6 months    ki1119695-PROBIT           BELARUS                        12         1703   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           805    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           573    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3           701    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4           656    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5           597    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6           652    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7           636    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8           729    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9           763    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10          599    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11          725    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12          813    8249
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1          1360   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2          1186   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3          1421   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4          1190   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5          1148   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6          1156   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7          1238   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8          1467   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9          1563   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10         1684   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11         1701   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12         1670   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            53    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           165    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3           430    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4           848    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5           586    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6           434    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7           836    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8           510    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9           431    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10          306    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11          157    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12           77    4833
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            42     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2            36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3            41     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4            34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5            34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6            30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7            37     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8            30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9            19     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10           40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11           40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12           45     428
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1             2     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7            88     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8           203     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9           187     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10           13     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11            4     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12            1     498
24 months   ki1114097-CMIN             BANGLADESH                     1            27     243
24 months   ki1114097-CMIN             BANGLADESH                     2            31     243
24 months   ki1114097-CMIN             BANGLADESH                     3            19     243
24 months   ki1114097-CMIN             BANGLADESH                     4            18     243
24 months   ki1114097-CMIN             BANGLADESH                     5            19     243
24 months   ki1114097-CMIN             BANGLADESH                     6            22     243
24 months   ki1114097-CMIN             BANGLADESH                     7            12     243
24 months   ki1114097-CMIN             BANGLADESH                     8            13     243
24 months   ki1114097-CMIN             BANGLADESH                     9            18     243
24 months   ki1114097-CMIN             BANGLADESH                     10           19     243
24 months   ki1114097-CMIN             BANGLADESH                     11            2     243
24 months   ki1114097-CMIN             BANGLADESH                     12           43     243
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
24 months   ki1119695-PROBIT           BELARUS                        1           264    3971
24 months   ki1119695-PROBIT           BELARUS                        2           210    3971
24 months   ki1119695-PROBIT           BELARUS                        3           320    3971
24 months   ki1119695-PROBIT           BELARUS                        4           322    3971
24 months   ki1119695-PROBIT           BELARUS                        5           301    3971
24 months   ki1119695-PROBIT           BELARUS                        6           265    3971
24 months   ki1119695-PROBIT           BELARUS                        7           364    3971
24 months   ki1119695-PROBIT           BELARUS                        8           346    3971
24 months   ki1119695-PROBIT           BELARUS                        9           375    3971
24 months   ki1119695-PROBIT           BELARUS                        10          390    3971
24 months   ki1119695-PROBIT           BELARUS                        11          386    3971
24 months   ki1119695-PROBIT           BELARUS                        12          428    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            49     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            58     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3            53     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4            44     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5            49     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6            44     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7            31     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8            30     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             2     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            4     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11           20     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12           38     422
24 months   ki1148112-LCNI-5           MALAWI                         1            40     563
24 months   ki1148112-LCNI-5           MALAWI                         2            86     563
24 months   ki1148112-LCNI-5           MALAWI                         3            67     563
24 months   ki1148112-LCNI-5           MALAWI                         4            74     563
24 months   ki1148112-LCNI-5           MALAWI                         5            62     563
24 months   ki1148112-LCNI-5           MALAWI                         6            64     563
24 months   ki1148112-LCNI-5           MALAWI                         7            39     563
24 months   ki1148112-LCNI-5           MALAWI                         8            27     563
24 months   ki1148112-LCNI-5           MALAWI                         9            20     563
24 months   ki1148112-LCNI-5           MALAWI                         10           25     563
24 months   ki1148112-LCNI-5           MALAWI                         11           35     563
24 months   ki1148112-LCNI-5           MALAWI                         12           24     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           703    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           610    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           726    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           536    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           396    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           563    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           644    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           648    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           734    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          879    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11          967    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12         1197    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            48    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           321    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3           400    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4           796    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5           559    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6           423    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7           780    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8           472    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9           444    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10          276    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11          145    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12           71    4735


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
![](/tmp/5074b6a6-6bef-49c2-916e-4f4b103b670c/f68b8a52-515c-454e-a46d-e67f1a9672c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5074b6a6-6bef-49c2-916e-4f4b103b670c/f68b8a52-515c-454e-a46d-e67f1a9672c9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5074b6a6-6bef-49c2-916e-4f4b103b670c/f68b8a52-515c-454e-a46d-e67f1a9672c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.7194737   -1.1398772   -0.2990701
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.0657143   -1.5280624   -0.6033662
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.8908000   -1.3427381   -0.4388619
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.2461905   -1.6981294   -0.7942516
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.7740000   -1.2879349   -0.2600651
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.8387500   -1.2912190   -0.3862810
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.2266667   -1.5828033   -0.8705300
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.7013636   -1.1961891   -0.2065382
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.3270000   -1.7934925   -0.8605075
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.0686957   -1.5079824   -0.6294089
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.7733333   -1.2571551   -0.2895115
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.8273077   -1.2468235   -0.4077919
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1466667   -1.1210674    0.8277341
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.3573684   -0.3146809    1.0294177
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.4447059   -0.0012969    0.8907086
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.6637500   -0.0937747    1.4212747
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.5506250    0.0888042    1.0124458
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.1514286   -1.0697634    0.7669063
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    NA                 0.7770588    0.1923716    1.3617461
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.5117647   -0.0240676    1.0475970
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.3529630   -0.0090489    0.7149748
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.5372222   -0.0387250    1.1131695
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.2526667   -0.4257085    0.9310418
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.2246154   -0.3787186    0.8279494
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.4787500   -1.8919877   -1.0655123
Birth       ki0047075b-MAL-ED          INDIA                          2                    NA                -0.9737500   -1.3857743   -0.5617257
Birth       ki0047075b-MAL-ED          INDIA                          3                    NA                -1.3705000   -1.7753305   -0.9656695
Birth       ki0047075b-MAL-ED          INDIA                          4                    NA                -0.9100000   -1.4323306   -0.3876694
Birth       ki0047075b-MAL-ED          INDIA                          5                    NA                -0.9942857   -1.8433430   -0.1452284
Birth       ki0047075b-MAL-ED          INDIA                          6                    NA                -1.6841176   -2.0175130   -1.3507223
Birth       ki0047075b-MAL-ED          INDIA                          7                    NA                -1.1700000   -1.6198727   -0.7201273
Birth       ki0047075b-MAL-ED          INDIA                          8                    NA                -0.3652941   -0.8436018    0.1130136
Birth       ki0047075b-MAL-ED          INDIA                          9                    NA                -0.9957895   -1.4936925   -0.4978865
Birth       ki0047075b-MAL-ED          INDIA                          10                   NA                -0.9947826   -1.4436009   -0.5459643
Birth       ki0047075b-MAL-ED          INDIA                          11                   NA                -1.1420000   -1.4242755   -0.8597245
Birth       ki0047075b-MAL-ED          INDIA                          12                   NA                -0.5571429   -1.0704566   -0.0438291
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.9887500   -1.5646082   -0.4128918
Birth       ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.9930769   -1.3544916   -0.6316623
Birth       ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.7816667   -1.2743433   -0.2889901
Birth       ki0047075b-MAL-ED          NEPAL                          4                    NA                -1.0714286   -1.5934393   -0.5494178
Birth       ki0047075b-MAL-ED          NEPAL                          5                    NA                -1.2177778   -1.6135144   -0.8220412
Birth       ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.9707692   -1.3530495   -0.5884890
Birth       ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.8458824   -1.2941085   -0.3976562
Birth       ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.9878571   -1.6806934   -0.2950209
Birth       ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.8800000   -1.4780853   -0.2819147
Birth       ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.7006250   -1.0008079   -0.4004421
Birth       ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.8062500   -1.0719254   -0.5405746
Birth       ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.4060000   -0.9776674    0.1656674
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.2808571   -0.4928370   -0.0688773
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -0.0827273   -0.4530512    0.2875967
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -0.0145455   -0.4038931    0.3748022
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                 0.0490000   -0.3107707    0.4087707
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                -0.0429167   -0.4580466    0.3722133
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                 0.2383333   -0.1124862    0.5891529
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.0891304   -0.5010883    0.3228275
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.0042105   -0.4765661    0.4681450
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.0663636   -0.5243904    0.3916631
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                 0.0243478   -0.3096725    0.3583681
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -0.2745161   -0.6817391    0.1327068
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                -0.0630000   -0.4035307    0.2775307
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0803704   -0.5306318    0.3698910
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0360870   -0.5436863    0.4715124
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.1894118   -0.7618414    0.3830179
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.3015385   -1.0081187    0.4050417
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.2115385   -0.6371878    0.2141109
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.0744444   -0.5343551    0.6832440
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0150000   -0.4438328    0.4138328
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.1270000   -0.2699160    0.5239160
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.1852381   -0.1971618    0.5676380
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.0821429   -0.3395793    0.5038650
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0825926   -0.6483929    0.4832077
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.2017949   -0.5666194    0.1630296
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2330000   -0.8690955    0.4030955
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.4759091   -1.0646811    0.1128629
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.8738462   -1.6359583   -0.1117340
Birth       ki1000108-IRC              INDIA                          4                    NA                -1.5168421   -2.1488141   -0.8848701
Birth       ki1000108-IRC              INDIA                          5                    NA                -1.7686667   -2.5910096   -0.9463238
Birth       ki1000108-IRC              INDIA                          6                    NA                -1.3684000   -2.0950934   -0.6417066
Birth       ki1000108-IRC              INDIA                          7                    NA                -1.1700000   -1.7384154   -0.6015846
Birth       ki1000108-IRC              INDIA                          8                    NA                -1.3102703   -1.8809350   -0.7396056
Birth       ki1000108-IRC              INDIA                          9                    NA                -1.0200000   -1.8383304   -0.2016696
Birth       ki1000108-IRC              INDIA                          10                   NA                -1.0721875   -1.6480130   -0.4963620
Birth       ki1000108-IRC              INDIA                          11                   NA                -0.7858974   -1.3296475   -0.2421474
Birth       ki1000108-IRC              INDIA                          12                   NA                -0.9930233   -1.4781855   -0.5078611
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5742857   -1.0441489   -0.1044225
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.3258333   -0.8032076    0.1515409
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                 0.3285714   -0.2791136    0.9362565
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.4031250   -1.1341698    0.3279198
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.8678571   -1.4843622   -0.2513520
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.6923077   -1.3189164   -0.0656989
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.9885714   -1.8459496   -0.1311932
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.2400000   -0.9120191    0.4320191
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.0810526   -0.6278542    0.4657489
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.3772222   -1.2198192    0.4653747
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                 0.3794118    0.0277570    0.7310666
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                 0.3930769   -0.0613752    0.8475290
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1851054   -1.4970161   -0.8731947
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                -1.0199109   -1.3030836   -0.7367383
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                -1.1420812   -1.3812965   -0.9028658
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                -1.1455602   -1.3897550   -0.9013654
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                -1.2889557   -1.5368688   -1.0410426
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                -1.1481827   -1.3933563   -0.9030091
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                -1.2202429   -1.4558272   -0.9846587
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                -1.1642716   -1.4022515   -0.9262917
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                -1.0916756   -1.3625477   -0.8208034
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                -1.1759813   -1.3864680   -0.9654946
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                -1.0860991   -1.2617658   -0.9104325
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                -1.0984763   -1.3101343   -0.8868182
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.3766155   -0.4610606   -0.2921704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.2660782   -0.3621942   -0.1699623
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.4090472   -0.4990085   -0.3190858
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.3651761   -0.4578484   -0.2725038
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.4408434   -0.5437324   -0.3379543
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.6388623   -0.7309163   -0.5468084
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.6947996   -0.7858466   -0.6037527
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.6217971   -0.7081507   -0.5354435
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.5030222   -0.5818333   -0.4242110
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.6401937   -0.7315812   -0.5488062
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.6370693   -0.7240004   -0.5501382
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.5464037   -0.6309784   -0.4618291
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5921448   -0.6500856   -0.5342041
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.6425489   -0.7016736   -0.5834241
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7535071   -0.8099330   -0.6970811
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.7195313   -0.7781633   -0.6608992
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.7111735   -0.7857990   -0.6365479
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.7572384   -0.8312053   -0.6832716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.6950935   -0.7645956   -0.6255914
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.7840417   -0.8466029   -0.7214804
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.8426198   -0.9039869   -0.7812528
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.8036227   -0.8586464   -0.7485989
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.7560096   -0.8081422   -0.7038769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6227166   -0.6753596   -0.5700737
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2760784   -0.6114794    0.0593225
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.2542500   -0.6175882    0.1090882
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.3044000   -0.6888933    0.0800933
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.2563636   -0.7989919    0.2862646
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                 0.0058333   -0.4929885    0.5046552
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                 0.1562500   -0.6425159    0.9550159
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.3187500   -0.8688328    0.2313328
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                 0.0298485   -0.2100509    0.2697479
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.2156818   -0.6052952    0.1739316
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.2245455   -0.7420730    0.2929821
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                 0.1784375   -0.1783789    0.5352539
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                 0.0197436   -0.3389997    0.3784869
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.2707692    0.5913474    1.9501911
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.4759028   -0.0591393    1.0109448
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 1.1783333    0.6682082    1.6884584
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 1.1008333    0.2918685    1.9097982
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 1.2573684    0.7889844    1.7257525
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.8845000    0.2532301    1.5157699
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.3002941    0.7901292    1.8104591
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                 1.0410417    0.5877698    1.4943135
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.7891071    0.3768590    1.2013553
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 1.2293651    0.6915956    1.7671345
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.9931579    0.3969384    1.5893774
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.3322619   -0.2883826    0.9529064
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.6341667   -1.0715158   -0.1968175
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6405833   -1.0517947   -0.2293719
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.8229545   -1.2588538   -0.3870553
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.6224444   -0.9455986   -0.2992903
6 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -0.7825000   -1.3355031   -0.2294969
6 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -0.7388889   -1.2809508   -0.1968269
6 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -0.7087681   -1.1637717   -0.2537645
6 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -0.4200833   -0.8897420    0.0495753
6 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -0.6173016   -0.8830469   -0.3515563
6 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -0.4876923   -0.8652674   -0.1101172
6 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -1.1416667   -1.4978818   -0.7854515
6 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -0.7942500   -1.2259069   -0.3625931
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1418667   -0.2990051    0.5827384
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0100000   -0.3344061    0.3144061
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.4928947   -0.0477945    1.0335840
6 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.1018421   -0.5456617    0.3419775
6 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                 0.2435000   -0.2146178    0.7016178
6 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.2747222   -0.7206054    0.1711610
6 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                 0.1409524   -0.4429413    0.7248461
6 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                 0.0010526   -0.4271065    0.4292118
6 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                 0.1353922   -0.2127703    0.4835546
6 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                 0.3789394    0.0214672    0.7364116
6 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                 0.0347826   -0.2870639    0.3566291
6 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.0660417   -0.4958791    0.6279625
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 1.0834685    0.7448916    1.4220453
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.1079545    0.6761948    1.5397143
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.5169048    1.0343098    1.9994997
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                 0.8502500    0.4340982    1.2664018
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                 0.8556250    0.3541174    1.3571326
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                 0.9536842    0.6484057    1.2589628
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                 0.9835714    0.4955563    1.4715865
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                 1.2364706    0.7616963    1.7112449
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                 0.9975000    0.5883250    1.4066750
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                 1.0639474    0.6195676    1.5083271
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                 1.1727778    0.8381699    1.5073857
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                 0.7408333    0.4631475    1.0185191
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.5561429    0.0976981    1.0145876
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 1.1846795    0.8130729    1.5562861
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.5438889    0.1066826    0.9810952
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.7383333    0.1704365    1.3062302
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.5095833   -0.1820976    1.2012642
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.2488235   -0.2313996    0.7290466
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.6369565    0.1441611    1.1297520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.6377083    0.0847901    1.1906266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.4662500   -0.0023331    0.9348331
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.0475000   -0.4763613    0.5713613
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.4747917   -0.1830291    1.1326125
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.4803810    0.0958072    0.8649547
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3436232   -0.1199629    0.8072092
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.6524074    0.3499224    0.9548924
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.6206818    0.2633093    0.9780543
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.5900000   -0.1953700    1.3753700
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.4453846   -0.1457741    1.0365433
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.2023684   -0.3022114    0.7069482
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.7390000    0.3560836    1.1219164
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                 1.1022222    0.5367134    1.6677310
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.5797619    0.0767264    1.0827974
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.8052778    0.5332481    1.0773075
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.2224138   -0.1948582    0.6396858
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2922024   -0.0627928    0.6471975
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8398765   -1.3475913   -0.3321618
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.6947222   -1.3980522    0.0086077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.6451333   -1.1421626   -0.1481041
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.4321264   -1.0200906    0.1558378
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.4242636   -0.7952591   -0.0532680
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.3484762   -0.8006922    0.1037399
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                 0.0812121   -0.5262968    0.6887210
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                 0.0279675   -0.4401470    0.4960820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.4318056   -0.8971936    0.0335825
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.7357895   -1.2060404   -0.2655386
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.7031250   -1.1473021   -0.2589479
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -1.3533333   -1.8273651   -0.8793016
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.4533333   -0.9105808    0.0039142
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.4890741   -1.0683529    0.0902047
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.5170115   -0.9691380   -0.0648850
6 months    ki1000108-IRC              INDIA                          4                    NA                -0.2865909   -0.8032896    0.2301078
6 months    ki1000108-IRC              INDIA                          5                    NA                 0.0457143   -0.6569615    0.7483901
6 months    ki1000108-IRC              INDIA                          6                    NA                -0.7083784   -1.1508137   -0.2659430
6 months    ki1000108-IRC              INDIA                          7                    NA                -0.7106019   -1.2030990   -0.2181047
6 months    ki1000108-IRC              INDIA                          8                    NA                -0.7318519   -1.1240197   -0.3396840
6 months    ki1000108-IRC              INDIA                          9                    NA                -0.5356000   -1.0022676   -0.0689324
6 months    ki1000108-IRC              INDIA                          10                   NA                -0.7843243   -1.1339248   -0.4347238
6 months    ki1000108-IRC              INDIA                          11                   NA                -0.5932114   -0.9694220   -0.2170008
6 months    ki1000108-IRC              INDIA                          12                   NA                -0.8277564   -1.2656631   -0.3898497
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.1236471   -1.3054830   -0.9418111
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.7672840   -0.9862226   -0.5483453
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.9026250   -1.2763437   -0.5289063
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.7668000   -1.0005767   -0.5330233
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.6453947   -0.9607585   -0.3300310
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.3485294   -0.6415226   -0.0555363
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.2556522   -0.5091646   -0.0021397
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.3275658   -0.5521962   -0.1029354
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.4808788   -0.6154394   -0.3463181
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.6733108   -0.8627195   -0.4839022
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.1905556   -1.3995801   -0.9815310
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.8362791   -1.0893885   -0.5831697
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.8136667   -1.0903266   -0.5370067
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.3758163   -0.5915615   -0.1600712
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.5955333   -0.8960967   -0.2949700
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.5772917   -0.8495902   -0.3049932
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.4715417   -0.8671432   -0.0759401
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0596795   -0.3876691    0.2683101
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.1464444   -0.4366765    0.1437876
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.3821491   -0.6827615   -0.0815367
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.2963889   -0.6934134    0.1006356
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.3647436   -0.6695883   -0.0598989
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.4859014   -0.7690428   -0.2027599
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.5402333   -0.8405801   -0.2398865
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1408961   -0.3174109    0.0356186
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1146229   -0.2995775    0.0703318
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0010265   -0.2148897    0.2128367
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.1706643   -0.0055269    0.3468554
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.3554271    0.1683440    0.5425102
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.3759266    0.1943428    0.5575104
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.1229425   -0.0606549    0.3065399
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                 0.2426533    0.0576280    0.4276785
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0495286   -0.1138480    0.2129052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.0476923   -0.1200519    0.2154365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.1106061   -0.0694709    0.2906830
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1292869   -0.2956511    0.0370773
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0602778   -0.2966832    0.4172388
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0121053   -0.4310055    0.4067950
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0919841   -0.3778568    0.1938885
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.6105556   -0.9914133   -0.2296978
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                -0.2062903   -0.5405370    0.1279563
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                -0.1300427   -0.4250320    0.1649465
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                 0.1912500   -0.2717406    0.6542406
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                -0.0201754   -0.5281239    0.4877730
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                 0.1964706   -0.1213543    0.5142954
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                 0.1118966   -0.2754874    0.4992805
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                -0.1973214   -0.5154921    0.1208493
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                -0.4698333   -0.7058167   -0.2338499
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0275000   -0.4456299    0.3906299
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -0.0667816   -0.3217043    0.1881411
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -0.0623099   -0.2625715    0.1379516
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                 0.0033467   -0.1932049    0.1998982
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.2071818   -0.4065807   -0.0077830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                 0.0061475   -0.3166789    0.3289740
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -0.2462500   -0.5674888    0.0749888
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.2028947   -0.5732063    0.1674168
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -0.0501020   -0.2902263    0.1900223
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                 0.2414706   -0.2932851    0.7762263
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -0.1045745   -0.3797906    0.1706417
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                 0.2408861   -0.0019218    0.4836939
6 months    ki1114097-CMIN             PERU                           1                    NA                 1.0280488    0.7116943    1.3444033
6 months    ki1114097-CMIN             PERU                           2                    NA                 0.6525595    0.2834184    1.0217007
6 months    ki1114097-CMIN             PERU                           3                    NA                 0.5658454    0.2592165    0.8724743
6 months    ki1114097-CMIN             PERU                           4                    NA                 0.7123913    0.4162566    1.0085260
6 months    ki1114097-CMIN             PERU                           5                    NA                 0.5315238    0.2609758    0.8020718
6 months    ki1114097-CMIN             PERU                           6                    NA                 0.5121875    0.1772623    0.8471127
6 months    ki1114097-CMIN             PERU                           7                    NA                 0.5453101    0.2390290    0.8515912
6 months    ki1114097-CMIN             PERU                           8                    NA                 0.7962346    0.5237695    1.0686996
6 months    ki1114097-CMIN             PERU                           9                    NA                 0.5781349    0.2744950    0.8817748
6 months    ki1114097-CMIN             PERU                           10                   NA                 0.5068018    0.1837470    0.8298566
6 months    ki1114097-CMIN             PERU                           11                   NA                 0.8248462    0.6123662    1.0373261
6 months    ki1114097-CMIN             PERU                           12                   NA                 0.8495238    0.5182433    1.1808043
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9401667    0.3770871    1.5032462
6 months    ki1114097-CONTENT          PERU                           2                    NA                 0.9950385    0.5372464    1.4528305
6 months    ki1114097-CONTENT          PERU                           3                    NA                 0.9346975    0.5376223    1.3317727
6 months    ki1114097-CONTENT          PERU                           4                    NA                 1.1685556    0.7707872    1.5663239
6 months    ki1114097-CONTENT          PERU                           5                    NA                 1.3206733    1.0345499    1.6067968
6 months    ki1114097-CONTENT          PERU                           6                    NA                 1.0673214    0.5022385    1.6324043
6 months    ki1114097-CONTENT          PERU                           7                    NA                 1.0421875    0.5879449    1.4964301
6 months    ki1114097-CONTENT          PERU                           8                    NA                 1.2780641    0.9984885    1.5576397
6 months    ki1114097-CONTENT          PERU                           9                    NA                 1.0666842    0.7855988    1.3477696
6 months    ki1114097-CONTENT          PERU                           10                   NA                 0.6202609    0.2690281    0.9714937
6 months    ki1114097-CONTENT          PERU                           11                   NA                 1.1075000    0.7740197    1.4409803
6 months    ki1114097-CONTENT          PERU                           12                   NA                 1.3875714    0.7402853    2.0348576
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5584242    0.4524437    0.6644046
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                 0.5830126    0.4542240    0.7118012
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.6207944    0.5287318    0.7128571
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.5637523    0.4747382    0.6527665
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.5975000    0.4993138    0.6956862
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.6203884    0.5416850    0.6990918
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.5886859    0.5090946    0.6682773
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.5676687    0.4840926    0.6512448
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.5692066    0.4920998    0.6463134
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.5536818    0.4672044    0.6401593
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.5464475    0.4468824    0.6460125
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                 0.5987317    0.5109214    0.6865419
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3721988    0.2859111    0.4584864
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.2689005    0.1720264    0.3657746
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                 0.3953210    0.2997453    0.4908967
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                 0.2979649    0.2119319    0.3839980
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                 0.3061139    0.2084016    0.4038262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                 0.2375920    0.1409176    0.3342665
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                 0.2550157    0.1599951    0.3500364
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                 0.3031962    0.2137963    0.3925960
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                 0.3157929    0.2300352    0.4015506
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                 0.2845159    0.1936149    0.3754168
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                 0.2534138    0.1679674    0.3388602
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                 0.3353875    0.2541020    0.4166729
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.3567273    0.1207907    0.5926638
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                 0.3852632    0.1941626    0.5763637
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                 0.3407143    0.1341164    0.5473122
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                 0.5705455    0.3646061    0.7764849
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                 0.2511712    0.0611093    0.4412330
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                 0.4415385    0.2143831    0.6686939
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                 0.4837500    0.2407232    0.7267768
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                 0.7636585    0.4935443    1.0337727
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                 0.3613793    0.0295400    0.6932186
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                 0.8611429    0.5306784    1.1916073
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                 0.6097959    0.3299816    0.8896102
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                 0.3852941   -0.0314954    0.8020837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6560956   -0.7161549   -0.5960362
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5837774   -0.6485706   -0.5189842
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.5610837   -0.6275129   -0.4946546
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.5947647   -0.6528595   -0.5366699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.5205488   -0.5845643   -0.4565333
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.4955277   -0.5673003   -0.4237551
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.5404120   -0.6070987   -0.4737252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.5512304   -0.6096466   -0.4928142
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.5944722   -0.6529138   -0.5360305
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.6477553   -0.7007328   -0.5947779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.6564315   -0.7095808   -0.6032823
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6510060   -0.7077595   -0.5942524
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4721698   -0.6338539   -0.3104857
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.2446970   -0.3858966   -0.1034974
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.4355349   -0.5605683   -0.3105014
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -0.4851179   -0.5661330   -0.4041029
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -0.3835410   -0.5001500   -0.2669319
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -0.3705184   -0.4995730   -0.2414638
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -0.4426316   -0.5244912   -0.3607719
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -0.2727255   -0.3680337   -0.1774172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -0.3626102   -0.4826483   -0.2425722
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -0.3110784   -0.4549638   -0.1671931
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                -0.3544268   -0.5236118   -0.1852417
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                -0.2345455   -0.3764773   -0.0926136
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.5023333   -1.0380678    0.0334011
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9300000   -1.3010164   -0.5589836
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9802500   -1.3373490   -0.6231510
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.8347500   -1.2694423   -0.4000577
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.0607895   -1.4805306   -0.6410483
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.6320000   -1.3578683    0.0938683
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.8707500   -1.2920292   -0.4494708
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.8771429   -1.1613737   -0.5929121
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.0810526   -1.4718365   -0.6902687
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.6257500   -1.0438963   -0.2076037
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.8805000   -1.4190583   -0.3419417
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.5138462   -0.8321766   -0.1955157
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.4226923   -0.1549616    1.0003462
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0794118   -0.5482275    0.7070510
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.7350000    0.0321914    1.4378086
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.5550000   -0.5665124    1.6765124
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0878125   -0.4943041    0.6699291
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.0080000   -1.1167596    1.1327596
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.2318182    0.5834092    1.8802271
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.8785714    0.0966345    1.6605083
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.1327083   -0.3251280    0.5905447
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.7836667    0.0088619    1.5584714
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.3353125   -0.0629156    0.7335406
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.3292308   -0.5703569    1.2288185
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9458333   -1.3293388   -0.5623279
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6802500   -1.1129407   -0.2475593
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.8807895   -1.1542174   -0.6073616
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.6453571   -1.1566571   -0.1340572
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -1.4793750   -1.7888706   -1.1698794
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.2252941   -1.8687722   -0.5818160
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -0.9050000   -1.2443571   -0.5656429
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -0.8755263   -1.2785951   -0.4724575
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -1.0707895   -1.3821042   -0.7594747
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -0.8225000   -1.1488189   -0.4961811
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -1.3860417   -1.6489924   -1.1230910
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -0.7330000   -1.0638740   -0.4021260
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1313043   -0.4751136    0.2125049
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.2946667   -0.6484103    0.0590770
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0642105   -0.3992122    0.2707912
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.5576316   -0.9613148   -0.1539483
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.3621053   -0.7042360   -0.0199746
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.8708333   -1.2490642   -0.4926025
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.2967500   -0.6897135    0.0962135
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.6950000   -1.1646785   -0.2253215
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.4687500   -0.7798609   -0.1576391
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.2365909   -0.5195748    0.0463930
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.4131818   -0.8287588    0.0023952
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.1928125   -0.6638534    0.2782284
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0601724   -0.2768928    0.3972376
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.2112500   -0.1207229    0.5432229
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.3835714   -0.1075933    0.8747362
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.1895833   -0.2609621    0.6401288
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                 0.1608333   -0.1799337    0.5016004
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                 0.0779167   -0.6787586    0.8345920
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -0.1275000   -0.4967270    0.2417270
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                 0.0161538   -0.5423996    0.5747073
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                 0.0195000   -0.2782042    0.3172042
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                 0.1592857   -0.2335691    0.5521405
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                 0.1976190   -0.1700999    0.5653380
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                 0.1042857   -0.2849778    0.4935492
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0880645   -0.2832686    0.4593976
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.6014000    0.2620088    0.9407912
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.5617647    0.2468477    0.8766817
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.4468182   -0.2460834    1.1397198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.3704545   -0.0319967    0.7729057
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.6076667    0.1890714    1.0262619
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.7100000    0.3072458    1.1127542
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.3425000   -0.3188525    1.0038525
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.5307500    0.1686599    0.8928401
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.2172917   -0.1869360    0.6215193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.5115909    0.1484230    0.8747588
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.3219355    0.0047960    0.6390750
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3845000   -0.8702162    0.1012162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.2991667   -0.7811455    0.1828121
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0083333   -0.3746131    0.3579464
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0162500   -0.5922221    0.5597221
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.0889286   -0.2053662    0.3832233
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.0400000   -0.1450886    0.2250886
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.3236000   -0.0527918    0.6999918
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0012500   -0.6837019    0.6812019
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0608824   -0.3611688    0.4829335
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.1966667   -0.1319452    0.5252786
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.1282609   -0.2370029    0.4935246
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.3097826   -0.1159175    0.7354827
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8711728   -1.1705425   -0.5718031
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.5726389   -0.9600666   -0.1852111
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.2402000   -0.5939974    0.1135974
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.3314943   -0.6400508   -0.0229377
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.2968889   -0.5710234   -0.0227544
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.6582870   -1.0590903   -0.2574838
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -0.3891919   -0.7634352   -0.0149486
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.5965854   -0.9632895   -0.2298812
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.5961806   -0.9566437   -0.2357174
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.8609649   -1.2251889   -0.4967409
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.6388750   -0.8820346   -0.3957154
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -0.8204598   -1.1608873   -0.4800323
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.5133796   -0.8306050   -0.1961543
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.4743827   -0.8340587   -0.1147067
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.5517816   -0.8241280   -0.2794352
24 months   ki1000108-IRC              INDIA                          4                    NA                -0.8289394   -1.1055740   -0.5523048
24 months   ki1000108-IRC              INDIA                          5                    NA                -1.0123016   -1.4208322   -0.6037710
24 months   ki1000108-IRC              INDIA                          6                    NA                -0.8558108   -1.1611513   -0.5504704
24 months   ki1000108-IRC              INDIA                          7                    NA                -0.7007407   -0.9809529   -0.4205286
24 months   ki1000108-IRC              INDIA                          8                    NA                -0.8857778   -1.1878376   -0.5837179
24 months   ki1000108-IRC              INDIA                          9                    NA                -0.8592593   -1.2538492   -0.4646694
24 months   ki1000108-IRC              INDIA                          10                   NA                -0.7910648   -1.1322768   -0.4498529
24 months   ki1000108-IRC              INDIA                          11                   NA                -0.7642683   -1.0455727   -0.4829639
24 months   ki1000108-IRC              INDIA                          12                   NA                -0.7401282   -0.9703039   -0.5099525
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.0270238   -1.2911759   -0.7628718
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.8833333   -1.1700182   -0.5966485
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.9197561   -1.2806969   -0.5588153
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -1.3109069   -1.5974588   -1.0243549
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.9525980   -1.2528609   -0.6523352
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.6741111   -1.0013135   -0.3469087
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.7609459   -1.1333544   -0.3885375
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.9939444   -1.3685844   -0.6193045
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.1255263   -1.5667711   -0.6842815
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.7750000   -1.1682767   -0.3817233
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.9113125   -1.2367915   -0.5858335
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.7448333   -1.0294726   -0.4601941
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1409091   -0.2119226    0.4937408
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -0.1807018   -0.4422287    0.0808252
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                 0.0208088   -0.2267697    0.2683874
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -0.1798148   -0.3522423   -0.0073873
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.0897143   -0.3308025    0.1513740
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                 0.0041176   -0.3490937    0.3573289
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                 0.0179310   -0.2755523    0.3114144
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.1798214   -0.5172166    0.1575737
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -0.3637644   -0.6360925   -0.0914363
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -0.0153333   -0.7221065    0.6914399
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -0.4585000   -0.9860208    0.0690208
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -0.1624419   -0.5196312    0.1947475
24 months   ki1114097-CMIN             PERU                           1                    NA                 0.7143750    0.4353543    0.9933957
24 months   ki1114097-CMIN             PERU                           2                    NA                 0.4395025    0.3033153    0.5756897
24 months   ki1114097-CMIN             PERU                           3                    NA                 0.6078252    0.4174541    0.7981963
24 months   ki1114097-CMIN             PERU                           4                    NA                 0.8038462    0.4684575    1.1392349
24 months   ki1114097-CMIN             PERU                           5                    NA                 0.2695161   -0.0487985    0.5878307
24 months   ki1114097-CMIN             PERU                           6                    NA                 0.7265385    0.3521853    1.1008916
24 months   ki1114097-CMIN             PERU                           7                    NA                 1.0527778    0.6124264    1.4931291
24 months   ki1114097-CMIN             PERU                           8                    NA                 0.8826344    0.6053464    1.1599224
24 months   ki1114097-CMIN             PERU                           9                    NA                 0.9064286    0.6104278    1.2024294
24 months   ki1114097-CMIN             PERU                           10                   NA                 0.7736667    0.3167736    1.2305597
24 months   ki1114097-CMIN             PERU                           11                   NA                 0.9713095    0.7795511    1.1630679
24 months   ki1114097-CMIN             PERU                           12                   NA                 0.8896667    0.4328073    1.3465260
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6348232    0.3980118    0.8716347
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                 0.7462143    0.4856773    1.0067513
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                 0.7030469    0.4633403    0.9427534
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                 0.7106677    0.4912939    0.9300415
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                 0.7443522    0.6392465    0.8494578
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                 0.5827547   -0.1694023    1.3349117
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                 0.6221474    0.4144253    0.8298696
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                 0.6974229    0.4920512    0.9027947
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                 0.6724933    0.4672000    0.8777866
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                 0.7171667    0.5349838    0.8993496
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                 0.7242876    0.5954466    0.8531285
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                 0.6767679    0.5249717    0.8285641
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0010000   -0.2789450    0.2769450
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                 0.0747674   -0.1205129    0.2700478
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -0.0738806   -0.3115733    0.1638121
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                 0.1507432   -0.0562186    0.3577051
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -0.0075806   -0.3036238    0.2884625
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -0.3107812   -0.5374185   -0.0841440
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -0.2264103   -0.5243262    0.0715057
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -0.0524074   -0.3265998    0.2217850
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                -0.8980000   -1.2203342   -0.5756658
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                 0.1848000   -0.1772648    0.5468648
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                 0.0942857   -0.2647488    0.4533202
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                 0.0462500   -0.3898222    0.4823222
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0587909   -1.1335235   -0.9840583
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.0728361   -1.1543635   -0.9913086
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2033058   -1.2823946   -1.1242169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.3276119   -1.4168273   -1.2383966
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.3566667   -1.4576193   -1.2557140
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.4496092   -1.5283994   -1.3708191
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.4892857   -1.5766500   -1.4019214
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.5139815   -1.5918970   -1.4360659
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.4232561   -1.5024105   -1.3441018
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.4018089   -1.4678837   -1.3357341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.2709411   -1.3373308   -1.2045513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.1542607   -1.2157020   -1.0928193
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.1950000   -1.3468342   -1.0431658
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.0480062   -1.1536509   -0.9423616
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.0934500   -1.2162338   -0.9706662
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -1.1824874   -1.2549946   -1.1099802
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -1.3263327   -1.4169724   -1.2356931
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -1.3453191   -1.4500556   -1.2405827
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -1.3025128   -1.3778863   -1.2271393
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -1.1578602   -1.2478064   -1.0679139
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -1.1787387   -1.2776872   -1.0797903
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -1.1738768   -1.2792162   -1.0685374
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                -1.4013103   -1.6126651   -1.1899556
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                -1.3452113   -1.4955796   -1.1948429


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
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5149267   -0.5408101   -0.4890433
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
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           NA                   NA                 0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3048776    0.2787716    0.3309835
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           NA                   NA                 0.6477778    0.5676685    0.7278870
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.3462406   -0.9711445    0.2786633
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.1713263   -0.7885679    0.4459153
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.5267168   -1.1439590    0.0905254
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0545263   -0.7185054    0.6094528
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.1192763   -0.7369067    0.4983541
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.5071930   -1.0581671    0.0437811
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.0181100   -0.6311907    0.6674108
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.6075263   -1.2355027    0.0204501
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.3492220   -0.9572615    0.2588175
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0538596   -0.6948142    0.5870949
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.1078340   -0.7017470    0.4860790
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.5040351   -0.6796486    1.6877188
Birth       ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.5913725   -0.4802502    1.6629953
Birth       ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.8104167   -0.4238040    2.0446373
Birth       ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.6972917   -0.3810103    1.7755937
Birth       ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.0047619   -1.3437151    1.3341913
Birth       ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.9237255   -0.2126354    2.0600863
Birth       ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.6584314   -0.4535817    1.7704444
Birth       ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.4996296   -0.5398459    1.5391052
Birth       ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.6838889   -0.4479998    1.8157776
Birth       ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.3993333   -0.7879533    1.5866200
Birth       ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.3712821   -0.7747846    1.5173487
Birth       ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          2                    1                  0.5050000   -0.0785490    1.0885490
Birth       ki0047075b-MAL-ED          INDIA                          3                    1                  0.1082500   -0.4702421    0.6867421
Birth       ki0047075b-MAL-ED          INDIA                          4                    1                  0.5687500   -0.0972790    1.2347790
Birth       ki0047075b-MAL-ED          INDIA                          5                    1                  0.4844643   -0.4598152    1.4287437
Birth       ki0047075b-MAL-ED          INDIA                          6                    1                 -0.2053676   -0.7363270    0.3255917
Birth       ki0047075b-MAL-ED          INDIA                          7                    1                  0.3087500   -0.3021107    0.9196107
Birth       ki0047075b-MAL-ED          INDIA                          8                    1                  1.1134559    0.4813612    1.7455505
Birth       ki0047075b-MAL-ED          INDIA                          9                    1                  0.4829605   -0.1640887    1.1300098
Birth       ki0047075b-MAL-ED          INDIA                          10                   1                  0.4839674   -0.1261172    1.0940520
Birth       ki0047075b-MAL-ED          INDIA                          11                   1                  0.3367500   -0.1636946    0.8371946
Birth       ki0047075b-MAL-ED          INDIA                          12                   1                  0.9216071    0.2626258    1.5805884
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0043269   -0.6842043    0.6755505
Birth       ki0047075b-MAL-ED          NEPAL                          3                    1                  0.2070833   -0.5507708    0.9649375
Birth       ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0826786   -0.8599224    0.6945652
Birth       ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.2290278   -0.9277553    0.4696997
Birth       ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0179808   -0.6732145    0.7091760
Birth       ki0047075b-MAL-ED          NEPAL                          7                    1                  0.1428676   -0.5868716    0.8726069
Birth       ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0008929   -0.9000149    0.9018006
Birth       ki0047075b-MAL-ED          NEPAL                          9                    1                  0.1087500   -0.7215022    0.9390022
Birth       ki0047075b-MAL-ED          NEPAL                          10                   1                  0.2881250   -0.3612766    0.9375266
Birth       ki0047075b-MAL-ED          NEPAL                          11                   1                  0.1825000   -0.4516893    0.8166893
Birth       ki0047075b-MAL-ED          NEPAL                          12                   1                  0.5827500   -0.2286786    1.3941786
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                  0.1981299   -0.2285729    0.6248327
Birth       ki0047075b-MAL-ED          PERU                           3                    1                  0.2663117   -0.1770020    0.7096254
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.3298571   -0.0877197    0.7474340
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.2379405   -0.2281800    0.7040610
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.5191905    0.1093005    0.9290805
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.1917267   -0.2715710    0.6550244
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.2766466   -0.2410939    0.7943871
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.2144935   -0.2902083    0.7191953
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.3052050   -0.0904022    0.7008121
Birth       ki0047075b-MAL-ED          PERU                           11                   1                  0.0063410   -0.4527516    0.4654336
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.2178571   -0.1832620    0.6189763
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0442834   -0.6342388    0.7228057
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.1090414   -0.8373346    0.6192518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.2211681   -1.0590171    0.6166809
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.1311681   -0.7507750    0.4884388
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.1548148   -0.6023986    0.9120283
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0653704   -0.5564278    0.6871685
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.2073704   -0.3928609    0.8076017
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.2656085   -0.3251242    0.8563411
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.1625132   -0.4544024    0.7794288
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0022222   -0.7253165    0.7208720
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1214245   -0.7009348    0.4580858
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2                    1                 -0.2429091   -1.1096674    0.6238492
Birth       ki1000108-IRC              INDIA                          3                    1                 -0.6408462   -1.6335356    0.3518433
Birth       ki1000108-IRC              INDIA                          4                    1                 -1.2838421   -2.1805060   -0.3871782
Birth       ki1000108-IRC              INDIA                          5                    1                 -1.5356667   -2.5753134   -0.4960199
Birth       ki1000108-IRC              INDIA                          6                    1                 -1.1354000   -2.1011644   -0.1696356
Birth       ki1000108-IRC              INDIA                          7                    1                 -0.9370000   -1.7900613   -0.0839387
Birth       ki1000108-IRC              INDIA                          8                    1                 -1.0772703   -1.9318320   -0.2227086
Birth       ki1000108-IRC              INDIA                          9                    1                 -0.7870000   -1.8234758    0.2494758
Birth       ki1000108-IRC              INDIA                          10                   1                 -0.8391875   -1.6972041    0.0188291
Birth       ki1000108-IRC              INDIA                          11                   1                 -0.5528974   -1.3897257    0.2839309
Birth       ki1000108-IRC              INDIA                          12                   1                 -0.7600233   -1.5600231    0.0399766
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2484524   -0.2518328    0.7487376
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.9028571    0.3150754    1.4906389
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.1711607   -0.6709314    1.0132528
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.2935714   -1.1582984    0.5711555
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.1180220   -1.1441890    0.9081451
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.4142857   -1.4475347    0.6189633
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.3342857   -0.5555144    1.2240858
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.4932331   -0.3336980    1.3201642
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.1970635   -0.7287777    1.1229047
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.9536975    0.3176536    1.5897413
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.9673626    0.2371658    1.6975595
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                  0.1651944    0.0375979    0.2927909
Birth       ki1119695-PROBIT           BELARUS                        3                    1                  0.0430242   -0.1391253    0.2251738
Birth       ki1119695-PROBIT           BELARUS                        4                    1                  0.0395452   -0.1737953    0.2528856
Birth       ki1119695-PROBIT           BELARUS                        5                    1                 -0.1038503   -0.3294710    0.1217704
Birth       ki1119695-PROBIT           BELARUS                        6                    1                  0.0369227   -0.2498090    0.3236543
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0351376   -0.3214784    0.2512033
Birth       ki1119695-PROBIT           BELARUS                        8                    1                  0.0208338   -0.2780706    0.3197381
Birth       ki1119695-PROBIT           BELARUS                        9                    1                  0.0934298   -0.2193500    0.4062096
Birth       ki1119695-PROBIT           BELARUS                        10                   1                  0.0091241   -0.2401795    0.2584276
Birth       ki1119695-PROBIT           BELARUS                        11                   1                  0.0990062   -0.1255860    0.3235985
Birth       ki1119695-PROBIT           BELARUS                        12                   1                  0.0866291   -0.1445377    0.3177959
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.1105373   -0.0174051    0.2384796
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0324317   -0.1558173    0.0909540
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0114394   -0.1139365    0.1368154
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0642279   -0.1973336    0.0688779
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.2622468   -0.3871664   -0.1373272
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3181841   -0.4423635   -0.1940047
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.2451816   -0.3659620   -0.1244011
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.1264066   -0.2419150   -0.0108983
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.2635782   -0.3880075   -0.1391489
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.2604538   -0.3816478   -0.1392597
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.1697882   -0.2893033   -0.0502732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0504040   -0.1302871    0.0294790
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1613623   -0.2428279   -0.0798966
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.1273864   -0.2079373   -0.0468356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.1190286   -0.2160587   -0.0219986
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.1650936   -0.2556112   -0.0745760
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.1029487   -0.1926544   -0.0132429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.1918968   -0.2773046   -0.1064891
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.2504750   -0.3327054   -0.1682446
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.2114778   -0.2887768   -0.1341789
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1638648   -0.2386772   -0.0890523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0305718   -0.1055559    0.0444123
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0218284   -0.4726495    0.5163064
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0283216   -0.5385460    0.4819028
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0197148   -0.6182031    0.6576327
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.2819118   -0.3191848    0.8830083
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.4323284   -0.4339976    1.2986545
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0426716   -0.6869424    0.6015992
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.3059269   -0.1064389    0.7182927
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.0603966   -0.4536972    0.5744904
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0515330   -0.5651749    0.6682408
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.4545159   -0.0351899    0.9442218
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.2958220   -0.1952895    0.7869336
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.7948665   -1.6596693    0.0699364
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0924359   -0.9420485    0.7571767
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.1699359   -1.2263630    0.8864912
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.0134008   -0.8386266    0.8118250
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.3862692   -1.3136935    0.5411550
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.0295249   -0.8201117    0.8791615
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.2297276   -1.0464707    0.5870156
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.4816621   -1.2763712    0.3130470
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0414042   -0.9078971    0.8250888
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.2776113   -1.1815426    0.6263199
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.9385073   -1.8587321   -0.0182826
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0064167   -0.6067242    0.5938908
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.1887879   -0.8062686    0.4286928
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.0117222   -0.5320635    0.5555079
6 months    ki0047075b-MAL-ED          INDIA                          5                    1                 -0.1483333   -0.8533771    0.5567104
6 months    ki0047075b-MAL-ED          INDIA                          6                    1                 -0.1047222   -0.8012173    0.5917729
6 months    ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0746014   -0.7057136    0.5565107
6 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.2140833   -0.4276748    0.8558415
6 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.0168651   -0.4948915    0.5286217
6 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.1464744   -0.4313121    0.7242608
6 months    ki0047075b-MAL-ED          INDIA                          11                   1                 -0.5075000   -1.0715598    0.0565598
6 months    ki0047075b-MAL-ED          INDIA                          12                   1                 -0.1600833   -0.7745766    0.4544099
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1518667   -0.6992306    0.3954972
6 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.3510281   -0.3466200    1.0486761
6 months    ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.2437088   -0.8692835    0.3818659
6 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.1016333   -0.5341652    0.7374319
6 months    ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.4165889   -1.0436293    0.2104516
6 months    ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.0009143   -0.7325561    0.7307275
6 months    ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.1408140   -0.7553774    0.4737494
6 months    ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.0064745   -0.5682440    0.5552950
6 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.2370727   -0.3305136    0.8046591
6 months    ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.1070841   -0.6529348    0.4387667
6 months    ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0758250   -0.7900539    0.6384039
6 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0244861   -0.5241948    0.5731670
6 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.4334363   -0.1560823    1.0229549
6 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.2332185   -0.7697039    0.3032670
6 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.2278435   -0.8329420    0.3772550
6 months    ki0047075b-MAL-ED          PERU                           6                    1                 -0.1297843   -0.5856672    0.3260987
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0998970   -0.6938609    0.4940668
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.1530021   -0.4301316    0.7361358
6 months    ki0047075b-MAL-ED          PERU                           9                    1                 -0.0859685   -0.6170602    0.4451233
6 months    ki0047075b-MAL-ED          PERU                           10                   1                 -0.0195211   -0.5781871    0.5391449
6 months    ki0047075b-MAL-ED          PERU                           11                   1                  0.0893093   -0.3867125    0.5653311
6 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.3426351   -0.7805206    0.0952504
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.6285366    0.0383984    1.2186748
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0122540   -0.6457529    0.6212450
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1821905   -0.5476577    0.9120387
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0465595   -0.8763752    0.7832562
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.3073193   -0.9712364    0.3565977
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0808137   -0.5922532    0.7538805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0815655   -0.6366895    0.7998204
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.0898929   -0.7454397    0.5656540
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.5086429   -1.2047766    0.1874909
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0813512   -0.8831615    0.7204591
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0757619   -0.6741502    0.5226264
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.3087842   -0.2447582    0.8623266
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.2770586   -0.3082850    0.8624022
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.2463768   -0.6656089    1.1583626
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.1017614   -0.6494913    0.8530141
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.1412548   -0.8264648    0.5439553
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3953768   -0.2059027    0.9966563
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.7585990    0.0273588    1.4898392
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2361387   -0.4479350    0.9202124
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.4616546   -0.0758509    0.9991601
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1212094   -0.7449305    0.5025117
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0514208   -0.6353160    0.5324744
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.1451543   -0.7222829    1.0125915
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.1947432   -0.5157582    0.9052447
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.4077501   -0.3690872    1.1845874
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.4156130   -0.2132049    1.0444309
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.4914004   -0.1885067    1.1713074
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.9210887    0.1293556    1.7128218
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.8678440    0.1772606    1.5584274
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.4080710   -0.2806672    1.0968092
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.1040871   -0.5879463    0.7961204
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.1367515   -0.5378354    0.8113385
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.5134568   -1.2080648    0.1811513
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 -0.0357407   -0.7737375    0.7022560
6 months    ki1000108-IRC              INDIA                          3                    1                 -0.0636782   -0.7067129    0.5793566
6 months    ki1000108-IRC              INDIA                          4                    1                  0.1667424   -0.5232234    0.8567082
6 months    ki1000108-IRC              INDIA                          5                    1                  0.4990476   -0.3393011    1.3373963
6 months    ki1000108-IRC              INDIA                          6                    1                 -0.2550450   -0.8913031    0.3812130
6 months    ki1000108-IRC              INDIA                          7                    1                 -0.2572685   -0.9293018    0.4147647
6 months    ki1000108-IRC              INDIA                          8                    1                 -0.2785185   -0.8809062    0.3238691
6 months    ki1000108-IRC              INDIA                          9                    1                 -0.0822667   -0.7356072    0.5710739
6 months    ki1000108-IRC              INDIA                          10                   1                 -0.3309910   -0.9065740    0.2445920
6 months    ki1000108-IRC              INDIA                          11                   1                 -0.1398780   -0.7320011    0.4522450
6 months    ki1000108-IRC              INDIA                          12                   1                 -0.3744231   -1.0075404    0.2586943
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.3563631    0.2157096    0.4970166
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.2210221   -0.1091498    0.5511939
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.3568471    0.1691674    0.5445267
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.4782523    0.0349701    0.9215345
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.7751176    0.5170197    1.0332156
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.8679949    0.6686168    1.0673729
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.7960813    0.5885663    1.0035963
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.6427683    0.4987832    0.7867533
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.4503362    0.2764995    0.6241730
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 -0.0669085   -0.2948767    0.1610597
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.2873680    0.0241989    0.5505371
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.4378503    0.0870132    0.7886874
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.2181333   -0.1903750    0.6266417
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.2363750   -0.1518095    0.6245595
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.3421250   -0.1406185    0.8248685
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.7539872    0.3248976    1.1830768
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.6672222    0.2662542    1.0681903
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.4315175    0.0229731    0.8400620
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.5172778    0.0333675    1.0011881
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.4489231    0.0372545    0.8605916
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.3277653   -0.0681006    0.7236312
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.2734333   -0.1349157    0.6817823
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0262733   -0.2293939    0.2819404
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1398697   -0.1374297    0.4171690
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3115604    0.0621595    0.5609613
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.4963232    0.2391121    0.7535344
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.5168227    0.2635834    0.7700620
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2638387    0.0091516    0.5185257
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.3835494    0.1278312    0.6392676
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.1904248   -0.0500942    0.4309438
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.1885885   -0.0549184    0.4320953
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.2515022   -0.0006588    0.5036632
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0116092   -0.2309490    0.2541675
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0723830   -0.6227453    0.4779792
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 -0.1522619   -0.6095849    0.3050611
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 -0.6708333   -1.1928236   -0.1488431
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                 -0.2665681   -0.7555896    0.2224534
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                 -0.1903205   -0.6533970    0.2727560
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                  0.1309722   -0.4536486    0.7155930
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                 -0.0804532   -0.7012856    0.5403791
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                  0.1361928   -0.3417547    0.6141403
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                  0.0516188   -0.4751520    0.5783896
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                 -0.2575992   -0.7357767    0.2205783
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                 -0.5301111   -0.9580239   -0.1021983
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 -0.0392816   -0.5289940    0.4504308
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.0348099   -0.4984233    0.4288034
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                  0.0308467   -0.4311762    0.4928695
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 -0.1796818   -0.6429231    0.2835595
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                  0.0336475   -0.4946038    0.5618989
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.2187500   -0.7460326    0.3085326
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.1753947   -0.7339314    0.3831420
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 -0.0226020   -0.5047766    0.4595725
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                  0.2689706   -0.4098492    0.9477904
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.0770745   -0.5776507    0.4235017
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                  0.2683861   -0.2151305    0.7519026
6 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           2                    1                 -0.3754893   -0.8616429    0.1106644
6 months    ki1114097-CMIN             PERU                           3                    1                 -0.4622034   -0.9027729   -0.0216339
6 months    ki1114097-CMIN             PERU                           4                    1                 -0.3156575   -0.7489887    0.1176737
6 months    ki1114097-CMIN             PERU                           5                    1                 -0.4965250   -0.9127898   -0.0802602
6 months    ki1114097-CMIN             PERU                           6                    1                 -0.5158613   -0.9765728   -0.0551498
6 months    ki1114097-CMIN             PERU                           7                    1                 -0.4827387   -0.9230662   -0.0424112
6 months    ki1114097-CMIN             PERU                           8                    1                 -0.2318142   -0.6493275    0.1856991
6 months    ki1114097-CMIN             PERU                           9                    1                 -0.4499139   -0.8884083   -0.0114194
6 months    ki1114097-CMIN             PERU                           10                   1                 -0.5212470   -0.9734025   -0.0690915
6 months    ki1114097-CMIN             PERU                           11                   1                 -0.2032026   -0.5842904    0.1778852
6 months    ki1114097-CMIN             PERU                           12                   1                 -0.1785250   -0.6365937    0.2795438
6 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           2                    1                  0.0548718   -0.6708225    0.7805661
6 months    ki1114097-CONTENT          PERU                           3                    1                 -0.0054691   -0.6944737    0.6835354
6 months    ki1114097-CONTENT          PERU                           4                    1                  0.2283889   -0.4610154    0.9177932
6 months    ki1114097-CONTENT          PERU                           5                    1                  0.3805067   -0.2510986    1.0121119
6 months    ki1114097-CONTENT          PERU                           6                    1                  0.1271548   -0.6705778    0.9248874
6 months    ki1114097-CONTENT          PERU                           7                    1                  0.1020208   -0.6214396    0.8254812
6 months    ki1114097-CONTENT          PERU                           8                    1                  0.3378974   -0.2907687    0.9665636
6 months    ki1114097-CONTENT          PERU                           9                    1                  0.1265175   -0.5028215    0.7558566
6 months    ki1114097-CONTENT          PERU                           10                   1                 -0.3199058   -0.9835496    0.3437380
6 months    ki1114097-CONTENT          PERU                           11                   1                  0.1673333   -0.4870883    0.8217550
6 months    ki1114097-CONTENT          PERU                           12                   1                  0.4474048   -0.4105218    1.3053313
6 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                  0.0245885   -0.0613237    0.1105006
6 months    ki1119695-PROBIT           BELARUS                        3                    1                  0.0623703   -0.0403787    0.1651192
6 months    ki1119695-PROBIT           BELARUS                        4                    1                  0.0053282   -0.0873767    0.0980330
6 months    ki1119695-PROBIT           BELARUS                        5                    1                  0.0390758   -0.0709683    0.1491199
6 months    ki1119695-PROBIT           BELARUS                        6                    1                  0.0619642   -0.0479944    0.1719228
6 months    ki1119695-PROBIT           BELARUS                        7                    1                  0.0302618   -0.0899821    0.1505057
6 months    ki1119695-PROBIT           BELARUS                        8                    1                  0.0092445   -0.1019187    0.1204077
6 months    ki1119695-PROBIT           BELARUS                        9                    1                  0.0107825   -0.1148638    0.1364287
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0047423   -0.1142966    0.1048120
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0119767   -0.1345854    0.1106320
6 months    ki1119695-PROBIT           BELARUS                        12                   1                  0.0403075   -0.0564287    0.1370437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.1032982   -0.2330293    0.0264328
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0231222   -0.1056422    0.1518866
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.0742338   -0.1960830    0.0476154
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0660849   -0.1964430    0.0642733
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.1346067   -0.2641888   -0.0050247
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.1171830   -0.2455360    0.0111699
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0690026   -0.1932519    0.0552467
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0564058   -0.1780608    0.0652492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.0876829   -0.2130166    0.0376508
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1187850   -0.2402207    0.0026508
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0368113   -0.1553562    0.0817336
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0285359   -0.2750847    0.3321565
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 -0.0160130   -0.3296190    0.2975930
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                  0.2138182   -0.0993544    0.5269908
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 -0.1055561   -0.4085240    0.1974118
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                  0.0848112   -0.2427031    0.4123255
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                  0.1270227   -0.2116926    0.4657381
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                  0.4069313    0.0482842    0.7655783
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                  0.0046520   -0.4025130    0.4118171
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.5044156    0.0983703    0.9104609
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                  0.2530686   -0.1129397    0.6190770
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                  0.0285668   -0.4503690    0.5075027
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0723182   -0.0154675    0.1601039
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0950118    0.0105467    0.1794770
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0613309   -0.0193381    0.1419998
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.1355468    0.0506742    0.2204194
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1605679    0.0672816    0.2538542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.1156836    0.0246135    0.2067537
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1048652    0.0238607    0.1858696
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0616234   -0.0215227    0.1447696
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0083402   -0.0716028    0.0882833
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0003359   -0.0785963    0.0779245
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0050896   -0.0746379    0.0848171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.2274728    0.0119037    0.4430420
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0366349   -0.1679150    0.2411849
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 -0.0129481   -0.1900417    0.1641454
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1                  0.0886289   -0.1093923    0.2866500
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.1016514   -0.1013606    0.3046633
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1                  0.0295382   -0.1400529    0.1991294
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.1994443    0.0130963    0.3857924
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.1095596   -0.0901974    0.3093167
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.1610914   -0.0511820    0.3733648
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.1177431   -0.1195831    0.3550692
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.2376244    0.0250968    0.4501519
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.4276667   -1.0793296    0.2239963
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.4779167   -1.1217576    0.1659242
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.3324167   -1.0223216    0.3574882
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.5584561   -1.2390397    0.1221275
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.1296667   -1.0318286    0.7724953
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.3684167   -1.0499500    0.3131166
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.3748095   -0.9812735    0.2316545
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.5787193   -1.2418358    0.0843972
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1234167   -0.8030178    0.5561845
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.3781667   -1.1378090    0.3814756
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.0115128   -0.6346867    0.6116611
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.3432805   -1.1962841    0.5097230
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.3123077   -0.5974307    1.2220461
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1323077   -1.1292287    1.3938440
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.3348798   -1.1549674    0.4852078
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.4146923   -1.6791163    0.8497317
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.8091259   -0.0592739    1.6775256
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.4558791   -0.5162882    1.4280464
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.2899840   -1.0270716    0.4471036
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.3609744   -0.6054657    1.3274144
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.0873798   -0.7889991    0.6142395
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.0934615   -1.1625462    0.9756231
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.2655833   -0.3126014    0.8437681
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0650439   -0.4059543    0.5360420
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.3004762   -0.3386670    0.9396194
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.5335417   -1.0263539   -0.0407294
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                 -0.2794608   -1.0285539    0.4696323
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.0408333   -0.4712601    0.5529267
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.0703070   -0.4860570    0.6266710
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                 -0.1249561   -0.6189129    0.3690006
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.1233333   -0.3802145    0.6268812
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                 -0.4402083   -0.9052024    0.0247857
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.2128333   -0.2936783    0.7193450
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1633623   -0.6566567    0.3299321
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.0670938   -0.4129384    0.5471260
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.4263272   -0.9565771    0.1039227
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.2308009   -0.7158351    0.2542333
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.7395290   -1.2506682   -0.2283897
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1654457   -0.6875807    0.3566894
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.5636957   -1.1457632    0.0183719
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.3374457   -0.8011209    0.1262296
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.1052866   -0.5505782    0.3400051
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.2818775   -0.8212373    0.2574824
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0615082   -0.6446756    0.5216593
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.1510776   -0.3220175    0.6241727
24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.3233990   -0.2722987    0.9190967
24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.1294109   -0.4332650    0.6920868
24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.1006609   -0.3786460    0.5799679
24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.0177443   -0.8106098    0.8460983
24 months   ki0047075b-MAL-ED          PERU                           7                    1                 -0.1876724   -0.6876139    0.3122691
24 months   ki0047075b-MAL-ED          PERU                           8                    1                 -0.0440186   -0.6963949    0.6083578
24 months   ki0047075b-MAL-ED          PERU                           9                    1                 -0.0406724   -0.4903843    0.4090395
24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.0991133   -0.4185235    0.6167501
24 months   ki0047075b-MAL-ED          PERU                           11                   1                  0.1374466   -0.3613822    0.6362755
24 months   ki0047075b-MAL-ED          PERU                           12                   1                  0.0441133   -0.4708032    0.5590298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.5133355    0.0102702    1.0164008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.4737002   -0.0131889    0.9605893
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.3587537   -0.4273767    1.1448840
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.2823900   -0.2652004    0.8299804
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.5196022   -0.0399604    1.0791647
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.6219355    0.0741224    1.1697486
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.2544355   -0.5040337    1.0129046
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.4426855   -0.0759642    0.9613352
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.1292272   -0.4196702    0.6781245
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.4235264   -0.0958763    0.9429291
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.2338710   -0.2544586    0.7222005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0853333   -0.5989354    0.7696021
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.3761667   -0.2321762    0.9845096
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3682500   -0.3851848    1.1216848
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.4734286   -0.0944883    1.0413454
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.4245000   -0.0952865    0.9442865
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.7081000    0.0936157    1.3225843
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.3832500   -0.4544019    1.2209019
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.4453824   -0.1980828    1.0888475
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.5811667   -0.0052683    1.1676016
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.5127609   -0.0949708    1.1204925
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.6942826    0.0484183    1.3401470
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.2985340   -0.1910807    0.7881486
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.6309728    0.1675132    1.0944325
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.5396786    0.1097607    0.9695965
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.5742840    0.1683628    0.9802051
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.2128858   -0.2873796    0.7131512
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.4819809    0.0027312    0.9612306
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.2745875   -0.1987984    0.7479733
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.2749923   -0.1935757    0.7435602
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.0102079   -0.4612593    0.4816752
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.2322978   -0.1533818    0.6179775
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.0507131   -0.4026225    0.5040486
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                  0.0389969   -0.4405849    0.5185787
24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0384020   -0.4564982    0.3796943
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.3155598   -0.7364619    0.1053424
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.4989220   -1.0161542    0.0183102
24 months   ki1000108-IRC              INDIA                          6                    1                 -0.3424312   -0.7827319    0.0978695
24 months   ki1000108-IRC              INDIA                          7                    1                 -0.1873611   -0.6106232    0.2359010
24 months   ki1000108-IRC              INDIA                          8                    1                 -0.3723981   -0.8104302    0.0656339
24 months   ki1000108-IRC              INDIA                          9                    1                 -0.3458796   -0.8521731    0.1604139
24 months   ki1000108-IRC              INDIA                          10                   1                 -0.2776852   -0.7435795    0.1882091
24 months   ki1000108-IRC              INDIA                          11                   1                 -0.2508887   -0.6748746    0.1730972
24 months   ki1000108-IRC              INDIA                          12                   1                 -0.2267486   -0.6186832    0.1651861
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.1436905   -0.2461358    0.5335167
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.1072677   -0.3400069    0.5545423
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.2838831   -0.6736116    0.1058454
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.0744258   -0.3254918    0.4743434
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.3529127   -0.0676081    0.7734335
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.2660779   -0.1905011    0.7226569
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0330794   -0.4253215    0.4914803
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.0985025   -0.6127722    0.4157672
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.2520238   -0.2217302    0.7257778
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.1157113   -0.3034699    0.5348925
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.2821905   -0.1061339    0.6705148
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 -0.3216108   -0.7607994    0.1175777
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.1201003   -0.5511285    0.3109280
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.3207239   -0.7134343    0.0719865
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 -0.2306234   -0.6579567    0.1967099
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 -0.1367914   -0.6360393    0.3624564
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.1229781   -0.5819145    0.3359584
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.3207305   -0.8089167    0.1674556
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 -0.5046735   -0.9503783   -0.0589686
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 -0.1562424   -0.9461909    0.6337060
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.5994091   -1.2340495    0.0352313
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.3033510   -0.8054211    0.1987192
24 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           2                    1                 -0.2748725   -0.5853552    0.0356102
24 months   ki1114097-CMIN             PERU                           3                    1                 -0.1065498   -0.4443274    0.2312278
24 months   ki1114097-CMIN             PERU                           4                    1                  0.0894712   -0.3468064    0.5257487
24 months   ki1114097-CMIN             PERU                           5                    1                 -0.4448589   -0.8681516   -0.0215661
24 months   ki1114097-CMIN             PERU                           6                    1                  0.0121635   -0.4547336    0.4790605
24 months   ki1114097-CMIN             PERU                           7                    1                  0.3384028   -0.1829051    0.8597106
24 months   ki1114097-CMIN             PERU                           8                    1                  0.1682594   -0.2251122    0.5616310
24 months   ki1114097-CMIN             PERU                           9                    1                  0.1920536   -0.2147253    0.5988324
24 months   ki1114097-CMIN             PERU                           10                   1                  0.0592917   -0.4760623    0.5946456
24 months   ki1114097-CMIN             PERU                           11                   1                  0.2569345   -0.0816269    0.5954959
24 months   ki1114097-CMIN             PERU                           12                   1                  0.1752917   -0.3600335    0.7106168
24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                  0.1113911   -0.2973783    0.5201604
24 months   ki1119695-PROBIT           BELARUS                        3                    1                  0.0682236   -0.2940308    0.4304781
24 months   ki1119695-PROBIT           BELARUS                        4                    1                  0.0758445   -0.2200424    0.3717313
24 months   ki1119695-PROBIT           BELARUS                        5                    1                  0.1095289   -0.1306531    0.3497109
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0520685   -0.8170914    0.7129543
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0126758   -0.3315468    0.3061952
24 months   ki1119695-PROBIT           BELARUS                        8                    1                  0.0625997   -0.2530089    0.3782083
24 months   ki1119695-PROBIT           BELARUS                        9                    1                  0.0376701   -0.2103479    0.2856881
24 months   ki1119695-PROBIT           BELARUS                        10                   1                  0.0823434   -0.2265781    0.3912650
24 months   ki1119695-PROBIT           BELARUS                        11                   1                  0.0894643   -0.1529113    0.3318400
24 months   ki1119695-PROBIT           BELARUS                        12                   1                  0.0419447   -0.2070993    0.2909887
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0757674   -0.2639204    0.4154553
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 -0.0728806   -0.4386008    0.2928396
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.1517432   -0.1947920    0.4982785
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0065806   -0.4126533    0.3994920
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.3097812   -0.6684146    0.0488521
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 -0.2254103   -0.6328503    0.1820297
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 -0.0514074   -0.4418365    0.3390217
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 -0.8970000   -1.3226204   -0.4713795
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.1858000   -0.2706475    0.6422475
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                  0.0952857   -0.3587619    0.5493333
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                  0.0472500   -0.4698693    0.5643693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0140452   -0.1236843    0.0955939
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1445149   -0.2509775   -0.0380523
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.2688210   -0.3840940   -0.1535480
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.2978758   -0.4209594   -0.1747921
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.3908183   -0.4937793   -0.2878574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.4304948   -0.5472280   -0.3137616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.4551906   -0.5682470   -0.3421342
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.3644652   -0.4740480   -0.2548825
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.3430180   -0.4439162   -0.2421197
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.2121502   -0.3105757   -0.1137246
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0954698   -0.1943138    0.0033743
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.1469938   -0.0416567    0.3356442
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.1015500   -0.0925538    0.2956538
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                  0.0125126   -0.1540224    0.1790476
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.1313327   -0.3070836    0.0444181
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 -0.1503191   -0.3339202    0.0332819
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.1075128   -0.2702108    0.0551851
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.0371398   -0.1406200    0.2148997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.0162613   -0.1641809    0.1967034
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.0211232   -0.1577548    0.2000012
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 -0.2063103   -0.4677590    0.0551383
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 -0.1502113   -0.3614295    0.0610069


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2435969   -0.6526504    0.1654567
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5505464   -0.3909584    1.4920513
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                 0.4096367    0.0057826    0.8134908
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0842857   -0.4522835    0.6208549
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.2072729   -0.0066646    0.4212104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0240913   -0.4013286    0.4495112
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.7775831   -1.3847921   -0.1703741
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3045267   -0.2393332    0.8483865
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.0387585   -0.1733834    0.2509003
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1383112   -0.2185077   -0.0581147
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1319547   -0.1856209   -0.0782885
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1362824   -0.2002929    0.4728578
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2990467   -0.9557027    0.3576092
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0692302   -0.4908399    0.3523795
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0308215   -0.4436559    0.3820130
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0290729   -0.3427158    0.2845701
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0140694   -0.4328690    0.4047302
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1734281   -0.2644585    0.6113147
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.3371999   -0.1554989    0.8298987
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1455964   -0.5821111    0.2909183
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4579387    0.3262917    0.5895856
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.3747565    0.1098271    0.6396860
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2218293    0.0550458    0.3886129
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1442912   -0.4968524    0.2082701
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0143080   -0.4292828    0.4006668
6 months    ki1114097-CMIN             PERU                           1                    NA                -0.3559471   -0.6643634   -0.0475308
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.1282651   -0.4232608    0.6797910
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0205392   -0.0592000    0.1002783
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0673212   -0.1490151    0.0143727
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0932012   -0.1379331    0.3243355
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0625794    0.0065469    0.1186120
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0823643   -0.0754270    0.2401556
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.3184921   -0.8296719    0.1926877
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0239349   -0.5456072    0.5934771
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0064574   -0.3766756    0.3637607
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.2451430   -0.5725830    0.0822970
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0597281   -0.2488383    0.3682944
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.3386372   -0.0022188    0.6794931
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4345935   -0.0208483    0.8900352
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.3140223    0.0192524    0.6087922
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2324354   -0.5344259    0.0695552
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.1154448   -0.1408184    0.3717079
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.2851529   -0.6401556    0.0698498
24 months   ki1114097-CMIN             PERU                           1                    NA                -0.0665972   -0.3501063    0.2169119
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0515203   -0.1824633    0.2855038
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0468508   -0.3170000    0.2232984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2390122   -0.3109783   -0.1670460
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0281088   -0.1775336    0.1213161

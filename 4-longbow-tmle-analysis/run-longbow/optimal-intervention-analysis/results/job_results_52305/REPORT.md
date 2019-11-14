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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            20     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     2            18     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     3            23     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     4            21     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     5            17     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             6     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     7            12     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     8            24     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     9            16     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     10           19     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     11           13     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     12           26     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1             5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         2             8      62
Birth       ki0047075b-MAL-ED          BRAZIL                         3             9      62
Birth       ki0047075b-MAL-ED          BRAZIL                         4             5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         5             1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         6             5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         7             5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         8             6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         9             6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         10            4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         11            5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         12            3      62
Birth       ki0047075b-MAL-ED          INDIA                          1             2      45
Birth       ki0047075b-MAL-ED          INDIA                          2             3      45
Birth       ki0047075b-MAL-ED          INDIA                          3             5      45
Birth       ki0047075b-MAL-ED          INDIA                          4             6      45
Birth       ki0047075b-MAL-ED          INDIA                          5             2      45
Birth       ki0047075b-MAL-ED          INDIA                          6             3      45
Birth       ki0047075b-MAL-ED          INDIA                          7             3      45
Birth       ki0047075b-MAL-ED          INDIA                          8             7      45
Birth       ki0047075b-MAL-ED          INDIA                          9             4      45
Birth       ki0047075b-MAL-ED          INDIA                          10            6      45
Birth       ki0047075b-MAL-ED          INDIA                          11            3      45
Birth       ki0047075b-MAL-ED          INDIA                          12            1      45
Birth       ki0047075b-MAL-ED          NEPAL                          1             1      26
Birth       ki0047075b-MAL-ED          NEPAL                          2             3      26
Birth       ki0047075b-MAL-ED          NEPAL                          3             1      26
Birth       ki0047075b-MAL-ED          NEPAL                          4             2      26
Birth       ki0047075b-MAL-ED          NEPAL                          5             2      26
Birth       ki0047075b-MAL-ED          NEPAL                          6             3      26
Birth       ki0047075b-MAL-ED          NEPAL                          7             1      26
Birth       ki0047075b-MAL-ED          NEPAL                          8             1      26
Birth       ki0047075b-MAL-ED          NEPAL                          9             3      26
Birth       ki0047075b-MAL-ED          NEPAL                          10            3      26
Birth       ki0047075b-MAL-ED          NEPAL                          11            4      26
Birth       ki0047075b-MAL-ED          NEPAL                          12            2      26
Birth       ki0047075b-MAL-ED          PERU                           1            24     228
Birth       ki0047075b-MAL-ED          PERU                           2            20     228
Birth       ki0047075b-MAL-ED          PERU                           3            21     228
Birth       ki0047075b-MAL-ED          PERU                           4            13     228
Birth       ki0047075b-MAL-ED          PERU                           5            18     228
Birth       ki0047075b-MAL-ED          PERU                           6            15     228
Birth       ki0047075b-MAL-ED          PERU                           7            20     228
Birth       ki0047075b-MAL-ED          PERU                           8            14     228
Birth       ki0047075b-MAL-ED          PERU                           9            20     228
Birth       ki0047075b-MAL-ED          PERU                           10           20     228
Birth       ki0047075b-MAL-ED          PERU                           11           29     228
Birth       ki0047075b-MAL-ED          PERU                           12           14     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             7     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2            13     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3            10     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4             7     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5             5     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6             7     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7            14     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8             4     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9            10     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10           10     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11           15     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12           18     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             8     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            14     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            15     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             7     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            10     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             8     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            15     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             7     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            6     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           14     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           10     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5             9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6            10      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             4      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10            8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11           11      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            3      86
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
Birth       ki1000109-EE               PAKISTAN                       1            34     177
Birth       ki1000109-EE               PAKISTAN                       2            39     177
Birth       ki1000109-EE               PAKISTAN                       3            19     177
Birth       ki1000109-EE               PAKISTAN                       4             8     177
Birth       ki1000109-EE               PAKISTAN                       5             0     177
Birth       ki1000109-EE               PAKISTAN                       6             0     177
Birth       ki1000109-EE               PAKISTAN                       7             0     177
Birth       ki1000109-EE               PAKISTAN                       8             0     177
Birth       ki1000109-EE               PAKISTAN                       9             0     177
Birth       ki1000109-EE               PAKISTAN                       10            0     177
Birth       ki1000109-EE               PAKISTAN                       11           38     177
Birth       ki1000109-EE               PAKISTAN                       12           39     177
Birth       ki1000109-ResPak           PAKISTAN                       1             0      38
Birth       ki1000109-ResPak           PAKISTAN                       2             2      38
Birth       ki1000109-ResPak           PAKISTAN                       3             1      38
Birth       ki1000109-ResPak           PAKISTAN                       4             1      38
Birth       ki1000109-ResPak           PAKISTAN                       5             6      38
Birth       ki1000109-ResPak           PAKISTAN                       6             7      38
Birth       ki1000109-ResPak           PAKISTAN                       7             7      38
Birth       ki1000109-ResPak           PAKISTAN                       8             8      38
Birth       ki1000109-ResPak           PAKISTAN                       9             4      38
Birth       ki1000109-ResPak           PAKISTAN                       10            1      38
Birth       ki1000109-ResPak           PAKISTAN                       11            1      38
Birth       ki1000109-ResPak           PAKISTAN                       12            0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            65    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            62    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3            67    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          4            60    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          5            65    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          6            92    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          7            94    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          8           123    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          9           135    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          10          123    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          11          113    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          12          104    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     1            54     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     2            55     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     3            58     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     4            48     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     5            45     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     6            40     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     7            45     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     8            41     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     9            31     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     10           58     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     11           49     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     12           51     575
Birth       ki1101329-Keneba           GAMBIA                         1           133    1466
Birth       ki1101329-Keneba           GAMBIA                         2           153    1466
Birth       ki1101329-Keneba           GAMBIA                         3           140    1466
Birth       ki1101329-Keneba           GAMBIA                         4           159    1466
Birth       ki1101329-Keneba           GAMBIA                         5           103    1466
Birth       ki1101329-Keneba           GAMBIA                         6           102    1466
Birth       ki1101329-Keneba           GAMBIA                         7            85    1466
Birth       ki1101329-Keneba           GAMBIA                         8            74    1466
Birth       ki1101329-Keneba           GAMBIA                         9           116    1466
Birth       ki1101329-Keneba           GAMBIA                         10          118    1466
Birth       ki1101329-Keneba           GAMBIA                         11          168    1466
Birth       ki1101329-Keneba           GAMBIA                         12          115    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          1             0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2             0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3             0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          4             1     641
Birth       ki1113344-GMS-Nepal        NEPAL                          5             0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          6           151     641
Birth       ki1113344-GMS-Nepal        NEPAL                          7           240     641
Birth       ki1113344-GMS-Nepal        NEPAL                          8           249     641
Birth       ki1113344-GMS-Nepal        NEPAL                          9             0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          10            0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          11            0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          12            0     641
Birth       ki1114097-CMIN             BANGLADESH                     1             0      19
Birth       ki1114097-CMIN             BANGLADESH                     2             4      19
Birth       ki1114097-CMIN             BANGLADESH                     3             2      19
Birth       ki1114097-CMIN             BANGLADESH                     4             0      19
Birth       ki1114097-CMIN             BANGLADESH                     5             3      19
Birth       ki1114097-CMIN             BANGLADESH                     6             0      19
Birth       ki1114097-CMIN             BANGLADESH                     7             0      19
Birth       ki1114097-CMIN             BANGLADESH                     8             5      19
Birth       ki1114097-CMIN             BANGLADESH                     9             2      19
Birth       ki1114097-CMIN             BANGLADESH                     10            1      19
Birth       ki1114097-CMIN             BANGLADESH                     11            2      19
Birth       ki1114097-CMIN             BANGLADESH                     12            0      19
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
Birth       ki1119695-PROBIT           BELARUS                        1           855   13830
Birth       ki1119695-PROBIT           BELARUS                        2           786   13830
Birth       ki1119695-PROBIT           BELARUS                        3           961   13830
Birth       ki1119695-PROBIT           BELARUS                        4           955   13830
Birth       ki1119695-PROBIT           BELARUS                        5           949   13830
Birth       ki1119695-PROBIT           BELARUS                        6          1007   13830
Birth       ki1119695-PROBIT           BELARUS                        7          1277   13830
Birth       ki1119695-PROBIT           BELARUS                        8          1319   13830
Birth       ki1119695-PROBIT           BELARUS                        9          1313   13830
Birth       ki1119695-PROBIT           BELARUS                        10         1500   13830
Birth       ki1119695-PROBIT           BELARUS                        11         1392   13830
Birth       ki1119695-PROBIT           BELARUS                        12         1516   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1          1238   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           948   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3          1060   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4           941   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5           914   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6          1047   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7          1098   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8          1166   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9          1268   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10          984   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11         1070   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12         1183   12917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          1991   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2          1680   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3          2034   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4          1521   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5          1110   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6          1148   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7          1327   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8          1720   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9          2319   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10         2376   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11         2369   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12         2488   22083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2           277    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3           316    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4           395    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5           377    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6           295    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7           315    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8           226    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9           134    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10           61    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2            20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3            23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4            24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5            17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6            12     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7            17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8            25     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9            21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10           22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11           15     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12           26     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1            14     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2            24     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3            15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4            12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5            17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6            14     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7            16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8            15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9            21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10           26     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11           17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12           18     209
6 months    ki0047075b-MAL-ED          INDIA                          1            15     236
6 months    ki0047075b-MAL-ED          INDIA                          2            23     236
6 months    ki0047075b-MAL-ED          INDIA                          3            21     236
6 months    ki0047075b-MAL-ED          INDIA                          4            18     236
6 months    ki0047075b-MAL-ED          INDIA                          5             8     236
6 months    ki0047075b-MAL-ED          INDIA                          6            18     236
6 months    ki0047075b-MAL-ED          INDIA                          7            21     236
6 months    ki0047075b-MAL-ED          INDIA                          8            21     236
6 months    ki0047075b-MAL-ED          INDIA                          9            21     236
6 months    ki0047075b-MAL-ED          INDIA                          10           24     236
6 months    ki0047075b-MAL-ED          INDIA                          11           24     236
6 months    ki0047075b-MAL-ED          INDIA                          12           22     236
6 months    ki0047075b-MAL-ED          NEPAL                          1            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          2            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          3            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          4            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5            18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          7            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          8            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          9            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          10           20     236
6 months    ki0047075b-MAL-ED          NEPAL                          11           20     236
6 months    ki0047075b-MAL-ED          NEPAL                          12           20     236
6 months    ki0047075b-MAL-ED          PERU                           1            33     273
6 months    ki0047075b-MAL-ED          PERU                           2            26     273
6 months    ki0047075b-MAL-ED          PERU                           3            22     273
6 months    ki0047075b-MAL-ED          PERU                           4            18     273
6 months    ki0047075b-MAL-ED          PERU                           5            24     273
6 months    ki0047075b-MAL-ED          PERU                           6            20     273
6 months    ki0047075b-MAL-ED          PERU                           7            22     273
6 months    ki0047075b-MAL-ED          PERU                           8            16     273
6 months    ki0047075b-MAL-ED          PERU                           9            22     273
6 months    ki0047075b-MAL-ED          PERU                           10           20     273
6 months    ki0047075b-MAL-ED          PERU                           11           34     273
6 months    ki0047075b-MAL-ED          PERU                           12           16     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            32     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2            33     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3            17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5            11     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6            18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7            25     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             7     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9            17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10           22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11           29     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12           31     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            28     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4            10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            28     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           28     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           32     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            28     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3            26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4            29     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5            41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6            36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7            33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8            41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9            22     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10           19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11           41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12           28     368
6 months    ki1000108-IRC              INDIA                          1            35     408
6 months    ki1000108-IRC              INDIA                          2            30     408
6 months    ki1000108-IRC              INDIA                          3            29     408
6 months    ki1000108-IRC              INDIA                          4            24     408
6 months    ki1000108-IRC              INDIA                          5            21     408
6 months    ki1000108-IRC              INDIA                          6            35     408
6 months    ki1000108-IRC              INDIA                          7            36     408
6 months    ki1000108-IRC              INDIA                          8            41     408
6 months    ki1000108-IRC              INDIA                          9            28     408
6 months    ki1000108-IRC              INDIA                          10           39     408
6 months    ki1000108-IRC              INDIA                          11           41     408
6 months    ki1000108-IRC              INDIA                          12           49     408
6 months    ki1000109-EE               PAKISTAN                       1            91     375
6 months    ki1000109-EE               PAKISTAN                       2            72     375
6 months    ki1000109-EE               PAKISTAN                       3            47     375
6 months    ki1000109-EE               PAKISTAN                       4            22     375
6 months    ki1000109-EE               PAKISTAN                       5             0     375
6 months    ki1000109-EE               PAKISTAN                       6             0     375
6 months    ki1000109-EE               PAKISTAN                       7             0     375
6 months    ki1000109-EE               PAKISTAN                       8             0     375
6 months    ki1000109-EE               PAKISTAN                       9             0     375
6 months    ki1000109-EE               PAKISTAN                       10            0     375
6 months    ki1000109-EE               PAKISTAN                       11           60     375
6 months    ki1000109-EE               PAKISTAN                       12           83     375
6 months    ki1000109-ResPak           PAKISTAN                       1             2     239
6 months    ki1000109-ResPak           PAKISTAN                       2             8     239
6 months    ki1000109-ResPak           PAKISTAN                       3            10     239
6 months    ki1000109-ResPak           PAKISTAN                       4            20     239
6 months    ki1000109-ResPak           PAKISTAN                       5            30     239
6 months    ki1000109-ResPak           PAKISTAN                       6            39     239
6 months    ki1000109-ResPak           PAKISTAN                       7            43     239
6 months    ki1000109-ResPak           PAKISTAN                       8            26     239
6 months    ki1000109-ResPak           PAKISTAN                       9            37     239
6 months    ki1000109-ResPak           PAKISTAN                       10           15     239
6 months    ki1000109-ResPak           PAKISTAN                       11            6     239
6 months    ki1000109-ResPak           PAKISTAN                       12            3     239
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1           199    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2           137    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3           151    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4           138    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           161    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           142    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           145    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           174    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           198    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          187    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          201    2028
6 months    ki1101329-Keneba           GAMBIA                         1           184    2089
6 months    ki1101329-Keneba           GAMBIA                         2           210    2089
6 months    ki1101329-Keneba           GAMBIA                         3           185    2089
6 months    ki1101329-Keneba           GAMBIA                         4           224    2089
6 months    ki1101329-Keneba           GAMBIA                         5           185    2089
6 months    ki1101329-Keneba           GAMBIA                         6           150    2089
6 months    ki1101329-Keneba           GAMBIA                         7           129    2089
6 months    ki1101329-Keneba           GAMBIA                         8           118    2089
6 months    ki1101329-Keneba           GAMBIA                         9           151    2089
6 months    ki1101329-Keneba           GAMBIA                         10          169    2089
6 months    ki1101329-Keneba           GAMBIA                         11          225    2089
6 months    ki1101329-Keneba           GAMBIA                         12          159    2089
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
6 months    ki1113344-GMS-Nepal        NEPAL                          1             0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2             0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3             0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4             1     564
6 months    ki1113344-GMS-Nepal        NEPAL                          5             0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          6           115     564
6 months    ki1113344-GMS-Nepal        NEPAL                          7           211     564
6 months    ki1113344-GMS-Nepal        NEPAL                          8           237     564
6 months    ki1113344-GMS-Nepal        NEPAL                          9             0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          10            0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          11            0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          12            0     564
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
6 months    ki1119695-PROBIT           BELARUS                        1          1101   15758
6 months    ki1119695-PROBIT           BELARUS                        2           951   15758
6 months    ki1119695-PROBIT           BELARUS                        3          1114   15758
6 months    ki1119695-PROBIT           BELARUS                        4          1070   15758
6 months    ki1119695-PROBIT           BELARUS                        5          1096   15758
6 months    ki1119695-PROBIT           BELARUS                        6          1120   15758
6 months    ki1119695-PROBIT           BELARUS                        7          1366   15758
6 months    ki1119695-PROBIT           BELARUS                        8          1498   15758
6 months    ki1119695-PROBIT           BELARUS                        9          1481   15758
6 months    ki1119695-PROBIT           BELARUS                        10         1669   15758
6 months    ki1119695-PROBIT           BELARUS                        11         1589   15758
6 months    ki1119695-PROBIT           BELARUS                        12         1703   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           816    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           598    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3           720    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4           669    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5           621    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6           670    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7           663    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8           759    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9           789    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10          617    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11          745    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12          838    8505
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1          1341   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2          1149   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3          1396   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4          1172   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5          1125   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6          1182   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7          1254   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8          1488   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9          1614   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10         1681   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11         1724   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12         1600   16726
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2            17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3            19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4            21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5            15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6             9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7            17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8            24     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9            18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10           20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11            9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12           26     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1            14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2            19     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3            11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4            11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5            15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6             9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7            10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8            12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9            18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10           21     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11           12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12           17     169
24 months   ki0047075b-MAL-ED          INDIA                          1            15     227
24 months   ki0047075b-MAL-ED          INDIA                          2            23     227
24 months   ki0047075b-MAL-ED          INDIA                          3            19     227
24 months   ki0047075b-MAL-ED          INDIA                          4            17     227
24 months   ki0047075b-MAL-ED          INDIA                          5             7     227
24 months   ki0047075b-MAL-ED          INDIA                          6            17     227
24 months   ki0047075b-MAL-ED          INDIA                          7            21     227
24 months   ki0047075b-MAL-ED          INDIA                          8            20     227
24 months   ki0047075b-MAL-ED          INDIA                          9            20     227
24 months   ki0047075b-MAL-ED          INDIA                          10           23     227
24 months   ki0047075b-MAL-ED          INDIA                          11           24     227
24 months   ki0047075b-MAL-ED          INDIA                          12           21     227
24 months   ki0047075b-MAL-ED          NEPAL                          1            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          2            18     228
24 months   ki0047075b-MAL-ED          NEPAL                          3            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          4            20     228
24 months   ki0047075b-MAL-ED          NEPAL                          5            17     228
24 months   ki0047075b-MAL-ED          NEPAL                          6            20     228
24 months   ki0047075b-MAL-ED          NEPAL                          7            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          8            18     228
24 months   ki0047075b-MAL-ED          NEPAL                          9            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          10           20     228
24 months   ki0047075b-MAL-ED          NEPAL                          11           19     228
24 months   ki0047075b-MAL-ED          NEPAL                          12           20     228
24 months   ki0047075b-MAL-ED          PERU                           1            26     201
24 months   ki0047075b-MAL-ED          PERU                           2            23     201
24 months   ki0047075b-MAL-ED          PERU                           3            15     201
24 months   ki0047075b-MAL-ED          PERU                           4            10     201
24 months   ki0047075b-MAL-ED          PERU                           5            18     201
24 months   ki0047075b-MAL-ED          PERU                           6            14     201
24 months   ki0047075b-MAL-ED          PERU                           7            14     201
24 months   ki0047075b-MAL-ED          PERU                           8            12     201
24 months   ki0047075b-MAL-ED          PERU                           9            21     201
24 months   ki0047075b-MAL-ED          PERU                           10           15     201
24 months   ki0047075b-MAL-ED          PERU                           11           21     201
24 months   ki0047075b-MAL-ED          PERU                           12           12     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            29     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2            30     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3            16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5            10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6            15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7            25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9            17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10           22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11           27     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12           28     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           26     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3            26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4            29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5            43     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6            37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7            33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8            41     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9            22     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10           19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11           41     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12           29     372
24 months   ki1000108-IRC              INDIA                          1            35     409
24 months   ki1000108-IRC              INDIA                          2            30     409
24 months   ki1000108-IRC              INDIA                          3            29     409
24 months   ki1000108-IRC              INDIA                          4            24     409
24 months   ki1000108-IRC              INDIA                          5            21     409
24 months   ki1000108-IRC              INDIA                          6            35     409
24 months   ki1000108-IRC              INDIA                          7            36     409
24 months   ki1000108-IRC              INDIA                          8            41     409
24 months   ki1000108-IRC              INDIA                          9            30     409
24 months   ki1000108-IRC              INDIA                          10           38     409
24 months   ki1000108-IRC              INDIA                          11           41     409
24 months   ki1000108-IRC              INDIA                          12           49     409
24 months   ki1000109-EE               PAKISTAN                       1            29     168
24 months   ki1000109-EE               PAKISTAN                       2             2     168
24 months   ki1000109-EE               PAKISTAN                       3             2     168
24 months   ki1000109-EE               PAKISTAN                       4             0     168
24 months   ki1000109-EE               PAKISTAN                       5             0     168
24 months   ki1000109-EE               PAKISTAN                       6             0     168
24 months   ki1000109-EE               PAKISTAN                       7             0     168
24 months   ki1000109-EE               PAKISTAN                       8             0     168
24 months   ki1000109-EE               PAKISTAN                       9             0     168
24 months   ki1000109-EE               PAKISTAN                       10            0     168
24 months   ki1000109-EE               PAKISTAN                       11           57     168
24 months   ki1000109-EE               PAKISTAN                       12           78     168
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
24 months   ki1101329-Keneba           GAMBIA                         1           148    1726
24 months   ki1101329-Keneba           GAMBIA                         2           160    1726
24 months   ki1101329-Keneba           GAMBIA                         3           159    1726
24 months   ki1101329-Keneba           GAMBIA                         4           175    1726
24 months   ki1101329-Keneba           GAMBIA                         5           182    1726
24 months   ki1101329-Keneba           GAMBIA                         6           132    1726
24 months   ki1101329-Keneba           GAMBIA                         7           101    1726
24 months   ki1101329-Keneba           GAMBIA                         8            94    1726
24 months   ki1101329-Keneba           GAMBIA                         9           135    1726
24 months   ki1101329-Keneba           GAMBIA                         10          150    1726
24 months   ki1101329-Keneba           GAMBIA                         11          178    1726
24 months   ki1101329-Keneba           GAMBIA                         12          112    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1             0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2             0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3             0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          4             0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          5             0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          6            72     487
24 months   ki1113344-GMS-Nepal        NEPAL                          7           200     487
24 months   ki1113344-GMS-Nepal        NEPAL                          8           215     487
24 months   ki1113344-GMS-Nepal        NEPAL                          9             0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          10            0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          11            0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          12            0     487
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
24 months   ki1119695-PROBIT           BELARUS                        1           264    3972
24 months   ki1119695-PROBIT           BELARUS                        2           210    3972
24 months   ki1119695-PROBIT           BELARUS                        3           320    3972
24 months   ki1119695-PROBIT           BELARUS                        4           322    3972
24 months   ki1119695-PROBIT           BELARUS                        5           301    3972
24 months   ki1119695-PROBIT           BELARUS                        6           265    3972
24 months   ki1119695-PROBIT           BELARUS                        7           364    3972
24 months   ki1119695-PROBIT           BELARUS                        8           346    3972
24 months   ki1119695-PROBIT           BELARUS                        9           375    3972
24 months   ki1119695-PROBIT           BELARUS                        10          390    3972
24 months   ki1119695-PROBIT           BELARUS                        11          386    3972
24 months   ki1119695-PROBIT           BELARUS                        12          429    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            51     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            60     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3            56     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4            46     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5            49     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6            44     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7            32     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8            30     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             2     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            4     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11           20     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12           39     433
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           679    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           560    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           706    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           507    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           384    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           586    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           669    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           622    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           773    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          870    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11         1008    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12         1174    8538
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/d243c6b8-c3a7-4a75-a188-25bfa7fc1fed/8b297f0a-651d-4a29-9dff-fae84b2bfb84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1271855   -1.8807692   -0.3736018
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4163960   -0.9424810    0.1096889
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2262235   -0.8809623    0.4285153
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0941808   -0.2891424    0.1007809
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9183679   -1.1820256   -0.6547101
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7719806   -1.0493326   -0.4946287
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0161465   -1.2995913   -0.7327017
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2643798   -0.3605452   -0.1682144
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6247088   -0.6768539   -0.5725638
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1585528   -0.6485921    0.3314864
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5859701    0.1559638    1.0159764
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0539458   -1.7099113   -0.3979802
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.5286204    0.1087646    0.9484761
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3057679    0.7814535    1.8300823
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           1.2068768    0.8259400    1.5878135
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4271034   -0.1341061    0.9883129
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3105372   -0.8153251    0.1942507
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3056875   -0.8299627    0.2185877
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3378347   -0.6848812    0.0092117
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3179533   -0.6235589   -0.0123476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2649879    0.0903022    0.4396736
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0679069   -0.1083506    0.2441645
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1169685   -0.5338235    0.2998865
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.5196632    0.3340319    0.7052945
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5429567    0.4773980    0.6085153
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4124625    0.3172620    0.5076630
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.7676423    0.4130491    1.1222354
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4632133   -0.5325185   -0.3939082
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4567827   -0.5871082   -0.3264573
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4102340   -0.9284852    0.1080173
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.2412098    0.4404583    2.0419612
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7046261   -1.1520380   -0.2572141
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7243241   -1.1617280   -0.2869202
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3165865   -1.2122423    0.5790693
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7936265    0.4084589    1.1787940
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0025334   -0.3323587    0.3374256
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5549549   -0.8700694   -0.2398405
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8473360   -1.1401240   -0.5545479
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0733185   -1.4092896   -0.7373473
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6413537   -0.7872114   -0.4954960
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.5247125    0.4117322    0.6376927
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2673777   -0.6186090    0.0838536
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0285911   -1.0988801   -0.9583021
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0476466   -1.1536371   -0.9416561


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2349454   -1.2972413   -1.1726496
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7501567   -0.7680049   -0.7323085
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5427231    0.3906363    0.6948099
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3105514    0.2848767    0.3362262
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5930207   -0.6125866   -0.5734549
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2994214   -1.3227674   -1.2760754
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1859762   -0.5492184    0.9211708
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.3643785   -0.1400931    0.8688500
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7843596   -1.4096104   -0.1591087
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5758646   -0.7847183   -0.3670108
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4315539   -0.6896803   -0.1734275
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4629648   -0.7314911   -0.1944385
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1287168   -0.3028190    0.0453853
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2511098   -0.3436400   -0.1585797
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1254479   -0.1741985   -0.0766972
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0201572   -0.4637626    0.5040771
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3857524   -0.0442964    0.8158012
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3456760   -0.2703115    0.9616635
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4175752   -0.8243007   -0.0108497
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2488692   -0.7489335    0.2511950
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6641537   -1.0270372   -0.3012701
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1091179   -0.4299666    0.6482024
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1921394   -0.6746586    0.2903798
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2932423   -0.8098522    0.2233677
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3278737   -0.5557358   -0.1000116
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1294505   -0.4265480    0.1676469
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1840547   -0.3539326   -0.0141769
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2525107   -0.4226679   -0.0823536
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0329551   -0.3587045    0.4246147
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.5487685    0.3394822    0.7580549
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0362872   -0.0326024    0.1051768
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1019111   -0.1924182   -0.0114039
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3177019   -0.6653729    0.0299691
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1298074   -0.1961751   -0.0634397
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0669772   -0.0645907    0.1985451
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4099547   -0.9029504    0.0830410
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7819790   -1.5690721    0.0051141
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2476647   -0.6793453    0.1840160
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3478768   -0.0703042    0.7660577
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.4370343   -0.4234983    1.2975668
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3787735   -0.7438961   -0.0136509
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0514152   -0.2707408    0.3735712
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0021956   -0.3058973    0.3015061
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1015210   -0.1818094    0.3848514
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1617394   -0.1645603    0.4880391
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1685753   -0.3083957   -0.0287549
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1627171    0.0495570    0.2758771
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2196069   -0.1235937    0.5628074
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2708303   -0.3388725   -0.2027882
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1754622   -0.2787118   -0.0722126

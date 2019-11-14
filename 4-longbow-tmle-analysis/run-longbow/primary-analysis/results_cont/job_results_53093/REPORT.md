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
Birth       ki1101329-Keneba           GAMBIA                         1             1      14
Birth       ki1101329-Keneba           GAMBIA                         2             3      14
Birth       ki1101329-Keneba           GAMBIA                         3             0      14
Birth       ki1101329-Keneba           GAMBIA                         4             3      14
Birth       ki1101329-Keneba           GAMBIA                         5             0      14
Birth       ki1101329-Keneba           GAMBIA                         6             0      14
Birth       ki1101329-Keneba           GAMBIA                         7             0      14
Birth       ki1101329-Keneba           GAMBIA                         8             1      14
Birth       ki1101329-Keneba           GAMBIA                         9             2      14
Birth       ki1101329-Keneba           GAMBIA                         10            2      14
Birth       ki1101329-Keneba           GAMBIA                         11            2      14
Birth       ki1101329-Keneba           GAMBIA                         12            0      14
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/bf483b65-974c-4369-a4da-f280f0c7ba8a/eaaaece7-6e2d-45ac-87e5-2da96c2748de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bf483b65-974c-4369-a4da-f280f0c7ba8a/eaaaece7-6e2d-45ac-87e5-2da96c2748de/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bf483b65-974c-4369-a4da-f280f0c7ba8a/eaaaece7-6e2d-45ac-87e5-2da96c2748de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.7430000   -1.1594128   -0.3265872
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.0477778   -1.5283244   -0.5672312
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0656522   -1.5533616   -0.5779427
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.1428571   -1.6151625   -0.6705518
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.5841176   -1.1364997   -0.0317356
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.7316667   -1.2312077   -0.2321257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.1675000   -1.6002755   -0.7347245
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.6908333   -1.1469365   -0.2347302
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.4325000   -1.9422561   -0.9227439
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.0836842   -1.5505962   -0.6167722
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.7146154   -1.2585683   -0.1706625
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.8623077   -1.2864932   -0.4381222
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.3279167   -0.5938557   -0.0619776
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                 0.0840000   -0.2487620    0.4167620
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                 0.1038095   -0.2241932    0.4318123
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                 0.0976923   -0.4279042    0.6232888
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                 0.1733333   -0.2512738    0.5979405
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                 0.1600000   -0.2679979    0.5879979
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.2715000   -0.6906102    0.1476102
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.0585714   -0.5747424    0.4575996
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.0730000   -0.5463134    0.4003134
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                -0.0060000   -0.3634292    0.3514292
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -0.2427586   -0.6719516    0.1864344
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                 0.0164286   -0.3884668    0.4213240
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5775385   -0.7510679   -0.4040090
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.3179032   -0.5156829   -0.1201236
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.4394030   -0.9257229    0.0469169
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.5406667   -0.8353625   -0.2459708
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.9635385   -1.1270608   -0.8000161
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.0503261   -1.2170289   -0.8836233
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.7979787   -1.1038062   -0.4921513
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.7371545   -0.9909807   -0.4833282
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.9425926   -1.3358080   -0.5493772
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.8260163   -1.1145246   -0.5375079
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.5030088   -0.6169612   -0.3890565
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.0894231   -0.2798780    0.1010319
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.3298148   -1.6826375   -0.9769921
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -1.0767273   -1.3907490   -0.7627056
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -1.2127586   -1.5096815   -0.9158358
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -1.6242708   -1.9106951   -1.3378466
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -1.6126667   -1.9429803   -1.2823530
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -1.3485000   -1.7493327   -0.9476673
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -1.7311111   -2.0695145   -1.3927077
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -1.4248780   -1.7745272   -1.0752289
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.7470968   -2.0434109   -1.4507826
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -1.3239655   -1.5976568   -1.0502742
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -1.1655102   -1.4896044   -0.8414160
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.9015686   -1.1553283   -0.6478089
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1810877   -1.4921315   -0.8700439
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                -1.0199109   -1.3031452   -0.7366767
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                -1.1419667   -1.3811261   -0.9028073
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                -1.1455602   -1.3896811   -0.9014393
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                -1.2871128   -1.5338052   -1.0404203
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                -1.1472840   -1.3925566   -0.9020115
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                -1.2153837   -1.4505541   -0.9802133
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                -1.1645792   -1.4024172   -0.9267413
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                -1.0913976   -1.3623224   -0.8204727
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                -1.1714733   -1.3806305   -0.9623161
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                -1.0863937   -1.2618987   -0.9108886
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                -1.0970679   -1.3083648   -0.8857711
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.3766155   -0.4610606   -0.2921704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.2642616   -0.3602338   -0.1682894
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.4090472   -0.4990085   -0.3190858
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.3649628   -0.4572784   -0.2726472
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.4407330   -0.5435097   -0.3379564
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.6399331   -0.7319231   -0.5479432
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.6947996   -0.7858466   -0.6037527
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.6256861   -0.7121522   -0.5392200
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.5026025   -0.5812828   -0.4239223
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.6391057   -0.7302696   -0.5479418
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.6403084   -0.7271988   -0.5534181
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.5479290   -0.6323109   -0.4635471
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6244852   -0.6765295   -0.5724409
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.6856786   -0.7400186   -0.6313386
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7579105   -0.8045826   -0.7112384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.7562590   -0.8108056   -0.7017125
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.7800631   -0.8474474   -0.7126787
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.7863589   -0.8494208   -0.7232970
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.7147852   -0.7705802   -0.6589903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.8055640   -0.8595516   -0.7515763
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.8688745   -0.9194414   -0.8183076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.8250547   -0.8716531   -0.7784563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.7466653   -0.7911672   -0.7021633
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6558521   -0.7014309   -0.6102733
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2328070   -0.5400049    0.0743908
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.2542500   -0.6175882    0.1090882
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.2350000   -0.6327677    0.1627677
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.3131250   -0.8208791    0.1946291
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.1191176   -0.6778548    0.4396195
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                 0.2837500   -0.3419373    0.9094373
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.4752941   -1.0910027    0.1404144
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                 0.0944667   -0.1302885    0.3192218
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.2554762   -0.6557265    0.1447741
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.1959091   -0.7184115    0.3265933
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                 0.1716667   -0.2086897    0.5520230
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                 0.0197436   -0.3385286    0.3780158
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.0828571    0.3793319    1.7863824
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.5859028    0.0755634    1.0962421
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 1.1766667    0.5061427    1.8471906
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 1.0006944    0.4142312    1.5871577
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 1.1838235    0.6435869    1.7240601
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                 1.0460714    0.4865864    1.6055565
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.3215625    0.7949968    1.8481282
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                 1.0004444    0.5237141    1.4771748
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.9181746    0.4682781    1.3680711
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 1.0032692    0.4984965    1.5080420
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.9324510    0.4175097    1.4473923
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.6705556    0.0095109    1.3316002
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7960000   -1.1126969   -0.4793031
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.5119565   -0.9183754   -0.1055376
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.8732540   -1.3693933   -0.3771146
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.6793519   -1.0428342   -0.3158695
6 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -0.8562500   -1.2161292   -0.4963708
6 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -0.7333333   -1.3105728   -0.1560938
6 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -0.6384127   -1.0959284   -0.1808970
6 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -0.5873810   -1.0487411   -0.1260208
6 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -0.4996825   -0.8014930   -0.1978721
6 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -0.6067361   -1.0065860   -0.2068862
6 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -0.7877778   -1.1425335   -0.4330221
6 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -1.0507576   -1.5025128   -0.5990023
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0846667   -0.5956371    0.4263037
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.1727500   -0.1908034    0.5363034
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.3077500   -0.0859021    0.7014021
6 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.0880000   -0.4373750    0.6133750
6 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                 0.0711111   -0.4584931    0.6007153
6 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.0645000   -0.4683460    0.3393460
6 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                 0.4126316   -0.1762242    1.0014874
6 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.3402632   -0.6831897    0.0026634
6 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                 0.1057500   -0.3243284    0.5358284
6 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                 0.5449167    0.1498159    0.9400174
6 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                 0.0597500   -0.2202810    0.3397810
6 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.0478333   -0.4363904    0.5320570
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 1.0102525    0.6802733    1.3402317
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.1963462    0.7731583    1.6195340
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.4879545    1.0129582    1.9629509
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                 0.9455556    0.5080051    1.3831060
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                 0.9222917    0.4421099    1.4024734
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                 0.8097500    0.4705743    1.1489257
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                 0.9034091    0.4414375    1.3653807
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                 1.3596875    0.8631058    1.8562692
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                 0.8603030    0.4958155    1.2247906
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                 1.2010000    0.7271956    1.6748044
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                 1.1697549    0.8449358    1.4945740
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                 0.7285417    0.4239632    1.0331202
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.3264583   -0.1316823    0.7845990
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 1.2111111    0.8421791    1.5800431
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.5170588    0.0702240    0.9638936
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.8662500    0.4098066    1.3226934
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.5640909   -0.2645224    1.3927042
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.3005556   -0.1708295    0.7719406
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.5730000    0.1163097    1.0296903
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.5911905   -0.0341525    1.2165334
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.5354902   -0.0171782    1.0881586
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.1160606   -0.3678265    0.5999477
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.2860920   -0.2707144    0.8428983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.5877957    0.1553928    1.0201986
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3303968   -0.2075655    0.8683592
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5392857    0.2396255    0.8389459
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.6541304    0.2946212    1.0136396
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.2840000   -0.2908685    0.8588685
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.4125000   -0.2118457    1.0368457
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.3893750   -0.2961236    1.0748736
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.8005357    0.4511053    1.1499661
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                 0.6788889    0.1869012    1.1708766
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.8866667    0.2234168    1.5499165
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.7984211    0.5271630    1.0696791
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.3210119   -0.1188554    0.7608792
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.3332292    0.0486050    0.6178533
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7920238   -1.2902166   -0.2938310
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.6947222   -1.3980522    0.0086077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.7564744   -1.2802258   -0.2327229
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.4321264   -1.0200906    0.1558378
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.4245935   -0.8122550   -0.0369320
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.3758796   -0.8146805    0.0629212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                 0.0812121   -0.5262968    0.6887210
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                 0.0279675   -0.4401470    0.4960820
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.4237879   -0.9209569    0.0733811
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.5881579   -1.0288024   -0.1475134
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.7841463   -1.2243802   -0.3439125
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -1.2204762   -1.6791012   -0.7618512
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.4822857   -0.9484983   -0.0160731
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.2907222   -0.8947980    0.3133536
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.5302874   -0.9804164   -0.0801583
6 months    ki1000108-IRC              INDIA                          4                    NA                -0.2227083   -0.7051414    0.2597247
6 months    ki1000108-IRC              INDIA                          5                    NA                 0.0457143   -0.6569615    0.7483901
6 months    ki1000108-IRC              INDIA                          6                    NA                -0.6810000   -1.1397660   -0.2222340
6 months    ki1000108-IRC              INDIA                          7                    NA                -0.7501852   -1.2493611   -0.2510092
6 months    ki1000108-IRC              INDIA                          8                    NA                -0.8281707   -1.2451033   -0.4112382
6 months    ki1000108-IRC              INDIA                          9                    NA                -0.5436905   -0.9489573   -0.1384237
6 months    ki1000108-IRC              INDIA                          10                   NA                -0.7334615   -1.0726782   -0.3942448
6 months    ki1000108-IRC              INDIA                          11                   NA                -0.5737805   -0.9580315   -0.1895294
6 months    ki1000108-IRC              INDIA                          12                   NA                -0.9560884   -1.3722092   -0.5399677
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.8136667   -1.0903261   -0.5370072
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.4683000   -0.7457210   -0.1908790
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.5955333   -0.8960962   -0.2949705
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.5772917   -0.8495897   -0.3049936
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.4715417   -0.8671425   -0.0759408
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0596795   -0.3876685    0.2683095
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.1464444   -0.4366760    0.1437871
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.3821491   -0.6827610   -0.0815372
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.2963889   -0.6934127    0.1006349
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.3647436   -0.6695878   -0.0598994
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.4859014   -0.7690423   -0.2027604
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.5402333   -0.8405796   -0.2398871
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1408961   -0.3174109    0.0356186
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1146229   -0.2995775    0.0703318
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0010265   -0.2148897    0.2128367
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.1706643   -0.0055269    0.3468554
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.3542754    0.1683406    0.5402101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.3773768    0.1945365    0.5602171
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.1229425   -0.0606549    0.3065399
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                 0.2426533    0.0576280    0.4276785
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0495286   -0.1138480    0.2129052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.0476923   -0.1200519    0.2154365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.1106061   -0.0694709    0.2906830
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1292869   -0.2956511    0.0370773
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2423551   -0.4148043   -0.0699058
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.2841460   -0.4419653   -0.1263268
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.1819553   -0.3298644   -0.0340462
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.1963652   -0.3519749   -0.0407556
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                -0.2645592   -0.4447525   -0.0843659
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                -0.2640611   -0.4645969   -0.0635253
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                -0.3067739   -0.5216395   -0.0919083
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                -0.2830767   -0.5073050   -0.0588485
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                -0.1554812   -0.3256966    0.0147341
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                -0.1345345   -0.3230597    0.0539906
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                -0.0306256   -0.1843773    0.1231262
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                 0.0686069   -0.1066601    0.2438740
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
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5584242    0.4524383    0.6644100
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                 0.5830126    0.4542199    0.7118054
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.6207944    0.5287276    0.7128613
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.5637523    0.4747325    0.6527721
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.5975000    0.4993085    0.6956915
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.6203884    0.5416803    0.6990965
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.5886859    0.5090898    0.6682821
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.5706275    0.4874689    0.6537861
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.5692066    0.4920950    0.6463183
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.5536818    0.4671991    0.6401646
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.5464475    0.4468773    0.6460176
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                 0.5987317    0.5109196    0.6865437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3711397    0.2858407    0.4564387
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.2754682    0.1811598    0.3697766
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                 0.4125417    0.3175576    0.5075257
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                 0.2993647    0.2135555    0.3851739
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                 0.3035266    0.2087896    0.3982636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                 0.2421493    0.1472274    0.3370711
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                 0.2775566    0.1842269    0.3708862
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                 0.2957708    0.2083111    0.3832304
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                 0.3094550    0.2253932    0.3935168
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                 0.2975932    0.2080455    0.3871409
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                 0.2653423    0.1811942    0.3494903
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                 0.3480430    0.2680625    0.4280234
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.3572727    0.1217615    0.5927839
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                 0.3845614    0.1933466    0.5757762
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                 0.3402041    0.1335871    0.5468211
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                 0.5709091    0.3650517    0.7767665
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                 0.2523423    0.0623974    0.4422873
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                 0.4408791    0.2138964    0.6678618
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                 0.4837500    0.2407534    0.7267466
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                 0.7641463    0.4937898    1.0345029
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                 0.3600000    0.0276852    0.6923148
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                 0.8614286    0.5311805    1.1916767
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                 0.6106122    0.3305943    0.8906302
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                 0.3844118   -0.0323323    0.8011558
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6695377   -0.7276337   -0.6114417
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5746301   -0.6454992   -0.5037610
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.5650501   -0.6271211   -0.5029792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.5955375   -0.6528764   -0.5381987
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.5301956   -0.5949588   -0.4654323
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.4638325   -0.5329070   -0.3947580
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.5327472   -0.5985005   -0.4669939
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.5738710   -0.6308163   -0.5169256
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.5858426   -0.6432068   -0.5284784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.6535812   -0.7088676   -0.5982948
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.6749420   -0.7261580   -0.6237260
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6246625   -0.6810060   -0.5683190
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.4047059   -0.8945118    0.0851001
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9300000   -1.3010164   -0.5589836
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9626316   -1.3368440   -0.5884192
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.8511905   -1.2708394   -0.4315415
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.1373333   -1.6545502   -0.6201165
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.6950000   -1.1500506   -0.2399494
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.8791176   -1.3452205   -0.4130148
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.8704167   -1.1462693   -0.5945640
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.1202778   -1.5251024   -0.7154532
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.6527500   -1.0641851   -0.2413149
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.8066667   -1.4333202   -0.1800131
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.5921154   -0.8987049   -0.2855258
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.3296429   -0.1984970    0.8577828
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.1542105   -0.4230805    0.7315016
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.9509091   -0.0222435    1.9240617
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.5440909   -0.3946605    1.4828423
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0050000   -0.5375687    0.5475687
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.1866667   -0.6115267    0.9848600
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.3130000    0.6346261    1.9913739
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.6916667   -0.1711270    1.5544604
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.3611111   -0.2717622    0.9939844
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.4795238   -0.0993533    1.0584009
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.6641667    0.1142961    1.2140373
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.3467647   -0.4000581    1.0935875
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7080000   -1.0756293   -0.3403707
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.8382609   -1.2178295   -0.4586922
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.5955263   -0.8987824   -0.2922702
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.9647059   -1.4197926   -0.5096191
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -1.2757143   -1.8834402   -0.6679884
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.1597059   -1.8067552   -0.5126565
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -0.8507143   -1.1841235   -0.5173050
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -0.9895000   -1.4005813   -0.5784187
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -1.1240000   -1.4267060   -0.8212940
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -0.8365217   -1.1575376   -0.5155058
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -1.1258333   -1.4235815   -0.8280852
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -1.1197619   -1.4860457   -0.7534781
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.3665789   -0.7661391    0.0329812
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.1119444   -0.4495653    0.2256764
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.1402632   -0.4145277    0.1340014
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.3580000   -0.7978836    0.0818836
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.4452941   -0.8379399   -0.0526484
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.7317500   -1.0749748   -0.3885252
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.2128947   -0.5761423    0.1503528
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.8933333   -1.2162896   -0.5703771
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.4213158   -0.9005707    0.0579392
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.1957500   -0.5065314    0.1150314
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.4497368   -0.7288407   -0.1706330
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.2115000   -0.7163172    0.2933172
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.2157692   -0.1133601    0.5448986
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0752174   -0.2773205    0.4277553
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.2120000   -0.2115309    0.6355309
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.3510000   -0.2872096    0.9892096
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                 0.1775000   -0.1832472    0.5382472
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                 0.1560714   -0.4934700    0.8056128
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -0.1942857   -0.5532241    0.1646527
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                 0.1295833   -0.4720541    0.7312207
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                -0.0442857   -0.3259505    0.2373791
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                 0.1883333   -0.1824539    0.5591206
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                 0.1976190   -0.1700999    0.5653380
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                -0.0066667   -0.3829392    0.3696058
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0063793   -0.3438626    0.3311040
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.5201667    0.1677774    0.8725559
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.5353125    0.2072779    0.8633471
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.5837500    0.0037897    1.1637103
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.1485000   -0.5085697    0.8055697
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.5070000    0.1200930    0.8939070
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.7940000    0.4259226    1.1620774
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.1214286   -0.4194775    0.6623346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.6305882    0.1808285    1.0803480
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.2697727   -0.1324961    0.6720415
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.3914815    0.0659005    0.7170625
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.3832143    0.0167362    0.7496924
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4550000   -1.0116814    0.1016814
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.3297368   -0.7908499    0.1313762
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0418182   -0.2832366    0.3668730
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.4143750   -1.0026174    0.1738674
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.1153571   -0.2039408    0.4346550
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.2107143   -0.0058239    0.4272524
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.3182143   -0.0153630    0.6517916
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.2583333   -0.9155533    0.3988867
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.2223333   -0.2644000    0.7090667
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.1632353   -0.1372944    0.4637650
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.2597619   -0.1104571    0.6299809
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2482692   -0.1167508    0.6132892
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8386310   -1.1340429   -0.5432190
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.5726389   -0.9600666   -0.1852111
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.3351923   -0.7213908    0.0510062
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.3314943   -0.6400508   -0.0229377
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.2796512   -0.5653811    0.0060787
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.6776577   -1.0659244   -0.2893909
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -0.3891919   -0.7634352   -0.0149486
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.5965854   -0.9632895   -0.2298812
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.6249242   -1.0087933   -0.2410552
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.7820175   -1.1626361   -0.4013990
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.6459756   -0.8837538   -0.4081974
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -0.7659770   -1.0815448   -0.4504092
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.4930000   -0.8210010   -0.1649990
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.4645556   -0.7822585   -0.1468526
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.6336207   -0.9341908   -0.3330506
24 months   ki1000108-IRC              INDIA                          4                    NA                -0.8172222   -1.0787963   -0.5556482
24 months   ki1000108-IRC              INDIA                          5                    NA                -1.0123016   -1.4208322   -0.6037710
24 months   ki1000108-IRC              INDIA                          6                    NA                -0.8744286   -1.1775097   -0.5713474
24 months   ki1000108-IRC              INDIA                          7                    NA                -0.7462037   -1.0323950   -0.4600124
24 months   ki1000108-IRC              INDIA                          8                    NA                -0.9306911   -1.2585515   -0.6028306
24 months   ki1000108-IRC              INDIA                          9                    NA                -0.8492778   -1.1938498   -0.5047058
24 months   ki1000108-IRC              INDIA                          10                   NA                -0.7447368   -1.0766497   -0.4128240
24 months   ki1000108-IRC              INDIA                          11                   NA                -0.7290244   -1.0218502   -0.4361986
24 months   ki1000108-IRC              INDIA                          12                   NA                -0.7205102   -0.9530848   -0.4879356
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
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.8697500   -1.0281652   -0.7113348
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.7532635   -0.8961400   -0.6103870
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.5672987   -0.7098921   -0.4247054
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.6896286   -0.8334626   -0.5457945
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                -0.6346016   -0.7696510   -0.4995523
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                -0.7088763   -0.8665492   -0.5512033
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                -0.6674010   -0.8616174   -0.4731846
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                -1.0846358   -1.2972984   -0.8719731
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                -1.0349284   -1.1922406   -0.8776162
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                -1.0198889   -1.1773310   -0.8624468
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                -0.9168764   -1.0699159   -0.7638369
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                -0.9238542   -1.1512578   -0.6964505
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6348232    0.3979535    0.8716930
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                 0.7462143    0.4856117    1.0068169
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                 0.7030469    0.4632804    0.9428133
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                 0.7106677    0.4912568    0.9300786
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                 0.7443522    0.6392201    0.8494842
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                 0.5827547   -0.1695923    1.3351017
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                 0.6221474    0.4143735    0.8299214
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                 0.6974229    0.4920020    0.9028438
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                 0.6724933    0.4671484    0.8778382
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                 0.7171667    0.5349457    0.8993877
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                 0.7242876    0.5954142    0.8531609
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                 0.6868454    0.5330538    0.8406370
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0005000   -0.2783396    0.2773396
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                 0.0750000   -0.1202366    0.2702366
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -0.0737313   -0.3114492    0.1639866
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                 0.1508784   -0.0561074    0.3578641
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -0.0075806   -0.3036464    0.2884851
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -0.3109375   -0.5375729   -0.0843021
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -0.2266667   -0.5249347    0.0716014
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -0.0525926   -0.3267768    0.2215916
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                -0.8975000   -1.2193242   -0.5756758
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                 0.1848000   -0.1771865    0.5467865
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                 0.0940000   -0.2651298    0.4531298
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                 0.0466667   -0.3891095    0.4824428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0294698   -1.0994177   -0.9595219
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.1054821   -1.1889937   -1.0219706
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2157224   -1.2970723   -1.1343725
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.3481657   -1.4397866   -1.2565448
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.3867187   -1.4903046   -1.2831329
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.4622696   -1.5400206   -1.3845187
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.4624066   -1.5467441   -1.3780690
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.5213023   -1.5994670   -1.4431375
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.4292109   -1.5069578   -1.3514639
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.3939655   -1.4622720   -1.3256590
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.2719444   -1.3352737   -1.2086152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.1251448   -1.1840909   -1.0661987
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7501567   -0.7680049   -0.7323085
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5427231    0.3906363    0.6948099
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930207   -0.6125866   -0.5734549
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2994214   -1.3227674   -1.2760754
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.3047778   -0.9406431    0.3310875
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.3226522   -0.9639478    0.3186435
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.3998571   -1.0295174    0.2298031
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.1588824   -0.5328730    0.8506377
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0113333   -0.6390057    0.6616723
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.4245000   -1.0250782    0.1760782
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.0521667   -0.5654333    0.6697666
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.6895000   -1.3477180   -0.0312820
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.3406842   -0.9663091    0.2849406
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.0283846   -0.6566587    0.7134280
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.1193077   -0.7137258    0.4751105
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                  0.4119167   -0.0140576    0.8378910
Birth       ki0047075b-MAL-ED          PERU                           3                    1                  0.4317262    0.0094592    0.8539931
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.4256090   -0.1634371    1.0146550
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.5012500    0.0002362    1.0022638
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.4879167   -0.0159740    0.9918073
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.0564167   -0.4399470    0.5527804
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.2693452   -0.3113062    0.8499967
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.2549167   -0.2879913    0.7978247
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.3219167   -0.1235934    0.7674267
Birth       ki0047075b-MAL-ED          PERU                           11                   1                  0.0851580   -0.4197481    0.5900642
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.3443452   -0.1400759    0.8287664
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2596352    0.1374017    0.3818688
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.1381355   -0.4109303    0.6872013
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.0368718   -0.1962698    0.2700134
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.3860000   -0.5429703   -0.2290297
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.4727876   -0.7114729   -0.2341024
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.2204403   -0.5679618    0.1270813
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.1596160   -0.4317454    0.1125134
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.3650541   -0.7136644   -0.0164439
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.2484778   -0.5001521    0.0031965
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0745296   -0.1587518    0.3078110
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.4881154    0.1841752    0.7920556
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.2530875   -0.2192402    0.7254153
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.1170562   -0.3440805    0.5781929
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.2944560   -0.7489037    0.1599917
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.2828519   -0.7661644    0.2004607
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0186852   -0.5526802    0.5153098
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.4012963   -0.8901733    0.0875807
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.0950632   -0.5917909    0.4016644
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.4172820   -0.8780269    0.0434630
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0058493   -0.4406827    0.4523813
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.1643046   -0.3147788    0.6433881
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.4282462   -0.0063546    0.8628470
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                  0.1611768    0.0354615    0.2868920
Birth       ki1119695-PROBIT           BELARUS                        3                    1                  0.0391210   -0.1410276    0.2192697
Birth       ki1119695-PROBIT           BELARUS                        4                    1                  0.0355275   -0.1760358    0.2470908
Birth       ki1119695-PROBIT           BELARUS                        5                    1                 -0.1060250   -0.3288342    0.1167841
Birth       ki1119695-PROBIT           BELARUS                        6                    1                  0.0338037   -0.2511488    0.3187563
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0342960   -0.3186411    0.2500491
Birth       ki1119695-PROBIT           BELARUS                        8                    1                  0.0165085   -0.2816162    0.3146332
Birth       ki1119695-PROBIT           BELARUS                        9                    1                  0.0896902   -0.2222620    0.4016423
Birth       ki1119695-PROBIT           BELARUS                        10                   1                  0.0096144   -0.2398789    0.2591077
Birth       ki1119695-PROBIT           BELARUS                        11                   1                  0.0946940   -0.1286285    0.3180166
Birth       ki1119695-PROBIT           BELARUS                        12                   1                  0.0840198   -0.1458387    0.3138782
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.1123539   -0.0154805    0.2401883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0324317   -0.1558173    0.0909540
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0116527   -0.1134598    0.1367652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0641175   -0.1971364    0.0689014
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.2633176   -0.3881901   -0.1384452
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3181841   -0.4423635   -0.1940047
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.2490706   -0.3699315   -0.1282097
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.1259870   -0.2414061   -0.0105680
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.2624902   -0.3867554   -0.1382250
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.2636929   -0.3848577   -0.1425281
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.1713135   -0.2906922   -0.0519348
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0611934   -0.1346173    0.0122305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1334253   -0.2026157   -0.0642349
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.1317739   -0.2068077   -0.0567400
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.1555779   -0.2409676   -0.0701881
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.1618737   -0.2417336   -0.0820138
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0903000   -0.1656487   -0.0149514
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.1810788   -0.2544240   -0.1077335
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.2443893   -0.3159164   -0.1728622
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.2005695   -0.2692372   -0.1319018
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1221801   -0.1875040   -0.0568561
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0313669   -0.0991851    0.0364513
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0214430   -0.4972425    0.4543565
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0021930   -0.5047760    0.5003900
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0803180   -0.6737695    0.5131336
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.1136894   -0.5239294    0.7513082
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.5165570   -0.1804761    1.2135901
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.2424871   -0.9305769    0.4456027
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.3272737   -0.0533645    0.7079118
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0226692   -0.5272193    0.4818810
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0368979   -0.5692203    0.6430161
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.4044737   -0.0844450    0.8933923
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.2525506   -0.2193916    0.7244928
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.4969544   -1.3660884    0.3721797
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0938095   -0.8780702    1.0656892
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0821627   -0.9980704    0.8337450
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.1009664   -0.7860530    0.9879858
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.0367857   -0.9356580    0.8620865
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.2387054   -0.6400547    1.1174654
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.0824127   -0.9322477    0.7674223
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.1646825   -0.9997601    0.6703951
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0795879   -0.9454651    0.7862893
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.1504062   -1.0222504    0.7214380
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.4123016   -1.3776657    0.5530625
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.2840435   -0.2311975    0.7992844
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.0772540   -0.6658550    0.5113471
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.1166481   -0.3654476    0.5987439
6 months    ki0047075b-MAL-ED          INDIA                          5                    1                 -0.0602500   -0.5396350    0.4191350
6 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.0626667   -0.5957423    0.7210756
6 months    ki0047075b-MAL-ED          INDIA                          7                    1                  0.1575873   -0.3988455    0.7140201
6 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.2086190   -0.3509791    0.7682172
6 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.2963175   -0.1411599    0.7337948
6 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.1892639   -0.3208115    0.6993392
6 months    ki0047075b-MAL-ED          INDIA                          11                   1                  0.0082222   -0.4673286    0.4837730
6 months    ki0047075b-MAL-ED          INDIA                          12                   1                 -0.2547576   -0.8064638    0.2969486
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.2574167   -0.3696892    0.8845225
6 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.3924167   -0.2526048    1.0374382
6 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1726667   -0.5602110    0.9055443
6 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.1557778   -0.5801376    0.8916931
6 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0201667   -0.6311261    0.6714595
6 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.4972982   -0.2823439    1.2769404
6 months    ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.2555965   -0.8709739    0.3597809
6 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.1904167   -0.4774592    0.8582925
6 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.6295833   -0.0163233    1.2754899
6 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.1444167   -0.4382566    0.7270899
6 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.1325000   -0.5714626    0.8364626
6 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.1860936   -0.3505386    0.7227259
6 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.4777020   -0.1006644    1.0560685
6 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.0646970   -0.6127268    0.4833328
6 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.0879609   -0.6705935    0.4946717
6 months    ki0047075b-MAL-ED          PERU                           6                    1                 -0.2005025   -0.6737112    0.2727061
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.1068434   -0.6745617    0.4608748
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.3494350   -0.2467862    0.9456561
6 months    ki0047075b-MAL-ED          PERU                           9                    1                 -0.1499495   -0.6416175    0.3417185
6 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.1907475   -0.3866405    0.7681354
6 months    ki0047075b-MAL-ED          PERU                           11                   1                  0.1595024   -0.3035243    0.6225291
6 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.2817109   -0.7307702    0.1673485
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.8846528    0.2964320    1.4728735
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1906005   -0.4493637    0.8305647
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.5397917   -0.1069180    1.1865013
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.2376326   -0.7092005    1.1844656
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0259028   -0.6832434    0.6314378
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.2465417   -0.4003423    0.8934256
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.2647321   -0.5104753    1.0399396
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.2090319   -0.5088366    0.9269004
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.2103977   -0.8767607    0.4559652
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0403664   -0.7614255    0.6806927
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.2613374   -0.3686349    0.8913097
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2088889   -0.4069030    0.8246808
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.3237336   -0.3232983    0.9707656
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0463968   -0.8337196    0.7409260
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0821032   -0.7420395    0.9062458
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0589782   -0.8124068    0.9303632
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.4701389   -0.1713477    1.1116255
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.3484921   -0.3805178    1.0775019
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.5562698   -0.2977231    1.4102627
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.4680242   -0.1344576    1.0705061
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0093849   -0.7042854    0.6855156
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0028323   -0.6057844    0.6114491
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0973016   -0.7645969    0.9592001
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0355495   -0.6873002    0.7583991
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.3598974   -0.4107504    1.1305451
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.3674303   -0.2638204    0.9986811
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.4161442   -0.2477400    1.0800284
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.8732359    0.0875750    1.6588969
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.8199913    0.1363779    1.5036046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.3682359   -0.3355915    1.0720634
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.2038659   -0.4612383    0.8689701
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.0078775   -0.6569547    0.6727097
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.4284524   -1.1056030    0.2486982
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                  0.1915635   -0.5714973    0.9546243
6 months    ki1000108-IRC              INDIA                          3                    1                 -0.0480016   -0.6960529    0.6000496
6 months    ki1000108-IRC              INDIA                          4                    1                  0.2595774   -0.4113144    0.9304692
6 months    ki1000108-IRC              INDIA                          5                    1                  0.5280000   -0.3152719    1.3712719
6 months    ki1000108-IRC              INDIA                          6                    1                 -0.1987143   -0.8527941    0.4553656
6 months    ki1000108-IRC              INDIA                          7                    1                 -0.2678995   -0.9509301    0.4151311
6 months    ki1000108-IRC              INDIA                          8                    1                 -0.3458850   -0.9713344    0.2795644
6 months    ki1000108-IRC              INDIA                          9                    1                 -0.0614048   -0.6791388    0.5563293
6 months    ki1000108-IRC              INDIA                          10                   1                 -0.2511758   -0.8277365    0.3253848
6 months    ki1000108-IRC              INDIA                          11                   1                 -0.0914948   -0.6956496    0.5126601
6 months    ki1000108-IRC              INDIA                          12                   1                 -0.4738027   -1.0987113    0.1511058
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.3453667   -0.0464277    0.7371611
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.2181333   -0.1903743    0.6266409
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.2363750   -0.1518088    0.6245588
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.3421250   -0.1406177    0.8248677
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.7539872    0.3248983    1.1830760
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.6672222    0.2662549    1.0681896
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.4315175    0.0229738    0.8400613
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.5172778    0.0333683    1.0011872
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.4489231    0.0372552    0.8605909
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.3277653   -0.0680999    0.7236305
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.2734333   -0.1349150    0.6817816
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0262733   -0.2293939    0.2819404
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1398697   -0.1374297    0.4171690
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3115604    0.0621595    0.5609613
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.4951715    0.2387944    0.7515486
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.5182729    0.2641311    0.7724147
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2638387    0.0091516    0.5185257
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.3835494    0.1278312    0.6392676
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.1904248   -0.0500942    0.4309438
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.1885885   -0.0549184    0.4320953
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.2515022   -0.0006588    0.5036632
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0116092   -0.2309490    0.2541675
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0417910   -0.2755551    0.1919732
6 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0603998   -0.1667914    0.2875910
6 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0459899   -0.1862882    0.2782679
6 months    ki1101329-Keneba           GAMBIA                         5                    1                 -0.0222041   -0.2716202    0.2272119
6 months    ki1101329-Keneba           GAMBIA                         6                    1                 -0.0217060   -0.2861930    0.2427809
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 -0.0644188   -0.3399292    0.2110915
6 months    ki1101329-Keneba           GAMBIA                         8                    1                 -0.0407217   -0.3235945    0.2421512
6 months    ki1101329-Keneba           GAMBIA                         9                    1                  0.0868738   -0.1554317    0.3291794
6 months    ki1101329-Keneba           GAMBIA                         10                   1                  0.1078206   -0.1476799    0.3633210
6 months    ki1101329-Keneba           GAMBIA                         11                   1                  0.2117295   -0.0193080    0.4427671
6 months    ki1101329-Keneba           GAMBIA                         12                   1                  0.3109620    0.0650814    0.5568426
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
6 months    ki1119695-PROBIT           BELARUS                        2                    1                  0.0245885   -0.0613278    0.1105047
6 months    ki1119695-PROBIT           BELARUS                        3                    1                  0.0623703   -0.0403852    0.1651257
6 months    ki1119695-PROBIT           BELARUS                        4                    1                  0.0053282   -0.0873811    0.0980375
6 months    ki1119695-PROBIT           BELARUS                        5                    1                  0.0390758   -0.0709752    0.1491269
6 months    ki1119695-PROBIT           BELARUS                        6                    1                  0.0619642   -0.0480009    0.1719294
6 months    ki1119695-PROBIT           BELARUS                        7                    1                  0.0302618   -0.0899892    0.1505128
6 months    ki1119695-PROBIT           BELARUS                        8                    1                  0.0122033   -0.0990800    0.1234867
6 months    ki1119695-PROBIT           BELARUS                        9                    1                  0.0107825   -0.1148710    0.1364360
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0047423   -0.1143011    0.1048164
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0119767   -0.1345932    0.1106398
6 months    ki1119695-PROBIT           BELARUS                        12                   1                  0.0403075   -0.0564345    0.1370495
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0956715   -0.2228328    0.0314898
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0414020   -0.0862613    0.1690652
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.0717750   -0.1927673    0.0492173
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0676131   -0.1950926    0.0598664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.1289905   -0.2566074   -0.0013735
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0935831   -0.2200203    0.0328540
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0753690   -0.1975373    0.0467994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0616847   -0.1814441    0.0580747
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.0735465   -0.1972183    0.0501253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1057974   -0.2256174    0.0140225
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0230967   -0.1400275    0.0938340
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0272887   -0.2760735    0.3306509
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 -0.0170686   -0.3303674    0.2962301
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                  0.2136364   -0.0991619    0.5264347
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 -0.1049304   -0.4074938    0.1976330
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                  0.0836064   -0.2434818    0.4106946
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                  0.1264773   -0.2119202    0.4648748
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                  0.4068736    0.0483235    0.7654237
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                  0.0027273   -0.4045793    0.4100338
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.5041558    0.0985337    0.9097780
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                  0.2533395   -0.1125506    0.6192297
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                  0.0271390   -0.4515478    0.5058259
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0949075    0.0043947    0.1854204
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1044875    0.0218623    0.1871127
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0740001   -0.0044481    0.1524483
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.1393421    0.0527017    0.2259825
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.2057052    0.1180676    0.2933427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.1367904    0.0473443    0.2262366
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0956667    0.0162084    0.1751250
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0836950    0.0007465    0.1666436
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0159565   -0.0643028    0.0962157
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0054043   -0.0799917    0.0691830
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0448752   -0.0328889    0.1226392
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.5252941   -1.1397557    0.0891674
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.5579257   -1.1743223    0.0584709
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.4464846   -1.0914769    0.1985078
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.7326275   -1.4449638   -0.0202911
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.2902941   -0.9588604    0.3782722
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.4744118   -1.1505491    0.2017256
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.4657108   -1.0278536    0.0964320
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.7155719   -1.3510188   -0.0801249
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.2480441   -0.8877227    0.3916345
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.4019608   -1.1973252    0.3934036
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.1874095   -0.7652564    0.3904374
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.1754323   -0.9578623    0.6069977
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.6212662   -0.4859635    1.7284960
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2144481   -0.8626712    1.2915673
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.3246429   -1.0818169    0.4325312
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.1429762   -1.1000783    0.8141259
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.9833571    0.1236345    1.8430798
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.3620238   -0.6495812    1.3736288
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.0314683   -0.7928256    0.8557621
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.1498810   -0.6337200    0.9334819
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.3345238   -0.4278996    1.0969472
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0171218   -0.8975782    0.9318219
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.1302609   -0.6586770    0.3981553
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.1124737   -0.3640927    0.5890401
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                 -0.2567059   -0.8417317    0.3283200
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.5677143   -1.2779833    0.1425547
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                 -0.4517059   -1.1958995    0.2924877
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                 -0.1427143   -0.6390136    0.3535850
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                 -0.2815000   -0.8329881    0.2699881
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                 -0.4160000   -0.8922165    0.0602165
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                 -0.1285217   -0.6165817    0.3595382
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                 -0.4178333   -0.8909139    0.0552472
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                 -0.4117619   -0.9307177    0.1071939
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.2546345   -0.2684680    0.7777370
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.2263158   -0.2583174    0.7109490
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0085789   -0.5856818    0.6028397
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0787152   -0.6389107    0.4814803
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.3651711   -0.8919078    0.1615657
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.1536842   -0.3863131    0.6936815
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.5267544   -1.0405141   -0.0129947
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.0547368   -0.6787029    0.5692292
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                  0.1708289   -0.3353661    0.6770240
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.0831579   -0.5705461    0.4042303
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.1550789   -0.4887290    0.7988869
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.1405518   -0.6228475    0.3417438
24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0037692   -0.5401502    0.5326117
24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.1352308   -0.5828483    0.8533099
24 months   ki0047075b-MAL-ED          PERU                           5                    1                 -0.0382692   -0.5265977    0.4500592
24 months   ki0047075b-MAL-ED          PERU                           6                    1                 -0.0596978   -0.7878668    0.6684712
24 months   ki0047075b-MAL-ED          PERU                           7                    1                 -0.4100549   -0.8970487    0.0769388
24 months   ki0047075b-MAL-ED          PERU                           8                    1                 -0.0861859   -0.7719655    0.5995937
24 months   ki0047075b-MAL-ED          PERU                           9                    1                 -0.2600549   -0.6932538    0.1731439
24 months   ki0047075b-MAL-ED          PERU                           10                   1                 -0.0274359   -0.5232275    0.4683557
24 months   ki0047075b-MAL-ED          PERU                           11                   1                 -0.0181502   -0.5116514    0.4753510
24 months   ki0047075b-MAL-ED          PERU                           12                   1                 -0.2224359   -0.7223430    0.2774712
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.5265460    0.0386185    1.0144734
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.5416918    0.0710522    1.0123314
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.5901293   -0.0808766    1.2611352
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.1548793   -0.5837922    0.8935508
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.5133793   -0.0000328    1.0267914
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.8003793    0.3010038    1.2997549
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1278079   -0.5097455    0.7653613
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.6369675    0.0746697    1.1992654
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.2761520   -0.2489338    0.8012379
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.3978608   -0.0710720    0.8667936
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.3895936   -0.1086043    0.8877915
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1252632   -0.5975918    0.8481182
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.4968182   -0.1478172    1.1414536
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0406250   -0.7692659    0.8505159
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.5703571   -0.0713946    1.2121089
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.6657143    0.0684012    1.2630274
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.7732143    0.1242397    1.4221888
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.1966667   -0.6646302    1.0579635
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.6773333   -0.0621283    1.4167949
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.6182353   -0.0143880    1.2508586
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.7147619    0.0462140    1.3833098
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.7032692    0.0375863    1.3689521
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.2659921   -0.2212127    0.7531969
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.5034386    0.0172108    0.9896665
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.5071367    0.0799653    0.9343081
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.5589798    0.1479934    0.9699662
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.1609733   -0.3268989    0.6488455
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.4494390   -0.0273484    0.9262265
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.2420456   -0.2288474    0.7129386
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.2137067   -0.2706730    0.6980864
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.0566134   -0.4251944    0.5384212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.1926553   -0.1865632    0.5718739
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.0726539   -0.3596090    0.5049169
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                  0.0284444   -0.4281953    0.4850842
24 months   ki1000108-IRC              INDIA                          3                    1                 -0.1406207   -0.5855106    0.3042692
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.3242222   -0.7437525    0.0953080
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.5193016   -1.0432118    0.0046086
24 months   ki1000108-IRC              INDIA                          6                    1                 -0.3814286   -0.8280188    0.0651617
24 months   ki1000108-IRC              INDIA                          7                    1                 -0.2532037   -0.6885084    0.1821010
24 months   ki1000108-IRC              INDIA                          8                    1                 -0.4376911   -0.9014552    0.0260731
24 months   ki1000108-IRC              INDIA                          9                    1                 -0.3562778   -0.8320030    0.1194475
24 months   ki1000108-IRC              INDIA                          10                   1                 -0.2517368   -0.7183746    0.2149009
24 months   ki1000108-IRC              INDIA                          11                   1                 -0.2360244   -0.6757193    0.2036706
24 months   ki1000108-IRC              INDIA                          12                   1                 -0.2275102   -0.6295993    0.1745789
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
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.1164865   -0.0968421    0.3298150
24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.3024513    0.0893123    0.5155902
24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.1801214   -0.0338496    0.3940924
24 months   ki1101329-Keneba           GAMBIA                         5                    1                  0.2351484    0.0269809    0.4433158
24 months   ki1101329-Keneba           GAMBIA                         6                    1                  0.1608737   -0.0626349    0.3843824
24 months   ki1101329-Keneba           GAMBIA                         7                    1                  0.2023490   -0.0482810    0.4529790
24 months   ki1101329-Keneba           GAMBIA                         8                    1                 -0.2148858   -0.4800664    0.0502949
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 -0.1651784   -0.3884327    0.0580759
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.1501389   -0.3734847    0.0732070
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0471264   -0.2673909    0.1731381
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 -0.0541042   -0.3312463    0.2230380
24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                  0.1113911   -0.2974806    0.5202627
24 months   ki1119695-PROBIT           BELARUS                        3                    1                  0.0682236   -0.2941197    0.4305670
24 months   ki1119695-PROBIT           BELARUS                        4                    1                  0.0758445   -0.2201100    0.3717989
24 months   ki1119695-PROBIT           BELARUS                        5                    1                  0.1095289   -0.1307125    0.3497704
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0520685   -0.8172845    0.7131474
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0126758   -0.3316270    0.3062754
24 months   ki1119695-PROBIT           BELARUS                        8                    1                  0.0625997   -0.2530830    0.3782824
24 months   ki1119695-PROBIT           BELARUS                        9                    1                  0.0376701   -0.2104083    0.2857485
24 months   ki1119695-PROBIT           BELARUS                        10                   1                  0.0823434   -0.2266546    0.3913415
24 months   ki1119695-PROBIT           BELARUS                        11                   1                  0.0894643   -0.1529714    0.3319001
24 months   ki1119695-PROBIT           BELARUS                        12                   1                  0.0520221   -0.1975834    0.3016277
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0755000   -0.2640765    0.4150765
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 -0.0732313   -0.4388878    0.2924251
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.1513784   -0.1950865    0.4978433
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0070806   -0.4130976    0.3989363
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.3104375   -0.6689879    0.0481129
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 -0.2261667   -0.6337923    0.1814590
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 -0.0520926   -0.4424409    0.3382557
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 -0.8970000   -1.3221654   -0.4718345
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.1853000   -0.2710213    0.6416213
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                  0.0945000   -0.3595584    0.5485584
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                  0.0471667   -0.4696463    0.5639797
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0760123   -0.1823764    0.0303518
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1862526   -0.2898180   -0.0826871
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.3186959   -0.4303397   -0.2070520
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.3572489   -0.4810149   -0.2334830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.4327998   -0.5355105   -0.3300891
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.4329368   -0.5440241   -0.3218495
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.4918324   -0.6020743   -0.3815906
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.3997411   -0.5050149   -0.2944672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.3644957   -0.4655283   -0.2634631
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.2424746   -0.3345270   -0.1504223
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0956750   -0.1870307   -0.0043192
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1982093   -0.6009853    0.2045667
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.2758991    0.0106491    0.5411492
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.7775831   -1.3847921   -0.1703741
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0925069   -0.2827524    0.0977387
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0201069   -0.3518307    0.3116169
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.0362244   -0.1745749    0.2470236
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1388742   -0.2190784   -0.0586699
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1256715   -0.1743170   -0.0770260
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0944114   -0.2155875    0.4044104
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1111347   -0.7861515    0.5638822
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0877302   -0.2340455    0.4095059
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1957119   -0.2881084    0.6795322
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.0466461   -0.2653612    0.3586535
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2162648   -0.2081606    0.6406901
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2058245   -0.3015493    0.7131983
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.2893472   -0.1935923    0.7722867
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1166440   -0.5620972    0.3288091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4579387    0.3262917    0.5895856
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.3662629    0.1008168    0.6317089
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2218293    0.0550458    0.3886129
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0577513   -0.1068335    0.2223361
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1442912   -0.4968524    0.2082701
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.1282651   -0.4232608    0.6797910
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0208197   -0.0589402    0.1005796
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0605883   -0.1414521    0.0202756
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0926677   -0.1380862    0.3234216
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0765169    0.0215678    0.1314660
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0823643   -0.0754270    0.2401556
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.4154828   -0.8806371    0.0496715
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.1295879   -0.3951150    0.6542908
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.2442907   -0.6056767    0.1170952
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0098684   -0.3918380    0.3721012
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0953215   -0.4030352    0.2123923
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4212323    0.1038515    0.7386130
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5089486   -0.0139627    1.0318599
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.2814804   -0.0090498    0.5720106
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2528150   -0.5649899    0.0593599
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.1154448   -0.1408184    0.3717079
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0598210   -0.0918795    0.2115215
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0526063   -0.1814563    0.2866689
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0472709   -0.3173271    0.2227854
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2699516   -0.3376734   -0.2022298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0281088   -0.1775336    0.1213161

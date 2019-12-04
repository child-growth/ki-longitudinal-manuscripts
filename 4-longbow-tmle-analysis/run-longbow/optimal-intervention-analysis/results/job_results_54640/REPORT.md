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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          1628   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2          1411   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3          1715   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4          1254   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5           895   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6           918   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7          1052   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8          1382   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9          1863   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10         1913   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11         1905   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12         2078   18014
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1          1366   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2          1179   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3          1420   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4          1191   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5          1147   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6          1155   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7          1245   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8          1463   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9          1551   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10         1693   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11         1669   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12         1705   16784
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           705    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           608    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           726    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           538    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           394    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           561    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           649    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           647    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           726    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          885    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11          937    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12         1227    8603
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6f62a037-6f70-4c34-8bfe-7bb1fd411383/d94ec6e2-77b0-425b-bd0f-75b166879a90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3883113   -1.9176210   -0.8590015
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5045472   -0.9320063   -0.0770881
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.0725149   -1.6282132   -0.5168167
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0941808   -0.2891424    0.1007809
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8910393   -1.1524598   -0.6296188
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7776531   -1.0520901   -0.5032162
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0161873   -1.3005328   -0.7318419
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2641628   -0.3602395   -0.1680862
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6343991   -0.6920815   -0.5767166
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2079187   -0.5274374    0.9432748
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5430252   -0.0329012    1.1189515
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2003017   -1.7028362   -0.6977673
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3558204   -0.0247604    0.7364012
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9961017    0.4567636    1.5354398
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           1.1973928    0.8143087    1.5804769
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3619630   -0.1810284    0.9049545
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3643965   -0.8288531    0.1000602
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0287456   -0.8132759    0.8707671
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3378347   -0.6848812    0.0092117
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2770113   -0.6345928    0.0805701
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2575345    0.0866810    0.4283880
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0652386   -0.1116141    0.2420913
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.2613922   -0.6850501    0.1622658
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.7538663    0.2840621    1.2236705
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.4989186    0.4081384    0.5896989
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3059580    0.2113696    0.4005463
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.7115637    0.3625057    1.0606216
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5309957   -0.5979214   -0.4640699
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3139941   -0.4630750   -0.1649132
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6120897   -1.1875427   -0.0366366
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7514184   -0.2577266    1.7605635
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7588526   -1.2001171   -0.3175881
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4318915   -0.7798664   -0.0839165
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3393673   -1.2754429    0.5967082
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4844001    0.1374285    0.8313717
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1074461   -0.4430243    0.2281321
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6432475   -0.9336926   -0.3528024
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6529581   -0.8909588   -0.4149574
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8693921   -1.2180294   -0.5207548
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5672114   -0.7106291   -0.4237937
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.5972361    0.4501209    0.7443513
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2818385   -0.5836097    0.0199327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0804587   -1.1580495   -1.0028680
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0480253   -1.1545905   -0.9414600


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2349454   -1.2972413   -1.1726496
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5154897   -0.5413479   -0.4896314
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.4464508   -0.0576610    0.9505627
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.4525297    0.0371132    0.8679461
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0619318   -0.4799488    0.6038125
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5758646   -0.7847183   -0.3670108
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4588824   -0.7148946   -0.2028702
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4572923   -0.7229683   -0.1916163
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1286760   -0.3018987    0.0445467
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2513268   -0.3437721   -0.1588816
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1434282   -0.1965121   -0.0903443
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3455950   -1.0595065    0.3683165
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4290522   -0.1309336    0.9890380
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.4923039    0.0190666    0.9655411
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2453896   -0.6192841    0.1285049
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0567799   -0.4523483    0.5659080
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6552144   -1.0201533   -0.2902754
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1742583   -0.3425422    0.6910588
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1382802   -0.5831165    0.3065561
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6276753   -1.4441856    0.1888349
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3278737   -0.5557358   -0.1000116
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1703925   -0.5129756    0.1721907
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1766013   -0.3430879   -0.0101147
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2498424   -0.4205711   -0.0791136
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1773788   -0.2264196    0.5811772
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.3145655   -0.1513237    0.7804547
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0803252    0.0170857    0.1435648
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0045935   -0.0851711    0.0943580
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2616233   -0.6045178    0.0812713
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0625205   -0.1265786    0.0015377
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0758114   -0.2245262    0.0729034
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2072028   -0.7509585    0.3365529
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2887952   -1.2664683    0.6888780
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1927994   -0.6197879    0.2341892
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0569792   -0.2822158    0.3961742
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.4505655   -0.4477623    1.3488933
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0753700   -0.4119405    0.2612005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1622436   -0.1576280    0.4821152
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0860969   -0.1941402    0.3663341
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0928569   -0.3299531    0.1442393
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0421869   -0.3776482    0.2932744
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2427176   -0.3806428   -0.1047924
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0901934   -0.0405701    0.2209570
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2340677   -0.0615055    0.5296408
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2173444   -0.2920909   -0.1425978
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1750835   -0.2789552   -0.0712118

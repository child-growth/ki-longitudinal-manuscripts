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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     2            21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     3            26     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     4            21     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     5            17     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             8     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     7            13     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     8            27     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     9            18     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     10           20     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     11           13     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     12           26     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1             5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         2             8      65
Birth       ki0047075b-MAL-ED          BRAZIL                         3             9      65
Birth       ki0047075b-MAL-ED          BRAZIL                         4             5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         5             2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         6             5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         7             5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         8             7      65
Birth       ki0047075b-MAL-ED          BRAZIL                         9             7      65
Birth       ki0047075b-MAL-ED          BRAZIL                         10            4      65
Birth       ki0047075b-MAL-ED          BRAZIL                         11            5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         12            3      65
Birth       ki0047075b-MAL-ED          INDIA                          1             2      47
Birth       ki0047075b-MAL-ED          INDIA                          2             3      47
Birth       ki0047075b-MAL-ED          INDIA                          3             5      47
Birth       ki0047075b-MAL-ED          INDIA                          4             7      47
Birth       ki0047075b-MAL-ED          INDIA                          5             2      47
Birth       ki0047075b-MAL-ED          INDIA                          6             3      47
Birth       ki0047075b-MAL-ED          INDIA                          7             3      47
Birth       ki0047075b-MAL-ED          INDIA                          8             7      47
Birth       ki0047075b-MAL-ED          INDIA                          9             4      47
Birth       ki0047075b-MAL-ED          INDIA                          10            6      47
Birth       ki0047075b-MAL-ED          INDIA                          11            4      47
Birth       ki0047075b-MAL-ED          INDIA                          12            1      47
Birth       ki0047075b-MAL-ED          NEPAL                          1             1      27
Birth       ki0047075b-MAL-ED          NEPAL                          2             3      27
Birth       ki0047075b-MAL-ED          NEPAL                          3             1      27
Birth       ki0047075b-MAL-ED          NEPAL                          4             2      27
Birth       ki0047075b-MAL-ED          NEPAL                          5             2      27
Birth       ki0047075b-MAL-ED          NEPAL                          6             3      27
Birth       ki0047075b-MAL-ED          NEPAL                          7             1      27
Birth       ki0047075b-MAL-ED          NEPAL                          8             1      27
Birth       ki0047075b-MAL-ED          NEPAL                          9             3      27
Birth       ki0047075b-MAL-ED          NEPAL                          10            3      27
Birth       ki0047075b-MAL-ED          NEPAL                          11            5      27
Birth       ki0047075b-MAL-ED          NEPAL                          12            2      27
Birth       ki0047075b-MAL-ED          PERU                           1            25     233
Birth       ki0047075b-MAL-ED          PERU                           2            21     233
Birth       ki0047075b-MAL-ED          PERU                           3            21     233
Birth       ki0047075b-MAL-ED          PERU                           4            14     233
Birth       ki0047075b-MAL-ED          PERU                           5            19     233
Birth       ki0047075b-MAL-ED          PERU                           6            15     233
Birth       ki0047075b-MAL-ED          PERU                           7            20     233
Birth       ki0047075b-MAL-ED          PERU                           8            14     233
Birth       ki0047075b-MAL-ED          PERU                           9            20     233
Birth       ki0047075b-MAL-ED          PERU                           10           20     233
Birth       ki0047075b-MAL-ED          PERU                           11           29     233
Birth       ki0047075b-MAL-ED          PERU                           12           15     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             8     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2            13     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3            11     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4             7     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5             5     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6             7     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7            14     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8             4     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9            10     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10           10     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11           15     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12           19     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             8     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            15     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            16     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             7     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            10     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            10     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            15     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             7     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             2     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            9     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           15     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           11     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             9      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             8      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             9      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5            11      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6            10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             7      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             4      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             8      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10           10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11           11      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            4      92
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
Birth       ki1000109-EE               PAKISTAN                       1            57     240
Birth       ki1000109-EE               PAKISTAN                       2            50     240
Birth       ki1000109-EE               PAKISTAN                       3            29     240
Birth       ki1000109-EE               PAKISTAN                       4            11     240
Birth       ki1000109-EE               PAKISTAN                       5             0     240
Birth       ki1000109-EE               PAKISTAN                       6             0     240
Birth       ki1000109-EE               PAKISTAN                       7             0     240
Birth       ki1000109-EE               PAKISTAN                       8             0     240
Birth       ki1000109-EE               PAKISTAN                       9             0     240
Birth       ki1000109-EE               PAKISTAN                       10            0     240
Birth       ki1000109-EE               PAKISTAN                       11           44     240
Birth       ki1000109-EE               PAKISTAN                       12           49     240
Birth       ki1000109-ResPak           PAKISTAN                       1             0      42
Birth       ki1000109-ResPak           PAKISTAN                       2             2      42
Birth       ki1000109-ResPak           PAKISTAN                       3             1      42
Birth       ki1000109-ResPak           PAKISTAN                       4             1      42
Birth       ki1000109-ResPak           PAKISTAN                       5             8      42
Birth       ki1000109-ResPak           PAKISTAN                       6             7      42
Birth       ki1000109-ResPak           PAKISTAN                       7             9      42
Birth       ki1000109-ResPak           PAKISTAN                       8             8      42
Birth       ki1000109-ResPak           PAKISTAN                       9             4      42
Birth       ki1000109-ResPak           PAKISTAN                       10            1      42
Birth       ki1000109-ResPak           PAKISTAN                       11            1      42
Birth       ki1000109-ResPak           PAKISTAN                       12            0      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            82    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            72    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          3            80    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          4            63    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          5            80    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          6           102    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          7           101    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          8           145    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          9           148    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          10          138    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          11          122    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          12          119    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     1            65     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     2            58     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     3            61     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     4            52     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     5            45     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     6            43     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     7            46     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     8            42     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     9            34     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     10           60     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     11           50     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     12           52     608
Birth       ki1101329-Keneba           GAMBIA                         1           138    1543
Birth       ki1101329-Keneba           GAMBIA                         2           163    1543
Birth       ki1101329-Keneba           GAMBIA                         3           147    1543
Birth       ki1101329-Keneba           GAMBIA                         4           165    1543
Birth       ki1101329-Keneba           GAMBIA                         5           105    1543
Birth       ki1101329-Keneba           GAMBIA                         6           108    1543
Birth       ki1101329-Keneba           GAMBIA                         7            89    1543
Birth       ki1101329-Keneba           GAMBIA                         8            76    1543
Birth       ki1101329-Keneba           GAMBIA                         9           125    1543
Birth       ki1101329-Keneba           GAMBIA                         10          124    1543
Birth       ki1101329-Keneba           GAMBIA                         11          179    1543
Birth       ki1101329-Keneba           GAMBIA                         12          124    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          1             0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2             0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3             0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          4             1     696
Birth       ki1113344-GMS-Nepal        NEPAL                          5             0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          6           160     696
Birth       ki1113344-GMS-Nepal        NEPAL                          7           265     696
Birth       ki1113344-GMS-Nepal        NEPAL                          8           270     696
Birth       ki1113344-GMS-Nepal        NEPAL                          9             0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          10            0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          11            0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          12            0     696
Birth       ki1114097-CMIN             BANGLADESH                     1             1      26
Birth       ki1114097-CMIN             BANGLADESH                     2             6      26
Birth       ki1114097-CMIN             BANGLADESH                     3             2      26
Birth       ki1114097-CMIN             BANGLADESH                     4             1      26
Birth       ki1114097-CMIN             BANGLADESH                     5             3      26
Birth       ki1114097-CMIN             BANGLADESH                     6             0      26
Birth       ki1114097-CMIN             BANGLADESH                     7             0      26
Birth       ki1114097-CMIN             BANGLADESH                     8             7      26
Birth       ki1114097-CMIN             BANGLADESH                     9             2      26
Birth       ki1114097-CMIN             BANGLADESH                     10            1      26
Birth       ki1114097-CMIN             BANGLADESH                     11            3      26
Birth       ki1114097-CMIN             BANGLADESH                     12            0      26
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
Birth       ki1119695-PROBIT           BELARUS                        1           859   13890
Birth       ki1119695-PROBIT           BELARUS                        2           791   13890
Birth       ki1119695-PROBIT           BELARUS                        3           968   13890
Birth       ki1119695-PROBIT           BELARUS                        4           956   13890
Birth       ki1119695-PROBIT           BELARUS                        5           957   13890
Birth       ki1119695-PROBIT           BELARUS                        6          1007   13890
Birth       ki1119695-PROBIT           BELARUS                        7          1281   13890
Birth       ki1119695-PROBIT           BELARUS                        8          1327   13890
Birth       ki1119695-PROBIT           BELARUS                        9          1313   13890
Birth       ki1119695-PROBIT           BELARUS                        10         1511   13890
Birth       ki1119695-PROBIT           BELARUS                        11         1397   13890
Birth       ki1119695-PROBIT           BELARUS                        12         1523   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1          1349   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2          1041   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3          1144   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4          1014   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5          1004   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6          1135   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7          1179   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8          1232   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9          1322   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10         1047   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11         1140   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12         1268   13875
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          2490   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2          2020   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3          2391   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4          1750   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5          1311   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6          1357   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7          1546   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8          2065   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9          2742   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10         2910   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11         2968   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12         3117   26667
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2           333    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3           396    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4           467    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5           449    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6           357    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7           358    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8           247    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9           150    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10           66    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0    2823
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            28     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3            26     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4            29     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5            42     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6            37     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7            33     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8            41     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9            21     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10           19     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11           41     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12           28     369
6 months    ki1000108-IRC              INDIA                          1            35     407
6 months    ki1000108-IRC              INDIA                          2            29     407
6 months    ki1000108-IRC              INDIA                          3            29     407
6 months    ki1000108-IRC              INDIA                          4            24     407
6 months    ki1000108-IRC              INDIA                          5            20     407
6 months    ki1000108-IRC              INDIA                          6            35     407
6 months    ki1000108-IRC              INDIA                          7            36     407
6 months    ki1000108-IRC              INDIA                          8            41     407
6 months    ki1000108-IRC              INDIA                          9            30     407
6 months    ki1000108-IRC              INDIA                          10           38     407
6 months    ki1000108-IRC              INDIA                          11           41     407
6 months    ki1000108-IRC              INDIA                          12           49     407
6 months    ki1000109-EE               PAKISTAN                       1            90     373
6 months    ki1000109-EE               PAKISTAN                       2            72     373
6 months    ki1000109-EE               PAKISTAN                       3            46     373
6 months    ki1000109-EE               PAKISTAN                       4            22     373
6 months    ki1000109-EE               PAKISTAN                       5             0     373
6 months    ki1000109-EE               PAKISTAN                       6             0     373
6 months    ki1000109-EE               PAKISTAN                       7             0     373
6 months    ki1000109-EE               PAKISTAN                       8             0     373
6 months    ki1000109-EE               PAKISTAN                       9             0     373
6 months    ki1000109-EE               PAKISTAN                       10            0     373
6 months    ki1000109-EE               PAKISTAN                       11           60     373
6 months    ki1000109-EE               PAKISTAN                       12           83     373
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           161    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           142    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           145    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           174    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           198    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          196    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          187    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          201    2029
6 months    ki1101329-Keneba           GAMBIA                         1           184    2089
6 months    ki1101329-Keneba           GAMBIA                         2           210    2089
6 months    ki1101329-Keneba           GAMBIA                         3           185    2089
6 months    ki1101329-Keneba           GAMBIA                         4           224    2089
6 months    ki1101329-Keneba           GAMBIA                         5           186    2089
6 months    ki1101329-Keneba           GAMBIA                         6           149    2089
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           830    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           609    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3           736    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4           680    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5           636    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6           680    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7           675    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8           768    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9           801    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10          628    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11          761    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12          865    8669
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1          1340   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2          1153   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3          1398   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4          1173   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5          1128   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6          1188   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7          1259   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8          1493   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9          1613   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10         1681   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11         1723   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12         1604   16753
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            28     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            24     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3            26     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4            29     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5            43     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6            36     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7            33     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8            41     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9            22     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10           19     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11           41     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12           29     371
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
24 months   ki1000109-EE               PAKISTAN                       1            28     167
24 months   ki1000109-EE               PAKISTAN                       2             2     167
24 months   ki1000109-EE               PAKISTAN                       3             2     167
24 months   ki1000109-EE               PAKISTAN                       4             0     167
24 months   ki1000109-EE               PAKISTAN                       5             0     167
24 months   ki1000109-EE               PAKISTAN                       6             0     167
24 months   ki1000109-EE               PAKISTAN                       7             0     167
24 months   ki1000109-EE               PAKISTAN                       8             0     167
24 months   ki1000109-EE               PAKISTAN                       9             0     167
24 months   ki1000109-EE               PAKISTAN                       10            0     167
24 months   ki1000109-EE               PAKISTAN                       11           57     167
24 months   ki1000109-EE               PAKISTAN                       12           78     167
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
24 months   ki1101329-Keneba           GAMBIA                         1           150    1725
24 months   ki1101329-Keneba           GAMBIA                         2           160    1725
24 months   ki1101329-Keneba           GAMBIA                         3           159    1725
24 months   ki1101329-Keneba           GAMBIA                         4           175    1725
24 months   ki1101329-Keneba           GAMBIA                         5           182    1725
24 months   ki1101329-Keneba           GAMBIA                         6           132    1725
24 months   ki1101329-Keneba           GAMBIA                         7           101    1725
24 months   ki1101329-Keneba           GAMBIA                         8            92    1725
24 months   ki1101329-Keneba           GAMBIA                         9           135    1725
24 months   ki1101329-Keneba           GAMBIA                         10          150    1725
24 months   ki1101329-Keneba           GAMBIA                         11          178    1725
24 months   ki1101329-Keneba           GAMBIA                         12          111    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          1             0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2             0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3             0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          4             0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          5             0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          6            73     488
24 months   ki1113344-GMS-Nepal        NEPAL                          7           200     488
24 months   ki1113344-GMS-Nepal        NEPAL                          8           215     488
24 months   ki1113344-GMS-Nepal        NEPAL                          9             0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          10            0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          11            0     488
24 months   ki1113344-GMS-Nepal        NEPAL                          12            0     488
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1           190    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2           189    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3           214    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4           179    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5           164    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6           199    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7           124    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8           130    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9            17    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10           25    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11           67    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12          142    1640
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           680    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           560    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           710    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           508    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           386    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           590    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           668    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           624    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           773    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          870    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11         1011    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12         1185    8565
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
![](/tmp/90e3412f-6b09-4b36-b2c0-125acb9e3bdb/3d80a857-bae4-4640-bd27-f5b8578c88f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0481674   -1.4053873   -0.6909475
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6964933   -1.3616483   -0.0313384
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2228135   -1.0582395    0.6126124
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4250081   -1.5716194   -1.2783969
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5214225   -0.9029493   -0.1398958
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1068002   -0.3254505    0.1118502
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.4594155    1.2596932    1.6591378
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3213692   -0.3866205   -0.2561178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1243044   -1.2238527   -1.0247561
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.5027276   -1.9475152   -1.0579400
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0565157   -0.4920091    0.3789777
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8472452   -1.2324779   -0.4620125
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9975771   -1.3198869   -0.6752673
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5389697   -2.1652938   -0.9126457
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7337524   -1.1876380   -0.2798668
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.8769371   -2.2696828   -1.4841915
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.6714974   -2.2423069   -1.1006879
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.0838849   -1.6472572   -0.5205126
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.5182755   -1.7407625   -1.2957885
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0960641   -1.4020130   -0.7901153
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1132521   -0.3223990    0.0958948
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9847751   -1.1403270   -0.8292233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.2179785   -1.5501150   -0.8858420
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.9664139   -1.4065606   -0.5262671
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2050050    0.0602285    0.3497815
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7134491   -0.7981926   -0.6287055
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7665339   -1.9689153   -1.5641525
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2535089   -1.3217551   -1.1852628
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3101817   -1.4357490   -1.1846144
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9641486   -2.3560573   -1.5722399
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3394281   -0.2584139    0.9372702
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -2.1796565   -2.9002672   -1.4590459
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2402017   -1.6716762   -0.8087272
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.8105722   -2.4442692   -1.1768751
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3868312   -1.8996077   -0.8740547
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.1636849   -3.7542694   -2.5731003
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.6409854   -3.0064934   -2.2754775
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6725749   -1.9766044   -1.3685454
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.2199315   -2.8694629   -1.5704001
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4154658   -1.5903245   -1.2406071
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1659896   -0.0456713    0.3776505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.7877425   -2.0461512   -1.5293338
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.9150864   -2.2064301   -1.6237426
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9759781   -2.0675315   -1.8844246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5932336   -1.7164565   -1.4700108


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1729576   -1.2009629   -1.1449523
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679450   -0.8935071   -0.8423828
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3355900   -1.3586765   -1.3125035
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5774356   -1.6272400   -1.5276311
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6055701   -1.6625562   -1.5485840
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0195844   -2.0472504   -1.9919183
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0699278   -0.4231361    0.2832804
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1862964   -0.8232422    0.4506495
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0852277   -0.8901184    0.7196630
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0064136   -0.1028433    0.0900162
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4095972   -0.7741427   -0.0450516
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1376038   -0.0710085    0.3462160
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1324709   -0.2346682   -0.0302737
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1789033   -0.2415445   -0.1162620
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0486532   -0.1449919    0.0476856
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2972366   -0.1219986    0.7164718
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1075364   -0.3202609    0.5353337
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3641248   -0.7351047    0.0068550
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4365178    0.1185068    0.7545288
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2108745   -0.3879773    0.8097263
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3301649   -0.7790848    0.1187550
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5081922    0.1370526    0.8793317
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2480466   -0.2955167    0.7916100
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1505213   -0.6855060    0.3844634
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1164192   -0.1236668    0.3565052
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3113179   -0.6028599   -0.0197759
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4301868   -0.6293068   -0.2310668
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0806382   -0.0692675    0.2305439
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3439223   -0.6613917   -0.0264528
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.6524922    0.1888816    1.1161027
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0980064   -0.2164868    0.0204740
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1544959   -0.2345209   -0.0744709
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1063432   -0.0876745    0.3003609
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0820811   -0.1455333   -0.0186289
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0346123   -0.1573811    0.0881564
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0147665   -0.3918028    0.3622698
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3323275   -0.9151236    0.2504685
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2948107   -0.3987789    0.9884003
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0716623   -0.4860552    0.3427305
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0560946   -0.5480915    0.6602807
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2623495   -0.7661847    0.2414857
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5185213   -0.0432210    1.0802636
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0821175   -0.2694236    0.4336587
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1262026   -0.4182578    0.1658526
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0008736   -0.6296760    0.6314232
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1619697   -0.3303014    0.0063619
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2973944   -0.5882170   -0.0065718
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1821724   -0.0693245    0.4336692
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0289378   -0.2623008    0.3201764
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0436063   -0.1317229    0.0445104
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1874882   -0.3100654   -0.0649110

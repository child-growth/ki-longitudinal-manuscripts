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
Birth       ki1101329-Keneba           GAMBIA                         1             1      13
Birth       ki1101329-Keneba           GAMBIA                         2             3      13
Birth       ki1101329-Keneba           GAMBIA                         3             0      13
Birth       ki1101329-Keneba           GAMBIA                         4             3      13
Birth       ki1101329-Keneba           GAMBIA                         5             0      13
Birth       ki1101329-Keneba           GAMBIA                         6             0      13
Birth       ki1101329-Keneba           GAMBIA                         7             0      13
Birth       ki1101329-Keneba           GAMBIA                         8             1      13
Birth       ki1101329-Keneba           GAMBIA                         9             2      13
Birth       ki1101329-Keneba           GAMBIA                         10            2      13
Birth       ki1101329-Keneba           GAMBIA                         11            1      13
Birth       ki1101329-Keneba           GAMBIA                         12            0      13
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0b890154-d661-466f-b362-78751fa2cd13/bd078773-e1c8-4c72-a8ea-1af9f57fec60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0b890154-d661-466f-b362-78751fa2cd13/bd078773-e1c8-4c72-a8ea-1af9f57fec60/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0b890154-d661-466f-b362-78751fa2cd13/bd078773-e1c8-4c72-a8ea-1af9f57fec60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1885714   -1.6180992   -0.7590437
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.3861905   -1.8437395   -0.9286414
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.1592308   -1.5228053   -0.7956562
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.7347619   -1.1421886   -0.3273352
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.3058824   -1.8008814   -0.8108833
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.3650000   -2.1871543   -0.5428457
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.1138462   -1.7428633   -0.4848290
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -1.2559259   -1.6760825   -0.8357694
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.1872222   -1.6895543   -0.6848901
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.0980000   -1.5303574   -0.6656426
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.7915385   -1.2756515   -0.3074254
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.9042308   -1.2645004   -0.5439611
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.0204000   -1.3856198   -0.6551802
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                -1.0657143   -1.4593131   -0.6721154
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                -1.1100000   -1.4844154   -0.7355846
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                -0.6571429   -1.2495842   -0.0647015
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                -0.9289474   -1.3517521   -0.5061427
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                -0.2973333   -0.7382816    0.1436149
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.9195000   -1.3267010   -0.5122990
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.7200000   -1.1074636   -0.3325364
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.6330000   -0.8903534   -0.3756466
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                -0.6765000   -0.9309254   -0.4220746
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -1.1696552   -1.5106046   -0.8287058
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                -0.9733333   -1.4894073   -0.4572594
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.6331707   -1.8864174   -1.3799241
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.4441667   -1.6712373   -1.2170960
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -1.6612500   -1.9080911   -1.4144089
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -1.2831746   -1.4934224   -1.0729268
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -1.5215000   -1.8817017   -1.1612983
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.2572549   -1.4259902   -1.0885196
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -1.3955446   -1.6478516   -1.1432375
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -1.6299310   -1.9118747   -1.3479874
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -1.2392568   -1.4651029   -1.0134106
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -1.3607971   -1.6033488   -1.1182454
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.3365574   -1.5140822   -1.1590325
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -1.5041176   -1.6738705   -1.3343648
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.2216923   -1.5158550   -0.9275296
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -1.1143103   -1.3643644   -0.8642563
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.7659016   -1.0362649   -0.4955384
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.9211538   -1.2354452   -0.6068625
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.5197778   -0.8843004   -0.1552552
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.8637209   -1.2151092   -0.5123327
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -1.0510870   -1.3419023   -0.7602716
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.9385714   -1.2012615   -0.6758813
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.7247059   -1.1518170   -0.2975948
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.9285000   -1.2339345   -0.6230655
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -1.1056000   -1.3681457   -0.8430543
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.8359615   -1.1056377   -0.5662853
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 1.4009139    1.1699162    1.6319115
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                 1.2011125    0.9817305    1.4204946
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                 1.3584349    1.1562975    1.5605724
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                 1.3797490    1.1916404    1.5678575
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                 1.4600209    1.2593806    1.6606612
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                 1.2710675    1.1094050    1.4327301
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                 1.3975410    1.1997627    1.5953193
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                 1.3219668    1.1561154    1.4878183
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                 1.2785567    1.0614914    1.4956221
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                 1.3427929    1.1766640    1.5089217
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                 1.2962563    1.1608311    1.4316815
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                 1.2498424    1.0986552    1.4010296
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7270571   -0.7923115   -0.6618026
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.7640442   -0.8392260   -0.6888624
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.6254895   -0.6958104   -0.5551687
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.5973866   -0.6745965   -0.5201766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.5358466   -0.6182787   -0.4534145
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.4682115   -0.5464250   -0.3899979
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.4361154   -0.5104560   -0.3617747
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.3212338   -0.3864698   -0.2559977
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.3425719   -0.4013754   -0.2837683
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.3816332   -0.4522613   -0.3110051
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.3748246   -0.4438661   -0.3057831
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.4611199   -0.5276128   -0.3946269
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2788594   -1.3535192   -1.2041997
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.1899059   -1.2680904   -1.1117215
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.0931117   -1.1628854   -1.0233380
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.0309543   -1.1045243   -0.9573843
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.0249275   -1.1240369   -0.9258182
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.0267354   -1.1282233   -0.9252476
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.0098577   -1.1012978   -0.9184176
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.1190993   -1.1988883   -1.0393102
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.0685230   -1.1395562   -0.9974898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.2239622   -1.2927970   -1.1551274
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.3683625   -1.4307946   -1.3059305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.3190343   -1.3794677   -1.2586009
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1594737   -1.4915305   -0.8274169
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -1.5395833   -1.8613671   -1.2177996
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.3132609   -1.5996341   -1.0268876
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.0136806   -1.5025897   -0.5247714
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.1988235   -1.6754173   -0.7222297
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -1.3312500   -1.7045063   -0.9579937
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.1735294   -1.6660776   -0.6809813
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -1.4019333   -1.8110767   -0.9927900
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.1622222   -1.4845666   -0.8398778
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.3118182   -1.7828572   -0.8407791
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.9683333   -1.2903894   -0.6462773
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.9239744   -1.2486400   -0.5993087
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0739286   -0.4718428    0.6197000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.1472917   -0.3410365    0.6356199
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.3640000   -0.1638398    0.8918398
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.2630556   -0.1346351    0.6607462
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.2314706   -0.2549703    0.7179115
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.0532143   -0.5545201    0.4480915
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.3418750   -1.0433046    0.3595546
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.0963333   -0.6442853    0.4516187
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                -0.0803175   -0.5573402    0.3967053
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.1082692   -0.4279358    0.2113974
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.3386275   -0.0158037    0.6930586
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                -0.0029630   -0.4887487    0.4828228
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1585556   -1.6251377   -0.6919734
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -1.2572464   -1.4506389   -1.0638538
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.8391270   -1.2030586   -0.4751953
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -1.1014815   -1.5066317   -0.6963313
6 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -1.3537500   -2.0896616   -0.6178384
6 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -1.0863889   -1.3975548   -0.7752229
6 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -1.3634921   -1.7542263   -0.9727579
6 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -1.4909524   -1.8984524   -1.0834524
6 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -1.2225397   -1.7026574   -0.7424220
6 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -1.0578472   -1.4814356   -0.6342588
6 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -1.3052083   -1.7453758   -0.8650409
6 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -1.3375000   -1.6639192   -1.0110808
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7797500   -1.2365994   -0.3229006
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.7502500   -1.0839552   -0.4165448
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.9362500   -1.3218683   -0.5506317
6 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.5967500   -1.0696595   -0.1238405
6 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.3119444   -0.6401423    0.0162534
6 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.7225000   -1.1164467   -0.3285533
6 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.3278947   -0.6897165    0.0339270
6 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.6724561   -1.0494715   -0.2954408
6 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.4078333   -0.7274860   -0.0881806
6 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.3995833   -0.8012903    0.0021236
6 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.4037500   -0.7282596   -0.0792404
6 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.3927500   -0.7505672   -0.0349328
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.1501010   -1.4414612   -0.8587408
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                -1.4890385   -1.8269556   -1.1511214
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                -1.4145455   -1.7904426   -1.0386483
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                -1.0169444   -1.5961506   -0.4377383
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                -1.1864583   -1.4700417   -0.9028750
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                -1.1830000   -1.5961228   -0.7698772
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                -1.4250758   -1.6895040   -1.1606476
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                -1.0791667   -1.4720768   -0.6862565
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                -1.2836364   -1.6458619   -0.9214108
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                -1.3502500   -1.7388207   -0.9616793
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                -1.7758824   -2.0892988   -1.4624659
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                -1.2561458   -1.7075961   -0.8046955
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.4156250   -1.7893129   -1.0419371
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.1408586   -1.4420402   -0.8396770
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.8067647   -1.2878938   -0.3256356
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.4108333   -0.9067524    0.0850857
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -1.1050000   -1.7301647   -0.4798353
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.3608333   -0.7228693    0.0012026
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -1.1342000   -1.4688482   -0.7995518
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.3428571   -1.9363294   -0.7493849
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.9022549   -1.3628176   -0.4416922
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.1068182   -1.5476316   -0.6660048
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -1.2447126   -1.6910791   -0.7983462
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -1.1758602   -1.5348200   -0.8169004
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5016667   -1.9934949   -1.0098384
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.2875000   -1.5890084   -0.9859916
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.7371739   -2.1308512   -1.3434967
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -1.5050000   -1.9625862   -1.0474138
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -1.2779167   -1.7549084   -0.8009249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -1.2387500   -1.6730267   -0.8044733
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -1.1182143   -1.4621063   -0.7743223
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -1.1745833   -1.7269090   -0.6222577
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -1.4461111   -1.9170680   -0.9751542
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -1.3771930   -1.8018287   -0.9525572
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -1.6233333   -1.9544195   -1.2922471
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -1.1650000   -1.5470592   -0.7829408
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.7288690   -2.1676498   -1.2900883
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -1.5949306   -2.1270295   -1.0628316
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -1.4169872   -1.9335820   -0.9003924
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -1.1358046   -1.6148209   -0.6567883
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -1.1722619   -1.6084195   -0.7361043
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -1.4782432   -1.9225416   -1.0339449
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -1.5231818   -2.0937385   -0.9526251
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -2.0312195   -2.4119273   -1.6505117
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -1.4528571   -2.0079913   -0.8977230
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -1.1721053   -1.6499924   -0.6942182
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -1.1469106   -1.5746652   -0.7191559
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -1.1252976   -1.6000917   -0.6505035
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.4165238   -1.8637472   -0.9693004
6 months    ki1000108-IRC              INDIA                          2                    NA                -1.5922989   -2.1228456   -1.0617521
6 months    ki1000108-IRC              INDIA                          3                    NA                -1.4791379   -1.8666687   -1.0916071
6 months    ki1000108-IRC              INDIA                          4                    NA                -1.7407639   -2.2202179   -1.2613099
6 months    ki1000108-IRC              INDIA                          5                    NA                -2.0870000   -2.5832705   -1.5907295
6 months    ki1000108-IRC              INDIA                          6                    NA                -0.6462857   -1.1525160   -0.1400555
6 months    ki1000108-IRC              INDIA                          7                    NA                -1.0390278   -1.4605124   -0.6175431
6 months    ki1000108-IRC              INDIA                          8                    NA                -0.8591057   -1.2063493   -0.5118621
6 months    ki1000108-IRC              INDIA                          9                    NA                -0.6890000   -1.3803402    0.0023402
6 months    ki1000108-IRC              INDIA                          10                   NA                -0.9683772   -1.2431325   -0.6936219
6 months    ki1000108-IRC              INDIA                          11                   NA                -1.2602439   -1.6616056   -0.8588822
6 months    ki1000108-IRC              INDIA                          12                   NA                -1.5479252   -1.8531318   -1.2427185
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.4733954   -0.6559963   -0.2907946
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.6812500   -0.8653866   -0.4971134
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.7358161   -0.9200981   -0.5515341
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.7586398   -0.9001328   -0.6171469
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.6863131   -0.8390683   -0.5335579
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.5401786   -0.6904313   -0.3899258
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.7686988   -0.9252242   -0.6121733
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.4764677   -0.6164973   -0.3364380
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9501721   -1.1148669   -0.7854773
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.8079817   -0.9647181   -0.6512454
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.8203601   -0.9756827   -0.6650374
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.9549081   -1.0948947   -0.8149214
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                -0.8509342   -1.0044078   -0.6974606
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                -0.8932058   -1.0502213   -0.7361904
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                -0.9783721   -1.1985675   -0.7581767
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                -0.9251860   -1.1537013   -0.6966706
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                -0.9876269   -1.1371619   -0.8380920
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                -1.0334606   -1.2000109   -0.8669102
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                -0.9112956   -1.0537952   -0.7687959
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                -0.7735650   -0.9324702   -0.6146598
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9185301   -1.0016261   -0.8354341
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8637931   -0.9595251   -0.7680611
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.9735190   -1.0705483   -0.8764897
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.9073971   -0.9953418   -0.8194523
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.9559119   -1.0489156   -0.8629083
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.9003676   -0.9933105   -0.8074248
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.9399556   -1.0298096   -0.8501015
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.8152865   -0.8974130   -0.7331599
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.7954619   -0.8735163   -0.7174076
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.8160430   -0.9109772   -0.7211088
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.8597043   -0.9439874   -0.7754213
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.7139306   -0.7985515   -0.6293098
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3114328   -1.3787541   -1.2441116
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3169818   -1.3830343   -1.2509293
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.3018741   -1.3683465   -1.2354017
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.2534101   -1.3215252   -1.1852950
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.3262943   -1.3983224   -1.2542662
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.3090236   -1.3765346   -1.2415126
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.2998094   -1.3652214   -1.2343973
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.3510985   -1.4113236   -1.2908733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.3149845   -1.3763033   -1.2536657
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.3745092   -1.4360209   -1.3129975
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.4370633   -1.4917676   -1.3823589
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.3694264   -1.4272708   -1.3115821
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.7752941   -2.1216751   -1.4289131
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -2.5764706   -3.0450914   -2.1078498
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -2.2536842   -2.6145062   -1.8928622
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.7023810   -2.0855157   -1.3192462
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -2.2146667   -2.6980588   -1.7312746
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -2.0655556   -2.6273661   -1.5037450
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.7682353   -2.2149612   -1.3215094
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -2.1245833   -2.5881982   -1.6609685
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -2.0461111   -2.3421049   -1.7501173
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -1.8735000   -2.3626684   -1.3843316
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -1.9577778   -2.4009912   -1.5145644
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -1.6230769   -1.8974906   -1.3486632
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2903571   -0.9736714    0.3929571
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.2110526   -0.7421586    0.3200533
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.3181818   -0.5342764    1.1706401
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.3763636    0.0252828    0.7274444
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.5946667    0.2183672    0.9709661
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.0650000   -0.5525097    0.6825097
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.4910000   -1.3441735    0.3621735
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.2937500   -1.0287169    0.4412169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.0227778   -0.4675300    0.5130855
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.0438095   -0.4128658    0.3252467
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0220833   -0.3652819    0.4094485
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.0476471   -0.5139356    0.6092297
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7266667   -2.2292181   -1.2241152
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -2.1215217   -2.4545368   -1.7885066
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -1.5315789   -1.9010498   -1.1621081
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -1.9379412   -2.3484715   -1.5274109
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -2.1092857   -2.9141099   -1.3044615
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.4802941   -1.7813367   -1.1792515
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -1.7559524   -2.2165258   -1.2953790
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -2.0650000   -2.5401875   -1.5898125
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -2.0905000   -2.5354746   -1.6455254
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -1.8706522   -2.3110641   -1.4302402
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -2.0985417   -2.4784666   -1.7186168
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -1.8007143   -2.1136172   -1.4878114
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5592105   -1.9721341   -1.1462870
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -1.7391667   -2.0824906   -1.3958427
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -1.7950000   -2.1634004   -1.4265996
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -1.4325000   -1.8813261   -0.9836739
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -1.2447059   -1.6347906   -0.8546212
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -1.3390000   -1.8216800   -0.8563200
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -1.0042105   -1.2842451   -0.7241760
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -1.2544444   -1.6243291   -0.8845597
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.9273684   -1.2285532   -0.6261837
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.9562500   -1.3584784   -0.5540216
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -1.2444737   -1.5991390   -0.8898084
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -1.2715000   -1.7670552   -0.7759448
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.9321154   -2.3062472   -1.5579836
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -1.8926087   -2.1806094   -1.6046079
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -1.5670000   -1.9560096   -1.1779904
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                -1.9560000   -2.5485648   -1.3634352
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                -1.8180556   -2.2651424   -1.3709687
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                -1.4650000   -2.1793985   -0.7506015
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -1.8560714   -2.0982710   -1.6138719
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                -1.6212500   -2.0224939   -1.2200061
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                -1.4654762   -1.7933819   -1.1375705
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                -1.3673333   -1.6889195   -1.0457471
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                -1.9638095   -2.3099671   -1.6176520
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                -2.0516667   -2.4390196   -1.6643137
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.1201724   -2.4484022   -1.7919427
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -1.8050000   -2.2283369   -1.3816631
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -1.5290625   -2.1030899   -0.9550351
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.9725000   -1.4659815   -0.4790185
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -1.2120000   -1.7844623   -0.6395377
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.9050000   -1.3737785   -0.4362215
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -1.7186000   -2.1017660   -1.3354340
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -1.9314286   -2.6914065   -1.1714506
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -1.3761765   -1.7502615   -1.0020915
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -1.5986364   -2.0460324   -1.1512403
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -1.8872222   -2.2721432   -1.5023013
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -1.7512500   -2.1278212   -1.3746788
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.8144444   -3.3153571   -2.3135318
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -2.4807895   -2.8838106   -2.0777683
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -3.0786364   -3.5544322   -2.6028405
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -3.0025000   -3.8281191   -2.1768809
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -2.4885714   -2.9701159   -2.0070269
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -2.5685714   -2.9473188   -2.1898241
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -2.4869643   -2.8819597   -2.0919689
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -2.3908333   -2.9903245   -1.7913422
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -2.4690000   -2.8968644   -2.0411356
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -2.7023529   -3.0700683   -2.3346376
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -2.9002381   -3.2760889   -2.5243873
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -2.4428846   -2.8454506   -2.0403186
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.6429762   -2.9438285   -2.3421239
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -2.5489583   -2.9628863   -2.1350304
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -2.8792949   -3.2813933   -2.4771965
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -2.3956322   -2.6727327   -2.1185317
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -2.6744186   -2.9813595   -2.3674777
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -2.8120833   -3.1222614   -2.5019053
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -2.2937879   -2.6710868   -1.9164890
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -2.5269512   -2.8107764   -2.2431261
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -2.7187121   -3.1282796   -2.3091446
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -2.3394737   -2.6376540   -2.0412934
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -2.3123577   -2.6240066   -2.0007089
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -2.5939080   -2.9451674   -2.2426487
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.9621905   -2.2967219   -1.6276590
24 months   ki1000108-IRC              INDIA                          2                    NA                -1.9323333   -2.2681987   -1.5964680
24 months   ki1000108-IRC              INDIA                          3                    NA                -2.0402874   -2.3817199   -1.6988548
24 months   ki1000108-IRC              INDIA                          4                    NA                -2.0728472   -2.4179878   -1.7277066
24 months   ki1000108-IRC              INDIA                          5                    NA                -2.5671429   -3.0209173   -2.1133684
24 months   ki1000108-IRC              INDIA                          6                    NA                -1.4919524   -1.7585839   -1.2253209
24 months   ki1000108-IRC              INDIA                          7                    NA                -1.7137037   -1.9706626   -1.4567448
24 months   ki1000108-IRC              INDIA                          8                    NA                -1.5254472   -1.8073455   -1.2435488
24 months   ki1000108-IRC              INDIA                          9                    NA                -1.7062778   -2.1031748   -1.3093808
24 months   ki1000108-IRC              INDIA                          10                   NA                -1.6264474   -1.8792715   -1.3736233
24 months   ki1000108-IRC              INDIA                          11                   NA                -1.6400000   -1.9136157   -1.3663843
24 months   ki1000108-IRC              INDIA                          12                   NA                -1.8273129   -2.1173070   -1.5373188
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.1472619   -2.4910162   -1.8035076
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -2.2077315   -2.4488043   -1.9666587
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -2.1214634   -2.4521233   -1.7908035
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -2.4640196   -2.8608434   -2.0671959
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -2.3275490   -2.6487794   -2.0063186
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -2.2943889   -2.5870980   -2.0016798
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -2.2209459   -2.5972344   -1.8446575
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -2.3602778   -2.6879851   -2.0325704
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.9163158   -2.5615286   -1.2711030
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -2.1387917   -2.5114648   -1.7661186
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -2.2714837   -2.6137489   -1.9292186
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -2.1224815   -2.4447548   -1.8002081
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.5393722   -1.7454350   -1.3333094
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.4963062   -1.6548732   -1.3377393
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -1.5686216   -1.7317251   -1.4055181
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                -1.6606238   -1.8191037   -1.5021439
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                -1.6064377   -1.7448245   -1.4680509
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                -1.6714104   -1.8382024   -1.5046183
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                -1.6759917   -1.8850286   -1.4669549
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                -1.5782430   -1.7865721   -1.3699140
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                -1.4125210   -1.5850676   -1.2399743
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                -1.5966133   -1.7672101   -1.4260166
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                -1.6221320   -1.7697695   -1.4744945
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                -1.4806156   -1.6783773   -1.2828540
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.5050263   -1.6676712   -1.3423814
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.5762963   -1.7563165   -1.3962761
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -1.5723131   -1.7361248   -1.4085014
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -1.5797765   -1.7241101   -1.4354430
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -1.5527744   -1.7463094   -1.3592394
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -1.5859296   -1.7477069   -1.4241524
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -1.9005645   -2.1172695   -1.6838595
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -1.6400000   -1.8336057   -1.4463943
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -1.5658824   -1.8073317   -1.3244330
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -1.4972000   -1.7874824   -1.2069176
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -1.6516418   -1.9715670   -1.3317166
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -1.6631690   -1.8312571   -1.4950809
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.9675610   -2.2693780   -1.6657439
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -1.6719318   -1.8471898   -1.4966738
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -1.7262857   -1.9533715   -1.4992000
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                -1.9996835   -2.2461281   -1.7532390
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -1.9570313   -2.1630760   -1.7509865
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -2.1334375   -2.3802450   -1.8866300
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -1.8656098   -2.1616769   -1.5695426
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -1.6453704   -1.8510820   -1.4396588
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                -1.7285000   -2.1070678   -1.3499322
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                -1.6212000   -1.9268349   -1.3155651
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -1.9500000   -2.3423196   -1.5576804
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -2.3941667   -2.9514739   -1.8368594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1238824   -2.2011976   -2.0465671
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -2.1140357   -2.1980778   -2.0299936
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -2.0000282   -2.0831770   -1.9168793
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.8954921   -1.9879843   -1.8030000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -2.0330829   -2.1515189   -1.9146469
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.9272712   -2.0149934   -1.8395489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.8878743   -1.9708712   -1.8048773
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.9546314   -2.0387053   -1.8705575
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.9481371   -2.0257226   -1.8705517
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.9668506   -2.0446047   -1.8890965
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -2.1228882   -2.1887626   -2.0570139
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -2.1272152   -2.1939869   -2.0604435
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7600000   -1.8855244   -1.6344756
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -1.8442638   -1.9634512   -1.7250764
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -1.8312469   -1.9454241   -1.7170697
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -1.8894022   -1.9680088   -1.8107957
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -1.7898748   -1.8913815   -1.6883681
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -1.7078723   -1.8241674   -1.5915773
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -1.8665262   -1.9437620   -1.7892904
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -1.6465678   -1.7464118   -1.5467238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -1.6902921   -1.7876340   -1.5929502
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -1.5918478   -1.7147013   -1.4689943
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                -1.7248630   -1.8965888   -1.5531372
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                -1.7115493   -1.8273001   -1.5957985


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1729576   -1.2009629   -1.1449523
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679450   -0.8935071   -0.8423828
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3355900   -1.3586765   -1.3125035
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5774356   -1.6272400   -1.5276311
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6055701   -1.6625562   -1.5485840
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0195844   -2.0472504   -1.9919183
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.1976190   -0.8251899    0.4299518
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0293407   -0.5334031    0.5920844
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.4538095   -0.1382129    1.0458320
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.1173109   -0.7726873    0.5380654
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.1764286   -1.1040232    0.7511661
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0747253   -0.6869549    0.8364054
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0673545   -0.6682085    0.5334995
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.0013492   -0.6595832    0.6622816
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0905714   -0.5188767    0.7000195
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.3970330   -0.2501606    1.0442265
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.2843407   -0.2762735    0.8449549
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                 -0.0453143   -0.5822552    0.4916266
Birth       ki0047075b-MAL-ED          PERU                           3                    1                 -0.0896000   -0.6126415    0.4334415
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.3632571   -0.3327114    1.0592257
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.0914526   -0.4672506    0.6501559
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.7230667    0.1505102    1.2956231
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.1009000   -0.4460901    0.6478901
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.3004000   -0.2320599    0.8328599
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.3874000   -0.0593844    0.8341844
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.3439000   -0.1012042    0.7890042
Birth       ki0047075b-MAL-ED          PERU                           11                   1                 -0.1492552   -0.6488870    0.3503767
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.0470667   -0.5851658    0.6792991
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.1890041   -0.1662842    0.5442923
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                 -0.0280793   -0.3356531    0.2794945
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.3499961   -0.0493472    0.7493395
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.1116707   -0.4542951    0.6776366
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.3759158    0.0330903    0.7187413
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.2376262   -0.0957396    0.5709920
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.0032397   -0.1755810    0.1820604
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.3939140    0.1073231    0.6805048
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.2723736    0.1601276    0.3846196
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.2966134   -0.0281503    0.6213770
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.1290531   -0.2319190    0.4900252
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.1073820   -0.2786993    0.4934632
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.4557907    0.0562559    0.8553254
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.3005385   -0.1299389    0.7310158
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.7019145    0.2335040    1.1703251
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.3579714   -0.1002921    0.8162349
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.1706054   -0.2430434    0.5842541
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.2831209   -0.1112619    0.6775037
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.4969864   -0.0216229    1.0155957
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.2931923   -0.1308618    0.7172464
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.1160923   -0.2781943    0.5103789
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.3857308   -0.0133393    0.7848009
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                 -0.1998013   -0.3388721   -0.0607306
Birth       ki1119695-PROBIT           BELARUS                        3                    1                 -0.0424789   -0.2155316    0.1305738
Birth       ki1119695-PROBIT           BELARUS                        4                    1                 -0.0211649   -0.1928323    0.1505025
Birth       ki1119695-PROBIT           BELARUS                        5                    1                  0.0591070   -0.1300205    0.2482346
Birth       ki1119695-PROBIT           BELARUS                        6                    1                 -0.1298463   -0.3240505    0.0643579
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0033729   -0.2348307    0.2280850
Birth       ki1119695-PROBIT           BELARUS                        8                    1                 -0.0789470   -0.2896933    0.1317992
Birth       ki1119695-PROBIT           BELARUS                        9                    1                 -0.1223571   -0.3562561    0.1115419
Birth       ki1119695-PROBIT           BELARUS                        10                   1                 -0.0581210   -0.2659330    0.1496910
Birth       ki1119695-PROBIT           BELARUS                        11                   1                 -0.1046576   -0.2755512    0.0662360
Birth       ki1119695-PROBIT           BELARUS                        12                   1                 -0.1510714   -0.3283941    0.0262513
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0369871   -0.1365383    0.0625641
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.1015676    0.0056344    0.1975007
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.1296705    0.0285789    0.2307621
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.1912105    0.0860763    0.2963446
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.2588456    0.1569854    0.3607058
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.2909417    0.1920242    0.3898593
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.4058233    0.3135526    0.4980940
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.3844852    0.2966444    0.4723260
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.3454238    0.2492653    0.4415824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.3522325    0.2572332    0.4472318
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2659372    0.1727736    0.3591008
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0889535   -0.0151981    0.1931051
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1857478    0.0868158    0.2846797
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.2479052    0.1443826    0.3514277
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.2539319    0.1298766    0.3779872
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.2521240    0.1283232    0.3759247
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.2690017    0.1518146    0.3861889
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1597602    0.0553406    0.2641798
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.2103365    0.1140760    0.3065970
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0548972   -0.0397312    0.1495257
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0895031   -0.1843237    0.0053175
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0401749   -0.1297879    0.0494381
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.3801096   -0.8425018    0.0822825
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.1537872   -0.5922747    0.2847004
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.1457931   -0.4452178    0.7368040
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0393498   -0.6202141    0.5415145
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.1717763   -0.6713581    0.3278055
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0140557   -0.6080805    0.5799690
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.2424596   -0.7693942    0.2844749
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0027485   -0.4655310    0.4600339
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1523445   -0.7286599    0.4239709
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.1911404   -0.2714413    0.6537220
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.2354993   -0.2289029    0.6999016
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0733631   -0.6589830    0.8057092
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.2900714   -0.4691922    1.0493351
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1891270   -0.4861687    0.8644227
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.1575420   -0.5735470    0.8886311
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.1271429   -0.8682055    0.6139198
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.4158036   -1.3045498    0.4729427
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.1702619   -0.9436427    0.6031189
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.1542460   -0.8791027    0.5706106
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.1821978   -0.8146954    0.4502998
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.2646989   -0.3860606    0.9154583
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.0768915   -0.8075448    0.6537618
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0986908   -0.6037647    0.4063830
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.3194286   -0.2723021    0.9111592
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.0570741   -0.5608625    0.6750106
6 months    ki0047075b-MAL-ED          INDIA                          5                    1                 -0.1951944   -1.0665524    0.6761635
6 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.0721667   -0.4886570    0.6329903
6 months    ki0047075b-MAL-ED          INDIA                          7                    1                 -0.2049365   -0.8135186    0.4036455
6 months    ki0047075b-MAL-ED          INDIA                          8                    1                 -0.3323968   -0.9518766    0.2870829
6 months    ki0047075b-MAL-ED          INDIA                          9                    1                 -0.0639841   -0.7334704    0.6055022
6 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.1007083   -0.5294710    0.7308877
6 months    ki0047075b-MAL-ED          INDIA                          11                   1                 -0.1466528   -0.7880936    0.4947880
6 months    ki0047075b-MAL-ED          INDIA                          12                   1                 -0.1789444   -0.7483726    0.3904837
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0295000   -0.5362478    0.5952478
6 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1565000   -0.7543401    0.4413401
6 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1830000   -0.4745369    0.8405369
6 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.4678056   -0.0947113    1.0303224
6 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0572500   -0.5459957    0.6604957
6 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.4518553   -0.1309194    1.0346299
6 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.1072939   -0.4850337    0.6996214
6 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.3719167   -0.1856577    0.9294911
6 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.3801667   -0.2281752    0.9885085
6 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.3760000   -0.1843729    0.9363729
6 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.3870000   -0.1932969    0.9672969
6 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                 -0.3389375   -0.7851198    0.1072449
6 months    ki0047075b-MAL-ED          PERU                           3                    1                 -0.2644444   -0.7400382    0.2111493
6 months    ki0047075b-MAL-ED          PERU                           4                    1                  0.1331566   -0.5152033    0.7815164
6 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.0363573   -0.4429410    0.3702263
6 months    ki0047075b-MAL-ED          PERU                           6                    1                 -0.0328990   -0.5384296    0.4726316
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.2749747   -0.6684376    0.1184881
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.0709343   -0.4182171    0.5600858
6 months    ki0047075b-MAL-ED          PERU                           9                    1                 -0.1335354   -0.5983989    0.3313282
6 months    ki0047075b-MAL-ED          PERU                           10                   1                 -0.2001490   -0.6858217    0.2855237
6 months    ki0047075b-MAL-ED          PERU                           11                   1                 -0.6257813   -1.0537073   -0.1978554
6 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.1060448   -0.6433512    0.4312616
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2747664   -0.2051846    0.7547174
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.6088603   -0.0003423    1.2180629
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  1.0047917    0.3838421    1.6257412
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.3106250   -0.4177111    1.0389611
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  1.0547917    0.5344911    1.5750922
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.2814250   -0.2202043    0.7830543
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0727679   -0.6285537    0.7740894
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.5133701   -0.0797240    1.1064642
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.3088068   -0.2690851    0.8866987
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.1709124   -0.4112265    0.7530512
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.2397648   -0.2784000    0.7579296
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2141667   -0.3627235    0.7910569
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.2355072   -0.8654888    0.3944744
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0033333   -0.6751072    0.6684406
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.2237500   -0.4613895    0.9088895
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.2629167   -0.3932017    0.9190350
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3834524   -0.2166782    0.9835830
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.3270833   -0.4124832    1.0666499
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0555556   -0.6253963    0.7365074
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.1244737   -0.5253036    0.7742510
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1216667   -0.7145521    0.4712187
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.3366667   -0.2861209    0.9594542
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.1339385   -0.5557410    0.8236180
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.3118819   -0.3659078    0.9896715
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.5930644   -0.0565394    1.2426683
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.5566071   -0.0620705    1.1752848
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.2506258   -0.3738176    0.8750692
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.2056872   -0.5140791    0.9254535
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.3023505   -0.8832696    0.2785686
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.2760119   -0.4315914    0.9836152
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.5567638   -0.0920078    1.2055354
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.5819585   -0.0308242    1.1947411
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.6035714   -0.0429253    1.2500681
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 -0.1757750   -0.8696688    0.5181188
6 months    ki1000108-IRC              INDIA                          3                    1                 -0.0626141   -0.6543817    0.5291535
6 months    ki1000108-IRC              INDIA                          4                    1                 -0.3242401   -0.9798962    0.3314160
6 months    ki1000108-IRC              INDIA                          5                    1                 -0.6704762   -1.3385280   -0.0024244
6 months    ki1000108-IRC              INDIA                          6                    1                  0.7702381    0.0947547    1.4457215
6 months    ki1000108-IRC              INDIA                          7                    1                  0.3774960   -0.2370429    0.9920350
6 months    ki1000108-IRC              INDIA                          8                    1                  0.5574181   -0.0087858    1.1236220
6 months    ki1000108-IRC              INDIA                          9                    1                  0.7275238   -0.0958595    1.5509071
6 months    ki1000108-IRC              INDIA                          10                   1                  0.4481466   -0.0767336    0.9730269
6 months    ki1000108-IRC              INDIA                          11                   1                  0.1562799   -0.4446361    0.7571959
6 months    ki1000108-IRC              INDIA                          12                   1                 -0.1314014   -0.6728438    0.4100411
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0632866   -0.2987112    0.1721381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.2711411   -0.5077589   -0.0345234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.3257072   -0.5624382   -0.0889763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.3485310   -0.5537185   -0.1433434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.2762043   -0.4893142   -0.0630943
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.1300697   -0.3413931    0.0812537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.3585899   -0.5744183   -0.1427615
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0663588   -0.2705401    0.1378225
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.1421904   -0.0851654    0.3695462
6 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.1298120   -0.0965715    0.3561956
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 -0.0047360   -0.2208856    0.2114137
6 months    ki1101329-Keneba           GAMBIA                         5                    1                  0.0992379   -0.1258810    0.3243568
6 months    ki1101329-Keneba           GAMBIA                         6                    1                  0.0569663   -0.1705820    0.2845146
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 -0.0282000   -0.3031734    0.2467735
6 months    ki1101329-Keneba           GAMBIA                         8                    1                  0.0249861   -0.2566939    0.3066662
6 months    ki1101329-Keneba           GAMBIA                         9                    1                 -0.0374548   -0.2599073    0.1849976
6 months    ki1101329-Keneba           GAMBIA                         10                   1                 -0.0832885   -0.3175178    0.1509409
6 months    ki1101329-Keneba           GAMBIA                         11                   1                  0.0388765   -0.1789090    0.2566621
6 months    ki1101329-Keneba           GAMBIA                         12                   1                  0.1766071   -0.0522493    0.4054635
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0547370   -0.0720288    0.1815028
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0549889   -0.1827372    0.0727594
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0111331   -0.1098596    0.1321258
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0373818   -0.1621000    0.0873364
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.0181625   -0.1065104    0.1428353
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0214254   -0.1438129    0.1009620
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.1032437   -0.0135884    0.2200757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.1230682    0.0090619    0.2370745
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.1024871   -0.0236773    0.2286515
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0588258   -0.0595321    0.1771836
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.2045995    0.0860008    0.3231981
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0055490   -0.0968066    0.0857087
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0095587   -0.0831464    0.1022639
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0580228   -0.0349006    0.1509461
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0148615   -0.1116273    0.0819043
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0024093   -0.0898039    0.0946225
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0116235   -0.0807429    0.1039898
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0396656   -0.1255497    0.0462184
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.0035517   -0.0905990    0.0834957
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.0630764   -0.1505398    0.0243871
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1256304   -0.2113359   -0.0399250
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0579936   -0.1472770    0.0312898
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.8011765   -1.3839159   -0.2184371
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.4783901   -0.9785624    0.0217822
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0729132   -0.4435866    0.5894130
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.4393725   -1.0340554    0.1553103
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.2902614   -0.9502697    0.3697468
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0070588   -0.5582232    0.5723409
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.3492892   -0.9280107    0.2294323
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.2708170   -0.7264398    0.1848058
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0982059   -0.6975935    0.5011818
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.1824837   -0.7449941    0.3800267
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1522172   -0.2896908    0.5941252
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0793045   -0.7861386    0.9447477
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.6085390   -0.4839826    1.7010605
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.6667208   -0.1015084    1.4349499
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.8850238    0.1049471    1.6651005
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.3553571   -0.5656404    1.2763547
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.2006429   -1.2937226    0.8924369
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.0033929   -1.0069340    1.0001482
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.3131349   -0.5278883    1.1541581
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.2465476   -0.5300609    1.0231562
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.3124405   -0.4730340    1.0979149
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.3380042   -0.5464693    1.2224777
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.3948551   -0.9977291    0.2080189
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.1950877   -0.4286644    0.8188398
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                 -0.2112745   -0.8601914    0.4376424
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.3826190   -1.3314605    0.5662224
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.2463725   -0.3394471    0.8321922
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0292857   -0.7109644    0.6523930
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                 -0.3383333   -1.0299699    0.3533032
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                 -0.3638333   -1.0350713    0.3074046
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                 -0.1439855   -0.8122075    0.5242365
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                 -0.3718750   -1.0018757    0.2581257
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                 -0.0740476   -0.6660495    0.5179543
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1799561   -0.7169638    0.3570515
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.2357895   -0.7891652    0.3175863
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.1267105   -0.4831671    0.7365882
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                  0.3145046   -0.2535376    0.8825468
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                  0.2202105   -0.4149948    0.8554159
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.5550000    0.0560759    1.0539241
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                  0.3047661   -0.2495989    0.8591311
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                  0.6318421    0.1207471    1.1429371
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                  0.6029605    0.0265115    1.1794096
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                  0.3147368   -0.2295915    0.8590652
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.2877105   -0.3573327    0.9327538
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0395067   -0.4326363    0.5116497
24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.3651154   -0.1746097    0.9048404
24 months   ki0047075b-MAL-ED          PERU                           4                    1                 -0.0238846   -0.7246753    0.6769061
24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.1140598   -0.4689164    0.6970361
24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.4671154   -0.3393212    1.2735519
24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.0760440   -0.3696412    0.5217291
24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.3108654   -0.2377431    0.8594739
24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.4666392   -0.0308513    0.9641296
24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.5647821    0.0714340    1.0581301
24 months   ki0047075b-MAL-ED          PERU                           11                   1                 -0.0316941   -0.5413996    0.4780113
24 months   ki0047075b-MAL-ED          PERU                           12                   1                 -0.1195513   -0.6580835    0.4189809
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.3151724   -0.2205037    0.8508486
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.5911099   -0.0701331    1.2523529
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  1.1476724    0.5550016    1.7403433
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.9081724    0.2482877    1.5680571
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  1.2151724    0.6429067    1.7874382
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.4015724   -0.1029580    0.9061028
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1887438   -0.6390854    1.0165731
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.7439959    0.2463270    1.2416649
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.5215361   -0.0333495    1.0764216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.2329502   -0.2729143    0.7388147
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.3689224   -0.1306180    0.8684628
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.3336550   -0.3092599    0.9765698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.2641919   -0.9550575    0.4266736
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1880556   -1.1537472    0.7776361
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.3258730   -0.3689641    1.0207101
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.2458730   -0.3821103    0.8738563
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3274802   -0.3104343    0.9653946
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.4236111   -0.3576079    1.2048301
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.3454444   -0.3133282    1.0042171
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.1120915   -0.5093005    0.7334835
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0857937   -0.7120343    0.5404470
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.3715598   -0.2710698    1.0141895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0940179   -0.4176934    0.6057291
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.2363187   -0.7385091    0.2658718
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.2473440   -0.1616753    0.6563633
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.0314424   -0.4612387    0.3983538
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.1691071   -0.6012212    0.2630069
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.3491883   -0.1333742    0.8317508
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.1160250   -0.2975797    0.5296296
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.0757359   -0.5839265    0.4324546
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.3035025   -0.1200817    0.7270867
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.3306185   -0.1025525    0.7637894
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.0490681   -0.4134199    0.5115562
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                  0.0298571   -0.4441859    0.5039002
24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0780969   -0.5561005    0.3999068
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.1106567   -0.5913160    0.3700025
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.6049524   -1.1687099   -0.0411949
24 months   ki1000108-IRC              INDIA                          6                    1                  0.4702381    0.0424488    0.8980273
24 months   ki1000108-IRC              INDIA                          7                    1                  0.2484868   -0.1733416    0.6703151
24 months   ki1000108-IRC              INDIA                          8                    1                  0.4367433   -0.0007244    0.8742110
24 months   ki1000108-IRC              INDIA                          9                    1                  0.2559127   -0.2631620    0.7749874
24 months   ki1000108-IRC              INDIA                          10                   1                  0.3357431   -0.0835793    0.7550656
24 months   ki1000108-IRC              INDIA                          11                   1                  0.3221905   -0.1099864    0.7543673
24 months   ki1000108-IRC              INDIA                          12                   1                  0.1348776   -0.3078502    0.5776053
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0604696   -0.4803304    0.3593912
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0257985   -0.4511742    0.5027712
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.3167577   -0.8417682    0.2082528
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.1802871   -0.6507719    0.2901977
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.1471270   -0.5986196    0.3043657
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.0736840   -0.5833506    0.4359825
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.2130159   -0.6879465    0.2619147
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.2309461   -0.5001261    0.9620183
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0084702   -0.4985329    0.5154734
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.1242218   -0.6093119    0.3608683
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0247804   -0.4464171    0.4959779
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0430660   -0.2169443    0.3030763
24 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0292494   -0.2920509    0.2335521
24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.1212516   -0.3812088    0.1387056
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 -0.0670655   -0.3152847    0.1811537
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 -0.1320381   -0.3971447    0.1330684
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 -0.1366195   -0.4301468    0.1569078
24 months   ki1101329-Keneba           GAMBIA                         8                    1                 -0.0388708   -0.3318945    0.2541529
24 months   ki1101329-Keneba           GAMBIA                         9                    1                  0.1268512   -0.1419130    0.3956155
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.0572411   -0.3247577    0.2102755
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0827598   -0.3362528    0.1707332
24 months   ki1101329-Keneba           GAMBIA                         12                   1                  0.0587566   -0.2268507    0.3443640
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0712700   -0.3138821    0.1713422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0672868   -0.2981280    0.1635544
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.0747502   -0.2922026    0.1427022
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0477481   -0.3005507    0.2050545
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.0809033   -0.3103053    0.1484986
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3955382   -0.6664892   -0.1245872
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.1349737   -0.3878304    0.1178831
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0608560   -0.3519765    0.2302645
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.0078263   -0.3249157    0.3405684
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1466155   -0.5055103    0.2122793
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.1581427   -0.3920379    0.0757525
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.2956292   -0.0533822    0.6446405
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                  0.2412753   -0.1364303    0.6189808
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 -0.0321226   -0.4217743    0.3575291
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                  0.0105297   -0.3549124    0.3759719
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.1658765   -0.5557579    0.2240049
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                  0.1019512   -0.3208363    0.5247388
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.3221906   -0.0430638    0.6874450
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.2390610   -0.2450951    0.7232171
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.3463610   -0.0831809    0.7759028
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                  0.0175610   -0.4774221    0.5125440
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.4266057   -1.0603919    0.2071805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0098466   -0.0977846    0.1174778
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1238542    0.0134261    0.2342822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.2283902    0.1065432    0.3502372
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0907995   -0.0509694    0.2325683
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1966112    0.0842334    0.3089889
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.2360081    0.1231481    0.3488681
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1692509    0.0563998    0.2821020
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.1757452    0.0674142    0.2840763
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.1570318    0.0489439    0.2651197
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0009941   -0.0971746    0.0991628
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0033328   -0.1039199    0.0972543
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0842638   -0.2513471    0.0828195
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0712469   -0.2377173    0.0952235
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 -0.1294022   -0.2723217    0.0135172
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.0298748   -0.1897380    0.1299884
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.0521277   -0.1207385    0.2249938
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.1065262   -0.2557211    0.0426687
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.1134322   -0.0489483    0.2758127
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.0697079   -0.0825369    0.2219526
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.1681522   -0.0081654    0.3444697
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.0351370   -0.1787566    0.2490306
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.0484507   -0.1188098    0.2157112


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0704762   -0.3406507   0.4816031
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.1376103   -0.2066644   0.4818850
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.4648999    0.0244288   0.9053711
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2017490   -0.0211633   0.4246614
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.2906726    0.0151712   0.5661739
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -0.0739693   -0.2372087   0.0892701
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2267846    0.1647186   0.2888507
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1059018    0.0381698   0.1736339
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0460173   -0.3726055   0.2805708
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0229078   -0.5508363   0.5050206
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0528145   -0.5045472   0.3989182
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.2186907   -0.2126388   0.6500201
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1779942   -0.4538273   0.0978388
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.3517077    0.0041995   0.6992158
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1329217   -0.3314612   0.5973046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.3054183   -0.1226384   0.7334749
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.1821176   -0.2455357   0.6097709
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1204967   -0.1687735   0.4097668
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0619179   -0.2188523   0.3426881
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1333300   -0.2752736   0.0086136
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0460352   -0.1107255   0.2027959
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1095860   -0.4491361   0.2299642
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.7059773   -1.4819268   0.0699723
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1201520   -0.0053647   0.2456687
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0505851   -0.0283842   0.1295545
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0829180   -0.3299398   0.1641038
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0241572   -0.0868755   0.0385611
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0327531   -0.1089413   0.1744475
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2036210   -0.5453370   0.1380951
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.2974577   -0.3490813   0.9439968
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1581791   -0.6427071   0.3263488
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.2473465   -0.1481331   0.6428261
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1776378   -0.1664065   0.5216821
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4709917    0.1551845   0.7867989
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1692809   -0.3071090   0.6456708
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0841083   -0.2104272   0.3786438
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1634130   -0.1552111   0.4820371
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0717960   -0.3967179   0.2531259
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0380633   -0.2318614   0.1557347
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1422102   -0.6700431   0.3856226
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1005438   -0.2540734   0.0529858
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0814124   -0.2097210   0.3725459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1042980    0.0310359   0.1775601
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0207218   -0.1460293   0.1045857

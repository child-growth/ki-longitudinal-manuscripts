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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              19     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              21     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              21     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              19     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              17     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               7     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              13     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              23     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              16     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             20     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             15     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             24     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1               5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         2              10      62
Birth       ki0047075b-MAL-ED          BRAZIL                         3               7      62
Birth       ki0047075b-MAL-ED          BRAZIL                         4               4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         5               1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         6               5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         7               6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         8               6      62
Birth       ki0047075b-MAL-ED          BRAZIL                         9               5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         10              5      62
Birth       ki0047075b-MAL-ED          BRAZIL                         11              4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         12              4      62
Birth       ki0047075b-MAL-ED          INDIA                          1               2      45
Birth       ki0047075b-MAL-ED          INDIA                          2               6      45
Birth       ki0047075b-MAL-ED          INDIA                          3               3      45
Birth       ki0047075b-MAL-ED          INDIA                          4               5      45
Birth       ki0047075b-MAL-ED          INDIA                          5               4      45
Birth       ki0047075b-MAL-ED          INDIA                          6               2      45
Birth       ki0047075b-MAL-ED          INDIA                          7               3      45
Birth       ki0047075b-MAL-ED          INDIA                          8               8      45
Birth       ki0047075b-MAL-ED          INDIA                          9               4      45
Birth       ki0047075b-MAL-ED          INDIA                          10              5      45
Birth       ki0047075b-MAL-ED          INDIA                          11              3      45
Birth       ki0047075b-MAL-ED          INDIA                          12              0      45
Birth       ki0047075b-MAL-ED          NEPAL                          1               2      26
Birth       ki0047075b-MAL-ED          NEPAL                          2               2      26
Birth       ki0047075b-MAL-ED          NEPAL                          3               1      26
Birth       ki0047075b-MAL-ED          NEPAL                          4               2      26
Birth       ki0047075b-MAL-ED          NEPAL                          5               3      26
Birth       ki0047075b-MAL-ED          NEPAL                          6               2      26
Birth       ki0047075b-MAL-ED          NEPAL                          7               2      26
Birth       ki0047075b-MAL-ED          NEPAL                          8               1      26
Birth       ki0047075b-MAL-ED          NEPAL                          9               2      26
Birth       ki0047075b-MAL-ED          NEPAL                          10              4      26
Birth       ki0047075b-MAL-ED          NEPAL                          11              4      26
Birth       ki0047075b-MAL-ED          NEPAL                          12              1      26
Birth       ki0047075b-MAL-ED          PERU                           1              29     228
Birth       ki0047075b-MAL-ED          PERU                           2              17     228
Birth       ki0047075b-MAL-ED          PERU                           3              20     228
Birth       ki0047075b-MAL-ED          PERU                           4              14     228
Birth       ki0047075b-MAL-ED          PERU                           5              21     228
Birth       ki0047075b-MAL-ED          PERU                           6              11     228
Birth       ki0047075b-MAL-ED          PERU                           7              19     228
Birth       ki0047075b-MAL-ED          PERU                           8              16     228
Birth       ki0047075b-MAL-ED          PERU                           9              19     228
Birth       ki0047075b-MAL-ED          PERU                           10             21     228
Birth       ki0047075b-MAL-ED          PERU                           11             28     228
Birth       ki0047075b-MAL-ED          PERU                           12             13     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               9     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              13     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               8     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               6     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               6     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               8     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              13     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               3     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              10     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             13     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             14     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             17     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              10     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              15     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              11     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               8     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               9     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              10     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              14     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               6     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               2     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             11     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             10     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              9     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              10      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               4      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             11      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              3      86
Birth       ki1000108-IRC              INDIA                          1              31     343
Birth       ki1000108-IRC              INDIA                          2              23     343
Birth       ki1000108-IRC              INDIA                          3              24     343
Birth       ki1000108-IRC              INDIA                          4              19     343
Birth       ki1000108-IRC              INDIA                          5              15     343
Birth       ki1000108-IRC              INDIA                          6              26     343
Birth       ki1000108-IRC              INDIA                          7              31     343
Birth       ki1000108-IRC              INDIA                          8              36     343
Birth       ki1000108-IRC              INDIA                          9              24     343
Birth       ki1000108-IRC              INDIA                          10             33     343
Birth       ki1000108-IRC              INDIA                          11             38     343
Birth       ki1000108-IRC              INDIA                          12             43     343
Birth       ki1000109-EE               PAKISTAN                       1              39     177
Birth       ki1000109-EE               PAKISTAN                       2              36     177
Birth       ki1000109-EE               PAKISTAN                       3              16     177
Birth       ki1000109-EE               PAKISTAN                       4               7     177
Birth       ki1000109-EE               PAKISTAN                       5               0     177
Birth       ki1000109-EE               PAKISTAN                       6               0     177
Birth       ki1000109-EE               PAKISTAN                       7               0     177
Birth       ki1000109-EE               PAKISTAN                       8               0     177
Birth       ki1000109-EE               PAKISTAN                       9               0     177
Birth       ki1000109-EE               PAKISTAN                       10              0     177
Birth       ki1000109-EE               PAKISTAN                       11             41     177
Birth       ki1000109-EE               PAKISTAN                       12             38     177
Birth       ki1000109-ResPak           PAKISTAN                       1               2      38
Birth       ki1000109-ResPak           PAKISTAN                       2               1      38
Birth       ki1000109-ResPak           PAKISTAN                       3               1      38
Birth       ki1000109-ResPak           PAKISTAN                       4               6      38
Birth       ki1000109-ResPak           PAKISTAN                       5               7      38
Birth       ki1000109-ResPak           PAKISTAN                       6               7      38
Birth       ki1000109-ResPak           PAKISTAN                       7               8      38
Birth       ki1000109-ResPak           PAKISTAN                       8               4      38
Birth       ki1000109-ResPak           PAKISTAN                       9               1      38
Birth       ki1000109-ResPak           PAKISTAN                       10              1      38
Birth       ki1000109-ResPak           PAKISTAN                       11              0      38
Birth       ki1000109-ResPak           PAKISTAN                       12              0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              70    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              64    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              60    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              58    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              74    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              94    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              92    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          8             123    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          9             134    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          10            125    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          11            111    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             98    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              59     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              54     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              56     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              47     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              45     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              45     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              39     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              38     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              44     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             47     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             51     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             50     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              30     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2              54     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3              27     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     4              21     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     5              24     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     6              45     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     7              28     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     8              45     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     9              75     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     10             75     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     11             53     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     12             55     532
Birth       ki1101329-Keneba           GAMBIA                         1               3      14
Birth       ki1101329-Keneba           GAMBIA                         2               0      14
Birth       ki1101329-Keneba           GAMBIA                         3               3      14
Birth       ki1101329-Keneba           GAMBIA                         4               0      14
Birth       ki1101329-Keneba           GAMBIA                         5               0      14
Birth       ki1101329-Keneba           GAMBIA                         6               0      14
Birth       ki1101329-Keneba           GAMBIA                         7               1      14
Birth       ki1101329-Keneba           GAMBIA                         8               2      14
Birth       ki1101329-Keneba           GAMBIA                         9               2      14
Birth       ki1101329-Keneba           GAMBIA                         10              2      14
Birth       ki1101329-Keneba           GAMBIA                         11              0      14
Birth       ki1101329-Keneba           GAMBIA                         12              1      14
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2               0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3               0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          4               1     641
Birth       ki1113344-GMS-Nepal        NEPAL                          5               0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          6             162     641
Birth       ki1113344-GMS-Nepal        NEPAL                          7             242     641
Birth       ki1113344-GMS-Nepal        NEPAL                          8             236     641
Birth       ki1113344-GMS-Nepal        NEPAL                          9               0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          10              0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          11              0     641
Birth       ki1113344-GMS-Nepal        NEPAL                          12              0     641
Birth       ki1114097-CMIN             BANGLADESH                     1               2      19
Birth       ki1114097-CMIN             BANGLADESH                     2               4      19
Birth       ki1114097-CMIN             BANGLADESH                     3               0      19
Birth       ki1114097-CMIN             BANGLADESH                     4               2      19
Birth       ki1114097-CMIN             BANGLADESH                     5               1      19
Birth       ki1114097-CMIN             BANGLADESH                     6               0      19
Birth       ki1114097-CMIN             BANGLADESH                     7               4      19
Birth       ki1114097-CMIN             BANGLADESH                     8               2      19
Birth       ki1114097-CMIN             BANGLADESH                     9               1      19
Birth       ki1114097-CMIN             BANGLADESH                     10              1      19
Birth       ki1114097-CMIN             BANGLADESH                     11              2      19
Birth       ki1114097-CMIN             BANGLADESH                     12              0      19
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
Birth       ki1119695-PROBIT           BELARUS                        1             822   13830
Birth       ki1119695-PROBIT           BELARUS                        2             799   13830
Birth       ki1119695-PROBIT           BELARUS                        3             941   13830
Birth       ki1119695-PROBIT           BELARUS                        4             970   13830
Birth       ki1119695-PROBIT           BELARUS                        5             942   13830
Birth       ki1119695-PROBIT           BELARUS                        6            1021   13830
Birth       ki1119695-PROBIT           BELARUS                        7            1287   13830
Birth       ki1119695-PROBIT           BELARUS                        8            1307   13830
Birth       ki1119695-PROBIT           BELARUS                        9            1324   13830
Birth       ki1119695-PROBIT           BELARUS                        10           1491   13830
Birth       ki1119695-PROBIT           BELARUS                        11           1383   13830
Birth       ki1119695-PROBIT           BELARUS                        12           1543   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1233   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2             957   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3            1077   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             922   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5             929   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6            1048   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7            1096   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8            1188   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9            1246   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10            980   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11           1103   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12           1138   12917
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            1986   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2            1687   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            2033   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4            1501   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5            1096   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6            1157   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7            1332   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8            1745   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9            2322   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10           2376   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11           2368   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12           2480   22083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             299    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             327    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             403    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             368    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6             286    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7             322    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8             216    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9             134    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             41    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0    2396
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              31     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              43     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              37     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              39     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              17     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             29     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             25     368
6 months    ki1000108-IRC              INDIA                          1              38     408
6 months    ki1000108-IRC              INDIA                          2              28     408
6 months    ki1000108-IRC              INDIA                          3              27     408
6 months    ki1000108-IRC              INDIA                          4              21     408
6 months    ki1000108-IRC              INDIA                          5              22     408
6 months    ki1000108-IRC              INDIA                          6              37     408
6 months    ki1000108-IRC              INDIA                          7              36     408
6 months    ki1000108-IRC              INDIA                          8              44     408
6 months    ki1000108-IRC              INDIA                          9              25     408
6 months    ki1000108-IRC              INDIA                          10             38     408
6 months    ki1000108-IRC              INDIA                          11             40     408
6 months    ki1000108-IRC              INDIA                          12             52     408
6 months    ki1000109-EE               PAKISTAN                       1              92     375
6 months    ki1000109-EE               PAKISTAN                       2              66     375
6 months    ki1000109-EE               PAKISTAN                       3              43     375
6 months    ki1000109-EE               PAKISTAN                       4              16     375
6 months    ki1000109-EE               PAKISTAN                       5               0     375
6 months    ki1000109-EE               PAKISTAN                       6               0     375
6 months    ki1000109-EE               PAKISTAN                       7               0     375
6 months    ki1000109-EE               PAKISTAN                       8               0     375
6 months    ki1000109-EE               PAKISTAN                       9               0     375
6 months    ki1000109-EE               PAKISTAN                       10              4     375
6 months    ki1000109-EE               PAKISTAN                       11             71     375
6 months    ki1000109-EE               PAKISTAN                       12             83     375
6 months    ki1000109-ResPak           PAKISTAN                       1              11     239
6 months    ki1000109-ResPak           PAKISTAN                       2              10     239
6 months    ki1000109-ResPak           PAKISTAN                       3              25     239
6 months    ki1000109-ResPak           PAKISTAN                       4              24     239
6 months    ki1000109-ResPak           PAKISTAN                       5              45     239
6 months    ki1000109-ResPak           PAKISTAN                       6              41     239
6 months    ki1000109-ResPak           PAKISTAN                       7              24     239
6 months    ki1000109-ResPak           PAKISTAN                       8              34     239
6 months    ki1000109-ResPak           PAKISTAN                       9              16     239
6 months    ki1000109-ResPak           PAKISTAN                       10              4     239
6 months    ki1000109-ResPak           PAKISTAN                       11              2     239
6 months    ki1000109-ResPak           PAKISTAN                       12              3     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              83    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              74    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              64    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              96    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             122    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             162    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             173    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            149    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            119    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            118    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              24     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              63     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              62     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             28     380
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              35     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              67     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              41     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     4              29     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     5              32     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     6              43     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     7              36     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     8              40     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     9              77     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     10             76     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     11             61     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     12             66     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             142    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             153    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             143    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             199    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             183    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            208    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            172    2028
6 months    ki1101329-Keneba           GAMBIA                         1             210    2089
6 months    ki1101329-Keneba           GAMBIA                         2             187    2089
6 months    ki1101329-Keneba           GAMBIA                         3             220    2089
6 months    ki1101329-Keneba           GAMBIA                         4             143    2089
6 months    ki1101329-Keneba           GAMBIA                         5             144    2089
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
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1     564
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          6             121     564
6 months    ki1113344-GMS-Nepal        NEPAL                          7             219     564
6 months    ki1113344-GMS-Nepal        NEPAL                          8             223     564
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0     564
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0     564
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
6 months    ki1114097-CMIN             BANGLADESH                     11             26     243
6 months    ki1114097-CMIN             BANGLADESH                     12             28     243
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
6 months    ki1119695-PROBIT           BELARUS                        1             975   15758
6 months    ki1119695-PROBIT           BELARUS                        2             933   15758
6 months    ki1119695-PROBIT           BELARUS                        3            1066   15758
6 months    ki1119695-PROBIT           BELARUS                        4            1098   15758
6 months    ki1119695-PROBIT           BELARUS                        5            1111   15758
6 months    ki1119695-PROBIT           BELARUS                        6            1115   15758
6 months    ki1119695-PROBIT           BELARUS                        7            1464   15758
6 months    ki1119695-PROBIT           BELARUS                        8            1473   15758
6 months    ki1119695-PROBIT           BELARUS                        9            1509   15758
6 months    ki1119695-PROBIT           BELARUS                        10           1689   15758
6 months    ki1119695-PROBIT           BELARUS                        11           1588   15758
6 months    ki1119695-PROBIT           BELARUS                        12           1737   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             810    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             609    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             750    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             646    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             628    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             662    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             662    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             775    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             767    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            616    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            779    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            801    8505
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            1338   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2            1148   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3            1401   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4            1174   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5            1106   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6            1196   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7            1249   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8            1510   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9            1619   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10           1660   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11           1751   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12           1574   16726
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             542    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             962    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             736    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             601    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             439    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             518    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             521    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             386    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            128    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0    4833
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
24 months   ki1000109-EE               PAKISTAN                       1              14     168
24 months   ki1000109-EE               PAKISTAN                       2               4     168
24 months   ki1000109-EE               PAKISTAN                       3               0     168
24 months   ki1000109-EE               PAKISTAN                       4               0     168
24 months   ki1000109-EE               PAKISTAN                       5               0     168
24 months   ki1000109-EE               PAKISTAN                       6               0     168
24 months   ki1000109-EE               PAKISTAN                       7               0     168
24 months   ki1000109-EE               PAKISTAN                       8               0     168
24 months   ki1000109-EE               PAKISTAN                       9               0     168
24 months   ki1000109-EE               PAKISTAN                       10              4     168
24 months   ki1000109-EE               PAKISTAN                       11             66     168
24 months   ki1000109-EE               PAKISTAN                       12             80     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              43     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              39     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              35     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              27     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              26     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             42     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             46     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              32     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              64     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              38     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     4              28     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     5              30     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     6              40     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     7              33     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     8              42     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     9              75     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     10             70     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     11             60     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     12             67     579
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
24 months   ki1101329-Keneba           GAMBIA                         1             171    1726
24 months   ki1101329-Keneba           GAMBIA                         2             167    1726
24 months   ki1101329-Keneba           GAMBIA                         3             170    1726
24 months   ki1101329-Keneba           GAMBIA                         4             114    1726
24 months   ki1101329-Keneba           GAMBIA                         5             122    1726
24 months   ki1101329-Keneba           GAMBIA                         6              92    1726
24 months   ki1101329-Keneba           GAMBIA                         7              83    1726
24 months   ki1101329-Keneba           GAMBIA                         8             158    1726
24 months   ki1101329-Keneba           GAMBIA                         9             160    1726
24 months   ki1101329-Keneba           GAMBIA                         10            200    1726
24 months   ki1101329-Keneba           GAMBIA                         11            140    1726
24 months   ki1101329-Keneba           GAMBIA                         12            149    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          6              79     487
24 months   ki1113344-GMS-Nepal        NEPAL                          7             206     487
24 months   ki1113344-GMS-Nepal        NEPAL                          8             202     487
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0     487
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0     487
24 months   ki1114097-CMIN             BANGLADESH                     1              26     243
24 months   ki1114097-CMIN             BANGLADESH                     2              24     243
24 months   ki1114097-CMIN             BANGLADESH                     3              18     243
24 months   ki1114097-CMIN             BANGLADESH                     4              22     243
24 months   ki1114097-CMIN             BANGLADESH                     5              16     243
24 months   ki1114097-CMIN             BANGLADESH                     6               8     243
24 months   ki1114097-CMIN             BANGLADESH                     7              15     243
24 months   ki1114097-CMIN             BANGLADESH                     8              18     243
24 months   ki1114097-CMIN             BANGLADESH                     9              20     243
24 months   ki1114097-CMIN             BANGLADESH                     10             24     243
24 months   ki1114097-CMIN             BANGLADESH                     11             25     243
24 months   ki1114097-CMIN             BANGLADESH                     12             27     243
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
24 months   ki1119695-PROBIT           BELARUS                        1             248    3972
24 months   ki1119695-PROBIT           BELARUS                        2             213    3972
24 months   ki1119695-PROBIT           BELARUS                        3             312    3972
24 months   ki1119695-PROBIT           BELARUS                        4             332    3972
24 months   ki1119695-PROBIT           BELARUS                        5             296    3972
24 months   ki1119695-PROBIT           BELARUS                        6             268    3972
24 months   ki1119695-PROBIT           BELARUS                        7             371    3972
24 months   ki1119695-PROBIT           BELARUS                        8             337    3972
24 months   ki1119695-PROBIT           BELARUS                        9             380    3972
24 months   ki1119695-PROBIT           BELARUS                        10            392    3972
24 months   ki1119695-PROBIT           BELARUS                        11            376    3972
24 months   ki1119695-PROBIT           BELARUS                        12            447    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              49     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              64     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              56     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              47     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              51     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              44     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              28     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              30     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               2     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              4     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             20     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             38     433
24 months   ki1148112-LCNI-5           MALAWI                         1              39     563
24 months   ki1148112-LCNI-5           MALAWI                         2              30     563
24 months   ki1148112-LCNI-5           MALAWI                         3              19     563
24 months   ki1148112-LCNI-5           MALAWI                         4              28     563
24 months   ki1148112-LCNI-5           MALAWI                         5              30     563
24 months   ki1148112-LCNI-5           MALAWI                         6              24     563
24 months   ki1148112-LCNI-5           MALAWI                         7              45     563
24 months   ki1148112-LCNI-5           MALAWI                         8              70     563
24 months   ki1148112-LCNI-5           MALAWI                         9              63     563
24 months   ki1148112-LCNI-5           MALAWI                         10             89     563
24 months   ki1148112-LCNI-5           MALAWI                         11             62     563
24 months   ki1148112-LCNI-5           MALAWI                         12             64     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             664    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             558    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             708    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             502    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             358    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             605    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             670    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             615    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             796    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            856    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11           1036    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12           1170    8538
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             781    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             851    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             649    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             563    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             418    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             484    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             503    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             364    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            122    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0    4735


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/74022d75-4e98-40a5-97a6-4bc340ead73c/bfb21109-9f44-422e-8ae8-2ec6a0b51859/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/74022d75-4e98-40a5-97a6-4bc340ead73c/bfb21109-9f44-422e-8ae8-2ec6a0b51859/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/74022d75-4e98-40a5-97a6-4bc340ead73c/bfb21109-9f44-422e-8ae8-2ec6a0b51859/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.8415789   -1.2688997   -0.4142582
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9757143   -1.4637404   -0.4876882
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -1.0828571   -1.5609508   -0.6047635
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -1.1994737   -1.7026207   -0.6963267
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.5841176   -1.1364997   -0.0317356
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.7257143   -1.1540291   -0.2973994
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -1.1130769   -1.5329650   -0.6931889
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.6569565   -1.1380141   -0.1758990
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.4718750   -1.9537166   -0.9900334
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.9840000   -1.4629655   -0.5050345
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.9360000   -1.3986933   -0.4733067
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.7704167   -1.2213111   -0.3195223
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.3206897   -0.5727261   -0.0686532
Birth       ki0047075b-MAL-ED          PERU                           2                    NA                 0.1058824   -0.2337632    0.4455279
Birth       ki0047075b-MAL-ED          PERU                           3                    NA                 0.1795000   -0.1460680    0.5050680
Birth       ki0047075b-MAL-ED          PERU                           4                    NA                -0.0171429   -0.5339030    0.4996173
Birth       ki0047075b-MAL-ED          PERU                           5                    NA                 0.2857143   -0.1073159    0.6787445
Birth       ki0047075b-MAL-ED          PERU                           6                    NA                 0.0945455   -0.3404883    0.5295792
Birth       ki0047075b-MAL-ED          PERU                           7                    NA                -0.2915789   -0.7308879    0.1477300
Birth       ki0047075b-MAL-ED          PERU                           8                    NA                -0.1137500   -0.6127408    0.3852408
Birth       ki0047075b-MAL-ED          PERU                           9                    NA                -0.0805263   -0.5566281    0.3955755
Birth       ki0047075b-MAL-ED          PERU                           10                   NA                 0.0471429   -0.2825564    0.3768421
Birth       ki0047075b-MAL-ED          PERU                           11                   NA                -0.2550000   -0.6968636    0.1868636
Birth       ki0047075b-MAL-ED          PERU                           12                   NA                 0.0223077   -0.4135688    0.4581842
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2064516   -0.8241587    0.4112554
Birth       ki1000108-IRC              INDIA                          2                    NA                -0.5304348   -1.0966348    0.0357652
Birth       ki1000108-IRC              INDIA                          3                    NA                -0.8991667   -1.7172346   -0.0810988
Birth       ki1000108-IRC              INDIA                          4                    NA                -1.5168421   -2.1488141   -0.8848701
Birth       ki1000108-IRC              INDIA                          5                    NA                -1.7686667   -2.5910096   -0.9463238
Birth       ki1000108-IRC              INDIA                          6                    NA                -1.3615385   -2.0604069   -0.6626700
Birth       ki1000108-IRC              INDIA                          7                    NA                -1.0848387   -1.6762039   -0.4934735
Birth       ki1000108-IRC              INDIA                          8                    NA                -1.3869444   -1.9532683   -0.8206205
Birth       ki1000108-IRC              INDIA                          9                    NA                -1.0200000   -1.8383304   -0.2016696
Birth       ki1000108-IRC              INDIA                          10                   NA                -0.9990909   -1.5750645   -0.4231173
Birth       ki1000108-IRC              INDIA                          11                   NA                -0.8418421   -1.3887010   -0.2949832
Birth       ki1000108-IRC              INDIA                          12                   NA                -0.9930233   -1.4781855   -0.5078611
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5337143   -0.7509432   -0.3164854
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.3184375   -0.5979882   -0.0388868
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.5126667   -0.8944255   -0.1309079
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.5553448   -0.8827642   -0.2279254
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.9790541   -1.1096451   -0.8484630
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -1.0976596   -1.3472081   -0.8481111
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.7023913   -0.9733954   -0.4313872
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.7655285   -1.0067716   -0.5242853
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.9126866   -1.3103844   -0.5149888
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.8190400   -1.1198367   -0.5182433
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.5128829   -0.6560544   -0.3697114
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.0237755   -0.2043237    0.1567726
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.3449153   -1.6895662   -1.0002643
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -1.0214815   -1.3467319   -0.6962310
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -1.2967857   -1.5770342   -1.0165373
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -1.6967021   -1.9899936   -1.4034107
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -1.5788889   -1.9127127   -1.2450650
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -1.3960000   -1.7426231   -1.0493769
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -1.6928205   -2.0858292   -1.2998118
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -1.4989474   -1.8583183   -1.1395764
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -1.4631818   -1.7511491   -1.1752145
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -1.4223404   -1.7267161   -1.1179648
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -1.0931373   -1.3995052   -0.7867693
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.9100000   -1.1698170   -0.6501830
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.7130000   -0.9699481   -0.4560519
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.2955556   -1.5507933   -1.0403178
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -1.0155556   -1.3070053   -0.7241058
Birth       ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -1.1061905   -1.5519148   -0.6604661
Birth       ki1017093b-PROVIDE         BANGLADESH                     5                    NA                -1.2404167   -1.6655483   -0.8152851
Birth       ki1017093b-PROVIDE         BANGLADESH                     6                    NA                -1.1888889   -1.4299534   -0.9478243
Birth       ki1017093b-PROVIDE         BANGLADESH                     7                    NA                -1.1375000   -1.3642553   -0.9107447
Birth       ki1017093b-PROVIDE         BANGLADESH                     8                    NA                -1.6000000   -1.8372875   -1.3627125
Birth       ki1017093b-PROVIDE         BANGLADESH                     9                    NA                -1.3874667   -1.5677779   -1.2071555
Birth       ki1017093b-PROVIDE         BANGLADESH                     10                   NA                -1.5102667   -1.7175159   -1.3030175
Birth       ki1017093b-PROVIDE         BANGLADESH                     11                   NA                -1.4407547   -1.7015896   -1.1799199
Birth       ki1017093b-PROVIDE         BANGLADESH                     12                   NA                -1.2358182   -1.4847475   -0.9868889
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -1.1673114   -1.4944529   -0.8401700
Birth       ki1119695-PROBIT           BELARUS                        2                    NA                -1.0295745   -1.3093518   -0.7497972
Birth       ki1119695-PROBIT           BELARUS                        3                    NA                -1.1445165   -1.3834498   -0.9055832
Birth       ki1119695-PROBIT           BELARUS                        4                    NA                -1.1584742   -1.4018773   -0.9150711
Birth       ki1119695-PROBIT           BELARUS                        5                    NA                -1.2805732   -1.5278598   -1.0332867
Birth       ki1119695-PROBIT           BELARUS                        6                    NA                -1.1545690   -1.4003509   -0.9087872
Birth       ki1119695-PROBIT           BELARUS                        7                    NA                -1.2197630   -1.4539439   -0.9855821
Birth       ki1119695-PROBIT           BELARUS                        8                    NA                -1.1423259   -1.3815818   -0.9030701
Birth       ki1119695-PROBIT           BELARUS                        9                    NA                -1.0949434   -1.3646686   -0.8252182
Birth       ki1119695-PROBIT           BELARUS                        10                   NA                -1.1722334   -1.3764979   -0.9679689
Birth       ki1119695-PROBIT           BELARUS                        11                   NA                -1.0928416   -1.2725023   -0.9131810
Birth       ki1119695-PROBIT           BELARUS                        12                   NA                -1.0976766   -1.3107807   -0.8845725
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.3814193   -0.4662692   -0.2965694
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.2605434   -0.3557697   -0.1653170
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.4062674   -0.4953487   -0.3171861
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.3699892   -0.4634498   -0.2765285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.4436491   -0.5447969   -0.3425013
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.6468130   -0.7391124   -0.5545135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.7014964   -0.7932813   -0.6097114
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.5955640   -0.6808817   -0.5102462
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.5203210   -0.5996200   -0.4410221
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.6488878   -0.7401429   -0.5576326
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.6228558   -0.7088943   -0.5368174
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.5471441   -0.6328194   -0.4614688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6228751   -0.6752886   -0.5704616
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.6958151   -0.7496854   -0.6419448
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.7526217   -0.7988609   -0.7063826
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.7593271   -0.8142187   -0.7044355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.7778193   -0.8452204   -0.7104183
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.7857217   -0.8478802   -0.7235631
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.7150901   -0.7711175   -0.6590626
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.8111232   -0.8649283   -0.7573181
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.8682343   -0.9187015   -0.8177670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.8199579   -0.8668983   -0.7730175
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.7437753   -0.7882395   -0.6993112
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6572621   -0.7034867   -0.6110375
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2487963   -0.5625286    0.0649360
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.2715000   -0.6349913    0.0919913
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.2708696   -0.6807851    0.1390460
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.2563636   -0.7989919    0.2862646
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                 0.0061905   -0.4924769    0.5048578
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                 0.3175000   -0.3657220    1.0007220
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.4611111   -1.0307408    0.1085186
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                 0.0672464   -0.1732043    0.3076970
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.3009091   -0.6823517    0.0805336
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.1856818   -0.6985485    0.3271848
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                 0.0840625   -0.3325470    0.5006720
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                 0.0474359   -0.2959340    0.3908058
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.2021111    0.5863808    1.8178414
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.6317391    0.0440669    1.2194114
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.9668750    0.4209185    1.5128315
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                 1.4457576    0.5816265    2.3098886
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 1.2361905    0.8861078    1.5862732
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.4587500   -0.3490427    1.2665427
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.3878125    0.9394944    1.8361306
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.9479167    0.4964088    1.3994245
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.8623333    0.4501800    1.2744867
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 1.1940833    0.6658682    1.7222984
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.7111111    0.0820527    1.3401696
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.6223611    0.0765317    1.1681905
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.7060526   -1.1237577   -0.2883476
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6902778   -1.2061607   -0.1743949
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.8064394   -1.2364038   -0.3764750
6 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.6514444   -1.0082004   -0.2946885
6 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -0.4275000   -1.1069082    0.2519082
6 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -0.7815789   -1.2812660   -0.2818919
6 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -0.7924638   -1.2358131   -0.3491144
6 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -0.3337121   -0.7635561    0.0961318
6 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -0.6753333   -0.9693555   -0.3813112
6 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -0.6069872   -0.9948727   -0.2191016
6 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -1.0965333   -1.4608687   -0.7321980
6 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -0.6978070   -1.1020555   -0.2935585
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0264167   -0.5253676    0.4725343
6 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.1065789   -0.2668805    0.4800384
6 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.4694118   -0.0924232    1.0312467
6 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0193182   -0.4868524    0.4482160
6 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.0832500   -0.5266076    0.3601076
6 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                 0.1211111   -0.3610731    0.6032953
6 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                 0.0088889   -0.5938155    0.6115933
6 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0195833   -0.3686137    0.3294470
6 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                 0.2088542   -0.1944739    0.6121822
6 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                 0.4462698    0.0813999    0.8111398
6 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.0250000   -0.3209650    0.2709650
6 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.2845098   -0.2763530    0.8453726
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 1.0158772    0.6706667    1.3610877
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                 1.2289474    0.7804147    1.6774801
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                 1.4900000    1.0249017    1.9550983
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                 0.8465000    0.4294616    1.2635384
6 months    ki0047075b-MAL-ED          PERU                           5                    NA                 0.8372222    0.3859217    1.2885227
6 months    ki0047075b-MAL-ED          PERU                           6                    NA                 1.0500000    0.7014799    1.3985201
6 months    ki0047075b-MAL-ED          PERU                           7                    NA                 1.0154545    0.5456235    1.4852856
6 months    ki0047075b-MAL-ED          PERU                           8                    NA                 1.2084375    0.7071909    1.7096841
6 months    ki0047075b-MAL-ED          PERU                           9                    NA                 0.9883333    0.5968811    1.3797856
6 months    ki0047075b-MAL-ED          PERU                           10                   NA                 1.1238333    0.6845089    1.5631577
6 months    ki0047075b-MAL-ED          PERU                           11                   NA                 1.1500000    0.8136499    1.4863501
6 months    ki0047075b-MAL-ED          PERU                           12                   NA                 0.7806140    0.5111136    1.0501145
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.6709211    0.2021621    1.1396800
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.9426812    0.5948492    1.2905131
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.6626667    0.1843381    1.1409952
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.7726923    0.2444865    1.3008981
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.3676923   -0.2827090    1.0180936
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.2716667   -0.2170786    0.7604120
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.6350000    0.1346447    1.1353553
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.9235185    0.1518260    1.6952110
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.3074074   -0.0851279    0.6999427
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.0741026   -0.4273482    0.5755533
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.7250000    0.0290666    1.4209334
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.3965238    0.0696558    0.7233918
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3402500   -0.1626152    0.8431152
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.6275000    0.3466050    0.9083950
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4986111    0.0884088    0.9088134
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.6838889   -0.1552299    1.5230077
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.5828125    0.0887667    1.0768583
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.3984211   -0.1595552    0.9563973
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.6245652    0.2279568    1.0211736
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                 1.3143056    0.8046495    1.8239616
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.5780952    0.0531067    1.1030838
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.7836364    0.4870967    1.0801761
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.2639506   -0.1834728    0.7113741
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2716111   -0.0716809    0.6149031
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.7164216   -1.2434657   -0.1893775
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.6296875   -1.4989217    0.2395467
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.6195161   -0.9721374   -0.2668949
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.3396899   -0.7911701    0.1117903
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.3894118   -0.8896601    0.1108365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.1206306   -0.5838824    0.3426211
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                 0.2313675   -0.3300149    0.7927500
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.2841176   -0.8704031    0.3021678
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.4559524   -0.9082773   -0.0036275
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.7431034   -1.2672568   -0.2189501
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.9584127   -1.2744567   -0.6423687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -1.2740667   -1.8410029   -0.7071304
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.4518421   -0.8938773   -0.0098069
6 months    ki1000108-IRC              INDIA                          2                    NA                -0.4610714   -1.0287366    0.1065938
6 months    ki1000108-IRC              INDIA                          3                    NA                -0.5869753   -1.0480233   -0.1259273
6 months    ki1000108-IRC              INDIA                          4                    NA                -0.2330952   -0.7636272    0.2974367
6 months    ki1000108-IRC              INDIA                          5                    NA                 0.0495455   -0.6212307    0.7203217
6 months    ki1000108-IRC              INDIA                          6                    NA                -0.7106757   -1.1526801   -0.2686713
6 months    ki1000108-IRC              INDIA                          7                    NA                -0.7382407   -1.2291028   -0.2473787
6 months    ki1000108-IRC              INDIA                          8                    NA                -0.7268939   -1.1278540   -0.3259339
6 months    ki1000108-IRC              INDIA                          9                    NA                -0.5356000   -1.0022676   -0.0689324
6 months    ki1000108-IRC              INDIA                          10                   NA                -0.7657895   -1.1080768   -0.4235021
6 months    ki1000108-IRC              INDIA                          11                   NA                -0.6060417   -0.9908141   -0.2212692
6 months    ki1000108-IRC              INDIA                          12                   NA                -0.8277564   -1.2656631   -0.3898497
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.0686207   -1.3169904   -0.8202509
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.8159036   -1.0512770   -0.5805303
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.8260811   -1.2104965   -0.4416657
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.7492187   -0.9952647   -0.5031728
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.5396552   -0.8941001   -0.1852102
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.4227083   -0.6635856   -0.1818311
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.1605738   -0.4601943    0.1390467
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.3796605   -0.6158309   -0.1434901
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.4785549   -0.5656331   -0.3914767
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.8208054   -1.0423239   -0.5992869
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -1.1681513   -1.3839961   -0.9523065
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.8945763   -1.1452184   -0.6439341
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.7528846   -1.0177030   -0.4880662
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.6012245   -0.9208560   -0.2815930
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.5348333   -0.8135856   -0.2560811
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.4333532   -0.7628868   -0.1038196
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.5221429   -0.8541658   -0.1901199
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.1690504   -0.4707955    0.1326947
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.0169231   -0.3519288    0.3180826
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.4646190   -0.7633303   -0.1659078
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.1458730   -0.4857288    0.1939828
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.5650397   -0.8875278   -0.2425515
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.4936833   -0.7705182   -0.2168485
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.5105882   -0.8083247   -0.2128517
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4747619   -0.8546779   -0.0948459
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0294030   -0.2539709    0.1951650
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.3248780   -0.5898372   -0.0599189
6 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.3893103   -0.7602203   -0.0184004
6 months    ki1017093b-PROVIDE         BANGLADESH                     5                    NA                -0.2650000   -0.5896213    0.0596213
6 months    ki1017093b-PROVIDE         BANGLADESH                     6                    NA                -0.2945349   -0.5826372   -0.0064326
6 months    ki1017093b-PROVIDE         BANGLADESH                     7                    NA                -0.1430556   -0.5031499    0.2170388
6 months    ki1017093b-PROVIDE         BANGLADESH                     8                    NA                -0.3830000   -0.7091202   -0.0568798
6 months    ki1017093b-PROVIDE         BANGLADESH                     9                    NA                -0.2648052   -0.5159540   -0.0136564
6 months    ki1017093b-PROVIDE         BANGLADESH                     10                   NA                -0.1483553   -0.3739873    0.0772768
6 months    ki1017093b-PROVIDE         BANGLADESH                     11                   NA                -0.2020492   -0.4755420    0.0714436
6 months    ki1017093b-PROVIDE         BANGLADESH                     12                   NA                 0.1325758   -0.1033663    0.3685178
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1654108   -0.3711643    0.0403427
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0322148   -0.1651544    0.2295839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.3003452    0.1288430    0.4718475
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                 0.3900109    0.2068640    0.5731578
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.3228020    0.1437129    0.5018911
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                 0.1631235   -0.0450445    0.3712916
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.1543504   -0.0080482    0.3167490
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                 0.0499162   -0.1217961    0.2216286
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0510565   -0.1315348    0.2336477
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.0502163   -0.1142288    0.2146615
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.1525128   -0.3175802    0.0125546
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1186240   -0.3034313    0.0661832
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1830508   -0.3318136   -0.0342880
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.1717543   -0.3251764   -0.0183322
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.2573900   -0.4160071   -0.0987730
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.3270304   -0.5262502   -0.1278106
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                -0.3417269   -0.5412039   -0.1422498
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                -0.2551384   -0.4838246   -0.0264522
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                -0.2169547   -0.4932620    0.0593526
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                -0.2638611   -0.4302145   -0.0975077
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                -0.0663846   -0.2441854    0.1114162
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                 0.0634288   -0.0861309    0.2129884
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                -0.0055766   -0.1757170    0.1645637
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                -0.3626944   -0.5218060   -0.2035829
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.4269048   -0.7948039   -0.0590056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                 0.3126667   -0.1064428    0.7317761
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0860494   -0.5127069    0.3406082
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                 0.1300538   -0.2214521    0.4815597
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                 0.2671505   -0.0726640    0.6069650
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                -0.1600758   -0.5347109    0.2145594
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                -0.2440476   -0.5720307    0.0839355
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                -0.0655952   -0.4826157    0.3514252
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                -0.2404167   -0.5695200    0.0886867
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                 0.0066667   -0.3231393    0.3364726
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                -0.2920139   -0.6032552    0.0192274
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                -0.3466667   -0.7064441    0.0131108
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.6932692   -1.0741594   -0.3123790
6 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.8032609   -1.1878700   -0.4186517
6 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -1.0250000   -1.4865274   -0.5634726
6 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.6000000   -1.1769467   -0.0230533
6 months    ki1114097-CMIN             BANGLADESH                     5                    NA                -0.0746078   -0.4411309    0.2919152
6 months    ki1114097-CMIN             BANGLADESH                     6                    NA                -0.5604167   -1.2487783    0.1279450
6 months    ki1114097-CMIN             BANGLADESH                     7                    NA                -0.2603333   -0.7292044    0.2085377
6 months    ki1114097-CMIN             BANGLADESH                     8                    NA                 0.3502941   -0.1820160    0.8826043
6 months    ki1114097-CMIN             BANGLADESH                     9                    NA                 0.0124167   -0.4332748    0.4581082
6 months    ki1114097-CMIN             BANGLADESH                     10                   NA                -1.0612500   -1.3107753   -0.8117247
6 months    ki1114097-CMIN             BANGLADESH                     11                   NA                -0.5952564   -1.0505584   -0.1399544
6 months    ki1114097-CMIN             BANGLADESH                     12                   NA                -1.0335714   -1.5524800   -0.5146628
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9714000    0.4964769    1.4463231
6 months    ki1114097-CONTENT          PERU                           2                    NA                 1.0188241    0.5701238    1.4675243
6 months    ki1114097-CONTENT          PERU                           3                    NA                 1.0446000    0.6848116    1.4043884
6 months    ki1114097-CONTENT          PERU                           4                    NA                 1.0492544    0.7905442    1.3079646
6 months    ki1114097-CONTENT          PERU                           5                    NA                 1.4889286    0.9013397    2.0765174
6 months    ki1114097-CONTENT          PERU                           6                    NA                 0.9585385    0.5742118    1.3428652
6 months    ki1114097-CONTENT          PERU                           7                    NA                 1.3423631    1.0203930    1.6643332
6 months    ki1114097-CONTENT          PERU                           8                    NA                 0.9395652    0.6787283    1.2004021
6 months    ki1114097-CONTENT          PERU                           9                    NA                 1.0260000    0.7182917    1.3337083
6 months    ki1114097-CONTENT          PERU                           10                   NA                 0.8422143    0.3400118    1.3444168
6 months    ki1114097-CONTENT          PERU                           11                   NA                 1.0446111    0.4760018    1.6132205
6 months    ki1114097-CONTENT          PERU                           12                   NA                 0.9105000    0.4178343    1.4031657
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.5863590    0.4599477    0.7127703
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                 0.5614416    0.4458541    0.6770291
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.6006801    0.5079386    0.6934216
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.6094262    0.5257160    0.6931365
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.5648515    0.4722710    0.6574320
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.6119552    0.5231349    0.7007754
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.5830396    0.5026587    0.6634206
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.5777325    0.5061048    0.6493602
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.5614745    0.4747493    0.6481997
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.5536027    0.4713281    0.6358774
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.5713728    0.4572721    0.6854735
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                 0.5864335    0.5009756    0.6718914
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3744198    0.2884784    0.4603612
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.2888670    0.1958357    0.3818983
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                 0.4068533    0.3132888    0.5004179
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                 0.3182430    0.2309792    0.4055069
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                 0.3020223    0.2091961    0.3948485
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                 0.2080514    0.1116304    0.3044724
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                 0.2869033    0.1938109    0.3799958
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                 0.2972774    0.2106845    0.3838703
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                 0.3157627    0.2307892    0.4007363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                 0.2675731    0.1781455    0.3570006
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                 0.2677407    0.1853721    0.3501093
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                 0.3595630    0.2780405    0.4410856
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.4669118    0.2119132    0.7219104
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                 0.7821739    0.5364040    1.0279438
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                 0.2780769   -0.0713877    0.6275416
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                 0.7371795    0.4175886    1.0567704
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                 0.6836364    0.3854359    0.9818368
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                 0.3841176   -0.0326415    0.8008768
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                 0.4218033    0.1980188    0.6455878
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                 0.2874194    0.0609160    0.5139227
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                 0.4733333    0.2650962    0.6815705
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                 0.4850370    0.3023610    0.6677130
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                 0.2427619    0.0522891    0.4332347
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                 0.4547368    0.2358661    0.6736076
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6726906   -0.7307139   -0.6146673
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5775174   -0.6476468   -0.5073881
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.5676017   -0.6289513   -0.5062521
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.5926746   -0.6527079   -0.5326414
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.5088969   -0.5747907   -0.4430032
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.4862876   -0.5561245   -0.4164507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.5048959   -0.5687414   -0.4410504
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.5887417   -0.6453787   -0.5321047
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.5864361   -0.6448484   -0.5280238
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.6523012   -0.7073839   -0.5972185
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.6820103   -0.7324993   -0.6315213
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.6189898   -0.6751633   -0.5628164
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.6367857   -1.1790404   -0.0945311
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.9302941   -1.3014072   -0.5591811
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.9544737   -1.3267594   -0.5821880
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.8280000   -1.2661513   -0.3898487
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -1.0607895   -1.4805306   -0.6410483
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.5285714   -1.2016574    0.1445146
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.9375000   -1.3721795   -0.5028205
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.8688636   -1.1406399   -0.5970874
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -1.1025000   -1.5127162   -0.6922838
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.6257500   -1.0438963   -0.2076037
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.9490909   -1.4552672   -0.4429146
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.4374074   -0.7531360   -0.1216788
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.4230000   -0.1839261    1.0299261
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.3096875   -0.3433506    0.9627256
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.4678571   -0.3177124    1.2534267
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.6425000   -0.5367726    1.8217726
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.1366667   -0.3328909    0.6062243
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.1050000   -0.9395763    0.7295763
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                 1.6400000    0.9619226    2.3180774
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.7157692   -0.0580575    1.4895960
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.1557407   -0.3006388    0.6121202
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.8692857    0.1481871    1.5903843
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.1355556   -0.5316940    0.8028051
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.6722727    0.0738617    1.2706837
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0823684   -1.4501847   -0.7145522
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.6094444   -1.0558146   -0.1630743
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.9089474   -1.1982799   -0.6196148
24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.6557143   -1.1745895   -0.1368390
24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -1.2500000   -1.6219013   -0.8780987
24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                -1.2344444   -1.8361043   -0.6327846
24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -0.9886957   -1.3431945   -0.6341968
24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -0.7428571   -1.1089218   -0.3767925
24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -1.1983333   -1.4880284   -0.9086383
24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -0.8875000   -1.2263265   -0.5486735
24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                -1.2956250   -1.5698942   -1.0213558
24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                -0.6255263   -0.9585037   -0.2925490
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.2700000   -0.6054933    0.0654933
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.2523529   -0.5953019    0.0905960
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.1323529   -0.4983283    0.2336224
24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.3697727   -0.7565669    0.0170214
24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.7578947   -1.1186675   -0.3971220
24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.5252778   -0.8975322   -0.1530234
24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.3850000   -0.8049811    0.0349811
24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.6035417   -1.0068933   -0.2001900
24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.6170000   -0.9634606   -0.2705394
24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.1330000   -0.3576966    0.0916966
24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.3833333   -0.7747758    0.0081091
24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.0015625   -0.5297741    0.5266491
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0325000   -0.3049655    0.3699655
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.2632353   -0.0886973    0.6151679
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.2826667   -0.2141604    0.7794937
24 months   ki0047075b-MAL-ED          PERU                           4                    NA                 0.3095455   -0.1158568    0.7349477
24 months   ki0047075b-MAL-ED          PERU                           5                    NA                 0.1168421   -0.2167722    0.4504564
24 months   ki0047075b-MAL-ED          PERU                           6                    NA                 0.1463636   -0.6670608    0.9597881
24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -0.1003333   -0.4487822    0.2481156
24 months   ki0047075b-MAL-ED          PERU                           8                    NA                 0.0033333   -0.6011979    0.6078646
24 months   ki0047075b-MAL-ED          PERU                           9                    NA                 0.0083333   -0.2760019    0.2926686
24 months   ki0047075b-MAL-ED          PERU                           10                   NA                 0.2214286   -0.1727172    0.6155743
24 months   ki0047075b-MAL-ED          PERU                           11                   NA                 0.2061905   -0.1638485    0.5762295
24 months   ki0047075b-MAL-ED          PERU                           12                   NA                 0.0763333   -0.2750479    0.4277146
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1651471   -0.2144087    0.5447029
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.4475000    0.1239562    0.7710438
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.6178571    0.2649948    0.9707195
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.5512500   -0.1135761    1.2160761
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                 0.2133333   -0.2370057    0.6636724
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.5303125    0.1325839    0.9280411
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                 0.6800000    0.2320557    1.1279443
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.6312500   -0.0063834    1.2688834
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.5136842    0.1686509    0.8587175
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.2180000   -0.1713757    0.6073757
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                 0.6415217    0.2489505    1.0340929
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                 0.2254839   -0.0527570    0.5037247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5136667   -1.0978790    0.0705456
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.2675000   -0.6706670    0.1356670
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0361111   -0.3857715    0.4579937
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1075000   -0.8336556    0.6186556
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                 0.1530556   -0.0888787    0.3949898
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0277778   -0.2645235    0.2089680
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.3591304   -0.0382587    0.7565195
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0077273   -0.7394279    0.7239733
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0822222   -0.3156428    0.4800872
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                 0.3156667   -0.0426198    0.6739532
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                 0.0804167   -0.2770298    0.4378631
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                 0.2521154   -0.1340731    0.6383038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5502941   -0.8570488   -0.2435395
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.4466667   -0.8971683    0.0038349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.2944086   -0.5880137   -0.0008035
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.3505682   -0.6445927   -0.0565437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.5581481   -0.9379537   -0.1783426
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.6310360   -0.9244241   -0.3376479
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -0.4737607   -0.8952343   -0.0522871
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.5994118   -1.0407506   -0.1580729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.6264286   -0.9303610   -0.3224961
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.8289080   -1.1571242   -0.5006919
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.5694186   -0.8324125   -0.3064247
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -0.9226000   -1.2826003   -0.5625997
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.5281140   -0.8309595   -0.2252685
24 months   ki1000108-IRC              INDIA                          2                    NA                -0.5079167   -0.8724258   -0.1434075
24 months   ki1000108-IRC              INDIA                          3                    NA                -0.5063580   -0.7705413   -0.2421748
24 months   ki1000108-IRC              INDIA                          4                    NA                -0.8365079   -1.1259166   -0.5470993
24 months   ki1000108-IRC              INDIA                          5                    NA                -0.9840152   -1.3777291   -0.5903012
24 months   ki1000108-IRC              INDIA                          6                    NA                -0.8320270   -1.1445304   -0.5195237
24 months   ki1000108-IRC              INDIA                          7                    NA                -0.7324074   -1.0048157   -0.4599991
24 months   ki1000108-IRC              INDIA                          8                    NA                -0.8911364   -1.1998781   -0.5823946
24 months   ki1000108-IRC              INDIA                          9                    NA                -0.8592593   -1.2538492   -0.4646694
24 months   ki1000108-IRC              INDIA                          10                   NA                -0.7902252   -1.1222192   -0.4582312
24 months   ki1000108-IRC              INDIA                          11                   NA                -0.7643750   -1.0527119   -0.4760381
24 months   ki1000108-IRC              INDIA                          12                   NA                -0.7401282   -0.9703039   -0.5099525
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.9762403   -1.2426522   -0.7098284
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.9476852   -1.2477882   -0.6475821
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.9287179   -1.2999520   -0.5574839
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -1.1785539   -1.4933256   -0.8637822
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -1.0776667   -1.3587793   -0.7965540
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.6725253   -0.9675238   -0.3775267
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.7286765   -1.1290139   -0.3283390
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.9662346   -1.3686890   -0.5637801
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.9301923   -1.3077029   -0.5526817
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.9060606   -1.3661747   -0.4459465
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.8408532   -1.1641600   -0.5175463
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.8172645   -1.0834219   -0.5511071
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.7250000   -1.0468305   -0.4031695
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8272656   -1.0533215   -0.6012098
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.7113158   -0.8954796   -0.5271520
24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                -0.8046429   -1.1461189   -0.4631668
24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    NA                -0.7326667   -1.0030436   -0.4622898
24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    NA                -0.8755000   -1.2146741   -0.5363259
24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    NA                -0.7245455   -1.1451090   -0.3039819
24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    NA                -1.1330952   -1.5574346   -0.7087558
24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    NA                -1.0805333   -1.2898096   -0.8712571
24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   NA                -1.0905714   -1.2989313   -0.8822116
24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   NA                -0.9961667   -1.2773121   -0.7150212
24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   NA                -0.6808209   -0.9258717   -0.4357701
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.7296442   -0.8643423   -0.5949462
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.4740649   -0.6157706   -0.3323591
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.6130392   -0.7609553   -0.4651231
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.6535599   -0.8361515   -0.4709684
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                -0.7315301   -0.8841582   -0.5789019
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                -0.7300543   -0.9441449   -0.5159638
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                -1.0341687   -1.2564286   -0.8119087
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                -1.1099177   -1.2536335   -0.9662019
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                -1.0015021   -1.1568427   -0.8461615
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                -0.9642438   -1.1129007   -0.8155869
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                -0.8275655   -1.0066657   -0.6484653
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                -0.8638523   -1.0153212   -0.7123835
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.6700000   -0.9208588   -0.4191412
24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.8214583   -1.0600668   -0.5828499
24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.6422222   -0.9621661   -0.3222783
24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.8220455   -1.2341968   -0.4098941
24 months   ki1114097-CMIN             BANGLADESH                     5                    NA                -0.4512500   -0.8600615   -0.0424385
24 months   ki1114097-CMIN             BANGLADESH                     6                    NA                -0.4312500   -0.5829128   -0.2795872
24 months   ki1114097-CMIN             BANGLADESH                     7                    NA                -0.8410000   -1.2461525   -0.4358475
24 months   ki1114097-CMIN             BANGLADESH                     8                    NA                -0.7866667   -1.2125299   -0.3608034
24 months   ki1114097-CMIN             BANGLADESH                     9                    NA                -1.0170000   -1.4846793   -0.5493207
24 months   ki1114097-CMIN             BANGLADESH                     10                   NA                -1.1343750   -1.4846345   -0.7841155
24 months   ki1114097-CMIN             BANGLADESH                     11                   NA                -1.0770000   -1.4989690   -0.6550310
24 months   ki1114097-CMIN             BANGLADESH                     12                   NA                -1.0627778   -1.4036694   -0.7218861
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.1114286   -0.5762275    0.3533704
24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.6796429    0.1597581    1.1995276
24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.8027273    0.3323900    1.2730645
24 months   ki1114097-CONTENT          PERU                           4                    NA                 0.3666667    0.0566366    0.6766967
24 months   ki1114097-CONTENT          PERU                           5                    NA                 0.6307143    0.0245301    1.2368985
24 months   ki1114097-CONTENT          PERU                           6                    NA                 0.0109091   -0.2737113    0.2955294
24 months   ki1114097-CONTENT          PERU                           7                    NA                 0.5819565    0.2885694    0.8753437
24 months   ki1114097-CONTENT          PERU                           8                    NA                 0.4664286   -0.0303215    0.9631787
24 months   ki1114097-CONTENT          PERU                           9                    NA                 0.6561765    0.3795361    0.9328168
24 months   ki1114097-CONTENT          PERU                           10                   NA                 0.8645455    0.4925103    1.2365806
24 months   ki1114097-CONTENT          PERU                           11                   NA                 0.6783333    0.0608782    1.2957885
24 months   ki1114097-CONTENT          PERU                           12                   NA                 0.7465000    0.1042573    1.3887427
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.6263710    0.3801750    0.8725669
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                 0.7428404    0.5077668    0.9779140
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                 0.7031891    0.4701798    0.9361984
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                 0.7050301    0.4885049    0.9215554
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                 0.7621622    0.6554029    0.8689214
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                 0.5892910   -0.1551734    1.3337555
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                 0.6144654    0.4162117    0.8127191
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                 0.7049505    0.4938717    0.9160294
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                 0.6663553    0.4552769    0.8774336
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                 0.7066199    0.5337869    0.8794529
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                 0.7371144    0.6195991    0.8546296
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                 0.6868233    0.5455878    0.8280587
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.2266667   -0.5249347    0.0716014
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -0.0760000   -0.3253068    0.1733068
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -0.9089474   -1.2518788   -0.5660160
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                 0.2596429   -0.0782522    0.5975379
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                 0.0273333   -0.3761948    0.4308615
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                 0.0466667   -0.3891095    0.4824428
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                 0.1100000   -0.1223079    0.3423079
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -0.0361429   -0.2728944    0.2006087
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                 0.1474603   -0.0692893    0.3642100
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                 0.0273596   -0.1749511    0.2296702
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -0.0316129   -0.3279648    0.2647390
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -0.3109375   -0.5375729   -0.0843021
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0277108   -1.1006628   -0.9547588
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.1162007   -1.1996544   -1.0327471
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -1.2467655   -1.3272061   -1.1663250
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -1.3449402   -1.4379852   -1.2518953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -1.3694972   -1.4758749   -1.2631195
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -1.4693388   -1.5454080   -1.3932696
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -1.4517612   -1.5376501   -1.3658723
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -1.5246829   -1.6026221   -1.4467438
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -1.4361809   -1.5131591   -1.3592027
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -1.3834813   -1.4508552   -1.3161074
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -1.2806660   -1.3442086   -1.2171234
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -1.1004530   -1.1587100   -1.0421960


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930207   -0.6125866   -0.5734549
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2994214   -1.3227674   -1.2760754


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.1341353   -0.7828051    0.5145344
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.2412782   -0.8825087    0.3999523
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.3578947   -1.0180159    0.3022264
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.2574613   -0.4409146    0.9558372
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.1158647   -0.4891615    0.7208908
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.2714980   -0.8705881    0.3275922
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.1846224   -0.4588210    0.8280658
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.6302961   -1.2743258    0.0137337
Birth       ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1424211   -0.7843018    0.4994597
Birth       ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0944211   -0.7242528    0.5354107
Birth       ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0711623   -0.5500533    0.6923778
Birth       ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           2                    1                  0.4265720    0.0036282    0.8495158
Birth       ki0047075b-MAL-ED          PERU                           3                    1                  0.5001897    0.0884654    0.9119140
Birth       ki0047075b-MAL-ED          PERU                           4                    1                  0.3035468   -0.2713997    0.8784933
Birth       ki0047075b-MAL-ED          PERU                           5                    1                  0.6064039    0.1395045    1.0733034
Birth       ki0047075b-MAL-ED          PERU                           6                    1                  0.4152351   -0.0875339    0.9180042
Birth       ki0047075b-MAL-ED          PERU                           7                    1                  0.0291107   -0.4773621    0.5355835
Birth       ki0047075b-MAL-ED          PERU                           8                    1                  0.2069397   -0.3520901    0.7659694
Birth       ki0047075b-MAL-ED          PERU                           9                    1                  0.2401633   -0.2985344    0.7788611
Birth       ki0047075b-MAL-ED          PERU                           10                   1                  0.3678325   -0.0471663    0.7828313
Birth       ki0047075b-MAL-ED          PERU                           11                   1                  0.0656897   -0.4430007    0.5743800
Birth       ki0047075b-MAL-ED          PERU                           12                   1                  0.3429973   -0.1605011    0.8464958
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2                    1                 -0.3239832   -1.1619238    0.5139574
Birth       ki1000108-IRC              INDIA                          3                    1                 -0.6927151   -1.7177990    0.3323689
Birth       ki1000108-IRC              INDIA                          4                    1                 -1.3103905   -2.1941046   -0.4266764
Birth       ki1000108-IRC              INDIA                          5                    1                 -1.5622151   -2.5907139   -0.5337162
Birth       ki1000108-IRC              INDIA                          6                    1                 -1.1550868   -2.0878136   -0.2223601
Birth       ki1000108-IRC              INDIA                          7                    1                 -0.8783871   -1.7335332   -0.0232410
Birth       ki1000108-IRC              INDIA                          8                    1                 -1.1804928   -2.0185171   -0.3424685
Birth       ki1000108-IRC              INDIA                          9                    1                 -0.8135484   -1.8388418    0.2117450
Birth       ki1000108-IRC              INDIA                          10                   1                 -0.7926393   -1.6372147    0.0519361
Birth       ki1000108-IRC              INDIA                          11                   1                 -0.6353905   -1.4603854    0.1896045
Birth       ki1000108-IRC              INDIA                          12                   1                 -0.7865716   -1.5720297   -0.0011136
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2152768   -0.1268809    0.5574345
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0210476   -0.4943229    0.5364181
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                    1                 -0.0216305   -0.3135591    0.2702980
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.4453398   -0.5935626   -0.2971170
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.5639453   -0.9584225   -0.1694681
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.1686770   -0.5016159    0.1642619
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.2318142   -0.5720723    0.1084439
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.3789723   -0.8132536    0.0553090
Birth       ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.2853257   -0.5983373    0.0276859
Birth       ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0208314   -0.2916071    0.3332699
Birth       ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.5099388    0.1727457    0.8471318
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.3234338   -0.1504566    0.7973242
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0481295   -0.3960815    0.4923406
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.3517869   -0.8043398    0.1007660
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.2339736   -0.7137888    0.2458416
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0510847   -0.5398913    0.4377218
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.3479053   -0.8706290    0.1748184
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.1540321   -0.6519595    0.3438953
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.1182666   -0.5673873    0.3308542
Birth       ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.0774252   -0.5372390    0.3823887
Birth       ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.2517780   -0.2093571    0.7129131
Birth       ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.4349153    0.0033030    0.8665275
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.5825556   -0.9447276   -0.2203835
Birth       ki1017093b-PROVIDE         BANGLADESH                     3                    1                 -0.3025556   -0.6910981    0.0859870
Birth       ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.3931905   -0.9076732    0.1212923
Birth       ki1017093b-PROVIDE         BANGLADESH                     5                    1                 -0.5274167   -1.0241653   -0.0306680
Birth       ki1017093b-PROVIDE         BANGLADESH                     6                    1                 -0.4758889   -0.8282161   -0.1235617
Birth       ki1017093b-PROVIDE         BANGLADESH                     7                    1                 -0.4245000   -0.7671956   -0.0818044
Birth       ki1017093b-PROVIDE         BANGLADESH                     8                    1                 -0.8870000   -1.2367537   -0.5372463
Birth       ki1017093b-PROVIDE         BANGLADESH                     9                    1                 -0.6744667   -0.9883686   -0.3605647
Birth       ki1017093b-PROVIDE         BANGLADESH                     10                   1                 -0.7972667   -1.1273796   -0.4671537
Birth       ki1017093b-PROVIDE         BANGLADESH                     11                   1                 -0.7277547   -1.0938929   -0.3616166
Birth       ki1017093b-PROVIDE         BANGLADESH                     12                   1                 -0.5228182   -0.8805724   -0.1650639
Birth       ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        2                    1                  0.1377370   -0.0136527    0.2891267
Birth       ki1119695-PROBIT           BELARUS                        3                    1                  0.0227950   -0.1767262    0.2223162
Birth       ki1119695-PROBIT           BELARUS                        4                    1                  0.0088372   -0.2309979    0.2486724
Birth       ki1119695-PROBIT           BELARUS                        5                    1                 -0.1132618   -0.3657628    0.1392392
Birth       ki1119695-PROBIT           BELARUS                        6                    1                  0.0127424   -0.3059254    0.3314101
Birth       ki1119695-PROBIT           BELARUS                        7                    1                 -0.0524516   -0.3556151    0.2507120
Birth       ki1119695-PROBIT           BELARUS                        8                    1                  0.0249855   -0.3013311    0.3513021
Birth       ki1119695-PROBIT           BELARUS                        9                    1                  0.0723681   -0.2610843    0.4058205
Birth       ki1119695-PROBIT           BELARUS                        10                   1                 -0.0049220   -0.2815223    0.2716783
Birth       ki1119695-PROBIT           BELARUS                        11                   1                  0.0744698   -0.1717964    0.3207360
Birth       ki1119695-PROBIT           BELARUS                        12                   1                  0.0696348   -0.1894330    0.3287027
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.1208759   -0.0066684    0.2484202
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0248481   -0.1478724    0.0981762
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0114301   -0.1148013    0.1376616
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0622298   -0.1942539    0.0697944
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.2653937   -0.3907679   -0.1400195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3200770   -0.4450730   -0.1950811
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.2141447   -0.3344718   -0.0938175
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.1389017   -0.2550388   -0.0227646
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.2674685   -0.3920758   -0.1428611
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.2414365   -0.3622758   -0.1205973
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.1657248   -0.2863057   -0.0451439
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0729399   -0.1464994    0.0006195
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1297466   -0.1989755   -0.0605177
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.1364520   -0.2122297   -0.0606743
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.1549442   -0.2393417   -0.0705468
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.1628466   -0.2431241   -0.0825691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0922150   -0.1676164   -0.0168135
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.1882481   -0.2616432   -0.1148530
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.2453592   -0.3162923   -0.1744260
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.1970828   -0.2664295   -0.1277361
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1209002   -0.1865793   -0.0552211
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0343870   -0.1025662    0.0337923
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0227037   -0.5028640    0.4574566
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0220733   -0.5382697    0.4941231
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0075673   -0.6343635    0.6192288
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.2549868   -0.3341627    0.8441362
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.5662963   -0.1855150    1.3181076
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.2123148   -0.8626270    0.4379974
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.3160427   -0.0792351    0.7113204
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0521128   -0.5460019    0.4417763
6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0631145   -0.5381011    0.6643301
6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.3328588   -0.1886692    0.8543868
6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.2962322   -0.1688816    0.7613460
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.5703720   -1.4215373    0.2807934
6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.2352361   -1.0581531    0.5876808
6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2436465   -0.8174126    1.3047055
6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0340794   -0.6742156    0.7423743
6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.7433611   -1.7590642    0.2723420
6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.1857014   -0.5759501    0.9473528
6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.2541944   -1.0177278    0.5093389
6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.3397778   -1.0807192    0.4011636
6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0080278   -0.8192830    0.8032274
6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.4910000   -1.3712490    0.3892490
6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.5797500   -1.4025826    0.2430826
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.0157749   -0.6480117    0.6795614
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                 -0.1003868   -0.6998422    0.4990687
6 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.0546082   -0.4947117    0.6039280
6 months    ki0047075b-MAL-ED          INDIA                          5                    1                  0.2785526   -0.5189892    1.0760944
6 months    ki0047075b-MAL-ED          INDIA                          6                    1                 -0.0755263   -0.7268055    0.5757529
6 months    ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0864111   -0.6955385    0.5227162
6 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.3723405   -0.2270286    0.9717096
6 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.0307193   -0.4800903    0.5415289
6 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.0990655   -0.4709632    0.6690941
6 months    ki0047075b-MAL-ED          INDIA                          11                   1                 -0.3904807   -0.9447529    0.1637915
6 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.0082456   -0.5730412    0.5895324
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          2                    1                  0.1329956   -0.4902411    0.7562323
6 months    ki0047075b-MAL-ED          NEPAL                          3                    1                  0.4958284   -0.2555773    1.2472341
6 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0070985   -0.6766707    0.6908676
6 months    ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0568333   -0.7243046    0.6106380
6 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.1475278   -0.5463408    0.8413964
6 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0353056   -0.7471295    0.8177406
6 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0068333   -0.6020790    0.6157457
6 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.2352708   -0.4063097    0.8768513
6 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.4726865   -0.1454414    1.0908144
6 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0014167   -0.5787103    0.5815436
6 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.3109265   -0.4397526    1.0616056
6 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.2130702   -0.3529262    0.7790665
6 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.4741228   -0.1050894    1.0533350
6 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.1693772   -0.7107562    0.3720019
6 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.1786550   -0.7468472    0.3895372
6 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0341228   -0.4564244    0.5246700
6 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0004226   -0.5834419    0.5825966
6 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.1925603   -0.4160598    0.8011804
6 months    ki0047075b-MAL-ED          PERU                           9                    1                 -0.0275439   -0.5494683    0.4943806
6 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.1079561   -0.4507712    0.6666834
6 months    ki0047075b-MAL-ED          PERU                           11                   1                  0.1341228   -0.3478540    0.6160996
6 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.2352632   -0.6732138    0.2026875
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2717601   -0.3119539    0.8554741
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0082544   -0.6779806    0.6614718
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1017713   -0.6044415    0.8079840
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.3032287   -1.1049499    0.4984925
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.3992544   -1.0764597    0.2779509
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0359211   -0.7215525    0.6497104
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.2525975   -0.6503114    1.1555063
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.3635136   -0.9749210    0.2478937
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.5968185   -1.2832497    0.0896127
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0540789   -0.7850029    0.8931608
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.2743972   -0.8458670    0.2970725
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2872500   -0.2887495    0.8632495
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1583611   -0.4905914    0.8073136
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.3436389   -0.6346217    1.3218995
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.2425625   -0.4623876    0.9475126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0581711   -0.6929687    0.8093108
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2843152   -0.3561312    0.9247617
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.9740556    0.2580788    1.6900323
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2378452   -0.4891255    0.9648160
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.4433864   -0.1404023    1.0271750
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0762994   -0.7493976    0.5967988
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0686389   -0.6775090    0.5402312
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0867341   -0.9298010    1.1032691
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.0969054   -0.5372217    0.7310326
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.3767316   -0.3172495    1.0707128
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.3270098   -0.3996427    1.0536623
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                  0.5957909   -0.1059053    1.2974872
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.9477891    0.1777724    1.7178058
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.4323039   -0.3560527    1.2206605
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.2604692   -0.4340618    0.9550002
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.0266819   -0.7699936    0.7166298
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.2419911   -0.8565310    0.3725488
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.5576451   -1.3317202    0.2164300
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 -0.0092293   -0.7287006    0.7102420
6 months    ki1000108-IRC              INDIA                          3                    1                 -0.1351332   -0.7738510    0.5035846
6 months    ki1000108-IRC              INDIA                          4                    1                  0.2187469   -0.4718031    0.9092969
6 months    ki1000108-IRC              INDIA                          5                    1                  0.5013876   -0.3019404    1.3047156
6 months    ki1000108-IRC              INDIA                          6                    1                 -0.2588336   -0.8839440    0.3662769
6 months    ki1000108-IRC              INDIA                          7                    1                 -0.2863986   -0.9469595    0.3741623
6 months    ki1000108-IRC              INDIA                          8                    1                 -0.2750518   -0.8718467    0.3217430
6 months    ki1000108-IRC              INDIA                          9                    1                 -0.0837579   -0.7265438    0.5590280
6 months    ki1000108-IRC              INDIA                          10                   1                 -0.3139474   -0.8730142    0.2451195
6 months    ki1000108-IRC              INDIA                          11                   1                 -0.1541996   -0.7402414    0.4318422
6 months    ki1000108-IRC              INDIA                          12                   1                 -0.3759143   -0.9981341    0.2463055
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2527171    0.0477537    0.4576805
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.2425396   -0.1461884    0.6312676
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.3194019    0.1432241    0.4955798
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.5289655   -0.0164531    1.0743842
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.6459124    0.3961216    0.8957031
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.9080469    0.7216764    1.0944174
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.6889602    0.4010393    0.9768811
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.5900658    0.3928660    0.7872656
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.2478153    0.0721246    0.4235060
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 -0.0995306   -0.3708917    0.1718305
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.1740444   -0.0589044    0.4069933
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.1516601   -0.2634219    0.5667421
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.2180513   -0.1664374    0.6025400
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.3195314   -0.1032228    0.7422857
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.2307418   -0.1939558    0.6554393
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.5838342    0.1823634    0.9853051
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.7359615    0.3089281    1.1629950
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.2882656   -0.1109301    0.6874613
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.6070116    0.1761628    1.0378604
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.1878449   -0.2294408    0.6051307
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.2592013   -0.1238996    0.6423022
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.2422964   -0.1561704    0.6407632
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.4453589    0.0040349    0.8866830
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.1498839   -0.3133002    0.6130679
6 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                  0.0854516   -0.4455007    0.6164038
6 months    ki1017093b-PROVIDE         BANGLADESH                     5                    1                  0.2097619   -0.2899531    0.7094769
6 months    ki1017093b-PROVIDE         BANGLADESH                     6                    1                  0.1802270   -0.2965738    0.6570279
6 months    ki1017093b-PROVIDE         BANGLADESH                     7                    1                  0.3317063   -0.1917476    0.8551603
6 months    ki1017093b-PROVIDE         BANGLADESH                     8                    1                  0.0917619   -0.4089282    0.5924520
6 months    ki1017093b-PROVIDE         BANGLADESH                     9                    1                  0.2099567   -0.2454682    0.6653816
6 months    ki1017093b-PROVIDE         BANGLADESH                     10                   1                  0.3264066   -0.1154598    0.7682731
6 months    ki1017093b-PROVIDE         BANGLADESH                     11                   1                  0.2727127   -0.1954053    0.7408307
6 months    ki1017093b-PROVIDE         BANGLADESH                     12                   1                  0.6073377    0.1601187    1.0545566
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1976256   -0.0874868    0.4827379
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.4657560    0.1978988    0.7336133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.5554217    0.2799634    0.8308800
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.4882128    0.2154356    0.7609900
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.3285343    0.0358427    0.6212260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.3197612    0.0576395    0.5818829
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2153270   -0.0526648    0.4833188
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2164673   -0.0586219    0.4915564
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.2156271   -0.0477674    0.4790217
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0128980   -0.2508855    0.2766815
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0467868   -0.2297783    0.3233518
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0112965   -0.2024059    0.2249989
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 -0.0743392   -0.2918013    0.1431228
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 -0.1439796   -0.3926136    0.1046545
6 months    ki1101329-Keneba           GAMBIA                         5                    1                 -0.1586761   -0.4075163    0.0901642
6 months    ki1101329-Keneba           GAMBIA                         6                    1                 -0.0720876   -0.3449021    0.2007269
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 -0.0339039   -0.3477129    0.2799051
6 months    ki1101329-Keneba           GAMBIA                         8                    1                 -0.0808103   -0.3039780    0.1423574
6 months    ki1101329-Keneba           GAMBIA                         9                    1                  0.1166662   -0.1151602    0.3484927
6 months    ki1101329-Keneba           GAMBIA                         10                   1                  0.2464796    0.0355330    0.4574261
6 months    ki1101329-Keneba           GAMBIA                         11                   1                  0.1774741   -0.0485305    0.4034788
6 months    ki1101329-Keneba           GAMBIA                         12                   1                 -0.1796437   -0.3974667    0.0381794
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.7395714    0.1818954    1.2972475
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.3408554   -0.2225152    0.9042260
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.5569585    0.0481303    1.0657868
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                  0.6940553    0.1932323    1.1948783
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                  0.2668290   -0.2582437    0.7919017
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                  0.1828571   -0.3100147    0.6757290
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                  0.3613095   -0.1947983    0.9174173
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                  0.1864881   -0.3071300    0.6801062
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                  0.4335714   -0.0605154    0.9276582
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                  0.1348909   -0.3470022    0.6167840
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                  0.0802381   -0.4343390    0.5948152
6 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     2                    1                 -0.1099916   -0.6512878    0.4313045
6 months    ki1114097-CMIN             BANGLADESH                     3                    1                 -0.3317308   -0.9301327    0.2666712
6 months    ki1114097-CMIN             BANGLADESH                     4                    1                  0.0932692   -0.5980663    0.7846048
6 months    ki1114097-CMIN             BANGLADESH                     5                    1                  0.6186614    0.0900628    1.1472600
6 months    ki1114097-CMIN             BANGLADESH                     6                    1                  0.1328526   -0.6538616    0.9195667
6 months    ki1114097-CMIN             BANGLADESH                     7                    1                  0.4329359   -0.1711481    1.0370198
6 months    ki1114097-CMIN             BANGLADESH                     8                    1                  1.0435633    0.3890166    1.6981101
6 months    ki1114097-CMIN             BANGLADESH                     9                    1                  0.7056859    0.1194110    1.2919608
6 months    ki1114097-CMIN             BANGLADESH                     10                   1                 -0.3679808   -0.8233270    0.0873655
6 months    ki1114097-CMIN             BANGLADESH                     11                   1                  0.0980128   -0.4956009    0.6916266
6 months    ki1114097-CMIN             BANGLADESH                     12                   1                 -0.3403022   -0.9839974    0.3033930
6 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           2                    1                  0.0474241   -0.6059394    0.7007876
6 months    ki1114097-CONTENT          PERU                           3                    1                  0.0732000   -0.5226184    0.6690184
6 months    ki1114097-CONTENT          PERU                           4                    1                  0.0778544   -0.4629625    0.6186713
6 months    ki1114097-CONTENT          PERU                           5                    1                  0.5175286   -0.2379928    1.2730500
6 months    ki1114097-CONTENT          PERU                           6                    1                 -0.0128615   -0.6238108    0.5980877
6 months    ki1114097-CONTENT          PERU                           7                    1                  0.3709631   -0.2028110    0.9447372
6 months    ki1114097-CONTENT          PERU                           8                    1                 -0.0318348   -0.5736722    0.5100027
6 months    ki1114097-CONTENT          PERU                           9                    1                  0.0546000   -0.5112943    0.6204943
6 months    ki1114097-CONTENT          PERU                           10                   1                 -0.1291857   -0.8203871    0.5620156
6 months    ki1114097-CONTENT          PERU                           11                   1                  0.0732111   -0.6676455    0.8140677
6 months    ki1114097-CONTENT          PERU                           12                   1                 -0.0609000   -0.7452036    0.6234036
6 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 -0.0249174   -0.0974440    0.0476092
6 months    ki1119695-PROBIT           BELARUS                        3                    1                  0.0143211   -0.1004264    0.1290687
6 months    ki1119695-PROBIT           BELARUS                        4                    1                  0.0230673   -0.0949714    0.1411059
6 months    ki1119695-PROBIT           BELARUS                        5                    1                 -0.0215075   -0.1319563    0.0889413
6 months    ki1119695-PROBIT           BELARUS                        6                    1                  0.0255962   -0.1203951    0.1715874
6 months    ki1119695-PROBIT           BELARUS                        7                    1                 -0.0033194   -0.1410049    0.1343662
6 months    ki1119695-PROBIT           BELARUS                        8                    1                 -0.0086265   -0.1410740    0.1238211
6 months    ki1119695-PROBIT           BELARUS                        9                    1                 -0.0248845   -0.1488939    0.0991250
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0327563   -0.1522253    0.0867128
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0149862   -0.1485194    0.1185470
6 months    ki1119695-PROBIT           BELARUS                        12                   1                  0.0000745   -0.1164655    0.1166146
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0855528   -0.2122048    0.0410993
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0324336   -0.0946107    0.1594779
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.0561767   -0.1786549    0.0663015
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.0723975   -0.1988990    0.0541041
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.1663684   -0.2955308   -0.0372060
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0875164   -0.2142134    0.0391806
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0771423   -0.1991434    0.0448587
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0586570   -0.1795141    0.0622000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.1068467   -0.2308758    0.0171824
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1066791   -0.2257190    0.0123609
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0148567   -0.1333128    0.1035994
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.3152621   -0.0388948    0.6694191
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 -0.1888348   -0.6214430    0.2437733
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                  0.2702677   -0.1385875    0.6791230
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                  0.2167246   -0.1756372    0.6090864
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0827941   -0.5713762    0.4057880
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 -0.0451085   -0.3843780    0.2941610
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 -0.1794924   -0.5205614    0.1615766
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                  0.0064216   -0.3228002    0.3356434
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.0181253   -0.2955542    0.3318047
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                 -0.2241499   -0.5424330    0.0941333
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 -0.0121749   -0.3482236    0.3238737
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0951732    0.0048605    0.1854859
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.1050889    0.0219661    0.1882116
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0800160    0.0001203    0.1599116
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.1637937    0.0766144    0.2509729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1864030    0.0978985    0.2749074
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.1677947    0.0802837    0.2553056
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0839489    0.0046498    0.1632479
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0862545    0.0033947    0.1691144
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0203894   -0.0588273    0.0996060
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0093197   -0.0830850    0.0644456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0537007   -0.0238173    0.1312188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.2935084   -0.9505967    0.3635799
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.3176880   -0.9754393    0.3400633
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.1912143   -0.8883632    0.5059347
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.4240038   -1.1097316    0.2617241
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.1082143   -0.7561264    0.9725550
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.3007143   -0.9956865    0.3942579
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.2320779   -0.8386275    0.3744717
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.4657143   -1.1456536    0.2142250
24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0110357   -0.6737171    0.6957885
24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.3123052   -1.0540967    0.4294863
24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1993783   -0.4280965    0.8268531
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.1133125   -1.0048382    0.7782132
24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0448571   -0.9478557    1.0375700
24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2195000   -1.1067893    1.5457893
24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                 -0.2863333   -1.0536948    0.4810281
24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.5280000   -1.5599288    0.5039288
24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                  1.2170000    0.3069735    2.1270265
24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.2927692   -0.6906773    1.2762158
24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.2672593   -1.0266284    0.4921099
24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.4462857   -0.4962335    1.3888049
24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.2874444   -1.1894319    0.6145430
24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.2492727   -0.6030506    1.1015960
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.4729240   -0.1054661    1.0513141
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.1734211   -0.2945556    0.6413977
24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.4266541   -0.2093650    1.0626733
24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.1676316   -0.6906989    0.3554357
24 months   ki0047075b-MAL-ED          INDIA                          6                    1                 -0.1520760   -0.8572593    0.5531072
24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.0936728   -0.4171679    0.6045135
24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.3395113   -0.1794223    0.8584449
24 months   ki0047075b-MAL-ED          INDIA                          9                    1                 -0.1159649   -0.5841657    0.3522359
24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.1948684   -0.3052238    0.6949606
24 months   ki0047075b-MAL-ED          INDIA                          11                   1                 -0.2132566   -0.6720729    0.2455597
24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.4568421   -0.0393058    0.9529900
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0176471   -0.4621130    0.4974071
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                  0.1376471   -0.3588343    0.6341284
24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0997727   -0.6117937    0.4122482
24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.4878947   -0.9805535    0.0047640
24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.2552778   -0.7564056    0.2458500
24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1150000   -0.6525312    0.4225312
24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.3335417   -0.8581828    0.1910994
24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.3470000   -0.8292765    0.1352765
24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                  0.1370000   -0.2667874    0.5407874
24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.1133333   -0.6288747    0.4022081
24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.2684375   -0.3573126    0.8941876
24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.2307353   -0.2568501    0.7183207
24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.2501667   -0.3504331    0.8507664
24 months   ki0047075b-MAL-ED          PERU                           4                    1                  0.2770455   -0.2659555    0.8200464
24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0843421   -0.3901908    0.5588750
24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.1138636   -0.7667851    0.9945124
24 months   ki0047075b-MAL-ED          PERU                           7                    1                 -0.1328333   -0.6179102    0.3522435
24 months   ki0047075b-MAL-ED          PERU                           8                    1                 -0.0291667   -0.7215112    0.6631779
24 months   ki0047075b-MAL-ED          PERU                           9                    1                 -0.0241667   -0.4654483    0.4171150
24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.1889286   -0.3299489    0.7078060
24 months   ki0047075b-MAL-ED          PERU                           11                   1                  0.1736905   -0.3271207    0.6745016
24 months   ki0047075b-MAL-ED          PERU                           12                   1                  0.0438333   -0.4433542    0.5310209
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2823529   -0.2163887    0.7810945
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.4527101   -0.0655316    0.9709518
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.3861029   -0.3794402    1.1516461
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.0481863   -0.5407686    0.6371412
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.3651654   -0.1846079    0.9149387
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.5148529   -0.0722729    1.1019787
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.4661029   -0.2759475    1.2081534
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.3485372   -0.1644059    0.8614802
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0528529   -0.4909081    0.5966140
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.4763747   -0.0696791    1.0224285
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0603368   -0.4102804    0.5309540
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.2461667   -0.4636556    0.9559889
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.5497778   -0.1708393    1.2703948
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                  0.4061667   -0.5258237    1.3381570
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.6667222    0.0343962    1.2990482
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.4858889   -0.1444702    1.1162480
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.8727971    0.1662406    1.5793536
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.5059394   -0.4303777    1.4422565
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.5958889   -0.1109354    1.3027132
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                  0.8293333    0.1440062    1.5146604
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.5940833   -0.0908050    1.2789716
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.7657821    0.0654639    1.4661002
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.1036275   -0.4413956    0.6486505
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                  0.2558855   -0.1687348    0.6805058
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                  0.1997259   -0.2251844    0.6246363
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.0078540   -0.4960657    0.4803577
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.0807419   -0.5052122    0.3437283
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.0765334   -0.4447519    0.5978188
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.0491176   -0.5865918    0.4883565
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.0761345   -0.5079600    0.3556911
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.2786139   -0.7278624    0.1706346
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.0191245   -0.4231841    0.3849351
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.3723059   -0.8452738    0.1006620
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                  0.0201974   -0.4537038    0.4940985
24 months   ki1000108-IRC              INDIA                          3                    1                  0.0217560   -0.3801248    0.4236368
24 months   ki1000108-IRC              INDIA                          4                    1                 -0.3083939   -0.7272886    0.1105008
24 months   ki1000108-IRC              INDIA                          5                    1                 -0.4559011   -0.9526164    0.0408142
24 months   ki1000108-IRC              INDIA                          6                    1                 -0.3039130   -0.7390839    0.1312579
24 months   ki1000108-IRC              INDIA                          7                    1                 -0.2042934   -0.6116282    0.2030415
24 months   ki1000108-IRC              INDIA                          8                    1                 -0.3630223   -0.7954999    0.0694552
24 months   ki1000108-IRC              INDIA                          9                    1                 -0.3311452   -0.8285551    0.1662646
24 months   ki1000108-IRC              INDIA                          10                   1                 -0.2621112   -0.7114834    0.1872610
24 months   ki1000108-IRC              INDIA                          11                   1                 -0.2362610   -0.6544159    0.1818940
24 months   ki1000108-IRC              INDIA                          12                   1                 -0.2120142   -0.5924038    0.1683754
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0285551   -0.3727392    0.4298494
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0475224   -0.4094131    0.5044578
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.2023136   -0.6146927    0.2100655
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.1014264   -0.4887242    0.2858715
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.3037151   -0.0937763    0.7012065
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.2475638   -0.2333160    0.7284436
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0100057   -0.4726379    0.4926494
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0460480   -0.4160013    0.5080973
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0701797   -0.4614971    0.6018566
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.1353871   -0.2835432    0.5543174
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.1589758   -0.2176076    0.5355592
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.1022656   -0.4955545    0.2910233
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                  0.0136842   -0.3571139    0.3844823
24 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 -0.0796429   -0.5488771    0.3895914
24 months   ki1017093b-PROVIDE         BANGLADESH                     5                    1                 -0.0076667   -0.4279982    0.4126648
24 months   ki1017093b-PROVIDE         BANGLADESH                     6                    1                 -0.1505000   -0.6180617    0.3170617
24 months   ki1017093b-PROVIDE         BANGLADESH                     7                    1                  0.0004545   -0.5291194    0.5300285
24 months   ki1017093b-PROVIDE         BANGLADESH                     8                    1                 -0.4080952   -0.9406728    0.1244823
24 months   ki1017093b-PROVIDE         BANGLADESH                     9                    1                 -0.3555333   -0.7394232    0.0283566
24 months   ki1017093b-PROVIDE         BANGLADESH                     10                   1                 -0.3655714   -0.7489625    0.0178197
24 months   ki1017093b-PROVIDE         BANGLADESH                     11                   1                 -0.2711667   -0.6985046    0.1561712
24 months   ki1017093b-PROVIDE         BANGLADESH                     12                   1                  0.0441791   -0.3603265    0.4486847
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.2555794    0.0600695    0.4510892
24 months   ki1101329-Keneba           GAMBIA                         3                    1                  0.1166050   -0.0834518    0.3166619
24 months   ki1101329-Keneba           GAMBIA                         4                    1                  0.0760843   -0.1508149    0.3029835
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 -0.0018858   -0.2054513    0.2016797
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 -0.0004101   -0.2533495    0.2525293
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 -0.3045244   -0.5644149   -0.0446340
24 months   ki1101329-Keneba           GAMBIA                         8                    1                 -0.3802735   -0.5772451   -0.1833019
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 -0.2718578   -0.4774649   -0.0662508
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.2345996   -0.4352048   -0.0339943
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0979212   -0.3220204    0.1261780
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 -0.1342081   -0.3369059    0.0684897
24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.1514583   -0.4976723    0.1947557
24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0277778   -0.3787862    0.4343417
24 months   ki1114097-CMIN             BANGLADESH                     4                    1                 -0.1520455   -0.6345378    0.3304469
24 months   ki1114097-CMIN             BANGLADESH                     5                    1                  0.2187500   -0.2608926    0.6983926
24 months   ki1114097-CMIN             BANGLADESH                     6                    1                  0.2387500   -0.0543912    0.5318912
24 months   ki1114097-CMIN             BANGLADESH                     7                    1                 -0.1710000   -0.6475277    0.3055277
24 months   ki1114097-CMIN             BANGLADESH                     8                    1                 -0.1166667   -0.6109234    0.3775900
24 months   ki1114097-CMIN             BANGLADESH                     9                    1                 -0.3470000   -0.8777110    0.1837110
24 months   ki1114097-CMIN             BANGLADESH                     10                   1                 -0.4643750   -0.8952019   -0.0335481
24 months   ki1114097-CMIN             BANGLADESH                     11                   1                 -0.4070000   -0.8979053    0.0839053
24 months   ki1114097-CMIN             BANGLADESH                     12                   1                 -0.3927778   -0.8160239    0.0304683
24 months   ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           2                    1                  0.7910714    0.0937062    1.4884366
24 months   ki1114097-CONTENT          PERU                           3                    1                  0.9141558    0.2529031    1.5754086
24 months   ki1114097-CONTENT          PERU                           4                    1                  0.4780952   -0.0806146    1.0368051
24 months   ki1114097-CONTENT          PERU                           5                    1                  0.7421429   -0.0217271    1.5060129
24 months   ki1114097-CONTENT          PERU                           6                    1                  0.1223377   -0.4226823    0.6673577
24 months   ki1114097-CONTENT          PERU                           7                    1                  0.6933851    0.1437361    1.2430341
24 months   ki1114097-CONTENT          PERU                           8                    1                  0.5778571   -0.1024360    1.2581502
24 months   ki1114097-CONTENT          PERU                           9                    1                  0.7676050    0.2267096    1.3085005
24 months   ki1114097-CONTENT          PERU                           10                   1                  0.9759740    0.3806185    1.5713296
24 months   ki1114097-CONTENT          PERU                           11                   1                  0.7897619    0.0169172    1.5626066
24 months   ki1114097-CONTENT          PERU                           12                   1                  0.8579286    0.0651400    1.6507172
24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                  0.1164694   -0.2659068    0.4988457
24 months   ki1119695-PROBIT           BELARUS                        3                    1                  0.0768181   -0.2675567    0.4211929
24 months   ki1119695-PROBIT           BELARUS                        4                    1                  0.0786592   -0.2184679    0.3757862
24 months   ki1119695-PROBIT           BELARUS                        5                    1                  0.1357912   -0.1146411    0.3862234
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0370799   -0.7898456    0.7156857
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0119056   -0.3339888    0.3101777
24 months   ki1119695-PROBIT           BELARUS                        8                    1                  0.0785796   -0.2491944    0.4063536
24 months   ki1119695-PROBIT           BELARUS                        9                    1                  0.0399843   -0.2509660    0.3309346
24 months   ki1119695-PROBIT           BELARUS                        10                   1                  0.0802489   -0.2204785    0.3809764
24 months   ki1119695-PROBIT           BELARUS                        11                   1                  0.1107434   -0.1330293    0.3545160
24 months   ki1119695-PROBIT           BELARUS                        12                   1                  0.0604523   -0.1864240    0.3073286
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.1506667   -0.2380719    0.5394053
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 -0.6822807   -1.1367758   -0.2277856
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.4863095    0.0356024    0.9370166
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                  0.2540000   -0.2477956    0.7557956
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                  0.2733333   -0.2547431    0.8014097
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                  0.3366667   -0.0413952    0.7147285
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.1905238   -0.1902847    0.5713323
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.3741270    0.0054208    0.7428331
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.2540262   -0.1063811    0.6144335
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                  0.1950538   -0.2254082    0.6155157
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.0842708   -0.4588738    0.2903322
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0884899   -0.1950794    0.0180997
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.2190547   -0.3232702   -0.1148392
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.3172294   -0.4340599   -0.2003988
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.3417864   -0.4695834   -0.2139894
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.4416280   -0.5457871   -0.3374689
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.4240504   -0.5387116   -0.3093891
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.4969721   -0.6064938   -0.3874504
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.4084701   -0.5163058   -0.3006344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.3557705   -0.4574624   -0.2540785
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.2529552   -0.3491538   -0.1567565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0727421   -0.1657588    0.0202745


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0996304   -0.5136573    0.3143965
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                 0.2686721    0.0199024    0.5174418
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.8041315   -1.3935851   -0.2146779
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1363310   -0.3989775    0.1263155
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0050065   -0.3264809    0.3164679
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5854586   -0.8393820   -0.3315353
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.0224481   -0.2155455    0.2604417
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1340704   -0.2146538   -0.0534870
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1272816   -0.1761039   -0.0784592
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1104007   -0.2063545    0.4271559
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2303886   -0.8234425    0.3626652
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0022171   -0.4051761    0.4007418
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1374619   -0.3358253    0.6107491
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.0410215   -0.2764390    0.3584819
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1281980   -0.5490517    0.2926558
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1959713   -0.2827324    0.6746751
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.2137449   -0.2855054    0.7129953
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1470876   -0.5682331    0.2740578
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4029123    0.2298669    0.5759577
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.3054808    0.0510766    0.5598851
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2756712   -0.0909635    0.6423060
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2463440    0.0484046    0.4442833
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0015530   -0.1439229    0.1408170
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.3428914   -0.0067083    0.6924911
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.1152240   -0.2521263    0.4825742
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.0970318   -0.3701267    0.5641902
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0071151   -0.1027706    0.0885404
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0638683   -0.1453439    0.0176073
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0169714   -0.2609751    0.2270324
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0796698    0.0249607    0.1343790
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1834030   -0.7031524    0.3363464
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0362308   -0.5516170    0.6240786
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1300777   -0.2248185    0.4849738
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1064474   -0.4330311    0.2201364
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0879478   -0.2190935    0.3949890
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2497059   -0.0930671    0.5924789
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5676153    0.0116193    1.1236112
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0068564   -0.3021094    0.2883966
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2177010   -0.5057191    0.0703172
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0646613   -0.1928321    0.3221546
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1678670   -0.4824412    0.1467072
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0802847   -0.2097834    0.0492139
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1835391   -0.4320527    0.0649745
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.6782578    0.2132295    1.1432862
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0610585   -0.1779031    0.3000202
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1788958   -0.1097962    0.4675878
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2717106   -0.3422257   -0.2011955

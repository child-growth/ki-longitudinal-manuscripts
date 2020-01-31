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
Birth       ki1101329-Keneba           GAMBIA                         1             153    1466
Birth       ki1101329-Keneba           GAMBIA                         2             140    1466
Birth       ki1101329-Keneba           GAMBIA                         3             159    1466
Birth       ki1101329-Keneba           GAMBIA                         4             103    1466
Birth       ki1101329-Keneba           GAMBIA                         5             102    1466
Birth       ki1101329-Keneba           GAMBIA                         6              85    1466
Birth       ki1101329-Keneba           GAMBIA                         7              74    1466
Birth       ki1101329-Keneba           GAMBIA                         8             116    1466
Birth       ki1101329-Keneba           GAMBIA                         9             118    1466
Birth       ki1101329-Keneba           GAMBIA                         10            168    1466
Birth       ki1101329-Keneba           GAMBIA                         11            115    1466
Birth       ki1101329-Keneba           GAMBIA                         12            133    1466
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            1623   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2            1410   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            1703   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4            1245   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             880   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             925   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7            1059   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8            1414   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9            1856   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10           1919   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11           1937   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12           2043   18014
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            1342   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2            1154   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3            1409   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4            1178   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5            1110   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6            1198   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7            1255   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8            1515   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9            1621   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10           1665   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11           1759   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12           1578   16784
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             665    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             561    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             714    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             504    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             364    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             609    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             672    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             618    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             800    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            874    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11           1039    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12           1183    8603
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7dbec5ea-8d4e-4ed3-9018-c3a9efc9f889/16a70ef2-3c2a-482d-b476-2cc722017696/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1334975   -1.6938187   -0.5731763
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0018894   -0.3441044    0.3478832
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.5981934   -1.2551020    0.0587151
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0232810   -0.2035320    0.1569700
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0677320   -1.3192725   -0.8161915
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7142260   -0.9832397   -0.4452122
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7906817   -1.0726267   -0.5087368
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0303267   -1.3114926   -0.7491607
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2604145   -0.3558653   -0.1649637
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6315074   -0.6889559   -0.5740590
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1822876   -0.9060298    0.5414545
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7894492    0.0830462    1.4958522
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5444701   -1.1390758    0.0501357
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0097813   -0.4629539    0.4433913
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.4574207    0.9677076    1.9471338
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4849273   -0.6179885    1.5878431
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.2472800    0.6656276    1.8289323
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2004625   -0.3796206    0.7805455
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0223049   -0.7283356    0.6837257
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1453874   -0.4532389    0.1624642
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0197822   -0.3618338    0.3222694
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1357547   -0.1021024    0.3736118
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3864019    0.2001165    0.5726873
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0596707   -0.0907206    0.2100621
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0939479   -0.3370569    0.5249526
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.2869285   -0.2890968    0.8629539
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2672672    0.5751850    1.9593494
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5387845    0.4371311    0.6404378
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3728921    0.2786710    0.4671132
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3506081    0.0722857    0.6289305
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5132366   -0.5826253   -0.4438480
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7689120   -1.1991540   -0.3386699
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.6150804    0.8416637    2.3884972
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0004049   -1.4390901   -0.5617198
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6809775   -1.0089121   -0.3530430
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2269535   -0.7941785    0.3402715
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1308740   -0.4770895    0.2153416
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0159980   -0.3519197    0.3199237
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8516932   -1.1401038   -0.5632826
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.0127173   -1.3304675   -0.6949671
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7779998   -1.0940767   -0.4619230
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0179356   -1.4039684   -0.6319029
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4778798   -0.6199035   -0.3358561
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.6437820   -0.9122816   -0.3752824
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.4534383   -0.1232568    1.0301334
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.5390527    0.3417399    0.7363654
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1696349   -0.1934527    0.5327225
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0284162   -1.1013974   -0.9554350


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3105514    0.2848767    0.3362262
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1916370   -0.3340908    0.7173649
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0539069   -0.3907349    0.2829211
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4123897   -1.0438753    0.2190960
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6467643   -0.8439062   -0.4496224
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2821897   -0.5302204   -0.0341590
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5842327   -0.8497590   -0.3187064
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4442637   -0.7172775   -0.1712500
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1145367   -0.2763358    0.0472625
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2550752   -0.3469052   -0.1632452
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1463198   -0.1995063   -0.0931333
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0446113   -0.6665237    0.7557463
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1826281   -0.5081745    0.8734307
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1635278   -0.7349041    0.4078484
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1202121   -0.3188053    0.5592295
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4045391   -0.8714787    0.0624004
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0572512   -1.0143269    1.1288292
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7110586   -1.2828091   -0.1393082
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7031391   -1.2421449   -0.1641333
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5766248   -1.2591879    0.1059383
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5203210   -0.7095357   -0.3311064
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4276216   -0.7571019   -0.0981413
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3348454   -0.5609972   -0.1086936
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3054687   -0.4852844   -0.1256531
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2442745   -0.3852355   -0.1033135
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1779612   -0.5868060    0.2308835
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.8649738   -1.4216044   -0.3083432
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1988354   -0.8569968    0.4593260
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0404594   -0.0458007    0.1267194
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0623407   -0.1515567    0.0268754
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0993323   -0.1736161    0.3722807
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0802795   -0.1470700   -0.0134890
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0503805   -0.4661969    0.3654360
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -1.1524572   -1.9132096   -0.3917048
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0487530   -0.3749644    0.4724703
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3060652   -0.0202588    0.6323893
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3381517   -0.2044449    0.8807483
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5399041    0.1944329    0.8853753
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0707955   -0.2554753    0.3970663
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2945427    0.0098725    0.5792128
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.2669023   -0.0402235    0.5740282
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1335792   -0.4420692    0.1749108
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1250686   -0.2429835    0.4931207
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3320492   -0.4680537   -0.1960447
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.2097571   -0.4901627    0.0706485
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.1133910   -0.4384012    0.6651832
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1483768   -0.0420477    0.3388014
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2174058   -0.5708392    0.1360276
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2693869   -0.3399807   -0.1987931

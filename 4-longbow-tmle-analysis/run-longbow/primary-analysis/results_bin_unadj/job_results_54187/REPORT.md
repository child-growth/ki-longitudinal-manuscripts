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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        exclfeed3    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      123     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       66     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       19     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       58     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        6     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      131     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        7     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       71     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       41     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       59     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       41     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       57     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1       13     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      124     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       33     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       61     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        3     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      206     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       17     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       23     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      203     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       42     219
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        5     219
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      149     219
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       23     219
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        4      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        6      10
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0       18      39
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       21      39
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0        0      39
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1        0      39
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0      263     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1      158     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1       10     443
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      407     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       86     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      158     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       36     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0     1100    2015
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      695    2015
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      120    2015
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      100    2015
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      147     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      229     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       39     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       38     453
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    11034   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2327   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1167   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      240   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      109     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       38     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       13     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        4     164
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      148     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       10     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       78     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        7     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       60     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        4     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      134     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        4     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       98     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1       14     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       80     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       18     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       66     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        4     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      143     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       12     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       64     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      218     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       24     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      231     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       44     219
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        3     219
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      167     219
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        5     219
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        3       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        6       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0       33      38
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1        5      38
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0        0      38
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1        0      38
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0      365     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       50     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0       17     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        5     437
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      471     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       22     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      175     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       15     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0     1582    2001
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1      204    2001
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0      172    2001
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1       43    2001
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      288     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       78     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0       55     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       18     439
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    12287   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      961   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1279   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      116   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      143     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       14     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        1     161
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      122     232
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       29     232
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       69     232
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     232
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       57     185
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        3     185
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      122     185
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        3     185
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       78     209
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1       31     209
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       71     209
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       29     209
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       59     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1       11     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      131     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       25     226
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       58     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        3     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      192     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       14     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       22     248
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     248
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      191     248
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     248
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       43     210
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        3     210
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      143     210
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       21     210
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        6      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      10
6-24 months                   ki1000108-IRC              INDIA                          0                      0        7      10
6-24 months                   ki1000108-IRC              INDIA                          0                      1        3      10
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0       21      38
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       17      38
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0        0      38
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1        0      38
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0      273     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1      125     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     417
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      363     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       72     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      153     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       27     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0     1118    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      582    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      136    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1       74    1910
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      181     451
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      194     451
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       45     451
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       31     451
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     7299    9618
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1489    9618
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      699    9618
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      131    9618
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      113     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       35     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       14     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        3     165


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/388826be-5a35-4f1c-b29f-e578346ef3f7/13ab7968-34fd-462d-9d83-239f0037ac17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/388826be-5a35-4f1c-b29f-e578346ef3f7/13ab7968-34fd-462d-9d83-239f0037ac17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/388826be-5a35-4f1c-b29f-e578346ef3f7/13ab7968-34fd-462d-9d83-239f0037ac17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/388826be-5a35-4f1c-b29f-e578346ef3f7/13ab7968-34fd-462d-9d83-239f0037ac17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2264151   0.1612300   0.2916001
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2235294   0.1347811   0.3122778
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0937500   0.0221611   0.1653389
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0507246   0.0140225   0.0874268
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3660714   0.2766444   0.4554985
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4100000   0.3133743   0.5066257
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1857143   0.0944147   0.2770139
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2101911   0.1463169   0.2740652
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1063830   0.0180333   0.1947326
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1337209   0.0827402   0.1847017
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3752969   0.3178349   0.4327589
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4545455   0.2817186   0.6273723
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1744422   0.1409194   0.2079650
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1855670   0.1308224   0.2403116
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                0.3871866   0.3646469   0.4097263
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                0.4545455   0.3887323   0.5203586
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.6090426   0.5596658   0.6584193
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4935065   0.3817131   0.6052998
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1741636   0.1671520   0.1811752
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1705757   0.1475979   0.1935535
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.0632911   0.0252469   0.1013354
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0823529   0.0237915   0.1409143
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1250000   0.0636048   0.1863952
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1836735   0.1068265   0.2605204
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0446247   0.0263850   0.0628644
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0789474   0.0405766   0.1173181
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                0.1142217   0.0994663   0.1289772
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2000000   0.1465193   0.2534807
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2131148   0.1711132   0.2551163
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2465753   0.1475887   0.3455620
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.0725393   0.0674134   0.0776651
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.0831541   0.0654419   0.1008663
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1920530   0.1290879   0.2550180
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1481481   0.0706174   0.2256789
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                0.2844037   0.1995095   0.3692979
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2900000   0.2008507   0.3791493
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1571429   0.0716979   0.2425878
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1602564   0.1025625   0.2179503
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1655172   0.1305640   0.2004705
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1500000   0.0977940   0.2022060
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                0.3423529   0.3197913   0.3649146
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                0.3523810   0.2877533   0.4170086
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5173333   0.4667015   0.5679651
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4078947   0.2972841   0.5185054
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1694356   0.1611276   0.1777436
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1578313   0.1309176   0.1847450


### Parameter: E(Y)


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2254098   0.1728726   0.2779471
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.0643564   0.0304329   0.0982800
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.3867925   0.3210797   0.4525052
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2026432   0.1502365   0.2550498
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1278539   0.0835266   0.1721812
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3792325   0.3255512   0.4329138
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3945409   0.3731954   0.4158865
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5894040   0.5440524   0.6347556
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1738218   0.1671074   0.1805361
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.0699588   0.0378213   0.1020964
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1523810   0.1036572   0.2011047
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1258581   0.0910745   0.1606418
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1234383   0.1090221   0.1378544
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.2186788   0.1799683   0.2573894
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.0735505   0.0685774   0.0785236
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1767241   0.1275357   0.2259125
6-24 months                   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2870813   0.2256006   0.3485621
6-24 months                   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1592920   0.1114757   0.2071084
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3165468   0.2711185   0.3619751
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3434555   0.3221539   0.3647571
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4988914   0.4526947   0.5450880
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1684342   0.1604630   0.1764054


### Parameter: RR


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9872549   0.6045586   1.612205
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.5410628   0.1889656   1.549219
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1                 1.1200000   0.7976306   1.572658
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1                 1.1317981   0.6349901   2.017302
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2569767   0.5040371   3.134671
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.2111623   0.7836492   1.871902
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.0637737   0.7480688   1.512714
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    1                 1.1739699   1.0043470   1.372240
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.8102989   0.6370218   1.030709
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9793992   0.8510015   1.127169
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.3011765   0.5128087   3.301544
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1                 1.4693878   0.7707748   2.801208
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.8863636   0.8915751   3.991103
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.7691387   0.9374819   3.338573
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    1                 1.7509804   1.3010908   2.356432
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1570074   0.7397982   1.809502
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.1463328   0.9173862   1.432416
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.7713921   0.4159854   1.430449
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    1                 1.0196774   0.6643121   1.565141
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    1                 1.0198135   0.5312617   1.957641
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.1730526   0.5767231   2.385985
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.9062500   0.6031823   1.361593
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    1                 1.0292914   0.8470353   1.250763
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.7884563   0.5909797   1.051920
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9315122   0.7805863   1.111619


### Parameter: PAR


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0010053   -0.0393655   0.0373549
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0293936   -0.0844233   0.0256361
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0207210   -0.0414521   0.0828941
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0169289   -0.0601500   0.0940078
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0214709   -0.0586552   0.1015970
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0039356   -0.0052013   0.0130725
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0031415   -0.0149897   0.0212727
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0073543   -0.0002962   0.0150048
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0196386   -0.0407937   0.0015165
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0003418   -0.0026291   0.0019454
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0066677   -0.0177867   0.0311221
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0273810   -0.0186919   0.0734538
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0053762   -0.0018898   0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0095480   -0.0023270   0.0214230
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0092166    0.0031429   0.0152902
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0055641   -0.0123546   0.0234828
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0010113   -0.0007386   0.0027611
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0153288   -0.0503043   0.0196466
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0026777   -0.0562250   0.0615804
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0021492   -0.0690168   0.0733152
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0024764   -0.0094430   0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0045416   -0.0229384   0.0138551
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0011026   -0.0064250   0.0086301
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0184420   -0.0392879   0.0024040
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0010014   -0.0034192   0.0014164


### Parameter: PAF


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0044597   -0.1899040   0.1520835
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.4567308   -1.5709361   0.1745946
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0535714   -0.1216847   0.2014449
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0835404   -0.3874192   0.3946327
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1679331   -0.7627614   0.6072439
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0103778   -0.0145675   0.0347097
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0176903   -0.0898784   0.1146422
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0186402   -0.0009510   0.0378479
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0333194   -0.0700284   0.0021303
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0019666   -0.0152150   0.0111090
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0953090   -0.3278890   0.3836339
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1796875   -0.1803264   0.4298928
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0427163   -0.0166271   0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.1762513   -0.0665652   0.3637877
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0746653    0.0247358   0.1220387
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0254440   -0.0599789   0.1039827
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0137491   -0.0102667   0.0371940
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0867388   -0.3028716   0.0935398
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0093272   -0.2186413   0.1946501
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0134921   -0.5515880   0.3727730
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0078232   -0.0309120   0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0282132   -0.1490124   0.0798861
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0032102   -0.0189496   0.0248880
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0369659   -0.0797589   0.0041311
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0059454   -0.0204085   0.0083127

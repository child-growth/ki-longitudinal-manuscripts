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

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/295aab7d-09ad-4adb-90b6-e3a3ed25fdc8/b3f231ff-91de-4faf-aedb-21bad4de40dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/295aab7d-09ad-4adb-90b6-e3a3ed25fdc8/b3f231ff-91de-4faf-aedb-21bad4de40dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/295aab7d-09ad-4adb-90b6-e3a3ed25fdc8/b3f231ff-91de-4faf-aedb-21bad4de40dd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/295aab7d-09ad-4adb-90b6-e3a3ed25fdc8/b3f231ff-91de-4faf-aedb-21bad4de40dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2216783   0.1566670   0.2866896
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2163904   0.1277108   0.3050700
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0937500   0.0221611   0.1653389
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0507246   0.0140225   0.0874268
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3630231   0.2722118   0.4538343
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4155322   0.3174995   0.5135650
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1945706   0.1029905   0.2861507
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2144664   0.1504575   0.2784753
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1063830   0.0180333   0.1947326
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1337209   0.0827402   0.1847017
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3749192   0.3179202   0.4319182
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4616077   0.3160034   0.6072119
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1766002   0.1427952   0.2104052
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1784940   0.1245251   0.2324629
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                0.3876237   0.3651272   0.4101201
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                0.4508714   0.3859020   0.5158409
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.6106569   0.5615002   0.6598135
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5059462   0.3953300   0.6165624
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1734398   0.1664836   0.1803961
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1784529   0.1553942   0.2015115
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.0632911   0.0252469   0.1013354
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0823529   0.0237915   0.1409143
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1337361   0.0674545   0.2000176
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1830476   0.1045432   0.2615519
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0446723   0.0264003   0.0629443
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0791541   0.0406616   0.1176465
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                0.1146445   0.0998843   0.1294046
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                0.1920630   0.1394851   0.2446409
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2120587   0.1700168   0.2541006
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2266481   0.1254712   0.3278251
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.0725698   0.0674499   0.0776897
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.0832477   0.0655676   0.1009278
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.1891990   0.1268862   0.2515117
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1436446   0.0650195   0.2222698
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                0.2828069   0.1967681   0.3688458
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2895129   0.1986577   0.3803681
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1648573   0.0806519   0.2490628
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1640326   0.1062444   0.2218208
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1658661   0.1308545   0.2008777
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1488602   0.0963829   0.2013375
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                0.3422333   0.3197174   0.3647492
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                0.3506930   0.2852950   0.4160910
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5176816   0.4672024   0.5681607
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.3757086   0.2653125   0.4861047
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1692425   0.1609551   0.1775298
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1605512   0.1335833   0.1875192


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


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9761459   0.5925778   1.6079925
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.5410628   0.1889656   1.5492185
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1                 1.1446441   0.8109300   1.6156884
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1                 1.1022549   0.6318572   1.9228488
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2569767   0.5040371   3.1346711
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.2312191   0.8795361   1.7235226
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.0107236   0.7068317   1.4452696
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    1                 1.1631680   0.9964944   1.3577195
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.8285278   0.6573547   1.0442739
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0289034   0.8995885   1.1768072
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.3011765   0.5128087   3.3015437
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1                 1.3687224   0.7076299   2.6474304
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.8863636   0.8915751   3.9911028
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.7718827   0.9382202   3.3463021
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    1                 1.6752922   1.2386541   2.2658498
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0687992   0.6553493   1.7430885
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.1471399   0.9189574   1.4319814
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.7592252   0.4027906   1.4310735
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    1                 1.0237121   0.6607545   1.5860452
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9949971   0.5352273   1.8497174
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.1730526   0.5767231   2.3859846
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.8974721   0.5948133   1.3541328
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    1                 1.0247191   0.8410295   1.2485283
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.7257524   0.5333882   0.9874919
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9486462   0.7971129   1.1289865


### Parameter: PAR


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0037315   -0.0340050    0.0414680
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0293936   -0.0844233    0.0256361
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0237694   -0.0399034    0.0874421
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0080726   -0.0694543    0.0855994
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0214709   -0.0586552    0.1015970
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0043133   -0.0046855    0.0133121
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0009835   -0.0173878    0.0193548
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0069173   -0.0005588    0.0143934
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0212529   -0.0420389   -0.0004669
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0003819   -0.0018645    0.0026283
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0066677   -0.0177867    0.0311221
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0186449   -0.0315675    0.0688572
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0053762   -0.0018898    0.0126422
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0095005   -0.0024006    0.0214015
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0087938    0.0027916    0.0147960
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0066201   -0.0114427    0.0246830
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0009807   -0.0007544    0.0027158
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0124748   -0.0471073    0.0221576
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0042744   -0.0557603    0.0643091
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0055653   -0.0759793    0.0648487
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0024764   -0.0094430    0.0143959
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0048905   -0.0233935    0.0136125
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0012222   -0.0063200    0.0087644
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0187902   -0.0393708    0.0017904
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0008083   -0.0032255    0.0016089


### Parameter: PAF


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0165544   -0.1660534    0.1705652
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.4567308   -1.5709361    0.1745946
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0614525   -0.1186913    0.2125877
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0398364   -0.4296865    0.3551634
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1679331   -0.7627614    0.6072439
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0113737   -0.0131809    0.0353333
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0055383   -0.1034782    0.1037846
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0175325   -0.0016080    0.0363073
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0360583   -0.0721540   -0.0011778
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0021972   -0.0108058    0.0150330
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0953090   -0.3278890    0.3836339
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1223571   -0.2750822    0.3959157
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0427163   -0.0166271    0.0985957
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.1753734   -0.0681471    0.3633751
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0712405    0.0218895    0.1181015
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0302734   -0.0558970    0.1094115
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0133338   -0.0104764    0.0365828
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0705893   -0.2849945    0.1080418
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0148892   -0.2181255    0.2033306
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0349378   -0.5869497    0.3250598
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0078232   -0.0309120    0.0451030
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0303802   -0.1519065    0.0783250
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0035586   -0.0186435    0.0252767
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0376640   -0.0799189    0.0029376
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0047988   -0.0192590    0.0094562

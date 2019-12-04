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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        exclfeed3    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0      153     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        6     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       79     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        6     244
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       61     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        3     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      137     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     202
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0      106     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        6     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0       94     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1        6     212
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       68     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        2     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      156     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        1     227
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       63     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        1     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      220     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        3     287
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       25     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      233     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     269
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       46     219
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     219
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      166     219
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        6     219
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        6      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        4      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        6      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        4      10
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0       34      39
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1        5      39
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0        0      39
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1        0      39
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      368     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       1       53     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       0       20     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        2     443
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      481     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       12     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      187     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1        7     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0     1519    2015
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      276    2015
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0      178    2015
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1       42    2015
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      283     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       93     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0       62     453
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       15     453
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12883   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      478   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1350   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       57   14768
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      142     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1        5     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       16     164
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        1     164
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      154     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        4     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       82     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     243
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       62     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      137     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        1     202
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0      109     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        3     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0       94     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        4     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       70     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      154     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     225
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       64     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      222     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        1     287
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       25     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      241     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        2     268
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       46     219
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     219
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      170     219
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        2     219
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        6       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        5       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        4       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0       38      38
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        0      38
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0        0      38
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        0      38
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      400     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       15     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       0       21     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     437
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      490     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        3     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      187     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1        3     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0     1713    2001
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       73    2001
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0      204    2001
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1       11    2001
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      347     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       19     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0       68     439
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1        5     439
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13028   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      220   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1365   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       30   14643
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      146     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        0     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       14     161
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        1     161
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      149     232
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     232
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0       78     232
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     232
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       59     185
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     185
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      125     185
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        0     185
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0      106     209
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        3     209
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0       98     209
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        2     209
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       68     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        2     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      156     226
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        0     226
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       60     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      204     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        2     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       23     248
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     248
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      215     248
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       10     248
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       46     210
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      160     210
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        4     210
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0      10
6-24 months                   ki1000108-IRC              INDIA                          0                       0       10      10
6-24 months                   ki1000108-IRC              INDIA                          0                       1        0      10
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0       33      38
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1        5      38
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0        0      38
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1        0      38
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       0      359     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       1       39     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       0       18     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     417
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      426     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1        9     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      176     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1        4     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0     1489    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1      211    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0      179    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1       31    1910
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      293     451
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       82     451
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0       64     451
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       12     451
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     8510    9618
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      278    9618
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      801    9618
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       29    9618
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      142     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1        6     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       17     165
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        0     165


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/449798e1-c712-4023-aba3-d06a4bbb4457/7c6b612d-3cc7-40d3-99ba-065cf03ce53c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/449798e1-c712-4023-aba3-d06a4bbb4457/7c6b612d-3cc7-40d3-99ba-065cf03ce53c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/449798e1-c712-4023-aba3-d06a4bbb4457/7c6b612d-3cc7-40d3-99ba-065cf03ce53c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/449798e1-c712-4023-aba3-d06a4bbb4457/7c6b612d-3cc7-40d3-99ba-065cf03ce53c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0377358   0.0080557   0.0674160
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0705882   0.0160249   0.1251515
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                0.0535714   0.0117714   0.0953714
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    NA                0.0600000   0.0133433   0.1066567
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0243408   0.0107277   0.0379539
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0360825   0.0098202   0.0623447
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1540588   0.1373737   0.1707439
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1874706   0.1350788   0.2398624
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2482395   0.2045845   0.2918945
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2201700   0.1316936   0.3086463
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0357247   0.0322000   0.0392495
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0418316   0.0281348   0.0555285
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0408669   0.0316826   0.0500512
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0532132   0.0238882   0.0825382
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0519126   0.0291583   0.0746669
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0684932   0.0104837   0.1265026
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0166149   0.0141226   0.0191072
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0213157   0.0108410   0.0317903
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1239105   0.1082516   0.1395694
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1489160   0.1004079   0.1974241
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2183434   0.1764329   0.2602538
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1482353   0.0662723   0.2301983
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0315846   0.0272804   0.0358888
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0365920   0.0237428   0.0494412


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0491803   0.0219915   0.0763691
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0566038   0.0254237   0.0877838
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1578164   0.1418944   0.1737384
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2384106   0.1991278   0.2776934
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0362270   0.0327939   0.0396601
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0419790   0.0331901   0.0507680
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0546697   0.0333797   0.0759597
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0170730   0.0145369   0.0196091
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1267016   0.1117799   0.1416232
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2084257   0.1708970   0.2459544
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0319193   0.0278547   0.0359839


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.8705882   0.6209381   5.635184
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        0                    1                 1.1200000   0.3722239   3.370015
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4823883   0.5920038   3.711927
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.2168770   0.9019244   1.641811
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8869254   0.5711804   1.377212
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1709433   0.8311721   1.649608
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.3021111   0.7181902   2.360786
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3193944   0.5084106   3.424007
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2829227   0.7738530   2.126878
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2018028   0.8473858   1.704454
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6789090   0.3785021   1.217741
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1585389   0.7930188   1.692535


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0114445   -0.0102827   0.0331716
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0030323   -0.0265192   0.0325839
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0033157   -0.0050469   0.0116783
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0037576   -0.0021904   0.0097055
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0098289   -0.0268761   0.0072182
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0005022   -0.0008507   0.0018552
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0011121   -0.0021962   0.0044204
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0027571   -0.0076207   0.0131350
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004581   -0.0005994   0.0015155
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0027911   -0.0027648   0.0083470
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0099176   -0.0253175   0.0054822
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003347   -0.0008424   0.0015118


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2327044   -0.3336978   0.5585638
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0535714   -0.6417907   0.4544207
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1198890   -0.2346253   0.3726069
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0238097   -0.0145576   0.0607262
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0412269   -0.1151968   0.0278366
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0138636   -0.0240474   0.0503711
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0264928   -0.0554076   0.1020377
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0504326   -0.1585940   0.2217479
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0268308   -0.0361897   0.0860184
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0220287   -0.0227636   0.0648593
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0475836   -0.1237882   0.0234535
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0104864   -0.0272023   0.0467922

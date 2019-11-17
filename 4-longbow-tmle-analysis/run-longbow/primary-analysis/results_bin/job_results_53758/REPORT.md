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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
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
* brthmon
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
* delta_brthmon
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

agecat                        studyid                   country                        earlybf    ever_swasted   n_cell       n
----------------------------  ------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                     0      154     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                     1        7     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                     0       96     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                     1        5     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                     0      106     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                     1        2     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                     0      123     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                     1        2     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                     0      136     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                     1       10     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                     0       96     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                     1        3     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                     0       96     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                     1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                     0      140     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                     1        2     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                     0      221     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                     1        4     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                     0       77     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                     1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      171     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       10     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0      113     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        2     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      210     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        6     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       43     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                     0       57     366
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                     1       11     366
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                     0      245     366
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                     1       53     366
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                     0       91    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                     1       12    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                     0     1202    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                     1      160    1465
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      634     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1       20     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0      100     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                     0      146     599
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                     1       26     599
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                     0      335     599
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                     1       92     599
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     6245   12131
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      227   12131
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     5458   12131
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      201   12131
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0      137   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1        6   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    25373   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1      942   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     3268    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1      146    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1896    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1       86    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      156     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                     1        5     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       98     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                     1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                     0      107     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                     1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                     0      123     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                     1        2     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                     0      139     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                     1        6     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                     0       97     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                     1        1     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                     0       97     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                     1        0     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                     0      139     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                     1        1     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                     0      224     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                     1        1     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                     0       77     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                     1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      178     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1        3     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0      114     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        0     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      213     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        3     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       45     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        0     261
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                     0       63     364
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                     1        5     364
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                     0      282     364
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                     1       14     364
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                     0       98    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                     1        4    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                     0     1292    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                     1       42    1436
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      650     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       98     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                     0      159     582
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                     1        6     582
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                     0      395     582
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                     1       22     582
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     6290   11900
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1       64   11900
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     5493   11900
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1       53   11900
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0      135   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1        6   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    25594   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1      429   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     3297    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1       14    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1639    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1        7    4957
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                     0      145     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                     1        2     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                     0       89     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                     1        3     239
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                     0       94     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                     1        1     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                     0      112     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                     1        0     207
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                     0      135     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                     1        4     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                     0       94     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                     1        2     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                     0       94     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                     1        1     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                     0      139     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                     1        1     235
6-24 months                   ki0047075b-MAL-ED         PERU                           1                     0      198     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                     1        3     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                     0       69     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                     1        0     270
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      151     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1        7     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       94     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        3     255
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      200     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        3     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       40     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     245
6-24 months                   ki1000109-EE              PAKISTAN                       1                     0       60     363
6-24 months                   ki1000109-EE              PAKISTAN                       1                     1        9     363
6-24 months                   ki1000109-EE              PAKISTAN                       0                     0      253     363
6-24 months                   ki1000109-EE              PAKISTAN                       0                     1       41     363
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                     0       93    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                     1        8    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                     0     1162    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                     1      126    1389
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      612     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1       20     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       98     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     730
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                     0      135     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                     1       22     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                     0      301     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                     1       78     536
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5018    9616
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      168    9616
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4278    9616
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      152    9616
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       36   17297
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                     1        0   17297
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    16708   17297
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                     1      553   17297
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     3287    5430
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                     1      142    5430
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1904    5430
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                     1       97    5430


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/d177463e-13ff-473e-acf6-2b223d762173/9dd685a2-d35c-4bf6-9e0b-e36f7ca53327/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d177463e-13ff-473e-acf6-2b223d762173/9dd685a2-d35c-4bf6-9e0b-e36f7ca53327/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d177463e-13ff-473e-acf6-2b223d762173/9dd685a2-d35c-4bf6-9e0b-e36f7ca53327/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d177463e-13ff-473e-acf6-2b223d762173/9dd685a2-d35c-4bf6-9e0b-e36f7ca53327/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0434783   0.0119174   0.0750391
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0495050   0.0071195   0.0918904
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                0.1411292   0.0595825   0.2226758
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.1801092   0.1361323   0.2240860
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1167777   0.0552904   0.1782649
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1175391   0.0949766   0.1401015
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1505147   0.0971839   0.2038455
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2135898   0.1747220   0.2524576
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0350059   0.0305082   0.0395035
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0354170   0.0305710   0.0402631
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0419580   0.0335267   0.0503894
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0357971   0.0331555   0.0384386
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0421633   0.0344344   0.0498923
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0446298   0.0357899   0.0534697
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                0.0735294   0.0114086   0.1356503
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    NA                0.0472973   0.0230816   0.0715130
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0363636   0.0077766   0.0649507
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0527578   0.0312831   0.0742325
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0100709   0.0076116   0.0125303
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0095659   0.0069846   0.0121472
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0425532   0.0339790   0.0511273
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0164854   0.0146253   0.0183455
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0042283   0.0009127   0.0075439
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0042527   0.0006054   0.0079001
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                0.1304348   0.0508609   0.2100086
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.1394558   0.0998026   0.1791090
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0792079   0.0101913   0.1482246
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0978261   0.0756691   0.1199830
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1461344   0.0895643   0.2027045
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2031292   0.1626199   0.2436385
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0320998   0.0272953   0.0369043
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0337115   0.0283857   0.0390373
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0414527   0.0337301   0.0491753
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0488061   0.0396426   0.0579695


### Parameter: E(Y)


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0458015   0.0204393   0.0711637
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     NA                   NA                0.1748634   0.1358949   0.2138319
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1174061   0.0943414   0.1404709
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1969950   0.1651175   0.2288725
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0352815   0.0319984   0.0385647
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0358304   0.0332487   0.0384121
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0429948   0.0372768   0.0487128
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     NA                   NA                0.0521978   0.0293166   0.0750791
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0481100   0.0307091   0.0655108
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0098319   0.0080591   0.0116048
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0166259   0.0148065   0.0184453
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0042364   0.0017272   0.0067456
6-24 months                   ki1000109-EE              PAKISTAN     NA                   NA                0.1377410   0.1022397   0.1732424
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months                   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1865672   0.1535569   0.2195775
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0332779   0.0296928   0.0368630
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0440147   0.0381801   0.0498493


### Parameter: RR


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1386138   0.3705824   3.4983895
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    1                 1.2762008   0.6825366   2.3862288
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0065201   0.6281066   1.6129151
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.4190623   0.9533637   2.1122453
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0117455   0.8389002   1.2202036
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.8531636   0.6882144   1.0576474
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0584979   0.8031693   1.3949958
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     0                    1                 0.6432433   0.2395232   1.7274400
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.4508393   0.5986187   3.5163199
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 0.9498537   0.6600727   1.3668526
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.3874073   0.3064495   0.4897525
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0057716   0.3120971   3.2412231
6-24 months                   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN     0                    1                 1.0691610   0.5454185   2.0958313
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2350543   0.5496390   2.7752022
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3900163   0.9006055   2.1453847
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0502084   0.8450145   1.3052292
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1773920   0.9062515   1.5296550


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0023233   -0.0180515    0.0226980
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                 0.0337342   -0.0414218    0.1088902
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0006285   -0.0513900    0.0526469
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0464803   -0.0007693    0.0937298
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0002756   -0.0028311    0.0033824
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0061277   -0.0147695    0.0025141
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0008315   -0.0035537    0.0052167
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                -0.0213316   -0.0755601    0.0328969
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0117463   -0.0138786    0.0373713
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0002390   -0.0019076    0.0014296
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0259273   -0.0345423   -0.0173123
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0000081   -0.0016401    0.0016563
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                 0.0073063   -0.0647016    0.0793141
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0172644   -0.0415921    0.0761208
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0404328   -0.0094525    0.0903180
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0011781   -0.0021644    0.0045205
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0025620   -0.0018652    0.0069893


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0507246   -0.5154506    0.4053757
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                 0.1929176   -0.3718516    0.5251804
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053531   -0.5532064    0.3630451
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2359464   -0.0429543    0.4402651
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0078127   -0.0842641    0.0920702
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.1710189   -0.4426878    0.0494928
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0193393   -0.0886264    0.1165973
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN     1                    NA                -0.4086687   -1.9178010    0.3199168
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2441558   -0.5155273    0.6230352
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0243101   -0.2088553    0.1320622
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5594522   -2.1928081   -1.0517348
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0019128   -0.4742472    0.3242802
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                 0.0530435   -0.6444839    0.4547064
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.1789567   -0.7540977    0.6156930
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2167196   -0.0996428    0.4420659
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0354013   -0.0703691    0.1307198
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0582087   -0.0492631    0.1546726

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
* vagbrth
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
* delta_vagbrth
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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                     0      106     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                     1        1     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                     0      123     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                     1        2     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                     0      139     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                     1        7     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                     0       96     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                     1        3     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                     0       96     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                     1        1     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                     0      140     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                     1        2     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                     0      222     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                     1        3     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                     0       77     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                     1        0     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      172     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1        9     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0      113     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        2     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      212     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        4     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       43     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                     0       59     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                     1        9     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                     0      267     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                     1       42     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                     0       91    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                     1       12    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                     0     1202    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                     1      160    1465
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      634     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1       20     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0      100     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                     0      137     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                     1       24     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                     0      295     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                     1       80     536
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     6241   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      222   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     5458   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      197   12118
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0      138   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1        6   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    25374   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1      941   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     3268    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1      146    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1896    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1       86    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      156     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                     1        5     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       98     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                     1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                     0      107     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                     1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                     0      123     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                     1        2     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                     0      141     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                     1        4     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                     0       98     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                     1        1     244
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
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      214     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       45     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        0     261
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                     0       64     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                     1        4     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                     0      293     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                     1       12     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                     0       98    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                     1        4    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                     0     1292    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                     1       42    1436
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      650     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       98     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                     0      148     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                     1        6     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                     0      350     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                     1       10     514
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     6282   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1       64   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     5491   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1       52   11889
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0      136   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1        6   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    25595   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1      428   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     3297    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1       14    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1639    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1        7    4957
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                     0      145     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                     1        2     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                     0       89     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                     1        3     239
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                     0       93     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                     1        2     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                     0      112     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                     1        0     207
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                     0      136     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                     1        3     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                     0       94     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                     1        2     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                     0       94     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                     1        1     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                     0      139     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                     1        1     235
6-24 months                   ki0047075b-MAL-ED         PERU                           1                     0      199     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                     1        2     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                     0       69     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                     1        0     270
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      152     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1        6     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       94     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        3     255
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      201     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        2     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       40     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     245
6-24 months                   ki1000109-EE              PAKISTAN                       1                     0       62     375
6-24 months                   ki1000109-EE              PAKISTAN                       1                     1        7     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                     0      274     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                     1       32     375
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
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                     0      300     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                     1       79     536
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     4964    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      163    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4234    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      149    9510
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/9d42ef9f-217c-4c55-8fec-015ca9d48159/5f7549af-93fe-4bb2-b57a-2b8e547aa60b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9d42ef9f-217c-4c55-8fec-015ca9d48159/5f7549af-93fe-4bb2-b57a-2b8e547aa60b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9d42ef9f-217c-4c55-8fec-015ca9d48159/5f7549af-93fe-4bb2-b57a-2b8e547aa60b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9d42ef9f-217c-4c55-8fec-015ca9d48159/5f7549af-93fe-4bb2-b57a-2b8e547aa60b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.0434783   0.0119174   0.0750391
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0495050   0.0071195   0.0918904
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                0.1323529   0.0517021   0.2130038
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.1359223   0.0976604   0.1741843
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1167777   0.0552904   0.1782649
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1175391   0.0949766   0.1401015
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1533509   0.0960116   0.2106901
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2100885   0.1688537   0.2513234
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0338641   0.0294354   0.0382927
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0349598   0.0300974   0.0398221
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0416667   0.0332318   0.0501015
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0357591   0.0331168   0.0384014
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0421015   0.0343558   0.0498472
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0445383   0.0356795   0.0533971
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0389610   0.0083698   0.0695522
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0277778   0.0107855   0.0447700
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0098959   0.0074443   0.0123476
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0094823   0.0069002   0.0120644
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0422535   0.0336758   0.0508312
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0164470   0.0145904   0.0183036
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0042283   0.0009127   0.0075439
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0042527   0.0006054   0.0079001
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                0.1014493   0.0301149   0.1727837
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.1045752   0.0702434   0.1389069
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0792079   0.0101913   0.1482246
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0978261   0.0756691   0.1199830
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1436852   0.0894192   0.1979512
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2085958   0.1676272   0.2495644
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0319445   0.0270560   0.0368330
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0336354   0.0282423   0.0390285
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0412627   0.0336716   0.0488538
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0487700   0.0396601   0.0578800


### Parameter: E(Y)


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0458015   0.0204393   0.0711637
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1174061   0.0943414   0.1404709
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1940299   0.1605206   0.2275391
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0345767   0.0313235   0.0378298
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0357912   0.0332087   0.0383737
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0429948   0.0372768   0.0487128
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0311284   0.0161004   0.0461564
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0097569   0.0079900   0.0115239
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0165870   0.0147710   0.0184031
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0042364   0.0017272   0.0067456
6-24 months                   ki1000109-EE              PAKISTAN     NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months                   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1884328   0.1552959   0.2215697
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0328076   0.0292272   0.0363879
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0440147   0.0381801   0.0498493


### Parameter: RR


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1386138   0.3705824   3.498390
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    1                 1.0269687   0.5248574   2.009431
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0065201   0.6281066   1.612915
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.3699861   0.8986279   2.088586
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0323559   0.8531801   1.249160
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.8582177   0.6913139   1.065417
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0578799   0.8015524   1.396178
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        0                    1                 0.7129630   0.2635096   1.929024
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 0.9582043   0.6630932   1.384655
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.3892454   0.3074750   0.492762
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0057716   0.3120971   3.241223
6-24 months                   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE              PAKISTAN     0                    1                 1.0308123   0.4744159   2.239752
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2350543   0.5496390   2.775202
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.4517554   0.9493386   2.220065
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     0                    1                 1.0529323   0.8437747   1.313937
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1819414   0.9112240   1.533087


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0023233   -0.0180515    0.0226980
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                 0.0029256   -0.0702400    0.0760912
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0006285   -0.0513900    0.0526469
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0406790   -0.0096833    0.0910413
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0007126   -0.0023643    0.0037895
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0058754   -0.0145200    0.0027691
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0008933   -0.0035163    0.0053030
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0078326   -0.0323458    0.0166806
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0001390   -0.0018067    0.0015287
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0256665   -0.0342848   -0.0170481
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0000081   -0.0016401    0.0016563
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                 0.0025507   -0.0620489    0.0671504
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0172644   -0.0415921    0.0761208
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0447476   -0.0032266    0.0927218
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0008630   -0.0025692    0.0042953
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0027521   -0.0015678    0.0070720


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0507246   -0.5154506    0.4053757
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                 0.0216263   -0.7005017    0.4370984
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053531   -0.5532064    0.3630451
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2096533   -0.0955724    0.4298433
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0206095   -0.0725224    0.1056543
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.1641587   -0.4362532    0.0563881
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0207776   -0.0878668    0.1185717
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.2516234   -1.3319195    0.3282096
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                -0.0142472   -0.2003840    0.1430264
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5473811   -2.1820580   -1.0392935
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0019128   -0.4742472    0.3242802
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                 0.0245262   -0.8439352    0.4839574
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.1789567   -0.7540977    0.6156930
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2374725   -0.0612083    0.4520885
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0263064   -0.0840916    0.1254621
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0625262   -0.0422221    0.1567468

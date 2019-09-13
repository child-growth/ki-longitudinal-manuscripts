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

agecat                        studyid                   country                        earlybf    ever_wasted   n_cell       n
----------------------------  ------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0      128     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1       33     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    0       77     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1       24     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    0      103     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    1        4     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    0      117     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    1        8     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0       91     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1       55     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0       65     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1       34     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0       79     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1       18     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0      115     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1       27     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    0      206     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    1       19     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    0       76     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      151     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       30     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      101     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       14     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      189     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       27     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       42     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0       44     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    1       24     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0      168     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    1      141     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0       60    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1       43    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0      862    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1      500    1465
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      555     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       99     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       91     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        9     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0       86     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1       75     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0      173     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1      202     536
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     5794   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      669   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5108   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      547   12118
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0      122   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       22   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    21843   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     4472   26459
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     2528    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      886    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1477    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      505    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0      148     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1       13     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0       94     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1        6     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    0      105     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    1        2     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    0      120     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    1        5     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0      122     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1       23     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0       84     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1       15     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0       91     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    1        6     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0      131     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    0      220     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    1        5     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    0       77     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      171     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       10     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      112     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1        2     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      208     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1        8     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       45     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        0     261
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0       54     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    1       14     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0      247     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    1       58     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0       84    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0     1167    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1      167    1436
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      635     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       94     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        4     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0      130     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1       24     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0      311     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1       49     514
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     6139   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      207   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5369   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      174   11889
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0      124   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       18   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0    24160   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     1863   26165
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0     3221    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1       90    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1609    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1       37    4957
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0      123     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1       24     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    0       73     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    1       19     239
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    0       92     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    1        3     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    0      109     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    1        3     207
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    0       99     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    1       40     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    0       72     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    1       24     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    0       81     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    1       14     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    0      118     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    1       22     235
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    0      185     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    1       16     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    0       68     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    1        1     270
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      134     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       24     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0       85     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       12     255
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      180     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       23     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       39     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     245
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0       52     375
6-24 months                   ki1000109-EE              PAKISTAN                       1                    1       17     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0      199     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                    1      107     375
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    0       72    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    0      892    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    1      396    1389
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      541     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       91     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       93     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        5     730
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    0       91     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    1       66     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    0      198     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    1      181     536
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     4630    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      497    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     3982    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      401    9510
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       31   17297
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        5   17297
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    14429   17297
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     2832   17297
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     2588    5430
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      841    5430
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1499    5430
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      502    5430


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
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/bbe0fb36-e440-480f-9ab6-5a156bba4c6e/e832399b-898e-4841-9727-8bafd4fd66fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bbe0fb36-e440-480f-9ab6-5a156bba4c6e/e832399b-898e-4841-9727-8bafd4fd66fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bbe0fb36-e440-480f-9ab6-5a156bba4c6e/e832399b-898e-4841-9727-8bafd4fd66fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bbe0fb36-e440-480f-9ab6-5a156bba4c6e/e832399b-898e-4841-9727-8bafd4fd66fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.2019904   0.1398421   0.2641387
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2431343   0.1549442   0.3313244
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                0.3741524   0.2954360   0.4528687
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                0.3475895   0.2529271   0.4422518
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1818847   0.1033553   0.2604141
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1897797   0.1247531   0.2548064
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1622879   0.1076173   0.2169584
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1180805   0.0586532   0.1775077
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                0.3197778   0.2035762   0.4359794
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                0.4633536   0.4076624   0.5190448
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4763602   0.2324510   0.7202693
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3667745   0.3131288   0.4204203
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4715679   0.3937332   0.5494025
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5364676   0.4859297   0.5870056
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1024792   0.0950697   0.1098887
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0974812   0.0896813   0.1052810
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1531336   0.1398241   0.1664431
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1699519   0.1645225   0.1753812
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2576496   0.2396201   0.2756792
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2584245   0.2374979   0.2793511
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0807453   0.0385810   0.1229097
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.0600000   0.0133640   0.1066360
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                0.1621506   0.1024262   0.2218750
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                0.1549518   0.0844593   0.2254443
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                0.0618557   0.0138155   0.1098959
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                0.0642857   0.0235729   0.1049985
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                0.1820588   0.0883515   0.2757662
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                0.1961523   0.1512722   0.2410323
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1890046   0.1120398   0.2659695
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1253717   0.0960253   0.1547180
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1596598   0.1007273   0.2185923
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1344832   0.0991641   0.1698023
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0319339   0.0276064   0.0362615
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0319181   0.0272105   0.0366258
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1302199   0.1175801   0.1428596
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0715829   0.0678408   0.0753250
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0271376   0.0209532   0.0333219
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0226733   0.0149400   0.0304065
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1649036   0.1043550   0.2254522
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1994979   0.1170432   0.2819526
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                0.2844477   0.2087715   0.3601239
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                0.2471487   0.1602747   0.3340227
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1550350   0.0833945   0.2266755
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1609907   0.1006381   0.2213434
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1485666   0.0922243   0.2049089
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1120369   0.0463131   0.1777606
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                0.2544999   0.1426967   0.3663030
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                0.3514606   0.2978669   0.4050544
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.3037327   0.0814133   0.5260522
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3075827   0.2587008   0.3564646
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4190141   0.3412043   0.4968240
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4772595   0.4268538   0.5276653
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0975898   0.0894658   0.1057138
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0912057   0.0826276   0.0997837
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1388890   0.1308344   0.1469436
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1640693   0.1577997   0.1703388
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2448543   0.2270894   0.2626192
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2522040   0.2313146   0.2730934


### Parameter: E(Y)


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.2175573   0.1675030   0.2676115
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          NA                   NA                0.3632653   0.3029199   0.4236107
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1882845   0.1386174   0.2379516
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1486486   0.1080537   0.1892436
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3706485   0.3201448   0.4211521
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5167910   0.4744466   0.5591355
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1003466   0.0949968   0.1056964
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.1698477   0.1645376   0.1751578
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2577835   0.2441424   0.2714247
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0727969   0.0412174   0.1043764
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          NA                   NA                0.1557377   0.1101466   0.2013289
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0632911   0.0322265   0.0943557
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1288301   0.0985331   0.1591271
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1420233   0.1118164   0.1722303
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0320464   0.0288804   0.0352124
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0718899   0.0682258   0.0755541
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0256203   0.0209093   0.0303314
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1799163   0.1311159   0.2287168
6-24 months                   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1411765   0.0983547   0.1839982
6-24 months                   ki1000109-EE              PAKISTAN       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.4608209   0.4185829   0.5030589
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0944269   0.0885495   0.1003044
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.1640169   0.1579043   0.1701294
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2473297   0.2337864   0.2608729


### Parameter: RR


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.2036923   0.7483473   1.9361001
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    1                 0.9290051   0.6589393   1.3097573
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0434068   0.6008347   1.8119755
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.7275989   0.3996468   1.3246700
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    1                 1.4489863   0.9891530   2.1225850
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.7699522   0.4422439   1.3404965
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.5945455   0.3105227   1.1383527
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1376255   0.9407423   1.3757134
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9512285   0.8544868   1.0589230
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.1098276   1.0122587   1.2168009
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0030074   0.9008043   1.1168063
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.7430769   0.2913165   1.8954069
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    1                 0.9556045   0.5333272   1.7122322
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    1                 1.0392857   0.3815178   2.8310997
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    1                 1.0774113   0.6150354   1.8873954
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.6633259   0.4480002   0.9821452
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    1                 0.8423110   0.5354283   1.3250846
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9995060   0.8182297   1.2209436
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.5497082   0.4923659   0.6137287
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8354939   0.5473892   1.2752354
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.2097849   0.6953809   2.1047162
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    1                 0.8688723   0.5599132   1.3483143
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0384155   0.5723790   1.8839036
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.7541185   0.3763545   1.5110613
6-24 months                   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN       0                    1                 1.3809855   0.8676707   2.1979779
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.0126754   0.4509730   2.2739972
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.3543395   0.1476556   0.8503338
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1390058   0.9196336   1.4107075
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9345824   0.8246539   1.0591646
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.1812979   1.1015856   1.2667784
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0300166   0.9223162   1.1502932


### Parameter: PAR


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0155668   -0.0250774    0.0562111
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0108871   -0.0605120    0.0387379
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0063998   -0.0543593    0.0671589
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0136392   -0.0449037    0.0176253
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                 0.1178880    0.0113375    0.2244385
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1057117   -0.3516601    0.1402368
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0081401   -0.0165611    0.0002810
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0452232   -0.0199770    0.1104234
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0021326   -0.0071625    0.0028972
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0167141    0.0027892    0.0306390
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0001339   -0.0100513    0.0103191
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0079484   -0.0320680    0.0161712
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0064129   -0.0438618    0.0310360
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0014355   -0.0357631    0.0386341
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                 0.0109706   -0.0740183    0.0959596
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0601746   -0.1291243    0.0087752
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.0176365   -0.0664807    0.0312078
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0001125   -0.0028417    0.0030668
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0583300   -0.0711783   -0.0454816
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0015172   -0.0049156    0.0018811
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0150127   -0.0253710    0.0553963
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0121073   -0.0590938    0.0348793
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0018435   -0.0580049    0.0543179
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0073902   -0.0402777    0.0254974
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                 0.0761668   -0.0273832    0.1797168
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0022428   -0.2290138    0.2334993
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0124805   -0.0197650   -0.0051960
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0418067   -0.0239938    0.1076073
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0031628   -0.0086406    0.0023149
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0251279    0.0151167    0.0351391
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0024753   -0.0076943    0.0126450


### Parameter: PAF


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0715527   -0.1348178    0.2403941
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0299700   -0.1760678    0.0979787
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0339902   -0.3493371    0.3084197
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0917547   -0.3211546    0.0978131
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                 0.2693562   -0.0208197    0.4770474
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.2852074   -1.1649727    0.2370536
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0568298   -0.1167117   -0.0001589
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0875076   -0.0480489    0.2055310
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0212528   -0.0726202    0.0276546
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0984066    0.0135447    0.1759680
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0005195   -0.0397861    0.0392626
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.1091860   -0.4915374    0.1751507
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0411774   -0.3116714    0.1735351
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0226804   -0.7830800    0.4643238
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                 0.0568340   -0.5043836    0.4086867
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.4670847   -1.1196320   -0.0154297
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                -0.1241803   -0.5257574    0.1717024
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0035109   -0.0930748    0.0915621
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.8113787   -1.0131411   -0.6298375
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0592197   -0.1992913    0.0644921
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0834427   -0.1698039    0.2818648
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0444563   -0.2318041    0.1143973
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0120340   -0.4540230    0.2956007
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0523470   -0.3119477    0.1558854
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                 0.2303432   -0.1562557    0.4876811
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0073299   -1.1248922    0.5362617
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0949037   -0.1496991   -0.0427200
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0907223   -0.0640690    0.2229960
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0334951   -0.0931547    0.0229086
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1532030    0.0933545    0.2091008
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0100083   -0.0320388    0.0503422

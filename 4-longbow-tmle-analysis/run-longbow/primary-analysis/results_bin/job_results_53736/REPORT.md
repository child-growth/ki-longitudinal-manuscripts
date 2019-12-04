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

agecat                        studyid                   country                        earlybf    ever_wasted   n_cell       n
----------------------------  ------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0      128     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1       33     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    0       77     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1       24     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    0      103     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    1        5     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    0      117     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    1        8     233
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0       90     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1       56     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0       64     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1       35     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0       79     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1       18     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0      114     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1       28     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    0      205     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    1       20     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    0       76     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      150     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       31     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      101     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       14     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      185     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       31     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       42     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0       33     366
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    1       35     366
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0      137     366
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    1      161     366
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0       60    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1       43    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0      862    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1      500    1465
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      555     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       99     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       91     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        9     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0       95     599
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1       77     599
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0      209     599
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1      218     599
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     5789   12131
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      683   12131
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5095   12131
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      564   12131
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0      122   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       21   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    21842   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     4473   26458
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     2528    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      886    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1477    5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      505    5396
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0      148     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1       13     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0       94     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1        6     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    0      105     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    1        3     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    0      120     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    1        5     233
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0      121     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1       24     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0       83     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1       15     243
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0       91     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    1        6     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0      130     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    1       10     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    0      220     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    1        5     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    0       77     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      171     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       10     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      110     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1        4     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      206     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       10     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       45     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        0     261
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0       54     364
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    1       14     364
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0      231     364
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    1       65     364
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0       84    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0     1167    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1      167    1436
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      635     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       94     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        4     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0      140     582
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1       25     582
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0      332     582
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1       85     582
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     6147   11900
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      207   11900
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5371   11900
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      175   11900
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0      124   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       17   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0    24159   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     1864   26164
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0     3221    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1       90    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1609    4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1       37    4957
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0      124     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1       23     239
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
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    0      184     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    1       17     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    0       68     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    1        1     270
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      133     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       25     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0       85     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       12     255
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      178     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       25     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       39     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     245
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0       42     363
6-24 months                   ki1000109-EE              PAKISTAN                       1                    1       27     363
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0      165     363
6-24 months                   ki1000109-EE              PAKISTAN                       0                    1      129     363
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
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     4674    9616
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      512    9616
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     4013    9616
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      417    9616
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/76f47575-ea1a-4463-bfe0-09a73c8b6e81/c97e04ea-d4f6-4f81-9bce-712ef4f094a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/76f47575-ea1a-4463-bfe0-09a73c8b6e81/c97e04ea-d4f6-4f81-9bce-712ef4f094a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/76f47575-ea1a-4463-bfe0-09a73c8b6e81/c97e04ea-d4f6-4f81-9bce-712ef4f094a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/76f47575-ea1a-4463-bfe0-09a73c8b6e81/c97e04ea-d4f6-4f81-9bce-712ef4f094a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.2043672   0.1415551   0.2671792
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2292036   0.1448753   0.3135320
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    NA                0.0462963   0.0065817   0.0860109
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         0                    NA                0.0640000   0.0210013   0.1069987
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                0.3806054   0.3018305   0.4593802
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                0.3576897   0.2618684   0.4535111
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1823761   0.1041885   0.2605637
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1949668   0.1291125   0.2608211
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1723054   0.1171752   0.2274356
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1224919   0.0620431   0.1829407
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                0.4957778   0.3716483   0.6199073
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                0.5452718   0.4889941   0.6015495
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4764301   0.2170429   0.7358172
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3669232   0.3128674   0.4209789
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4589178   0.3851234   0.5327121
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5062560   0.4590536   0.5534584
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1062054   0.0986405   0.1137703
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0991523   0.0912918   0.1070129
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1498551   0.1373499   0.1623603
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1699710   0.1645493   0.1753927
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2565863   0.2386038   0.2745688
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2587993   0.2379862   0.2796125
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0807453   0.0385810   0.1229097
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.0600000   0.0133640   0.1066360
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                0.1607533   0.1010342   0.2204724
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                0.1548575   0.0794595   0.2302556
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                0.0618557   0.0138155   0.1098959
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                0.0714286   0.0286776   0.1141795
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                0.1742782   0.0880090   0.2605473
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                0.2235332   0.1755386   0.2715278
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1890046   0.1120398   0.2659695
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1253717   0.0960253   0.1547180
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1492391   0.0937777   0.2047005
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.2032058   0.1644572   0.2419544
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0321574   0.0277755   0.0365394
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0319569   0.0272711   0.0366427
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1262906   0.1142934   0.1382879
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0716172   0.0678762   0.0753582
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0271284   0.0209412   0.0333157
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0225960   0.0148499   0.0303421
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1550602   0.0959711   0.2141494
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1985446   0.1136502   0.2834391
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                0.2882558   0.2126745   0.3638371
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                0.2468965   0.1596913   0.3341018
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1456984   0.0740114   0.2173854
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1566732   0.0961114   0.2172349
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1605599   0.1030185   0.2181013
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1227310   0.0572277   0.1882344
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                0.4123730   0.2902957   0.5344503
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                0.4396884   0.3830342   0.4963425
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.3037327   0.0814133   0.5260522
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3075827   0.2587008   0.3564646
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4319705   0.3556127   0.5083284
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4716335   0.4214673   0.5217997
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0992746   0.0911551   0.1073942
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0942226   0.0855704   0.1028748
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1388890   0.1308344   0.1469436
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1640693   0.1577997   0.1703388
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2444289   0.2266076   0.2622501
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2521229   0.2313157   0.2729301


### Parameter: E(Y)


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.2175573   0.1675030   0.2676115
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         NA                   NA                0.0557940   0.0262594   0.0853286
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          NA                   NA                0.3714286   0.3108013   0.4320559
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1924686   0.1423823   0.2425550
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1520270   0.1110549   0.1929992
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       NA                   NA                0.5355191   0.4843541   0.5866841
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3706485   0.3201448   0.4211521
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.4924875   0.4524176   0.5325574
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1027945   0.0973901   0.1081989
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.1698541   0.1645584   0.1751498
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2577835   0.2441424   0.2714247
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0727969   0.0412174   0.1043764
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          NA                   NA                0.1604938   0.1142470   0.2067406
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0675105   0.0354995   0.0995216
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       NA                   NA                0.2170330   0.1746268   0.2594392
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1288301   0.0985331   0.1591271
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1890034   0.1571685   0.2208384
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0321008   0.0289337   0.0352680
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0718927   0.0682457   0.0755397
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0256203   0.0209093   0.0303314
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1757322   0.1273797   0.2240848
6-24 months                   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1450980   0.1017849   0.1884112
6-24 months                   ki1000109-EE              PAKISTAN       NA                   NA                0.4297521   0.3787562   0.4807479
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.4608209   0.4185829   0.5030589
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0966098   0.0907048   0.1025148
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.1640169   0.1579043   0.1701294
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2473297   0.2337864   0.2608729


### Parameter: RR


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1215286   0.6941668   1.8119944
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         0                    1                 1.3824000   0.4649629   4.1100690
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    1                 0.9397916   0.6683584   1.3214590
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0690372   0.6189669   1.8463676
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.7109000   0.3944808   1.2811239
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    1                 1.0998310   0.8400071   1.4400215
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.7701512   0.4259405   1.3925251
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.5945455   0.3105227   1.1383527
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1031518   0.9176656   1.3261301
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9335903   0.8398548   1.0377875
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.1342357   1.0373635   1.2401541
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0086251   0.9063510   1.1224399
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.7430769   0.2913165   1.8954069
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    1                 0.9633242   0.5218742   1.7781941
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    1                 1.1547619   0.4331731   3.0783885
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    1                 1.2826233   0.7485011   2.1978893
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.6633259   0.4480002   0.9821452
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.3616124   0.8961957   2.0687314
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9937642   0.8136456   1.2137560
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.5670825   0.5078434   0.6332318
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8329260   0.5447388   1.2735751
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.2804355   0.7203860   2.2758841
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    1                 0.8565189   0.5525557   1.3276937
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0753252   0.5746812   2.0121146
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.7643940   0.4021533   1.4529242
6-24 months                   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN       0                    1                 1.0662396   0.7728402   1.4710244
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.0126754   0.4509730   2.2739972
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.3543395   0.1476556   0.8503338
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.0918188   0.8897097   1.3398395
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9491108   0.8398243   1.0726188
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.1812979   1.1015856   1.2667784
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0314776   0.9236715   1.1518662


### Parameter: PAR


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0131901   -0.0272702    0.0536503
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    NA                 0.0094977   -0.0219248    0.0409202
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0091768   -0.0592479    0.0408942
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0100926   -0.0508374    0.0710225
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0202784   -0.0521699    0.0116132
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                 0.0397413   -0.0726443    0.1521269
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1057816   -0.3679906    0.1564274
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0081401   -0.0165611    0.0002810
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0335697   -0.0285591    0.0956985
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0034109   -0.0085631    0.0017413
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0199990    0.0067201    0.0332779
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0011973   -0.0089539    0.0113485
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0079484   -0.0320680    0.0161712
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0002595   -0.0379291    0.0374102
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0056549   -0.0323377    0.0436474
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                 0.0427548   -0.0361207    0.1216303
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0601746   -0.1291243    0.0087752
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0397643   -0.0089423    0.0884710
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0000566   -0.0030616    0.0029484
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0543979   -0.0668004   -0.0419955
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0015081   -0.0049045    0.0018883
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0206720   -0.0195999    0.0609439
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0159154   -0.0628243    0.0309936
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0074931   -0.0485596    0.0635458
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0154619   -0.0488471    0.0179234
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                 0.0173791   -0.0933684    0.1281266
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0022428   -0.2290138    0.2334993
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0124805   -0.0197650   -0.0051960
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0288504   -0.0353630    0.0930637
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0026648   -0.0081419    0.0028123
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0251279    0.0151167    0.0351391
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0029008   -0.0072505    0.0130521


### Parameter: PAF


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0606281   -0.1448443    0.2292231
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    NA                 0.1702279   -0.6229402    0.5757566
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0247068   -0.1688344    0.1016486
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0524374   -0.3235051    0.3215932
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.1333867   -0.3618442    0.0567457
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                 0.0742108   -0.1616163    0.2621611
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.2853960   -1.2407905    0.2626518
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0568298   -0.1167117   -0.0001589
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0681636   -0.0670416    0.1862368
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0331817   -0.0845218    0.0157280
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1177424    0.0372792    0.1914807
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0046445   -0.0355561    0.0432845
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.1091860   -0.4915374    0.1751507
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0016166   -0.2661065    0.2076213
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0837629   -0.6911428    0.5035958
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                 0.1969969   -0.2605984    0.4884857
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.4670847   -1.1196320   -0.0154297
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.2103896   -0.0928074    0.4294652
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0017633   -0.0998855    0.0876053
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.7566548   -0.9529563   -0.5800846
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0588634   -0.1988363    0.0647666
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.1176334   -0.1419572    0.3182137
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0584393   -0.2453054    0.1003864
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0489133   -0.3972170    0.3525945
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.1065614   -0.3606827    0.1001001
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                 0.0404398   -0.2552619    0.2664832
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0073299   -1.1248922    0.5362617
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0949037   -0.1496991   -0.0427200
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0626064   -0.0876718    0.1921214
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0275832   -0.0858664    0.0275717
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1532030    0.0933545    0.2091008
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0117285   -0.0302604    0.0520061

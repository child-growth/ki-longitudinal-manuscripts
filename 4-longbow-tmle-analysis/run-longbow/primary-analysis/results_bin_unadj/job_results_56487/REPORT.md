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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                   country                        earlybf    ever_wasted   n_cell       n  outcome_variable 
----------------------------  ------------------------  -----------------------------  --------  ------------  -------  ------  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0      128     262  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1       33     262  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    0       77     262  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1       24     262  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    0      103     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    1        5     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    0      117     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    1        8     233  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0       90     245  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1       56     245  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0       64     245  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1       35     245  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0       79     239  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1       18     239  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0      114     239  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1       28     239  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    0      205     302  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    1       20     302  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    0       76     302  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    1        1     302  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      150     296  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       31     296  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      101     296  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       14     296  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      185     261  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       31     261  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       42     261  ever_wasted      
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     261  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0       33     366  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    1       35     366  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0      137     366  ever_wasted      
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    1      161     366  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0       60    1465  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1       43    1465  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0      862    1465  ever_wasted      
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1      500    1465  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      555     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       99     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       91     754  ever_wasted      
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        9     754  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0       95     599  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1       77     599  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0      209     599  ever_wasted      
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1      218     599  ever_wasted      
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     5789   12131  ever_wasted      
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      683   12131  ever_wasted      
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5095   12131  ever_wasted      
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      564   12131  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0      122   26458  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       21   26458  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    21842   26458  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     4473   26458  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     2528    5396  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      886    5396  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1477    5396  ever_wasted      
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      505    5396  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0      148     261  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1       13     261  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0       94     261  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1        6     261  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    0      105     233  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    1        3     233  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    0      120     233  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    1        5     233  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0      121     243  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1       24     243  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0       83     243  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1       15     243  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0       91     237  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    1        6     237  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0      130     237  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    1       10     237  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    0      220     302  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    1        5     302  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    0       77     302  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    1        0     302  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      171     295  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       10     295  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      110     295  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1        4     295  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      206     261  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       10     261  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       45     261  ever_wasted      
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        0     261  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0       54     364  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    1       14     364  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0      231     364  ever_wasted      
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    1       65     364  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0       84    1436  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    1436  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0     1167    1436  ever_wasted      
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1      167    1436  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      635     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       94     749  ever_wasted      
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        4     749  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0      140     582  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1       25     582  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0      332     582  ever_wasted      
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1       85     582  ever_wasted      
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     6147   11900  ever_wasted      
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      207   11900  ever_wasted      
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5371   11900  ever_wasted      
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      175   11900  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0      124   26164  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       17   26164  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0    24159   26164  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     1864   26164  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0     3221    4957  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1       90    4957  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1609    4957  ever_wasted      
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1       37    4957  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0      124     239  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1       23     239  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    0       73     239  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    1       19     239  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    0       92     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    1        3     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    0      109     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    1        3     207  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    0       99     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    1       40     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    0       72     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    1       24     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    0       81     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    1       14     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    0      118     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    1       22     235  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    0      184     270  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    1       17     270  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    0       68     270  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    1        1     270  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      133     255  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       25     255  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0       85     255  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       12     255  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      178     245  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       25     245  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       39     245  ever_wasted      
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     245  ever_wasted      
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0       42     363  ever_wasted      
6-24 months                   ki1000109-EE              PAKISTAN                       1                    1       27     363  ever_wasted      
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0      165     363  ever_wasted      
6-24 months                   ki1000109-EE              PAKISTAN                       0                    1      129     363  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    0       72    1389  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29    1389  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    0      892    1389  ever_wasted      
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    1      396    1389  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      541     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       91     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       93     730  ever_wasted      
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        5     730  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    0       91     536  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    1       66     536  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    0      198     536  ever_wasted      
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    1      181     536  ever_wasted      
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     4674    9616  ever_wasted      
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      512    9616  ever_wasted      
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     4013    9616  ever_wasted      
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      417    9616  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       31   17297  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        5   17297  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    14429   17297  ever_wasted      
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     2832   17297  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     2588    5430  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      841    5430  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1499    5430  ever_wasted      
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      502    5430  ever_wasted      


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/89abff36-c211-4c2e-b111-b04c2f138b30/5d74f85a-3460-466b-9a64-200494d78bc6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/89abff36-c211-4c2e-b111-b04c2f138b30/5d74f85a-3460-466b-9a64-200494d78bc6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/89abff36-c211-4c2e-b111-b04c2f138b30/5d74f85a-3460-466b-9a64-200494d78bc6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/89abff36-c211-4c2e-b111-b04c2f138b30/5d74f85a-3460-466b-9a64-200494d78bc6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.2049689   0.1424946   0.2674433
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2376238   0.1544575   0.3207901
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    NA                0.0462963   0.0065817   0.0860109
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         0                    NA                0.0640000   0.0210013   0.1069987
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                0.3835616   0.3045261   0.4625971
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                0.3535354   0.2591711   0.4478996
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1855670   0.1080404   0.2630936
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1971831   0.1316052   0.2627610
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1712707   0.1162924   0.2262490
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1217391   0.0618758   0.1816025
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                0.5147059   0.3957544   0.6336574
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                0.5402685   0.4836066   0.5969303
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4174757   0.2246570   0.6102945
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3671072   0.3133339   0.4208805
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4476744   0.3732997   0.5220491
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5105386   0.4630849   0.5579924
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1055315   0.0980460   0.1130170
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0996643   0.0918593   0.1074692
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1468532   0.1342925   0.1594138
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1699791   0.1645573   0.1754009
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2595196   0.2414671   0.2775722
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2547931   0.2334595   0.2761268
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0807453   0.0385810   0.1229097
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.0600000   0.0133640   0.1066360
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                0.1655172   0.1049009   0.2261336
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                0.1530612   0.0816298   0.2244926
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                0.0618557   0.0138155   0.1098959
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                0.0714286   0.0286776   0.1141795
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                0.2058824   0.1096451   0.3021196
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                0.2195946   0.1723697   0.2668194
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1764706   0.1043238   0.2486174
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1251874   0.0958138   0.1545610
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1515152   0.0967594   0.2062709
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.2038369   0.1651383   0.2425356
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0325779   0.0282126   0.0369432
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0315543   0.0269534   0.0361552
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1205674   0.1087378   0.1323970
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0716289   0.0678887   0.0753692
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0271821   0.0209842   0.0333801
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0224787   0.0147706   0.0301869
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1564626   0.0976111   0.2153141
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2065217   0.1236293   0.2894142
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                0.2877698   0.2123475   0.3631920
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                0.2500000   0.1631961   0.3368039
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1473684   0.0759360   0.2188008
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1571429   0.0967293   0.2175564
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1582278   0.1012099   0.2152458
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1237113   0.0580600   0.1893627
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                0.3913043   0.2759909   0.5066178
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                0.4387755   0.3819736   0.4955774
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2871287   0.1041120   0.4701454
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3074534   0.2588273   0.3560796
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4203822   0.3430969   0.4976674
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4775726   0.4272380   0.5279072
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0987273   0.0906084   0.1068463
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0941309   0.0855315   0.1027303
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1388890   0.1308344   0.1469436
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1640693   0.1577997   0.1703388
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2452610   0.2273991   0.2631230
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2508746   0.2294625   0.2722866


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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.1593159   0.7288567   1.8440024
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         0                    1                 1.3824000   0.4649629   4.1100690
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    1                 0.9217172   0.6578907   1.2913430
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0625978   0.6229587   1.8125024
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.7107994   0.3951063   1.2787339
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    1                 1.0496644   0.8143875   1.3529129
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.8793498   0.5314584   1.4549702
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.5945455   0.3105227   1.1383527
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1404240   0.9427357   1.3795667
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9444027   0.8497079   1.0496506
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.1574766   1.0565464   1.2680485
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.9817876   0.8790122   1.0965795
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    1                 0.7430769   0.2913165   1.8954069
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    1                 0.9247449   0.5109613   1.6736164
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    1                 1.1547619   0.4331731   3.0783885
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    1                 1.0666023   0.6375917   1.7842775
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.7093953   0.4793246   1.0498974
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    1                 1.3453237   0.8944139   2.0235552
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9685790   0.7945709   1.1806943
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.5940989   0.5306130   0.6651806
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 0.8269677   0.5407112   1.2647707
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.3199433   0.7614852   2.2879634
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    1                 0.8687500   0.5622944   1.3422267
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    1                 1.0663265   0.5743867   1.9795936
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 0.7818557   0.4116629   1.4849488
6-24 months                   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN       0                    1                 1.1213152   0.8127200   1.5470861
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.0707860   0.5265973   2.1773426
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.3543395   0.1476556   0.8503338
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.1360438   0.9190983   1.4041975
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 0.9534433   0.8431650   1.0781451
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 1.1812979   1.1015856   1.2667784
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0228881   0.9126307   1.1464660


### Parameter: PAR


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0125883   -0.0275564    0.0527331
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    NA                 0.0094977   -0.0219248    0.0409202
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0121331   -0.0619059    0.0376398
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0069016   -0.0534333    0.0672365
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0192437   -0.0509415    0.0124542
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                 0.0208132   -0.0864695    0.1280960
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0468273   -0.2406094    0.1469549
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0081401   -0.0165611    0.0002810
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0448131   -0.0181191    0.1077452
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0027370   -0.0077821    0.0023080
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0230009    0.0096700    0.0363319
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0017361   -0.0121643    0.0086922
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.0079484   -0.0320680    0.0161712
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0050234   -0.0428135    0.0327667
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0056549   -0.0323377    0.0436474
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                 0.0111506   -0.0760245    0.0983258
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0476405   -0.1119024    0.0166214
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0374883   -0.0105913    0.0855679
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0004771   -0.0034329    0.0024788
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0486747   -0.0609108   -0.0364386
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0015618   -0.0049609    0.0018373
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0192696   -0.0199851    0.0585243
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0154294   -0.0624655    0.0316068
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0058231   -0.0499147    0.0615609
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0131298   -0.0462709    0.0200113
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                 0.0384477   -0.0656803    0.1425757
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0188468   -0.1714235    0.2091171
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0124805   -0.0197650   -0.0051960
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0404387   -0.0248142    0.1056917
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0021175   -0.0075661    0.0033310
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0251279    0.0151167    0.0351391
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0020686   -0.0083769    0.0125142


### Parameter: PAF


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0578620   -0.1456949    0.2252528
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL         1                    NA                 0.1702279   -0.6229402    0.5757566
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0326660   -0.1757796    0.0930281
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0358584   -0.3344820    0.3034233
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.1265807   -0.3536155    0.0623747
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                 0.0388655   -0.1839279    0.2197334
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1263388   -0.7962037    0.2937110
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0568298   -0.1167117   -0.0001589
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0909933   -0.0463972    0.2103446
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0266262   -0.0768812    0.0212835
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1354159    0.0547168    0.2092256
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0067346   -0.0479730    0.0328810
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                -0.1091860   -0.4915374    0.1751507
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                -0.0312997   -0.2956771    0.1791326
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0837629   -0.6911428    0.5035958
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                 0.0513775   -0.4486254    0.3788010
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.3697933   -0.9773589    0.0510910
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.1983471   -0.0991391    0.4153175
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0148614   -0.1112351    0.0731541
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.6770467   -0.8694341   -0.5044583
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                -0.0609588   -0.2009622    0.0627235
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.1096534   -0.1426162    0.3062263
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0566547   -0.2441814    0.1026075
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                 0.0380117   -0.4040285    0.3408813
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                -0.0904892   -0.3433325    0.1147637
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                 0.0894649   -0.1882447    0.3022698
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0615958   -0.8159689    0.5150785
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0949037   -0.1496991   -0.0427200
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0877537   -0.0655784    0.2190219
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0219183   -0.0798882    0.0329396
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1532030    0.0933545    0.2091008
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0083639   -0.0348289    0.0497538

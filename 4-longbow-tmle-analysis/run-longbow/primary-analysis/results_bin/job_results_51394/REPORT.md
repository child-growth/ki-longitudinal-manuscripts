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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* hfoodsec
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_hfoodsec
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        perdiar24    ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                     0       17    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        3    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      112    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       36    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       76    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       19    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                     0      124    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                     1        6    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       95    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        5    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        1    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                     0       12    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                     1        1    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      118    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       73    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                    0       27    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                    1       15    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                     0       16    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                     1        1    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      113    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       30    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                    0       65    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                    1       14    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                     0       28    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                     1        0    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      106    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        7    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                    0      148    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                    1       13    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0       97    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       20    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      158    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       24    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        3    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       13    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        3    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      163    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       20    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       55    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7    261
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                     0      157    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                     1      119    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]               0       42    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       38    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                    0       13    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                    1        8    377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                     0       18    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                     1        6    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       43    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       37    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                    0       87    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                    1       82    273
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       48    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1       31    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       33    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1       12    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0      173    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1      100    397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                     0       41    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        2    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      242    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1      112    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      138    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       64    599
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                     0       57    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        3    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      340    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       87    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      168    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       32    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      131    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       22    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      340    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       58    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      175    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       28    754
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       30    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        2    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       63    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        8    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      188    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1       16    307
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     0      390   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     1       28   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               0     1365   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               1      144   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    0      374   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    1       49   2350
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                     0        8    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                     1        1    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       69    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       51    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                    0       76    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                    1       63    268
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                     0        1    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                     1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       67    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        2    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                    0       47    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                    1        2    119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       60   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        8   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      409   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       84   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      774   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1      136   1471
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                     0       70    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                     1        2    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]               0      372    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]               1       19    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                    0      438    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                    1       27    928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                     0        6    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                     1        0    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]               0      136    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]               1        6    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                    0       66    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                    1        1    215
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0     1050   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1      357   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     2593   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      871   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      362   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1      163   5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                     0       19    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                     1        1    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      136    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       11    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       88    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                    1        7    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                     0      126    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                     1        4    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       97    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        3    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                    0        2    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                    1        0    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                     0       13    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                     1        0    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      162    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       29    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                    0       32    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                    1        9    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                     0       16    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                     1        0    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      129    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       13    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                    0       77    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                    1        2    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                     0       28    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                     1        0    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      112    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        1    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                    0      157    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                    1        4    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0      112    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1        5    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      174    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1        7    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        3    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       15    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        1    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      176    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        7    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       62    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        0    261
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                     0      221    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                     1       51    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]               0       63    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]               1       17    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                    0       17    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                    1        4    373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                     0       18    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                     1        6    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       63    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       16    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                    0      128    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                    1       40    271
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       69    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       36    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0      236    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1        0    341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                     0       42    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                     1        1    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      316    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1       23    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      177    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       22    581
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                     0       60    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                     1        0    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      398    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       25    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      189    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       11    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      149    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1        3    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      383    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       13    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      197    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1        4    749
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       29    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        0    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       63    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        2    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      187    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1        3    284
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                     0        9    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                     1        0    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0      102    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       17    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                    0      125    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                    1       14    267
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                     0        1    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                     1        0    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       68    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        0    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                    0       47    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                    1        1    117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       29    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        2    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      335    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1        7    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      553    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1       11    937
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                     0       48    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                     1        0    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]               0      308    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]               1        8    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                    0      321    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                    1       10    695
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                     0        6    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                     1        0    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]               0      140    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]               1        2    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                    0       66    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                    1        1    215
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                     0     1278   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                     1       25   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     3090   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1       86   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      462   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1       16   4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                     0        4    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        2    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      114    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       28    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       78    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       14    240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                     0      102    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                     1        2    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       98    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        3    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        1    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                     0        2    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                     1        1    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      137    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       53    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                    0       32    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                    1       10    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                     0       13    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                     1        1    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      120    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       23    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                    0       66    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                    1       12    235
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                     0        6    270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                     1        0    270
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      101    270
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        6    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                    0      146    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                    1       11    270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0       64    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       15    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      157    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       21    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        2    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        6    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      159    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       17    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       54    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7    245
6-24 months                   ki1000109-EE               PAKISTAN                       0%                     0      183    375
6-24 months                   ki1000109-EE               PAKISTAN                       0%                     1       90    375
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]               0       53    375
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       28    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                    0       15    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                    1        6    375
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                     0        6    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                     1        1    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       44    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       25    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                    0       96    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                    1       58    230
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       48    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1       31    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0       35    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1       12    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0      176    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1      100    402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                     0       14    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        1    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      240    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1      102    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      128    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       56    541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                     0        7    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        3    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      344    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       73    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      165    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       23    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      114    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       20    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      343    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       51    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      177    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       25    730
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       20    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        2    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       61    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        7    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      173    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1       14    277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     0      350   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                     1      104   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               0     1188   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]               1      368   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    0      342   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                    1      101   2453
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                     0        2    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                     1        1    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       74    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       42    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                    0       79    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                    1       54    252
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                     0        1    119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                     1        0    119
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       67    119
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        2    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                    0       47    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                    1        2    119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       56   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        7   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      398   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       86   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      759   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1      147   1453
6-24 months                   ki1114097-CMIN             PERU                           0%                     0       58    878
6-24 months                   ki1114097-CMIN             PERU                           0%                     1        2    878
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]               0      370    878
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]               1       12    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                    0      415    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                    1       21    878
6-24 months                   ki1114097-CONTENT          PERU                           0%                     0        6    215
6-24 months                   ki1114097-CONTENT          PERU                           0%                     1        0    215
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]               0      138    215
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]               1        4    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                    0       67    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                    1        0    215
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0     1065   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1      345   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0     2649   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      838   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      373   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1      160   5430


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/7b938151-2b27-4226-983b-d951514a50bb/0dec5af8-3468-46a3-94fd-dac25e1d5c68/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b938151-2b27-4226-983b-d951514a50bb/0dec5af8-3468-46a3-94fd-dac25e1d5c68/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b938151-2b27-4226-983b-d951514a50bb/0dec5af8-3468-46a3-94fd-dac25e1d5c68/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b938151-2b27-4226-983b-d951514a50bb/0dec5af8-3468-46a3-94fd-dac25e1d5c68/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        0%                   NA                0.4311594   0.3726556   0.4896633
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.4750000   0.3654263   0.5845737
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        >5%                  NA                0.3809524   0.1729767   0.5889281
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        0%                   NA                0.2500000   0.0764439   0.4235561
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                0.4625000   0.3530426   0.5719574
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        >5%                  NA                0.4852071   0.4097185   0.5606957
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.1175807   0.0830015   0.1521600
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.2157116   0.1053053   0.3261178
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3633426   0.2966164   0.4300688
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.1365059   0.0819323   0.1910796
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.1476974   0.1127439   0.1826509
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.1367850   0.0904101   0.1831600
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.0682275   0.0283105   0.1081446
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.0960894   0.0729563   0.1192226
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.1141851   0.0633263   0.1650439
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.1176471   0.0410428   0.1942513
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.1703854   0.1371863   0.2035845
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.1494505   0.1262780   0.1726231
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2573970   0.2288305   0.2859635
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.2505007   0.2347457   0.2662556
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.3028630   0.2575423   0.3481838
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        0%                   NA                0.2500000   0.0764415   0.4235585
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        (0%, 5%]             NA                0.2025316   0.1137465   0.2913168
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        >5%                  NA                0.2380952   0.1735711   0.3026193
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.0189068   0.0088281   0.0289854
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.0269874   0.0213301   0.0326447
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.0327830   0.0136127   0.0519534
6-24 months                   ki1000109-EE               PAKISTAN        0%                   NA                0.3296703   0.2738322   0.3855084
6-24 months                   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.3456790   0.2419698   0.4493882
6-24 months                   ki1000109-EE               PAKISTAN        >5%                  NA                0.2857143   0.0922413   0.4791872
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.1194187   0.0847853   0.1540521
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.2083921   0.1006506   0.3161336
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3582269   0.2918228   0.4246310
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.1446153   0.0845797   0.2046509
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.1297382   0.0967861   0.1626902
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.1209819   0.0770650   0.1648988
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.2333639   0.1048121   0.3619157
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.2379564   0.2065780   0.2693348
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.2228568   0.1687674   0.2769461
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.1111111   0.0334811   0.1887411
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.1776860   0.1436200   0.2117519
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.1622517   0.1382365   0.1862668
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2473605   0.2195591   0.2751618
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.2400058   0.2243437   0.2556679
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.2928954   0.2468012   0.3389896


### Parameter: E(Y)


agecat                        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        NA                   NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.0940426   0.0721067   0.1159784
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.1549966   0.1364963   0.1734969
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2577835   0.2441424   0.2714247
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        NA                   NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0256203   0.0209093   0.0303314
6-24 months                   ki1000109-EE               PAKISTAN        NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.2335915   0.1982492   0.2689339
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.1651755   0.1460754   0.1842756
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2473297   0.2337864   0.2608729


### Parameter: RR


agecat                        studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        (0%, 5%]             0%                1.1016807   0.8429963   1.439746
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        >5%                  0%                0.8835534   0.5034104   1.550756
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        (0%, 5%]             0%                1.8500000   0.8884557   3.852190
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        >5%                  0%                1.9408284   0.9528199   3.953333
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                1.8345826   1.0047589   3.349752
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                3.0901540   2.1824380   4.375406
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                1.0819852   0.6814043   1.718058
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                1.0020444   0.5950635   1.687371
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             0%                1.4083671   0.7747841   2.560065
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  0%                1.6735928   0.8411880   3.329711
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             0%                1.4482759   0.7339673   2.857761
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   >5%                  0%                1.2703297   0.6504661   2.480894
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                0.9732073   0.8572068   1.104905
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.1766377   0.9753610   1.419450
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        (0%, 5%]             0%                0.8101266   0.3564283   1.841338
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        >5%                  0%                0.9523810   0.4520134   2.006643
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.4273927   0.7996168   2.548033
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.7339306   0.7806327   3.851383
6-24 months                   ki1000109-EE               PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN        (0%, 5%]             0%                1.0485597   0.7429639   1.479853
6-24 months                   ki1000109-EE               PAKISTAN        >5%                  0%                0.8666667   0.4312283   1.741794
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                1.7450543   0.9533550   3.194208
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                2.9997557   2.1231458   4.238303
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                0.8971262   0.5536667   1.453646
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                0.8365774   0.4837684   1.446687
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             0%                1.0196796   0.5969672   1.741715
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  0%                0.9549753   0.5325134   1.712591
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             0%                1.5991736   0.7749083   3.300205
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   >5%                  0%                1.4602649   0.7149388   2.982596
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                0.9702673   0.8526653   1.104089
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.1840833   0.9741189   1.439304


### Parameter: PAR


agecat                        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        0%                   NA                 0.0065064   -0.0239186   0.0369313
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        0%                   NA                 0.2078755    0.0395564   0.3761945
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.2426208    0.1970408   0.2882008
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.0067301   -0.0420722   0.0555325
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                 0.0258150   -0.0081497   0.0597798
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                 0.0373495   -0.0379362   0.1126352
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0003865   -0.0236118   0.0243849
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        0%                   NA                -0.0212177   -0.1864373   0.1440019
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0067136   -0.0018646   0.0152918
6-24 months                   ki1000109-EE               PAKISTAN        0%                   NA                 0.0009963   -0.0281849   0.0301776
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.2363027    0.1907655   0.2818399
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                -0.0131084   -0.0668583   0.0406414
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                 0.0002276   -0.1056528   0.1061081
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                 0.0540644   -0.0225427   0.1306714
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                -0.0000308   -0.0235377   0.0234761


### Parameter: PAF


agecat                        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN        0%                   NA                 0.0148661   -0.0571737   0.0819968
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN        0%                   NA                 0.4540000   -0.0698007   0.7213350
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.6735695    0.5732970   0.7502787
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.0469863   -0.3625867   0.3334479
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                 0.2745036   -0.1999243   0.5613515
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                 0.2409701   -0.4382173   0.5994163
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0014994   -0.0960807   0.0903922
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN        0%                   NA                -0.0927419   -1.1158924   0.4356590
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.2620407   -0.1724936   0.5355336
6-24 months                   ki1000109-EE               PAKISTAN        0%                   NA                 0.0030131   -0.0892601   0.0874697
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.6642915    0.5623199   0.7425056
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                -0.0996787   -0.5941650   0.2414253
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                 0.0009744   -0.5727397   0.3654055
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                 0.3273148   -0.3381645   0.6618462
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                -0.0001245   -0.0998293   0.0905415

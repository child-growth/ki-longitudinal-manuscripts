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

agecat                        studyid                    country                        perdiar24    ever_swasted   n_cell      n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                      0       19    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        1    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      138    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       10    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       94    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        1    263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                      0      128    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                      1        2    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       99    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        1    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                      0       13    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                      1        0    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      182    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        9    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                     0       41    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                     1        1    246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                      0       17    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                      1        0    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      141    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        2    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                     0       78    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                     1        1    239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                      0       28    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                      1        0    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      112    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        1    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                     0      159    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                     1        2    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0      113    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        4    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      175    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        7    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    302
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       15    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        1    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      181    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        2    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       59    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        3    261
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                      0      239    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                      1       37    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]                0       69    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]                1       11    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                     0       18    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                     1        3    377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                      0       23    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                      1        1    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       66    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1       14    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                     0      132    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                     1       37    273
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       69    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       10    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       41    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        4    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      247    397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1       26    397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       43    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      321    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       33    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      181    599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       21    599
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      417    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1       10    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      191    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        9    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      148    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        5    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      387    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       11    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      199    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        4    754
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       32    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       71    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      202    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        2    307
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      416   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1        2   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1497   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1       12   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      418   2350
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1        5   2350
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                      0        9    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                      1        0    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      102    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       18    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                     0      120    268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                     1       19    268
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                      0        1    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                      1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       69    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                     0       49    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                     1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       66   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        2   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      468   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1       25   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      876   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1       34   1471
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                      0       72    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                      1        0    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]                0      389    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]                1        2    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                     0      460    928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                     1        5    928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                      0        6    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                      1        0    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                     0       67    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                     1        0    215
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0     1361   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1       46   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     3313   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      151   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      490   5396
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       35   5396
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                      0       20    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                      1        0    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      141    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1        6    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       94    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        1    262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                      0      128    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                      1        2    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0      100    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        0    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                      0       13    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                      1        0    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      187    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        4    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                     0       40    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                     1        1    245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                      0       16    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                      1        0    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      141    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        1    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                     0       79    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                     1        0    237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                      0       28    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                      1        0    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      113    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        0    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                     0      160    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                     1        1    302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0      116    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        1    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      179    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        2    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    301
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       16    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        0    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      181    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        2    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       62    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        0    261
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                      0      261    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                      1       11    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]                0       76    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]                1        4    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                     0       20    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                     1        1    373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                      0       23    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                      1        1    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       74    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1        5    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                     0      152    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                     1       16    271
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       69    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       36    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      236    341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1        0    341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                      0       43    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      334    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1        5    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      195    581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     1        4    581
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      420    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1        3    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      197    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        3    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      151    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        1    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      396    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1        0    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      201    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        0    749
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       29    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       65    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      190    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        0    284
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                      0        9    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                      1        0    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      115    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1        4    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                     0      134    267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                     1        5    267
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                      0        1    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                      1        0    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       68    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        0    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                     0       48    117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                     1        0    117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       31    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        0    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      341    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1        1    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      560    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1        4    937
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                      0       48    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                      1        0    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]                0      315    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]                1        1    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                     0      328    695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                     1        3    695
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                      0        6    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                      1        0    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                     0       67    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                     1        0    215
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      0     1299   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      1        4   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     3162   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1       14   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      475   4957
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1        3   4957
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                      0        5    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        1    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      138    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1        4    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       92    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        0    240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                      0      104    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                      1        0    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       99    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        2    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                      0        3    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                      1        0    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      185    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        5    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                     0       42    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                     1        0    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                      0       14    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                      1        0    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      142    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        1    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                     0       77    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                     1        1    235
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                      0        6    270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                      1        0    270
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      106    270
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        1    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                     0      156    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                     1        1    270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       76    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        3    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      172    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        6    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        2    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        7    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        1    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      176    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        0    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       58    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        3    245
6-24 months                   ki1000109-EE               PAKISTAN                       0%                      0      244    375
6-24 months                   ki1000109-EE               PAKISTAN                       0%                      1       29    375
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]                0       73    375
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]                1        8    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                     0       19    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                     1        2    375
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                      0        7    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                      1        0    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       60    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1        9    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                     0      130    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                     1       24    230
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       64    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       15    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       41    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        6    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      246    402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1       30    402
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       15    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      312    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       30    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      167    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       17    541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       10    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      410    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1        7    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      182    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        6    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      130    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        4    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      383    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       11    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      197    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        5    730
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       22    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       68    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      185    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        2    277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      431   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1       23   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1482   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1       74   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      418   2453
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1       25   2453
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                      0        3    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                      1        0    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      101    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       15    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                     0      119    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                     1       14    252
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                      0        1    119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                      1        0    119
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       69    119
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        0    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                     0       49    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                     1        0    119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       61   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        2   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      456   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1       28   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      870   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1       36   1453
6-24 months                   ki1114097-CMIN             PERU                           0%                      0       60    878
6-24 months                   ki1114097-CMIN             PERU                           0%                      1        0    878
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]                0      381    878
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]                1        1    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                     0      432    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                     1        4    878
6-24 months                   ki1114097-CONTENT          PERU                           0%                      0        6    215
6-24 months                   ki1114097-CONTENT          PERU                           0%                      1        0    215
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                     0       67    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                     1        0    215
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0     1362   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1       48   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     3333   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      154   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      496   5430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       37   5430


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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
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




# Results Detail

## Results Plots
![](/tmp/d2ca605e-837d-40de-b6d8-5ae823862b06/01c31377-7b02-47c7-ba5a-aefc59dfd20f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2ca605e-837d-40de-b6d8-5ae823862b06/01c31377-7b02-47c7-ba5a-aefc59dfd20f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2ca605e-837d-40de-b6d8-5ae823862b06/01c31377-7b02-47c7-ba5a-aefc59dfd20f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2ca605e-837d-40de-b6d8-5ae823862b06/01c31377-7b02-47c7-ba5a-aefc59dfd20f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0325301   0.0220621   0.0429980
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0436924   0.0364371   0.0509477
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.0642587   0.0402078   0.0883095
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.1898734   0.1032802   0.2764666
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1276596   0.0321362   0.2231830
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1086957   0.0719291   0.1454623
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.0533523   0.0149137   0.0917909
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.0475494   0.0305182   0.0645807
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.0518616   0.0354583   0.0682650
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0339842   0.0232296   0.0447387
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0442988   0.0369832   0.0516143
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.0646603   0.0413858   0.0879348


### Parameter: E(Y)


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0429948   0.0372768   0.0487128
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.0497350   0.0341025   0.0653676
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0440147   0.0381801   0.0498493


### Parameter: RR


agecat                        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                1.3431390   0.9263152   1.947526
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.9753628   1.2069043   3.233113
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6723404   0.2799107   1.614949
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  0%                0.5724638   0.3244539   1.010050
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             0%                0.8912355   0.4325656   1.836255
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  0%                0.9720599   0.5187271   1.821575
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             0%                1.3035124   0.9035224   1.880578
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     >5%                  0%                1.9026596   1.1786556   3.071392


### Parameter: PAR


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0104647    0.0008828   0.0200467
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.0630077   -0.1379238   0.0119083
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0036172   -0.0342076   0.0269731
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.0100306    0.0001934   0.0198678


### Parameter: PAF


agecat                        studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.2433956   -0.0129901    0.4348907
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                -0.4966493   -1.2090286   -0.0140019
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                -0.0727304   -0.8913842    0.3915829
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                 0.2278913   -0.0287066    0.4204842

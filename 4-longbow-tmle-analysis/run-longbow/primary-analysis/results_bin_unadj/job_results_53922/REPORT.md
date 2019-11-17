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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        perdiar24    sstunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                  0       16    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                  1        2    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            0      128    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            1        3    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                 0       78    231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                 1        4    231
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                  0       33     65
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                  1        1     65
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            0       27     65
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            1        2     65
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                 0        2     65
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                 1        0     65
Birth       ki0047075b-MAL-ED          INDIA                          0%                  0        5     47
Birth       ki0047075b-MAL-ED          INDIA                          0%                  1        0     47
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]            0       31     47
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]            1        2     47
Birth       ki0047075b-MAL-ED          INDIA                          >5%                 0        9     47
Birth       ki0047075b-MAL-ED          INDIA                          >5%                 1        0     47
Birth       ki0047075b-MAL-ED          NEPAL                          0%                  0        2     27
Birth       ki0047075b-MAL-ED          NEPAL                          0%                  1        0     27
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            0       19     27
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            1        0     27
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                 0        5     27
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                 1        1     27
Birth       ki0047075b-MAL-ED          PERU                           0%                  0       21    233
Birth       ki0047075b-MAL-ED          PERU                           0%                  1        0    233
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]            0       87    233
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]            1        2    233
Birth       ki0047075b-MAL-ED          PERU                           >5%                 0      121    233
Birth       ki0047075b-MAL-ED          PERU                           >5%                 1        2    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  0       42    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  1        0    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            0       69    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            1        1    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 0        1    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 1        0    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        7    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        2    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0       77    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        8    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       31    125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1        0    125
Birth       ki1000109-EE               PAKISTAN                       0%                  0      123    240
Birth       ki1000109-EE               PAKISTAN                       0%                  1       38    240
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]            0       69    240
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]            1       10    240
Birth       ki1000109-EE               PAKISTAN                       >5%                 0        0    240
Birth       ki1000109-EE               PAKISTAN                       >5%                 1        0    240
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                  0       49    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                  1        2    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            0      336    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            1        9    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                 0      201    605
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                 1        8    605
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                  0       55    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0%                  1        0    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            0      324    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            1        3    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                 0      156    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >5%                 1        1    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                  0      146    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                  1        5    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            0      382    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            1        4    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 0      194    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 1        1    732
Birth       ki1114097-CMIN             BANGLADESH                     0%                  0        6     26
Birth       ki1114097-CMIN             BANGLADESH                     0%                  1        6     26
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]            0        4     26
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]            1        0     26
Birth       ki1114097-CMIN             BANGLADESH                     >5%                 0       10     26
Birth       ki1114097-CMIN             BANGLADESH                     >5%                 1        0     26
Birth       ki1114097-CONTENT          PERU                           0%                  0        0      2
Birth       ki1114097-CONTENT          PERU                           0%                  1        0      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]            0        1      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]            1        0      2
Birth       ki1114097-CONTENT          PERU                           >5%                 0        1      2
Birth       ki1114097-CONTENT          PERU                           >5%                 1        0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                  0       67   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                  1        9   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            0     2253   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            1      196   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                 0      270   2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                 1       28   2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                  0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                  1        0    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            0      138    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            1        4    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                 0       89    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                 1        4    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                  0      106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                  1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            0      101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                 0        2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                 1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0%                  0        3    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                  1        0    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]            0      184    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]            1        7    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                 0       40    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                 1        2    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                  0       13    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                  1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            0      143    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                 0       79    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                 1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0%                  0        7    273
6 months    ki0047075b-MAL-ED          PERU                           0%                  1        0    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]            0      106    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]            1        3    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                 0      150    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                 1        7    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  0       74    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  1        4    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            0      172    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            1        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 1        0    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        8    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        1    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      166    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1       11    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       59    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1        2    247
6 months    ki1000109-EE               PAKISTAN                       0%                  0      199    373
6 months    ki1000109-EE               PAKISTAN                       0%                  1       57    373
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]            0       93    373
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]            1       24    373
6 months    ki1000109-EE               PAKISTAN                       >5%                 0        0    373
6 months    ki1000109-EE               PAKISTAN                       >5%                 1        0    373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                  0       60    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                  1       13    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]            0       41    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]            1        5    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                 0      225    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                 1       36    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                  0       14    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                  1        1    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            0      315    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            1       24    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                 0      173    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                 1       10    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                  0       11    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                  1        1    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            0      399    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            1       10    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                 0      180    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                 1        3    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                  0      131    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                  1        3    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            0      370    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            1       16    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 0      191    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 1        4    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                  0       24    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                  1        5    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]            0       66    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]            1        4    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                 0      182    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                 1       18    299
6 months    ki1114097-CMIN             BANGLADESH                     0%                  0        2    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                  1        0    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]            0       97    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]            1       15    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                 0      116    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                 1       13    243
6 months    ki1114097-CONTENT          PERU                           0%                  0        5    215
6 months    ki1114097-CONTENT          PERU                           0%                  1        1    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]            0      139    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]            1        3    215
6 months    ki1114097-CONTENT          PERU                           >5%                 0       67    215
6 months    ki1114097-CONTENT          PERU                           >5%                 1        0    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                  0      144   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                  1       12   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            0     3931   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            1      222   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                 0      485   4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                 1       37   4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                  0        6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                  1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            0      112    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            1       18    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                 0       66    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                 1       10    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                  0       75    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                  1        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            0       91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                 0        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                 1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0%                  0        3    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                  1        0    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]            0      157    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]            1       26    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                 0       37    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                 1        4    227
24 months   ki0047075b-MAL-ED          NEPAL                          0%                  0       12    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                  1        0    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            0      136    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            1        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                 0       73    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                 1        3    228
24 months   ki0047075b-MAL-ED          PERU                           0%                  0        1    201
24 months   ki0047075b-MAL-ED          PERU                           0%                  1        0    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]            0       78    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]            1        6    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                 0      107    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                 1        9    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  0       64    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  1        7    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            0      146    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            1       20    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        3    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        3    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      107    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1       49    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       34    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1       18    214
24 months   ki1000109-EE               PAKISTAN                       0%                  0       74    167
24 months   ki1000109-EE               PAKISTAN                       0%                  1       41    167
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]            0       34    167
24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]            1       18    167
24 months   ki1000109-EE               PAKISTAN                       >5%                 0        0    167
24 months   ki1000109-EE               PAKISTAN                       >5%                 1        0    167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                  0        5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                  1        0    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            0      216    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            1       63    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                 0      113    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                 1       32    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                  0        8    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                  1        1    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            0      359    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            1       36    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                 0      159    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                 1       15    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                  0      116    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                  1        7    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            0      257    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            1       19    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 0      105    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 1       10    514
24 months   ki1114097-CMIN             BANGLADESH                     0%                  0        3    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                  1        0    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]            0       77    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]            1       37    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                 0       94    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                 1       31    242
24 months   ki1114097-CONTENT          PERU                           0%                  0        3    164
24 months   ki1114097-CONTENT          PERU                           0%                  1        1    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]            0      106    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]            1        2    164
24 months   ki1114097-CONTENT          PERU                           >5%                 0       52    164
24 months   ki1114097-CONTENT          PERU                           >5%                 1        0    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                  0      152   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                  1       13   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            0     3715   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            1      379   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                 0      432   4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                 1       61   4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/63c11002-db16-4298-9350-50c98ba3955a/d2d0691b-b62c-4f9e-888a-ccd5fdb1d56f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/63c11002-db16-4298-9350-50c98ba3955a/d2d0691b-b62c-4f9e-888a-ccd5fdb1d56f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/63c11002-db16-4298-9350-50c98ba3955a/d2d0691b-b62c-4f9e-888a-ccd5fdb1d56f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/63c11002-db16-4298-9350-50c98ba3955a/d2d0691b-b62c-4f9e-888a-ccd5fdb1d56f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.1184211   0.0194233   0.2174188
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0800327   0.0678395   0.0922258
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.0939597   0.0518589   0.1360605
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                0.1780822   0.0902036   0.2659608
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.1086957   0.0186297   0.1987616
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  NA                0.1379310   0.0960418   0.1798202
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.0769231   0.0321647   0.1216815
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0534553   0.0460716   0.0608391
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.0708812   0.0524584   0.0893040
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.0569106   0.0159287   0.0978924
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.0688406   0.0389420   0.0987392
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.0869565   0.0354077   0.1385054
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.0787879   0.0196647   0.1379111
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0925745   0.0827482   0.1024008
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.1237323   0.0929962   0.1544683


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0825363   0.0708486   0.0942240
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1421053   0.1069532   0.1772573
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0560960   0.0493335   0.0628586
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0953283   0.0857752   0.1048814


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                0.6758314   0.2884061   1.583698
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                0.7934377   0.3062806   2.055447
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             0%                0.6103679   0.2326751   1.601155
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  0%                0.7745358   0.4339058   1.382571
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                0.6949193   0.3817042   1.265149
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                0.9214559   0.4880945   1.739583
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             0%                1.2096273   0.5217157   2.804589
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  0%                1.5279503   0.6012157   3.883186
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             0%                1.1749840   0.5505778   2.507525
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  0%                1.5704478   0.7421401   3.323235


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0358847   -0.1330980   0.0613285
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                -0.0359769   -0.1133797   0.0414259
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.0208270   -0.0647034   0.0230494
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                 0.0131283   -0.0237963   0.0500530
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.0165404   -0.0407320   0.0738128


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.4347752   -2.2511351   0.3668119
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                -0.2531710   -0.9321633   0.1872128
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                -0.3712745   -1.4236689   0.2241541
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                 0.1874435   -0.5490800   0.5737806
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                 0.1735099   -0.7143578   0.6015500

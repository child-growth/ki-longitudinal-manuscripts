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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        perdiar24    ever_co   n_cell      n
------------  -------------------------  -----------------------------  ----------  --------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0       18    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        2    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      125    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       23    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       81    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1       14    263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0      130    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       99    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        2    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    233
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                 0       13    251
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        1    251
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      149    251
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       44    251
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       35    251
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                1        9    251
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       16    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        1    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      130    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       14    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       73    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1        6    240
0-24 months   ki0047075b-MAL-ED          PERU                           0%                 0       28    302
0-24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    302
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      108    302
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        5    302
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                0      154    302
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                1        7    302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0      110    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        8    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      168    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       14    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    303
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0       13    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      169    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       14    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       56    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    261
0-24 months   ki1000109-EE               PAKISTAN                       0%                 0      172    379
0-24 months   ki1000109-EE               PAKISTAN                       0%                 1      105    379
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       48    379
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1       33    379
0-24 months   ki1000109-EE               PAKISTAN                       >5%                0       15    379
0-24 months   ki1000109-EE               PAKISTAN                       >5%                1        6    379
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                 0       25    277
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                 1        1    277
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       68    277
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1       13    277
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                0      144    277
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                1       26    277
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       48    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1       36    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       33    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1       14    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      182    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1      105    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0       49    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      271    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       87    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0      164    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1       49    621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0       66    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        3    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      371    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       59    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      173    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1       28    700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      140    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       13    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      362    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       36    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      185    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       22    758
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       31    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        2    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       64    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        7    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      191    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                1       14    309
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 0      398   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 1       56   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           0     1369   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           1      186   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                0      386   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                1       57   2452
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                 0       10    271
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    271
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       75    271
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       46    271
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       94    271
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       46    271
0-24 months   ki1114097-CMIN             BRAZIL                         0%                 0        1    119
0-24 months   ki1114097-CMIN             BRAZIL                         0%                 1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       69    119
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                0       48    119
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                1        1    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       62   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        7   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      457   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       38   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      840   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                1       74   1478
0-24 months   ki1114097-CMIN             PERU                           0%                 0       71    929
0-24 months   ki1114097-CMIN             PERU                           0%                 1        1    929
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           0      377    929
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           1       14    929
0-24 months   ki1114097-CMIN             PERU                           >5%                0      450    929
0-24 months   ki1114097-CMIN             PERU                           >5%                1       16    929
0-24 months   ki1114097-CONTENT          PERU                           0%                 0        6    215
0-24 months   ki1114097-CONTENT          PERU                           0%                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      138    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        4    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                0       67    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                1        0    215
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1203   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      216   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     2943   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      547   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      418   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      115   5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0       20    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      145    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        3    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       89    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1        6    263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      130    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0      101    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        0    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    233
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                 0       13    251
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        1    251
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      180    251
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       13    251
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                0       40    251
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                1        4    251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                 0       16    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                 1        1    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      139    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        5    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                0       78    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                1        1    240
0-6 months    ki0047075b-MAL-ED          PERU                           0%                 0       28    302
0-6 months    ki0047075b-MAL-ED          PERU                           0%                 1        0    302
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      112    302
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        1    302
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                0      160    302
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                1        1    302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0      116    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        2    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      179    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        3    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    303
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0       15    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        1    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      180    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        3    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       62    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    261
0-6 months    ki1000109-EE               PAKISTAN                       0%                 0      236    379
0-6 months    ki1000109-EE               PAKISTAN                       0%                 1       41    379
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0       70    379
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1       11    379
0-6 months    ki1000109-EE               PAKISTAN                       >5%                0       20    379
0-6 months    ki1000109-EE               PAKISTAN                       >5%                1        1    379
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                 0       25    277
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                 1        1    277
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       74    277
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        7    277
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                0      161    277
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                1        9    277
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       77    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1        6    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       42    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1        5    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      265    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1       21    416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 0       49    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      330    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       27    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                0      195    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                1       17    619
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 0       68    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 1        1    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      414    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       16    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                0      188    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                1       13    700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      150    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        3    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      389    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        9    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      202    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        5    758
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       29    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        1    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       63    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        3    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      189    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                1        4    289
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                 0       10    271
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                 1        0    271
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0      112    271
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        9    271
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                0      134    271
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                1        6    271
0-6 months    ki1114097-CMIN             BRAZIL                         0%                 0        1    119
0-6 months    ki1114097-CMIN             BRAZIL                         0%                 1        0    119
0-6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       69    119
0-6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        0    119
0-6 months    ki1114097-CMIN             BRAZIL                         >5%                0       49    119
0-6 months    ki1114097-CMIN             BRAZIL                         >5%                1        0    119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       30    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        2    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      345    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1        1    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      563    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                1        3    944
0-6 months    ki1114097-CMIN             PERU                           0%                 0       48    699
0-6 months    ki1114097-CMIN             PERU                           0%                 1        0    699
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]           0      312    699
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]           1        7    699
0-6 months    ki1114097-CMIN             PERU                           >5%                0      328    699
0-6 months    ki1114097-CMIN             PERU                           >5%                1        4    699
0-6 months    ki1114097-CONTENT          PERU                           0%                 0        6    215
0-6 months    ki1114097-CONTENT          PERU                           0%                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      142    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1        0    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                0       67    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                1        0    215
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1296   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       29   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     3183   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1       89   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      478   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       17   5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0        4    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        2    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      119    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       23    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       81    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1       10    239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0      104    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       99    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        2    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    207
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                 0        3    235
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        0    235
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      151    235
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       39    235
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       34    235
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                1        8    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       14    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        0    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      132    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       11    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       73    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1        5    235
6-24 months   ki0047075b-MAL-ED          PERU                           0%                 0        6    270
6-24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    270
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      103    270
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        4    270
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                0      150    270
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                1        7    270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       73    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        6    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      165    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       13    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        2    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      164    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       12    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       55    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    245
6-24 months   ki1000109-EE               PAKISTAN                       0%                 0      176    373
6-24 months   ki1000109-EE               PAKISTAN                       0%                 1       95    373
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       50    373
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1       31    373
6-24 months   ki1000109-EE               PAKISTAN                       >5%                0       15    373
6-24 months   ki1000109-EE               PAKISTAN                       >5%                1        6    373
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                 0        7    230
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                 1        0    230
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       61    230
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        8    230
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                0      133    230
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                1       21    230
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       44    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1       34    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       34    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1       13    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      178    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1       98    401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0       15    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      266    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       77    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0      147    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1       37    542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0        8    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        2    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      366    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       50    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      165    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1       23    614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      121    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       13    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      362    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       32    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      184    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       18    730
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       21    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        1    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       62    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        6    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      176    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                1       11    277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 0      398   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 1       56   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           0     1369   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           1      186   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                0      386   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                1       57   2452
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                 0        3    251
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    251
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       74    251
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       42    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       88    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       44    251
6-24 months   ki1114097-CMIN             BRAZIL                         0%                 0        1    119
6-24 months   ki1114097-CMIN             BRAZIL                         0%                 1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       69    119
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                0       48    119
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                1        1    119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       57   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        6   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      447   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       37   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      832   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                1       73   1452
6-24 months   ki1114097-CMIN             PERU                           0%                 0       59    878
6-24 months   ki1114097-CMIN             PERU                           0%                 1        1    878
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           0      373    878
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           1        9    878
6-24 months   ki1114097-CMIN             PERU                           >5%                0      422    878
6-24 months   ki1114097-CMIN             PERU                           >5%                1       14    878
6-24 months   ki1114097-CONTENT          PERU                           0%                 0        6    215
6-24 months   ki1114097-CONTENT          PERU                           0%                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      138    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        4    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                0       67    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                1        0    215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1209   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      201   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     2995   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      491   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      423   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      110   5429


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/519ae567-c242-4ca2-9bb0-897ed0741704/de7ac7b2-b29f-45f2-a799-0413f7f4ebab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/519ae567-c242-4ca2-9bb0-897ed0741704/de7ac7b2-b29f-45f2-a799-0413f7f4ebab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/519ae567-c242-4ca2-9bb0-897ed0741704/de7ac7b2-b29f-45f2-a799-0413f7f4ebab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/519ae567-c242-4ca2-9bb0-897ed0741704/de7ac7b2-b29f-45f2-a799-0413f7f4ebab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        0%                   NA                0.3790614   0.3218528   0.4362699
0-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.4074074   0.3002624   0.5145524
0-24 months   ki1000109-EE               PAKISTAN        >5%                  NA                0.2857143   0.0922441   0.4791845
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.2743160   0.1021654   0.4464666
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.2418117   0.1300127   0.3536107
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3617988   0.2962763   0.4273213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.0791797   0.0366995   0.1216599
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.0945499   0.0663234   0.1227763
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.0996933   0.0590375   0.1403491
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.1275736   0.0425719   0.2125753
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.1202471   0.0958205   0.1446738
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.1273986   0.0734298   0.1813673
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.1014493   0.0301859   0.1727126
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.0767677   0.0533072   0.1002282
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.0809628   0.0632727   0.0986529
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.1539836   0.1326251   0.1753421
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.1567973   0.1441745   0.1694201
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.2074133   0.1681992   0.2466273
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.0722892   0.0165097   0.1280686
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.1063830   0.0181291   0.1946368
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.0734266   0.0431606   0.1036925
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.0221409   0.0109303   0.0333515
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.0272610   0.0210404   0.0334815
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.0330496   0.0144189   0.0516804
6-24 months   ki1000109-EE               PAKISTAN        0%                   NA                0.3505535   0.2936688   0.4074382
6-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.3827160   0.2767250   0.4887071
6-24 months   ki1000109-EE               PAKISTAN        >5%                  NA                0.2857143   0.0922400   0.4791886
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.3730082   0.2084227   0.5375936
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.2185414   0.1098295   0.3272533
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3534389   0.2878092   0.4190687
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.0915905   0.0429246   0.1402564
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.0846420   0.0575220   0.1117619
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.0849349   0.0454364   0.1244334
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.1310889   0.0476731   0.2145047
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.1203779   0.0958534   0.1449025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.1237682   0.0669939   0.1805424
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.0952381   0.0227278   0.1677484
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.0764463   0.0527661   0.1001264
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.0806630   0.0629150   0.0984109
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.1451412   0.1242472   0.1660353
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.1409301   0.1288876   0.1529725
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.1946764   0.1547798   0.2345729


### Parameter: E(Y)


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.1219413   0.0960094   0.1478731
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0805142   0.0666381   0.0943903
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.1219413   0.0960094   0.1478731
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0798898   0.0659396   0.0938400
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             0%                1.0747795   0.7936567   1.455480
0-24 months   ki1000109-EE               PAKISTAN        >5%                  0%                0.7537415   0.3766397   1.508408
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                0.8815079   0.4035630   1.925489
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                1.3189126   0.6860444   2.535595
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                1.1941175   0.6498335   2.194280
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                1.2590768   0.6440031   2.461594
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             0%                0.9425707   0.4954988   1.793020
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  0%                0.9986281   0.4712100   2.116377
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             0%                0.7567100   0.3517529   1.627875
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  0%                0.7980619   0.3824263   1.665426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.0182727   0.8754565   1.184387
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.3469829   1.0664081   1.701378
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                1.4716312   0.4739794   4.569182
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                1.0157343   0.4235009   2.436161
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.2312496   0.7076322   2.142322
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.4926971   0.7197026   3.095924
6-24 months   ki1000109-EE               PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             0%                1.0917479   0.7919927   1.504955
6-24 months   ki1000109-EE               PAKISTAN        >5%                  0%                0.8150376   0.4062231   1.635274
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                0.5858891   0.3010627   1.140181
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                0.9475367   0.5868488   1.529910
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                0.9241349   0.4999978   1.708058
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                0.9273332   0.4595263   1.871377
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             0%                0.9182923   0.4992456   1.689070
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  0%                0.9441545   0.4452754   2.001969
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             0%                0.8026860   0.3528359   1.826075
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  0%                0.8469613   0.3834239   1.870889
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                0.9709858   0.8236306   1.144704
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.3412894   1.0435572   1.723966


### Parameter: PAR


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0008859   -0.0288291   0.0306009
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0964974   -0.0741510   0.2671458
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.0144878   -0.0239370   0.0529127
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0056323   -0.0760875   0.0648229
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.0209351   -0.0901943   0.0483241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0073541   -0.0099995   0.0247078
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0046339   -0.0456361   0.0549039
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0043713   -0.0048326   0.0135752
6-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0033339   -0.0265835   0.0332513
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                -0.0114122   -0.1750587   0.1522344
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                -0.0052891   -0.0487897   0.0382114
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0091476   -0.0780477   0.0597525
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.0153483   -0.0860314   0.0553348
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0025840   -0.0150445   0.0202124


### Parameter: PAF


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0023315   -0.0790239   0.0775530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.2602317   -0.3739274   0.6016842
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.1546729   -0.3720926   0.4792058
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0461888   -0.8101463   0.3953466
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.2600171   -1.4920380   0.3629138
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0455823   -0.0685695   0.1475397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0602410   -0.8832383   0.5310487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.1648788   -0.2742904   0.4526935
6-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0094208   -0.0788317   0.0904539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                -0.0315605   -0.6004825   0.3351273
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                -0.0612866   -0.7060117   0.3397880
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0750165   -0.8070902   0.3604854
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.1921182   -1.5029787   0.4322181
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0174916   -0.1094496   0.1299084
